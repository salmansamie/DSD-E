---------------------
--Engineer: Loui Rajabi
--n-bit register with LOAD/~HOLD control and tri-state outputs
---------------------

library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;

 entity nbit_loadhold_triout_reg is
 generic(n:positive:=4);
   Port ( dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
       loadhold : in STD_LOGIC;
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
		 preset : in STD_LOGIC;
       outputenable : in STD_LOGIC;
       qoutputs : out STD_LOGIC_VECTOR (n-1 downto 0));
 end nbit_loadhold_triout_reg;

 architecture Behavioral of nbit_loadhold_triout_reg is
 component nbit_loadhold_reg
 generic(n:positive:=4);
 	Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
 	loadhold : in STD_LOGIC;
 	CLK : in STD_LOGIC;
 	reset : in STD_LOGIC;
 	preset : in STD_LOGIC;
 	qoutputs : inout STD_LOGIC_VECTOR (n-1 downto 0));
 end component;

 component nbit_tristate_buff
 generic(n:positive:=4);
   Port ( datain : in STD_LOGIC_VECTOR (n-1 downto 0);
       enable : in STD_LOGIC;
       output : out STD_LOGIC_VECTOR (n-1 downto 0));
 end component;
 
 signal tobuffer:std_logic_vector(n-1 downto 0);

 begin
 loadhold_reg: nbit_loadhold_reg port map(dinputs,loadhold,CLK,reset,preset,tobuffer);
 tristate_buff: nbit_tristate_buff port map(tobuffer, outputenable,qoutputs);
 end Behavioral;
