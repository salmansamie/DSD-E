--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk


library ieee ; 
use ieee.std_logic_1164.all;

-- Entity declaration
entity nTw_ring_counter is
    --
    generic (n : integer := 5);
        Port ( 
            clk : in std_logic ;
            areset : in std_logic ;
            count : out std_logic_vector (0 to n -1) ;
            tc : out std_logic
            );
end entity nTw_ring_counter ;

architecture Behavioural of nTw_ring_counter is
    -- Internal counter signal
    signal count_int : std_logic_vector (0 to n -1) ;
    begin

    -- The Johnson counter itself
    process (clk , areset ) is
    begin
        -- The reset is active high
        if areset = '1' then
        -- Set all counter bits to 0, nice VHDL trick
        count_int <= ( others => '0');
        elsif rising_edge ( clk ) then
        -- Shift the lot a stage and feed back the last one
        count_int <= not count_int (n -1) & count_int (0 to n -2) ;
        end if;
    end process ;

    -- The outputs
    count <= count_int ;
    -- tc high when counter is ...01 , where the dots should be all zeros.
    -- tc <= ( not count_int (n -1) ) nor count_int (n -2) ;
    -- tc <= '1' when count_int (n -1) = '1' and count_int (n -2) = '0' else '0';
    tc <= '1' when count_int (n -2 to n -1) = "01" else '0';

end architecture Behavioural ;