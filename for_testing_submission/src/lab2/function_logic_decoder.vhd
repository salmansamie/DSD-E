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

entity function_logic_decoder is
    Port ( condition_in : in  STD_LOGIC;
           function_in : in  STD_LOGIC_VECTOR (1 downto 0);
           load_out : out  STD_LOGIC;
           enable_out : out  STD_LOGIC);
end function_logic_decoder;

architecture Behavioral of function_logic_decoder is

component and_gate is
Port ( a : in std_logic;
		 b : in std_logic;
       f : out std_logic);
end component;

component not_gate is
Port (x : in std_logic;
      f : out std_logic);
end component;

component xor_gate is
Port ( a : in std_logic;
		 b : in std_logic;
       f : out std_logic);
end component;

component or_gate is
Port ( a : in std_logic;
		 b : in std_logic;
       f : out std_logic);
end component;

signal lc_or_and: std_logic;
signal xnor_to_or: std_logic;
signal not_or: std_logic;
signal xor_not: std_logic;
signal xor_sig: std_logic;

begin

--or_gate_lc: or_gate port map(condition_in, function_in(0),lc_or_and);
--and_gate_lc: and_gate port map(lc_or_and, function_in(1),load_out);
--xor_gate_i: xor_gate port map(function_in(0), function_in(1), xor_not);
--not_gate_xnor: not_gate port map(xor_not,not_or);
--and_gate_e: and_gate port map(condition_in, not_or, enable_out);

lc_or_and <= condition_in or not(function_in(0));

load_out <= lc_or_and and function_in(1);

xor_sig <= function_in(1) xor function_in(0);

xor_not <= not xor_sig;

enable_out <= xor_not or condition_in;

end Behavioral;
