library ieee ;
use ieee.std_logic_1164.all;


entity GenClock is
	port (
		clk: in std_logic ;
		reset: in std_logic;
		clk_out : out std_logic
	);
end entity;

architecture Behave of GenClock is
	component FiveCounter is
		port (
			clk: in std_logic ;
			reset : in std_logic;
			clk_by5 : out std_logic
		);
	end component;
	component TwoCounter is
		port (
			clk: in std_logic ;
			reset : in std_logic;
			clk_by2 : out std_logic
		);
	end component;
	signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10 : std_logic;
	begin
	
	by5_1 : FiveCounter port map(clk=>clk, reset=>reset, clk_by5=>c1);
	by5_2 : FiveCounter port map(clk=>c1, reset=>reset, clk_by5=>c2);
	by5_3 : FiveCounter port map(clk=>c2, reset=>reset, clk_by5=>c3);
	by5_4 : FiveCounter port map(clk=>c3, reset=>reset, clk_by5=>c4);
	by5_5 : FiveCounter port map(clk=>c4, reset=>reset, clk_by5=>c5);
	by5_6 : FiveCounter port map(clk=>c5, reset=>reset, clk_by5=>c6);
	
	by2_1 : TwoCounter port map(clk=>c6, reset=>reset, clk_by2=>c7);
	by2_2 : TwoCounter port map(clk=>c7, reset=>reset, clk_by2=>c8);
	by2_3 : TwoCounter port map(clk=>c8, reset=>reset, clk_by2=>c9);
	by2_4 : TwoCounter port map(clk=>c9, reset=>reset, clk_by2=>c10);
	by2_5 : TwoCounter port map(clk=>c10, reset=>reset, clk_by2=>clk_out);
		
end Behave;

		
		
		

		