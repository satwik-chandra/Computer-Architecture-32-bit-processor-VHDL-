library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ripple_adder_tb is
end;

architecture bench of ripple_adder_tb is

  component ripple_adder
   Port(
          a, b: in std_logic_vector(31 downto 0);
          c_in: in std_logic;
          s : out std_logic_vector(31 downto 0);
          c_out, v_out : out std_logic);
  end component;

  signal a, b: std_logic_vector(31 downto 0);
  signal c_in: std_logic;
  signal s: std_logic_vector(31 downto 0);
  signal c_out, v_out: std_logic;

begin

  uut: ripple_adder port map ( a     => a,
                               b     => b,
                               c_in  => c_in,
                               s     => s,
                               c_out => c_out,
                               v_out => v_out );

  stimulus: process
  begin
  
    a <= "00000000000000000000000000000000";
     b <= "00000000000000000000000000000000";
     c_in <= '0';
     wait for 10 ns;
     
     a <= "10101010101010101010101010101010";
     
     wait for 10 ns;
     
     b <= "00000000000000000000000000000001";
 
     wait for 10 ns;
     
     b <= a;
     
     wait for 10 ns;
 
     b <= "10000000000000000000000000000000";
    
     wait for 10 ns;
    
     c_in <= '1';
     
     wait for 10 ns;
    

  --  wait;
  end process;


end;
  