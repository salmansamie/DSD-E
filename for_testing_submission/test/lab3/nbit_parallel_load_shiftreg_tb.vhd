--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY nbit_parallel_load_shiftreg_tb IS
END nbit_parallel_load_shiftreg_tb;

ARCHITECTURE behavior OF nbit_parallel_load_shiftreg_tb IS

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT nbit_parallel_load_shiftreg
  Port ( shiftin : in STD_LOGIC;
      dinputs : in STD_LOGIC_VECTOR (7 downto 0);
      loadshift : in STD_LOGIC;
      CLK : in STD_LOGIC;
      reset : in STD_LOGIC;
      preset : in STD_LOGIC;
      qoutputs : out STD_LOGIC_VECTOR (7 downto 0));
	END COMPONENT;

	--Inputs
	SIGNAL shiftin :  std_logic := '0';
  SIGNAL dinputs : std_logic_vector(7 downto 0) := (others => '0');
  SIGNAL loadshift : std_logic := '0';
	SIGNAL CLK :  std_logic := '0';
	SIGNAL reset :  std_logic := '0';
	SIGNAL preset :  std_logic := '0';

	--Outputs
	SIGNAL qoutputs :  std_logic_vector(7 downto 0);

BEGIN


	-- Instantiate the Unit Under Test (UUT)
	uut: nbit_parallel_load_shiftreg PORT MAP(
		shiftin => shiftin,
    dinputs => dinputs,
    loadshift => loadshift,
		CLK => CLK,
		reset => reset,
		preset => preset,
		qoutputs => qoutputs
	);

	-- SET THE CLOCK PERIOD:
	clk <= not clk after 50 ns; -- define clock period 100ns

	tb : PROCESS
	BEGIN



		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		-- at this point the contents of the register's flip-flops are undefined
		-- register contains: UUUUUUUU


		-- apply asynchronous reset signal:
		reset <= '1';
		-- register now contains: 00000000

		wait for 50 ns;

		-- disable reset
		reset <=	'0';
		-- register still contains: 00000000

		wait for 25 ns;
		-- after this wait time we have 25 ns left before the first clock that
		-- the register will shift data on. Now set the shiftin input to '1'

		shiftin	<= '1';

		wait for 800 ns;	-- wait 8 clock periods
		-- register will shift a '1' in at each clock edge until the shiftin
		-- value changes:
		-- clock edge 1: 00000001
		-- clock edge 2: 00000011
		-- clock edge 3: 00000111
		-- clock edge 4: 00001111
		-- clock edge 5: 00011111
		-- clock edge 6: 00111111
		-- clock edge 7: 01111111
		-- clock edge 8: 11111111

		shiftin <= '0';

		wait for 100 ns; -- wait 1 clock period
		-- clock edge: 11111110

		shiftin <= '1';

		wait for 300 ns;	-- wait 3 clock periods
		-- clock edge 1: 11111101
		-- clock edge 2: 11111011
		-- clock edge 3: 11110111

		shiftin <= '0';

		wait for 200 ns;
		-- clock edge 1: 11101110
		-- clock edge 2: 11011100

		shiftin <= '1';

		wait for 100 ns; -- wait clock period
		-- clock edge: 10111001

		wait for 40 ns;
		-- asynchronous preset
		preset <= '1';

		-- all flipflops are set to 1:
		-- register now contains: 11111111
		wait for 100 ns;
	 
		preset <= '0';
		loadshift <= '1'; --register should contain 00000000 on next clock edge

		wait for 100 ns;

		dinputs <= "10101010"; --register should contain this value on next clock edge

		wait; -- will wait forever
	END PROCESS;

END;
