----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jayant Shivarajan
-- 
-- Create Date:    16:00:14 10/19/2017 
-- Design Name: 
-- Module Name:    two_input_nor - Behavioral 
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

entity two_input_nor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           f : out  STD_LOGIC);
end two_input_nor;

architecture Behavioral of two_input_nor is

begin
    f <= a nor b after 7 ns;
end Behavioral;
