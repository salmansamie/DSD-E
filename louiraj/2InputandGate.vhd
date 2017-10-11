-- Engineer: Loui Rajabi
-- 2input and Gate

entity andgate2 is Port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end andgate2;
architecture function of andgate2 is
begin
Y= A and B after ns 5;
end function;
