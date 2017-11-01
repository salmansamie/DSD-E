Online VHDL Testbench Template Generator
© 2011-2017 by Bertrand Gros
Processing...
Cleaning out comments...
Looking for valid entity block...
✓ Found: four_bit_linear_feedback_shiftreg
Looking for valid port block inside the entity block...
✓ Found
Parsing...
✓ Found: CLK
✓ Found: reset
✓ Found: preset
✓ Found: Q_shift
Guessed clock: CLK
Guessed reset: reset
✓ Processing finished successfully.
Copy and paste the result below into your editor and enjoy.

If this tool helps you in your day-to-day work, consider visiting from time to time one of the sites shown on the left. It will help us to pay for the hosting costs.

-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 1.11.2017 11:51:01 GMT

library ieee;
use ieee.std_logic_1164.all;

entity tb_four_bit_linear_feedback_shiftreg is
end tb_four_bit_linear_feedback_shiftreg;

architecture tb of tb_four_bit_linear_feedback_shiftreg is

    component four_bit_linear_feedback_shiftreg
        port (CLK     : in std_logic;
              reset   : in std_logic;
              preset  : in std_logic;
              Q_shift : out std_logic_vector (3 downto 0));
    end component;

    signal CLK     : std_logic;
    signal reset   : std_logic;
    signal preset  : std_logic;
    signal Q_shift : std_logic_vector (3 downto 0);

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : four_bit_linear_feedback_shiftreg
    port map (CLK     => CLK,
              reset   => reset,
              preset  => preset,
              Q_shift => Q_shift);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that CLK is really your main clock signal
    CLK <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        preset <= '0';

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_four_bit_linear_feedback_shiftreg of tb_four_bit_linear_feedback_shiftreg is
    for tb
    end for;
end cfg_tb_four_bit_linear_feedback_shiftreg;




Process an other file

Contact form
If you think the result is not correct or if you have comments or request for improvement, please feel free to fill the comment form below.

Your comment:

Required

Your email:

Optional
 Submit
Process an other file
