----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2020 20:27:56
-- Design Name: 
-- Module Name: Decoder2_4 - Behavioral
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

entity Decoder2_4 is
Port ( A0 : in std_logic;
A1 : in std_logic;
Q0 : out std_logic;
Q1 : out std_logic;
Q2 : out std_logic;
Q3 : out std_logic);
end Decoder2_4;

architecture Behavioral of Decoder2_4 is

begin

Q0<= ((not A0) and (not A1)) after 5 ns;
Q1<= (A0 and (not A1)) after 5 ns;
Q2<= ((not A0) and A1) after 5 ns;
Q3<= (A0 and A1) after 5 ns;

end Behavioral;
