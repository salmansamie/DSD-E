--------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Nnadozie Okeke
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTITY
entity four_bit_linear_feedback_shiftreg is
    Port ( CLK : in std_logic;
           reset : in std_logic;
           preset : in std_logic;
           Q_shift : out std_logic_vector(3 downto 0));
end four_bit_linear_feedback_shiftreg;

-- ARCHITECTURE
architecture Behavioral of four_bit_linear_feedback_shiftreg is

-- COMPONENT
component nbit_shiftreg
  generic (n : positive := 8);
   Port ( shift_in : in std_logic;
          CLK : in std_logic;
          reset : in std_logic;
          preset : in std_logic;
          Q_shift : out std_logic_vector(n-1 downto 0));
end component;

component xor_gate
  Port (a, b: in std_logic;
      f: out std_logic);
end component;
-- INTERNAL SIGNALS
signal s0 : std_logic;

begin

xorg : xor_gate port map (Q_shift(3), Q_shift(2), s0);
reg : nbit_shiftreg generic map (n) port map (s0, CLK, reset, preset, Q_shift);

end Behavioral;
