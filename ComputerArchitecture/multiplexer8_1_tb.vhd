library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity multiplexer8_1_tb is
end;

architecture bench of multiplexer8_1_tb is

  component multiplexer8_1
  port ( s : in  std_logic_vector(2 downto 0);
             in0 : in  std_logic;
             in1 : in  std_logic;
             in2 : in  std_logic;
             in3 : in  std_logic;
             in4 : in  std_logic;
             in5 : in  std_logic;
             in6 : in  std_logic;
             in7 : in  std_logic;
             z : out  std_logic);
  end component;

  signal s: std_logic_vector(2 downto 0);
  signal in0: std_logic;
  signal in1: std_logic;
  signal in2: std_logic;
  signal in3: std_logic;
  signal in4: std_logic;
  signal in5: std_logic;
  signal in6: std_logic;
  signal in7: std_logic;
  signal z: std_logic;

begin

  uut: multiplexer8_1 port map ( s   => s,
                                 in0 => in0,
                                 in1 => in1,
                                 in2 => in2,
                                 in3 => in3,
                                 in4 => in4,
                                 in5 => in5,
                                 in6 => in6,
                                 in7 => in7,
                                 z   => z );

  stimulus: process
  begin
  
    wait for 10 ns;
      
        in0 <= '0';
        in1 <= '1';
        in2 <= '0';
        in3 <= '1';
        in4 <= '0';
        in5 <= '1';
        in6 <= '0';
        in7 <= '1';
   
       wait for 10 ns;
       s <="000";
       wait for 10 ns;
       s <="001";
       wait for 10 ns;
       s <="010";
       wait for 10 ns;
       s <="011";
       wait for 10 ns;
       s <="100";
       wait for 10 ns;
       s <="101";
       wait for 10 ns;
       s <="110";
       wait for 10 ns;
       s <="111";
 --     wait;
  end process;


end;