library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity up_counter2 is
  Generic (CLK_BIT : INTEGER := 10);
  --Generic (CLK_BIT : INTEGER := 3);
  port (
   clk,reset,start  : in std_logic;
   done: out std_logic;
   count_out: inout std_logic_vector(CLK_BIT downto 0)
  );
end entity up_counter2;

architecture counter of up_counter2 is
  type RtlState is (rst, incr);
  signal rtl_state: RtlState := rst;
begin
process(clk, reset, rtl_state, start, count_out)
  variable next_rtl_state: RtlState;
  variable next_count_var: unsigned (CLK_BIT downto 0);
  variable done_var: std_logic;
  constant count_upto: unsigned(CLK_BIT downto 0) := (others => '1');
begin
	next_rtl_state := rtl_state;
	next_count_var := unsigned(count_out);
  done_var := '0';
  case rtl_state is
    when rst=>
    	next_count_var := (others=>'0');
        if(start = '1') then 
			next_rtl_state := incr;
        end if;
      when incr => 
         if (next_count_var = count_upto) then
         next_rtl_state := rst;
         done_var := '1';
			end if;
         next_count_var := unsigned(count_out) + to_unsigned(1,CLK_BIT+1);
         
  end case;
 if (clk'event and clk = '1') then
    if (reset = '1' ) then
      rtl_state <= rst;
	else
		rtl_state <= next_rtl_state;
   end if; 
	count_out <= std_logic_vector(next_count_var);
	done <= done_var;
 end if;
 
end process;
end counter;