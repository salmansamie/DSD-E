--Engineer: Salman Rahman
--Email: salman.rahamn@se14.qmul.ac.uk


--Ripple counter:
--It is an asynchronous counter where only the first flip flop is clocked 
--by an external clock. And the rest n-flip flops are clocked by the output
--of the previous flip-flops


-- In this n Bit Ripple Counter we are going to use a component D flip-flop.
-- Here, we will have two situations: 
-- (1) When the flip-flop is clocked by the input clock or,
-- (2) When the D flip-flop is clocked by the Q(not) from the previous
--     flip-flop.


library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  

-- Entity for the n_bit_ripple_counter
entity n_bit_ripple_counter is  
    generic(n: positive:= 8);

    --Setting up the inputs and outputs
    Port ( CLK : in STD_LOGIC;  
        reset : in STD_LOGIC;  
        Q_outputs : inout STD_LOGIC_VECTOR (n-1 downto 0);  
        Q_bar_outputs : inout STD_LOGIC_VECTOR (n-1 downto 0));  
end n_bit_ripple_counter;  

-- Setting up the architecture
architecture Behavioral of n_bit_ripple_counter is  
    
    -- Setting up the component for Q and Q(not) of Dflip-flop
    component flip_flop_clk_reset
        Port ( reset : in STD_LOGIC;  
            CLK : in STD_LOGIC;  
            Q : inout STD_LOGIC;  
            QNOT : inout STD_LOGIC);  
    end component;  

    --signal
    signal tonextT:std_logic_vector(n-1 downto 0);  

    begin
        inst : for i in n-1 downto 0 
        generate
            -- Now we do mapping. 
            -- If i=0 then map the component 0
            if1: if i = 0 
                generate
                    T_it: flip_flop_clk_reset port map ( reset, CLK, Q_outputs(i),Q_bar_outputs(i)) ;  
                end generate;

            --And if i !=0, then we clock the previous Q(Not)
            if2:if i/=0 
                generate   
                T_it: flip_flop_clk_reset port map ( reset, Q_bar_outputs(i-1), Q_outputs(i),Q_bar_outputs(i)) ;  
                end generate;  
        end generate;  

end Behavioral;