--Please use 'D_FF' instead of DFF.

--------Modified DFF.vhd---------

--

-- A description of a D-flip-flop in VHDL.

-- You can use this building block for describing

-- finite state machines (remember that you will

-- need to declare the component etc..).

-- 

-- 

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

----------------------------------------