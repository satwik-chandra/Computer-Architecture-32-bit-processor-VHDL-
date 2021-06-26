----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2020 12:59:28
-- Design Name: 
-- Module Name: Datapath - Behavioral
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

entity Datapath is
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
end Datapath;

architecture Behavioral of Datapath is

component FunctionUnit is
        Port ( 
            a_in, b_in : in std_logic_vector(31 downto 0);
            function_select : in std_logic_vector(4 downto 0);
            v, c, n, z : out std_logic;
            f : out std_logic_vector(31 downto 0)
        );
    end component;
    
    component register_file
        Port ( Clk, load_enabled : in std_logic;
        addr_a, addr_b : in std_logic_vector(4 downto 0);
         dest_d : in std_logic_vector(4 downto 0);
        data : in std_logic_vector(31 downto 0);
        out_a, out_b : out std_logic_vector(31 downto 0)
        );
    end component;
    
    component multiplexer2_1
        Port (
               In0 : in  std_logic_vector(31 downto 0);
               In1 : in  std_logic_vector (31 downto 0);
               s : in  std_logic;
               z : out  std_logic_vector (31 downto 0)
        );
    end component;
    
    component ZeroFill PORT (
        sb_in : in std_logic_vector(2 downto 0);
        zero_fill_out : out std_logic_vector(31 downto 0)
    );
    end component;
    
    signal BusA, BusB1, BusB2, BusD, muxDin, muxBin : std_logic_vector(31 downto 0);

begin

regfile_0 : register_file Port map (
        Clk => Clk,
        load_enabled => RW,
        addr_a => TASA,
        addr_b => TBSB,
        dest_d => TDDR,
        data => BusD,
        out_a => BusA,
        out_b => BusB1
    );

zf : ZeroFill PORT MAP (
        SB_in => constant_in,
        zero_fill_out => muxBin    
    );


 muxB : multiplexer2_1 port map(
               In0 =>BusB1, 
               In1 =>muxBin, 
               s =>MB, 
               z =>BusB2
        );
        
 functionUnit_0 : FunctionUnit Port map (
        a_in => BusA,
        b_in => BusB2,
        function_select => fs,
        v => v,
        c => c,
        n => n,
        z => z,
        f => muxDin
    );
    
    muxD : multiplexer2_1 port map(
               In0 =>muxDin, 
               In1 =>data_in, 
               s =>MD, 
               z =>BusD
        );
        
    muxM : multiplexer2_1 port map(
               In0 =>BusA, 
               In1 =>PCin, 
               s =>MM, 
               z =>address_out
        );
        
   
end Behavioral;
