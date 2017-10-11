-- Engineer: Loui Rajabi
-- half adder

library ieee;
use ieee.std_logic_1164.all;

entity halfAdder_tb is
end halfAdder_tb;

architecture tb of halfAdder_tb is

   component halfAdder is
     port(
     A : in std_logic;
     B : in std_logic;
     sum : out std_logic;
     Cout : out std_logic
     );
   end component;

   signal A, B, sum, Cout: std_logic;

begin
   mapping: halfAdder port map(A, B, sum, Cout);
   process
   variable errCnt : integer := 0;
   begin

   --test 1
   A <= '0';
     B <= '1';
     wait for 10 ns;
     assert(sum = '1') report "sum error 1" severity error;
     assert(Cout = '0') report "Cout error 1" severity error;
     if(sum /= '1' or Cout /= '0') then
        errCnt := errCnt + 1;
     end if;

   --test 2
   A <= '1';
     B <= '1';
     wait for 10 ns;
     assert(sum = '0') report "sum error 2" severity error;
     assert(Cout = '1') report "Cout error 2" severity error;
     if(sum /= '0' or Cout /= '1') then
        errCnt := errCnt + 1;
     end if;

   --test 3
   A <= '1';
     B <= '0';
     wait for 10 ns;
     assert(sum = '1') report "sum error 3" severity error;
     assert(Cout = '0') report "Cout error 3" severity error;
     if(sum /= '1' or Cout /= '0') then
         errCnt := errCnt + 1;
     end if;

-- results ...
     if(errCnt = 0) then
       assert false report "Success!" severity note;
     else
        assert false report "Faillure!" severity note;
     end if;

   end process;
end tb;
configuration cfg_tb of halfAdder_tb is
   for tb
   end for;
end cfg_tb;
