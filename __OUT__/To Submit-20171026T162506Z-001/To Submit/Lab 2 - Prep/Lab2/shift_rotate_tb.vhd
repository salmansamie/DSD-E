--------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Jayant Shivarajan
--
-- Create Date:   04:29:17 10/25/2017
---------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shift_rotate_tb IS
END shift_rotate_tb;
 
ARCHITECTURE behavior OF shift_rotate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_rotate
    PORT(
         Data_In1 : IN  std_logic_vector(3 downto 0);
         Data_In2 : IN  std_logic_vector(3 downto 0);
         Right_In : IN  std_logic;
         Right_Select : IN  std_logic;
         Left_in : IN  std_logic;
         Left_select : IN  std_logic;
         control : IN  std_logic_vector(1 downto 0);
         Output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_In1 : std_logic_vector(3 downto 0) := (others => '0');
   signal Data_In2 : std_logic_vector(3 downto 0) := (others => '0');
   signal Right_In : std_logic := '0';
   signal Right_Select : std_logic := '0';
   signal Left_in : std_logic := '0';
   signal Left_select : std_logic := '0';
   signal control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(3 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_rotate PORT MAP (
          Data_In1 => Data_In1,
          Data_In2 => Data_In2,
          Right_In => Right_In,
          Right_Select => Right_Select,
          Left_in => Left_in,
          Left_select => Left_select,
          control => control,
          Output => Output
        );

   tb: process
   begin		
      -- hold reset state for 100 ns.
		
		wait for 100 ns;

      Control      <=  "01";
		Right_Select <=  '0';
		Left_select  <=  '0';       --Rotate Left
		Data_In1     <=  "0100"; 
		Data_In2     <=  "0100";
		Right_In     <=  '1';
		Left_in      <=  '1';
		
      wait for 100 ns;

      Control      <=  "01";
		Right_Select <=  '1';
		Left_select  <=  '1';       --Shift Left
		Data_In1     <=  "0100"; 
		Data_In2     <=  "0100";
		Right_In     <=  '1';
		Left_in      <=  '1';
		
		
		
		wait for 100 ns;

      Control      <=  "10";
		Right_Select <=  '0';
		Left_select  <=  '0';       --Rotate Right
		Data_In1     <=  "0100"; 
		Data_In2     <=  "0100";
		Right_In     <=  '1';
		Left_in      <=  '1';
		
		wait for 100 ns;

      Control      <=  "10";
		Right_Select <=  '1';
		Left_select  <=  '1';       --Shift Right
		Data_In1     <=  "0100"; 
		Data_In2     <=  "0100";
		Right_In     <=  '1';
		Left_in      <=  '1';

      wait;
   end process;

END;
