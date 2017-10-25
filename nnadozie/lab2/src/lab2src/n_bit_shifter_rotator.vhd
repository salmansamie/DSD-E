----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:37:08 10/25/2016 
-- Design Name: 
-- Module Name:    n_bit_shifter_rotator - Behavioral 
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

entity n_bit_shifter_rotator is
	generic (n_i : positive := 4;
				n_c : positive := 2);
	
	port ( I0 	: in std_logic_vector(n_i-1 downto 0);
			 I1 	: in std_logic_vector(n_i-1 downto 0);
			 r_in : in std_logic;
			 r_s  : in std_logic;
			 l_in	: in std_logic;
			 l_s	: in std_logic;
			 cntrl: in std_logic_vector(n_c-1 downto 0);
			 f	 : out std_logic_vector(n_i-1 downto 0)
			 );
end n_bit_shifter_rotator;

architecture Behavioral of n_bit_shifter_rotator is

	component two_input_multiplexer
		port ( S	 : in std_logic;
				 I0 : in std_logic;
				 I1 : in std_logic;
				 f  : out std_logic
				);
	end component;
	
	component four_input_multiplexer
		port ( S : IN  std_logic_vector(n_c-1 downto 0);
				I0 : IN  std_logic;
				I1 : IN  std_logic;
				I2 : IN  std_logic;
				I3 : IN  std_logic;
				f : OUT  std_logic
			  );
	
	end component;
	
	signal f_r2mux : std_logic;
	signal f_l2mux : std_logic;
	
	begin

	inst : for i in (n_i-1) downto 0 generate
	
		inst_0 : if (i = 0) generate
			two_in_mux_0  : two_input_multiplexer port map (r_s, I0(n_i-1), r_in, f_r2mux);
			four_in_mux_0: four_input_multiplexer port map (cntrl, I0(i), f_r2mux, I0(i+1), I1(i), f(i));
		end generate inst_0;
		
		inst_n : if (i = n_i-1) generate
			two_in_mux_n1  : two_input_multiplexer port map (l_s, I0(0), l_in, f_l2mux);
			four_in_mux_n1 : four_input_multiplexer port map (cntrl, I0(i), I0(i-1), f_l2mux, I1(i), f(i));
		end generate inst_n;	
		
		inst_i : if not((i=0)or(i=n_i-1))generate
			four_in_mux_i : four_input_multiplexer port map (cntrl, I0(i), I0(i-1), I0(i+1), I1(i), f(i));
		end generate inst_i;

	end generate inst;
	
end Behavioral;
