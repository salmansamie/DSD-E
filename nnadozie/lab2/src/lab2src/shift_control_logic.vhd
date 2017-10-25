----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:54:22 10/25/2016 
-- Design Name: 
-- Module Name:    shift_control_logic - Behavioral 
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

entity shift_control_logic is
	generic (n_i : positive := 3;
				n_o : positive := 2);
	
	port ( input: in std_logic_vector(n_i-1 downto 0);
			 f	   : out std_logic_vector(n_o-1 downto 0)
			 );
	
end shift_control_logic;

architecture Behavioral of shift_control_logic is
begin
	f(0) <=  (not input(2)) and (input(1) or input(0));
	f(1) <=  (input(2)) and (input(1) or input(0));
	
end Behavioral;

