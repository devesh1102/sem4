library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity up_counter is
  Generic (CLK_BIT : INTEGER := 3);
  port (
    clk,reset,start  : in std_logic;
	 count_to : in std_logic_vector(CLK_BIT downto 0);
	 done: out std_logic
  );
end entity up_counter;

architecture counter of up_counter is
   type RtlState is (rst, incr);
	signal rtl_state: RtlState;
   signal count: unsigned (CLK_BIT downto 0);
begin
  process(clk, reset, rtl_state, start, count, count_to)
	variable next_rtl_state: RtlState;
	variable next_count_var: unsigned (CLK_BIT downto 0);
	variable done_var: std_logic;
	variable count_upto: unsigned(CLK_BIT downto 0) := (others => '0');
begin
  count_upto(CLK_BIT downto 0) := unsigned(count_to);
  next_rtl_state := rtl_state;
  next_count_var := count;
  done_var := '0';
  case rtl_state is
		when rst=>
             if(start = '1') then 
					next_rtl_state := incr;
					next_count_var := (others=>'0');
				 end if;
      when incr => 
          if (count = count_upto) then
				 next_rtl_state := rst;
				 done_var := '1';
          else 
            next_rtl_state := incr;
            next_count_var := next_count_var + 1;
          end if;
	end case;
	done <= done_var;
	if (clk'event and clk = '1') then
		if (reset = '1' ) then
			rtl_state <= rst;
      else
			rtl_state <= next_rtl_state;
      end if;
      count <= next_count_var;
		--count_out <= std_logic_vector(count);
  end if;
end process;
end counter;