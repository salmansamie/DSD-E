library ieee;
use ieee.std_logic_1164.all;

entity shift_rotate_tb is
end shift_rotate_tb;

architecture Behavioral of shift_rotate_tb is

    component shift_rotate
        Generic ( n : positive := 4 );
        port (Data_In1     : in std_logic_vector (3 downto 0);
              Data_In2     : in std_logic_vector (3 downto 0);
              Right_in     : in std_logic;
              Right_Select : in std_logic;
              Left_in      : in std_logic;
              Left_Select  : in std_logic;
              Control      : in std_logic_vector (1 downto 0);
              Output       : out std_logic_vector (3 downto 0));
    end component;

    signal Data_In1     : std_logic_vector (3 downto 0) := (others=>'0');
    signal Data_In2     : std_logic_vector (3 downto 0) := (others=>'0');
    signal Right_in     : std_logic;
    signal Right_Select : std_logic;
    signal Left_in      : std_logic;
    signal Left_Select  : std_logic;
    signal Control      : std_logic_vector (1 downto 0) := (others=>'0');
    signal Output       : std_logic_vector (3 downto 0) := (others=>'0');

begin

    dut : shift_rotate
    port map (Data_In1     => Data_In1,
              Data_In2     => Data_In2,
              Right_in     => Right_in,
              Right_Select => Right_Select,
              Left_in      => Left_in,
              Left_Select  => Left_Select,
              Control      => Control,
              Output       => Output);

    stimuli : process
    begin
    wait for 100 ns;

		Control      <=  "01";
		Right_Select <=  '0';
		Left_Select  <=  '0';       --rotate left
		Data_In1     <=  "0100";
		Data_In2     <=  "1011";
		Right_in     <=  '1';
		Left_in      <=  '1';

    wait for 100 ns;

    Control      <=  "01";
		Right_Select <=  '1';
		Left_Select  <=  '1';       --shift left (input 0)
		Data_In1     <=  "0100";
		Data_In2     <=  "1011";
		Right_in     <=  '0';
		Left_in      <=  '0';



		wait for 100 ns;

    Control      <=  "01";
		Right_Select <=  '1';
		Left_Select  <=  '1';       --Shift left (input 1)
		Data_In1     <=  "0100";
		Data_In2     <=  "1011";
		Right_in     <=  '1';
		Left_in      <=  '1';

		wait for 100 ns;

    Control      <=  "00";
    Right_Select <=  '0';
    Left_Select  <=  '0';       --pass
    Data_In1     <=  "0100";
    Data_In2     <=  "1011";
    Right_in     <=  '0';
    Left_in      <=  '0';

    wait for 100 ns;

    Control      <=  "10";
		Right_Select <=  '0';
		Left_Select  <=  '0';       --rotate Right
		Data_In1     <=  "0100";
		Data_In2     <=  "1011";
		Right_in     <=  '1';
		Left_in      <=  '1';

    wait for 100 ns;

    Control      <=  "10";
    Right_Select <=  '1';
    Left_Select  <=  '1';       --shift right (input 0)
    Data_In1     <=  "0100";
    Data_In2     <=  "1011";
    Right_in     <=  '0';
    Left_in      <=  '0';

    wait for 100 ns;

    Control      <=  "10";
    Right_Select <=  '1';
    Left_Select  <=  '1';       --shift right (input 1)
    Data_In1     <=  "0100";
    Data_In2     <=  "1011";
    Right_in     <=  '1';
    Left_in      <=  '1';

    wait;
    end process;

end Behavioral;
