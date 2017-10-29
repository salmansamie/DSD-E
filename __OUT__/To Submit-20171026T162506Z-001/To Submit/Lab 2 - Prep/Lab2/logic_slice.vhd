----------------------------------------------------------------------------------
-- Company: Group B
-- Engineer: Jariful Hoque
-- 
-- Create Date:    15:49:59 10/24/2017 
-- Design Name: 
-- Module Name:    logic_slice - Behavioral 
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

entity logic_slice is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           control : in  STD_LOGIC_VECTOR(1 downto 0);
           output : out  STD_LOGIC);
end logic_slice;

architecture Behavioral of logic_slice is

-- COMPONENTS
component not_gate
	Port ( a : in std_logic;
			 f : out std_logic);
end component;

component two_input_and
	Port ( a, b : in std_logic;
			 f : out std_logic);
end component;

component two_input_xor
	Port ( a, b : in std_logic;
			 f : out std_logic);
end component;

component two_input_or
	Port ( a, b : in std_logic;
			 f : out std_logic);
end component;

component four_input_mux
	Port ( a, b, c, d : in std_logic;
			 control : in std_logic_vector(1 downto 0);
			 f : out std_logic);
end component;

-- SIGNALS
signal not_to_a, and_to_b, xor_to_c, or_to_d : std_logic;

begin
	
	-- Instantiate logic gates
	not_g: not_gate port map (a, not_to_a);
	
	and_g: two_input_and port map (a, b, and_to_b);
	
	xor_g: two_input_xor port map (a, b, xor_to_c);
	
	or_g: two_input_or port map (a, b, or_to_d);
	
	-- Instantiate four input mux
	mux : four_input_mux port map (not_to_a, and_to_b, xor_to_c, or_to_d, control, output);

end Behavioral;

