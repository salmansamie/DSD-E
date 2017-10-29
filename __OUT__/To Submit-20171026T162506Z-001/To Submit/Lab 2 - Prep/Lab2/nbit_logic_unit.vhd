----------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Jariful Hoque
-- 
-- Create Date:    15:42:46 10/24/2017 
-- Design Name: 
-- Module Name:    nbit_logic_unit - Behavioral 
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

entity nbit_logic_unit is

	 -- GENERIC VALUE:
	 Generic ( n : positive := 4 );	

	 -- PORTS
    Port ( InA : in  STD_LOGIC_VECTOR(n-1 downto 0);
           InB : in  STD_LOGIC_VECTOR(n-1 downto 0);
           Control : in  STD_LOGIC_VECTOR(1 downto 0);
           Output : out  STD_LOGIC_VECTOR(n-1 downto 0));
end nbit_logic_unit;

architecture Behavioral of nbit_logic_unit is

-- COMPONENTS
component logic_slice
	Port ( a, b : in std_logic;
			 control : in std_logic_vector(1 downto 0);
			 output : out std_logic);
end component;

begin

-- FOR LOOP
-- create an instance of a for loop called "inst"
inst : for i in n-1 downto 0 generate

	-- generate n instances of the device "logic_slice"
	logic_slice_i : logic_slice port map (InA(i), InB(i), Control, Output(i));

end generate;

end Behavioral;

