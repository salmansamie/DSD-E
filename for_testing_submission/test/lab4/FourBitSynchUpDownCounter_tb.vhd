--------------------------------------------------------------------------------

-- Engineer: Simran Kaur Phul
-- Description: Four bit synchronous up down counter test bench

--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY FourBitSynchronousUpDownCounter_tb IS
END FourBitSynchronousUpDownCounter_tb;
 
ARCHITECTURE behavior OF FourBitSynchronousUpDownCounter_tb IS 

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT FourBitSynchronousUpDownCounter
PORT(
	 N_count : IN  std_logic_vector(3 downto 0);
	 downUp : IN  std_logic;
	 CLK : IN  std_logic;
	 reset : IN  std_logic;
	 Q_output : INOUT  std_logic_vector(3 downto 0)
	);
END COMPONENT;

--Inputs

signal N_count : std_logic_vector(3 downto 0) := (others => '0');
signal downUp : std_logic := '0';
signal CLK : std_logic := '0';
signal reset : std_logic := '0';

--BiDirs

signal Q_output : std_logic_vector(3 downto 0);

BEGIN


--------------------------------------------------------------------------------

--   Comments     CLK   reset  downUp  N_count :  Q_output 
-- ---------------------------------------------:------------
--     Reset       X      1       X        X    :    0000   
--     Hold     Rising    0       X       0000  :   last Q    
--   Count up   Rising    0       0        N    : last Q + N 
--  Count down  Rising    0       1        N    : last Q - N 

--------------------------------------------------------------------------------

uut: FourBitSynchronousUpDownCounter PORT MAP (
	  N_count => N_count,
	  downUp => downUp,
	  CLK => CLK,
	  reset => reset,
	  Q_output => Q_output
	);

CLK <= not CLK after 50 ns; 

tb: process
begin		

  wait for 100 ns;	
	-- Reset output to 0
	reset <= '1';
	
	wait for 20 ns;
	-- Deactivate reset
	reset <= '0';
	
	N_count <= "0010";
	
	wait for 100 ns;
	-- Case 1: Count up by 2
	
	assert (Q_output = "0010") report "Case 1 failed: Q_output /= 0010";
	
	wait for 100 ns;
	-- Case 2: Count up by 2
	
	assert (Q_output = "0100") report "Case 2 failed: Q_output /= 0100";
	
	downUp <= '1';
	N_count <= "0001";
	
	wait for 100 ns;
	-- Case 3: Count down by 1
	
	assert (Q_output = "0011") report "Case 3 failed: Q_output /= 0011";
	
	N_count <= "0000";
	
	wait for 200 ns;
	-- Case 3: Hold for 2 cycles
	
	assert (Q_output = "0011") report "Case 3 failed: Q_output /= 0011";
	
	N_count <= "0001";
	
	wait for 100 ns;
	-- Case 4: Count down by 1
	
	assert (Q_output = "0010") report "Case 4 failed: Q_output /= 0010";
	
	reset <= '1';

  wait;
end process;

END;
