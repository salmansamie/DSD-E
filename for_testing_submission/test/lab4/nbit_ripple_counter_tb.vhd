--Engineer: Salman Rahman
--Email: salman.rahamn@se14.qmul.ac.uk


library ieee;
use ieee.std_logic_1164.all;

--Declaring the entity
entity nbit_ripple_counter_tb is
end nbit_ripple_counter_tb;

--Declaring Architecture for nbit_ripple_counter
architecture behavior of nbit_ripple_counter_tb is
    -- Component Declaration for the Unit Under Test (UUT)
    component nbit_ripple_counter is
    generic(n:positive:= 8);
      Port (
          CLK : in STD_LOGIC;
          reset : in STD_LOGIC;
          Q_outputs : inout STD_LOGIC_VECTOR (7 downto 0);
          Q_bar_outputs : inout STD_LOGIC_VECTOR (7 downto 0));
    end component;

    --Setting up the input signals
    signal CLK : std_logic := '0';
    signal reset : std_logic := '0';
    signal Q_outputs : std_logic_vector(7 downto 0);
    signal Q_bar_outputs : std_logic_vector(7 downto 0);

    begin

    -- Instantiate the Unit Under Test
    uut: nbit_ripple_counter Port map (
        CLK => CLK,
        reset => reset,
        Q_outputs => Q_outputs,
        Q_bar_outputs => Q_bar_outputs
        );

    clk <= not clk after 50 ns; -- period = 100ns
    -- Stimulus process
    stim_proc: process
    begin

    --we should see it counting upwards from all 0 on the q output
	 --and downward from all 1 on the qnot output

        wait for 100 ns;
            -- both outputs start undefined 'U'
            reset <= '1';
            wait for 120ns;
            reset <= '0';
            wait for 100 ns;
            --reset <= '1';
            --reset <= '0';
            wait for 100 ns;
            --reset <= '1';
            --reset <= '0';
            wait for 100 ns;
            --reset <= '1';
            --reset <= '0';
            wait for 100 ns;
            --reset <= '1';
            --reset <= '0';
            wait for 100 ns;
            --reset <= '1';
            --reset <= '0';
            wait for 100 ns;
            --reset <= '1';
          --reset <= '0';
            wait;
    end process;
end;
