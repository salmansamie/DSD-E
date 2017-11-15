library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 entity nbitshiftregparallelload is
 generic(n:positive:=8);
   Port ( shiftin : in STD_LOGIC;
       dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
       loadshift : in STD_LOGIC;
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       preset : in STD_LOGIC;
       qoutputs : out STD_LOGIC_VECTOR (n-1 downto 0));
 end nbitshiftregparallelload;
 architecture Behavioral of nbitshiftregparallelload is
 component nbittwoinputmux
 generic(n:positive:=8);
   Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);
       InB : in STD_LOGIC_VECTOR (n-1 downto 0);
       Control : in STD_LOGIC;
       Output : out STD_LOGIC_VECTOR (n-1 downto 0));
 end component;
 component nbitregister
 generic(n:positive:=8);
   Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       preset : in STD_LOGIC;
       q : out STD_LOGIC_VECTOR (n-1 downto 0);
       qnot : out STD_LOGIC_VECTOR (n-1 downto 0));
 end component;
 signal feedback:std_logic_vector(n downto 0);
 signal muxToReg,dummy:std_logic_vector(n-1 downto 0);
 begin
 feedback(0) <= shiftin;
 A: nbittwoinputmux port map(feedback(n-1 downto 0),dinputs, loadshift, muxToReg);
 B: nbitregister port map(muxToReg,CLK, reset, preset, feedback(n downto 1), dummy);
 qoutputs <= feedback(n downto 1);
 end Behavioral;  
