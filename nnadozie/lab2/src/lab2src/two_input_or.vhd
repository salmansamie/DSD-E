--------------------------------------------------------------------------------
-- Engineer: Jack Cockinis
-- Group 3
--
-- Create Date:    05/10/16
-- Design Name:    335labs  
-- Module Name:    Digital Systems Design
-- Project Name:   Lab 1
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:	 OR gate (2 inputs, 1 output)
--
-- Dependencies:	 Nil 
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
-- the entity declaration defines the interface of "OR gate"
--
-- ARCHITECTURE 
-- architecture describes the internal structure of the device 

--*********************************************************************

-- ENTITY  
entity two_input_or is
    Port ( a : in std_logic;
           b : in std_logic;
           c_out : out std_logic);

end two_input_or;


-- ARCHITECTURE 
architecture my_architecture of two_input_or is

begin
c_out <= a or b after 7ns;
end my_architecture;