----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 17:32:37
-- Design Name: 
-- Module Name: Extend - Behavioral
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

entity Extend is
  Port(	
	       DR : in std_logic_vector(4 downto 0);
	       SB : in std_logic_vector(4 downto 0);
	       epc : out std_logic_vector(31 downto 0)
            
            );
end Extend;

architecture Behavioral of Extend is
   signal extend : std_logic_vector(31 downto 0);
begin

extend(31 downto 10) <= "0000000000000000000000" after 5 ns;
    extend(9 downto 5) <= DR after 5 ns;
    extend(4 downto 0) <= SB after 5 ns;
	epc <= extend;

end Behavioral;
