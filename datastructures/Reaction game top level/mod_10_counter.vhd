library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity up_counter2 is
        Generic (COUNT_BITS : INTEGER := 3);
    port (clk,reset,start : in std_logic;-- 1ms clock
            done : out std_logic;
            count_out: out std_logic_vector(COUNT_BITS downto 0));
end entity;
architecture behave of up_counter2 is
    signal count : unsigned(COUNT_BITS downto 0) := to_unsigned(0,COUNT_BITS+1);
    signal reset_1 std_logic;
    constant start : unsigned(COUNT_BITS downto 0) := to_unsigned(0,COUNT_BITS+1);
    constant full : unsigned(COUNT_BITS downto 0) := to_unsigned(10,COUNT_BITS+1);
   
    signal outsig : std_logic := '0';
    
begin
process(clk, reset)
begin
    if (reset = '1') then
       count<=start;
   end if;

    if rising_edge(clk) then
        count <= count + 1;
        
        if (count = full) then
            count <= start;
        end if;
        done <= '1';
        count_out <= count;

    end if;
end process;

end behave;
