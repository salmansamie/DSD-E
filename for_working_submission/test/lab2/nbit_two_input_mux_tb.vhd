--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY nbit_two_input_mux_tb IS
END nbit_two_input_mux_tb;

ARCHITECTURE behavior OF nbit_two_input_mux_tb IS

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT nbit_two_input_mux
	PORT(   InA, InB : in std_logic_vector(3 downto 0);
          Control : in std_logic;
          Output : out std_logic_vector(3 downto 0));
	END COMPONENT;

	--Inputs
	SIGNAL Control :  std_logic := '0';
	SIGNAL InA,InB :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL Output :  std_logic_vector(3 downto 0);

BEGIN

--  control : Output
------------:------------
--		 0	  :  InA
--		 1	  :  InB


-- Instantiate the Unit Under Test (UUT)
	uut: nbit_two_input_mux PORT MAP(
		Control => Control,
		InA => InA,
    InB => InB,
		Output => Output
	);

	tb : PROCESS
	BEGIN
		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
  		
		control <= '0';
  		InA <= "0011";  -- note double quotes for n-bit values
      InB <= "0101";
		
		wait for 100 ns;
		
		InA <= "0011";  -- note double quotes for n-bit values
      InB <= "0101";
      Control <= '1';
		wait; -- will wait forever
		
	END PROCESS;

END;
