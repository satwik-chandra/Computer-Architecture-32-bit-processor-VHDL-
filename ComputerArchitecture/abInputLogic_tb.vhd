library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ABInputLogic_tb is
end;

architecture bench of ABInputLogic_tb is

  component ABInputLogic
  Port(
          a_in, b_in : in std_logic_vector(31 downto 0);
          s_in : in std_logic_vector(1 downto 0);
          ab_out : out std_logic_vector(31 downto 0)
      );  
  end component;

  signal a_in, b_in: std_logic_vector(31 downto 0) := (others => '0');
  signal s_in: std_logic_vector(1 downto 0) := (others => '0');
  signal ab_out: std_logic_vector(31 downto 0) := (others => '0');

begin

  uut: ABInputLogic port map ( a_in   => a_in,
                               b_in   => b_in,
                               s_in   => s_in,
                               ab_out => ab_out );

  stimulus: process
  begin
  
    a_in <= x"AAAAAAAA";
		b_in <= x"BBBBBBBB";
		s_in <= "00";
		
		wait for 10ns;
		s_in <= "01";
		
		wait for 5ns;
		s_in <= "10";
		
		wait for 5ns;
		s_in <= "11";

    wait;
  end process;


end;
  