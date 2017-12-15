----------------------------------------------------------------------------------

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

entity output_rom is
    Port ( state_variable : in  STD_LOGIC_VECTOR (3 downto 0);
           function_out : inout  STD_LOGIC_VECTOR (1 downto 0);
           condition_out : inout  STD_LOGIC_VECTOR (1 downto 0);
           Datapath_control_ouput : inout  STD_LOGIC_VECTOR (19 downto 0);
           done : out  STD_LOGIC;
           branch_address_m : inout  STD_LOGIC_VECTOR (3 downto 0));
end output_rom;

architecture Behavioral of output_rom is


signal delay : std_logic_vector(19 downto 0) ;
signal done_delay : std_logic;
signal func_delay : std_logic_vector (1 downto 0);
signal cond_delay : std_logic_vector (1 downto 0);
signal address_delay : std_logic_vector (3 downto 0);
signal choice : std_logic_vector (3 downto 0);

begin
choice(3 downto 0) <= state_variable;

with choice select
delay <=   "00000000000000000000" when "0000",
           "10001000000000000000" when "0001",
           "00101000000001010000" when "0010",
           "00011000100001000000" when "0011",
           "00111001101010010000" when "0100",
           "00101011110011010000" when "0101",
           "00001000100001011100" when "0110",
           "00000000000000000000" when "0111",
			  "10000000000000000000" when others;


with choice select
done_delay <=    '0' when "0000",
                 '0' when "0001",
                 '0' when "0010",
                 '0' when "0011",
                 '0' when "0100",
                 '0' when "0101",
					  '0' when "0110",
                 '1' when "0111",
				     '0' when others;
with choice select
func_delay <=    "01" when "0000",
                 "00" when "0001",
                 "00" when "0010",
                 "00" when "0011",
                 "00" when "0100",
                 "00" when "0101",
					  "11" when "0110",
                 "10" when "0111",
					  "00" when others;
with choice select
cond_delay <=    "01" when "0000",
                 "00" when "0001",
                 "00" when "0010",
                 "00" when "0011",
                 "00" when "0100",
                 "00" when "0101",
					  "10" when "0110",
                 "00" when "0111",
					  "00" when others;
	with choice select
address_delay <= "0000" when "0000",
                 "0000" when "0001",
                 "0000" when "0010",
                 "0000" when "0011",
                 "0000" when "0100",
                 "0000" when "0101",
					  "0100" when "0110",
                 "0000" when "0111",
				     "0000" when others;


Datapath_control_ouput <= delay after 14 ns;
done <= done_delay after 14 ns;
function_out <= func_delay after 14 ns;
condition_out <= cond_delay after 14 ns;
branch_address_m <= address_delay after 14 ns;


end Behavioral;
