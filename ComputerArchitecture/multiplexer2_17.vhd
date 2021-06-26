----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2021 02:51:26
-- Design Name: 
-- Module Name: multiplexer2_17 - Behavioral
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

entity multiplexer2_17 is
port (
    in0, in1 : in std_logic_vector(16 downto 0);
    s : in std_logic;
    Z : out std_logic_vector(16 downto 0)
);
end multiplexer2_17;

architecture Behavioral of multiplexer2_17 is

begin

 process (s,in0,in1)
		begin
		case  s is
			when '0' => z <= in0;
			when '1' => z <= in1;
			when others => z <= in0;
		end case;
	end process;

end Behavioral;
