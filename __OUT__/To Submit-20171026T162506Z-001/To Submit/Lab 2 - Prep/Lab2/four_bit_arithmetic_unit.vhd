----------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Jayant Shivarajan
-- 
-- Create Date:    16:57:33 10/23/2017 
-- Design Name: 
-- Module Name:    four_bit_arithmetic_unit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_arithmetic_unit is	 
	 
	 -- PORTS  
    Port ( InA : in  STD_LOGIC_VECTOR(3 downto 0);
           InB : in  STD_LOGIC_VECTOR(3 downto 0);
           Control : in  STD_LOGIC_VECTOR(1 downto 0);
           Sum : out  STD_LOGIC_VECTOR(3 downto 0);
           C_out : out  STD_LOGIC);
end four_bit_arithmetic_unit;

-- ARCHITECTURE
architecture Behavioral of four_bit_arithmetic_unit is

-- COMPONENTS
component nbit_two_input_mux
	Generic (n : positive); -- generic value
	Port ( InA, InB : in std_logic_vector(n-1 downto 0);
		    Control : in std_logic;
			 Output : out std_logic_vector(n-1 downto 0));
end component;

component four_bit_adder
	Port ( InA, InB : in std_logic_vector(3 downto 0);
		    Control : in std_logic;
			 Sum : out std_logic_vector(3 downto 0);
			 C_out : out std_logic);
end component;

-- SIGNALS
signal a_to_mux, mux_to_b : std_logic_vector(3 downto 0);

begin
	
	a_to_mux <= "0001";
	-- instantiate the mux with a bit-width of 4 (map generic value "n" to 4)
	mux : nbit_two_input_mux generic map (4) port map (a_to_mux, InB, Control(0), mux_to_b);
	
	-- instantiate four bit adder
   fourbitadder: four_bit_adder port map (InA, mux_to_b, Control(1), Sum, C_out);
	
end Behavioral;

