-- Engineer: Loui Rajabi
-- 2 input Multiplexer

library ieee;
use ieee.std_logic_1164.all;

entity inputMux2_tb is
end inputMux2_tb;

architecture tb of inputMux2_tb is

   component inputMux2 is
      port(
      D0 : in std_logic;
      D1 : in std_logic;
       S : in std_logic;
       F : out std_logic
       );
   end component;

   signal D0, D1, S, F : std_logic;

begin
   mapping: inputMux2 port map(D0, D1, S, F);

   process
   begin
      S <= '1';
      wait for 10 ns;
      S <= '0';
      wait for 10 ns;
   end process;

   process
      variable errCnt : integer := 0;
   begin


   --test 1
      D0 <= '0';
      D1 <= '1';
      wait for 15 ns;
      if(S = '0') then
         assert(F = '0') report "Error 2" severity error;
      else
         assert(F = '1') report "Error 2" severity error;
      end if;

   --test 2
      D0 <= '1';
      D1 <= '0';
      wait for 15 ns;
      if(S = '0') then
         assert(F = '1') report "Error 2" severity error;
      else
         assert(F = '0') report "Error 2" severity error;
      end if;

   end process;
end tb;

configuration cfg_tb of inputMux2_tb is
   for tb
   end for;
end cfg_tb;
