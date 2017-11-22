--------------------------------------------------------------------------------

-- Engineer: Abdullah Noman
-- Description: modulo-m counter with synchronous reset

--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------
-- Top level design
----------------------------------------------------

entity modm_sync_count is
Generic (n: positive:= 8);
Port ( M_value : in STD_LOGIC_VECTOR (n-1 downto 0);
	countEnable : in STD_LOGIC;
	CLK : in STD_LOGIC;
	reset : in STD_LOGIC;
	Q_Out : out STD_LOGIC_VECTOR(n-1 downto 0));
end modm_sync_count;

----------------------------------------------------
-- Internal Architecture
----------------------------------------------------

architecture Behavioral of modm_sync_count is

-- COMPONENT: 8-bit comparator
component eight_bit_comparator is
    generic(n:positive:=8);
        Port (
            InA : in STD_LOGIC_VECTOR (n-1 downto 0);
            InB : in STD_LOGIC_VECTOR (n-1 downto 0);
            Output : out STD_LOGIC
            );
end component;

-- COMPONENT: nbit synchronous counter parallel load

component nbit_parallel_load_sync_counter is
generic(n:positive:=8);
   Port (dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
        loadcount : in STD_LOGIC;
        countenable : in STD_LOGIC;
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        qoutputs : inout STD_LOGIC_VECTOR (n-1 downto 0)
        );
end component;

-- Signals

signal counter_to_comparator: std_logic_vector(n-1 downto 0);
signal comparator_to_counter: std_logic;
constant din : std_logic_vector := "00000000";
begin
	newComparator: eight_bit_comparator port map (counter_to_comparator, M_value, comparator_to_counter);
	newCounter: nbit_parallel_load_sync_counter port map (din, comparator_to_counter, countEnable, CLK, reset, counter_to_comparator);
	Q_Out <= counter_to_comparator;
end Behavioral;  
