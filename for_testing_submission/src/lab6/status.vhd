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

entity Status is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           f : out  STD_LOGIC);
end Status;

architecture Behavioral of Status is

begin

f<= x(3) or x(2) or x(1) or x(0) after 7 ns;

end Behavioral;
