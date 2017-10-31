library ieee;
use ieee.std_logic_1164.all;

entity shift_rotate_tb is
end shift_rotate_tb;

architecture Behavioral of shift_rotate_tb is

    component shift_rotate
        port (Data_In1     : in std_logic_vector (3 downto 0);
              Data_In2     : in std_logic_vector (3 downto 0);
              Right_In     : in std_logic;
              Right_Select : in std_logic;
              Left_in      : in std_logic;
              Left_select  : in std_logic;
              control      : in std_logic_vector (1 downto 0);
              Output       : out std_logic_vector (3 downto 0));
    end component;

    signal Data_In1     : std_logic_vector (3 downto 0);
    signal Data_In2     : std_logic_vector (3 downto 0);
    signal Right_In     : std_logic;
    signal Right_Select : std_logic;
    signal Left_in      : std_logic;
    signal Left_select  : std_logic;
    signal control      : std_logic_vector (1 downto 0);
    signal Output       : std_logic_vector (3 downto 0);

begin

-- control(1) | control (0) | left/right select | Function
--    0             0               x               no func on Data_in1
--    0             1               0               rotate left Data_in1
--    0             1               1               shift left Data_in1 with right in
--    1             0               0               rotate right Data_in1
--    1             0               1               shift right Data_in1 with left in
--    1             1               x               no func on Data_In2


    dut : shift_rotate
    port map (Data_In1     => Data_In1,
              Data_In2     => Data_In2,
              Right_In     => Right_In,
              Right_Select => Right_Select,
              Left_in      => Left_in,
              Left_select  => Left_select,
              control      => control,
              Output       => Output);

    stimuli : process
    begin
      wait for 100 ns;
        Data_In1 <= "1011";
        Data_In2 <= "1101";
        Right_In <= '0';
        Right_Select <= '0';
        Left_in <= '0';
        Left_select <= '0';
        control <= "00";
      wait for 100 ns;
        assert(Output="1011") report "Fail Data_In1=1011, Data_In2=1101, Right_In=0, Right_Select=0, Left_in=0, Left_select=0, control=00" severity error;
        control <= "11";
      wait for 100 ns;
        assert(Output="1101") report "Fail Data_In1=1011, Data_In2=1101, Right_In=0, Right_Select=0, Left_in=0, Left_select=0, control=11" severity error;
        control <= "01";
      wait for 100 ns;
        assert(Output="0111") report "Fail Data_In1=1011, Data_In2=1101, Right_In=0, Right_Select=0, Left_in=0, Left_select=0, control=01" severity error;
        Right_Select <= '1';
      wait for 100 ns;
        assert(Output="0110") report "Fail Data_In1=1011, Data_In2=1101, Right_In=0, Right_Select=1, Left_in=0, Left_select=0, control=01" severity error;
        control <= "10";
      wait for 100 ns;
        assert(Output="1101") report "Fail Data_In1=1011, Data_In2=1101, Right_In=0, Right_Select=1, Left_in=0, Left_select=0, control=10" severity error;
        Left_select <= '1';
        assert(output="0101") report "Fail Data_In1=1011, Data_In2=1101, Right_In=0, Right_Select=1, Left_in=0, Left_select=1, control=10" severity error;
      wait;
    end process;

end Behavioral;
