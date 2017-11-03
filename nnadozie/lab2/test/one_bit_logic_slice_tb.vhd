--------------------------------------------
--Engineer: Nnadozie Okeke
---------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity one_bit_logic_slice_tb is
  --empty
  --because test benches have no external inputs nor outputs of their own
end one_bit_logic_slice_tb;

architecture behavioural of one_bit_logic_slice_tb is
  component one_bit_logic_slice
	Port (	a, b : in std_logic;
		    	Control : in std_logic_vector(1 downto 0);
			 		Output : out std_logic);
  end component;

  signal a, b, Output : std_logic := '0';
  signal Control : std_logic_vector(1 downto 0);

  begin
	uut: one_bit_logic_slice PORT MAP(
		a => a,
		b => b,
		Control => Control,
		Output => Output
	);
    tb  : process
          begin
            wait for 100ns;
              Control <= "00";
              a <= '0';
              b <= '0';
            wait for 100ns;
              assert(Output='1') report "c=00, a=0, b=0" severity error;
              a <= '0';
              b <= '1';
			wait for 100ns;
              assert(Output='1') report "c=00, a=0, b=1" severity error;
              a <= '1';
              b <= '0';
            wait for 100ns;
              assert(Output='0') report "c=00, a=1, b=0" severity error;
			  a <= '1';
              b <= '1';
            wait for 100ns;
              assert(Output='0') report "c=00, a=1, b=1" severity error;


			  Control <= "01";
              a <= '0';
              b <= '0';
            wait for 100ns;
              assert(Output='0') report "c=01, a=0, b=0" severity error;
              a <= '0';
              b <= '1';
            wait for 100ns;
              assert(Output='0') report "c=01, a=0, b=1" severity error;
              a <= '1';
              b <= '0';
            wait for 100ns;
              assert(Output='0') report "c=01, a=1, b=0" severity error;
              a <= '1';
              b <= '1';
            wait for 100ns;
              assert(Output='1') report "c=01, a=1, b=1" severity error;


			  Control <= "10";
              a <= '0';
              b <= '0';
            wait for 100ns;
              assert(Output='0') report "c=10, a=0, b=0" severity error;
              a <= '0';
              b <= '1';
            wait for 100ns;
              assert(Output='1') report "c=10, a=0, b=1" severity error;
              a <= '1';
              b <= '0';
            wait for 100ns;
              assert(Output='1') report "c=10, a=1, b=0" severity error;
              a <= '1';
              b <= '1';
            wait for 100ns;
              assert(Output='0') report "c=10, a=1, b=1" severity error;


			  Control <= "11";
              a <= '0';
              b <= '0';
            wait for 100ns;
              assert(Output='0') report "c=11, a=0, b=0" severity error;
              a <= '0';
              b <= '1';
            wait for 100ns;
              assert(Output='1') report "c=11, a=0, b=1" severity error;
              a <= '1';
              b <= '0';
            wait for 100ns;
              assert(Output='1') report "c=11, a=1, b=0" severity error;
              a <= '1';
              b <= '1';
            wait for 100ns;
              assert(Output='1') report "c=11, a=1, b=1" severity error;

            wait; --end of test: wait forever...
          end process;
end behavioural;
