--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: modulo-m counter with synchronous reset test bench

--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY modm_sync_count_tb IS
END modm_sync_count_tb;
 
ARCHITECTURE behavior OF modm_sync_count_tb IS 

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT modm_sync_count
PORT(
	 M_value : IN  std_logic_vector(7 downto 0);
	 countEnable : IN  std_logic;
	 CLK : IN  std_logic;
	 reset : IN  std_logic;
	 Q_Out : INOUT  std_logic_vector(7 downto 0)
	);
END COMPONENT;

--Inputs

signal M_value : std_logic_vector(7 downto 0) := (others => '0');
signal countEnable : std_logic := '0';
signal CLK : std_logic := '0';
signal reset : std_logic := '0';

--BiDirs

signal Q_Out : std_logic_vector(7 downto 0);

BEGIN

--------------------------------------------------------------------------------

--         Comments           CLK   reset  countEnable  M_value :  Q_Out 
-- --------------------------------------------------------------:-------------
--           Reset             X      1          X          X    :  00000000    
--           Hold           Rising    0          0          X    :   last Q   
--   Count up (last Q < M)  Rising    0          1          M    : last Q + 1 
--  Count up  (last Q = M)  Rising    0          1          M    :  00000000

--------------------------------------------------------------------------------

-- Instantiate the Unit Under Test (UUT)

uut: modm_sync_count PORT MAP (
	  M_value => M_value,
	  countEnable => countEnable,
	  CLK => CLK,
	  reset => reset,
	  Q_Out => Q_Out
	);
	  
-- SET CLOCK PERIOD

CLK <= not CLK after 100 ns;

tb: process
begin		
	wait for 100 ns;
	-- Reset output to 0
	reset <= '1';
	
	wait for 20 ns;
	-- Deactivate reset
	reset <= '0';
	
	countEnable <= '1';
	M_value <= "00000011";
	
	wait for 200 ns;
	-- Case 1: Count up
	
	assert (Q_Out = "00000001") report "Case 1 failed: Q_Out /= 00000001";
	
	wait for 200 ns;
	-- Case 2: Count up
	
	assert (Q_Out = "00000010") report "Case 2 failed: Q_Out /= 00000010";
	
	countEnable <= '0';
	
	wait for 600 ns;
	-- Case 3: Hold for three clock cycles
	
	assert (Q_Out = "00000010") report "Case 3 failed: Q_Out /= 00000010";
	
	countEnable <= '1';
	
	wait for 200 ns;
	-- Case 4: Q = M_value
	
	assert (Q_Out = "00000011") report "Case 4 failed: Q_Out /= 00000011";
	
	wait for 70 ns;
	-- Case 5: Check reset hasn't happened async
	
	assert (Q_Out = "00000011") report "Case 5 failed: Q_Out /= 00000011";
	
	wait for 130 ns;
	-- Case 6: Wrap back to 0
	
	assert (Q_Out = "00000000") report "Case 6 failed: Q_Out /= 00000000";

  wait;
end process;

END;
