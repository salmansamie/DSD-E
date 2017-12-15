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

entity register_file_cell is
    Port ( DIN : in  STD_LOGIC;
           REA : in  STD_LOGIC;
           REB : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
			  OA : out  STD_LOGIC;
           OB : out  STD_LOGIC);
end register_file_cell;

architecture Behavioral of register_file_cell is

component d_flip_flop is
port( d : in std_logic;
		preset : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		Q : inout std_logic;
		Q_bar : inout std_logic);
end component;

component multiplexer is
Port ( a : in std_logic;
		 b : in std_logic;
		 s : in std_logic;
       z : out std_logic);
end component;

component tri_buff is
Port ( Input : in std_logic;
       enable : in std_logic;
       Output : out std_logic);
end component;

signal mux_to_dflipflop: std_logic;
signal q_to_tristates: std_logic;

begin

multiplexer_i : multiplexer port map (Q_to_tristates, DIN, WE, mux_to_dflipflop);
d_flip_flop_i: d_flip_flop port map(mux_to_dflipflop, '0','0',Clock,Q_to_tristates);
read_enA: tri_buff port map(Q_to_tristates,REA,OA);
read_enB: tri_buff port map(Q_to_tristates,REB,OB);

end Behavioral;
