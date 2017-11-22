-- Engineer: Simran Kaur Phul
-- Description: Four bit synchronous up down counter code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity four_bit_updown_counter is
generic(n:positive:=4);
    Port (N_count : in STD_LOGIC_VECTOR (n-1 downto 0);
        downUp : in STD_LOGIC;
        CLK : in STD_LOGIC;
        reset : in STD_LOGIC;
        Q_output : out STD_LOGIC_VECTOR (n-1 downto 0)
        );
end four_bit_updown_counter;

architecture Behavioural of four_bit_updown_counter is
component four_bit_adder_subtractor is
  Port (
    InA, InB : in std_logic_vector(3 downto 0);
    Control : in std_logic;
    Sum : out std_logic_vector(3 downto 0);
    C_out : out std_logic
  );
end component;

component nbit_reg is
generic(n:positive:=4);
  Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);
      CLK : in STD_LOGIC;
      reset : in STD_LOGIC;
      preset : in STD_LOGIC;
      q : out STD_LOGIC_VECTOR (n-1 downto 0);
      qnot : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;

signal nc2, sumToRegister, outputToInA:std_logic_vector(n-1 downto 0);
signal nc1:std_logic;
constant reg_in : std_logic :='0';
begin
Q_output<=outputToInA;
PartA: four_bit_adder_subtractor port map(outputToInA,N_count,downUp,sumToRegister,nc1);
PartB: nbit_reg generic map(4) port map(sumToRegister,clk,reset,reg_in,outputToInA,nc2);
Q_output<=outputToInA;
end Behavioural;
