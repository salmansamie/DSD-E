-------------------------------------------------------------

--------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity nbit_counter_with_parallel is
generic (n : positive := 8);

port( d_inputs : in std_logic_vector(n-1 downto 0);
      load : in  std_logic;
		enable : in  std_logic;
		Clk : in  std_logic;
		reset : in  std_logic;
		Q_output : inout std_logic_vector(n-1 downto 0));
end entity;

architecture my_architecture of nbit_counter_with_parallel is
component nbit_incrementer
generic (n: positive);
port( InA : in std_logic_vector(n-1 downto 0);
      Cin : in  std_logic;
		Sum : out std_logic_vector(n-1 downto 0);
		c_out : inout std_logic);
end component;

component nbit_register
generic (n: positive);
port( d : in std_logic_vector(n-1 downto 0);
		preset : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		Q : inout std_logic_vector(n-1 downto 0);
		Q_bar : inout std_logic_vector(n-1 downto 0));
end component;

component nbit_two_input_mux
Generic ( n: positive);
Port ( Input0 : in std_logic_vector(n-1 downto 0);
       Input1 : in std_logic_vector(n-1 downto 0);
       control : in std_logic;
       Output : out std_logic_vector(n-1 downto 0) );
end component;

signal nc_cout: std_logic;
signal inc_to_mux, mux_to_reg, nc_qbar : std_logic_vector(n-1 downto 0);
begin


inc_i: nbit_incrementer generic map (n) port map(q_output, enable, inc_to_mux, nc_cout);

mux_i : nbit_two_input_mux generic map (n) port map(inc_to_mux, d_inputs, load, mux_to_reg);

reg_i : nbit_reg generic map (n) port map(mux_to_reg, '0', reset, clk, q_output, nc_qbar);

end;
