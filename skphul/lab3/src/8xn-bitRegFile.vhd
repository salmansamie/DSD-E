-- Engineer: Simran Kaur Phul
-- Description: 8 x n-bit regsiter file

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

entity 8xNBitRegFile is  
generic(n: positive:=8);  
    Port (dataIn : in STD_LOGIC_VECTOR(n-1 downto 0);  
        readAddA : in STD_LOGIC_VECTOR(2 downto 0);  
        readAddB : in STD_LOGIC_VECTOR(2 downto 0);  
        wrAdd : in STD_LOGIC_VECTOR(2 downto 0);  
        REA : in STD_LOGIC;  
        REB : in STD_LOGIC;  
        WE : in STD_LOGIC;  
        CLK : in STD_LOGIC;  
        outA : out STD_LOGIC_VECTOR(n-1 downto 0);  
        outB : out STD_LOGIC_VECTOR(n-1 downto 0));  
 end 8xNBitRegFile;  
 

architecture Behavioural of 8xNBitRegFile is   
component nbitRegisterFileCellRFC is  
generic(n:positive:=8);  
    Port ( Din : in STD_LOGIC_VECTOR (n-1 downto 0);  
        REA : in STD_LOGIC;  
        REB : in STD_LOGIC;  
        WE : in STD_LOGIC;  
        Clock : in STD_LOGIC;  
        OA : out STD_LOGIC_VECTOR (n-1 downto 0);  
        OB : out STD_LOGIC_VECTOR (n-1 downto 0));  
end component;  

component 3to8Decoder is  
    Port (OE : in std_logic;  
        address : in std_logic_vector(2 downto 0);  
        O_outputs : out std_logic_vector(7 downto 0));  
end component;  
 
signal regOutA, regOutB, dec1Out, dec2Out, dec3Out: STD_LOGIC_VECTOR(n-1 downto 0);  
    begin  
        dec1: 3to8Decoder port map (REA, readAddA, dec1Out);  
        dec2: 3to8Decoder port map (REB, readAddB, dec2Out);  
        dec3: 3to8Decoder port map (WE, wrAdd, dec3Out);  
        inst: for i in n-1 downto 0 generate  
        newReg: nbitRegisterCellRCF port map (dataIn, dec1Out(i), dec2Out(i), dec3Out(i), CLK, outA, outB);  
    end generate;  
end Behavioural;  