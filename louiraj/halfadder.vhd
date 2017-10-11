-- Engineer: Loui Rajabi
-- half adder


-- AND gate

library ieee;
use ieee.std_logic_1164.all;

entity andGate2 is port(
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

entity xorGate2 is port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic);
end xorGate2;

architecture func of xorGate2 is
begin
   F <= A xor B;
end func;

-- half adder

library ieee;
use ieee.std_logic_1164.all;

entity halfAdder is port(
   A : in std_logic;
   B : in std_logic;
   sum : out std_logic;
   Cout : out std_logic
    );
end halfAdder;

architecture halfAdder of halfAdder is

   component andGate2 is port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   component xorGate2 is port(
   A  : in std_logic;
   B : in std_logic;
   F : out std_logic
   );
   end component;

begin
  G1 : xorGate2 port map(A, B, sum);
  G2 : andGate2 port map(A, B, Cout);
end halfAdder;
