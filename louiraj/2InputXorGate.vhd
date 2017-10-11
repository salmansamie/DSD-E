-- Engineer: Loui Rajabi
-- 2input xor Gate

entity xorgate2 is
Port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end xorgate2;
architecture function of xorgate2 is
begin
Y= A xor B after ns 5;
end function;
