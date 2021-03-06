-- Engineer: Loui Rajabi
-- full adder

library ieee;
use ieee.std_logic_1164.all;

entity fullAdder_tb is
end fullAdder_tb;

architecture tb of fullAdder_tb is

   component fullAdder is
      port(
      A : in std_logic;
      B : in std_logic;
      Cin : in std_logic;
      sum : out std_logic;
      Cout : out std_logic
      );
   end component;

   signal A, B, Cin, sum, Cout : std_logic;

begin
   mapping: fullAdder port map(A, B, Cin, sum, Cout);

   process
   begin
      Cin <= '0'; wait for 5 ns;
      Cin <= '1'; wait for 5 ns;
   end process;

   process
   variable errCnt : integer := 0;
   begin

   --test 1
   A <= '0';
      B <= '1';
      wait for 10 ns;
      assert(sum = '0') report "sum error 1" severity error;
      assert(Cout = '1') report "Cout error 1" severity error;
      if(sum /= '1' or Cout /= '0') then
         errCnt := errCnt + 1;
      end if;

   --test 2
   A <= '1';
     B <= '1';
     wait for 10 ns;
     assert(sum = '1') report "sum error 2" severity error;
     assert(Cout = '1') report "Cout error 2" severity error;
     if(sum /= '0' or Cout /= '1') then
        errCnt := errCnt + 1;
     end if;

   --test 3
   A <= '1';
     B <= '0';
     wait for 10 ns;
     assert(sum = '0') report "sum error 3" severity error;
     assert(Cout = '1') report "Cout error 3" severity error;
     if(sum /= '1' or Cout /= '0') then
        errCnt := errCnt + 1;
     end if;

        --test 4
   A <= '0';
     B <= '0';
     wait for 10 ns;
     assert(sum = '0') report "sum error 4" severity error;
     assert(Cout = '0') report "Cout error 4" severity error;
     if(sum /= '1' or Cout /= '0') then
        errCnt := errCnt + 1;
     end if;

-- results
	if(errCnt = 0) then
        assert false report "Success!" severity note;
     else
        assert false report "Faillure!" severity note;
     end if;

   end process;
end tb;

configuration cfg_tb of fullAdder_tb is
   for tb
   end for;
end cfg_tb;
