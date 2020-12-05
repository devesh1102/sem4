library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity counter3 is
port (
		clk,reset,start: in std_logic;
		done : out std_logic;
		count_out : out unsigned (10 downto 0)
	);	
end entity counter3;

architecture Behave of counter3 is

type RtlState is (rst,incr);
signal rtl_state: RtlState := rst;
signal count: unsigned (10 downto 0);
constant Z10 : unsigned(10 downto 0):=(others =>'1');

begin

process (clk, reset, rtl_state, start,count)
variable next_rtl_state: RtlState;
variable next_count_var: unsigned (10 downto 0);
variable done_var : std_logic;
begin
next_rtl_state := rtl_state;
next_count_var:=count;
done_var :='0';
case rtl_state is
	when rst =>
		done_var :='0';
		if (start = '1') then
		next_rtl_state := incr;
		next_count_var :=(others => '0');
		end if;
	when incr =>
		if (count = Z10) then
		next_rtl_state := rst;
		done_var := '1';
		else
		done_var :='0';
		next_rtl_state := incr;
		next_count_var:= count + 1;
		end if;
end case;

if (clk'event and clk = '1') then
	done <= done_var;
	if (reset = '1') then
		--count_out<=(others => '0');
		rtl_state <= rst;
	else
		rtl_state <= next_rtl_state;
	end if;
	count <= next_count_var;
	count_out<= count;
	
end if;
end process;
end Behave;
