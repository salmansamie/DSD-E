--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: n-bit universal shift register test bench

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY nbit_universal_shiftreg_tb IS
END nbit_universal_shiftreg_tb;

ARCHITECTURE behavior OF nbit_universal_shiftreg_tb IS

 -- Component Declaration for the Unit Under Test (UUT)

COMPONENT nbit_universal_shiftreg
PORT(
      dinputs : IN  std_logic_vector(3 downto 0);
      shift_in : IN  std_logic;
      shiftrotate : IN  std_logic;
      f : IN  std_logic_vector(1 downto 0);
      CLK : IN  std_logic;
      reset : IN  std_logic;
      preset : IN  std_logic;
      qoutputs : OUT  std_logic_vector(3 downto 0)
    );
END COMPONENT;

   --Inputs

 signal dinputs : std_logic_vector(3 downto 0) := (others => '0');
 signal shift_in : std_logic := '0';
 signal shiftrotate : std_logic := '0';
 signal f : std_logic_vector(1 downto 0) := (others => '0');
 signal CLK : std_logic := '0';
 signal reset : std_logic := '0';
 signal preset : std_logic := '0';

 	--Outputs

 signal qoutputs : std_logic_vector(3 downto 0);

BEGIN

-- Instantiate the Unit Under Test (UUT)

uut: nbit_universal_shiftreg PORT MAP (
      dinputs => dinputs,
      shift_in => shift_in,
      shiftrotate => shiftrotate,
      f => f,
      CLK => CLK,
      reset => reset,
      preset => preset,
      qoutputs => qoutputs
    );

   -- SET CLOCK PERIOD
	clk <= not clk after 50 ns; -- period = 100ns

   tb: process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;
		-- Load

		f <= "11";
		dinputs <= "1011";

      wait for 120ns;
		-- clock edge: 1011
		-- Rotate Right

		f <= "10";
		shiftrotate <= '0';

		wait for 120ns;
		-- clock edge: 1101
		-- Shift Left by 0

		f <= "01";
		shift_in <= '0';
		shiftrotate <= '1';

		wait for 120ns;
		-- clock edge: 1010
		-- Rotate left

		shiftrotate <= '0';

		wait for 120ns;
		-- clock edge: 0101
		-- Shift right by 1

		f <= "10";
		shift_in <= '1';
		shiftrotate <= '1';

		wait for 120ns;
		-- clock edge: 1010
		-- Hold

		f <= "00";

		wait for 240 ns;
		-- Preset to 1111

		preset <= '1';

      wait;
   end process;

END;
