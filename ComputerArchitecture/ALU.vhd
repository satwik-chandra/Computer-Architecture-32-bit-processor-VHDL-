----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 12:21:36
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
Port ( 
        a_in, b_in : in std_logic_vector(31 downto 0);
        g_in : in std_logic_vector(3 downto 0);
        v, c : out std_logic;
        g_out : out std_logic_vector(31 downto 0)
    );
end ALU;

architecture Behavioral of ALU is

component ripple_adder
    Port (  a, b: in std_logic_vector(31 downto 0);
        c_in: in std_logic;
        s : out std_logic_vector(31 downto 0);
        c_out, v_out : out std_logic
    );
    end component;
    
     component ABInputLogic
  Port(
        a_in, b_in : in std_logic_vector(31 downto 0);
        s_in : in std_logic_vector(1 downto 0);
        ab_out : out std_logic_vector(31 downto 0)
    );  
  end component;
  
   component BInputLogic is
	Port(
		b : in STD_LOGIC_VECTOR(31 downto 0);
		s_in : in STD_LOGIC_VECTOR(1 downto 0);
		y : out STD_LOGIC_VECTOR(31 downto 0)
	);
    end component;
    
    component Multiplexer2_1 is
port ( In0 : in std_logic_vector(31 downto 0);
In1 : in std_logic_vector(31 downto 0);
s : in std_logic;
Z : out std_logic_vector(31 downto 0));
end component;

signal ab_logic_result,  b_logic_result, ripple_adder_result: std_logic_vector(31 downto 0);

begin

ab_logic_0 : ABInputLogic Port map (
         a_in => a_in,
         b_in => b_in,
         s_in => g_in(2 downto 1),
         ab_out => ab_logic_result
    );
    
 b_logic_0 : BInputLogic Port map (
        b => b_in,
		s_in => g_in(2 downto 1),
		y => b_logic_result
    );
    
  ripple_adder_0 : ripple_adder Port map (
        a => a_in,
        b => b_logic_result, 
        c_in => g_in(0),
        s => ripple_adder_result,
        c_out => c,
        v_out => v
    );
    
 mux2_1 : Multiplexer2_1 Port map(
        In0 => ripple_adder_result,
        In1 => ab_logic_result,
        s => g_in(3),
        z=> g_out
   );  

end Behavioral;
