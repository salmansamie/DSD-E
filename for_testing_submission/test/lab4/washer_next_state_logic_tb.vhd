-- Queen Mary UoL
-- Nnadozie Okeke


library ieee;
use ieee.std_logic_1164.all;

entity washer_next_state_logic_tb is
end washer_next_state_logic_tb;

architecture tb of washer_next_state_logic_tb is

    component washer_next_state_logic
        port (state      : in std_logic_vector (2 downto 0);
              control    : in std_logic;
              door_open  : in std_logic;
              next_state : out std_logic_vector (2 downto 0));
    end component;

    signal state      : std_logic_vector (2 downto 0) := (others => '0');
    signal control    : std_logic := '0';
    signal door_open  : std_logic := '0';
    signal next_state : std_logic_vector (2 downto 0);

begin

    dut : washer_next_state_logic
    port map (state      => state,
              control    => control,
              door_open  => door_open,
              next_state => next_state);

--- state     door_open   control   output
--- 000        1           x        000
--- 000        0           0        000
--- 000        0           1        001
--- 001        x           x        010
--- 010                             011
--- 011                             100
--- 100                             101
--- 101                             110
--- 110       x            0        000
--- 110       x            1        111
--- 111                             000


    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        wait for 100 ns;


        state <= "000";
        control <= '0';
        door_open <= '1';

        wait for 100 ns;
        assert (next_state = "000") report "case 1, next_state /= 000";

        state <= "000";
        control <= '0';
        door_open <= '0';


        wait for 100 ns;
        assert (next_state = "000") report "case 2, next_state /= 000";

        state <= "000";
        control <= '1';
        door_open <= '0';

        wait for 100 ns;
        assert (next_state = "001") report "case 3, next_state /= 001";

        state <= "001";
        control <= '1';
        door_open <= '0';


        wait for 100 ns;
        assert (next_state = "010") report "case 4, next_state /= 010";
        state <= "010";
        control <= '1';
        door_open <= '0';


        wait for 100 ns;
        assert (next_state = "011") report "case 5, next_state /= 011";
        state <= "011";
        control <= '1';
        door_open <= '0';


        wait for 100 ns;
        assert (next_state = "100") report "case 6, next_state /= 100";
        state <= "100";
        control <= '1';
        door_open <= '0';


        wait for 100 ns;
        assert (next_state = "101") report "case 7, next_state /= 101";
        state <= "101";
        control <= '1';
        door_open <= '0';


        wait for 100 ns;
        assert (next_state = "110") report "case 8, next_state /= 110";
        state <= "110";
        control <= '0';
        door_open <= '0';


        wait for 100 ns;
        assert (next_state = "000") report "case 9, next_state /= 000";
        state <= "110";
        control <= '1';
        door_open <= '0';


        wait for 100 ns;
        assert (next_state = "111") report "case 10, next_state /= 111";
        state <= "111";
        control <= '1';
        door_open <= '0';
        wait for 100 ns;
        assert (next_state = "000") report "case 11, next_state /= 000";
        -- EDIT Add stimuli here
        wait;
    end process;

end tb;
