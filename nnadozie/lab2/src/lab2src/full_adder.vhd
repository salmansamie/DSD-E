--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis
-- Group 3
--
-- Create Date:    21:46:13 09/12/08
-- Design Name:    335labs  
-- Module Name:    full_adder - halfadd_architecture
-- Project Name:   Lab 1
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:	 full adder
--
-- Dependencies:	 half_adder.vhd, two_input_or.vhd
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- ********* COMMENTS ON HOW THIS DEVICE DESIGN WORKS ******************
--
-- ENTITY 
-- the entity declaration defines the interface of "full_adder" 
--
-- ARCHITECTURE 
-- architecture describes the internal structure of the device 
--
-- COMPONENTS
-- this architecture requires two sub-components: 
--   * "half_adder" 
--   * "two_input_or"
-- You must provide the code for these components before the full_adder design
-- can be synthesized 
--
-- SIGNALS
-- define the internal signals that connect the components together:
--
-- *********************************************************************

-- ENTITY  
entity full_adder is
    Port ( A : in std_logic;
           B : in std_logic;
           c : in std_logic;
           S : out std_logic;
           c_out : out std_logic);
end full_adder;


-- ARCHITECTURE 
architecture halfadd_architecture of full_adder is

-- COMPONENTS
component half_adder
	Port (A, B : in std_logic;
			S, c : out std_logic);
end component;

component two_input_or
	Port (A, B : in std_logic;
			c_out : out std_logic);
end component;

-- SIGNALS
signal sig1, sig2, sig3 : std_logic; 

begin

-- instances of components:
HalfA1 : half_adder port map (A, B, sig1, sig2);
HalfA2 : half_adder port map (sig1, c, S, sig3);
Or1	 : two_input_or port map (sig2, sig3, c_out);

end halfadd_architecture;