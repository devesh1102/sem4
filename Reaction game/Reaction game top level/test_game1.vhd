library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reaction_game is
	port (
		clk,mreset,react : in std_logic;
		--show_state : out std_logic_vector(1 downto 0);
		led: out std_logic
		);
end entity reaction_game;

architecture behave of reaction_game is

--component clk_1ms is
--  port (
--   clk  : in std_logic;
--   clk_out: out std_logic
--  );
--end component clk_1ms;

component counter3 is
	port (
   clk,reset,start  : in std_logic;
   done: out std_logic;
   count_out: out std_logic_vector(10 downto 0)
  );
end component counter3;

component random is
	port (
   en, clk: in std_logic;
   rand: out std_logic_vector(9 downto 0)
  );
end component random;

component button is--As we can not press the button for exactly 1ms
   port (
	clk, in_clk : in std_logic;
	out_clk : out std_logic 
  ) ;
end component button;

type RtlState is (HALT,LED_ON,LED_OFF);
signal rtl_state: RtlState;
signal start_c1,start_c2,rst_c1,rst_c2,done_c1,done_c2,rst1,rst2,trig,soft_reset: std_logic;
signal count1, count2 : std_logic_vector(10 downto 0);
signal score : std_logic_vector(13 downto 0);
signal turn : unsigned (3 downto 0);
signal rct, master_reset : std_logic;
--constant count_upto: std_logic_vector(10 downto 0) := (others => '1');
signal random : std_logic_vector(9 downto 0);
--signal led: std_logic;
begin
--clock_1ms : clk_1ms port map (clk=>clk, clk_out=>clk);
rst1 <= rst_c1 or master_reset;
rst2 <= rst_c2 or master_reset;
--led_out <= led;
trig <= master_reset or react;

counter1 : counter3 port map (clk, rst1, start_c1, count1, done_c1 );
counter2 : counter3 port map (clk, rst2, start_c2, count2, done_c2 );
randgen : random port map (clk, trig, random);
react_button : button port map (clk, react, rct);
master_reset_button : button port map (clk, mreset, master_reset);

process(clk,master_reset,rct,rtl_state,start_c1,start_c2,rst_c1,rst_c2,done_c1,done_c2, turn)
variable next_rtl_state: RtlState;
variable scr : unsigned (13 downto 0);
variable trn : unsigned (3 downto 0);
variable sc1,sc2,rc1,rc2,led_st,soft_rst: std_logic;
variable show_st : std_logic_vector(1 downto 0);
begin
led_st := '0';
rc1 := rst_c1;
rc2 := rst_c2;
sc1 := start_c1;
sc2 := start_c2;
--show_st := "00";
soft_rst := '0';
scr := unsigned(score);
trn := turn;
next_rtl_state := rtl_state;

	case rtl_state is
		when HALT =>
			--show_state<="01";
			show_st := "01";
			led_st := '0';
			-- display score
			if( master_reset = '1') then
				--rst_c1 <= '1';
				--rst_c2 <= '1';
				rc1 := '1';
				rc2 := '1';
				scr := to_unsigned(0,10+4) ;
				trn := to_unsigned(0,4);
				soft_rst := '0';
				next_rtl_state := LED_OFF;
			elsif (soft_reset = '1') then
				--rst_c1 <= '1';
				--rst_c2 <= '1';
				rc1 := '1';
				rc2 := '1';
				scr := to_unsigned(0,10+4) ;
				trn := to_unsigned(0,4);
				next_rtl_state := HALT;
			end if;
		when LED_OFF =>
			--show_state <= "10";
			show_st := "10";
			--led <= '0';
			led_st := '0';
			rc1 := '0';
			rc2 := '1';
			sc1 := '1';
			sc2 := '0';
			if (master_reset = '1') then
				next_rtl_state:= HALT;
			elsif rct = '1' then
				soft_rst := '1';
				next_rtl_state := HALT;
			end if;
			if (count1(10) = '1' and count1(10-1 downto 0) = random) then
				next_rtl_state := LED_ON;
			end if;
			if (trn>to_unsigned(7,4)) then
				soft_rst := '0';
				next_rtl_state := HALT;
			end if;

		when LED_ON =>
			--show_state <= "11";
			show_st := "11";
			--led <= '1';
			led_st := '1';
			rc1 := '1';
			rc2 := '0';
			sc1 := '0';
			sc2 := '1';
			if (master_reset = '1') then
				next_rtl_state := HALT;
			end if;
			if ((trn < to_unsigned(7,4)) and rct='1' and done_c2='0') then
				scr := unsigned(score) + unsigned(count2);
				trn := turn + 1;
				next_rtl_state := LED_OFF;
			elsif (done_c2 = '1') then
				soft_rst := '1';
				next_rtl_state := HALT;
			end if;
	end case;
	if (clk'event and clk = '1') then
		led<=led_st;--led variable to led
		show_state <= show_st;
		rst_c1 <= rc1;
		rst_c2 <= rc2;
		start_c1 <= sc1;
		start_c2 <= sc2;
		soft_reset <= soft_rst;
		rtl_state <= next_rtl_state;
		score <= std_logic_vector(scr);
		turn <= trn;
  	end if;
end process;
end architecture behave;