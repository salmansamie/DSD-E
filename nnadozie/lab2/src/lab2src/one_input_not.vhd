----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis
-- Group 3
-- 
-- Create Date:    13:17:07 10/12/2016 
-- Design Name: 
-- Module Name:    one_input_not - Behavioral 
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

entity one_input_not is

    Port ( a : in std_logic;
           f : out std_logic);


end one_input_not;

architecture Behavioral of one_input_not is

begin

f<= not a after 7 ns;

end Behavioral;

