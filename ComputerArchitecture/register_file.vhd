----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2020 18:51:47
-- Design Name: 
-- Module Name: register_file - Behavioral
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

entity register_file is
Port ( Clk, load_enabled : in std_logic;
        addr_a, addr_b : in std_logic_vector(4 downto 0);
         dest_d : in std_logic_vector(4 downto 0);
        data : in std_logic_vector(31 downto 0);
        out_a, out_b : out std_logic_vector(31 downto 0)
    );
end register_file;

architecture Behavioral of register_file is

COMPONENT reg4
PORT(
D : IN std_logic_vector(31 downto 0);
load0, load1 : IN std_logic;
Clk : IN std_logic;
Q : inout std_logic_vector(31 downto 0)
);
END COMPONENT;

component Decoder5_32
port(A : in std_logic_vector(4 downto 0);
    z0 : out std_logic;
    z1 : out std_logic;
    z2 : out std_logic;
    z3 : out std_logic;
    z4 : out std_logic;
    z5 : out std_logic;
    z6 : out std_logic;
    z7 : out std_logic;
    z8 : out std_logic;
    z9 : out std_logic;
    z10 :out std_logic;
    z11 : out std_logic;
    z12 : out std_logic;
    z13 : out std_logic;
    z14: out std_logic;
    z15: out std_logic;
    z16 : out std_logic;
    z17 : out std_logic;
    z18 : out std_logic;
    z19 : out std_logic;
    z20 : out std_logic;
    z21 : out std_logic;
    z22 : out std_logic;
    z23: out std_logic;
    z24: out std_logic;
    z25 : out std_logic;
    z26 : out std_logic;
    z27 : out std_logic;
    z28 : out std_logic;
    z29 : out std_logic;
    z30 : out std_logic;
    z31 : out std_logic
);
end component;

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

component Multiplexer2_1
port ( In0 : in std_logic_vector(31 downto 0);
In1 : in std_logic_vector(31 downto 0);
s : in std_logic;
Z : out std_logic_vector(31 downto 0));
end component;

signal load_reg0, load_reg1, load_reg3, load_reg2,
  load_reg4, load_reg5, load_reg6, load_reg7
  , load_reg8, load_reg9, load_reg10
  , load_reg11, load_reg12, load_reg13
  , load_reg14, load_reg15, load_reg16
  , load_reg17, load_reg18, load_reg19
  , load_reg20, load_reg21, load_reg22
  , load_reg23, load_reg24, load_reg25
  , load_reg26, load_reg27, load_reg28
  , load_reg29, load_reg30, load_reg31 : std_logic;
 
  
signal reg0_q, reg1_q, reg2_q, reg3_q, reg4_q, reg5_q, reg6_q, reg7_q,
 reg8_q, reg9_q, reg10_q, reg11_q, reg12_q, reg13_q, reg14_q,
 reg15_q, reg16_q, reg17_q, reg18_q, reg19_q, reg20_q, reg21_q,
 reg22_q, reg23_q, reg24_q, reg25_q, reg26_q, reg27_q, reg28_q,
 reg29_q, reg30_q, reg31_q, src_reg : std_logic_vector(31 downto 0);

begin

reg000: reg4 port map(
    D => data,
    load0 => load_reg0,
      load1 => load_enabled,
  Clk => Clk,
    Q => reg0_q
  );

reg001: reg4 port map(
    D => data,
    load0 => load_reg1,
      load1 => load_enabled,
  Clk => Clk,
    Q => reg1_q
  );

reg002: reg4 port map(
    D => data,
    load0 => load_reg2,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg2_q
  );

reg003: reg4 port map(
    D => data,
    load0 => load_reg3,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg3_q
  );

reg004: reg4 port map(
    D => data,
    load0 => load_reg4,
        load1 => load_enabled,
Clk => Clk,
    Q => reg4_q
  );

reg005: reg4 port map(
    D => data,
    load0 => load_reg5,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg5_q
  );

reg006: reg4 port map(
    D => data,
    load0 => load_reg6,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg6_q
  );

reg007: reg4 port map(
    D => data,
    load0 => load_reg7,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg7_q
  );

reg008: reg4 port map(
    D => data,
    load0 => load_reg8,
        load1 => load_enabled,
Clk => Clk,
    Q => reg8_q
  );

reg009: reg4 port map(
    D => data,
    load0 => load_reg9,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg9_q
  );

reg010: reg4 port map(
    D => data,
    load0 => load_reg10,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg10_q
  );

reg011: reg4 port map(
    D => data,
    load0 => load_reg11,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg11_q
  );

reg012: reg4 port map(
    D => data,
    load0 => load_reg12,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg12_q
  );

reg013: reg4 port map(
    D => data,
    load0 => load_reg13,
      load1 => load_enabled,
  Clk => Clk,
    Q => reg13_q
  );

reg014: reg4 port map(
    D => data,
    load0 => load_reg14,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg14_q
  );

reg015: reg4 port map(
    D => data,
    load0 => load_reg15,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg15_q
  );

reg016: reg4 port map(
    D => data,
    load0 => load_reg16,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg16_q
  );

