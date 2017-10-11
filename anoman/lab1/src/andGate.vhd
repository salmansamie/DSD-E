entity andGate is					
   port( A, B : in std_logic;
            F : out std_logic);
end andGate;


architecture func of andGate is 
begin
  F <= A and B;		
end func;
