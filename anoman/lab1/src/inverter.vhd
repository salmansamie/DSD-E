--Engineer: Abdullah Noman
--Description: inverter

entity inverter is
   port( inPort  : in std_logic;
         outPort : out std_logic);
end inverter;

architecture func of inverter is
begin
   outPort <= not inPort after 7 ns;
end func;
