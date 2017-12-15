----------------------------------------------------------------------------------

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

entity Controller is
    Port ( first_port: in std_logic;
				Start : in  STD_LOGIC;
           Alt : in  STD_LOGIC;
           Control_words : inout  STD_LOGIC_vector(19 downto 0);
           Data : in STD_LOGIC;
           Done : out  STD_LOGIC;
			  Clk: in STD_logic;
			  asynchronous_reset: in std_logic);

end Controller;

architecture Behavioral of Controller is

component four_input_multiplexer
Port ( a : in std_logic;
		 b : in std_logic;
		 c : in std_logic;
		 d : in std_logic;
		 s : in std_logic_vector(1 downto 0);
       z : out std_logic);
end component;

component function_logic_decoder is
    Port ( condition_in : in  STD_LOGIC;
           function_in : in  STD_LOGIC_VECTOR (1 downto 0);
           load_out : out  STD_LOGIC;
           enable_out : out  STD_LOGIC);
end component;

component nbit_counter_with_parallel is
generic (n : positive := 8);
port( d_inputs : in std_logic_vector(n-1 downto 0);
      load : in  std_logic;
		enable : in  std_logic;
		Clk : in  std_logic;
		reset : in  std_logic;
		Q_output : inout std_logic_vector(n-1 downto 0));
end component;

--
--entity nbit_counter_with_parallel is
--generic (n : positive := 8);
--
--port( d_inputs : in std_logic_vector(n-1 downto 0);
--      load : in  std_logic;
--		enable : in  std_logic;
--		Clk : in  std_logic;
--		reset : in  std_logic;
--		Q_output : inout std_logic_vector(n-1 downto 0));
--end entity;


component output_rom
 Port ( state_variable : in  STD_LOGIC_VECTOR (3 downto 0);
           function_out : inout  STD_LOGIC_VECTOR (1 downto 0);
           condition_out : inout  STD_LOGIC_VECTOR (1 downto 0);
           Datapath_control_ouput : inout  STD_LOGIC_VECTOR (19 downto 0);
           done : out  STD_LOGIC;
           branch_address_m : inout  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal count_to_rom: std_logic_vector(3 downto 0);
signal mux_to_decode_logic: std_logic;
signal decode_logic_to_loadcount: std_logic;
signal decode_logic_to_enable: std_logic;
signal rom_to_decode: std_logic_vector(1 downto 0);
signal rom_to_condition: std_logic_vector(1 downto 0);
signal branch_address_m: std_logic_vector(3 downto 0);


begin
mux_i : four_input_multiplexer port map(first_port, Start, Data, Alt, rom_to_condition, mux_to_decode_logic);
function_decode_logic_i : function_logic_decoder port map(mux_to_decode_logic, rom_to_decode, decode_logic_to_loadcount, decode_logic_to_enable);
rom_devicec_i : output_rom port map(count_to_rom, rom_to_decode, rom_to_condition, Control_words, Done,branch_address_m);
counter_i : nbit_counter_with_parallel generic map (4) port map(branch_address_m,decode_logic_to_loadcount,decode_logic_to_enable, Clk, asynchronous_reset, count_to_rom);
end Behavioral;
