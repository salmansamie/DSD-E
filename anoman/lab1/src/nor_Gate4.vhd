--Engineer: Abdullah Noman
--Description: nor_Gate4

entity nor_Gate4 is
   port( A, B, C, D : in std_logic;
            F : out std_logic);
end nor_Gate4;

architecture func of nor_Gate4 is 
begin
   F <= A nor B nor C nor D after ns 7;
end func;
