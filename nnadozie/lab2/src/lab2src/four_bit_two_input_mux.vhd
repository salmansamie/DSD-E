----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
-- 
-- Create Date:    15:52:05 10/19/2016 
-- Design Name: 
-- Module Name:    four_bit_two_input_mux - Behavioral 
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

entity four_bit_two_input_mux is
    Port ( a0 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           a3 : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           b3 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           f0 : out  STD_LOGIC;
           f1 : out  STD_LOGIC;
           f2 : out  STD_LOGIC;
           f3 : out  STD_LOGIC);
end four_bit_two_input_mux;

architecture Behavioral of four_bit_two_input_mux is
-- COMPONENTS
component two_input_multiplexer
	Port (S, I0, I1 : in std_logic;
			f : out std_logic);
end component;

begin
MUX0 : two_input_multiplexer port map (s0, a0, b0, f0);
MUX1 : two_input_multiplexer port map (s0, a1, b1, f1);
MUX2 : two_input_multiplexer port map (s0, a2, b2, f2);
MUX3 : two_input_multiplexer port map (s0, a3, b3, f3);
end Behavioral;

