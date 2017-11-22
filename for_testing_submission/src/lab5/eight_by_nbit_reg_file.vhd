-- Engineer: Simran Kaur Phul
-- Description: 8 x n-bit regsiter file

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  

entity eight_by_nbit_reg_file is  
generic(n: positive:=8);  
    Port (dataIn : in STD_LOGIC_VECTOR(n-1 downto 0);  
        Read_address_A : in STD_LOGIC_VECTOR(2 downto 0);  
        Read_address_B : in STD_LOGIC_VECTOR(2 downto 0);  
        Write_address : in STD_LOGIC_VECTOR(2 downto 0);  
        REA : in STD_LOGIC;  
        REB : in STD_LOGIC;  
        WE : in STD_LOGIC;  
        CLK : in STD_LOGIC;  
        OutA : out STD_LOGIC_VECTOR(n-1 downto 0);  
        OutB : out STD_LOGIC_VECTOR(n-1 downto 0));  
 end eight_by_nbit_reg_file;  
 

architecture Behavioural of eight_by_nbit_reg_file is   
component nBit_RFC is  
generic(n:positive:=8);  
    Port ( Din : in STD_LOGIC_VECTOR (n-1 downto 0);  
        REA : in STD_LOGIC;  
        REB : in STD_LOGIC;  
        WE : in STD_LOGIC;  
        CLK : in STD_LOGIC;  
        OA : out STD_LOGIC_VECTOR (n-1 downto 0);  
        OB : out STD_LOGIC_VECTOR (n-1 downto 0));  
end component;  

component three_to_eight_decoder is  
    Port (OE : in std_logic;  
        address : in std_logic_vector(2 downto 0);  
        O_outputs : out std_logic_vector(7 downto 0));  
end component;  
 
signal regOutA, regOutB, dec1Out, dec2Out, dec3Out: STD_LOGIC_VECTOR(n-1 downto 0);  
    begin  
        dec1: three_to_eight_decoder port map (REA, Read_address_A, dec1Out);  
        dec2: three_to_eight_decoder port map (REB, Read_address_B, dec2Out);  
        dec3: three_to_eight_decoder port map (WE, Write_address, dec3Out);  
        inst: for i in n-1 downto 0 generate  
        newReg: nbitRegisterCellRCF port map (dataIn, dec1Out(i), dec2Out(i), dec3Out(i), CLK, OutA, OutB);  
    end generate;  
end Behavioural;  