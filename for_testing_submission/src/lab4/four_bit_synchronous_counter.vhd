-- Engineer: Nnadozie Okeke
-- Description: 4-bit Synchronous Counter

 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.STD_LOGIC_ARITH.ALL;
 use IEEE.STD_LOGIC_UNSIGNED.ALL;

 entity four_bit_synchronous_counter is
   Port (
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       qoutputs : out STD_LOGIC_VECTOR (3 downto 0));
 end four_bit_synchronous_counter;

 architecture behavioural of four_bit_synchronous_counter is

 component next_state_logic is
     Port (
      input : in std_logic_vector(3 downto 0);
      output : out std_logic_vector(3 downto 0));
 end component;

 component nbit_reg is
   generic(n:positive:=4);
   Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
       CLK : in STD_LOGIC;
       reset : in STD_LOGIC;
       preset : in STD_LOGIC;
       q : out STD_LOGIC_VECTOR (n-1 downto 0);
       qnot : out STD_LOGIC_VECTOR (n-1 downto 0));
 end component;

 signal s0, s1, dummy : std_logic_vector(3 downto 0);
 constant preset : std_logic := '0';

 begin
   nsl : next_state_logic port map (s0(3 downto 0), s1(3 downto 0) );
   reg: nbit_reg generic map (4) port map(s1(3 downto 0), CLK, reset, preset, s0(3 downto 0), dummy(3 downto 0));
   qoutputs <= s0(3 downto 0);
 end behavioural;
