--Engineer: Abdullah Noman
--Description: nand_Gate

entity nand_Gate is
 Port ( a : in std_logic;
 b : in std_logic;
 f : out std_logic);
end nand_gate;

architecture my_architecture of nand_Gate is
begin
f <= a nand b after 7 ns;
end my_architecture;
