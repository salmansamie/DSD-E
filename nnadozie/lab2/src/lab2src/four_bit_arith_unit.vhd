----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
-- 
-- Create Date:    16:29:01 10/25/2016 
-- Design Name: 
-- Module Name:    four_bit_arith_unit - Behavioral 
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

entity four_bit_arith_unit is
Port( InA, InB : IN std_logic_vector (3 downto 0);
		cntrl : IN std_logic_vector (1 downto 0);
		Sum : OUT std_logic_vector (3 downto 0);
		c_out : OUT std_logic);
end four_bit_arith_unit;

architecture Behavioral of four_bit_arith_unit is

component n_bit_two_input_mux
generic (n : positive := 4) ;
	
	port ( S  : in std_logic;
			 I0 : in std_logic_vector(n-1 downto 0);
			 I1 : in std_logic_vector(n-1 downto 0);
			 f	 : out std_logic_vector(n-1 downto 0)
			 );
			 
end component;
 
component four_bit_add_sub
	Port( A_input, B_input : IN std_logic_vector (3 downto 0);
			cont : IN std_logic;
			Sum : OUT std_logic_vector (3 downto 0);
			c_out : OUT std_logic);
end component;

signal sig : std_logic_vector (3 downto 0);

begin
two_input_MUX: n_bit_two_input_mux port map (cntrl(0), "0001", InB, sig);
Add_Sub:  four_bit_add_sub port map(InA, sig, cntrl(1), Sum, c_out);
end Behavioral;

