 --------------------------------------------------------------------------------
 
-- Engineer: Abdullah Noman
-- Description:	 4-input Multiplexer

--------------------------------------------------------------------------------

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

entity four_input_mux is  
port (  
    a : in std_logic;  
    b : in std_logic;  
    c : in std_logic;  
    d : in std_logic;  
    control : in std_logic_vector(1 downto 0);  
    output : out std_logic);  
end four_input_mux;
  
architecture Behavioral of four_input_mux is  
begin  
	process(a,b,c,d,control)  
	begin  
		case control is  
		when "00" => output <= a;  
		when "01" => output <= b;  
		when "10" => output <= c;  
		when others => output <= d;  
		end case;
		
	end process;  
	
 end Behavioral;  