library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity counter is
  port (
    clk,reset,start  : in std_logic;
	-- count_to : std_logic_vector(9 downto 0)
	 done : out std_logic;
 count_out: out std_logic_vector(9 downto 0)
  );
end entity counter;

architecture Behave of counter is
   type RtlState is (reset, decr);
	 signal rtl_state: RtlState;
   signal count: unsigned (9 downto 0);
   constant Z9: unsigned (9 downto 0) := (others => '0');
begin
  process(clk, reset, rtl_state, start, count)
	variable next_rtl_state: RtlState;
	variable next_count_var: unsigned (9 downto 0);
	variable done_var: std_logic;
begin
  next_rtl_state := rtl_state;
  next_count_var := count;
  done_var := '0';
  case rtl_state is
     when decr => 
          if (count = Z9) then
				 next_rtl_state := reset;
				 done_var := '1';
          else 
            next_rtl_state := decr;
            next_count_var := next_count_var - 1;
          end if;
    when reset=>
             if(start = '1') then 
         next_rtl_state := decr;
         next_count_var := (others=>'1');
  end if;
end case;
 done <= done_var;
 
    if (clk'event and clk = '1') then
	  if (reset = '1' ) then
		rtl_state <= reset;
      else
         rtl_state <= next_rtl_state;
      end if;
      count <= next_count_var;
		count_out <= std_logic_vector(count);
  end if;
end process;
end Behave;