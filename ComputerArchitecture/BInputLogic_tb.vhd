library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity BInputLogic_tb is
end;

architecture bench of BInputLogic_tb is

  component BInputLogic
  Port(
  		b : in STD_LOGIC_VECTOR(31 downto 0);
  		s_in : in STD_LOGIC_VECTOR(1 downto 0);
  		y : out STD_LOGIC_VECTOR(31 downto 0)
  	);
  end component;

  signal b: STD_LOGIC_VECTOR(31 downto 0):= (others => '0');
  signal s_in: STD_LOGIC_VECTOR(1 downto 0):= (others => '0');
  signal y: STD_LOGIC_VECTOR(31 downto 0);

begin

  uut: BInputLogic port map ( b    => b,
                              s_in => s_in,
                              y    => y );

  stimulus: process
  begin
  
    b <= x"AAAAAAAA";
		s_in <= "00";
		
		wait for 5ns;
		s_in <= "01";
		
		wait for 5ns;
		s_in <= "10";
		
		wait for 5ns;
		s_in <= "11";

    wait;
  end process;


end;