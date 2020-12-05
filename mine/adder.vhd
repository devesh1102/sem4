use  std.standard.all; 

library ieee;
use ieee.std_logic_1164.all;

entity onebit_fulladder is

   port (
	  a,b,cin :in std_logic;
	  s,co : out std_logic
   );
end entity onebit_fulladder;
architecture behave of onebit_fulladder is 
begin
 s <= ((a XOR b) XOR cin);
 co<= ((a AND b) OR (a AND cin)) OR  (b AND cin);
 end architecture behave;
 
 library ieee;
use ieee.std_logic_1164.all;
 entity adder is
 Generic (COUNT_BITS : INTEGER := 10);
   port ( 
	 x,y: in std_logic_vector(COUNT_BITS downto 0);
	 sum: out std_logic_vector(COUNT_BITS downto 0)
   );
end entity adder;
architecture behave of adder is
     signal w : std_logic_vector(11 downto 0);
	  component onebit_fulladder is 
	  port(
	  a,b,cin : in std_logic;
	  s,co : out std_logic
	  );
	  end component onebit_fulladder;
begin
	x1: onebit_fulladder port map (a=>x(0), b=>y(0), cin=>'0' , s=>sum(0), co=>w(0));
	x2: onebit_fulladder port map (a=>x(1), b=>y(1), cin=>w(0) , s=>sum(1), co=>w(1));
	x3: onebit_fulladder port map (a=>x(2), b=>y(2), cin=>w(1) , s=>sum(2), co=>w(2));
	x4: onebit_fulladder port map (a=>x(3), b=>y(3), cin=>w(2) , s=>sum(3), co=>w(3));
	x5: onebit_fulladder port map (a=>x(4), b=>y(4), cin=>w(3) , s=>sum(4), co=>w(4));
	x6: onebit_fulladder port map (a=>x(5), b=>y(5), cin=>w(4) , s=>sum(5), co=>w(5));
	x7: onebit_fulladder port map (a=>x(6), b=>y(6), cin=>w(5) , s=>sum(6), co=>w(6));
	x8: onebit_fulladder port map (a=>x(7), b=>y(7), cin=>w(6) , s=>sum(7), co=>w(7));
x9: onebit_fulladder port map (a=>x(8), b=>y(8), cin=>w(7) , s=>sum(8), co=>w(8));
x10: onebit_fulladder port map (a=>x(9), b=>y(9), cin=>w(8) , s=>sum(9), co=>w(9));
x11: onebit_fulladder port map (a=>x(10), b=>y(10), cin=>w(9) , s=>sum(10), co=>w(11));
	

end architecture behave;