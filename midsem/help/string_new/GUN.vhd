library ieee;
use ieee.std_logic_1164.all;

entity GUN is 
port (X4,X3,X2,X1,X0: in std_logic; W: out std_logic;
clk,reset: in std_logic);
end entity GUN ;
architecture behave of GUN is
component D_FF is
port (D, CLK: in std_logic;  Q: out std_logic);
end component;
component MUX is
 port(
      d0,d1,d2,d3,d4,f0,f1,f2,f3,f4 : in std_logic;
		y1 : in std_logic;
      g0,g1,g2,g3,g4 : out std_logic
    );
	 end component;
component  MUX_bit is 
port(
      c,d,y : in std_logic;
		c0 : out std_logic	
    );
	 end component MUX_bit;
component comparator is
	port (
		a0,a1,a2,a3,a4,b0,b1,b2,b3,b4: in std_logic;
		 c: out std_logic
		
	);
end component comparator;
signal s10,s11,s12,s13,s14,s20,s21,s22,s23,s24,
stemp0,stemp1,rq0,rq1 ,q0,q1,nq0,nq1,outq: std_logic;
	--00->null
	--01-> g
	--10-> gu
begin
 filp0: D_FF port map ( d=>nq0, CLK=> clk, q=> rq0);--getting the value of rq0 from nqo
 filp1: D_FF port map ( d=>nq1, CLK=> clk, q=> rq1);
 reset0: MUX_bit port map('0',rq0,reset,q0);
 reset1: MUX_bit port map('0',rq1,reset,q1);
 
   mux_1:  mux port map('1','0','1','0','1',  '0','0','1','1','1',  q0, s10,s11,s12,s13,s14 );--u g --depending on s0 s1 select the letter to be comparedand store it in sig3
   mux_2:  mux port map('0','1','1','1','0',  s10,s11,s12,s13,s14,  q1, s20,s21,s22,s23,s24 );  --s1 n 
com: comparator port map (s20,s21,s22,s23,s24 ,X4,X3,X2,X1,X0, outq);--compare input  s30 is te most significant 
w<= not(q0) and q1 and outq; 
stemp0<= (not(q1)) and (not(q0));--adding 1 to q1q0 but  adding 1 to 10 should result in 00 only 1 of 00
stemp1 <= (not(q1)) and q0;  -- only 1 if 01
m1: MUX_bit port map (stemp0,q0,outq, nq0);--updating value of nq0
m2: MUX_bit port map (stemp1,q1,outq,nq1);--updating value of nq1

end architecture behave;