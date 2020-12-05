library ieee;
use ieee.std_logic_1164.all;

entity Reaction is
	port(X, CLK, RST: in std_logic; LED: out std_logic; lcd_rw, lcd_rs, lcd_en, bb1, bb2: out std_logic; lcd1 : out std_logic_vector(7 downto 0));
end entity;

architecture Behave of Reaction is
	
	component lcd_controller is
		port (clk    : in std_logic;                          
				rst    : in std_logic;                          -- reset
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
				b11 : out std_logic;
				b12 : out std_logic);     --data line
	end component;
	
	component Debouncer is
		port (X, RST, CLK: in std_logic; Y: out std_logic);
	end component;
	component divider1 is
		port (X, RST: in std_logic; Y: out std_logic);
	end component;
	component divider2 is
		port (X, RST: in std_logic; Y: out std_logic);
	end component;
	component divider3 is
		port (X, RST: in std_logic; Y: out std_logic);
	end component;
	component Controller is
		port(X, CLK, RST: in std_logic; D0, D1, D2, D3, D4:out std_logic_vector(3 downto 0); LED, Loser: out std_logic);
	end component;
	signal lrw, len, lrs, lb1, lb2 : std_logic := '0';
	signal outp : std_logic_vector(7 downto 0) := "00000000";
	signal rw, en, rs,ack, b1, b2: std_logic_vector(4 downto 0) := "00000";
	signal out1,out2,out3,out4,out0: std_logic_vector(7 downto 0);
	signal CLK1, CLK2, CLK3, Loser, refX: std_logic := '0';
	signal D0,D1,D2,D3,D4: std_logic_vector(3 downto 0);
	signal F0,F1,F2,F3,F4: std_logic_vector(7 downto 0);
	signal G0,G1,G2,G3,G4: std_logic_vector(7 downto 0);
begin
	In1: divider1 port map(X => CLK, RST => RST, Y => CLK1);
	In2: divider2 port map(X => CLK, RST => RST, Y => CLK2);
	In3: Debouncer port map(X => X, RST => RST, CLK => CLK1, Y => refX);
	In4: Controller port map(X => refX, CLK => CLK2, RST => RST, D0 => D0, D1 => D1, D2 => D2, D3 => D3, D4 => D4, LED => LED, Loser => Loser);
	In5: divider3 port map(X => CLK, RST => RST, Y => CLK3);
	
	F0(7 downto 4) <= "0011";
	F1(7 downto 4) <= "0011";
	F2(7 downto 4) <= "0011";
	F3(7 downto 4) <= "0011";
	F4(7 downto 4) <= "0011";
	
	process(D0, D1, D2, D3, D4, Loser)
	begin
		if Loser = '1' then
			F0(3 downto 0) <= "0000";
			F1(3 downto 0) <= "0000";
			F2(3 downto 0) <= "0000";
			F3(3 downto 0) <= "0000";
			F4(3 downto 0) <= "0000";
		else
			F0(3 downto 0) <= D0;
			F1(3 downto 0) <= D1;
			F2(3 downto 0) <= D2;
			F3(3 downto 0) <= D3;
			F4(3 downto 0) <= D4;
		end if;
	end process;
	
	Lc0: lcd_controller port map(clk => CLK3, rst => RST, erase => '0', put_char => '1', write_data => F0, write_row => "0", 
	write_column => "0000", ack => ack(0), lcd_rw => rw(0), lcd_en => en(0), lcd_rs  => rs(0), lcd1 => out0, b11 => b1(0), b12 => b2(0));
	
	Lc1: lcd_controller port map(clk => CLK3, rst => RST, erase => '0', put_char => '1', write_data => F1, write_row => "0", 
	write_column => "0001", ack => ack(1), lcd_rw => rw(1), lcd_en => en(1), lcd_rs  => rs(1), lcd1 => out1, b11 => b1(1), b12 => b2(1));
	
	Lc2: lcd_controller port map(clk => CLK3, rst => RST, erase => '0', put_char => '1', write_data => F2, write_row => "0", 
	write_column => "0010", ack => ack(2), lcd_rw => rw(2), lcd_en => en(2), lcd_rs  => rs(2), lcd1 => out2, b11 => b1(2), b12 => b2(2));
	
	Lc3: lcd_controller port map(clk => CLK3, rst => RST, erase => '0', put_char => '1', write_data => F3, write_row => "0", 
	write_column => "0011", ack => ack(3), lcd_rw => rw(3), lcd_en => en(3), lcd_rs  => rs(3), lcd1 => out3, b11 => b1(3), b12 => b2(3));
	
	Lc4: lcd_controller port map(clk => CLK3, rst => RST, erase => '0', put_char => '1', write_data => F4, write_row => "0", 
	write_column => "0100", ack => ack(4), lcd_rw => rw(4), lcd_en => en(4), lcd_rs  => rs(4), lcd1 => out4, b11 => b1(4), b12 => b2(4));
	
	lcd_rw <= lrw;
	lcd_rs <= lrs;
	lcd_en <= len;
	bb1 <= lb1;
	bb2 <= lb2;
	lcd1 <= outp;
	
	process(ack, rw, rs, en, b1, b2, out0, out1, out2, out3, out4)
		variable cnt : integer := 0;
	begin
		if cnt = 0 then
			if ack(0) = '1' then
				lrw <= rw(1);
				lrs <= rs(1);
				len <= en(1);
				lb1 <= b1(1);
				lb2 <= b2(1);
				outp <= out1;
				cnt := 1;
			end if;
		elsif cnt = 1 then
			if ack(1) = '1' then
				lrw <= rw(2);
				lrs <= rs(2);
				len <= en(2);
				lb1 <= b1(2);
				lb2 <= b2(2);
				outp <= out2;
				cnt := 2;
			end if;
		elsif cnt = 2 then
			if ack(2) = '1' then
				lrw <= rw(3);
				lrs <= rs(3);
				len <= en(3);
				lb1 <= b1(3);
				lb2 <= b2(3);
				outp <= out3;
				cnt := 3;
			end if;
		elsif cnt = 3 then
			if ack(3) = '1' then
				lrw <= rw(4);
				lrs <= rs(4);
				len <= en(4);
				lb1 <= b1(4);
				lb2 <= b2(4);
				outp <= out4;
				cnt := 4;
			end if;
		else
			if ack(4) = '1' then	
				lrw <= rw(0);
				lrs <= rs(0);
				len <= en(0);
				lb1 <= b1(0);
				lb2 <= b2(0);
				outp <= out0;
				cnt := 0;
			end if;
		end if;
	end process;
	
end Behave;