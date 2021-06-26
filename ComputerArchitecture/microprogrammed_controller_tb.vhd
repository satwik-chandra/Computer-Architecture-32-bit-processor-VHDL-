library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity microprogrammed_controller_tb is
end;

architecture bench of microprogrammed_controller_tb is

  component microprogrammed_controller
  Port (
          reset : in std_logic;
          Clk : in std_logic;
          VCNZ : inout std_logic_vector(3 downto 0);
          instruction_in : in std_logic_vector(31 downto 0);
          TDDRout, TASAout, TBSBout : out std_logic_vector(4 downto 0);
          FSout : out std_logic_vector(4 downto 0);
          MBout, MDout, MMout, RWout,MWout,FLout : out std_logic;
          PCout : out std_logic_vector(31 downto 0)
      );
  end component;

  signal reset: std_logic;
  signal Clk: std_logic;
  signal VCNZ: std_logic_vector(3 downto 0);
  signal instruction_in: std_logic_vector(31 downto 0);
  signal TDDRout, TASAout, TBSBout: std_logic_vector(4 downto 0);
  signal FSout: std_logic_vector(4 downto 0);
  signal MBout, MDout, MMout, RWout,MWout,FLout: std_logic;
  signal PCout: std_logic_vector(31 downto 0) ;
      constant clk_period : time := 110 ns;


begin

     Clk <= not Clk after clk_period/2;

  uut: microprogrammed_controller port map ( reset          => reset,
                                             Clk            => Clk,
                                             VCNZ           => VCNZ,
                                             instruction_in => instruction_in,
                                             TDDRout        => TDDRout,
                                             TASAout        => TASAout,
                                             TBSBout        => TBSBout,
                                             FSout          => FSout,
                                             MBout          => MBout,
                                             MDout          => MDout,
                                             MMout          => MMout,
                                             RWout          => RWout,
                                             MWout          => MWout,
                                             FLout          => FLout,
                                             PCout          => PCout );

  stimulus: process
  begin
  
   
    reset <= '1';
    VCNZ <= "0000";
    instruction_in <= "00000010000010010000000010100001";
    wait for clk_period;
    
    reset <= '0';
    wait for clk_period*2;
    
    instruction_in <= "00000010101000010000001100000001";
    wait for clk_period*2;
    
    instruction_in <= "00000000011000000000010010100001";
    wait for clk_period*2;

  end process;


end;
  