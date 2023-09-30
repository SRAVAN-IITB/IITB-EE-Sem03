library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XOR_gate is
port (A, B: in std_logic; Y: out std_logic);
end entity XOR_gate;

architecture Struct of XOR_gate is
signal mid1, mid2, mid3, mid4 : std_logic;
begin
  --component instances
  NOR1 : NOR_2 port map (A => A, B => B, Y => mid1);
  NOR2 : NOR_2 port map (A => A, B => A, Y => mid2);
  NOR3 : NOR_2 port map (A => B, B => B, Y => mid3);
  NOR4 : NOR_2 port map (A => mid2, B => mid3, Y => mid4);
  -- FINAL GATE
  NOR5 : NOR_2 port map (A=>mid1, B=>mid4, Y=>Y);
  end Struct;