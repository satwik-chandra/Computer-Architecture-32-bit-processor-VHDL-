----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2020 19:16:32
-- Design Name: 
-- Module Name: Multiplexer32_1 - Behavioral
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

entity Multiplexer32_1 is
port(IN0: in std_logic_vector(31 downto 0);
IN1: in std_logic_vector(31 downto 0);
IN2: in std_logic_vector(31 downto 0);
IN3: in std_logic_vector(31 downto 0);
IN4: in std_logic_vector(31 downto 0);
IN5: in std_logic_vector(31 downto 0);
IN6: in std_logic_vector(31 downto 0);
IN7: in std_logic_vector(31 downto 0);
IN8: in std_logic_vector(31 downto 0);
IN9: in std_logic_vector(31 downto 0);
IN10: in std_logic_vector(31 downto 0);
IN11: in std_logic_vector(31 downto 0);
IN12: in std_logic_vector(31 downto 0);
IN13: in std_logic_vector(31 downto 0);
IN14: in std_logic_vector(31 downto 0);
IN15: in std_logic_vector(31 downto 0);
IN16: in std_logic_vector(31 downto 0);
IN17: in std_logic_vector(31 downto 0);
IN18: in std_logic_vector(31 downto 0);
IN19: in std_logic_vector(31 downto 0);
IN20: in std_logic_vector(31 downto 0);
IN21: in std_logic_vector(31 downto 0);
IN22: in std_logic_vector(31 downto 0);
IN23: in std_logic_vector(31 downto 0);
IN24: in std_logic_vector(31 downto 0);
IN25: in std_logic_vector(31 downto 0);
IN26: in std_logic_vector(31 downto 0);
IN27: in std_logic_vector(31 downto 0);
IN28: in std_logic_vector(31 downto 0);
IN29: in std_logic_vector(31 downto 0);
IN30: in std_logic_vector(31 downto 0);
IN31: in std_logic_vector(31 downto 0);

 s: in std_logic_vector(4 downto 0);
 output: out std_logic_vector(31 downto 0));
end Multiplexer32_1;

architecture Behavioral of Multiplexer32_1 is

begin
 

output <= 	IN0 after 1ns when (s <= "00000") else
			IN1 after 1ns when (s <= "00001") else
			IN2 after 1ns when (s <= "00010") else
			IN3 after 1ns when (s <= "00100") else
			IN4 after 1ns when (s <= "01000") else
			IN5 after 1ns when (s <= "10000") else
			IN6 after 1ns when (s <= "00011") else
			IN7 after 1ns when (s <= "00110") else
			IN8 after 1ns when (s <= "00101") else
			IN9 after 1ns when (s <= "01010") else
			IN10 after 1ns when (s <= "01001") else
			IN11 after 1ns when (s <= "01100") else
			IN12 after 1ns when (s <= "11000") else
			IN13 after 1ns when (s <= "10001") else
			IN14 after 1ns when (s <= "10100") else
			IN15 after 1ns when (s <= "10010") else
			IN16 after 1ns when (s <= "11100") else
			IN17 after 1ns when (s <= "11001") else
			IN18 after 1ns when (s <= "11010") else
			IN19 after 1ns when (s <= "10101") else
			IN20 after 1ns when (s <= "10110") else
			IN21 after 1ns when (s <= "10011") else
			IN22 after 1ns when (s <= "00111") else
			IN23 after 1ns when (s <= "01110") else
			IN24 after 1ns when (s <= "01011") else
			IN25 after 1ns when (s <= "01101") else
			IN26 after 1ns when (s <= "11110") else
			IN27 after 1ns when (s <= "11101") else
			IN28 after 1ns when (s <= "11011") else
			IN29 after 1ns when (s <= "10111") else
			IN30 after 1ns when (s <= "01111") else
			IN31 after 1ns when (s <= "11111");


end Behavioral;
