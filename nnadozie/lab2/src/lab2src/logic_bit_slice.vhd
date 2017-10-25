----------------------------------------------------------------------------------
-- Engineer: Jack Cockinis, Vojislav Djurovic, Marco Datola
-- Group 3
-- 
-- Create Date:    16:41:18 10/24/2016 
-- Design Name: 
-- Module Name:    logic_bit_slice - Behavioral 
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

entity logic_bit_slice is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC_VECTOR (1 downto 0);
           f : out  STD_LOGIC);
end logic_bit_slice;

architecture Behavioral of logic_bit_slice is

component four_input_multiplexer
	Port (I0,I1,I2,I3 : in std_logic;
			S : in std_logic_vector (1 downto 0);
			f: out std_logic);
end component;

component one_input_not
	Port (a : in std_logic;
			f : out std_logic);
end component;

component two_input_and
	Port (a, b : in std_logic;
			c : out std_logic);
end component;

component two_input_xor
	Port (a, b : in std_logic;
			S : out std_logic);
end component;

component two_input_or
	Port (a, b : in std_logic;
			c_out : out std_logic);
end component;


signal not_out : STD_LOGIC := '0'; 
signal and_out : STD_LOGIC := '0'; 
signal xor_out : STD_LOGIC := '0'; 
signal or_out : STD_LOGIC := '0'; 


begin

not_o :one_input_not port map(a,not_out);
and_o :two_input_and port map(a,b,and_out);
xor_o :two_input_xor port map(a,b,xor_out);
or_o :two_input_or port map(a,b,or_out);
mux_o :four_input_multiplexer port map(not_out,and_out,xor_out,or_out,c,f);


end Behavioral;

