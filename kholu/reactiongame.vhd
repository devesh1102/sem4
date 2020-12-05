library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reactiongame is
	port (CLK,nreact,nrst : in std_logic;
			LED : out std_logic;
			rs,rw,en : out std_logic;
			data : out std_logic_vector(7 downto 0);
			b11,b12 : out std_logic
			);
end entity;
architecture struct of reactiongame is

component slowclk is
	port (inclk : in std_logic;
			outclk : out std_logic);
end component;

component debouncer is
	port (x : in std_logic;
			clk,rst : in std_logic;
			output : out std_logic);
end component;

component randgen is
	port (clk,stop : in std_logic;
			output : out std_logic_vector(10 downto 0));
end component;



component looper is
	port (React,rst,sclk : in std_logic;
			newrst,done : out std_logic;
			rstcount : out std_logic_vector(3 downto 0));
end component;




component lcd_controller is
port (clk    : in std_logic;
      rst    : in std_logic;                          -- rst
      erase : in std_logic;                  --- clear position
      put_char : in std_logic;
      write_data : in std_logic_vector(7 downto 0) ;
      write_row : in std_logic_vector(0 downto 0);
      write_column : in std_logic_vector(3 downto 0);
      ack : out std_logic;
      lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_rs : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);
      b11 : out std_ulogic;
      b12 : out std_ulogic);     --data line
end component;


signal sclk,ledon,newrst,done_sig,debreact,React,rst,ack,dum1,tem  : std_logic;
signal randsig : std_logic_vector(10 downto 0);
signal timeout : std_logic_vector(12 downto 0);
signal reactcount,ledcount,rstcount_sig,write_column : std_logic_vector(3 downto 0);
signal write_data : std_logic_vector(7 downto 0);
signal write_row : std_logic_vector(0 downto 0);
signal finished : std_logic := '0';
signal erase : std_logic := '0';
signal put_char : std_logic := '1';
signal random_sig : unsigned(10 downto 0);
signal count : unsigned(12 downto 0) := to_unsigned(0,13);
constant starthere : unsigned(12 downto 0) := to_unsigned(0,13);
signal ledcrl : std_logic := '0';

begin
	s0 : debouncer port map (React ,CLK, rst, debreact);
	s1 : slowclk port map (CLK, sclk);
	s2 : randgen port map (CLK, React, randsig);
	s4 : timer port map (ledon, rst, sclk, timeout);
	s5 : looper port map(React=>React, Reset=>Reset, sclk=>sclk, newrst=>newrst, done=>done_sig, rstcount=>rstcount_sig);
	s7 : lcd_controller port map (sclk, nrst, erase, put_char,write_data, write_row,write_column,ack, rw, en, rs,data, b11, b12);

	process(sclk,newrst,rst,ack,React)
	variable writes : unsigned(7 downto 0) := to_unsigned(48,8);
	variable state, statenext : integer := -1;
	variable time1,num,react_no, ledcount : integer := 0;
	variable write_var : std_logic_vector(7 downto 0);
    variable column_var : unsigned(3 downto 0) := to_unsigned(0,4);
	begin
		if(rising_edge(sclk)) then
		count <= count+1;

			if (rst = '1') then
			    react_no:=0;
		        ledcount:=0;
				erase <= '1';
				count <= starthere;
		         ledcrl <= '0';
				write_row <= "0";
				write_column <= "0000";
				put_char <= '1';
				state:=-1;
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
				if(rising_edge(React)) then
		        react_no := react_no+1;
                end if;

                if(rising_edge(led)) then
		        ledcount:=ledcount+1;
	            end if;

			if (ack ='1') then
			 if (rst ='0') then
				if state = 3 then-- writes the  data
					if (time1-1000 >= 0) then
						time1 := time1 - 1000;
						num := num + 1;
					else
						write_var := std_logic_vector(writes + num);
						nexts:=2;
						num:=0;
					end if;
				end if;
				if state = 2 then
					if (time1-100>=0) then
						time1:=time1-100;
						num:=num+1;
					else
						write_var := std_logic_vector (writes+num);
						statenext:=1;
						num:=0;
					end if;
				end if;
				
				if state = 1 then
					if (time1-10>=0) then
						time1:=time1-10;
						num:=num+1;
					else						
						write_var := std_logic_vector(writes+num);
						statenext:=0;
						num:=0;
					end if;
				end if;
				
				if state=0 then
						num:=time1;
						write_var := std_logic_vector(writes + num);
						statenext:=-1;
						num:=0;
					else
						write_var := std_logic_vector(writes+num);
						statenext:=0;
						num:=0;
				end if;
				
				if (finished='1') then
					write_var:=std_logic_vector (writes);
				end if;
				if(done_sig='1') then
					put_char <= '0';
				else
					put_char <= '1';
				end if;
				erase<='0';
				
				if state = -1 then
					time1:=to_integer(unsigned(timeout));
					statenext := -2;
					write_var := std_logic_vector(writes + unsigned(reactcount));

				end if;
				
				if state = -2 then
					statenext := 3;
					write_var: =std_logic_vector (writes+unsigned(ledcount));
				end if;
				
write_data <= write_var;		
write_column <= std_logic_vector(to_unsigned(15-d,4));
														
				state:=statenext;			
			end if;
		end if;
		end if;
	end process;
 write_row <= std_logic_vector(to_unsigned(0,1));
 React<=not nreact;
rst<=not nrst;
LED<=ledon and not(finished);

end struct;
