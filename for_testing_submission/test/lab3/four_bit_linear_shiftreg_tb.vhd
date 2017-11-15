library ieee;
use ieee.std_logic_1164.all;

entity four_bit_linear_feedback_shiftreg_tb is
end four_bit_linear_feedback_shiftreg_tb;

architecture tb of four_bit_linear_feedback_shiftreg_tb is

    component four_bit_linear_feedback_shiftreg
        port (CLK     : in std_logic;
              reset   : in std_logic;
              preset  : in std_logic;
              qoutputs : out std_logic_vector (3 downto 0));
    end component;

    signal CLK     : std_logic := '0';
    signal reset   : std_logic := '0';
    signal preset  : std_logic := '0';
    signal qoutputs : std_logic_vector (3 downto 0);

begin

    dut : four_bit_linear_feedback_shiftreg
    port map (CLK     => CLK,
              reset   => reset,
              preset  => preset,
              qoutputs => qoutputs);

    -- Clock generation
    CLK <= not CLK after 50 ns; -- define clock period 100ns


    stimuli : process
    begin

      -- Wait 100 ns for global reset to finish
  		wait for 100 ns;
  		reset <= '1';

  		wait for 100 ns;
  		-- disable reset
  		reset <=	'0';

  		wait for 300 ns;
  		-- asynchronous preset
  		preset <= '1';
		
		wait for 100 ns;
  		-- asynchronous preset
  		preset <= '0';
		
		wait for 300 ns;

  		wait; -- will wait forever
    end process;

end tb;
