-- Engineer: Loui Rajabi
-- 3input or Gate

entity orgate3 is
Port(
A : in std_logic;
B : in std_logic;
C : in std_logic;
Y : out std_logic
);
end orgate3

architecture func of orgate3 is
begin
Y <= (A or B) or C after ns 5;
end func;
