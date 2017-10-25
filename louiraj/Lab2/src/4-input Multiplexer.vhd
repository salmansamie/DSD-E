library ieee;
use ieee.std_logic_1164.all;

entity andGate is
   port(
   A : in std_logic;
   B : in std_logic;
   C : in std_logic;
   F : out std_logic);
end andGate;

architecture func of andGate is
begin
   F <= A and B and C;
end func;
                        -- or
library ieee;
use ieee.std_logic_1164.all;

entity orGate is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic);
end orGate;

architecture func of orGate is
begin
   F <= A or B;
end func;
                        -- not gate
library ieee;
use ieee.std_logic_1164.all;

entity notGate is
   port( inPort : in std_logic;
        outPort : out std_logic);
end notGate;
--
architecture func of notGate is
begin
   outPort <= not inPort;
end func;

library ieee;
use ieee.std_logic_1164.all;

entity Mux_4_to_1 is
   port(
   D0 : in std_logic;
   D1 : in std_logic;
   D2 : in std_logic;
   D3: in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        F : out std_logic);

end Mux_4_to_1;
--
architecture Func of Mux_4_to_1 is

   component andGate is
      port(
      A : in std_logic;
      B : in std_logic;
      C : in std_logic;
      F : out std_logic);
   end component;

   component orGate is
      port( A, B : in std_logic;
               F : out std_logic);
   end component;

   component notGate is
      port( inPort : in std_logic;
           outPort : out std_logic);
   end component;

   signal invOut0, invOut1  : std_logic;
   signal andOut1, andOut2, andOut3, andOut4 : std_logic;
   signal orTop, orBot, orOut  : std_logic;

begin

   GI1: notGate  port map(S0, invOut0);
   GI2: notGate  port map(S1, invOut1);

   GA1: andGate  port map(invOut1, invOut0, D0, andOut1);
   GA2: andGate  port map(invOut1, S0, D1, andOut2);
   GA3: andGate  port map(S1, invOut0, D2, andOut3);
   GA4: andGate  port map(S1, S0, D3, andOut4);

   GO1: orGate   port map(andOut1, andOut2, orTop);
   GO2: orGate   port map(andOut3, andOut4, orBot);
   GO3: orGate   port map(orTop, orBot, F);

end Func;
