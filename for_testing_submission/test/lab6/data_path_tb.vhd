--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   22:26:39 12/02/2016
-- Design Name:
-- Module Name:   H:/Documents/Year 3/Digital Systems Design/Lab 6/Lab6/Data_Path_tb.vhd
-- Project Name:  Lab6
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: Data_Path
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY Data_Path_tb IS
END Data_Path_tb;

ARCHITECTURE behavior OF Data_Path_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT Data_Path
  Port ( Input : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_vector(19 downto 0);
           Clk : in  STD_LOGIC;
			  Status_output : out std_logic;
           output : inout  STD_LOGIC_VECTOR(3 downto 0));
    END COMPONENT;


   --Inputs
   signal Input : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(19 downto 0) := (others => '0');
   signal Clk : std_logic := '0';

 	--Outputs
   signal Status_output : std_logic;
   signal output : std_logic_vector(3 downto 0);


BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: Data_Path PORT MAP (
          Input => Input,
          S => S,
          Clk => Clk,
          Status_output => Status_output,
          output => output
        );


 clk <= not clk after 250 ns;

   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;

      input <="0001";

		 wait for 53 ns;

		s <="10001000000000000000";

		 wait for 100 ns;

		s <="10011000000000000000";

      wait for 100 ns;

      s <="00101000100110010001";

		s <="10001--------------0"; -- Control Word 1
		wait for 100 ns;

		s <="1010111111111110-000"; -- Control Word 2
		wait for 100 ns;

		s <="100110101----000-000"; -- Control Word 3
		wait for 100 ns;

		s <="1011100010011101-000"; -- Control Word 4
		wait for 100 ns;

		s <="1010101010111001-000"; -- Control Word 5
		wait for 100 ns;

		s <="10001000100011011100"; -- Control Word 6
		wait for 97 ns;

		s <="1---001010101101-001"; -- Control Word 7

--      s(19) <='1';
--		wait for 100 ns;
--
--		s(18 downto 16) <= "000";
--		s(15) <= '1';
--		wait for 100 ns;
--
--		s(14 downto 12) <= "000";
--		s(11) <= '1';
--		s(10 downto 8) <= "000";
--		s(7) <= '1';
--		wait for 100 ns;
--
--		s(6 downto 4) <="000";
--		s(3 downto 1) <="000";
--
--		wait for 100 ns;
--
--		s(0) <='1';
		wait;
   end process;

END;
