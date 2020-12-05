library  std ;
use  std.standard.all; library ieee;
use ieee.std_logic_1164.all;
entity shifter is
     port(
      x : in std_logic_vector(7 downto 0);
      z : out std_logic_vector(7 downto 0);
    )

end entity;
architecture behave of shifter is
Begin
  z(7) <= '0';
	z(6) <= x(7);
	z(5) <= x(6);
	z(4) <= x(5);
	z(3) <= x(4);
	z(2) <= x(3);
	z(1) <= x(2);
	z(0) <= x(1);
end architecture behave;

entity set_0 is
     port(
      x : in std_logic_vector(7 downto 0);
      z : out std_logic_vector(7 downto 0);
    )
end entity;
architecture behave of set_0 is
Begin
  z(7) <=  '0';
	z(6) <=  '0';
	z(5) <=  '0';
	z(4) <=  '0';
	z(3) <=  '0';
	z(2) <=  '0';
	z(1) <=  '0';
	z(0) <=  '0';
end architecture behave;

entity shift_left is
    port(
      x,y : in std_logic_vector(7 downto 0);
      z : out std_logic_vector(7 downto 0);
    )
end entity;
architecture behave of  shift_left is
    component shifter is
    port(
      x : in std_logic_vector(7 downto 0);
      z : out std_logic_vector(7 downto 0);
    );
    end entity shift_left;
    component set_0 is
      port(
      x : in std_logic_vector(7 downto 0);
      z : out std_logic_vector(7 downto 0);
    );
    end entity set_0;
 begin
 shift_0: shifter port map ( ip=>x, op=>z );  when y(0)= '1' else;
 shift_1: shifter port map ( ip=>x, op=>z );  when y(1)= '1' else;
 shift_2: shifter port map ( ip=>x, op=>z );  when y(1)= '1' else;
 shift_3: shifter port map ( ip=>x, op=>z );  when y(2)= '1' else;
 shift_4: shifter port map ( ip=>x, op=>z );  when y(2)= '1' else;
 shift_5: shifter port map ( ip=>x, op=>z );  when y(2)= '1' else;
 shift_6: shifter port map ( ip=>x, op=>z );  when y(2)= '1' else;
 set_3: set_0 port map(  ip=>x, op=>z );  when y(3)= '1' else;
 set_4: set_0 port map(  ip=>x, op=>z );  when y(4)= '1' else;
 set_5: set_0 port map(  ip=>x, op=>z );  when y(5)= '1' else;
 set_6: set_0 port map(  ip=>x, op=>z );  when y(6)= '1' else;
 set_7: set_0 port map(  ip=>x, op=>z );  when y(7)= '1' else;
end architecture behave;

