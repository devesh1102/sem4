library ieee ;
use ieee.std_logic_1164.all;


entity TotalDelayCounter is
	port (
		clk, reset: in std_logic ;
		D0, D1, D2, D3, D4 : out std_logic_vector(3 downto 0)
	);
end entity;
	
	
architecture behave of TotalDelayCounter is

	component TenCounter is
		port (
			clk, reset: in std_logic ;
			count : out std_logic_vector(3 downto 0);
			carry : out std_logic
		);
	end component;
	signal c0,c1,c2,c3,c4 : std_logic := '0';

	begin
	
	tc1 : TenCounter port map(clk=>clk, reset=>reset, count=>D0, carry=>c0);
	tc2 : TenCounter port map(clk=>clk, reset=>reset, count=>D1, carry=>c1);
	tc3 : TenCounter port map(clk=>clk, reset=>reset, count=>D2, carry=>c2);
	tc4 : TenCounter port map(clk=>clk, reset=>reset, count=>D3, carry=>c3);
	tc5 : TenCounter port map(clk=>clk, reset=>reset, count=>D4, carry=>c4);
	
end behave;

	