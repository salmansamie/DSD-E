library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity four_bit_LAC_adder is
  Port (
    InA, InB : in std_logic_vector(3 downto 0);
    C_in : in std_logic;
    Sum : out std_logic_vector(3 downto 0);
    C_out : out std_logic
  );
end four_bit_LAC_adder;

architecture Behavioral of four_bit_LAC_adder is
  component four_bit_LAC is
    Port ( InA : in std_logic_vector(3 downto 0);
           InB : in std_logic_vector(3 downto 0);
           C_In : in std_logic;
           C_terms : out std_logic_vector(3 downto 0));
  end component;

  component nbit_adder is
	 Generic (n : positive := 4);
    Port (
     InA, InB, C_terms : in std_logic_vector(n-1 downto 0);
     Sum : out std_logic_vector(n-1 downto 0);
	  dummy : out std_logic_vector(n-2 downto 0);
     C_out : out std_logic
    );
  end component;

  signal s0 : std_logic_vector(3 downto 0);
  signal dummy : std_logic_vector(2 downto 0);

  begin
    fourBitLAC : four_bit_LAC port map (InA, InB, C_in, s0);
    fourBitAdder : nbit_adder generic map (4) port map (InA, InB, s0, Sum, dummy, C_out);  
end Behavioral;
