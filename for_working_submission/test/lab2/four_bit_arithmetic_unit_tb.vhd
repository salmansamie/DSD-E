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

    signal InA     : std_logic_vector (3 downto 0) := (others => '0');
    signal InB     : std_logic_vector (3 downto 0) := (others => '0');
    signal Control : std_logic_vector (1 downto 0) := (others => '0');
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
          InB <= "0101"; --check sum is 0001 c=0
			 
        wait for 100ns;

          Control <= "01";
			 InA <= "0001";
          InB <= "1111"; --check sum is 0000 c=1
        wait for 100ns;
		      
			 Control <= "10";
          InA <= "0000";
          InB <= "1111"; --check sum is 1111 c=0
        wait for 100ns;
		  
          Control <= "11";
          InA <= "1111";
			 InB <= "0001"; --check sum is 1110 c=1 
 
			wait;
    end process;

end Behavioral;
