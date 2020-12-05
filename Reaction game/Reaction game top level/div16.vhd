library ieee;
use ieee.std_logic_1164.all;

entity div16 is
	port (
		reset, clk: in std_logic;
		q : out std_logic
	);
end entity div16;

architecture struct of div16 is
	component mod2 is
		port (
		reset, clk: in std_logic;
		q : out std_logic		
		);
	end component mod2;
	signal s: std_logic_vector (15 downto 0);
begin
	m0 : mod2 port map ( q=>s(0),clk=>clk,reset=>reset);
	m1 : mod2 port map ( clk=>s(0), q=>s(1),reset=>reset);
	m2 : mod2 port map ( clk=>s(1), q=>s(2),reset=>reset);
	m3 : mod2 port map ( clk=>s(2), q=>s(3),reset=>reset);
	m4 : mod2 port map ( clk=>s(3), q=>s(4),reset=>reset);
	m5 : mod2 port map ( clk=>s(4), q=>s(5),reset=>reset);
	m6 : mod2 port map ( clk=>s(5), q=>s(6),reset=>reset);
	m7 : mod2 port map ( clk=>s(6), q=>s(7),reset=>reset);
	m8 : mod2 port map ( clk=>s(7), q=>s(8),reset=>reset);
	m9 : mod2 port map ( clk=>s(8), q=>s(9),reset=>reset);
	m10 : mod2 port map ( clk=>s(9), q=>s(10),reset=>reset);
	m11 : mod2 port map ( clk=>s(10), q=>s(11),reset=>reset);
	m12 : mod2 port map ( clk=>s(11), q=>s(12),reset=>reset);
	m13 : mod2 port map ( clk=>s(12), q=>s(13),reset=>reset);
	m14 : mod2 port map ( clk=>s(13), q=>s(14),reset=>reset);
	m15 : mod2 port map ( clk=>s(14), q=>s(15),reset=>reset);
	m16 : mod2 port map ( clk=>s(15), q=>q,reset=>reset);
	--m17 : mod2 port map ( clk=>s(16), q=>s(17),reset=>reset);
	--m18 : mod2 port map ( clk=>s(17), q=>s(18),reset=>reset);
	--m19 : mod2 port map ( clk=>s(18), q=>q,reset=>reset);
end architecture struct;