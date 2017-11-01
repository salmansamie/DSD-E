-- Engineer: Simran Kaur Phul
-- Description: Asynchronous reset and preset code
 
 
 library IEEE;  
 use IEEE.std_logic_1164.all;  
 entity D_flipflop is  
 port (d, clk, reset, preset : in std_logic;  
           q,qnot: out std_logic);  
 end D_flipflop;  
 architecture behavioural of D_flipflop is  
 begin  
                process (clk, reset, preset) begin  
                          if (reset = '1') then  
                          q <= '0';  
                          qnot<='1';  
                          elsif (preset = '1') then  
                          q <= '1';  
                          qnot<='0';  
                          elsif (clk'event and clk = '1') then  
                          q <= d;  
                          qnot<= not d;  
                          end if;  
                end process;  
 end behavioural;