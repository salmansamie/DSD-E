----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jayant Shivarajan
-- 
-- Create Date:    15:56:45 10/19/2017 
-- Design Name: 
-- Module Name:    four_input_nor - Behavioral 
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

entity four_input_nor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           f : out  STD_LOGIC);
end four_input_nor;

architecture Behavioral of four_input_nor is

begin
    process (a,b,c,d)
    begin
        if (a='0' and (b='0' and (c ='0' and d='0'))) then
            f <= '1' after 7 ns;
        else
            f <= '0' after 7 ns;
        end if;
    end process;
end Behavioral;

