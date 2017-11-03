library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity four_bit_arithmetic_unit is
  Port ( InA, InB : in std_logic_vector(3 downto 0);
		    Control : in std_logic_vector(1 downto 0);
			 Sum : out std_logic_vector(3 downto 0);
			 C_out : out std_logic);
end four_bit_arithmetic_unit;

architecture Behavioral of four_bit_arithmetic_unit is
  component nbit_two_input_mux is
    PORT(   InA, InB : in std_logic_vector(3 downto 0);
            Control : in std_logic;
            Output : out std_logic_vector(3 downto 0));
  end component;

  component four_bit_adder_subtractor is
    Port (
      InA, InB : in std_logic_vector(3 downto 0);
      Control : in std_logic;
      Sum : out std_logic_vector(3 downto 0);
      C_out : out std_logic
    );
  end component;

  signal s0 : std_logic_vector(3 downto 0);
  signal s1 : std_logic_vector(3 downto 0) := (others=>'0');

  begin
    twoinmux : nbit_two_input_mux port map (s1, InB, Control(0), s0);
    addersub : four_bit_adder_subtractor port map (InA, s0, Control(1), Sum, C_out);
end Behavioral;
