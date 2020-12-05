library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
	port (start,is_on,clk,rst : in std_logic;
			score : out std_logic_vector(12 downto 0));
end entity;
architecture behave of timer is
signal dummy : unsigned(12 downto 0) := to_unsigned(0,13);signal initial : unsigned(12 downto 0) := to_unsigned(0,13);

begin
	process(start,is_on,clk)
	begin
	if rising_edge(clk) then
	    if (start ='1') then 
			dummy <=  1;
		end if;
		if (is_on='1') then
			dummy <= dummy + 1;
		end if;
		
		if(rst = '1') then
			dummy <=  initial;
		end if;
		score <= std_logic_vector(dummy);	

	end if;
	end process;
end behave;
