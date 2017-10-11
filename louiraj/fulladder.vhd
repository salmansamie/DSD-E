-- Engineer: Loui Rajabi
-- full adder

--  AND gate

entity andGate2 is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic
   );
end andGate2;

architecture function of andGate2 is
begin
   F <= A and B;
end function;

-- XOR gate

entity xorGate2 is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic
    );
end xorGate2;

architecture function of xorGate2 is
begin
   F <= A xor B;
end function;

--  half adder

entity halfAdder is
   port(
   A : in std_logic;
   B : in std_logic;
   sum : out std_logic;
   Cout : out std_logic
   );
end halfAdder;

architecture halfAdder of halfAdder is

   component andGate2 is
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   component xorGate2 is
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

begin
   G1 : xorGate port map(A, B, sum);
   G2 : andGate port map(A, B, Cout);
end halfAdder;


-- OR gate

entity orGate2 is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic
   );
end orGate2;

architecture function of orGate2 is
begin
   F <= A or B;
end function;

--  Full Adder

entity fullAdder is
   port(
   A : in std_logic;
   B : in std_logic;
   Cin : in std_logic;
   sum : out std_logic;
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
      A  : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   signal halfTohalf, halfToOr1, halfToOr2: std_logic;

begin
   G1: halfAdder port map(A, B, halfTohalf, halfToOr1);
   G2: halfAdder port map(halfTohalf, Cin, sum, halfToOr2);
   G3: orGate port map(halfToOr1, halfToOr2, Cout);
end fullAdder;
