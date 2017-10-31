LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY nbitregloadholdtristatebuffertest IS
END nbitregloadholdtristatebuffertest;
ARCHITECTURE behavior OF nbitregloadholdtristatebuffertest IS

COMPONENT nbitregloadholdcontroltristate
  PORT(
     dinputs : IN std_logic_vector(3 downto 0);
     loadhold : IN std_logic;
     CLK : IN std_logic;
     reset : IN std_logic;
     outputenable : IN std_logic;
     qoutputs : OUT std_logic_vector(3 downto 0)
    );
  END COMPONENT;

 signal dinputs : std_logic_vector(3 downto 0) := (others => '0');
  signal loadhold : std_logic := '0';
  signal CLK : std_logic := '0';
  signal reset : std_logic := '0';
  signal outputenable : std_logic := '0';

signal qoutputs : std_logic_vector(3 downto 0);

constant CLK_period : time := 10 ns;
BEGIN

uut: nbitregloadholdcontroltristate PORT MAP (
     dinputs => dinputs,
     loadhold => loadhold,
     CLK => CLK,
     reset => reset,
     outputenable => outputenable,
     qoutputs => qoutputs
    );
 clk_process :process
  begin
          clk <= '0';
          wait for clk_period/2;
          clk <= '1';
          wait for clk_period/2;
  end process;

stim_proc: process
  begin

wait for 100 ns;
           wait for 100 ns;
outputenable<='0';
   dinputs <= "1001" ;
             wait for 100 ns;
     outputenable<='1';
               loadhold <= '1';
                            wait for 100 ns;
             wait for 100 ns;
     outputenable<='1';
               loadhold <= '0';
     wait for 100 ns;
     outputenable<='0';
               loadhold <= '0';
             wait for 100 ns;
     outputenable<='1';
               loadhold <= '0';
                    wait for 100 ns;
                    reset <= '1';
                    wait for 100 ns;
                         reset <= '0';
   wait for clk_period*10;

wait;
  end process;
END;  
