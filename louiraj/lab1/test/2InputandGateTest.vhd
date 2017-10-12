-- Engineer: Loui Rajabi
-- 2input and Gate

library ieee;
use ieee.std_logic_1164.all;

entity andGate2_tb is
end andGate2_tb;

architecture tb of andGate2_tb is
   component andGate2 is
   port( A, B : in std_logic;
            F : out std_logic);
   end component;

   signal  inA, inB, outF : std_logic;
begin
   mapping: andGate2 port map(inA, inB, outF);

   process
      variable errCnt : integer := 0;
   begin
      --test 1
      inA <= '0';
      inB <= '0';
      wait for 15 ns;
      assert(outF = '0')  report "Error 1"  severity error;
      if(outF /= '0') then
         errCnt := errCnt + 1;
      end if;

      --test 2
      inA <= '0';
      inB <= '1';
      wait for 15 ns;
      assert(outF = '0')  report "Error 2"  severity error;
      if(outF /= '0') then
         errCnt := errCnt + 1;
      end if;

      --test 3
      inA <= '1';
      inB <= '1';
      wait for 15 ns;
      assert(outF = '1')  report "Error 3"  severity error;
      if(outF /= '1') then
         errCnt := errCnt + 1;
      end if;

-- results
      if(errCnt = 0) then
         assert false report "Good!"	severity note;
      else
         assert true report "Error!"	severity error;
      end if;

   end process;
end tb;


configuration cfg_tb of andGate2_tb is
   for tb
   end for;
end cfg_tb;
