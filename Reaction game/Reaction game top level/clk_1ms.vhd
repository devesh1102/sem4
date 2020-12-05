library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity clk_1ms is
  Generic (CLK_BIT : INTEGER := 15);
  port (
   clk  : in std_logic;
   clk_out: out std_logic
  );
end entity clk_1ms;

architecture counter of clk_1ms is
  type RtlState is (rst, incr);
  signal rtl_state: RtlState := rst;
  signal count: unsigned (CLK_BIT downto 0);
begin
process(clk, rtl_state,count)
  variable next_rtl_state: RtlState;
  variable next_count_var: unsigned (CLK_BIT downto 0);
begin
  next_rtl_state := rtl_state;
  case rtl_state is
    when rst=>
    	next_count_var := (others=>'0');
		next_rtl_state := incr;
    when incr => 
		next_count_var := count + to_unsigned(1,CLK_BIT+1);
      if (count < to_unsigned(25000,CLK_BIT+1)) then
      clk_out <= '1';
      elsif (count > to_unsigned(50000,CLK_BIT+1)) then
        next_rtl_state := rst;
      else 
      clk_out <= '0';
      end if;
  end case;
  if (clk'event and clk = '1') then
    rtl_state <= next_rtl_state;
	 count <= next_count_var;
 end if;
end process;
end counter;