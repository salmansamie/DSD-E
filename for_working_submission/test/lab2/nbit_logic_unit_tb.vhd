--------------------------------------------
--Engineer: Nnadozie Okeke
---------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity nbit_logic_unit_tb is
end nbit_logic_unit_tb;

architecture behavioural of nbit_logic_unit_tb is
  component nbit_logic_unit
   Generic (n : positive := 4);
	Port (	InA, InB : in std_logic_vector(3 downto 0);
		    	Control : in std_logic_vector(1 downto 0);
			 		Output : out std_logic_vector(3 downto 0));
  end component;

  signal Control : std_logic_vector(1 downto 0) := (others=>'0');
  signal InA, InB : std_logic_vector(3 downto 0) := (others=>'0');
  signal Output : std_logic_vector(3 downto 0);
  
  begin
	uut: nbit_logic_unit PORT MAP(
		InA => InA,
		InB => InB,
		Control => Control,
		Output => Output
	);
    tb  : process
          begin
            wait for 100ns;
              Control <= "00";
              InA <= "0000";
              InB <= "0101";  --check output= "1111"
            wait for 100ns;

			     Control <= "01";
              InA <= "0000";
              InB <= "0101"; --check output= "0000"
            wait for 100ns;
 
			  
			     Control <= "10";
              InA <= "0001";
              InB <= "0101"; --check output= "0100"
            wait for 100ns;
			  
			     Control <= "11";
              InA <= "0000";
              InB <= "0101"; --check output= "0101"
			  
            wait; --end of test: wait forever...
          end process;
end behavioural;
