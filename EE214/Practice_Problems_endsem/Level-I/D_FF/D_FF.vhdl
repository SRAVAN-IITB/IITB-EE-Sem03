library IEEE;
use IEEE.std_logic_1164.all;

entity D_FF is
	port(clock, D, DBar, Reset, Preset, Enable : in std_logic; Q, QBar : out std_logic);
end D_FF;

architecture STRUCT of D_FF is
	component JK_FF is
		port(clock, J, K, Reset, Preset, Enable : in std_logic; Q, QBar : out std_logic);
	end component JK_FF;
begin
	JK1 : JK_FF PORT MAP(clock => clock, J => D, K => DBar, Reset => Reset, Preset => Preset, 
								Enable => Enable, Q => Q, QBar => QBar);
end STRUCT;