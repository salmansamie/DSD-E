--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk


library ieee;
use ieee.std_logic_1164.ALL;

-- Declaring the eight_bit_comparator_tb entity
entity eight_bit_comparator_tb is
end eight_bit_comparator_tb;

-- Defining architecture for eight_bit_comparator_tb
architecture behavioral of eight_bit_comparator_tb is
    -- Component Declaration with inputs of 8 bits each
    component eight_bit_comparator is
        generic(n:positive:=8);
            Port (
                InA : in STD_LOGIC_VECTOR (7 downto 0);
                InB : in STD_LOGIC_VECTOR (7 downto 0);
                Output : out STD_LOGIC
                );
    end component;

    -- Mapping the signal Inputs and Outputs
    signal InA : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal InB : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Output : STD_LOGIC;


    -- Instantiate the Unit Under Test (UUT)
    begin
    uut: eight_bit_comparator
    Port Map(
        InA => InA,
        InB => InB,
        Output => Output
        );


    -- Stimulus process
    stim_proc: process
        begin
            -- hold reset state for 80ns.
            wait for 100 ns;
            InA <= "00000000";
            InB <= "00000000";

            assert (output = '1') report "Case 1 failed: Q_output /= 1";

            wait for 100 ns;
            InA <= "00000000";
            InB <= "00110000";

            assert (output = '0') report "Case 1 failed: Q_output /= 0";
            wait;
    end process;
end;
