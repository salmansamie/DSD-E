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

component not_gate is
	Port (a: in std_logic; 
	      f: out std_logic);
end component;

component nbit_shiftreg is
	generic (n : positive := 8);
    Port ( shift_in : in std_logic;
           CLK : in std_logic;
           reset : in std_logic;
           preset : in std_logic;
           Q_shift : out std_logic_vector(n-1 downto 0));
end component;

 signal not_to_shiftreg : std_logic;
 signal feedback : std_logic_vector(n-1 downto 0);

 begin

 reg: nbit_shiftreg generic map (n) port map(not_to_shiftreg, CLK, reset, preset, feedback(n-1 downto 0));
 ngate: not_gate port map (feedback(n-1), not_to_shiftreg);
 qoutputs <= feedback(n-1 downto 0);

 end Behavioral;
