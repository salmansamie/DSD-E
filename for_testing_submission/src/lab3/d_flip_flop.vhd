-------------------------------------------------------------

--------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity d_flip_flop is
port( d : in std_logic;
		preset : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		Q : inout std_logic;
		Q_bar : inout std_logic);
end entity;

architecture my_architecture of d_flip_flop is
begin

process (d, clk, preset, reset)
begin

	if reset = '1' then
		q<='0' after 7 ns;
		q_bar<='1' after 7 ns;

		else if preset='1' then
			q<='1' after 7 ns;
			q_bar<='0' after 7 ns;

				else if clk='1' and clk'event then

						q<= d after 7 ns;
						q_bar<= not d after 7 ns;



				end if;
			end if;
	end if;
end process;
end;
