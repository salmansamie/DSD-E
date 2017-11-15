--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY four_bit_LAC_adder_tb IS
END four_bit_LAC_adder_tb;

ARCHITECTURE behavior OF four_bit_LAC_adder_tb IS

	-- Component Declaration for the Unit Under Test (UUT)
  component four_bit_LAC_adder
    Port (
      InA, InB : in std_logic_vector(3 downto 0);
      C_in : in std_logic;
      Sum : out std_logic_vector(3 downto 0);
      C_out : out std_logic
    );
  end component;

	--Inputs
  signal InA, InB, Sum : std_logic_vector(3 downto 0) := (others=>'0');
  signal C_In, C_out : std_logic;


BEGIN

-- Instantiate the Unit Under Test (UUT)
	uut: four_bit_LAC_adder PORT MAP(
		InA => InA,
    InB => InB,
    C_in => C_in,
    Sum => Sum,
    C_out => C_out
	);

	tb : PROCESS
	BEGIN
		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
  		C_in <= '0';
  		InA <= "0011";  -- note double quotes for n-bit values
      InB <= "0101";
		wait for 100 ns;
      assert(Sum="1000") report "Fail c=0, ina=0011, inb=0101" severity error;
      assert(C_out='0') report "Fail c=0, ina=0011, inb=0101" severity error;
      C_in <= '1';
    wait for 100 ns;
      assert(Sum="1001") report "Fail c=1, ina=0011, inb=0101" severity error;
      assert(C_out='0') report "Fail c=1, ina=0011, inb=0101" severity error;
		wait; -- will wait forever
	END PROCESS;

END;
