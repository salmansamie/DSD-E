
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nbit_shifter_rotator is
	generic (
    n_i : positive := 4;
    n_c : positive := 2
  );

	port (
    Data_In1, Data_In2  : in std_logic_vector(n_i-1 downto 0);
	  Right_In, Right_Select, Left_in, Left_select : in std_logic;
		control: in std_logic_vector(n_c-1 downto 0);
		Output	 : out std_logic_vector(n_i-1 downto 0)
	);
end nbit_shifter_rotator;

architecture Behavioral of nbit_shifter_rotator is

  component two_multiplexer
    Port (
      a: in std_logic;
      b: in std_logic;
      s: in std_logic;
      q: out std_logic
    );
	end component;

	component four_bit_mux
    Port (
      a: in std_logic;
      b: in std_logic;
      c: in std_logic;
      d: in std_logic;
      s: in std_logic_vector(1 downto 0);
      q: out std_logic
    );
	end component;

	signal f_r2mux : std_logic;
	signal f_l2mux : std_logic;

	begin

	inst : for i in (n_i-1) downto 0 generate

		inst_0 : if (i = 0) generate
			two_in_mux_0  : two_multiplexer port map (Right_Select, Data_In1(n_i-1), Right_In, f_r2mux);
			fouRight_In_mux_0: four_bit_mux port map (Data_In1(i), f_r2mux, Data_In1(i+1), Data_In2(i),control, Output(i));
		end generate inst_0;

		inst_n : if (i = n_i-1) generate
			two_in_mux_n1  : two_multiplexer port map (Left_select, Data_In1(0), Left_in, f_l2mux);
			fouRight_In_mux_n1 : four_bit_mux port map (Data_In1(i), Data_In1(i-1), f_l2mux, Data_In2(i), control, Output(i));
		end generate inst_n;

		inst_i : if not((i=0)or(i=n_i-1))generate
			fouRight_In_mux_i : four_bit_mux port map (Data_In1(i), Data_In1(i-1), Data_In1(i+1), Data_In2(i), control, Output(i));
		end generate inst_i;

	end generate inst;

end Behavioral;
