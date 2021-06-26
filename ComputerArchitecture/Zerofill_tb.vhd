library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ZeroFill_tb is
end;

architecture bench of ZeroFill_tb is

  component ZeroFill
  Port(	SB_in : in STD_LOGIC_VECTOR(2 downto 0);
  			zero_fill_out : out STD_LOGIC_VECTOR(31 downto 0)
  			);
  end component;

  signal SB_in: STD_LOGIC_VECTOR(2 downto 0);
  signal zero_fill_out: STD_LOGIC_VECTOR(31 downto 0) ;

begin

  uut: ZeroFill port map ( SB_in         => SB_in,
                           zero_fill_out => zero_fill_out );

  stimulus: process
  begin
  
    wait for 10ns;
		SB_in <= "001";
		wait for 10ns;
		SB_in <= "010";
		wait for 10ns;
		SB_in <= "100";
		
  end process;


end;
  