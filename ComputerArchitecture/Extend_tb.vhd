library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Extend_tb is
end;

architecture bench of Extend_tb is

  component Extend
    Port(	
  	       DR : in std_logic_vector(4 downto 0);
  	       SB : in std_logic_vector(4 downto 0);
  	       epc : out std_logic_vector(31 downto 0)
              );
  end component;

  signal DR: std_logic_vector(4 downto 0);
  signal SB: std_logic_vector(4 downto 0);
  signal epc: std_logic_vector(31 downto 0) ;

begin

  uut: Extend port map ( DR  => DR,
                         SB  => SB,
                         epc => epc );

  stimulus: process
  begin
  
   dr <= "10100";
    sb <= "10000";
    wait for 10 ns;

  end process;


end;
  