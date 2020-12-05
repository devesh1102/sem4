library ieee;
use ieee.std_logic_1164.all;

entity reaction_game is
	port (
		clk,reset,react : in std_logic;
		led: out std_logic
		);
end entity reaction_game;
architecture core of reaction_game is
component up_counter is
	Generic (CLK_BIT : INTEGER := 7);
	port (
    	clk,reset,start  : in std_logic;
	 	count_to : std_logic_vector(CLK_BIT downto 0);
	 	done: out std_logic
  );
end component up_counter;

component rand_gen is
	port (
    trigger, clk: in std_logic;
   rand: out std_logic_vector(3 downto 0)
  );
end component rand_gen;

type RtlState is (init, led_off, led_on);
signal rtl_state: RtlState;
signal start_c1,start_c2,rst_c1,rst_c2: std_logic;
signal led_state: std_logic;
begin
process(clk,reset,react,led_state)
	
begin
led<=led_state;	
end process;

end architecture core;