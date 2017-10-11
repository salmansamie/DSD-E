-- Engineer: Loui Rajabi
-- half adder

-- and Gate
entity andGate2 is
   port(
   A : in std_logic ;
   B : in std_logic;
   F : out std_logic
   );
end andGate2;

architecture func of andGate2 is
begin
   F <= A and B;
end func;

--	XOR gate

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

-- half adder

entity halfAdder is
   port(
   A : in std_logic;
   B : in std_logic;
   sum : out std_logic;
   Cout : out std_logic
    );
end halfAdder;

architecture halfAdder of halfAdder is

   component andGate is -- and Gate
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   component xorGate is -- XOR Gate
     port(
     A : in std_logic;
     B : in std_logic;
     F : out std_logic);
   end component;

begin
  G1 : xorGate port map(A, B, sum);
  G2 : andGate port map(A, B, Cout);
end halfAdder;
