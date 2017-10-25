----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
-- 
-- Create Date:    17:43:12 10/19/2016 
-- Design Name: 
-- Module Name:    four_bit_xor_control - Behavioral 
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

entity four_bit_xor_control is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           con : in  STD_LOGIC;
           f : out  STD_LOGIC_VECTOR(3 downto 0));
end four_bit_xor_control;

architecture Behavioral of four_bit_xor_control is

component two_input_xor
	Port (a, b : in std_logic;
			S : out std_logic);
end component;

begin
XOR0 : two_input_xor port map (A(0), con, f(0));
XOR1 : two_input_xor port map (A(1), con, f(1));
XOR2 : two_input_xor port map (A(2), con, f(2));
XOR3 : two_input_xor port map (A(3), con, f(3));

end Behavioral;

