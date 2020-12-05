-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0); ---Note: for alu testing (17 downto 0) for others (15 downto 0)
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
--- change the component to your main program
component stringRecognizer is
port (reset, clk: in std_logic;
	  X4,X3,X2,X1,X0: in std_logic; 
	  W: out std_logic
 );
 end component;
	
	

begin

-- call your main program
dut: stringRecognizer port map( reset => input_vector(6),  clk => input_vector(5) , X4 => input_vector(4) , X3 => input_vector(3),
X2 => input_vector(2),X1 => input_vector(1), X0 => input_vector(0), W => output_vector(0));
end DutWrap;

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
--a: eightbitadder port map(x => input_vector(15 downto 8), y =>input_vector(7 downto 0) , z=> output_vector);
--b: leftshift	        port map(x => input_vector(15 downto 8), y =>input_vector(7 downto 0) , z=> output_vector); 
--c: rightshift          port map(x => input_vector(15 downto 8), y =>input_vector(7 downto 0) , z=> output_vector); 
--d: eightbitsubtractor  port map(x => input_vector(15 downto 8), y =>input_vector(7 downto 0) , z=> output_vector); --- Note: z = x- y

