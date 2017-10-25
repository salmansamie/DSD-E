----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
-- 
-- Create Date:    16:15:35 10/24/2016 
-- Design Name: 
-- Module Name:    four_input_mux - Behavioral 
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

entity four_input_multiplexer is
    Port ( S : in std_logic_vector(1 downto 0);
           I0 : in std_logic;
           I1 : in std_logic;
			  I2 : in std_logic;
			  I3 : in std_logic;
           f : out std_logic);

end four_input_multiplexer;

architecture Behavioral of four_input_multiplexer is

begin

f <= ((not S(0)) and (not S(1)) and I0) or (( S(0)) and (not S(1)) and I1) or (not(S(0)) and (S(1)) and I2) or ((S(0)) and (S(1)) and I3);

end Behavioral;

