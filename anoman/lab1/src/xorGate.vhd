entity xorGate is	
   port( A, B : in std_logic;
            F : out std_logic);
end xorGate;

architecture func of xorGate is 
begin
   F <= A xor B;
end func;
