-- Engineer: Loui Rajabi
-- 2input nand Gate

entity nandGate2 is port(
x: in std_logic;
y: in std_logic;
f: out std_logic);
end nandGate2;

architecture function of nandGate2 is
begin
f<= x nand y after ns 5;
end function;
