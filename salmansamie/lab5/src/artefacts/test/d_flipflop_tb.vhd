-- Engineer: Simran Kaur Phul
-- Description: Asynchronous reset and preset testbench


LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;
 ENTITY d_flipflop_tb IS
 END d_flipflop_tb;

 ARCHITECTURE behavior OF d_flipflop_tb IS
   -- Component Declaration for the Unit Under Test
   COMPONENT d_flipflop
   PORT(
      d : IN std_logic;
      reset : IN std_logic;
      preset : IN std_logic;
      clk : IN std_logic;
      q : OUT std_logic;
      qnot : OUT std_logic
     );
   END COMPONENT;

   --Inputs
   signal d : std_logic := '0';
   signal reset : std_logic := '0';
   signal preset : std_logic := '0';
   signal clk : std_logic := '0';

   --Outputs
   signal q : std_logic;
   signal qnot : std_logic;
   -- Clock period definitions
   constant clk_period : time := 10 ns;

 BEGIN
    -- Instantiate the Unit Under Test
   uut: d_flipflop PORT MAP (
      d => d,
      reset => reset,
      preset => preset,
      clk => clk,
      q => q,
      qnot => qnot
     );
 -- SET CLOCK PERIOD
      clk <= not clk after 50 ns; -- period = 100ns
      tb : PROCESS
      BEGIN
           wait for 100 ns;
           reset <= '1';
           d <= '1';
           wait for 120ns;  
           d <= '0';
           wait for 120ns;
           reset <= '0';
           wait for 100 ns;
           preset <= '1';
           d <= '1';
           wait for 120ns;
           d <= '0';
           wait for 120ns;
           preset <= '0';
           wait for 100 ns;
           d <= '1';
           wait for 120ns;
           d <= '0';
    wait;
   end process;
 END;