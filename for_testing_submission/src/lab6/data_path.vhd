----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    20:37:14 12/02/2016
-- Design Name:
-- Module Name:    Data_Path - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Data_Path is
    Port ( Input : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_vector(19 downto 0);
           Clk : in  STD_LOGIC;
			  Status_output : out std_logic;
           output : inout  STD_LOGIC_VECTOR(3 downto 0));
end Data_Path;

architecture Behavioral of Data_Path is

component nbit_two_input_mux

Generic ( n: positive := 4);

Port ( Input0 : in std_logic_vector(n-1 downto 0);
       Input1 : in std_logic_vector(n-1 downto 0);
       control : in std_logic;
       Output : out std_logic_vector(n-1 downto 0) );
end component;

component eightx_nbit_register_file
    Port ( Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Read_Addr_A : in  STD_LOGIC_VECTOR (2 downto 0);
           Read_Addr_B : in  STD_LOGIC_VECTOR (2 downto 0);
           Write_Addr : in  STD_LOGIC_VECTOR (2 downto 0);
           REA : in  STD_LOGIC;
           REB : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           OutA : out  STD_LOGIC_VECTOR (3 downto 0);
           OutB : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component four_bit_alu
    Port ( InA : in std_logic_vector(3 downto 0);
           InB : in std_logic_vector(3 downto 0);
           F : in std_logic_vector(2 downto 0);
           Output : out std_logic_vector(3 downto 0);
           C_out : out std_logic);
end component;

component four_bit_shifter
    Port ( Data_In : in std_logic_vector(3 downto 0);
           G : in std_logic_vector(2 downto 0);
           Output : out std_logic_vector(3 downto 0));
end component;

component Status
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           f : out  STD_LOGIC);
end component;

component nbit_tristate_buffer is

generic (n: positive := 4);

port( input : in std_logic_vector(n-1 downto 0);
		enable : in std_logic;
		output : inout std_logic_vector(n-1 downto 0));
end component;

-- COMPONENT Combinational_unit
-- Port ( Bus_A : in  STD_LOGIC_VECTOR (3 downto 0);
--           Bus_B : in  STD_LOGIC_VECTOR (3 downto 0);
--			  s_six_to_zero : in std_logic_vector(6 downto 0);
--			  status_output : out  STD_LOGIC;
--			  Result_Bus : inout std_logic_vector(3 downto 0);
--           Output : inout  STD_LOGIC_VECTOR (3 downto 0));
--    END COMPONENT;

signal Result_Bus : std_logic_vector(3 downto 0) := (others=>'0');
signal mux_result : std_logic_vector(3 downto 0);
signal Bus_a : std_logic_vector(3 downto 0);
signal Bus_b : std_logic_vector(3 downto 0);
signal alu_to_shift : std_logic_vector(3 downto 0);
signal alu_dummy : std_logic;


begin

mux: nbit_two_input_mux generic map (4) port map(Result_Bus, Input, s(19), mux_result);

reg_file: eightx_nbit_register_file port map(mux_result, s(14 downto 12), s(10 downto 8), s(18 downto 16), s(11), s(7), s(15), clk, Bus_a, Bus_b);


--component eightx_nbit_register_file
--    Port ( Data_in : in  STD_LOGIC_VECTOR (3 downto 0);
--           Read_Addr_A : in  STD_LOGIC_VECTOR (2 downto 0);
--           Read_Addr_B : in  STD_LOGIC_VECTOR (2 downto 0);
--           Write_Addr : in  STD_LOGIC_VECTOR (2 downto 0);
--           REA : in  STD_LOGIC;
--           REB : in  STD_LOGIC;
--           WE : in  STD_LOGIC;
--           Clock : in  STD_LOGIC;
--           OutA : out  STD_LOGIC_VECTOR (3 downto 0);
--           OutB : out  STD_LOGIC_VECTOR (3 downto 0));
--end component;



alu: four_bit_alu port map(Bus_A, Bus_B, s(6 downto 4), alu_to_shift, alu_dummy);


shift: four_bit_shifter port map(alu_to_shift, s(3 downto 1), Result_Bus);

stat: status port map(Result_Bus, status_output);

buff: nbit_tristate_buffer generic map (4) port map(Result_Bus, s(0), output);




end Behavioral;
