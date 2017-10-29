--------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Jayant Shivarajan
--
-- Create Date:   16:32:02 10/23/2017
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY nbit_two_input_mux_tb IS
END nbit_two_input_mux_tb;
 
ARCHITECTURE behavior OF nbit_two_input_mux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_two_input_mux
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         Control : IN  std_logic;
         Output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');
   signal Control : std_logic := '0';

 	--Outputs
   signal Output : std_logic_vector(3 downto 0);
 
BEGIN
-- *** Comments on how this test bench works *** --		
-- Because we define a default value of 4 for our generic value
-- in the VHDL code for this device, the Xilinx ISE software will
-- automatically generate a test bench for an instance of the 
-- device of that width.
 
		-- truth table for the MUX control:

		--  control    InB     InA   : Output
		-----------------------------:------------
		--		 0	       B       A    :	 A     
		--		 1	       B       A    :    B     

		-- in this case, N is any 4-bit value

-- in this example we will use "0101" for input1 and "1010" for input0 so 
-- we expect to see:

		--  control    InB     InA   : Output
		-----------------------------:------------
		--		 0	     0101    1010   :  1010   
		--		 1	     0101    1010   :  0101 
		
-- ********************************************** --  
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_two_input_mux PORT MAP (
          InA => InA,
          InB => InB,
          Control => Control,
          Output => Output
        );
		  
	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		Control <= '0';   -- set control to zero, device should buffer the input
		InA <= "0101";  -- note double quotes for n-bit values
		InB <= "1010";  -- note double quotes for n-bit values

		wait for 100 ns;

		Control <= '1';	-- set control to 1, device should show "0101"

		wait; -- will wait forever
	END PROCESS;

END;
