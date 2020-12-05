library ieee;
use ieee.std_logic_1164.all;

entity D_FF is
  port (D, CLK: in std_logic; Q: out std_logic);
end entity;
architecture WhatDoYouCare of D_FF is
begin 
   process (CLK) 
   begin
	if CLK'event and (CLK = '1') then
	     Q <= D;
	end if;
   end process;
end WhatDoYouCare;

library ieee;
use ieee.std_logic_1164.all;

entity fullcounter is
  port (clk, reset: in std_logic; y: out std_logic);
end entity;
architecture Struct of fullcounter is

component D_FF is
port (D, CLK: in std_logic; Q: out std_logic);
end component;

signal temp,s,p : std_logic_vector(18 downto 0);
begin
temp(0) <= (not (reset)) and p(0);
s(0) <= not(temp(0));
Dff0 : D_FF port map (D => s(0), clk => clk, Q =>p(0)); 

temp(1) <= (not (reset)) and p(1);
s(1) <= not(temp(1));
Dff1 : D_FF port map (D => s(1), clk => p(0), Q =>p(1)); 

temp(2) <= (not (reset)) and p(2);
s(2) <= not(temp(2));
Dff2 : D_FF port map (D => s(2), clk => p(1), Q =>p(2));

temp(3) <= (not (reset)) and p(3);
s(3) <= not(temp(3));
Dff3 : D_FF port map (D => s(3), clk => p(2), Q =>p(3));

temp(4) <= (not (reset)) and p(4);
s(4) <= not(temp(4));
Dff4 : D_FF port map (D => s(4), clk => p(3), Q =>p(4));

temp(5) <= (not (reset)) and p(5);
s(5) <= not(temp(5));
Dff5 : D_FF port map (D => s(5), clk => p(4), Q =>p(5));

temp(6) <= (not (reset)) and p(6);
s(6) <= not(temp(6));
Dff6 : D_FF port map (D => s(6), clk => p(5), Q =>p(6));

temp(7) <= (not (reset)) and p(7);
s(7) <= not(temp(7));
Dff7 : D_FF port map (D => s(7), clk => p(6), Q =>p(7));

temp(8) <= (not (reset)) and p(8);
s(8) <= not(temp(8));
Dff8 : D_FF port map (D => s(8), clk => p(7), Q =>p(8));

temp(9) <= (not (reset)) and p(9);
s(9) <= not(temp(9));
Dff9 : D_FF port map (D => s(9), clk => p(8), Q =>p(9));

temp(10) <= (not (reset)) and p(10);
s(10) <= not(temp(10));
Dff10 : D_FF port map (D => s(10), clk => p(9), Q =>p(10));

temp(11) <= (not (reset)) and p(11);
s(11) <= not(temp(11));
Dff11 : D_FF port map (D => s(11), clk => p(10), Q =>p(11));

temp(12) <= (not (reset)) and p(12);
s(12) <= not(temp(12));
Dff12 : D_FF port map (D => s(12), clk => p(11), Q =>p(12));

temp(13) <= (not (reset)) and p(13);
s(13) <= not(temp(13));
Dff13 : D_FF port map (D => s(13), clk => p(12), Q =>p(13));

temp(14) <= (not (reset)) and p(14);
s(14) <= not(temp(14));
Dff14 : D_FF port map (D => s(14), clk => p(13), Q =>p(14));

temp(15) <= (not (reset)) and p(15);
s(15) <= not(temp(15));
Dff15 : D_FF port map (D => s(15), clk => p(14), Q =>p(15));

temp(16) <= (not (reset)) and p(16);
s(16) <= not(temp(16));
Dff16 : D_FF port map (D => s(16), clk => p(15), Q =>p(16));

temp(17) <= (not (reset)) and p(17);
s(17) <= not(temp(17));
Dff17 : D_FF port map (D => s(17), clk => p(16), Q =>p(17));

temp(18) <= (not (reset)) and p(18);
s(18) <= not(temp(18));
Dff18 : D_FF port map (D => s(18), clk => p(17), Q =>p(18));

y <= p(18);
end Struct;
