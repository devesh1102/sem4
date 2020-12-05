library ieee ;
use ieee.std_logic_1164.all;


entity TenCounter is
	port (
		clk, reset: in std_logic ;
		count : out std_logic_vector(3 downto 0);
		carry : out std_logic
	);
end entity;

architecture Behave of TenCounter is
	component DFlipFlop1 is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	signal q : std_logic_vector(3 downto 0) := "0000";
	signal n: std_logic_vector( 3  downto 0) := "1111";
	signal rst : std_logic := '1' ;
	begin
		
		n <= not q;
		
		rst <= (q(3) and q(1)) or reset ;
		
		dff1 : DFlipFlop1 port map( D=>n(0), CLK=>clk, reset=>rst, Q=>q(0));
		dff2 : DFlipFlop1 port map( D=>n(1), CLK=>n(0), reset=>rst, Q=>q(1));
		dff3 : DFlipFlop1 port map( D=>n(2), CLK=>n(1), reset=>rst, Q=>q(2));
		dff4 : DFlipFlop1 port map( D=>n(3), CLK=>n(2), reset=>rst, Q=>q(3));
		
		count <= q;
		carry <= q(3) and q(1);
end Behave;

