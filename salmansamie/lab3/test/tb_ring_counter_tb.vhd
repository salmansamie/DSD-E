--Engineer: Salman Rahman

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ring_counter_tb is
END ring_counter_tb;

ARCHITECTURE behavior OF ring_counter_tb is 
   --Inputs and outputs
   signal RST_I : STD_LOGIC := '0';
   signal CLK_I : STD_LOGIC := '0';
   signal Q : unsigned(3 downto 0);
   
   -- Clock period definitions
   constant CLK_I_period : time := 1 ns;

  begin
      -- Instantiate the Unit Under Test (UUT)
    uut: entity work.ring_counter PORT MAP (
            Q => Q,
            RST_I => RST_I,
            CLK_I => CLK_I
          );

    -- Clock process definitions
    CLK_I_process :process
    begin
          CLK_I <= '1';
          wait for CLK_I_period/2;
          CLK_I <= '0';
          wait for CLK_I_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin        
          RST_I <= '1';
        wait for 2 ns;    
          RST_I <= '0';
          wait for 5 ns;  
          RST_I <= '1';
          wait for 1 ns;  
          RST_I <= '0';
        wait;
    end process;

END; 
