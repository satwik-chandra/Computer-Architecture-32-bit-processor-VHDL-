----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 19:47:59
-- Design Name: 
-- Module Name: ProgramCounter - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramCounter is
    Port(	extendIn : in std_logic_vector(31 downto 0);
			PL, PI, reset : in std_logic;
			pc_out : out std_logic_vector(31 downto 0)
			);
end ProgramCounter;

architecture Behavioral of ProgramCounter is

begin

process(reset, PL, PI)
	variable current : std_logic_vector(31 downto 0);
	variable temp : integer;
	variable tempAdded : std_logic_vector(31 downto 0);
	
	begin
		if(reset = '1') then current := x"00000000";
		elsif(PL = '1') then 
			current := current + extendIn;
		elsif(PI = '1') then
			temp := conv_integer(current); 
			temp := temp + conv_integer(1);
			tempAdded := conv_std_logic_vector(temp, 32);
			current := tempAdded;
		end if;
		pc_out <= current after 2ns;
	end process;

end Behavioral;
