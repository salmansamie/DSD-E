--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: n-bit twisted ring counter test bench

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY nbit_twisted_ring_counter_tb IS
END nbit_twisted_ring_counter_tb;

ARCHITECTURE behavior OF nbit_twisted_ring_counter_tb IS

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT nbit_twisted_ring_counter
PORT(
     CLK : IN  std_logic;
     reset : IN  std_logic;
     preset : IN  std_logic;
     qoutputs : INOUT  std_logic_vector(7 downto 0)
    );
END COMPONENT;

 -- Inputs

 signal CLK : std_logic := '0';
 signal reset : std_logic := '0';
 signal preset : std_logic := '0';

-- BiDirs

 signal qoutputs : std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)

   uut: nbit_twisted_ring_counter PORT MAP (
          CLK => CLK,
          reset => reset,
          preset => preset,
          qoutputs => qoutputs
        );

	clk <= not clk after 50 ns; -- period = 100ns

   tb: process
   begin
     
      -- hold reset state for 100 ns.
      wait for 100 ns;

		reset <= '1';

		wait for 120 ns;

		reset <= '0';

      wait;
   end process;

END;
