--Engineer: Salman Rahman
--Email: salman.rahamn@se14.qmul.ac.uk


library ieee;  
use ieee.std_logic_1164.all;  

--Declaring the entity
entity tb_nBitRippleCounter is
end tb_nBitRippleCounter;  

--Declaring Architecture for tb_nBitRippleCounter
architecture behavior of tb_nBitRippleCounter is
    -- Component Declaration for the Unit Under Test (UUT)  
    component n_bit_ripple_counter  
        port(  
            CLK : in std_logic;  
            reset : in std_logic;  
            Q_outputs : inout std_logic_vector(7 downto 0);  
            Q_bar_outputs : inout std_logic_vector(7 downto 0)  
            );  
    end component;  

    --Setting up the input signals
    signal CLK : std_logic := '0';  
    signal reset : std_logic := '0';  
    signal Q_outputs : std_logic_vector(7 downto 0);  
    signal Q_bar_outputs : std_logic_vector(7 downto 0);  

    -- Clock period definition
    constant CLK_period : time := 10 ns;  
    begin  
    
    -- Instantiate the Unit Under Test
    uut: n_bit_ripple_counter Port map (  
        CLK => CLK,  
        reset => reset,  
        Q_outputs => Q_outputs,  
        Q_bar_outputs => Q_bar_outputs  
        );  
    
    -- Clock process definitions
    CLK_process :process  
    begin  
            CLK <= '0';  
            wait for CLK_period/2;  
            CLK <= '1';  
            wait for CLK_period/2;  
    end process;  
    
    -- Stimulus process  
    stim_proc: process  
    begin            
    
    -- hold reset state for 100 ns.  
    wait for 100 ns;

    wait for CLK_period*10;  
        wait for 100 ns;  
            -- both outputs start undefined 'U'  
            reset <= '1';  
            -- this sets Q to '0' and Q_bar to '1'  
            -- when we test the flip-flop it does not react to the clock signal  
            wait for 120ns;  
            reset <= '0';  
            -- after reset changes to 0, the Q output value will toggle   
            -- on each rising clock edge.  
            wait for 100 ns;  
            reset <= '1';  
            wait for 120ns;  
            reset <= '0';  
            wait for 100 ns;  
            reset <= '1';  
            wait for 120ns;  
            reset <= '0';  
            wait for 100 ns;  
            reset <= '1';  
            wait for 120ns;  
            reset <= '0';  
            wait for 100 ns;  
            reset <= '1';  
            wait for 120ns;  
            reset <= '0';  
            wait for 100 ns;  
            reset <= '1';  
            wait for 120ns;  
            reset <= '0';  
            wait for 100 ns;  
            reset <= '1';  
            wait for 120ns;  
            reset <= '0';  
            wait;  
    end process;
end; 