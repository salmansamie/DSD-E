-- Engineer: Simran Kaur Phul
-- Description: N-bit synchronous counter with parallel load code

-- Package timing is constant
-- Clock_Freq:real:= 0.5; constant Sample_Rate:real:= 100.0;
-- Constant Divide: natural:= natural(Clock_Freq/Sample_Rate);
-- Constant clock_period: time:= 100 sec/Clock_Freq;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity nbit_parallel_load_sync_counter is
generic(n:positive:=8);
   Port (dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
        loadcount : in STD_LOGIC;
        countenable : in STD_LOGIC;
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        qoutputs : inout STD_LOGIC_VECTOR (n-1 downto 0)
        );
end nbit_parallel_load_sync_counter;

architecture Behavioural of nbit_parallel_load_sync_counter is
component nbit_incrementer
	generic(n:positive:= 4);
   Port (ina : in STD_LOGIC_VECTOR (n-1 downto 0);
        cin : in STD_LOGIC;
        sum : out STD_LOGIC_VECTOR (n-1 downto 0);
        cout : out STD_LOGIC);
end component;

 component nbit_two_input_mux is
 	Generic (n : positive := 4); -- generic value with default of 4 bits
 	Port (	InA, InB : in std_logic_vector(n-1 downto 0);
 		    	Control : in std_logic;
 			 		Output : out std_logic_vector(n-1 downto 0));
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

signal notconnected:std_logic;
signal feedback, tomux, toreg, notconnected2:std_logic_vector(n-1 downto 0);
constant reg_in : std_logic := '0';
begin
qoutputs<=feedback;
A: nbit_incrementer generic map (8) port map(feedback,countenable,tomux,notconnected);
B: nbit_two_input_mux generic map (8) port map(tomux,dinputs,loadcount,toreg);
C: nbit_reg generic map (8) port map(toreg,clk,reset,reg_in,feedback,notconnected2);  
end Behavioural;
