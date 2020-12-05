library ieee ;
use ieee.std_logic_1164.all;


entity Master is
	port (
		clk, reset: in std_logic ;
		D0, D1, D2, D3, D4 : out std_logic_vector(3 downto 0)
	);
end entity;
	
	
architecture behave of Master is
	component ElevenBitCounter is
		port (
			clk: in std_logic ;
			reset: in std_logic ; 
			counter : out std_logic_vector( 10 downto 0)
		);
	end component;
	component TotalDelayCounter is
		port (
			clk, reset: in std_logic ;
			D0, D1, D2, D3, D4 : out std_logic_vector(3 downto 0)
		);
	end component;
	entity GenClock is
		port (
			clk: in std_logic ;
			reset: in std_logic;
			clk_out : out std_logic
		);
	end entity;
	entity GenClock1000 is
		port (
			clk: in std_logic ;
			reset: in std_logic;
			clk_out : out std_logic
		);
	end entity;

	begin :
	
	gc1000 : GenClock1000 port map(clk=>clk, reset=>reset, clk_out=>clk1000);
	gc100 : GenClock port map(clk=>clk, reset=>reset, clk_out=>clk100);
	ebc1: ElevenBitCounter port map(clk=>clk1000, reset=>reset, count=>current_time);
	ebc2: ElevenBitCounter port map(clk=>clk1000, reset=>reset, count=>total_delay);
	
	
	
	

	
