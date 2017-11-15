--------------------------------------------
--Engineer: Nnadozie Okeke
--Description: four_input_multiplexer test bench
---------------------------------------------

-- import std_logic libraries to use std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

entity four_input_mux_tb is
  --empty
  --because test benches have no external inputs nor outputs of their own
end four_input_mux_tb;

architecture behavioural of four_input_mux_tb is
  component four_input_mux
    Port (  s1, s0, a, b, c, d : in std_logic;
          f : out std_logic);
  end component;

  signal s1, s0, a, b, c, d : std_logic := '0';
  signal f : std_logic;

  begin
    uut : four_input_mux port map (s1, s0, a, b, c, d, f );
    tb  : process
          begin
            wait for 100ns;
            s1 <= '0';
            s0 <= '0';
            a <= '0';
            b <= '1';
            c <= '0';
            d <= '1';  --check f=0

            wait for 100ns;
            s1 <= '0';
            s0 <= '1';
            a <= '0';
            b <= '1';
            c <= '0';
            d <= '1'; --check f=1

            wait for 100ns;
            s1 <= '1';
            s0 <= '0';
            a <= '0';
            b <= '1';
            c <= '0';
            d <= '1'; --check f=0

            wait for 100ns;
            s1 <= '1';
            s0 <= '1';
            a <= '0';
            b <= '1';
            c <= '0';
            d <= '1'; --check f=1

            wait; --end of test: wait forever...
          end process;
end behavioural;
