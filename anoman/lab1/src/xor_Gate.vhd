--Engineer: Abdullah Noman
--Description: xor_Gate

entity xor_Gate is	
   port( A, B : in std_logic;
            F : out std_logic);
end xor_Gate;

architecture func of xor_Gate is
begin
   F <= A xor B after 7 ns;
end func;
