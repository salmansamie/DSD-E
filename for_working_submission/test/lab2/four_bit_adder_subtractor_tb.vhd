--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY four_bit_adder_subtractor_tb IS
END four_bit_adder_subtractor_tb;

ARCHITECTURE behavior OF four_bit_adder_subtractor_tb IS

	-- Component Declaration for the Unit Under Test (UUT)
  component four_bit_adder_subtractor
    Port (
      InA, InB : in std_logic_vector(3 downto 0);
      Control : in std_logic;
      Sum : out std_logic_vector(3 downto 0);
      C_out : out std_logic
    );
  end component;

	--Inputs
  signal InA, InB : std_logic_vector(3 downto 0) := (others=>'0');
  signal Sum : std_logic_vector(3 downto 0);
  signal Control : std_logic := '0';
  signal C_out : std_logic;


BEGIN

--  control : Output function
------------:------------
--		 0	  :  Add (InA + InB)
--		 1	  :  Subtract (InA - InB)


-- Instantiate the Unit Under Test (UUT)
	uut: four_bit_adder_subtractor PORT MAP(
	 InA => InA,
    InB => InB,
    Control => Control,
    Sum => Sum,
    C_out => C_out
	);

	tb : PROCESS
	BEGIN
-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		Control <= '0';   -- set control to zero,
		InA <= "0101";  -- note double quotes for n-bit values
		InB <= "0111"; --check for 1100, c=0

		wait for 100 ns;

		Control <= '1';	-- set control to 1,
		InA <= "0101";  -- note double quotes for n-bit values
		InB <= "0111"; --check for 1110 with c=0
		
		wait for 100 ns;
		
		Control <= '1';	-- set control to 1,
		InA <= "1101";  -- note double quotes for n-bit values
		InB <= "0111"; --check for 1110 with c=0
		
		wait for 100 ns;
		Control <= '1';	-- set control to 1, 
		InA <= "0000";  -- note double quotes for n-bit values
		InB <= "0001"; --check for 1111 with c=0
		
		wait for 100 ns;
		Control <= '1';	-- set control to 1, 
		InA <= "1111";  -- note double quotes for n-bit values
		InB <= "0001"; --check for 1110 c=1

		wait; -- will wait forever
	END PROCESS;

END;
