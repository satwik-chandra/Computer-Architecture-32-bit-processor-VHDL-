----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 16:37:35
-- Design Name: 
-- Module Name: InstructionRegister - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstructionRegister is
 Port(	IR : in std_logic_vector(31 downto 0);
			IL : in std_logic;
			opcode :  out std_logic_vector(16 downto 0);
			DR, SA, SB : out std_logic_vector(4 downto 0)
			);
end InstructionRegister;

architecture Behavioral of InstructionRegister is

begin

            opcode <= IR(31 downto 15) after 2ns when IL = '1';
	        DR <= IR(14 downto 10) after 2ns when IL = '1';
	        SA <= IR(9 downto 5) after 2ns when IL = '1';
	        SB <= IR(4 downto 0) after 2ns when IL = '1';

end Behavioral;
