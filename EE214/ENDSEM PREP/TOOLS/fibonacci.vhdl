library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity fibonacci is
port (in4, in3, in2, in1, in0: in std_logic; Y0: out std_logic);
end entity fibonacci;

architecture Struct of fibonacci is
signal sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10 : std_logic;

begin
  --component instances
  NOR1 : NOR_2 port map (A => in3, B => in2, Y => sig2);
  XNOR1 : XNOR_2 port map (A => in0, B => in2, Y => sig1);
  NOT1 : INVERTER port map (A=> in1, Y => sig4);  
  AND1 : AND_2 port map (A=> sig1, B => sig4, Y => sig3);
  OR1: OR_2 port map (A=> sig2, B => sig3, Y => sig5);
  NOT2 : INVERTER port map (A=> in4, Y => sig6);  
  AND2 : AND_2 port map (A=> sig5, B => sig6, Y => sig7);
  NOR2 : NOR_2 port map (A => in3, B => in1, Y => sig8);
  AND3 : AND_2 port map (A=> in2, B => in0, Y => sig9);
  AND4 : AND_2 port map (A=> sig9, B => sig8, Y => sig10);
  OR2 : OR_2 port map (A=> sig10, B => sig7, Y => Y0);

  end Struct;