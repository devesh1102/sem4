library ieee;
use ieee.std_logic_1164.all;

entity Controller is
	port(X, CLK, RST: in std_logic; D0, D1, D2, D3, D4:out std_logic_vector(3 downto 0); LED, Loser: out std_logic);
end Controller;

architecture Behave of Controller is
	component EleBitCounter is
		port(CLK, RST: in std_logic; W: out std_logic_vector(10 downto 0));
	end component;
	component FourBitCounter is
		port(CLK, RST: in std_logic; W: out std_logic_vector(3 downto 0));
	end component;
	component Counter is
		port(CLK, RST: in std_logic; D0, D1, D2, D3, D4: out std_logic_vector(3 downto 0));
	end component;
	component Equal is
		port(X, Y: in std_logic_vector(10 downto 0); W: out std_logic);
	end component;
	component DFlipFlopL is
		port (CLK, RST: in std_logic; X: in std_logic_vector(10 downto 0); Y: out std_logic_vector(10 downto 0));
	end component;
	component DFlipFlop1 is
		port (D, CLK, RST: in std_logic; Q: out std_logic);
	end component;
	signal CurTime, TotDelay: std_logic_vector(10 downto 0) := "00000000000";
	signal OnTime, DelayTime: std_logic_vector(10 downto 0);
	signal Eqq, Eq, tEq, LedOut, LedOn, Clock, Reset, halted, Lose, Done, nX: std_logic := '0';
	signal Round: std_logic_vector(3 downto 0) := "0000";
begin
	In1: Counter port map(CLK => Clock, RST => RST, D0 => D0, D1 => D1, D2 => D2, D3 => D3, D4 => D4);
	In2: EleBitCounter port map(CLK => CLK, RST => Reset, W => CurTime);
	In3: EleBitCounter port map(CLK => Clock, RST => RST, W => TotDelay);
	In4: DFlipFlopL port map(X => DelayTime, CLK => tEq, RST => RST, Y => OnTime);
	In5: Equal port map(X => OnTime, Y => CurTime, W => Eqq);
	In6: FourBitCounter port map(CLK => Eq, RST => RST, W => Round);
	In7: DFlipFlop1 port map(CLK => nX, RST => Reset, D => '1', Q => Done);
	DelayTime(9 downto 0) <= TotDelay(9 downto 0) xor "1111111111";
	DelayTime(10) <= '1';
	
	process(Round, Eq, X)
	begin
		if Round = "1001" then
			halted <= '1';
		elsif Round /= "0000" then
			if Eq = '1' then
				LedOut <= '1';
				LedOn <= '1';
			elsif X = '1' then
					LedOut <= '0';
					LedOn <= '0';
			else
				LedOut <= '0';
			end if;
		end if;
	end process;
	
	Clock <= CLK and LedOn and not halted;
	Eq <= Eqq and not halted;
	Reset <= RST or Eq;
	LED <= LedOut;
	Lose <= Lose or (X and LedOut) or (Done and X);
	Loser <= Lose;
	tEq <=  not RST and Eq;
	nX <= not X;
end Behave;


