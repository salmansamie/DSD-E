----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:15 10/24/2016 
-- Design Name: 
-- Module Name:    four_bit_add_sub - Behavioral 
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

entity four_bit_add_sub is
Port( A_input, B_input : IN std_logic_vector (3 downto 0);
		cont : IN std_logic;
		Sum : OUT std_logic_vector (3 downto 0);
		c_out : OUT std_logic);
end four_bit_add_sub;

architecture Behavioral of four_bit_add_sub is

component four_bit_LAC_adder
	Port ( InA, InB : IN std_logic_vector (3 downto 0);
		C_In : IN std_logic;
		S : OUT std_logic_vector (3 downto 0);
		c_out : OUT std_logic);
end component four_bit_LAC_adder;

component four_bit_xor_control
	Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           con : in  STD_LOGIC;
           f : out  STD_LOGIC_VECTOR(3 downto 0));
end component four_bit_xor_control;

signal sig : std_logic_vector (3 downto 0);

begin
XOR_control : four_bit_xor_control port map (B_input, cont, sig);
LAC_adder : four_bit_LAC_adder port map (A_input, sig, cont, Sum, c_out);
end Behavioral;

