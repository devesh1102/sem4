library ieee;
use ieee.std_logic_1164.all;
entity comparator is
port (a0,a1,a2,a3,a4,b0,b1,b2,b3,b4: in std_logic; 
      c: out std_logic
      );
end entity comparator ;
architecture behave of comparator is
begin
	c<= (a0 XNOR b0) AND (a1 XNOR b1) AND (a2 XNOR b2) AND (a3 XNOR b3) AND (a4 XNOR b4) ;
	end architecture behave;