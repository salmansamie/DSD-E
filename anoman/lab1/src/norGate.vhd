entity norGate is
   port( A, B : in std_logic;
            F : out std_logic);
end norGate;

architecture func of norGate is 
begin
   F <= A nor B;
end func;
