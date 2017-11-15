--------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Nnadozie Okeke
--
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- *********************************************************************


-- ENTITY
entity nbit_universal_shiftreg is
	 generic (n : positive := 4);
    Port (
           dinputs : in std_logic_vector(n-1 downto 0);
           shift_in : in std_logic;
           shiftrotate : in std_logic;
           f : std_logic_vector(1 downto 0);
           CLK : in std_logic;
           reset : in std_logic;
           preset : in std_logic;
           qoutputs : out std_logic_vector(n-1 downto 0));
end nbit_universal_shiftreg;

-- ARCHITECTURE
architecture Behavioral of nbit_universal_shiftreg is

-- COMPONENT
component nbit_reg
	 generic ( n : positive := 4);
    Port ( Dinputs : in std_logic_vector(n-1 downto 0);
           CLK : in std_logic;
           reset : in std_logic;
           preset : in std_logic;
           q : out std_logic_vector(n-1 downto 0);
           qnot : out std_logic_vector(n-1 downto 0));
end component;

component shift_rotate is
    Generic ( n : positive := 4 );
    Port (
      Data_In1, Data_In2 : in std_logic_vector(n-1 downto 0);
      Right_in, Right_Select, Left_in, Left_Select : in std_logic;
      Control : in std_logic_vector(1 downto 0);
      Output : out std_logic_vector(n-1 downto 0)
    );
end component;

-- INTERNAL SIGNALS
signal feedback : std_logic_vector (n-1 downto 0);
signal shift_to_reg : std_logic_vector (n-1 downto 0);
signal dummy : std_logic_vector (n-1 downto 0);

begin

reg : nbit_reg generic map (n) port map (shift_to_reg(n-1 downto 0), CLK, reset, preset, feedback(n-1 downto 0), dummy(n-1 downto 0));
sr : shift_rotate generic map (n) port map (feedback(n-1 downto 0), dinputs, shift_in, shiftrotate, shift_in, shiftrotate, f, shift_to_reg(n-1 downto 0));
qoutputs <= feedback(n-1 downto 0);

end Behavioral;
