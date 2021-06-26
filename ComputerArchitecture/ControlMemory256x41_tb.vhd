library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ControlMemory256_41_tb is
end;

architecture bench of ControlMemory256_41_tb is

  component ControlMemory256_41
  Port(   FL : out std_logic;
          RZ : out std_logic;
          RN : out std_logic;
          RC : out std_logic;
          RV : out std_logic;
          MW : out std_logic;
          MM : out std_logic;
          RW : out std_logic;
          MD : out std_logic;
          FS : out std_logic_vector(4 downto 0);
          MB : out std_logic;
          TB : out std_logic;
          TA : out std_logic;
          TD : out std_logic;
          PL : out std_logic;
          PI : out std_logic;
          IL : out std_logic;
          MC : out std_logic;
          MS : out std_logic_vector(2 downto 0);
          NA : out std_logic_vector(16 downto 0);
          IN_CAR : in std_logic_vector(16 downto 0)
          );
  end component;

  signal FL: std_logic;
  signal RZ: std_logic;
  signal RN: std_logic;
  signal RC: std_logic;
  signal RV: std_logic;
  signal MW: std_logic;
  signal MM: std_logic;
  signal RW: std_logic;
  signal MD: std_logic;
  signal FS: std_logic_vector(4 downto 0);
  signal MB: std_logic;
  signal TB: std_logic;
  signal TA: std_logic;
  signal TD: std_logic;
  signal PL: std_logic;
  signal PI: std_logic;
  signal IL: std_logic;
  signal MC: std_logic;
  signal MS: std_logic_vector(2 downto 0);
  signal NA: std_logic_vector(16 downto 0);
  signal IN_CAR: std_logic_vector(16 downto 0) ;

begin

  uut: ControlMemory256_41 port map ( FL     => FL,
                                      RZ     => RZ,
                                      RN     => RN,
                                      RC     => RC,
                                      RV     => RV,
                                      MW     => MW,
                                      MM     => MM,
                                      RW     => RW,
                                      MD     => MD,
                                      FS     => FS,
                                      MB     => MB,
                                      TB     => TB,
                                      TA     => TA,
                                      TD     => TD,
                                      PL     => PL,
                                      PI     => PI,
                                      IL     => IL,
                                      MC     => MC,
                                      MS     => MS,
                                      NA     => NA,
                                      IN_CAR => IN_CAR );

  stimulus: process
  begin
  
   wait for 10ns;
		in_car <= "00000000000000000";
				
		wait for 10ns;
		in_car <= "10001000100010000";
				
		wait for 10ns;
		in_car <= "11100000000000000";
		
    wait;
  end process;


end;