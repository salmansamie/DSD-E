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

entity Microprogram_Controlled_Datapath is
    Port ( Start : in  STD_LOGIC;
           Alt : in  STD_LOGIC;
           Data_In : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in std_logic;
			  reset : in std_logic;
           Done : out  STD_LOGIC;
           Data_Out : out  STD_LOGIC_VECTOR (3 downto 0));
end Microprogram_Controlled_Datapath;

architecture Behavioral of Microprogram_Controlled_Datapath is
component Controller
 Port ( first_port: in std_logic;
				Start : in  STD_LOGIC;
           Alt : in  STD_LOGIC;
           Control_words : inout  STD_LOGIC_vector(19 downto 0);
           Data : inout  STD_LOGIC;
           Done : out  STD_LOGIC;
			  Clk: in STD_logic;
			  asynchronous_reset: in std_logic);
end component;

component Data_Path
  Port ( Input : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_vector(19 downto 0);
           Clk : in  STD_LOGIC;
			  Status_output : out std_logic;
           output : inout  STD_LOGIC_VECTOR(3 downto 0));
end component;


signal control_words : std_logic_vector(19 downto 0);
signal Data_Status : std_logic;
signal Data_Result : STD_LOGIC_VECTOR (3 downto 0);

begin

controller_unit : controller port map('1', Start, Alt, control_words, Data_status, Done, clk, reset);

data_unit : Data_Path port map(Data_In, control_words, clk, Data_status, Data_Result);

data_out <= data_result;
end Behavioral;
