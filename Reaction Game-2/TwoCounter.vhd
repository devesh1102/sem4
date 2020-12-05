library ieee ;
use ieee.std_logic_1164.all;


entity TwoCounter is
	port (
		clk: in std_logic ;
		reset: in std_logic;
		clk_by2 : out std_logic
	);
end entity;

architecture Behave of TwoCounter is
	component DFlipFlop1 is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	signal q0 : std_logic := '0';
	signal n0 : std_logic := '1';
	begin
		n0 <= (not q0) ;
		
		dff1 : DFlipFlop1 port map( D=>n0, CLK=>clk, reset=>reset, Q=>q0);
		
		clk_by2 <= q0;
		
end Behave;

		
		
		

		