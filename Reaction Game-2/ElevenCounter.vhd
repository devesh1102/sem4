library ieee ;
use ieee.std_logic_1164.all;


entity ElevenBitCounter is
	port (
		clk: in std_logic ;
		reset: in std_logic ; 
		counter : out std_logic_vector( 10 downto 0)
	);
end entity;

architecture Behave of ElevenBitCounter is
	component DFlipFlop1 is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	signal n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10 : std_logic := '1';
	signal q : std_logic_vector( 10 downto 0) := "00000000000";
	begin
		n0 <= (not q(0)) ;
		n1 <= (not q(1)) ;
		n2 <= (not q(2)) ;
		n3 <= (not q(3)) ;
		n4 <= (not q(4)) ;
		n5 <= (not q(5)) ;
		n6 <= (not q(6)) ;
		n7 <= (not q(7)) ;
		n8 <= (not q(8)) ;
		n9 <= (not q(9)) ;
		n10 <= (not q(10)) ;
		dff1 : DFlipFlop1 port map( D=>n0, CLK=>clk, reset=>reset, Q=>q(0));
		dff2 : DFlipFlop1 port map( D=>n1, CLK=>n0, reset=>reset, Q=>q(1));
		dff3 : DFlipFlop1 port map( D=>n2, CLK=>n1, reset=>reset, Q=>q(2));
		dff4 : DFlipFlop1 port map( D=>n3, CLK=>n2, reset=>reset, Q=>q(3));
		dff5 : DFlipFlop1 port map( D=>n4, CLK=>n3, reset=>reset, Q=>q(4));
		dff6 : DFlipFlop1 port map( D=>n5, CLK=>n4, reset=>reset, Q=>q(5));
		dff7 : DFlipFlop1 port map( D=>n6, CLK=>n5, reset=>reset, Q=>q(6));
		dff8 : DFlipFlop1 port map( D=>n7, CLK=>n6, reset=>reset, Q=>q(7));
		dff9 : DFlipFlop1 port map( D=>n8, CLK=>n7, reset=>reset, Q=>q(8));
		dff10 : DFlipFlop1 port map( D=>n9, CLK=>n8, reset=>reset, Q=>q(9));
		dff11 : DFlipFlop1 port map( D=>n10, CLK=>n9, reset=>reset, Q=>q(10));
		
		counter <= q;
end Behave;

		
		
		

		