library ieee;
use ieee.std_logic_1164.all;

entity eight_count is-- it counts the no of turns that the  player has played
	port (trigger ,rst,slow_clock : in std_logic;
			rst_2,over : out std_logic;
			count : out std_logic_vector(3 downto 0));
end entity;
architecture behave of eight_count is 
signal rst_sig,over_sig : std_logic := '0';
signal count_sig : unsigned(3 downto 0) := to_unsigned(0,4);
signal max : unsigned(3 downto 0) := to_unsigned(8,4);
begin
	process(trigger ,rst,slow_clock)
	begin
	if (slow_clock'event and slow_clock = '1') then
	if (rst = '1') then
count_sig <= to_unsigned(0,4);
over_sig <= '0';
	end if;
	if(rst = '0') then
if (trigger ='0' and count_sig < max) then
				count_sig <= count_sig + 1;
			
		else (count_sig > max) then
			rst_sig <= '1';
			over_sig <= '1';
		end if;	
	end if;
	
	over <= over_sig;
	rst_2 <= rst_sig;
	count <= std_logic_vector(count_sig);
	end if;
	end process;
end behave;