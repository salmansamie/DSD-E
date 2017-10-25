----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3 
-- 
-- Create Date:    11:04:45 10/20/2016 
-- Design Name: 
-- Module Name:    four_bit_LAC_adder - Behavioral 
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

entity four_bit_LAC_adder is
Port( InA, InB : IN std_logic_vector (3 downto 0);
		C_In : IN std_logic;
		S : OUT std_logic_vector (3 downto 0);
		c_out : OUT std_logic);
end four_bit_LAC_adder;

architecture Behavioral of four_bit_LAC_adder is

component four_bit_LAC
	Port (InA, InB : in std_logic_vector(3 downto 0);
			C_In : in std_logic;
			C_terms : out std_logic_vector(3 downto 0)
			);
end component;

component n_bit_adder
	Port (A_input, B_input, c_input : IN std_logic_vector (3 downto 0);
		S : OUT std_logic_vector (3 downto 0);
		c_out1 : OUT std_logic
		);
end component;

signal s_c_terms : std_logic_vector(3 downto 0);

begin
LAC : four_bit_LAC port map (InA, InB, C_In, s_c_terms);
Adder : n_bit_adder port map (InA, InB, s_c_terms, S, c_out);
end Behavioral;

