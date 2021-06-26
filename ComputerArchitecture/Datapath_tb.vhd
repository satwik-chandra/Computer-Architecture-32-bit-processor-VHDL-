library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Datapath_tb is
end;

architecture bench of Datapath_tb is

  component Datapath
  Port ( 
      data_in, constant_in : in std_logic_vector(31 downto 0);
      control_word : in std_logic_vector(22 downto 0);
      Clk : in std_logic;
      address_out, data_out : out std_logic_vector(31 downto 0);
      v, c, n, z : out std_logic
    );
  end component;

  signal data_in, constant_in: std_logic_vector(31 downto 0);
  signal control_word: std_logic_vector(22 downto 0);
  signal Clk: std_logic;
  signal address_out, data_out: std_logic_vector(31 downto 0);
  signal v, c, n, z: std_logic ;
  
  constant Clk_period : time := 10 ns;

begin

  uut: Datapath port map ( data_in      => data_in,
                           constant_in  => constant_in,
                           control_word => control_word,
                           Clk          => Clk,
                           address_out  => address_out,
                           data_out     => data_out,
                           v            => v,
                           c            => c,
                           n            => n,
                           z            => z );
                           
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
    end process;

  stimulus: process
  begin
  
     data_in <= x"AAAAAAAA";
		constant_in <= x"00000000";
		control_word <= "00000011000010000000010";
		
		wait for 50ns;
		data_in <= x"F0F0F0F0";
		control_word <= "00001010000101100000010";
		
		wait for 50ns;
		control_word <= "00011100001101100010010";
		
		wait for 50ns;
        control_word <= "00110010000001100110010";
        


       wait;
  end process;


end;




library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Datapath_tb is
end;

architecture bench of Datapath_tb is

  component Datapath
  Port (  RW, MB, MD, MM : in std_logic;
          TDDR, TASA, TBSB : in std_logic_vector(4 downto 0);
          FS : in std_logic_vector(4 downto 0);
          PCin : in std_logic_vector(31 downto 0);
      data_in: in std_logic_vector(31 downto 0);
      constant_in : in std_logic_vector(2 downto 0);
      Clk : in std_logic;
      address_out, data_out : out std_logic_vector(31 downto 0);
      v, c, n, z : out std_logic
    );
  end component;

  signal RW, MB, MD, MM: std_logic;
  signal TDDR, TASA, TBSB: std_logic_vector(4 downto 0);
  signal FS: std_logic_vector(4 downto 0);
  signal PCin: std_logic_vector(31 downto 0);
  signal data_in: std_logic_vector(31 downto 0);
  signal constant_in: std_logic_vector(2 downto 0);
  signal Clk: std_logic;
  signal address_out, data_out: std_logic_vector(31 downto 0);
  signal v, c, n, z: std_logic ;
  constant clk_period : time := 110ns;
begin

  uut: Datapath port map ( RW          => RW,
                           MB          => MB,
                           MD          => MD,
                           MM          => MM,
                           TDDR        => TDDR,
                           TASA        => TASA,
                           TBSB        => TBSB,
                           FS          => FS,
                           PCin        => PCin,
                           data_in     => data_in,
                           constant_in => constant_in,
                           Clk         => Clk,
                           address_out => address_out,
                           data_out    => data_out,
                           v           => v,
                           c           => c,
                           n           => n,
                           z           => z );
                           
Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
    end process;

  stimulus: process
  begin
 MM <= '0';
    
    -- reg01 = 41111112
    RW <= '1';
    TDDR <= "00001";
    MD <= '1';
    data_in <= X"41111112";
    wait for clk_period;
    
    -- reg02 = 0x15211411
    TDDR <= "00010";
    data_in <= X"15211411";
    wait for clk_period;
    
    -- reg00 = reg01 + reg02
    TDDR <= "00000";
    TASA <= "00001";
    TBSB <= "00010";
    MB <= '0';
    MD <= '0';
    FS <= "00010";
    wait for clk_period;
    
    -- dispaly reg00 (0x2226)
    RW <= '0';
    TBSB <= "00000";
    wait for clk_period;
    
    -- reg04 = reg00 + 1
    RW <= '1';
    MB <= '1';
    constant_in <= "001";
    TDDR <= "00100";
    TASA <= "00000";
    wait for clk_period;
    
    -- display reg04 (0x2227)
    RW <= '0';
    MB <= '0';
    TBSB <= "00100";
    wait for clk_period;
    
    -- address out = PC
    MM <= '1';
    PCin <= X"87654321";
    wait for clk_period;

  end process;


end;