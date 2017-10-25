

library ieee;
use ieee.std_logic_1164.all;

entity Mux_4_to_1_tb is
end Mux_4_to_1_tb;

architecture tb of Mux_4_to_1_tb is

   component Mux_4_to_1 is
      port( D0, D1, D2, D3 : in std_logic;
            S0, S1  : in std_logic;
            F : out std_logic);
   end component;

   signal D0, D1, D2, D3, S0, S1 , F : std_logic;
   signal selectors : std_logic_vector(1 downto 0);

begin
   mapping: Mux_4_to_1 port map(D0, D1, D2, D3, S0, S1, F );

   process
   begin

      S0 <= '0'; S1 <= '0';wait for 5 ns;
      S0 <= '1'; S1 <= '0';wait for 5 ns;
      S0 <= '0'; S1 <= '1';wait for 5 ns;
      S0 <= '1'; S1 <= '1';wait for 5 ns;
   end process;

   process(S1, S0)
   begin
      selectors <= S1&S0;
   end process;

   process
   begin




   --test1
      D0 <= '0';
      D1 <= '1';
      D2 <= '0';
      D3 <= '1';
      wait for 15 ns;
      case selectors is
       when "00" =>
         assert(F = '0') report "Error 1: 00" severity error;
       when "01" =>
         assert(F = '1') report "Error 1: 01" severity error;
       when "10" =>
         assert(F = '0') report "Error 1: 10" severity error;
       when "11" =>
         assert(F = '1') report "Error 1: 11" severity error;
       when others =>
         assert true;
      end case;

   -- test 2
      D0 <= '1';
      D1 <= '0';
      D2 <= '1';
      D3 <= '0';
      wait for 15 ns;
      case selectors is
       when "00" =>
         assert(F = '1') report "Error 2: 00" severity error;
       when "01" =>
         assert(F = '0') report "Error 2: 01" severity error;
       when "10" =>
         assert(F = '1') report "Error 2: 10" severity error;
       when "11" =>
         assert(F = '0') report "Error 2: 11" severity error;
       when others =>
         assert true;
      end case;
   end process;
end tb;
configuration cfg_tb of Mux_4_to_1_tb is
   for tb
   end for;
end cfg_tb;
