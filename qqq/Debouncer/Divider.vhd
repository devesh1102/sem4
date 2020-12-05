library ieee;
use ieee.std_logic_1164.all;


entity Divider is
  port (CLK, reset: in std_logic; Q: out std_logic);
end entity;

architecture behave of Divider is

component Dividebytwo is
  port (CLK, reset: in std_logic; Q: out std_logic);
end component;

signal Qtemp, Qtemp2, Qtemp3, Qtemp4, Qtemp5, Qtemp6, Qtemp7, Qtemp8, Qtemp9, Qtemp10, Qtemp11, Qtemp12, Qtemp13, Qtemp14, Qtemp15, Qtemp16, Qtemp17, Qtemp18, Qtemp19: std_logic;
signal temp, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16, temp17, temp18:std_logic;
begin

divideby2_1: Dividebytwo port map (CLK, reset, Qtemp);
temp <= Qtemp;
divideby2_2: Dividebytwo port map (temp, reset, Qtemp2);
temp2 <= Qtemp2;
divideby_2_3: Dividebytwo port map (temp2, reset, Qtemp3);
temp3 <= Qtemp3;
divideby_2_4: Dividebytwo port map (temp3, reset, Qtemp4);
temp4 <= Qtemp4;
divideby_2_5: Dividebytwo port map (temp4, reset, Qtemp5);
temp5 <= Qtemp5;
divideby_2_6: Dividebytwo port map (temp5, reset, Qtemp6);
temp6 <= Qtemp6;
divideby_2_7: Dividebytwo port map (temp6, reset, Qtemp7);
temp7 <= Qtemp7;
divideby_2_8: Dividebytwo port map (temp7, reset, Qtemp8);
temp8 <= Qtemp8;
divideby_2_9: Dividebytwo port map (temp8, reset, Qtemp9);
temp9 <= Qtemp9;
divideby_2_10: Dividebytwo port map (temp9, reset, Qtemp10);
temp10 <= Qtemp10;
divideby_2_11: Dividebytwo port map (temp10, reset, Qtemp11);
temp11 <= Qtemp11;
divideby_2_12: Dividebytwo port map (temp11, reset, Qtemp12);
temp12 <= Qtemp12;
divideby_2_13: Dividebytwo port map (temp12, reset, Qtemp13);
temp13 <= Qtemp13;
divideby_2_14: Dividebytwo port map (temp13, reset, Qtemp14);
temp14 <= Qtemp14;
divideby_2_15: Dividebytwo port map (temp14, reset, Qtemp15);
temp15 <= Qtemp15;
divideby_2_16: Dividebytwo port map (temp15, reset, Qtemp16);
temp16 <= Qtemp16;
divideby_2_17: Dividebytwo port map (temp16, reset, Qtemp17);
temp17 <= Qtemp17;
divideby_2_18: Dividebytwo port map (temp17, reset, Qtemp18);
temp18 <= Qtemp18;
divideby_2_19: Dividebytwo port map (temp18, reset, Qtemp19);

Q <= Qtemp19;

end behave;