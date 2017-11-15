--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk


-- Universal Shift Register is a register which can be configured to load 
-- and/or retrieve the data in any mode (either serial or parallel) by 
-- shifting it either towards right or towards left.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

--entity declaration
entity shift_reg is
    port(
        din:in STD_LOGIC_VECTOR(3 downto 0);
        clk: in STD_LOGIC;
        rst: in STD_LOGIC;
        S: in STD_LOGIC_vector(1 downto 0);
        dout:inout STD_LOGIC_vector(3 downto 0));
end shift_reg;

-- architecture definition
architecture Behavioral of shift_reg is
    -- mapping signals
    signal msbin,lsbin:STD_LOGIC;

    begin
        -- using process for clock and reset
        process(clk,rst)
            begin
                if(rst='1') then
                dout <= "0000";
            
                elsif(clk'event and clk='1') then
                    msbin <= din(3);
                    lsbin <= din(0);
                    case S is
                        when "00" => dout <= dout;--hold
                        when "01" => dout <= msbin & dout(3 downto 1);-- right shift
                        when "10" => dout <= dout(2 downto 0) & lsbin;-- left shift
                        when "11" => dout <= din;-- parallel
                        when others => dout <= "XXXX";
                    end case;
                end if;
    end process;
end Behavioral;