entity norGate4 is
   port( A, B, C, D : in std_logic;
            F : out std_logic);
end norGate4;

architecture func of norGate4 is 
begin
   F <= A nor B nor C nor D;
end func;
