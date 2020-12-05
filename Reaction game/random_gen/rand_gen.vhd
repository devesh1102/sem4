library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity random is
	 Generic (CLK_BIT : INTEGER := 9);
   --Generic (CLK_BIT : INTEGER := 3);
 port (
   en, clk: in std_logic;
   rand: out std_logic_vector(9 downto 0)
  );
end entity random;

architecture Behave of random is
   signal count: unsigned (CLK_BIT downto 0) := (others => '1');
begin
  process(clk,en,count)
  variable next_count_var: unsigned (CLK_BIT downto 0);
 begin
	next_count_var := count;
    if (clk'event and clk = '1') then
	 next_count_var := count - 1;
	   count <= next_count_var;
  end if;
  if(en = '1' and en'event )  then
        rand <= std_logic_vector(count);
      end if;
   end process;
end Behave;
