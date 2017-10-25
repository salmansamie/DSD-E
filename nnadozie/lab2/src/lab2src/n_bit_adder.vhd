----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
-- 
-- Create Date:    18:10:31 10/19/2016 
-- Design Name: 
-- Module Name:    n_bit_adder - Behavioral 
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

entity n_bit_adder is
	 	 
	Generic( n : positive := 4);
		Port( A_input, B_input, c_input : IN std_logic_vector (n-1 downto 0);
		S : OUT std_logic_vector (n-1 downto 0);
		c_out1 : OUT std_logic);
		
end n_bit_adder;

architecture Behavioral of n_bit_adder is

component full_adder
	Port (A, B, c : in std_logic;
			S, c_out : out std_logic);
end component;

begin
 inst0: for i in 0 to n-1 generate
 full_adder_i : full_adder
			port map (
			A => A_input(i), 
			B => B_input(i), 
			c => c_input(i), 
			S => S(i),
			c_out => open
			);
	end generate inst0;
	
	c_out1 <= (A_input(n-1) and B_input(n-1)) or (A_input(n-1) and c_input(n-1)) or (B_input(n-1) and c_input(n-1)) after 14ns;

end Behavioral;