-- Nnadozie Okeke

library ieee;
use ieee.std_logic_1164.all;

entity next_state_logic_tb is
end next_state_logic_tb;

architecture tb of next_state_logic_tb is

    component next_state_logic
        port (input  : in std_logic_vector (3 downto 0);
              output : out std_logic_vector (3 downto 0));
    end component;

    signal input  : std_logic_vector (3 downto 0);
    signal output : std_logic_vector (3 downto 0);

begin

    dut : next_state_logic
    port map (input  => input,
              output => output);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        wait for 100 ns;
        
        input <= "0000";

        wait for 100 ns;

        input <= "0001";

        wait for 100 ns;

        input <= "0010";

        wait for 100 ns;

        input <= "0011";

        wait for 100 ns;

        input <= "0100";

        wait for 100 ns;

        input <= "0101";

        wait for 100 ns;

        input <= "0110";

        wait for 100 ns;

        input <= "0111";

        wait for 100 ns;

        input <= "1000";

        wait for 100 ns;

        input <= "1001";

        wait for 100 ns;
        input <= "1010";

        wait for 100 ns;
        input <= "1011";

        wait for 100 ns;
        input <= "1100";

        wait for 100 ns;
        input <= "1101";

        wait for 100 ns;
        input <= "1110";

        wait for 100 ns;
        input <= "1111";

        wait for 100 ns;
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;
