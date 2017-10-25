----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis
-- Group 3
-- 
-- Create Date:    22:28:26 10/12/2016 
-- Design Name: 
-- Module Name:    two_input_and - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity half_adder is
    Port ( A : in std_logic;
           B : in std_logic;
           S : out std_logic;
		   c : out std_logic );
end half_adder;

architecture Behavioral of half_adder is

	component two_input_and 
		Port (A, B : in std_logic;
				 c : out std_logic);
	end component;

	component two_input_xor
		Port (A, B : in std_logic;
				 S : out std_logic);
	end component;

begin
	SUM : two_input_xor port map (A, B, S);
	CARRY : two_input_and port map (A, B, c);

end Behavioral;