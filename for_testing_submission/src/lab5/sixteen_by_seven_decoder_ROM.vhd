-- Engineer: Simran Kaur Phul
-- Description: 16 x 7-bit ROM seven-segment display decoder

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

entity sixteen_by_seven_decoder_ROM is  
    Port (address: in STD_LOGIC_VECTOR(3 downto 0);  
        firstDisplay: out std_logic;  
        data_outputs: out STD_LOGIC_VECTOR(6 downto 0));  
end sixteen_by_seven_decoder_ROM;  

architecture Behavioural of sixteen_by_seven_decoder_ROM is  
signal delayVal: STD_LOGIC_VECTOR(6 downto 0);  
    begin  
        with address select  
        DelayVal <= "1000000" when "0000", -- 0  
        "1111001" when "0001", -- 1  
        "0100100" when "0010", -- 2  
        "0110000" when "0011", -- 3  
        "0011001" when "0100", -- 4  
        "0010010" when "0101", -- 5  
        "0000010" when "0110", -- 6  
        "1111000" when "0111", -- 7  
        "0000000" when "1000", -- 8  
        "0010000" when "1001", -- 9  
        "0001000" when "1010", -- a  
        "0000011" when "1011", -- b  
        "1000110" when "1100", -- c  
        "0100001" when "1101", -- d  
        "0000110" when "1110", -- e  
        "0001110" when "1111", -- f  
        "XXXXXXX" when other;  
            data_outputs <= DelayVal after 14 ns;  
            firstDisplay <='1';                 
 end Behavioural;  