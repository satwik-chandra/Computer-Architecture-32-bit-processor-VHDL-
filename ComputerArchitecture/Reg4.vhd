----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2020 21:31:16
-- Design Name: 
-- Module Name: Reg4 - Behavioral
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

entity Reg4 is
port ( D : in std_logic_vector(31 downto 0);
load0, load1, Clk : in std_logic;
Q : inout std_logic_vector(31 downto 0));
end Reg4;

architecture Behavioral of Reg4 is

begin

process(Clk)
begin
if (rising_edge(Clk)) then
if (load0='1' and load1 = '1') then
Q<=D after 5 ns;
end if;
end if;
end process;

end Behavioral;
