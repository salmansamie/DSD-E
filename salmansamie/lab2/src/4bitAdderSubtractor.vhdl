--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk

library ieee;
use ieee.std_logic_1164.all;

---------------------
--First, the XOR gate
---------------------
entity xorGate is	
   port( A, B : in std_logic;
            F : out std_logic);
end xorGate;

-- Architecture of the XOR gate
architecture func of xorGate is 
begin
   F <= A xor B; 
end func;


--Now we build the Full Adder
-------------
--Full Adder
-------------

library ieee;                   --this second import is necessary
use ieee.std_logic_1164.all;    --this second import is necessary

--Full Adder Entity
entity Full_Adder is
        port( X, Y, Cin : in std_logic;
                sum, Cout : out std_logic);
end Full_Adder;

--Dataflow architecture.
architecture func of Full_Adder is
begin
    sum <= (X xor Y) xor Cin;
    Cout <= (X and (Y or Cin)) or (Cin and Y);
end func;


--Now we build the four bit Adder Subtractor
----------------------
--For Adder Subtractor
----------------------
library ieee;                   --this second import is necessary
use ieee.std_logic_1164.all;    --this second import is necessary

--AdderSubtractor Entity
entity adderSubtractor is
        port( mode              : in std_logic;
                A3, A2, A1, A0  : in std_logic;
                B3, B2, B1, B0  : in std_logic;
                S3, S2, S1, S0  : out std_logic;
                       Cout, V  : out std_logic);
end adderSubtractor;

--Architecture of Adder Subtractor
architecture struct of adderSubtractor is
        component xorGate is              --Using the previously created XOR component
            port( A, B : in std_logic;
                    F : out std_logic);
        end component;

        component Full_Adder is           --Using the previously created Full Adder component
            port( X, Y, Cin : in std_logic;
                sum, Cout : out std_logic);
        end component;

--Interconnection
signal C1, C2, C3, C4: std_logic;                  -- intermediate carries
signal xor0, xor1, xor2, xor3 : std_logic;         -- xor outputs

begin
        GX0: xorGate port map(mode, B0, xor0); 
        GX1: xorGate port map(mode, B1, xor1); 
        GX2: xorGate port map(mode, B2, xor2); 
        GX3: xorGate port map(mode, B3, xor3);

        FA0: Full_Adder port map(A0, xor0, mode,  S0, C1);  -- S0
        FA1: Full_Adder port map(A1, xor1, C1,  S1, C2);    -- S1
        FA2: Full_Adder port map(A2, xor2, C2,  S2, C3);    -- S2
        FA3: Full_Adder port map(A3, xor3, C3,  S3, C4);    -- S3

        Vout: xorGate port map(C3, C4, V);                  -- V
        Cout <= C4;                                         -- Cout
end struct;