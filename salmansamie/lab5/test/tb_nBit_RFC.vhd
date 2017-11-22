-- Engineer: Salman Rahman
-- Email: salman.rahman@se14.qmul.ac.uk
-- Device: tb_nBit_RFC

library IEEE;
use IEEE.std_logic_1164.all;

entity tb_nBit_RFC is 
end tb_nBit_RFC;

Architecture Behavioural of tb_nBit_RFC is

    -- Component declaration for UUT (Unit Under Test)
    component nBit_RFC
        Port(
        DataIN : in std_logic_vector (3 downto 0);  -- n-bit since the input in n-bit WE at input
        ReadA : in std_logic_1164;
        ReadB : in std_logic_1164;
        WriteEn  : in std_logic_1164;
        Clock : in std_logic_1164;
        OutA  : out std_logic_vector(3 downto 0);  -- n-bit since the input in n-bit RE by A
        OutB  : out std_logic_vector(3 downto 0)  -- n-bit since the input in n-bit RE by B
        );
    end component;
    
    -- Mapping the signals with the possible corresponding test values
	SIGNAL WriteEn :  std_logic := '0';
    SIGNAL ReadA, ReadB : std_logic_vector (1 downto 0);
    SIGNAL DataIN : std_logic_vector (3 downto 0);
    SIGNAL OutA, OutB : std_logic_vector (3 downto 0)  := (others => '0');

    -- Instantiating UUT (Unit Under Test)
    begin
        uut: nBit_RFC Port Map(
            WriteEn => WriteEn,
            DataIN => DataIN,
            ReadA => ReadA,
            ReadB => ReadB,
            OutA => OutA,
            OutB => OutB
        );

        tb: Process
            begin
                
                WriteEn <= '0';
                wait for 100 ns;        -- wait 100ns global process to complete

                DataIN <= "0011";       -- double quote is for n-Bit value
                wait for 100 ns;

                ReadA <= '1;
                wait for 100 ns;

                ReadB <= '0';
                wait for 100 ns;


                WriteEn <= '1';         -- wait 100ns global process to complete
                wait for 100 ns;

                DataIN <= "0011";       -- double quote is for n-Bit value
                wait for 100 ns;

                ReadA <= '1;
                wait for 100 ns;

                ReadB <= '0';
                wait for 100 ns;

                wait;                   -- wait forever

            end process;
end Behavioural;


