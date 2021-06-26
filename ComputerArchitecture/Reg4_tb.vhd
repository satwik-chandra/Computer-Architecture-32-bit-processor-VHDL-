library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Reg4_tb is
end;

architecture bench of Reg4_tb is

  component Reg4
  port ( D : in std_logic_vector(31 downto 0);
  load0,load1, Clk : in std_logic;
  Q : inout std_logic_vector(31 downto 0));
  end component;

  signal D: std_logic_vector(31 downto 0);
  signal load0,load1, Clk: std_logic;
  signal Q: std_logic_vector(31 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Reg4 port map ( D    => D,
                       load0 => load0,
                       load1 => load1,
                       Clk  => Clk,
                       Q    => Q );

  stimulus: process
  begin
  
     wait for 10 ns;
       d <= "11111111111111111111111111111111";
       load0 <= '0';
       load1 <= '0';
       clk <= '0';
       
       wait for 10 ns;
       load0 <= '1';
       load1 <= '1';
       wait for 10 ns;
       
       clk <= '1';
       
       wait for 10 ns;
       
       d <= "11111111111111110000000000000000";
       load0 <= '0';
       load1 <= '1';
       wait for 10 ns;
       clk <= '1';

    stop_the_clock <= true;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      Clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;