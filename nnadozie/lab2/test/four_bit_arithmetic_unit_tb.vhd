library ieee;
use ieee.std_logic_1164.all;

entity four_bit_arithmetic_unit_tb is
end four_bit_arithmetic_unit_tb;

architecture Behavioral of four_bit_arithmetic_unit_tb is

    component four_bit_arithmetic_unit
        port (InA     : in std_logic_vector (3 downto 0);
              InB     : in std_logic_vector (3 downto 0);
              Control : in std_logic_vector (1 downto 0);
              Sum     : out std_logic_vector (3 downto 0);
              C_out   : out std_logic);
    end component;

    signal InA     : std_logic_vector (3 downto 0);
    signal InB     : std_logic_vector (3 downto 0);
    signal Control : std_logic_vector (1 downto 0);
    signal Sum     : std_logic_vector (3 downto 0);
    signal C_out   : std_logic;

begin
    -- control | Function
    -- (1) (0) |
    --  0   0    InA + 1
    --  0   1    InA + InB
    --  1   0    InA - 1
    --  1   1    InA - InB

    dut : four_bit_arithmetic_unit
    port map (InA     => InA,
              InB     => InB,
              Control => Control,
              Sum     => Sum,
              C_out   => C_out);

    stimuli : process
    begin
        wait for 100ns;
          Control <= "00";
          InA <= "0000";
          InB <= "0101";
        wait for 100ns;
          assert(Sum="0001") report "c=00, a=0000, b=0101" severity error;
          assert(C_out='0') report "c=00, a=0000, b=0101" severity error;
          Control <= "01";
        wait for 100ns;
          assert(Sum="0101") report "c=01, a=0000, b=0101" severity error;
          assert(C_out='0') report "c=01, a=0000, b=0101" severity error;
          InA <= "0001";
		      Control <= "10";
        wait for 100ns;
          assert(Sum="0000") report "c=01, a=0001, b=0101" severity error;
          assert(C_out='0') report "c=01, a=0001, b=0101" severity error;
          InA <= "0101"
          Control <= "11"          
        wait for 100ns;
          assert(Sum="0000") report "c=01, a=0101, b=0101" severity error;
          assert(C_out='0') report "c=01, a=0101, b=0101" severity error;
        wait;
    end process;

end Behavioral;
