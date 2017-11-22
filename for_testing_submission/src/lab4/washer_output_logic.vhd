--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity washer_output_logic is
	  Port (state : in std_logic_vector (2 downto 0);
			  door_lock : out std_logic;
           water_pump : out std_logic;
           soap : out std_logic;
           rotate_drum : out std_logic;
           drain : out std_logic);
end washer_output_logic;

---the boolean equations:


--ARCHITECTURE
architecture Behavioral of washer_output_logic is

begin
  door_lock <= (state(0) or state(1) or state(2)) after 7 ns;
  water_pump <= (((not state(2)) and (not state(1)) and state(0)) or (state(2) and (not state(1)) and (not state(0))) ) after 21 ns;
  soap <= ((not state(2)) and (not state(1)) and state(0)) after 14 ns;
  rotate_drum <= ((state(2) and state(0)) or ((not state(2)) and state(1) and (not state(0)))) after 21 ns;
  drain <= ((state(1) and state(0)) or (state(2) and state(1))) after 14 ns;
end Behavioral;
