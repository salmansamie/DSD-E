--Engineer: Salman Rahman

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ring_counter_tb IS
END ring_counter_tb;

ARCHITECTURE behavior OF ring_counter_tb IS 
   --Inputs
   signal RST_I : std_logic := '0';
   signal CLK_I : std_logic := '0';
    --Outputs
   signal DAT_O : unsigned(3 downto 0);
   -- Clock period definitions
   constant CLK_I_period : time := 1 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
   uut: entity work.ring_counter PORT MAP (
          DAT_O => DAT_O,
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
