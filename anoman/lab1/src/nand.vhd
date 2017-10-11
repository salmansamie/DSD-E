entity nand_gate is
 Port ( a : in std_logic;
 b : in std_logic;
 f : out std_logic);
end nand_gate;

architecture my_architecture of nand_gate is
begin
f <= a nand b after 7 ns;
end my_architecture;
