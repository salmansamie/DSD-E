-- Engineer: Nnadozie Okeke
-- Description: N-bit Synchronous Ripple Counter

 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.STD_LOGIC_ARITH.ALL;
 use IEEE.STD_LOGIC_UNSIGNED.ALL;

 entity nbit_ripple_counter is
 generic(n:positive:= 8);
   Port (
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       q : inout STD_LOGIC_VECTOR (n-1 downto 0);
       qnot : inout STD_LOGIC_VECTOR (n-1 downto 0));
 end nbit_ripple_counter;

 architecture behavioural of nbit_ripple_counter is

 component T_flipflop is
     Port ( reset : in std_logic;
 	 		  Clk : in std_logic;
            Q : inout std_logic;
            Q_bar : inout std_logic);
 end component;

 signal s0 : std_logic_vector(n-1 downto 0);

 begin

   T_flipflop_zero : T_flipflop port map( reset, CLK, q(0), s0(0) );
   inst:for i in n-1 downto 1 generate
   T_flipflop_i: T_flipflop port map(reset, s0(i-1), q(i), s0(i));
   qnot <= s0(n-1 downto 0);
 end generate;

 end behavioural;
