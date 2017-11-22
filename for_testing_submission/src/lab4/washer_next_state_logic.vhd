--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity washer_next_state_logic is
	Port (state : in std_logic_vector (2 downto 0);
			control : in std_logic;
			door_open : in std_logic;
			next_state : out std_logic_vector (2 downto 0));
end washer_next_state_logic;

---the boolean equations:
-- n2 = s2.s1' + s2'.s1.s0 + s2'.s0'.c
-- n1 = s1'.s0 + s2'.s1.s0' + s1.s0'.c
-- n0 = s2'.s1.s0' + s1.s0'.c + s2.s1'.s0' +s2'.s0'.d'.c

--ARCHITECTURE
architecture Behavioral of washer_next_state_logic is

begin
  next_state(2) <= ( (state(2) and (not state(1))) or ((not state(2)) and state(1) and state(0)) or ((state(2)) and (not state(0)) and control) ) after 21 ns;
  next_state(1) <= ( ((not state(1)) and state(0)) or ((not state(2)) and state(1) and (not state(0))) or (state(1) and (not state(0)) and control) ) after 21 ns;
  next_state(0) <= ( ((not state(2)) and state(1) and (not state(0))) or (state(1) and (not state(0)) and control) or (state(2) and (not state(1)) and (not state(0))) or ((not state(0)) and (not door_open) and control) ) after 21 ns;
end Behavioral;
