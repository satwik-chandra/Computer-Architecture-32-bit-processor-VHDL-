library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Processor_tb is
end;

architecture bench of Processor_tb is

  component Processor
    Port( reset, Clk : in std_logic;
              PC_Count : out std_logic_vector(31 downto 0);
              instruction : out std_logic_vector(31 downto 0));
  end component;

  signal reset, Clk: std_logic;
  signal PC_Count: std_logic_vector(31 downto 0);
  signal instruction: std_logic_vector(31 downto 0);
   constant clk_period : time := 120 ns;
begin

Clk <= not Clk after clk_period/2;

  uut: Processor port map ( reset       => reset,
                            Clk         => Clk,
                            PC_Count    => PC_Count,
                            instruction => instruction );

  stimulus: process
  begin
  
    reset <= '1';
    wait for clk_period;
    
    reset <= '0';
    wait for clk_period*30;

  end process;


end;