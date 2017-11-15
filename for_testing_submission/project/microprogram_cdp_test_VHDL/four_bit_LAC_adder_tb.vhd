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
  signal InA, InB : std_logic_vector(3 downto 0) := (others=>'0');
  signal C_In : std_logic := '0';
  signal Sum : std_logic_vector(3 downto 0);
  signal C_out : std_logic;


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
		InA <= "0001";
		InB <= "0001"; --check 0010 c=0

		wait for 100 ns;
		C_in <= '1';
		InA <= "0010";
		InB <= "0010"; --check 0101 c=0

		wait for 100 ns;
		C_in <= '0';
		InA <= "0100";
		InB <= "0100"; --check 1000 c=0

		wait for 100 ns;
		C_in <= '1';
		InA <= "0001";
		InB <= "1111"; --check 0001 c=1
		
		wait for 100 ns;
		C_in <= '1';
		InA <= "1101";
		InB <= "0011"; --check 0001 c=1
		
		wait for 100 ns;
		C_in <= '0';
		InA <= "1101";
		InB <= "0011"; --check 1000 c=1

		wait; -- will wait forever
	END PROCESS;

END;
