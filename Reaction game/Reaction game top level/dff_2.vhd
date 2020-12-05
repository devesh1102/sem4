--
-- A description of a D-flip-flop in VHDL.
-- You can use this building block for describing
-- finite state machines (remember that you will
-- need to declare the component etc..).
-- 
-- 
library ieee;
use ieee.std_logic_1164.all;

entity DFF1 is
  port (D, CLK, reset: in std_logic; Q: out std_logic);
end entity;

architecture WhatDoYouCare of DFF1 is
begin 

   process (CLK,reset) 
   begin
	if reset='1' then
		Q<='0';
	elsif (CLK'event and CLK = '1') then
	     Q <= D;
	end if;
   end process;

end WhatDoYouCare;