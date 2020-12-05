library ieee ;
use ieee.std_logic_1164.all;

entity Debouncer is
	port(
		clk , x, reset: in std_logic;
		y :  out std_logic
	);
end entity;

architecture behave of Debouncer is

	component GenClock is
		port (
			clk: in std_logic ;
			reset: in std_logic;
			clk_out : out std_logic
		);
	end component;
	
	component DFlipFlop1 is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	
	signal q0,q1,nq0,nq1, clk_new: std_logic ;
	begin
		
		nq0 <= (q0 and (not q1) ) or (x and q1) ;
		nq1 <= (q0 xor x ) and (not q1);

		y <= nq0 ;
		
		gen_clock : GenClock port map(clk=>clk, reset=>reset, clk_out=>clk_new );
		dff0 : DFlipFlop1 port map( D=>nq0, CLK=>clk_new, reset=>reset, Q=>q0);
		dff1 : DFlipFlop1 port map( D=>nq1, CLK=>clk_new, reset=>reset, Q=>q1);

end behave;
		