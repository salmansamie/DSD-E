-----------------------------------
--Engineer: Nnadozie Okeke
--
------------------------------------

library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;

 entity nbit_twisted_ring_conter is
 generic(n:positive:=8);
   Port (
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       preset : in STD_LOGIC;
       qoutputs : out STD_LOGIC_VECTOR (n-1 downto 0));
 end nbit_twisted_ring_conter;

 architecture Behavioral of nbit_twisted_ring_conter is

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
