library  std ;
use  std.standard.all; library ieee;
use ieee.std_logic_1164.all;

entity onebit_fulladder is
   port (
	  a,b,cin :in std_logic;
	  s,co : out std_logic;
   );
end entity onebit_fulladder;
architecture behave of onebit_fulladder is 
begin
 s <= a XOR b XOR cin;
 co<= ((a AND b) OR (a AND cin)) OR  (b AND c);
 end architecture behave;
 
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


 entity eightbit is
   port ( 
	 x,y: in std_logic_vector(7 downto 0);
	 cin: in std_logic;
	 ans: out std_logic_vector(7 downto 0);
	 cout: out std_logic
   );
end entity eightbit;
architecture behave of eightbit is
     signal w : std_logic_vector(7 downto 0)
	  component onebit_fulladder is 
	  port(
	  a : in std_logic;
	  b : in std_logic;
	  cin: in std_logic;
	  s : out std_logic;
	  c0 : out std_logic;
	  );
	  end entity onebit_fulladder;
begin
	x1: eightbit port map (a=>x(0), b=>y(0), cin=>'0' , ans=>sum(0), co=>w(0));
	x2: eightbit port map (a=>x(1), b=>y(1), cin=>w(0) , ans=>sum(1), co=>w(1));
	x3: eightbit port map (a=>x(2), b=>y(2), cin=>w(1) , ans=>sum(2), co=>w(2));
	x4: eightbit port map (a=>x(3), b=>y(3), cin=>w(2) , ans=>sum(3), co=>w(3));
	x5: eightbit port map (a=>x(4), b=>y(4), cin=>w(3) , ans=>sum(4), co=>w(4));
	x6: eightbit port map (a=>x(5), b=>y(5), cin=>w(4) , ans=>sum(5), co=>w(5));
	x7: eightbit port map (a=>x(6), b=>y(6), cin=>w(5) , ans=>sum(6), co=>w(6));
	x8: eightbit port map (a=>x(7), b=>y(7), cin=>w(6) , ans=>sum(7), co=>cout);
end architecture behave;

entity eightBitSubtractor is
	port (
		x,y: in std_logic_vector (7 downto 0);
		sum: out std_logic_vector (7 downto 0);
		cout: out std_logic
	);
end entity eightBitSubtractor;
architecture behave of eightBitSubtractor is
	component eightbit is
		port (
		x,y: in std_logic_vector (7 downto 0);
		cin: in std_logic;
		sum: out std_logic_vector (7 downto 0);
		cout: out std_logic
	);
	end component eightBit;
	component inverter is
		port (
		ip: in std_logic_vector (7 downto 0);
		op: out std_logic_vector (7 downto 0)
	);
	end component inverter;
	signal w: std_logic_vector (7 downto 0);
begin
	inv: inverter port map ( ip=>x, op=>w );
	add1: eightBit port map ( x=>w, y=>y, cin=>'1', sum=>sum, cout=>cout);
end architecture behave;