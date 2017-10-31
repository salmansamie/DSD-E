--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Nnadozie Okeke
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTITY
entity shift_rotate is
    Port (
      Data_In1, Data_In2 : in std_logic_vector(n-1 downto 0);
      Right_In, Right_Select, Left_in, Left_select : in std_logic;
      control : in std_logic_vector(1 downto 0);
      Output : out std_logic_vector(n-1 downto 0)
    );
end shift_rotate;


-- ARCHITECTURE
architecture Behavioral of shift_rotate is

-- COMPONENTS
  component two_input_multiplexer
    Port (
      s_in, a, b : in std_logic;
      f : out std_logic
    );
  end component;

  component four_input_mux
    Port (
      s1, s2, a, b, c, d : in std_logic;
      f : out std_logic
    );
  end component;

  signal s0, s1 : std_logic;

  begin
    two_in_mux1 : two_input_multiplexer port map (Right_Select, Data_In1(n-1), Right_In, s0);
    four_in_mux1 : four_input_mux port map(control(0), control(1), Data_In1(0), s0, Data_In1(1), Data_In2(0), output(0));
    inst: for i in n-2 downto 1 generate
      four_in_mux1 : four_input_mux port map(control(0), control(1), Data_In1(i), Data_In1(i-1), Data_In1(1+1), Data_In2(i), output(i));
		end generate;
    four_in_mux2 : four_input_mux port map (control(0), control(1), Data_In1(n-1), Data_In1(n-2), s1, Data_In2(n-1), output(n-1));
    two_in_mux2 : two_input_multiplexer port map (Left_select, Data_In1(0), Left_in, s1);

end Behavioral;
