library ieee;
use ieee.std_logic_1164.all;

entity shift_control_logic_tb is
end shift_control_logic_tb;

architecture Behavioural of shift_control_logic_tb is

    component shift_control_logic
        port (Input  : in std_logic_vector (2 downto 0);
              Output : out std_logic_vector (1 downto 0));
    end component;

    signal Input  : std_logic_vector (2 downto 0):= (others=>'0');
    signal Output : std_logic_vector (1 downto 0):= (others=>'0');

begin

    dut : shift_control_logic
    port map (Input  => Input,
              Output => Output);

    stimuli : process
    begin
        wait for 100 ns;
          Input <= "000"; --check output(0)=0 output(1)=0
        wait for 100 ns;
          Input <= "001"; --check output(0)=1 output(1)=0
        wait for 100 ns;
          Input <= "010"; --check output(0)=1 output(1)=0
        wait for 100 ns;
          Input <= "011"; --check output(0)=1 output(1)=0
        wait for 100 ns;
          Input <= "100"; --check output(0)=0 output(1)=0
        wait for 100 ns;
          Input <= "101"; --check output(0)=0 output(1)=1
        wait for 100 ns;
          Input <= "110"; --check output(0)=0 output(1)=1
        wait for 100 ns;
          Input <= "111"; --check output(0)=0 output(1)=1
        wait;
    end process;

end Behavioural;
