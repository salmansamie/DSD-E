----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
-- 
-- Create Date:    16:00:05 10/25/2016 
-- Design Name: 
-- Module Name:    n_bit_logic_unit - Behavioral 
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

entity n_bit_logic_unit is
 -- GENERIC VALUE:
	 Generic ( n : positive := 4 );
	 
	 -- PORTS  
    Port ( InA, InB : in std_logic_vector(n-1 downto 0);
           Cntrl : in std_logic_vector(1 downto 0);
           Output : out std_logic_vector(n-1 downto 0));
end n_bit_logic_unit;

architecture Behavioral of n_bit_logic_unit is
component logic_bit_slice
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC_VECTOR (1 downto 0);
           f : out  STD_LOGIC);
end component;

begin

-- FOR LOOP
-- create an instance of a for loop called "inst"
inst : for i in n-1 downto 0 generate

	-- generate n instances of the device "two_input_xor"
	logic_slice : logic_bit_slice port map (InA(i), InB(i), Cntrl, Output(i));

end generate;

end Behavioral;

