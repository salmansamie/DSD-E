-----------------------------------
--Engineer: Loui Rajabi
--
------------------------------------

library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;

 entity nbit_parallel_load_shiftreg is
 generic(n:positive:=8);
   Port ( shiftin : in STD_LOGIC;
       dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
       loadshift : in STD_LOGIC;
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       preset : in STD_LOGIC;
       qoutputs : out STD_LOGIC_VECTOR (n-1 downto 0));
 end nbit_parallel_load_shiftreg;

 architecture Behavioral of nbit_parallel_load_shiftreg is

 component nbit_two_input_mux
 generic(n:positive:=8);
 Port (	InA, InB : in std_logic_vector(n-1 downto 0);
         Control : in std_logic;
         Output : out std_logic_vector(n-1 downto 0));
 end component;

 component nbit_reg
 generic(n:positive:=8);
 Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
     CLK : in STD_LOGIC;
     reset : in STD_LOGIC;
     preset : in STD_LOGIC;
     q : out STD_LOGIC_VECTOR (n-1 downto 0);
     qnot : out STD_LOGIC_VECTOR (n-1 downto 0));
 end component;

 signal feedback:std_logic_vector(n downto 0);
 signal muxToReg, dummy:std_logic_vector(n-1 downto 0);

 begin

 feedback(0) <= shiftin;
 mux: nbit_two_input_mux port map(feedback(n-1 downto 0),dinputs, loadshift, muxToReg);
 reg: nbit_reg port map(muxToReg,CLK, reset, preset, feedback(n downto 1), dummy);
 qoutputs <= feedback(n downto 1);

 end Behavioral;
