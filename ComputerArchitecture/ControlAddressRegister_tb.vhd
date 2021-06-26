library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ControlAddressRegister_tb is
end;

architecture bench of ControlAddressRegister_tb is

  component ControlAddressRegister
      port(   
          opcode : in std_logic_vector(16 downto 0);
          load : in std_logic;
          Clk : in std_logic;
          reset : in std_logic;
          address : inout std_logic_vector(16 downto 0)
  );
  end component;

  signal opcode: std_logic_vector(16 downto 0);
  signal load: std_logic;
  signal Clk: std_logic;
  signal reset: std_logic;
  signal address: std_logic_vector(16 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: ControlAddressRegister port map ( opcode  => opcode,
                                         load    => load,
                                         Clk     => Clk,
                                         reset   => reset,
                                         address => address );

  stimulus: process
  begin
  
   wait for 5ns;
		reset <= '1';
		
		wait for 30ns;
		reset <= '0';
		
		wait for 30ns;
		opcode <= "10000000000000000";
		
		wait for 30ns;
		opcode <= "10100000010000010";
		load <= '1';   

    stop_the_clock <= true;
    wait;
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