library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Multiplexer32_1_tb is
end;

architecture bench of Multiplexer32_1_tb is

  component Multiplexer32_1
  port(IN0: in std_logic_vector(31 downto 0);
  IN1: in std_logic_vector(31 downto 0);
  IN2: in std_logic_vector(31 downto 0);
  IN3: in std_logic_vector(31 downto 0);
  IN4: in std_logic_vector(31 downto 0);
  IN5: in std_logic_vector(31 downto 0);
  IN6: in std_logic_vector(31 downto 0);
  IN7: in std_logic_vector(31 downto 0);
  IN8: in std_logic_vector(31 downto 0);
  IN9: in std_logic_vector(31 downto 0);
  IN10: in std_logic_vector(31 downto 0);
  IN11: in std_logic_vector(31 downto 0);
  IN12: in std_logic_vector(31 downto 0);
  IN13: in std_logic_vector(31 downto 0);
  IN14: in std_logic_vector(31 downto 0);
  IN15: in std_logic_vector(31 downto 0);
  IN16: in std_logic_vector(31 downto 0);
  IN17: in std_logic_vector(31 downto 0);
  IN18: in std_logic_vector(31 downto 0);
  IN19: in std_logic_vector(31 downto 0);
  IN20: in std_logic_vector(31 downto 0);
  IN21: in std_logic_vector(31 downto 0);
  IN22: in std_logic_vector(31 downto 0);
  IN23: in std_logic_vector(31 downto 0);
  IN24: in std_logic_vector(31 downto 0);
  IN25: in std_logic_vector(31 downto 0);
  IN26: in std_logic_vector(31 downto 0);
  IN27: in std_logic_vector(31 downto 0);
  IN28: in std_logic_vector(31 downto 0);
  IN29: in std_logic_vector(31 downto 0);
  IN30: in std_logic_vector(31 downto 0);
  IN31: in std_logic_vector(31 downto 0);
   s: in std_logic_vector(4 downto 0);
   output: out std_logic_vector(31 downto 0));
  end component;

  signal IN0: std_logic_vector(31 downto 0);
  signal IN1: std_logic_vector(31 downto 0);
  signal IN2: std_logic_vector(31 downto 0);
  signal IN3: std_logic_vector(31 downto 0);
  signal IN4: std_logic_vector(31 downto 0);
  signal IN5: std_logic_vector(31 downto 0);
  signal IN6: std_logic_vector(31 downto 0);
  signal IN7: std_logic_vector(31 downto 0);
  signal IN8: std_logic_vector(31 downto 0);
  signal IN9: std_logic_vector(31 downto 0);
  signal IN10: std_logic_vector(31 downto 0);
  signal IN11: std_logic_vector(31 downto 0);
  signal IN12: std_logic_vector(31 downto 0);
  signal IN13: std_logic_vector(31 downto 0);
  signal IN14: std_logic_vector(31 downto 0);
  signal IN15: std_logic_vector(31 downto 0);
  signal IN16: std_logic_vector(31 downto 0);
  signal IN17: std_logic_vector(31 downto 0);
  signal IN18: std_logic_vector(31 downto 0);
  signal IN19: std_logic_vector(31 downto 0);
  signal IN20: std_logic_vector(31 downto 0);
  signal IN21: std_logic_vector(31 downto 0);
  signal IN22: std_logic_vector(31 downto 0);
  signal IN23: std_logic_vector(31 downto 0);
  signal IN24: std_logic_vector(31 downto 0);
  signal IN25: std_logic_vector(31 downto 0);
  signal IN26: std_logic_vector(31 downto 0);
  signal IN27: std_logic_vector(31 downto 0);
  signal IN28: std_logic_vector(31 downto 0);
  signal IN29: std_logic_vector(31 downto 0);
  signal IN30: std_logic_vector(31 downto 0);
  signal IN31: std_logic_vector(31 downto 0);
  signal s: std_logic_vector(4 downto 0);
  signal output: std_logic_vector(31 downto 0);

