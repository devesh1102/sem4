library ieee;
use ieee.std_logic_1164.all;

entity Debouncer is
  port (X, CLK, reset: in std_logic; Y: out std_logic);
end entity;

architecture behave of Debouncer is

component D_FF is
  port (D, CLK: in std_logic; Q: out std_logic);
end component;

component Divider is
  port (CLK, reset: in std_logic; Q: out std_logic);
end component;

signal q0, q1, nq0, nq1, clock1, X_temp:std_logic;
begin

--Set the value of CLK to that from the Divider made.

divider1: Divider port map (CLK, reset, clock1);

dff0: D_FF port map (X, clock1, X_temp);

nq0 <= not reset and (not q0 and (X_temp xor q1));
nq1 <= not reset and ((X_temp and q1) or (not X_temp and q1 and not q0) or (X_temp and not q1 and q0));
Y <= not reset and ((X_temp and q1) or (not X_temp and q1 and not q0) or (X_temp and not q1 and q0));

--y <= (not reset) and (((not q1) and q0 and x )or (q1 and (not q0)));
--nq1 <= (not reset) and (((not q1) and q0 and x )or (q1 and (not q0) and x));
--nq0 <= (not reset) and (((not q1) and (not q0) and x )or (q1 and (not q0) and (not x)));

dff: D_FF port map (nq0, clock1, q0);
dff2: D_FF port map (nq1, clock1, q1);

end behave;