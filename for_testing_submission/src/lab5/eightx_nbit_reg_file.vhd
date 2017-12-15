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

entity eightx_nbit_register_file is
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
end eightx_nbit_register_file;

architecture Behavioral of eightx_nbit_register_file is

component nbit_rfc_register is
GENERIC (n: positive := 4);
    Port ( Data_in : in  STD_LOGIC_VECTOR (n-1 downto 0);
           REA : in  STD_LOGIC;
           REB : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
			   OutA : out  STD_LOGIC_VECTOR (n-1 downto 0);
           OutB : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component three_to_eight_decoder is
    Port ( 	OE : in std_logic;
	 			address : in std_logic_vector(2 downto 0);
            O_outputs : out std_logic_vector(7 downto 0));
end component;

signal A_output: std_logic_vector(7 downto 0);
signal B_output: std_logic_vector(7 downto 0);
signal writeAddr_output: std_logic_vector(7 downto 0);

begin

Addr_A: three_to_eight_decoder port map(REA, Read_Addr_A, A_output);

Addr_B: three_to_eight_decoder port map(REB, Read_Addr_B, B_output);

Addr_C: three_to_eight_decoder port map(WE, Write_Addr,writeAddr_output);

inst : for i in 7 downto 0 generate

	reg: nbit_rfc_register generic map (4) port map(Data_in, A_output(i), B_output(i), writeAddr_output(i), clock, OutA, OutB);

	end generate;



end Behavioral;
