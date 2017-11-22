--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
-- Description:	 next_state_logic
--
-- Dependencies: ?
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity next_state_logic is
    Port (
     input : in std_logic_vector(3 downto 0);
     output : out std_logic_vector(3 downto 0));
end next_state_logic;

---the boolean equations:
-- o3 = i3.i2' + i3.i1' + i3.i0' + i3'.i2.i1.i0
-- o2 = i2.i1' + i2.i0' + i2'.i1.i0
-- o1 = i1'.i0 + i1.i0'
-- o0 = i0'

architecture Behavioral of next_state_logic is
  begin
    output(3) <= ( (input(3) and (not input(2))) or (input(3) and (not input(1))) or (input(3) and (not input(0))) or ((not input(3)) and input(2) and input(1) and input(0)) ) after 14 ns;
    output(2) <= ( (input(2) and (not input(1))) or (input(2) and (not input(0)) ) or ((not input(2)) and input(1) and input(0)) ) after 14 ns;
    output(1) <= (input(0) xor input (1)) after 14 ns;
    output(0) <= (not input(0)) after 14 ns;
end Behavioral;
