----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 12:13:33
-- Design Name: 
-- Module Name: BInputLogic - Behavioral
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

entity BInputLogic is
Port(
		b : in STD_LOGIC_VECTOR(31 downto 0);
		s_in : in STD_LOGIC_VECTOR(1 downto 0);
		y : out STD_LOGIC_VECTOR(31 downto 0)
	);
end BInputLogic;

architecture Behavioral of BInputLogic is

Component multiplexer2to1
	Port(
		s, in_0, in_1 : in STD_LOGIC;
		z : out STD_LOGIC
	);
	End Component;

begin

mux00: multiplexer2to1 PORT MAP(
		s => b(0),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(0)
	);
	
	mux01: multiplexer2to1 PORT MAP(
		s => b(1),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(1)
	);
	
	mux02: multiplexer2to1 PORT MAP(
		s => b(2),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(2)
	);
	
	mux03: multiplexer2to1 PORT MAP(
		s => b(3),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(3)
	);
	
	mux04: multiplexer2to1 PORT MAP(
		s => b(4),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(4)
	);
	
	mux05: multiplexer2to1 PORT MAP(
		s => b(5),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(5)
	);
	
	mux06: multiplexer2to1 PORT MAP(
		s => b(6),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(6)
	);
	
	mux07: multiplexer2to1 PORT MAP(
		s => b(7),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(7)
	);
	
	mux08: multiplexer2to1 PORT MAP(
		s => b(8),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(8)
	);
	
	mux09: multiplexer2to1 PORT MAP(
		s => b(9),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(9)
	);
	
	mux10: multiplexer2to1 PORT MAP(
		s => b(10),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(10)
	);
	
	mux11: multiplexer2to1 PORT MAP(
		s => b(11),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(11)
	);
	
	mux12: multiplexer2to1 PORT MAP(
		s => b(12),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(12)
	);
	
	mux13: multiplexer2to1 PORT MAP(
		s => b(13),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(13)
	);
	
	mux14: multiplexer2to1 PORT MAP(
		s => b(14),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(14)
	);
	
	mux15: multiplexer2to1 PORT MAP(
		s => b(15),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(15)
	);
	
	mux16: multiplexer2to1 PORT MAP(
		s => b(16),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(16)
	);
	
	mux17: multiplexer2to1 PORT MAP(
		s => b(17),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(17)
	);
	
	mux18: multiplexer2to1 PORT MAP(
		s => b(18),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(18)
	);
	
	mux19: multiplexer2to1 PORT MAP(
		s => b(19),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(19)
	);
	
	mux20: multiplexer2to1 PORT MAP(
		s => b(20),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(20)
	);
	
	mux21: multiplexer2to1 PORT MAP(
		s => b(21),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(21)
	);
	
	mux22: multiplexer2to1 PORT MAP(
		s => b(22),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(22)
	);
	
	mux23: multiplexer2to1 PORT MAP(
		s => b(23),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(23)
	);
	
	mux24: multiplexer2to1 PORT MAP(
		s => b(24),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(24)
	);
	
	mux25: multiplexer2to1 PORT MAP(
		s => b(25),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(25)
	);
	
	mux26: multiplexer2to1 PORT MAP(
		s => b(26),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(26)
	);
	
	mux27: multiplexer2to1 PORT MAP(
		s => b(27),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(27)
	);
	
	mux28: multiplexer2to1 PORT MAP(
		s => b(28),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(28)
	);
	
	mux29: multiplexer2to1 PORT MAP(
		s => b(29),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(29)
	);
	
	mux30: multiplexer2to1 PORT MAP(
		s => b(30),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(30)
	);
	
	mux31: multiplexer2to1 PORT MAP(
		s => b(31),
		in_0 => s_in(0),
		in_1 => s_in(1),
		z => y(31)
	);

end Behavioral;
