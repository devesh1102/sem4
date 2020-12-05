
library ieee;
use ieee.std_logic_1164.all;

entity slow_clk is 
port (clk,reset: in std_logic;
X : out std_logic
);
end entity slow_clk ;
architecture behave of slow_clk is
component D_FF is
port (D, CLK: in std_logic;  Q: out std_logic);
end component;
signal temp,s,p:std_logic_vector(19 downto 0);
begin
temp(0)<=not(reset) and p(0);
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
flip9: D_FF port map (s(8),p(7),p(6));

temp(9)<= not(reset) and p(9);
s(9)<= not(temp(9));
flip10: D_FF port map (s(9),p(8),p(9));

temp(10)<= not(reset) and p(10);
s(10)<= not(temp(10));
flip11: D_FF port map (s(10),p(9),p(10));

temp(11)<= not(reset) and p(11);
s(11)<= not(temp(11));
flip12: D_FF port map (s(11),p(10),p(11));

temp(12)<= not(reset) and p(12);
s(12)<= not(temp(12));
flip13: D_FF port map (s(12),p(11),p(12));

temp(13)<= not(reset) and p(13);
s(13)<= not(temp(13));
flip14: D_FF port map (s(13),p(12),p(13));

temp(14)<= not(reset) and p(14);
s(14)<= not(temp(14));
flip15: D_FF port map (s(14),p(13),p(14));

temp(15)<= not(reset) and p(15);
s(15)<= not(temp(15));
flip16: D_FF port map (s(15),p(14),p(15));

temp(16)<= not(reset) and p(16);
s(16)<= not(temp(16));
flip17: D_FF port map (s(16),p(15),p(16));

temp(17)<= not(reset) and p(17);
s(17)<= not(temp(17));
flip18: D_FF port map (s(17),p(16),p(17));

temp(18)<= not(reset) and p(18);
s(18)<= not(temp(18));
flip19: D_FF port map (s(18),p(17),p(18));

x<= p(18);
end  behave;
