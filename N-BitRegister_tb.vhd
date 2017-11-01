-- Engineer: Simran Kaur Phul
-- Description: N-bit register testbench


LIBRARY ieee;  
 USE ieee.std_logic_1164.ALL;  
 ENTITY nbitregistertestbench IS  
 END nbitregistertestbench;  
 ARCHITECTURE behaviour OF nbitregistertestbench IS   
   -- declare component for the Unit Under Test  
   COMPONENT nbitregister  
   PORT(  
      Dinputs : IN std_logic_vector(3 downto 0);  
      CLK : IN std_logic;  
      reset : IN std_logic;  
      preset : IN std_logic;  
      q : OUT std_logic_vector(3 downto 0);  
      qnot : OUT std_logic_vector(3 downto 0)  
     );  
   END COMPONENT;  

   --Inputs  
   signal Dinputs : std_logic_vector(3 downto 0) := (others => '0');  
   signal CLK : std_logic := '0';  
   signal reset : std_logic := '0';  
   signal preset : std_logic := '0';  

   --Outputs  
   signal q : std_logic_vector(3 downto 0);  
   signal qnot : std_logic_vector(3 downto 0); 

   -- Clock period definitions  
   constant CLK_period : time := 10 ns; 

 BEGIN  
      -- Instantiate the Unit Under Test  
   uut: nbitregister PORT MAP (  
      Dinputs => Dinputs,  
      CLK => CLK,  
      reset => reset,  
      preset => preset,  
      q => q,  
      qnot => qnot  
     );  
  clk <= not clk after 50 ns; -- period = 100ns  
           tb : PROCESS  
      BEGIN  
                wait for 100 ns;  
                reset <= '1';  
                wait for 120 ns;  
                reset <= '0';  
                wait for 120 ns;  
                preset <= '1';  
                wait for 120 ns;  
                preset <= '0';  
                wait for 120 ns;  
                Dinputs <= "1111";  
                wait for 120 ns;  
                Dinputs <= "0000";  
                wait for 120 ns;   
    wait;  
   end process;  
 END;  