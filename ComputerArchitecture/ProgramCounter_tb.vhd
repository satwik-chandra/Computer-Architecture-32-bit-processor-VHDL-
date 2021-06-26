library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ProgramCounter_tb is
end;

architecture bench of ProgramCounter_tb is

  component ProgramCounter
      Port(	extendIn : in std_logic_vector(31 downto 0);
  			PL, PI, reset : in std_logic;
  			pc_out : out std_logic_vector(31 downto 0)
  			);
  end component;

  signal extendIn: std_logic_vector(31 downto 0);
  signal PL, PI, reset: std_logic;
  signal pc_out: std_logic_vector(31 downto 0) ;

begin

  uut: ProgramCounter port map ( extendIn => extendIn,
                                 PL       => PL,
                                 PI       => PI,
                                 reset    => reset,
                                 pc_out   => pc_out );

  stimulus: process
  begin
  
    wait for 5ns;
		reset <= '1';
	    extendIn <= x"00000000";
		
		wait for 5ns;
		reset <= '0';
		
		wait for 5ns;
		PI <= '1';
		extendIn <= x"00000002";
		
		wait for 20ns;
		PI <= '0';
		PL <= '1';
		extendIn <= x"0000000F";

    wait;
  end process;


end;
  