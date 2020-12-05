-------------------mux_bit---------------
use  std.standard.all; library ieee;
use ieee.std_logic_1164.all;
entity MUX_bit is
     port(
      c,d,Y : in std_logic;
		c0 : out std_logic	
    );
	 	 end entity;
architecture behave of  MUX_bit is
signal y0: std_logic;
begin
y0 <= NOT(Y);
c0 <= ((c AND Y) OR ( d AND y0));
end architecture behave;
--------------mux---------------------
use  std.standard.all; library ieee;
use ieee.std_logic_1164.all;

entity MUX is
     port(
      d0,d1,d2,d3,d4,f0,f1,f2,f3,f4 : in std_logic;
		y1 : in std_logic;
      g0,g1,g2,g3,g4 : out std_logic
    );
	 end entity;
architecture behave of  MUX is
component  MUX_bit is 
port(
      c,d,y : in std_logic;
		c0 : out std_logic	
    );
	 end component MUX_bit;
 
begin
X1: MUX_bit port map(c=>d0,d=>f0,y=>y1,c0=>g0);
X2: MUX_bit port map(c=>d1,d=>f1,y=>y1,c0=>g1);
X3: MUX_bit port map(c=>d2,d=>f2,y=>y1,c0=>g2);
X4: MUX_bit port map(c=>d3,d=>f3,y=>y1,c0=>g3);
X5: MUX_bit port map(c=>d4,d=>f4,y=>y1,c0=>g4);

end architecture behave;