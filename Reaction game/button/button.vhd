library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity button is
  port (
	clk, in_clk : in std_logic;
	out_clk : out std_logic 
  ) ;
end entity button;

architecture behave of button is
type RtlState is (q0, q1);
signal rtl_state: RtlState;
begin
process(clk,in_clk,rtl_state)
variable next_state: RtlState;
begin
	if(clk'event and clk='1') then
		if(in_clk = '1' and rtl_state = q0) then
			next_state := q1;
			out_clk<='1';
	
		elsif (in_clk = '0' and rtl_state = q1) then
			next_state := q0; 
		elsif (in_clk = '1' and rtl_state = q1) then
			out_clk<='0';
		end if;
		rtl_state <= next_state;
	end if;
end process;
	
end architecture behave;