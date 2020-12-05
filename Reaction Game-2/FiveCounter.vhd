library ieee ;
use ieee.std_logic_1164.all;


entity FiveCounter is
	port (
		clk: in std_logic ;
		reset: in std_logic;
		clk_by5 : out std_logic
	);
end entity;

architecture Behave of FiveCounter is
	component DFlipFlop1 is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	signal q0,q1,q2,rst : std_logic := '0';
	signal n0,n1,n2 : std_logic := '1';
	begin
		n0 <= (not q0) ;
		n1 <= (not q1) ;
		n2 <= (not q2) ;
		
		rst <= (q0 and q2) or reset ;
		
		dff1 : DFlipFlop1 port map( D=>n0, CLK=>clk, reset=>rst, Q=>q0);
		dff2 : DFlipFlop1 port map( D=>n1, CLK=>n0, reset=>rst, Q=>q1);
		dff3 : DFlipFlop1 port map( D=>n2, CLK=>n1, reset=>rst, Q=>q2);
		
		
		clk_by5 <= q2;
		
end Behave;

		
		
		

		