--------------------------------------------------------------------------------

-- Engineer: Simran Kaur Phul
-- Description: N-bit synchronous counter with parallel load test bench

--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY nbitSynchronousCounterWithParallelLoad_tb IS
END nbitSynchronousCounterWithParallelLoad_tb;

ARCHITECTURE behavior OF nbitSynchronousCounterWithParallelLoad_tb IS 

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT nbitSynchronousCounterWithParallelLoad
PORT(
	 dinputs : IN  std_logic_vector(7 downto 0);
	 loadcount : IN  std_logic;
	 countenable : IN  std_logic;
	 CLK : IN  std_logic;
	 reset : IN  std_logic;
	 qoutputs : INOUT  std_logic_vector(7 downto 0)
	);
END COMPONENT;

--Inputs

signal dinputs : std_logic_vector(7 downto 0) := (others => '0');
signal loadcount : std_logic := '0';
signal countenable : std_logic := '0';
signal CLK : std_logic := '0';
signal reset : std_logic := '0';

--BiDirs

signal qoutputs : std_logic_vector(7 downto 0);

BEGIN

--------------------------------------------------------------------------------
--  Comments    CLK   reset  loadcount  countenable  dinputs :  qoutputs 
-- -------------------------------------------------------------:------------
--    Reset      X      1         X            X           X    :  00000000  
--    Hold    Rising    0         0            0           X    :   last Q   
--    Count   Rising    0         0            1           X    : last Q + 1 
--    Load    Rising    0         1            X           Q    :      Q     
-------------------------------------------------------------------------------

-- Instantiate the Unit Under Test (UUT)

uut: nbitSynchronousCounterWithParallelLoad PORT MAP (
	  dinputs => dinputs,
	  loadcount => loadcount,
	  countenable => countenable,
	  CLK => CLK,
	  reset => reset,
	  qoutputs => qoutputs
	);
	  
-- SET CLOCK PERIOD

CLK <= not CLK after 50 ns;

tb: process
begin		
  
  wait for 100 ns;
	-- Reset output to 0
	reset <= '1';
	
	wait for 20 ns;
	-- Deactivate reset
	reset <= '0';
	
	countenable <= '1';
	
	wait for 100 ns;
	-- Case 1: Count
	
	assert (qoutputs = "00000001") report "Case 1 failed: qoutputs /= 00000001";
	
	wait for 100 ns;
	-- Case 2: Count
	
	assert (qoutputs = "00000010") report "Case 2 failed: qoutputs /= 00000010";
	
			
	dinputs <= "11111100";
	countenable <= '0';
	loadcount <= '1';
	
	wait for 100 ns;
	-- Case 3: Load
	
	assert (qoutputs = "11111100") report "Case 3 failed: qoutputs /= 11111100";
	
	loadcount <= '0';
	
	wait for 300 ns;
	-- Case 4: Hold for 3 clock cycles

	assert (qoutputs = "11111100") report "Case 4 failed: qoutputs /= 11111100";
	
	countenable <= '1';

	wait for 100 ns;
	-- Case 5: Count
	
	assert (qoutputs = "11111101") report "Case 5 failed: qoutputs /= 11111101";
	
	reset <= '1';
	
	wait for 100 ns;
	-- Case 6: Reset
	
	assert (qoutputs = "00000000") report "Case 6 failed: qoutputs /= 00000000";

  wait;
end process;

END;
