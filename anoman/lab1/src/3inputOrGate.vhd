--Engineer: Abdullah Noman
--Description: 3_input_or_gate

entity orGate3 is
   port( A, B, C : in std_logic;
            F : out std_logic);
end orGate3;

architecture func of orGate3 is 
begin
   F <= A or B or C after ns 7;
end func;
