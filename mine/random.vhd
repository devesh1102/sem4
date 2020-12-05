--This code basicly converts a 50MHz clock to generate a lower frequency 100Hz 
-- to do this we implement a mod 2 counter 19 times
library ieee;
use ieee.std_logic_1164.all;
entity random is
	Generic (COUNT_BITS : INTEGER := 10);
 
port (
	en,clk,reset: in std_logic;--clock of 50mHz
rand: out std_logic_vector(COUNT_BITS downto 0)
);
end entity random ;

architecture behave of random is
component  adder is 
Generic (COUNT_BITS : INTEGER := 10);
   port ( 
	 x,y: in std_logic_vector(COUNT_BITS downto 0);
	 sum: out std_logic_vector(COUNT_BITS downto 0)
   );
end component;
component D_FF is
port (D, CLK: in std_logic;  Q: out std_logic);
end component;
signal temp,p,s, z:std_logic_vector(10 downto 0);
begin
temp(0)<=not(reset) and p(0);--1
s(0)<= not(temp(0));
flip1: D_FF port map(s(0),clk,p(0));

temp(1)<= not(reset) and p(1);
s(1)<= not(temp(1));
flip2: D_FF port map (s(1),p(0),p(1));

temp(2)<= not(reset) and p(2);
s(2)<= not(temp(2));
flip3: D_FF port map (s(2),p(1),p(2));

temp(3)<= not(reset) and p(3);
s(3)<= not(temp(3));
flip4: D_FF port map (s(3),p(2),p(3));

temp(4)<= not(reset) and p(4);
s(4)<= not(temp(4));
flip5: D_FF port map (s(4),p(3),p(4));

temp(5)<= not(reset) and p(5);
s(5)<= not(temp(5));
flip6: D_FF port map (s(5),p(4),p(5));

temp(6)<= not(reset) and p(6);
s(6)<= not(temp(6));
flip7: D_FF port map (s(6),p(5),p(6));

temp(7)<= not(reset) and p(7);
s(7)<= not(temp(7));
flip8: D_FF port map (s(7),p(6),p(7));

temp(8)<= not(reset) and p(8);
s(8)<= not(temp(8));
flip9: D_FF port map (s(8),p(7),p(8));

temp(9)<= not(reset) and p(9);
s(9)<= not(temp(9));
flip10: D_FF port map (s(9),p(8),p(9));

temp(10)<= not(reset) and p(10);
s(10)<= not(temp(10));
flip11: D_FF port map (s(10),p(9),p(10));
  add: adder port map (s,"01111101000",z);
process(en)
variable dum :std_logic_vector(COUNT_BITS downto 0) ;
begin
dum:=z;

	if(en='1') then
	rand<=z;

    end if;
   

end process;
end  behave;