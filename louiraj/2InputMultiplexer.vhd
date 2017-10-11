-- Engineer: Loui Rajabi
-- 2 input Multiplexer 


-- AND gate

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

--	OR gate

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

-- NOT gate

entity notGate2 is
   port(
   inPort : in std_logic;
   outPort : out std_logic
   );
end notGate2;

architecture function of notGate2 is
begin
  outPort <= not inPort;
end function;


--	2 input Multiplexer

entity inputMux2 is
   port(
   D0 : in std_logic;
   D1 : in std_logic;
   S : in std_logic;
   F : out std_logic);
end inputMux2;
--
architecture Function of inputMux2 is

   component andGate is
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic)
      ;
   end component;

   component orGate is
      port(
      A : in std_logic;
      B : in std_logic;
      F : out std_logic
      );
   end component;

   component notGate is
      port(
      inPort  : in std_logic;
      outPort : out std_logic)
      ;
   end component;

   signal andOut1, andOut2, invOut: std_logic;

begin

   G1: notGate  port map(S, invOut);
   G2: andGate  port map(invOut, D0, andOut1);
   G3: andGate  port map(S, D1, andOut2);
   G4: orGate   port map(andOut1, andOut2, F); -- F
end Function;
