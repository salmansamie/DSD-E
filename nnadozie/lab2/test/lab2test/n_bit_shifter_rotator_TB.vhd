--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:39:53 10/25/2016
-- Design Name:   
-- Module Name:   C:/Users/md470/Desktop/dsdLab2OLDbackup/ECS615/ECS615U_Lab2/n_bit_shifter_rotator_TB.vhd
-- Project Name:  ECS615U_Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_shifter_rotator
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
USE ieee.numeric_std.ALL;
 
ENTITY n_bit_shifter_rotator_TB IS
	shared variable n_i : positive := 4;
	shared variable n_c : positive := 2;
END n_bit_shifter_rotator_TB;
 
ARCHITECTURE behavior OF n_bit_shifter_rotator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_shifter_rotator
    PORT(
         I0 : IN  std_logic_vector(n_i-1 downto 0);
         I1 : IN  std_logic_vector(n_i-1 downto 0);
         r_in : IN  std_logic;
         r_s : IN  std_logic;
         l_in : IN  std_logic;
         l_s : IN  std_logic;
         cntrl : IN  std_logic_vector(n_c-1 downto 0);
         f : OUT  std_logic_vector(n_i-1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic_vector(n_i-1 downto 0) := (others => '0');
   signal I1 : std_logic_vector(n_i-1 downto 0) := (others => '0');
   signal r_in : std_logic := '0';
   signal r_s : std_logic := '0';
   signal l_in : std_logic := '0';
   signal l_s : std_logic := '0';
   signal cntrl : std_logic_vector(n_c-1 downto 0) := (others => '0');

 	--Outputs
   signal f : std_logic_vector(n_i-1 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_shifter_rotator PORT MAP (
          I0 => I0,
          I1 => I1,
          r_in => r_in,
          r_s => r_s,
          l_in => l_in,
          l_s => l_s,
          cntrl => cntrl,
          f => f
        );
-- TEST BENCH FOR ALL CASES
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		rinloop : for i in std_logic range '0' to '1' loop
			r_in <= i;
			rsloop : for j in std_logic range '0' to '1' loop
				r_s <= j;
				linloop : for k in std_logic range '0' to '1' loop
					l_in <= k;
					lsloop : for l in std_logic range '0' to '1' loop
						l_s <= l;
						cntlrlloop : for m in ((n_c*n_c)-1) downto 0 loop
							cntrl <= std_logic_vector(to_unsigned(m, n_c));
							I0loop: for o in ((n_i*n_i)-1) downto 0 loop
								I0 <= std_logic_vector(to_unsigned(o, n_i));
								I1loop: for p in ((n_i*n_i)-1) downto 0 loop
									wait for 100ns;
									I1 <= std_logic_vector(to_unsigned(p, n_i));
									
								end loop I1loop;
							end loop I0loop;
						end loop cntlrlloop;
					end loop lsloop;
				end loop linloop; 
			end loop rsloop;
		end loop rinloop;
		
      wait;
   end process;

-- TEST BENCH WITH SAMPLE CASES TO MATCH TRUTH TABLE
--	stim_proc : process
--	begin
--		wait for 100ns;
--		r_in <= '0';
--		r_s  <= '0';
--		l_in <= '0';
--		l_s  <= '0';
--		cntrl<= "00";
--		I0	  <= "0000";
--		I1   <= "0000";
--		wait for 200ns;
--		
--		r_in <= '0';
--		r_s  <= '1';
--		l_in <= '0';
--		l_s  <= '1';
--		cntrl<= "01";
--		I0	  <= "0010";
--		I1   <= "0100";
--		wait for 200ns;
--
--		r_in <= '1';
--		r_s  <= '1';
--		l_in <= '0';
--		l_s  <= '1';
--		cntrl<= "10";
--		I0	  <= "0100";
--		I1   <= "0010";
--		wait for 200ns;
--		
--		r_in <= '0';
--		r_s  <= '1';
--		l_in <= '0';
--		l_s  <= '1';
--		cntrl<= "00";
--		I0	  <= "0001";
--		I1   <= "0001";
--		wait for 200ns;
--		
--		r_in <= '0';
--		r_s  <= '1';
--		l_in <= '0';
--		l_s  <= '1';
--		cntrl<= "00";
--		I0	  <= "1000";
--		I1   <= "1000";
--		wait for 200ns;
--		
--		wait;
--	end process;
END;
