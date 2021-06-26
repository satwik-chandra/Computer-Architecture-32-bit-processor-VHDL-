----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2021 12:16:52
-- Design Name: 
-- Module Name: Processor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Processor is
  Port( reset, Clk : in std_logic;
            PC_Count : out std_logic_vector(31 downto 0);
            instruction : out std_logic_vector(31 downto 0));
end Processor;

architecture Behavioral of Processor is

component Datapath Port (
        RW, MB, MD, MM : in std_logic;
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

component microprogrammed_control port (
        reset : in std_logic;
        Clk : in std_logic;
        VCNZ : inout std_logic_vector(3 downto 0);
        instruction_in : in std_logic_vector(31 downto 0);
        TDDRout, TASAout, TBSBout : out std_logic_vector(4 downto 0);
        FSout : out std_logic_vector(4 downto 0);
        MBout, MDout, MMout, RWout, MWout,FLout : out std_logic;
        PCout : out std_logic_vector(31 downto 0)
    );
    end component;

 component Memory512x32 port(
         address_mem : in STD_LOGIC_VECTOR(31 downto 0);
			write_data : in STD_LOGIC_VECTOR(31 downto 0);
			mem_write : in STD_LOGIC;
			read_data : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

 signal TDDR, TASA, TBSB : std_logic_vector(4 downto 0);
  signal VCNZ : std_logic_vector(3 downto 0);
    signal FS : std_logic_vector(4 downto 0);
    signal PC, Address, memdatain, memdataout : std_logic_vector(31 downto 0);
    signal RW, MB, MD, MM, MW, notMW : std_logic;

begin

 dp : Datapath port map (
        Clk => Clk,
        TDDR => TDDR,
        TASA => TASA,
        TBSB => TBSB,
        FS => FS,
        PCin => PC,
        constant_in => TBSB(2 downto 0),
        data_in => memdataout,
        RW => RW,
        MB => MB,
        MD => MD,
        MM => MM,
        z => VCNZ(0),
        n => VCNZ(1),
        c => VCNZ(2),
        v => VCNZ(3),
        data_out => memdatain,
        address_out => Address
    );


ctrl : microprogrammed_control port map (
        reset => reset,
        Clk => Clk,
        VCNZ => VCNZ,
        instruction_in => memdataout,
        TDDRout => TDDR,
        TASAout => TASA,
        TBSBout => TBSB,
        FSout => FS,
        MBout => MB,
        MDout => MD,
        MMout => MM,
        RWout => RW,
        MWout => MW,
        PCout => PC, 
        FLout => VCNZ(0) 
    );

 notMW <= not MW;
    
    mem : Memory512x32 port map (
        address_mem => Address,
        write_data => memdatain,
        read_data => memdataout,
        mem_write => MW
    );
    
    PC_Count <= PC;
    instruction <= memdataout; 
end Behavioral;
