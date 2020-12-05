library  std ;
use  std.standard.all; library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port (
		a,b,cin :in std_logic;
		s : out std_logic;
		co: out std_logic
	);
end entity fulladder;
architecture behave of fulladder is
begin
	s <= a XOR b XOR cin;
	-- co = a.b + (a+b).cin
	co <= (a AND b) OR ((a OR b) AND cin);
end architecture behave;

library  std ;
use  std.standard.all; library ieee;
use ieee.std_logic_1164.all;

entity inverter is
	port (
		ip: in std_logic_vector (7 downto 0);
		op: out std_logic_vector (7 downto 0)
	);
end entity inverter;
architecture behave of inverter is
begin
	op(0) <= NOT ip(0);
	op(1) <= NOT ip(1);
	op(2) <= NOT ip(2);
	op(3) <= NOT ip(3);
	op(4) <= NOT ip(4);
	op(5) <= NOT ip(5);
	op(6) <= NOT ip(6);
	op(7) <= NOT ip(7);
end architecture behave;

library  std ;
use  std.standard.all; library ieee;
use ieee.std_logic_1164.all;
entity eightBitAdder is
	port (
		x,y: in std_logic_vector (7 downto 0);
		cin: in std_logic;
		sum: out std_logic_vector (7 downto 0);
		cout: out std_logic
	);
end entity eightBitAdder;
architecture behave of eightbitadder is
	signal w : std_logic_vector (6 downto 0)
	component fulladder is
		port (
		a,b,cin :in std_logic;
		s : out std_logic;
		co: out std_logic
		);
	end component fulladder;
begin
	x1: fulladder port map (a=>x(0), b=>y(0), cin=>cin , s=>sum(0), co=>w(0));
	x2: fulladder port map (a=>x(1), b=>y(1), cin=>w(0) , s=>sum(1), co=>w(1));
	x3: fulladder port map (a=>x(2), b=>y(2), cin=>w(1) , s=>sum(2), co=>w(2));
	x4: fulladder port map (a=>x(3), b=>y(3), cin=>w(2) , s=>sum(3), co=>w(3));
	x5: fulladder port map (a=>x(4), b=>y(4), cin=>w(3) , s=>sum(4), co=>w(4));
	x6: fulladder port map (a=>x(5), b=>y(5), cin=>w(4) , s=>sum(5), co=>w(5));
	x7: fulladder port map (a=>x(6), b=>y(6), cin=>w(5) , s=>sum(6), co=>w(6));
	x8: fulladder port map (a=>x(7), b=>y(7), cin=>w(6) , s=>sum(7), co=>cout);
end behave;

library  std ;
use  std.standard.all; library ieee;
use ieee.std_logic_1164.all;
entity eightBitSubtractor is
	port (
		x,y: in std_logic_vector (7 downto 0);
		sum: out std_logic_vector (7 downto 0);
		cout: out std_logic
	);
end entity eightBitSubtractor;
architecture behave of eightBitSubtractor is

	component eightBitAdder is
		port (
		x,y: in std_logic_vector (7 downto 0);
		cin: in std_logic;
		sum: out std_logic_vector (7 downto 0);
		cout: out std_logic
	);
	end component eightBitAdder;

	component inverter is
		port (
		ip: in std_logic_vector (7 downto 0);
		op: out std_logic_vector (7 downto 0)
	);
	end component inverter;
	signal w: std_logic_vector (7 downto 0);
begin
	inv: inverter port map ( ip=>x, op=>w );
	add1: eightBitAdder port map ( x=>w, y=>y, cin=>'1', sum=>sum, cout=>cout);
end architecture behave;