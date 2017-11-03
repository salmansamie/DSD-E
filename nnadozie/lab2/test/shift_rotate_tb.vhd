library ieee;
use ieee.std_logic_1164.all;

entity shift_rotate_tb is
end shift_rotate_tb;

architecture Behavioral of shift_rotate_tb is

    component shift_rotate
        Generic ( n : positive := 4 );
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
     
		Control      <=  "01";
		Right_Select <=  '0';
		Left_select  <=  '0';       --Rotate Left
		Data_In1     <=  "0100"; 
		Data_In2     <=  "0100";
		Right_In     <=  '1';
		Left_in      <=  '1';
		
      wait for 100 ns;

      Control      <=  "01";
		Right_Select <=  '1';
		Left_select  <=  '1';       --Shift Left
		Data_In1     <=  "0100"; 
		Data_In2     <=  "0100";
		Right_In     <=  '1';
		Left_in      <=  '1';
		
		
		
		wait for 100 ns;

      Control      <=  "10";
		Right_Select <=  '0';
		Left_select  <=  '0';       --Rotate Right
		Data_In1     <=  "0100"; 
		Data_In2     <=  "0100";
		Right_In     <=  '1';
		Left_in      <=  '1';
		
		wait for 100 ns;

      Control      <=  "10";
		Right_Select <=  '1';
		Left_select  <=  '1';       --Shift Right
		Data_In1     <=  "0100"; 
		Data_In2     <=  "0100";
		Right_In     <=  '1';
		Left_in      <=  '1'; 
      wait;
    end process;

end Behavioral;
