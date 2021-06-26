----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2020 21:17:26
-- Design Name: 
-- Module Name: Multiplexer3_1 - Behavioral
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

entity Multiplexer3_1 is
 Port ( 
    in0, in1, in2 : in std_logic;
    s : in std_logic_vector(1 downto 0);
    z : out std_logic
  );
end Multiplexer3_1;

architecture Behavioral of Multiplexer3_1 is

begin
     z <= 	in0 after 1ns when (s <= "00") else
			in1 after 1ns when (s <= "01") else
			in2 after 1ns when (s <= "10");

end Behavioral;
