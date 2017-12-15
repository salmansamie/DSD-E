--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY controller_tb IS
END controller_tb;

ARCHITECTURE behavior OF controller_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT Controller
    PORT(first_port: in std_logic;
         Start : IN  std_logic;
         Alt : IN  std_logic;
         Control_words : inOUT  std_logic_vector(19 downto 0);
         Data : IN std_logic;
         Done : OUT  std_logic;
         Clk : IN  std_logic;
         asynchronous_reset : IN  std_logic
        );
    END COMPONENT;


   --Inputs
	signal first_port: std_logic := '0';
   signal Start : std_logic := '0';
   signal Alt : std_logic := '0';
   signal Data : std_logic := '0';
   signal Clk : std_logic := '0';
   signal asynchronous_reset : std_logic := '0';

 	--Outputs
   signal Control_words : std_logic_vector(19 downto 0);
   signal Done : std_logic;

   -- Clock period definitions

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: Controller PORT MAP (
		first_port => first_port,
          Start => Start,
          Alt => Alt,
          Control_words => Control_words,
          Data => Data,
          Done => Done,
          Clk => Clk,
          asynchronous_reset => asynchronous_reset
        );

   -- Clock process definitions
	clk <= not clk after 500 ns;
   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;

			asynchronous_reset<='1';
 wait for 100 ns;
			asynchronous_reset<='0';
			first_port <='1';
			Start <= '1';
         Alt <='0';
        Data<='1';

			wait for 100 ns;




      -- insert stimulus here

      wait;
   end process;

END;
