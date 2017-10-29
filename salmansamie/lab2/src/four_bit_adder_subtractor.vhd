--Engineer: Salman Rahman, Nnadozie Okeke

library ieee;
use ieee.std_logic_1164.all;

entity four_bit_adder_subtractor is
  Port (
    InA, InB : in std_logic_vector(3 downto 0);
    Control : in std_logic;
    Sum : out std_logic_vector(3 downto 0);
    C_out : out std_logic
  );
end four_bit_adder_subtractor;

architecture Behavioral of four_bit_adder_subtractor is
  component nbit_xor_contol is
    Port (
      Input : in std_logic_vector(n-1 downto 0);
      control : in std_logic;
      Output : out std_logic_vector(n-1 downto 0)
    );
  end component;

  component four_bit_LAC_adder is
    Port (
      InA : in std_logic_vector(3 downto 0);
      InB : in std_logic_vector(3 downto 0);
      C_In : in std_logic;
      Sum  : out std_logic_vector(3 downto 0);
      C_out : out std_logic
    );
  end component;

  signal s0 : std_logic_vector(3 downto 0);

  begin
    xor_control : nbit_xor_contol port map (InB, Control, s0);
    lac_adder : four_bit_LAC_adder port map (InA, s0, Control, Sum, C_out);
end Behavioral;
