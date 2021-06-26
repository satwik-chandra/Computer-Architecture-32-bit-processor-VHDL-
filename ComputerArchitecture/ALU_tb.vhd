library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ALU_tb is
end;

architecture bench of ALU_tb is

  component ALU
  Port ( 
          a_in, b_in : in std_logic_vector(31 downto 0);
          g_in : in std_logic_vector(3 downto 0);
          v, c : out std_logic;
          g_out : out std_logic_vector(31 downto 0)
      );
  end component;

  signal a_in, b_in: std_logic_vector(31 downto 0);
  signal g_in: std_logic_vector(3 downto 0);
  signal v, c: std_logic;
  signal g_out: std_logic_vector(31 downto 0) ;

begin

  uut: ALU port map ( a_in  => a_in,
                      b_in  => b_in,
                      g_in  => g_in,
                      v     => v,
                      c     => c,
                      g_out => g_out );

  stimulus: process
  begin
  
   a_in <= x"0B8436AF";
    b_in <= x"0126D254";
    g_in <= "0000";
    
    wait for 50ns;
    g_in <= "0001";
    
    wait for 50ns;
    g_in <= "0010";
    
    wait for 50ns;
    g_in <= "0010";
    
    wait for 50ns;
    g_in <= "0011";
    
    wait for 50ns;
    g_in <= "0100";
    
    wait for 50ns;
    g_in <= "0101";
    
    wait for 50ns;
    g_in <= "0110";
    
    wait for 50ns;
    g_in <= "0111";
    
    wait for 50ns;
    g_in <= "1000";
    
    wait for 50ns;
    g_in <= "1001";
    
    wait for 50ns;
    g_in <= "1010";
    
    wait for 50ns;
    g_in <= "1011";
    
    wait for 50ns;
    g_in <= "1100";
    
    wait for 50ns;
    g_in <= "1101";
    
    wait for 50ns;
    g_in <= "1110";
    
    wait for 50ns;
    g_in <= "1111";
    --     wait;

  end process;


end;