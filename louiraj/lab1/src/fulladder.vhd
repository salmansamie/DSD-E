-- Engineer: Loui Rajabi
-- full adder

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

-- XOR gate

library ieee;
use ieee.std_logic_1164.all;

entity xorGate2 is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic
    );
end xorGate2;

architecture func of xorGate2 is
begin
   F <= A xor B;
end func;

library ieee;
use ieee.std_logic_1164.all;

entity halfAdder is port(
   A : in std_logic;
   B : in std_logic;
   sum  : out std_logic;
   Cout : out std_logic
   );
end halfAdder;

architecture halfAdder of halfAdder is

   component andGate2 is -- AND Gate
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   component xorGate2 is -- XOR Gate
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

begin
   G1 : xorGate2 port map(A, B, sum);
   G2 : andGate2 port map(A, B, Cout);
end halfAdder;

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


-- Full Adder
library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is
   port(
   A : in std_logic;
   B : in std_logic;
   Cin : in std_logic;
   sum  : out std_logic;
   Cout : out std_logic
    );
end fullAdder;

architecture fullAdder of fullAdder is

   component halfAdder is
      port(
      A : in std_logic;
      B : in std_logic;
      sum : out std_logic;
      Cout : out std_logic
      );
   end component;

   component orGate2 is
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   signal halfTohalf, halfToOr1, halfToOr2: std_logic;

begin
   G1: halfAdder port map(A, B, halfTohalf, halfToOr1);
   G2: halfAdder port map(halfTohalf, Cin, sum, halfToOr2);
   G3: orGate2 port map(halfToOr1, halfToOr2, Cout);
end fullAdder;
