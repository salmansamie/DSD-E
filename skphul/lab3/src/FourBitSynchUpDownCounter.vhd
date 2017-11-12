-- Engineer: Simran Kaur Phul
-- Description: Four bit synchronous up down counter code

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  

entity FourBitSynchronousUpDownCounter is  
generic(n:positive:=4);  
    Port (N_count : in STD_LOGIC_VECTOR (n-1 downto 0);  
        downUp : in STD_LOGIC;  
        CLK : in STD_LOGIC;  
        reset : in STD_LOGIC;  
        Q_output : out STD_LOGIC_VECTOR (n-1 downto 0)  
        );  
end FourBitSynchronousUpDownCounter;  

architecture Behavioural of FourBitSynchronousUpDownCounter is  
component AdderSubstractor   
generic(n:positive:=4);  
   Port (InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
        InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
        control : in STD_LOGIC;  
        sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
        cout : out STD_LOGIC);  
end component;       

component nBitRegister   
generic(n:positive:=4);  
    Port (Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
        CLK : in STD_LOGIC;  
        reset : in STD_LOGIC;  
        preset : in STD_LOGIC;  
        q : out STD_LOGIC_VECTOR (n-1 downto 0);  
        qnot : out STD_LOGIC_VECTOR (n-1 downto 0));  
end component;  
 
signal nc2, sumToRegister, outputToInA:std_logic_vector(n-1 downto 0);       
signal nc1:std_logic;       
begin  
Q_output<=outputToInA;  
PartA: AdderSubstractor generic map(4) port map(outputToInA,N_count,downUp,sumToRegister,nc1);  
PartB: nBitRegister generic map(4) port map(sumToRegister,clk,reset,'0',outputToInA,nc2);  
Q_output<=outputToInA;  
end Behavioural;  