library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reaction_game is
	Generic (COUNT_BITS : INTEGER := 10);
	port (
		clk,mreset,react : in std_logic;
		show_state : out std_logic_vector(1 downto 0);
		led: out std_logic
		);
end entity reaction_game;

architecture core of reaction_game is

component clk_1ms is
  port (
   clk  : in std_logic;
   clk_out: out std_logic
  );
end component clk_1ms;


component counter3 is
	port (
    	clk,reset,start  : in std_logic;
   done: out std_logic;
   count_out: inout std_logic_vector(COUNT_BITS downto 0)
  );
end component counter3;

component rand_gen is
	port (
    trigger, clk: in std_logic;
   rand: out std_logic_vector(COUNT_BITS-1 downto 0)
  );
end component rand_gen;

component button is
  port (
	clk, click : in std_logic;
	op : out std_logic 
  ) ;
end component button;

type RtlState is (HALT,LED_ON,LED_OFF);
signal rtl_state: RtlState;
signal start_c1,start_c2,rst_c1,rst_c2,done_c1,done_c2,rst1,rst2,trig,soft_reset,clock: std_logic;
signal count1, count2 : std_logic_vector(COUNT_BITS downto 0);
signal score : std_logic_vector(COUNT_BITS+3 downto 0);
signal turn : unsigned (3 downto 0);
signal rct, master_reset : std_logic;
--constant count_upto: std_logic_vector(COUNT_BITS downto 0) := (others => '1');
signal random : std_logic_vector(COUNT_BITS-1 downto 0);
--signal led: std_logic;
begin
clock_1ms : clk_1ms port map (clk=>clk, clk_out=>clock);
rst1 <= rst_c1 or master_reset;
rst2 <= rst_c2 or master_reset;
--led_out <= led;
trig <= master_reset or react;

counter1 : counter3 port map (clk=>clock, reset=>rst1, start=>start_c1, count_out=>count1, done=>done_c1 );
counter2 : counter3 port map (clk=>clock, reset=>rst2, start=>start_c2, count_out=>count2, done=>done_c2 );
randgen : rand_gen port map (clk=>clk, trigger=>trig, rand => random);
react_button : button port map (clk=>clock, click=>(not react), op=>rct);
master_reset_button : button port map (clk=>clock, click=>(not mreset), op=>master_reset);

process(clk,master_reset,rct,rtl_state,start_c1,start_c2,rst_c1,rst_c2,done_c1,done_c2, turn)
variable next_rtl_state: RtlState;
variable scr : unsigned (COUNT_BITS+3 downto 0);
variable trn : unsigned (3 downto 0);
variable sc1,sc2,rc1,rc2,led_st,soft_rst: std_logic;
variable show_st : std_logic_vector(1 downto 0);
begin
led_st := '0';
rc1 := rst_c1;
rc2 := rst_c2;
sc1 := start_c1;
sc2 := start_c2;
show_st := "00";
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
				scr := to_unsigned(0,COUNT_BITS+4) ;
				trn := to_unsigned(0,4);
				soft_rst := '0';
				next_rtl_state := LED_OFF;
			elsif (soft_reset = '1') then
				--rst_c1 <= '1';
				--rst_c2 <= '1';
				rc1 := '1';
				rc2 := '1';
				scr := to_unsigned(0,COUNT_BITS+4) ;
				trn := to_unsigned(0,4);
				next_rtl_state := HALT;
			end if;
		when LED_OFF =>
			show_st := "10";
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
			if (count1(COUNT_BITS) = '1' and count1(COUNT_BITS-1 downto 0) = random) then
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
	if (clock'event and clock = '1') then
		led<=led_st;
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
end architecture core;