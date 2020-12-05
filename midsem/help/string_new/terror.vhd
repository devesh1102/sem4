library ieee;
use ieee.std_logic_1164.all;

entity TERROR is 
port (X4,X3,X2,X1,X0: in std_logic; W: out std_logic;
clk,reset: in std_logic);
end entity TERROR ;
architecture behave of TERROR is
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
signal s10,s11,s12,s13,s14,s20,s21,s22,s23,s24 ,
       s30,s31,s32,s33,s34,s40,s41,s42,s43,s44,q0,q1,q2,
       rq1,rq0,rq2,nq0,nq1,nq2,stemp0,stemp1,stemp2,outq,tt,tl: std_logic;
	--000->null
	--001-> T
	--010-> TE
	--011-> TER
	--100-> TERR
	--101-> TERRO
begin
 filp0: D_FF port map ( d=>nq0, CLK=> clk, q=> rq0);--getting the value of rq0 from nqo
 filp1: D_FF port map ( d=>nq1, CLK=> clk, q=> rq1);
 filp2: D_FF port map ( d=>nq2, CLK=> clk, q=> rq2);
 reset0: MUX_bit port map('0',rq0,reset,q0);
 reset1: MUX_bit port map('0',rq1,reset,q1);
 reset2: MUX_bit port map('0',rq2,reset,q2);
 mux_1:  mux port map('0','0','1','0','1', '1','0','1','0','0', q0, s10,s11,s12,s13,s14 ); --e,t depending on q0 q1 q2 select the letter to be comparedand store it in sig3
 mux_2:  mux port map('1','0','0','1','0', '0','1','1','1','1', q0, s20,s21,s22,s23,s24 ); --r o 
 mux_3:  mux port map('1','0','0','1','0', s10,s11,s12,s13,s14, q1, s30,s31,s32,s33,s34) ; -- r or(t,e depending on q0) depending on s1
 mux_4:  mux port map(s20,s21,s22,s23,s24, s30,s31,s32,s33,s34, q2, s40,s41,s42,s43,s44) ;-- if s2 is 1 then last two bits
 comp_1: comparator port map(s40,s41,s42,s43,s44 ,X4,X3,X2,X1,X0, outq);--compare input  s30 is te most significant 
         w<= (not(q1) )and q0 and outq and q2; 
stemp0<= not(q0);
stemp1 <= (q0 XOR q1) and (not q2); -- finding next value of stae
tt <= (((not q2)and q1) and q0) ;
tl <=((q2 and (not q1))and (not q0));-- only 1 if 01
stemp2 <= tt or tl;
m1: MUX_bit port map  (stemp0,q0,outq, nq0);--updating value of nq0
m2: MUX_bit port map (stemp1,q1,outq,nq1);--updating value of nq1
m3: MUX_bit port map (stemp2,q2,outq,nq2);--updating value of nq2
end architecture behave;