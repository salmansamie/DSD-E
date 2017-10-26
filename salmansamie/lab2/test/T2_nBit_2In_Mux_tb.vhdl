--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk

---------------------------------
-- Test 02 for n-bit 2-Input Mux
-- with 4-bit input
---------------------------------

LIBRARY ieee;  
USE ieee.std_logic_1164.ALL;  

ENTITY fourBit_2IN_MUX_tb IS  
END fourBit_2IN_MUX_tb;  

ARCHITECTURE behavior OF fourBit_2IN_MUX_tb IS   
        -- Component Declaration for the Unit Under Test (UUT)  
        COMPONENT nbittwoinputmux  
        PORT(  
            InA : IN std_logic_vector(3 downto 0);  
            InB : IN std_logic_vector(3 downto 0);  
            Control : IN std_logic;  
            Output : OUT std_logic_vector(3 downto 0)  
            );  
        END COMPONENT;  

--Signal Inputs  
signal InA : std_logic_vector(3 downto 0) := (others => '0');  
signal InB : std_logic_vector(3 downto 0) := (others => '0');  
signal Control : std_logic := '0';  
    --Outputs  
signal Output : std_logic_vector(3 downto 0);  
BEGIN  

--Instantiate the Unit Under Test (UUT)  
uut: nbittwoinputmux PORT MAP (  
                                InA => InA,  
                                InB => InB,  
                                Control => Control,  
                                Output => Output  
                                );

--Stimulus process (a system/method used from external source, not a part of design)
--here, stim process is used as the control for the mux
stim_proc: process  
begin            
--hold reset state for 100 ns.  
wait for 100 ns;       
        InA <= "0001";  
        InB <= "0011";  
        Control <= '0';  
        wait for 100 ns;  
        InA <= "0001";  
        InB <= "0011";  
        Control <= '1';  
wait;  
end process;  
END; 