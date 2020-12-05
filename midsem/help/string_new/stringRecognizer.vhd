library ieee;
use ieee.std_logic_1164.all;
entity stringRecognizer is 
port (reset, clk: in std_logic;
	  X4,X3,X2,X1,X0: in std_logic; 
	  W: out std_logic
 );	
end entity stringRecognizer;
architecture behave  of stringRecognizer is
component BOMB is
	port (
		X4,X3,X2,X1,X0: in std_logic; W: out std_logic;
      clk,reset: in std_logic
	);
end component BOMB;

component TERROR is
	port (
		X4,X3,X2,X1,X0: in std_logic; W: out std_logic;
      clk,reset: in std_logic
	);
end component TERROR ;
component KNIFE is
	port (
		X4,X3,X2,X1,X0: in std_logic; W: out std_logic;
      clk,reset: in std_logic
	);
end component KNIFE;
component GUN is
	port (
		X4,X3,X2,X1,X0: in std_logic; W: out std_logic;
      clk,reset: in std_logic
	);
end component GUN;
signal a,b,c,d :std_logic;
begin
	aa: BOMB port map ( X4,X3,X2,X1,X0,a,clk,reset);
	K: KNIFE port map ( X4,X3,X2,X1,X0,b,clk,reset);
	T: TERROR port map (X4,X3,X2,X1,X0,c,clk,reset );
	G: GUN port map ( X4,X3,X2,X1,X0,d,clk,reset);
	w<= a OR b or c or d;
end architecture behave ;