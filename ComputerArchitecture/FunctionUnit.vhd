----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 13:49:58
-- Design Name: 
-- Module Name: FunctionUnit - Behavioral
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

entity FunctionUnit is
 Port ( 
    a_in, b_in : in std_logic_vector(31 downto 0);
    function_select : in std_logic_vector(4 downto 0);
    v, c, n, z : out std_logic;
    f : out std_logic_vector(31 downto 0)
  );
end FunctionUnit;

architecture Behavioral of FunctionUnit is

component ALU
    Port ( 
        a_in, b_in : in std_logic_vector(31 downto 0);
        g_in : in std_logic_vector(3 downto 0);
        v, c : out std_logic;
        g_out : out std_logic_vector(31 downto 0)
    );
    end component;
    
component Shifter 
      Port ( 
        b : in std_logic_vector(31 downto 0);
        s : in std_logic_vector(1 downto 0);
        IL, IR : in std_logic;
        h : out std_logic_vector(31 downto 0)
      );
    end component;
    
    component Multiplexer2_1 is
port ( In0 : in std_logic_vector(31 downto 0);
In1 : in std_logic_vector(31 downto 0);
s : in std_logic;
Z : out std_logic_vector(31 downto 0));
end component;

  signal alu_out, shifter_out, final_signal : std_logic_vector(31 downto 0);

begin

alu_0 : ALU Port map (
        a_in => a_in,
        b_in => b_in,
        g_in => function_select(3 downto 0),
        v => v,
        c => c,
        g_out => alu_out
        );
        
 shifter_0 : Shifter Port map (
        b => b_in,
        s => function_select(3 downto 2),
        IL => '0',
        IR => '0',
        h => shifter_out
    );
    
 multiplexer2_32_0 : Multiplexer2_1 Port map (
        In0 => alu_out,
        In1 => shifter_out,
        s => function_select(4),
        z => final_signal
    );
    
    f <= final_signal;
    
    n <= final_signal(31);
    z <= (final_signal(31) or final_signal(30) or final_signal(29) or final_signal(28) or final_signal(27) or final_signal(26) 
            or final_signal(25) or final_signal(24) or final_signal(23) or final_signal(22) or final_signal(21) 
            or final_signal(20) or final_signal(19) or final_signal(18) or final_signal(17) or final_signal(16) or
            final_signal(15) or final_signal(14) or final_signal(13) or final_signal(12) or final_signal(11) 
            or final_signal(10) or final_signal(9) or final_signal(8) or final_signal(7) or final_signal(6) 
            or final_signal(5) or final_signal(4) or final_signal(3) or final_signal(2) or final_signal(1) or final_signal(0));

end Behavioral;
