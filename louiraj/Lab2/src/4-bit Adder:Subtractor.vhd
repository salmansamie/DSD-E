
library ieee;
use ieee.std_logic_1164.all;

entity xorGate is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic);
end xorGate;

architecture func of xorGate is
begin
   F <= A xor B;
end func;

library ieee;
use ieee.std_logic_1164.all;

entity Full_Adder is
   port(
   X : in std_logic;
   Y : in std_logic;
   Cin : in std_logic;
   sum : out std_logic;
   Cout : out std_logic);
end Full_Adder;

architecture func of Full_Adder is
begin
   sum <= (X xor Y) xor Cin;
   Cout <= (X and (Y or Cin)) or (Cin and Y);
end func;

library ieee;
use ieee.std_logic_1164.all;
entity adderSubtractor is
   port( mode             : in std_logic;
          A3, A2, A1, A0  : in std_logic;
          B3, B2, B1, B0  : in std_logic;
          S3, S2, S1, S0  : out std_logic;
                  Cout, V : out std_logic);
end adderSubtractor;
architecture struct of adderSubtractor is

   component xorGate is             --xor
       port(
       A : in std_logic;
       B : in std_logic;
       F : out std_logic);
   end component;

   component Full_Adder is	         --full adder
      port(
      X : in std_logic;
      Y : in std_logic;
      Cin : in std_logic;
      sum : out std_logic;
      Cout : out std_logic);
   end component;

   signal C1, C2, C3, C4: std_logic;
   signal xor0, xor1, xor2, xor3 : std_logic;

begin
   GX0: xorGate port map(mode, B0, xor0);
   GX1: xorGate port map(mode, B1, xor1);
   GX2: xorGate port map(mode, B2, xor2);
   GX3: xorGate port map(mode, B3, xor3);

   FA0: Full_Adder port map(A0, xor0, mode,  S0, C1);
   FA1: Full_Adder port map(A1, xor1, C1,  S1, C2);
   FA2: Full_Adder port map(A2, xor2, C2,  S2, C3);
   FA3: Full_Adder port map(A3, xor3, C3,  S3, C4);

   Vout: xorGate port map(C3, C4, V);
   Cout <= C4;
end struct;
