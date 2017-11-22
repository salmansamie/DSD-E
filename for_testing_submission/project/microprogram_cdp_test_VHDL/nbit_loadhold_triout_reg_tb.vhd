--------------------------------------------------------------------------------

-- Engineer: Loui Rajabi
-- Description: n-bit tri-state buffer test bench

--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity nbit_loadhold_triout_reg_tb is
end nbit_loadhold_triout_reg_tb;

architecture behavior of nbit_loadhold_triout_reg_tb is
  component nbit_loadhold_triout_reg
    Port ( dinputs : in STD_LOGIC_VECTOR (3 downto 0);
        loadhold : in STD_LOGIC;
        CLK : in STD_LOGIC;
        reset : in STD_LOGIC;
		  preset : in STD_LOGIC;
        outputenable : in STD_LOGIC;
        qoutputs : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal dinputs : std_logic_vector(3 downto 0) := (others => '0');
  signal loadhold : std_logic := '0';
  signal CLK : std_logic := '0';
  signal reset : std_logic := '0';
  constant preset : std_logic := '0';
  signal outputenable : std_logic := '0';
  signal qoutputs : std_logic_vector(3 downto 0);
  constant CLK_period : time := 10 ns;

--constant <clock>_period : time := 10 ns;

begin
	uut: nbit_loadhold_triout_reg Port map (
	Dinputs => Dinputs,
	loadhold => loadhold,
	CLK => CLK,
	reset => reset,
	preset => preset,
  outputenable => outputenable,
	qoutputs => qoutputs);

clk <= not clk after 50 ns; -- period = 100ns

--if hold enabled, should give last q even though there's a new input.
--mirrors input when reset =0 and outputenable=1
--when reset=1 and outputenable=1 output is all 0
--when outputenable=0, output undefined

stim_proc: process
begin
	wait for 100 ns;
	Dinputs <= "1001";
  outputenable <= '1';

	wait for 100 ns;
	loadhold <= '1';

  wait for 100 ns;
  Dinputs <= "0110";

	wait for 100 ns;
	loadhold <= '0';

	wait for 100 ns;
	reset <= '1';

	wait for 100 ns;
	reset <= '0';

  wait for 100 ns;
  outputenable <= '0';

	wait;
end process;

end;
