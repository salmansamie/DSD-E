-- Engineer: Loui Rajabi
-- 2input nor Gate

entity norgate2 is
Port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end norgate2;
architecture func of norgate2 is
begin
Y= A nor B after ns 5;
end func;
