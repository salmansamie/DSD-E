-- Engineer: Loui Rajabi
-- 2 input Multiplexer


                        -- AND gate
library ieee;
use ieee.std_logic_1164.all;

entity andGate2 is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic
   );
end andGate2;

architecture func of andGate2 is
begin
   F <= A and B;
end func;
                        -- OR gate

library ieee;
use ieee.std_logic_1164.all;

entity orGate2 is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic
   );
end orGate2;

architecture func of orGate2 is
begin
   F <= A or B;
end func;
                        --	NOT gate
library ieee;
use ieee.std_logic_1164.all;

entity notGate2 is
   port(
   inPort : in std_logic;
   outPort : out std_logic);
end notGate2;
--
architecture func of notGate2 is
begin
  outPort <= not inPort;
end func;


--	2 input Multiplexer
library ieee;
use ieee.std_logic_1164.all;

entity inputMux2 is
   port(
   D0 : in std_logic;
   D1 : in std_logic;
    S : in std_logic;
    F : out std_logic
    );
end inputMux2;
--
architecture Func of inputMux2 is

   component andGate2 is
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   component orGate2 is
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   component notGate2 is
      port(
      inPort  : in std_logic;
      outPort : out std_logic
       );
   end component;

   signal andOut1, andOut2, invOut: std_logic;

begin

   G1: notGate2  port map(S, invOut);
   G2: andGate2  port map(invOut, D0, andOut1);
   G3: andGate2  port map(S, D1, andOut2);
   G4: orGate2   port map(andOut1, andOut2, F);
end Func;
