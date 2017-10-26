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
    Port (  s1, s2, a, b, c, d : in std_logic;
          f : out std_logic);
  end component;

  signal s1, s2, a, b, c, d : std_logic := '0';
  signal f : std_logic;
  
  begin
    uut : four_input_mux port map (s1, s2, a, b, c, d, f );
    tb  : process
          begin
            wait for 100ns;
              a <= '0';
              b <= '0';
              c <= '0';
              d <= '0';
              s1 <= '0';
              s2 <= '0';
            wait for 100ns;
              assert(f='0') report "Fail s1=0/s2=0/a=0/bcd don't care" severity error;
              s1 <= '0';
              s2 <= '0';
              a <= '1';
            wait for 100ns;
              assert(f='1') report "Fail s1=0/s2=0/a=1/bcd don't care" severity error;
              s1 <= '0';
              s2 <= '1';
            wait for 100ns;
              assert(f='0') report "Fail s1=0/s2=1/b=0/acd don't care" severity error;
              b <= '1';
            wait for 100ns;
              assert(f='1') report "Fail s1=0/s2=1/b=1/acd don't care" severity error;
              s1 <= '1';
              s2 <= '0';
            wait for 100ns;
              assert(f='0') report "Fail s1=0/s2=1/c=0/abd don't care" severity error;
              c <= '1';
            wait for 100ns;
              assert(f='1') report "Fail s1=0/s2=1/c=1/abd don't care" severity error;
              s1 <= '1';
              s2 <= '1';
            wait for 100ns;
              assert(f='0') report "Fail s1=0/s2=1/d=0/abc don't care" severity error;
              d <= '1';
            wait for 100ns;
              assert(f='1') report "Fail s1=0/s2=1/d=1/abc don't care" severity error;
            wait; --end of test: wait forever...
          end process;
end behavioural;