begin

  uut: Multiplexer32_1 port map ( IN0    => IN0,
                                  IN1    => IN1,
                                  IN2    => IN2,
                                  IN3    => IN3,
                                  IN4    => IN4,
                                  IN5    => IN5,
                                  IN6    => IN6,
                                  IN7    => IN7,
                                  IN8    => IN8,
                                  IN9    => IN9,
                                  IN10   => IN10,
                                  IN11   => IN11,
                                  IN12   => IN12,
                                  IN13   => IN13,
                                  IN14   => IN14,
                                  IN15   => IN15,
                                  IN16   => IN16,
                                  IN17   => IN17,
                                  IN18   => IN18,
                                  IN19   => IN19,
                                  IN20   => IN20,
                                  IN21   => IN21,
                                  IN22   => IN22,
                                  IN23   => IN23,
                                  IN24   => IN24,
                                  IN25   => IN25,
                                  IN26   => IN26,
                                  IN27   => IN27,
                                  IN28   => IN28,
                                  IN29   => IN29,
                                  IN30   => IN30,
                                  IN31   => IN31,
                                  s      => s,
                                  output => output );

  stimulus: process
  begin
  
   wait for 10 ns;
      
        IN0 <= x"0126D253";
        IN1 <= x"0126D254";
        IN2 <= x"0126D255";
        IN3 <= x"0126D256";
        IN4 <= x"0126D257";
        IN5 <= x"0126D258";
        IN6 <= x"0126D259";
        IN7 <= x"0126D25A";
        IN8 <= x"0126D25B";
        IN9 <= x"0126D25C";
        IN10 <= x"0126D25D";
        IN11 <= x"0126D25E";
        IN12 <= x"0126D25F";
        IN13 <= x"0126D260";
        IN14 <= x"0126D261";
        IN15 <= x"0126D262";
        IN16 <= x"0126D263";
        IN17 <= x"0126D264";
        IN18 <= x"0126D265";
        IN19 <= x"0126D266";
        IN20 <= x"0126D267";
        IN21 <= x"0126D268";
        IN22 <= x"0126D269";
        IN23 <= x"0126D26A";
        IN24 <= x"0126D26B";
        IN25 <= x"0126D26C";
        IN26 <= x"0126D26D";
        IN27 <= x"0126D26E";
        IN28 <= x"0126D26F";
        IN29 <= x"0126D270";
        IN30 <= x"0126D271";
        IN31 <= x"0126D272";
   
       wait for 10 ns;
       s <="00000";
       wait for 10 ns;
       s <="00001";
       wait for 10 ns;
       s <="00010";
       wait for 10 ns;
       s <="00100";
       wait for 10 ns;
       s <="01000";
       wait for 10 ns;
       s <="10000";
       wait for 10 ns;
       s <="00011";
       wait for 10 ns;
       s <="00110";
       wait for 10 ns;
       s <="00101";
       wait for 10 ns;
       s <="01010";
       wait for 10 ns;
       s <="01001";
       wait for 10 ns;
       s <="01100";
       wait for 10 ns;
       s <="11000";
       wait for 10 ns;
       s <="10001";
       wait for 10 ns;
       s <="10100";
       wait for 10 ns;
       s <="10010";
        wait for 10 ns;
       s <="11100";
       wait for 10 ns;
       s <="11001";
       wait for 10 ns;
       s <="11010";
       wait for 10 ns;
       s <="10101";
       wait for 10 ns;
       s <="10110";
       wait for 10 ns;
       s <="10011";
       wait for 10 ns;
       s <="00111";
       wait for 10 ns;
       s <="01110";
       wait for 10 ns;
       s <="01011";
       wait for 10 ns;
       s <="01101";
       wait for 10 ns;
       s <="11110";
       wait for 10 ns;
       s <="11101";
       wait for 10 ns;
       s <="11011";
       wait for 10 ns;
       s <="10111";
       wait for 10 ns;
       s <="01111";
       wait for 10 ns;
       s <="11111";
  
   -- wait;
  end process;


end;