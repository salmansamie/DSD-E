--Engineer: Abdullah Noman
--Description: or_Gate3

entity or_Gate3 is
   port( A, B, C : in std_logic;
            F : out std_logic);
end or_Gate3;

architecture func of or_Gate3 is 
begin
   F <= A or B or C after ns 7;
end func;
