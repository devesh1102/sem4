library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_game1 is
	Generic (COUNT_BITS : INTEGER := 3);
	port (
		clk,mreset,react : in std_logic;
		led: out std_logic
		);
end entity test_game1;

architecture core of test_game1 is

component up_counter2 is
	port (
    	clk,reset,start  : in std_logic;
   done: out std_logic;
   count_out: out std_logic_vector(COUNT_BITS downto 0)
  );
end component up_counter2;

component rand_gen is
	port (
    trigger, clk: in std_logic;
   rand: out std_logic_vector(COUNT_BITS downto 0)
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
signal start_c1,start_c2,rst_c1,rst_c2,done_c1,done_c2,rst1,rst2,trig,soft_reset: std_logic;
signal count1, count2 : std_logic_vector(COUNT_BITS downto 0);
signal score : std_logic_vector(2*COUNT_BITS downto 0);
signal turn : unsigned (3 downto 0);
signal rct, master_reset : std_logic;
--constant count_upto: std_logic_vector(COUNT_BITS downto 0) := (others => '1');
signal random : std_logic_vector(COUNT_BITS downto 0);
begin
rst1 <= rst_c1 or master_reset;
rst2 <= rst_c2 or master_reset;
trig <= master_reset or react;
counter1 : up_counter2 port map (clk=>clk, reset=>rst1, start=>start_c1, count_out=>count1, done=>done_c1 );
counter2 : up_counter2 port map (clk=>clk, reset=>rst2, start=>start_c2, count_out=>count2, done=>done_c2 );
randgen : rand_gen port map (clk=>clk, trigger=>trig, rand => random);
react_button : button port map (clk=>clk, click=>react, op=>rct);
master_reset_button : button port map (clk=>clk, click=>mreset, op=>master_reset);
process(clk,master_reset,rct,rtl_state,start_c1,start_c2,rst_c1,rst_c2,done_c1,done_c2, turn)
variable next_rtl_state: RtlState;
variable scr : unsigned (2*COUNT_BITS downto 0);
variable trn : unsigned (3 downto 0);
--variable rct : std_logic;
begin
	case rtl_state is
		when HALT =>
			led<='0';
			-- display score
			if( master_reset = '1') then
				rst_c1 <= '1';
				rst_c2 <= '1';
				scr := to_unsigned(0,2*COUNT_BITS+1) ;
				trn := to_unsigned(0,4);
				soft_reset <= '0';
				next_rtl_state := LED_OFF;
			elsif (soft_reset = '1') then
				rst_c1 <= '1';
				rst_c2 <= '1';
				scr := to_unsigned(0,2*COUNT_BITS+1) ;
				trn := to_unsigned(0,4);
				next_rtl_state := HALT;
			end if;
		when LED_OFF =>
			led <= '0';
			rst_c1 <= '0';
			rst_c2 <= '1';
			start_c1 <= '1';
			start_c2 <= '0';
			if (master_reset = '1') then
				next_rtl_state:= HALT;
			elsif rct = '1' then
				soft_reset <= '1';
				next_rtl_state := HALT;
			end if;
			if (count1 = random) then
				next_rtl_state := LED_ON;
			end if;
			if (trn>to_unsigned(7,4)) then
				soft_reset <= '0';
				next_rtl_state := HALT;
			end if;

		when LED_ON =>
			led <= '1';
			rst_c1 <= '1';
			rst_c2 <= '0';
			start_c1 <= '0';
			start_c2 <= '1';
			if (master_reset = '1') then
				next_rtl_state := HALT;
			end if;
			if ((trn < to_unsigned(7,4)) and rct='1' and done_c2='0') then
				scr := unsigned(score) + unsigned(count2);
				trn := turn + 1;
				next_rtl_state := LED_OFF;
			elsif (done_c2 = '1') then
				soft_reset <= '1';
				next_rtl_state := LED_OFF;
			end if;
	end case;
	if (clk'event and clk = '1') then
		rtl_state <= next_rtl_state;
		score <= std_logic_vector(scr);
		turn <= trn;
  	end if;
end process;
end architecture core;