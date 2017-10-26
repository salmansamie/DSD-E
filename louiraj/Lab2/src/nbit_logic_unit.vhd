
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nbit_logic_unit is

Generic ( n : positive := 4 );
  Port (
    inputA, inputB : in std_logic_vector(n-1 downto 0);
    inputC : in std_logic_vector(1 downto 0);
    outputA : out std_logic_vector(n-1 downto 0)
  );

end nbit_logic_unit;

architecture arch of nbit_logic_unit is
  component one_bit_logic_func_slice
  Port (
    inputA, inputB : in std_logic;
    inputC : in std_logic_vector(1 downto 0);
    outputA : out std_logic
  );
  end component;

    begin
      inst : for i in n-1 downto 0 generate
        logic_slice : one_bit_logic_func_slice port map (inputA(i), inputB(i), inputC, outputA(i));
      end generate;
  end arch;
