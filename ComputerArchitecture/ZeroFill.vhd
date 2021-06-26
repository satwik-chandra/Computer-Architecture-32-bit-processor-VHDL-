----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 16:07:41
-- Design Name: 
-- Module Name: ZeroFill - Behavioral
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

entity ZeroFill is
Port(	SB_in : in STD_LOGIC_VECTOR(2 downto 0);
			zero_fill_out : out STD_LOGIC_VECTOR(31 downto 0)
			);
end ZeroFill;

architecture Behavioral of ZeroFill is
    signal ZeroFill : STD_LOGIC_VECTOR(31 downto 0);
begin
    ZeroFill(2 downto 0) <= SB_in;
	ZeroFill(31 downto 3) <= "00000000000000000000000000000";

end Behavioral;
