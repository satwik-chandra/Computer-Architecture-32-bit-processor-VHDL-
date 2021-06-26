----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 17:05:21
-- Design Name: 
-- Module Name: ControlAddressRegister - Behavioral
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

entity ControlAddressRegister is
    port(   
        opcode : in std_logic_vector(16 downto 0);
        load : in std_logic;
        Clk : in std_logic;
        reset : in std_logic;
        address : inout std_logic_vector(16 downto 0)
);
end ControlAddressRegister;

architecture Behavioral of ControlAddressRegister is

begin

process(Clk)

begin
    if reset = '1' then
        address <= "11000000000000000";
    else
        if(rising_edge(Clk)) then
            if load = '1' then
                address <= opcode;
            else
                address <= address + 1  after 5 ns;
            end if;
        end if;
    end if;
end process;


end Behavioral;
