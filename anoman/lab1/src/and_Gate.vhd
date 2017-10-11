--Engineer: Abdullah Noman
--Description: and_Gate

entity and_Gate is					
   port( A, B : in std_logic;
            F : out std_logic);
end and_Gate;


architecture func of and_Gate is 
begin
  F <= A and B after 7 ns;		
end func;
