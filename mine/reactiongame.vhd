library ieee;
use ieee.std_logic_1164.all;

entity reactiongame is
	port ( gclock,nreact,nled_readt,reset : in std_logic;
			LED,led_read,led_write,enable : out std_logic;
			data: out std_logic_vector(7 downto 0)
			);
end entity;
architecture struct of reactiongame is

component slow_clk is
port (clk,reset: in std_logic;
X : out std_logic
);
end component;

component debouncer is
	port (x : in std_logic;
			clk,led_readt : in std_logic;
			output : out std_logic);
end component;

component randgen is
	port (clk,stop : in std_logic;
			output : out std_logic_vector(10 downto 0));
end component;


component eightcount is
	port (React,led_read,slow : in std_logic;
			gamenew,done : out std_logic;
			led_readtcount : out std_logic_vector(3 downto 0));
end component;
component lcd_controller is
port (clk    : in std_logic;
      led_readt    : in std_logic;                          -- led_readt
      erase : in std_logic;                  --- clear position
      put_char : in std_logic;
      write_data : in std_logic_vector(7 downto 0) ;
      write_row : in std_logic_vector(0 downto 0);
      write_column : in std_logic_vector(3 downto 0);
      arc : out std_logic;
      lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_led_read : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);
       : out std_ulogic;
      b12 : out std_ulogic);     --data line
end component;


signal slow,ledon,gamenew,done_sig,deboun_out,React,led_readt,led_ready,dum1,tem  : std_logic;
signal rand_out : std_logic_vector(10 downto 0);signal max_alld : std_logic_vector(12 downto 0);
signal reactcount,ledcount,led_readtcount_sig,colum_sig : std_logic_vector(3 downto 0);
signal data_var : std_logic_vector(7 downto 0);signal row_sig : std_logic_vector(0 downto 0);
signal finished : std_logic := '0';signal lcd_in : std_logic := '1';signal erase : std_logic := '0';
signal random_sig : unsigned(10 downto 0);constant starthere : unsigned(12 downto 0) := to_unsigned(0,13);
signal count : unsigned(12 downto 0) := to_unsigned(0,13);
signal ledcrl : std_logic := '0';

begin

debounce : debouncer port map (React ,slow, led_readt, deboun_out);
--use debouncer to deboundce the react button.
clock : slow_clk port map (CLK, slow);
--slows the clock, so that it become 1ms. by continuously using the counter
rand : random port map (CLK, React, rand_out);
-- a mod ten counter is used here whenever the react button is pressed then it gives the output
--it usues a fast clk so the input will be a random no as the clk is continuoiusly running

turns : eightcount port map(React,Reset, slow, gamenew, done_sig, led_readtcount_sig);
--turns simulate the loop 8 times becouse we need the game to run in 8 times and then go to reset
controller: lcd_controller port map (slow, nled_readt, erase, lcd_in,data_var, row_sig,colum_sig,led_ready, rw, en, led_read,data);
------------------------------------------------------------------------------
--lcd controller is used and is same as that was provided by the well lab
	process(slow,gamenew,led_readt,led_ready,React)

	variable writes : unsigned(7 downto 0) := to_unsigned(48,8);
	variable state, statenext : integer := -1;
	--states represent the two variables for the current state and the next state
	variable time1,num,react_no, ledcount : integer := 0;
	variable write_var : std_logic_vector(7 downto 0);
    variable column_var : unsigned(3 downto 0) := to_unsigned(0,4);
	begin
	if (slow'event and slow = '1') then


if (led_ready ='1') then
 if (led_readt ='0') then
---------------------------------------------------------------------------------
	if (state = 3 and time1-100 >= 0) then
time1 := time1 - 100;
num := num + 1;
else
write_var := writes + num;
nexts:=1;
num:=0;
end if;
---------------------------------------------------------------------------------
if (state = 2 and time1-1000>=0) then
time1:=time1-1000;
num:=num+1;
else
write_var := writes+num;
statenext:=1;
num:=0;

end if;
--------------------------------------------------------------------------------
if (state = 1 and time1-10>=0) then
time1:=time1-10;
num:=num+1;
else						
write_var := writes+num;
statenext:=0;
num:=0;

end if;
--------------------------------------------------------------------				
if state=0 then
num:=time1;
write_var := writes + num;
statenext:=-1;
num:=0;
else
write_var := writes+num;
statenext:=0;
num:=0;
end if;
---------------------------------------------------------------------				
if (finished='1') then
write_var:=std_logic_vector (writes);
end if;
if(done_sig='1') then
lcd_in <= '0';
else
lcd_in <= '1';
end if;
	erase<='0';
				
if state = -1 then
time1:=to_integer(unsigned(max_alld));
statenext := -2;
write_var := swrites + unsigned(reactcount);

end if;
if (state = -2) then
statenext := 3;
end if;
				
data_var <= write_var;		
colum_sig <= std_logic_vector(to_unsigned(15-state,4));
														
state:=statenext;			
end if;
end if;
		-------------------------------------------------------------------------
				count <= count+1;
if (led_readt = '1') then
react_no:=0;
 ledcount:=0;
 lcd_in <= '1';
state:=-1;
erase <= '1';
count <= starthere;
colum_sig <= "0011";
ledcrl <= '0';
row_sig <= "0";
finished <= '0';
			end if;
random_sig <= unsigned(random);
 if (count = random_sig) then
 ledcrl <= '1';
end if;
	if (react = '1') then
ledcrl <= '0';
end if;

ledon <= ledcrl;
if (reactcount > ledcount) then
finished <= '1';
end if;
if (react'event and react = '1') then
		 react_no := react_no+1;
                end if;
if (led'event and led = '1') then
		        ledcount:=ledcount+1;
	            end if;
		end if;
	end process;
	----------------------------------------------------------------------------

 React<=not nreact;
led_readt<=not nled_readt;
LED<=ledon and not(finished);

end struct;
