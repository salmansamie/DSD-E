-- Engineer: Loui Rajabi
-- 2input nand Gate

library ieee;
use ieee.std_logic_1164.all;


entity nandGate2_tb is
end nandGate2_tb;


architecture tb of nandGate2_tb is

   component nandGate2 is
   port(
   A : in std_logic;
   B : in std_logic;
   F : out std_logic
   );
   end component;

   signal  inA, inB, outF : std_logic;
begin

   mapping: nandGate2 port map(inA, inB, outF);

   process

      variable errCnt : integer := 0;
   begin
      --test 1
      inA <= '0';
      inB <= '0';
      wait for 15 ns;
      assert(outF = '1')  report "Error 1" severity error;
      if(outF /= '1') then
         errCnt := errCnt + 1;
      end if;

      --test 2
      inA <= '0';
      inB <= '1';
      wait for 15 ns;
      assert(outF = '1')  report "Error 2" severity error;
      if(outF /= '1') then
         errCnt := errCnt + 1;
      end if;

      --test 3
      inA <= '1';
      inB <= '1';
      wait for 15 ns;
      assert(outF = '0')  report "Error 3" severity error;
      if(outF /= '0') then
         errCnt := errCnt + 1;
      end if;

-- results ...
      if(errCnt = 0) then
         assert false report "Good!"  severity note;
      else
         assert true report "Error!"  severity error;
      end if;

   end process;
end tb;

configuration cfg_tb of nandGate2_tb is
   for tb
   end for;
end cfg_tb;
