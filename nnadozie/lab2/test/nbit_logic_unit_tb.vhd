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
              InB <= "0101";
            wait for 100ns;
              assert(Output="1111") report "c=00, a=0000, b=0101" severity error;
              InA <= "1111";
              InB <= "0101";
			wait for 100ns;
              assert(Output="0000") report "c=00, a=1111, b=0101" severity error;
              InA <= "0101";
              InB <= "0000"; 		  
            wait for 100ns;
              assert(Output="1010") report "c=00, a=0101, b=0000" severity error;
              InA <= "1010";
              InB <= "1111";
            wait for 100ns;
              assert(Output="0101") report "c=00, a=1010, b=1111" severity error;
			  
			  
			  Control <= "01";
              InA <= "0000";
              InB <= "0101";
            wait for 100ns;
              assert(Output="0000") report "c=01, a=0000, b=0101" severity error;
              InA <= "1111";
              InB <= "0101";
			wait for 100ns;
              assert(Output="0101") report "c=01, a=1111, b=0101" severity error;
              InA <= "0101";
              InB <= "0000"; 		  
            wait for 100ns;
              assert(Output="0000") report "c=01, a=0101, b=0000" severity error;
              InA <= "1010";
              InB <= "1111";
            wait for 100ns;
              assert(Output="1010") report "c=01, a=1010, b=1111" severity error;
			  
			  
			  Control <= "10";
              InA <= "0000";
              InB <= "0101";
            wait for 100ns;
              assert(Output="0101") report "c=10, a=0000, b=0101" severity error;
              InA <= "1111";
              InB <= "0101";
			wait for 100ns;
              assert(Output="1010") report "c=10, a=1111, b=0101" severity error;
              InA <= "0101";
              InB <= "0000"; 		  
            wait for 100ns;
              assert(Output="0101") report "c=10, a=0101, b=0000" severity error;
              InA <= "1010";
              InB <= "1111";
            wait for 100ns;
              assert(Output="0101") report "c=10, a=1010, b=1111" severity error;
			  
			  
			  Control <= "11";
              InA <= "0000";
              InB <= "0101";
            wait for 100ns;
              assert(Output="0101") report "c=11, a=0000, b=0101" severity error;
              InA <= "1111";
              InB <= "0101";
			wait for 100ns;
              assert(Output="1111") report "c=11, a=1111, b=0101" severity error;
              InA <= "0101";
              InB <= "0000"; 		  
            wait for 100ns;
              assert(Output="0101") report "c=11, a=0101, b=0000" severity error;
              InA <= "1010";
              InB <= "1111";
            wait for 100ns;
              assert(Output="1111") report "c=11, a=1010, b=1111" severity error;
			  
            wait; --end of test: wait forever...
          end process;
end behavioural;