reg017: reg4 port map(
    D => data,
    load0 => load_reg17,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg17_q
  );

reg018: reg4 port map(
    D => data,
    load0 => load_reg18,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg18_q
  );

reg019: reg4 port map(
    D => data,
    load0 => load_reg19,
        load1 => load_enabled,
Clk => Clk,
    Q => reg19_q
  );

reg020: reg4 port map(
    D => data,
    load0 => load_reg20,
        load1 => load_enabled,
Clk => Clk,
    Q => reg20_q
  );

reg021: reg4 port map(
    D => data,
    load0 => load_reg21,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg21_q
  );

reg022: reg4 port map(
    D => data,
    load0 => load_reg22,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg22_q
  );

reg023: reg4 port map(
    D => data,
    load0 => load_reg23,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg23_q
  );

reg024: reg4 port map(
    D => data,
    load0 => load_reg24,
      load1 => load_enabled,
  Clk => Clk,
    Q => reg24_q
  );

reg025: reg4 port map(
    D => data,
    load0 => load_reg25,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg25_q
  );

reg026: reg4 port map(
    D => data,
    load0 => load_reg26,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg26_q
  );

reg027: reg4 port map(
    D => data,
    load0 => load_reg27,
        load1 => load_enabled,
Clk => Clk,
    Q => reg27_q
  );

reg028: reg4 port map(
    D => data,
    load0 => load_reg28,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg28_q
  );

reg029: reg4 port map(
    D => data,
    load0 => load_reg29,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg29_q
  );

reg030: reg4 port map(
    D => data,
    load0 => load_reg30,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg30_q
  );

reg031: reg4 port map(
    D => data,
    load0 => load_reg31,
       load1 => load_enabled,
 Clk => Clk,
    Q => reg31_q
  );

dest_decoder : Decoder5_32 port map(
    A => dest_d,
    z0 =>load_reg0 ,
    z1 => load_reg1,
    z2 => load_reg2,
    z3 => load_reg3,
    z4 => load_reg4,
    z5 => load_reg5,
    z6 => load_reg6,
    z7 => load_reg7,
    z8 => load_reg8,
    z9 => load_reg9,
    z10 => load_reg10,
    z11 => load_reg11,
    z12 => load_reg12,
    z13 => load_reg13,
    z14 => load_reg14,
    z15 =>load_reg15,
    z16 => load_reg16, 
    z17 => load_reg17,
    z18 => load_reg18,
    z19 => load_reg19,
    z20 => load_reg20,
    z21 => load_reg21,
    z22 => load_reg22,
    z23 => load_reg23,
    z24 => load_reg24,
    z25 => load_reg25,
    z26 => load_reg26,
    z27 => load_reg27,
    z28 => load_reg28,
    z29 => load_reg29,
    z30 => load_reg30,
    z31 => load_reg31 

    );
    
    
inst_multiplexer32_1_a:   Multiplexer32_1 port map(
IN0 =>reg0_q,
IN1 =>reg1_q,
IN2 =>reg2_q,
IN3 =>reg3_q,
IN4 =>reg4_q,
IN5 =>reg5_q,
IN6 =>reg6_q,
IN7 =>reg7_q,
IN8 =>reg8_q,
IN9 =>reg9_q,
IN10 =>reg10_q,
IN11 =>reg11_q,
IN12 =>reg12_q,
IN13 =>reg13_q,
IN14 =>reg14_q,
IN15 =>reg15_q,
IN16 =>reg16_q,
IN17 =>reg17_q,
IN18 =>reg18_q,
IN19 =>reg19_q,
IN20 =>reg20_q,
IN21 =>reg21_q,
IN22 =>reg22_q,
IN23 =>reg23_q,
IN24 =>reg24_q,
IN25 =>reg25_q,
IN26 =>reg26_q,
IN27 =>reg27_q,
IN28 =>reg28_q,
IN29 =>reg29_q,
IN30 =>reg30_q,
IN31 =>reg31_q,

 s =>addr_a,
 output => out_a
 );
 
 inst_multiplexer32_1_b:   Multiplexer32_1 port map(
IN0 =>reg0_q,
IN1 =>reg1_q,
IN2 =>reg2_q,
IN3 =>reg3_q,
IN4 =>reg4_q,
IN5 =>reg5_q,
IN6 =>reg6_q,
IN7 =>reg7_q,
IN8 =>reg8_q,
IN9 =>reg9_q,
IN10 =>reg10_q,
IN11 =>reg11_q,
IN12 =>reg12_q,
IN13 =>reg13_q,
IN14 =>reg14_q,
IN15 =>reg15_q,
IN16 =>reg16_q,
IN17 =>reg17_q,
IN18 =>reg18_q,
IN19 =>reg19_q,
IN20 =>reg20_q,
IN21 =>reg21_q,
IN22 =>reg22_q,
IN23 =>reg23_q,
IN24 =>reg24_q,
IN25 =>reg25_q,
IN26 =>reg26_q,
IN27 =>reg27_q,
IN28 =>reg28_q,
IN29 =>reg29_q,
IN30 =>reg30_q,
IN31 =>reg31_q,

 s =>addr_b,
 output => out_b
 );
    
    

  
end Behavioral;
