--Engineer: Salman Rahman
--Email: salman.rahman@se14.qmul.ac.uk

library IEEE;  
 use IEEE.STD_LOGIC_1164.ALL;  
 use IEEE.STD_LOGIC_ARITH.ALL;  
 use IEEE.STD_LOGIC_UNSIGNED.ALL;  
 
 -- Entity for four_bit_alu
 entity four_bit_alu is  
   Port ( InA : in std_logic_vector(3 downto 0);  
       InB : in std_logic_vector(3 downto 0);  
       F : in std_logic_vector(2 downto 0);  
       Output : out std_logic_vector(3 downto 0);  
       C_out : out std_logic);  
 end four_bit_alu;  
 
 -- Architecture for four_bit_alu
 architecture Behavioral of four_bit_alu is  
        --component four_bit_arithmetic_unit
        component four_bit_arithmetic_unit   
        Port ( InA : in STD_LOGIC_VECTOR (3 downto 0);  
            InB : in STD_LOGIC_VECTOR (3 downto 0);  
            Control : in STD_LOGIC_VECTOR (1 downto 0);  
            Sum : out STD_LOGIC_VECTOR (3 downto 0);  
            C_out : out STD_LOGIC);  
        end component;  

        --component nbitlogicunit   
        component nbitlogicunit   
        generic(n:positive:=4);  
        Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
            InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
            control : in STD_LOGIC_VECTOR (1 downto 0);  
            output : out STD_LOGIC_VECTOR (n-1 downto 0));  
        end component;   

        --component nbittwoinputmux  
        component nbittwoinputmux  
            generic(n:positive:=4);  
        Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
            InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
            Control : in STD_LOGIC;  
            Output : out STD_LOGIC_VECTOR (n-1 downto 0));  
        end component;   
 
 -- Signals  
 signal arith_to_mux, logic_to_mux : std_logic_vector (3 downto 0);  
 
 begin  
 -- INSTANCES  
      -- instantiate the arithemetic unit:  
      arith : four_bit_arithmetic_unit port map (InA, InB, F(1 downto 0), arith_to_mux, C_out);  
      -- instantiate the logic unit with a bit-width of 4 (map generic value "n" to 4)  
      logic : nbitlogicunit port map (InA, InB, F(1 downto 0), logic_to_mux);  
      -- instantiate the mux with a bit-width of 4 (map generic value "n" to 4)  
      mux : nbittwoinputmux port map (logic_to_mux,arith_to_mux, F(2), output);  
 end Behavioral; 