library ieee;
use ieee.std_logic_1164.all;


entity Dividebytwo is
  port (CLK, reset: in std_logic; Q: out std_logic);
end entity;

architecture behave of Dividebytwo is

component D_FF is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;

signal Qtemp, temp, Qtemp2: std_logic;
begin

temp <= not reset and not Qtemp;
dff1: D_FF port map(temp, CLK, Qtemp);
--dff2: D_FF port map(Qtemp2, CLK, Qtemp); 
Q <=  not Qtemp;

end behave;