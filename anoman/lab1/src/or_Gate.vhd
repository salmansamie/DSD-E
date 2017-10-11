--Engineer: Abdullah Noman
--Description: or_Gate

entity or_Gate is
   port( A, B : in std_logic;
            F : out std_logic);
end or_Gate;

architecture func of or_Gate is 
begin
   F <= A or B after 7 ns;
end func;
