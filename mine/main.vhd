library ieee;
use ieee.std_logic_1164.all;

entity debouncer is 
port (xtemp,clk,reset: in std_logic;
y : out std_logic
);
end entity debouncer ;
architecture behave of debouncer is
component D_FF is
port (D, CLK: in std_logic;  Q: out std_logic);
end component;
component div_4 is 
 port (clk,reset: in std_logic;
X : out std_logic
);
end component;
signal nq0,nq1,q0,q1,rq0,rq1,clk2,x :std_logic;
begin
--s0-00 one time 0
--s1-01 one time 1
--s2-10 intermediate
divider: div_4 port map(clk,reset, clk2);
flip:d_ff port map (nq0,clk2,rq0);
flip1:d_ff port map (nq1,clk2,rq1);
flip3: d_ff port map (
	xtemp,clk2,x
);

q0<= rq0 and not(reset);
q1<= rq1 and not(reset);
y<= (not(q1) and q0) or (not(q0) and x and q1);
nq0<= (x and q1) or (x and q0);
nq1<= (x and (not(q0) and (not(q1)))) or (not(x)and q0); 
end behave;
