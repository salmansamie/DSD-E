library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;

 entity nbitregloadholdcontroltristate is
 generic(n:positive:=4);
   Port ( dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
       loadhold : in STD_LOGIC;
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       outputenable : in STD_LOGIC;
       qoutputs : out STD_LOGIC_VECTOR (n-1 downto 0));
 end nbitregloadholdcontroltristate;

 architecture Behavioral of nbitregloadholdcontroltristate is
 component nbitregloadhold
 generic(n:positive:=4);
   Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
       loadhold : in STD_LOGIC;
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       preset : in STD_LOGIC;
       qoutputs : inout STD_LOGIC_VECTOR (n-1 downto 0));
 end component;
 component nbittristatebuffer
 generic(n:positive:=4);
   Port ( datain : in STD_LOGIC_VECTOR (n-1 downto 0);
       enable : in STD_LOGIC;
       output : out STD_LOGIC_VECTOR (n-1 downto 0));
 end component;
 signal tobuffer:std_logic_vector(n-1 downto 0);

 begin
 A: nbitregloadhold port map(dinputs,loadhold,CLK,reset,'0',tobuffer);
 B: nbittristatebuffer port map(tobuffer, outputenable,qoutputs);
 end Behavioral;  
