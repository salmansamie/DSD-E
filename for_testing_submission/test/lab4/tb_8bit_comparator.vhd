--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk


library ieee;
use ieee.std_logic_1164.ALL;

-- Declaring the tb_comparator entity
entity tb_comparator is
end tb_comparator;

-- Defining architecture for tb_comparator
architecture behavioral of tb_comparator is
    -- Component Declaration with inputs of 8 bits each
    component comparator
        Port(
            clk : in  STD_LOGIC;
            A : in  STD_LOGIC_VECTOR(7 downto 0);
            B : in  STD_LOGIC_VECTOR(7 downto 0);
            InAB : in  STD_LOGIC;
            Output : out  STD_LOGIC
            );
    end component;
    
    -- Mapping the signal Inputs and Outputs
    signal clk : STD_LOGIC := '0';
    signal A : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal B : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal InAB : STD_LOGIC := '0';
    signal Output : STD_LOGIC;
    
    -- Clock period definitions
    constant clock_period : time := 10 ns;
    
    -- Instantiate the Unit Under Test (UUT)
    begin
    uut: comparator 
    Port Map(
        clk => clk,
        A => A,
        B => B,
        InAB => InAB,
        Output => Output
        );
    
    -- Clock process definitions
    clock_process :process
    begin
    clk <= '0';
    wait for clock_period/2;
    clk <= '1';
    wait for clock_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
        begin 
            -- hold reset state for 80ns.
            wait for 80 ns; 
            A <= x"AA";
            B <= x"BB";
            wait for clock_period * 10;
            B <= x"AA";
            wait;
    end process;
end;