----------------------------------------------------------------------------------
-- Company:  Group B
-- Engineer: Jariful Hoque
-- 
-- Create Date:    15:52:58 10/19/2017 
-- Design Name: 
-- Module Name:    three_input_or - Behavioral 
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

entity three_input_or is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f : out  STD_LOGIC);
end three_input_or;

architecture Behavioral of three_input_or is

begin
    f <= (a or (b or c)) after 7 ns;
end Behavioral;

