--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk

library ieee;
use ieee.std_logic_1164.all;

--Entity for adderSubtractor_tb
entity adderSubtractor_tb is 
end adderSubtractor_tb;

--Architecture for adderSubtractor_tb
architecture testbench of adderSubtractor_tb is
        component adderSubtractor is 
            port( mode         : in std_logic;
                A3, A2, A1, A0 : in std_logic;
                B3, B2, B1, B0 : in std_logic;
                S3, S2, S1, S0 : out std_logic;
                       Cout, V : out std_logic);
        end component;

--Signals direction
signal mode, A3, A2, A1, A0 : std_logic;
signal B3, B2, B1, B0 : std_logic;
signal S3, S2, S1, S0, Cout, V : std_logic;

begin
    mapping: adderSubtractor port map( mode,
                                       A3, A2, A1, A0,
                                       B3, B2, B1, B0,
                                       S3, S2, S1, S0,
                                              Cout, V);

   --concurrent processes, just to save space
    process  
        begin
            mode <= '1'; -- do subtraction
            wait for 10 ns;
            mode <= '0'; -- do addition
            wait for 10 ns;
    end process;

    process
        variable errCnt : integer :=0;
            begin
                --TEST 1
                A3 <= '1';
                A2 <= '0';
                A1 <= '1';
                A0 <= '1';
                --
                B3 <= '0';
                B2 <= '1';
                B1 <= '1';
                B0 <= '0';
                --
                wait for 20 ns;
                assert (Cout = '1') report "Error" severity error;
                assert (S3 = '0') report "Error" severity error;
                assert (S2 = '0') report "Error" severity error;
                assert (S1 = '0') report "Error" severity error;
                assert (S0 = '1') report "Error" severity error;
                assert (V = '0') report "Error" severity error;
                if(Cout /= '1' or V /= '0') then
                    errCnt:= errCnt + 1;
                end if;

                --TEST 2
                A3 <= '0';
                A2 <= '1';
                A1 <= '1';
                A0 <= '1';
                --
                B3 <= '0';
                B2 <= '1';
                B1 <= '0';
                B0 <= '1';
                --
                wait for 20 ns;
                assert (Cout = '0') report "Error" severity error;
                assert (S3 = '1') report "Error" severity error;
                assert (S2 = '1') report "Error" severity error;
                assert (S1 = '0') report "Error" severity error;
                assert (S0 = '0') report "Error" severity error;
                assert (V = '1') report "Error" severity error;
                if(Cout /= '0' or V /= '1') then
                    errCnt:= errCnt + 1;
                end if;

            --Asserting the above test cases
            if(errCnt = 0) then
                assert false report "Good!"  severity note;
            else
                assert false report "Error!"  severity error;
            end if;
    end process;
end testbench;

configuration cfg_tb of adderSubtractor_tb is
   for testbench
   end for;
end cfg_tb;
