--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
-- Description:	 A 1 bit logic function bit-slice
--
-- Dependencies: ?
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity one_bit_logic_slice is
	Port (	a, b : in std_logic;
		    	Control : in std_logic_vector(1 downto 0);
			 		Output : out std_logic);
end one_bit_logic_slice;

architecture Behavioral of one_bit_logic_slice is

  component four_input_mux
    Port (  s1, s2, a, b, c, d : in std_logic;
          f : out std_logic);
  end component;

  component not_gate
    port( a : in std_logic;
          f : out std_logic);
  end component;

  component and_gate
      Port (a, b: in std_logic;
               f: out std_logic);
  end component;

  component xor_gate
      port( a, b : in std_logic;
               f : out std_logic);
  end component;

  component or_gate
      port( a, b : in std_logic;
               f : out std_logic);
  end component;

  signal s0, s1, s2, s3 : std_logic

  begin
    NotGate   : not_gate port map (a, s0);
    AndGate  : and_gate port map (a, b, s1);
    XorGate  : and_gate port map (a, b, s2);
    OrGate    : or_gate port map (a, b, s3);
    FourInMux : four_input_mux port map (Control(0), Control(1), s0, s1, s2, s3, Output);


end Behavioral;
