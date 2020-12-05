library ieee;
use ieee.std_logic_1164.all;

entity mod2 is
	port (
		reset, clk: in std_logic;
		q : out std_logic
	);
end entity mod2;

architecture struct of mod2 is
	component dff1 is
		port (
			D, CLK, reset: in std_logic; 
		Q: out std_logic
		);
	end component dff1;
	signal s,a: std_logic;
begin
	a<=not s;
	df : dff1 port map (D=>a, Q=>s, CLK=>clk, reset=>reset);
	q<=s;
end architecture struct;