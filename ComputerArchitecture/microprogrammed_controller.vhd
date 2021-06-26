----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2021 02:24:25
-- Design Name: 
-- Module Name: microprogrammed_controller - Behavioral
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

entity microprogrammed_controller is
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
end microprogrammed_controller;

architecture Behavioral of microprogrammed_controller is

component ControlAddressRegister port (
   opcode : in std_logic_vector(16 downto 0);
        load : in std_logic;
        Clk : in std_logic;
        reset : in std_logic;
        address : inout std_logic_vector(16 downto 0)
);
end component;

component ProgrammeCounter Port(	
    extendIn : in std_logic_vector(31 downto 0);
			PL, PI, reset : in std_logic;
			pc_out : out std_logic_vector(31 downto 0)
);
end component;


component Extend Port(
    DR : in std_logic_vector(4 downto 0);
	       SB : in std_logic_vector(4 downto 0);
	       epc : out std_logic_vector(31 downto 0)
);
end component;


component InstructionRegister Port(
    IR : in std_logic_vector(31 downto 0);
			IL : in std_logic;
			opcode :  out std_logic_vector(16 downto 0);
			DR, SA, SB : out std_logic_vector(4 downto 0)
);
end component;

component ControlMemory256x41 Port(
          FL : out std_logic; -- 0
        RZ : out std_logic; -- 1
        RN : out std_logic; -- 2
        RC : out std_logic; -- 3
        RV : out std_logic; -- 4
        MW : out std_logic; -- 5
        MM : out std_logic; -- 6
        RW : out std_logic; -- 7
        MD : out std_logic; -- 8
        FS : out std_logic_vector(4 downto 0); -- 9 to 13
        MB : out std_logic; -- 14
        TB : out std_logic; -- 15
        TA : out std_logic; -- 16
        TD : out std_logic; -- 17
        PL : out std_logic; -- 18
        PI : out std_logic; -- 19
        IL : out std_logic; -- 20
        MC : out std_logic; -- 21
        MS : out std_logic_vector(2 downto 0); -- 22 to 24
        NA : out std_logic_vector(16 downto 0); -- 25 to 41
        IN_CAR : in std_logic_vector(16 downto 0)
        );
end component;

component Multiplexer32_1 port (
    IN0: in std_logic_vector(31 downto 0);
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
 output: out std_logic_vector(31 downto 0)
);
end component;

component multiplexer2_17 port (
    in0, in1 : in std_logic_vector(16 downto 0);
    s : in std_logic;
    Z : out std_logic_vector(16 downto 0)
);
end component;

component multiplexer8_1 port (
    in0, in1, in2, in3, in4, in5, in6, in7 : in std_logic;
    s : in std_logic_vector(2 downto 0);
    Z : out std_logic
);
end component;


    signal extout, pcval : std_logic_vector(31 downto 0);
    signal PI, PL, IL, muxSout, MC : std_logic;
    signal DR, SA, SB : std_logic_vector(4 downto 0);
     signal  MS : std_logic_vector(2 downto 0);
    signal opcode, muxCout, car_out, NA : std_logic_vector(16 downto 0);
    signal notZC : std_logic_vector(1 downto 0);
    signal dr_sb : std_logic_vector(5 downto 0);



begin

 progcount : ProgrammeCounter port map (
        reset => reset,
        extendIn => extout,
        PI => PI,
        PL => PL,
        pc_out => pcval
    );
    
    PCout <= pcval;
        
    ext : Extend port map (
        dr => DR,
        sb => SB,
        epc => extout
    );
    
    TDDRout(4 downto 0) <= DR;
    TASAout(4 downto 0) <= SA;
    TBSBout(4 downto 0) <= SB;
    
    ir : InstructionRegister port map (
        IR => instruction_in,
        IL => IL,
        opcode => opcode(16 downto 0),
        DR => DR,
        SA => SA,
        SB => SB
    );
    
    
    muxC : multiplexer2_17 port map (
        in0 => NA,
        in1 => opcode,
        s => MC,
        Z => muxCout
    );
    
    ctrlreg : ControlAddressRegister port map (
        reset => reset,
        opcode => muxCout,
        load => muxSout,
        Clk => Clk,
        address => car_out
    );
    
    ctrl_mem : ControlMemory256x41 port map (
        FL =>FLout,
        RZ =>VCNZ(0),
        RN =>VCNZ(1),
        RC =>VCNZ(2),
        RV =>VCNZ(3),
        MW =>MWout, 
        MM =>MMout, 
        RW =>RWout, 
        MD =>MDout, 
        FS =>FSout, 
        MB =>MBout, 
        TB =>TBSBout(0), 
        TA =>TASAout(0), 
        TD => TDDRout(0), 
        PL =>PL, 
        PI =>PI, 
        IL =>IL, 
        MC =>MC, 
        MS =>MS, 
        NA =>NA, 
        IN_CAR => car_out
    );
    
    notZC(0) <= not VCNZ(2);
    notZC(1) <= not VCNZ(0);
    
    muxS : multiplexer8_1 port map (
        in0 => '0',
        in1 => '1',
        in2 => VCNZ(2),
        in3 => VCNZ(3),
        in4 => VCNZ(0),
        in5 => VCNZ(1),
        in6 => notZC(0),
        in7 => notZC(1),
        s => MS,
        Z => muxSout
    );
    

end Behavioral;
