--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   20:07:50 12/07/2016
-- Design Name:
-- Module Name:   H:/Documents/Year 3/Digital Systems Design/Lab 6/Lab6/Microprogram_Controlled_Datapath_tb.vhd
-- Project Name:  Lab6
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: Microprogram_Controlled_Datapath
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

ENTITY Microprogram_Controlled_Datapath_tb IS
END Microprogram_Controlled_Datapath_tb;

ARCHITECTURE behavior OF Microprogram_Controlled_Datapath_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT Microprogram_Controlled_Datapath
    PORT(
         Start : IN  std_logic;
         Alt : IN  std_logic;
         Data_In : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         Done : OUT  std_logic;
         Data_Out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;


   --Inputs
   signal Start : std_logic := '0';
   signal Alt : std_logic := '0';
   signal Data_In : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Done : std_logic;
   signal Data_Out : std_logic_vector(3 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: Microprogram_Controlled_Datapath PORT MAP (
          Start => Start,
          Alt => Alt,
          Data_In => Data_In,
          clk => clk,
          reset => reset,
          Done => Done,
          Data_Out => Data_Out
        );

   -- Clock process definitions
clk <= not clk after 50 ns;

   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
		wait for 100 ns;
			reset<='1';
      wait for 100 ns;
			reset<='0';
      Data_In <= "0001";
		Start <= '1';
		wait for 500 ns;

		Start <= '0';
		Alt <= '1';

      -- insert stimulus here

      wait;
   end process;

END;
