library ieee;
use ieee.std_logic_1164.all;

entity shift_control_logic_tb is
end shift_control_logic_tb;

architecture Behavioural of shift_control_logic_tb is

    component shift_control_logic
        port (Input  : in std_logic_vector (2 downto 0);
              Output : out std_logic_vector (1 downto 0));
    end component;

    signal Input  : std_logic_vector (2 downto 0);
    signal Output : std_logic_vector (1 downto 0);

begin

    dut : shift_control_logic
    port map (Input  => Input,
              Output => Output);

    stimuli : process
    begin
        wait for 100 ns;
          Input <= "000";
        wait for 100 ns;
          assert(Output="00") report "Fail Input=000" severity error;
          Input <= "001";
        wait for 100 ns;
          assert(Output="01") report "Fail Input=001" severity error;
          Input <= "010";
        wait for 100 ns;
          assert(Output="00") report "Fail Input=010" severity error;
          Input <= "011";
        wait for 100 ns;
          assert(Output="10") report "Fail Input=011" severity error;
          Input <= "100";
        wait for 100 ns;
          assert(Output="01") report "Fail Input=100" severity error;
          Input <= "101";
        wait for 100 ns;
          assert(Output="01") report "Fail Input=101" severity error;
          Input <= "110";
        wait for 100 ns;
          assert(Output="10") report "Fail Input=110" severity error;
          Input <= "111";
        wait for 100 ns;
          assert(Output="10") report "Fail Input=111" severity error;
        wait;
    end process;

end Behavioural;
