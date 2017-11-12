-- Engineer: Simran Kaur Phul
-- Description: N-bit synchronous counter with parallel load code

-- Package timing is constant 
-- Clock_Freq:real:= 0.5; constant Sample_Rate:real:= 100.0;   
-- Constant Divide: natural:= natural(Clock_Freq/Sample_Rate);   
-- Constant clock_period: time:= 100 sec/Clock_Freq;  

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.numeric_std.all;  

entity nbitSynchronousCounterWithParallelLoad is  
generic(n:positive:=4);  
   Port (dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
        loadcount : in STD_LOGIC;  
        countenable : in STD_LOGIC;  
        clk : in STD_LOGIC;  
        reset : in STD_LOGIC;  
        qoutputs : inout STD_LOGIC_VECTOR (n-1 downto 0)  
        );  
end nbitSynchronousCounterWithParallelLoad;  
 
architecture Behavioural of nbitSynchronousCounterWithParallelLoad is  
component nbitIncrementer   
   Port (ina : in STD_LOGIC_VECTOR (n-1 downto 0);  
        cin : in STD_LOGIC;  
        sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
        cout : out STD_LOGIC);  
end component;  

component nbitTwoInputMux   
generic(n:positive:=4);  
   Port (InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
        InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
        Control : in STD_LOGIC;  
        Output : out STD_LOGIC_VECTOR (n-1 downto 0));  
 end component; 

component nbitRegister   
generic(n:positive:=4);  
   Port (Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
        clk : in STD_LOGIC;  
        reset : in STD_LOGIC;  
        preset : in STD_LOGIC;  
        q : out STD_LOGIC_VECTOR (n-1 downto 0);  
        qnot : out STD_LOGIC_VECTOR (n-1 downto 0)  
        );  
end component;

signal notconnected:std_logic;  
signal feedback, tomux, toreg, notconnected2:std_logic_vector(n-1 downto 0);  
begin  
qoutputs<=feedback;  
A: nbitIncrementer port map(feedback,countenable,tomux,notconnected);  
B: nbitTwoInputMux port map(tomux,dinputs,loadcount,toreg);  
C: nbitRegister port map(toreg,clk,reset,'0',feedback,notconnected2);  
end Behavioural; 