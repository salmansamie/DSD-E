-- Engineer: Simran Kaur Phul
-- Description: Asynchronous reset and preset code


 library IEEE;
 use IEEE.std_logic_1164.all;
 entity d_flipflop is  
 port (d, clk, reset, preset : in std_logic;
           q,qnot: out std_logic);
 end d_flipflop;
 architecture behavioural of d_flipflop is
 begin
                process (clk, reset, preset) begin
                          if (reset = '1') then

                          q <= '0' after 7 ns;
                          qnot<='1' after 7 ns;

                          elsif (preset = '1') then

                          q <= '1' after 7 ns;
                          qnot <='0' after 7 ns;

                          elsif (clk'event and clk = '1') then

                          q <= d after 7 ns;
                          qnot<= not d after 7 ns;

                          end if;
                end process;
 end behavioural;