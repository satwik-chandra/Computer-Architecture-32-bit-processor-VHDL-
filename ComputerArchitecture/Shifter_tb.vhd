library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Shifter_tb is
end;

architecture bench of Shifter_tb is

  component Shifter
  Port ( 
      b : in std_logic_vector(31 downto 0);
      s : in std_logic_vector(1 downto 0);
      IL, IR : in std_logic;
      h : out std_logic_vector(31 downto 0)
    );
  end component;

  signal b: std_logic_vector(31 downto 0);
  signal s: std_logic_vector(1 downto 0);
  signal IL, IR: std_logic;
  signal h: std_logic_vector(31 downto 0) ;

begin

  uut: Shifter port map ( b  => b,
                          s  => s,
                          IL => IL,
                          IR => IR,
                          h  => h );

  stimulus: process
  begin
  
  b <= "11111111111111111111111111111111";
   s <= "00";
   IL <= '0';
   IR <= '0';
   
   wait for 10 ns;
   
   b <= "11111111111111111111111111111111";
   s <= "01";
   
   wait for 10 ns;
   
   s <= "10";
   
   wait for 10 ns;
  end process;


end;
  