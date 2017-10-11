-- Engineer: Loui Rajabi
-- 2input or Gate

entity orgate2 is
Port(
A : in std_logic;
B : in std_logic;
Y : out std_logic
);
end orgate2;
architecture function of orgate2 is
begin
Y= A or B ;
end function;
