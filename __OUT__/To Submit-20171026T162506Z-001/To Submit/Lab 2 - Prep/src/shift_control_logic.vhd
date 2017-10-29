----------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Raiyan Shaheen
-- 
-- Create Date:    16:23:36 10/24/2017 
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
    Port ( Input : in  STD_LOGIC_VECTOR(2 downto 0);
           Output : out  STD_LOGIC_VECTOR(1 downto 0));
end shift_control_logic;

architecture Behavioral of shift_control_logic is

begin
	Output(0) <= (not Input(2)) and (Input(1) or Input(0)) after 14 ns;
	Output(1) <= Input(2) and (Input(1) or Input(0)) after 14 ns;
end Behavioral;

