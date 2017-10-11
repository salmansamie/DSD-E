--Engineer: Abdullah Noman
--Description: nor_Gate

entity nor_Gate is
   port( A, B : in std_logic;
            F : out std_logic);
end nor_Gate;

architecture func of nor_Gate is 
begin
   F <= A nor B after 7 ns;
end func;
