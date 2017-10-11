--Engineer: Abdullah Noman
--Description: half_Adder


entity half_Adder is
   port( A, B : in std_logic;
    sum, Cout : out std_logic);
end half_Adder;

architecture half_Adder of half_Adder is

   component and_Gate is -- import AND Gate
      port( A, B : in std_logic;
               F : out std_logic);
   end component;

   component xor_Gate is -- import XOR Gate
     port( A, B : in std_logic;
              F : out std_logic);
   end component;

begin
  G1 : xor_Gate port map(A, B, sum);
  G2 : and_Gate port map(A, B, Cout);
end half_Adder;
