----------------------------------------------------------------------------------
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

entity nbit_rfc_register is
GENERIC (n: positive := 4);
    Port ( Data_in : in  STD_LOGIC_VECTOR (n-1 downto 0);
           REA : in  STD_LOGIC;
           REB : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           Clock : in  STD_LOGIC;

           OutA : out  STD_LOGIC_VECTOR (n-1 downto 0);
           OutB : out  STD_LOGIC_VECTOR (n-1 downto 0));
end nbit_rfc_register;

architecture Behavioral of nbit_rfc_register is

component register_file_cell is
Port ( DIN : in  STD_LOGIC;
           REA : in  STD_LOGIC;
           REB : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           OA : out  STD_LOGIC;
           OB : out  STD_LOGIC);
end component;

begin

	inst : for i in n-1 downto 0 generate
				rfc_0  :  register_file_cell port map (Data_in(i),REA, REB, WE,Clock, OutA(i),OutB(i));

	end generate inst;

end Behavioral;
