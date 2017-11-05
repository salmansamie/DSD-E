library ieee;
use ieee.std_logic_1164.all;

entity nbit_adder_tb is
end nbit_adder_tb;

architecture behavioural of nbit_adder_tb is

    component nbit_adder
      Port (
        InA, InB, C_terms : in std_logic_vector(3 downto 0);
        Sum : out std_logic_vector(3 downto 0);
        C_out : out std_logic
      );
    end component;

    signal InA, InB, C_terms, Sum : std_logic_vector (3 downto 0);
    signal C_out   : std_logic;

begin

    dut : nbit_adder
    port map (InA     => InA,
              InB     => InB,
              C_terms => C_terms,
              Sum     => Sum,
              C_out   => C_out);

    stimuli : process
    begin
      wait for 100 ns;
    		C_terms <= "0000";
    		InA <= "0011";  -- note double quotes for n-bit values
        InB <= "0101";
  		wait for 100 ns;
        assert(Sum="0110") report "Fail c=0000, ina=0011, inb=0101" severity error;
        assert(C_out='0') report "Fail c=0000, ina=0011, inb=0101" severity error;
        C_terms <= "1111";
      wait for 100 ns;
        assert(Sum="1001") report "Fail c=1111, ina=0011, inb=0101" severity error;
        assert(C_out='0') report "Fail c=1111, ina=0011, inb=0101" severity error;
  		wait;
    end process;

end behavioural;
