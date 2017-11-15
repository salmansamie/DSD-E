library ieee;
use ieee.std_logic_1164.all;

entity nbit_adder_tb is
end nbit_adder_tb;

architecture behavioural of nbit_adder_tb is

    component nbit_adder
      Generic (n : positive := 4);
      Port (
        InA, InB, C_terms : in std_logic_vector(3 downto 0);
        Sum : out std_logic_vector(3 downto 0);
		  dummy : out std_logic_vector(n-2 downto 0);
        C_out : out std_logic
      );
    end component;

    signal InA, InB, C_terms : std_logic_vector (3 downto 0) := (others => '0');
    signal Sum : std_logic_vector (3 downto 0);
	 signal dummy : std_logic_vector (2 downto 0);
    signal C_out   : std_logic;

begin

    dut : nbit_adder
    port map (InA     => InA,
              InB     => InB,
              C_terms => C_terms,
              Sum     => Sum,
				  dummy   => dummy,
              C_out   => C_out);

    stimuli : process
    begin
      wait for 100 ns;
    	  C_terms <= "0000";
    	  InA <= "0011";  -- note double quotes for n-bit values
        InB <= "0101"; --check Sum= 0110 c=0
  		wait for 100 ns;
        C_terms <= "1111";
        InA <= "1010";
        InB <= "0101"; --check Sum= 0000 c=1
  		wait;
    end process;

end behavioural;
