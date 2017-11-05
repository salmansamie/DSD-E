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
  signal InA, InB, Sum : std_logic_vector(3 downto 0) := (others=>'0');
  signal Control, C_out : std_logic;


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
  		control <= '0';
  		InA <= "0011";  -- note double quotes for n-bit values
      InB <= "0101";
		wait for 100 ns;
      assert(Sum="1000") report "Fail c=0, ina=0011, inb=0101" severity error;
      Control <= '1';
    wait for 100 ns;
      assert(Sum="1110") report "Fail c=1, ina=0011, inb=0101" severity error;
		wait; -- will wait forever
	END PROCESS;

END;
