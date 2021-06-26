----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2020 18:14:05
-- Design Name: 
-- Module Name: Decoder5_32 - Behavioral
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

entity Decoder5_32 is
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
end Decoder5_32;

architecture Behavioral of Decoder5_32 is

component Decoder2_4
Port ( A0 : in std_logic;
A1 : in std_logic;
Q0 : out std_logic;
Q1 : out std_logic;
Q2 : out std_logic;
Q3 : out std_logic);
end component; 

component Decoder3_8
port(s : in std_logic_vector(2 downto 0); 
y : out std_logic_vector(7 downto 0));
end component;

signal enable : std_logic_vector(3 downto 0);
signal ar1 : std_logic_vector(2 downto 0);
signal ar2 : std_logic_vector(2 downto 0);
signal ar3 : std_logic_vector(2 downto 0);
signal ar4 : std_logic_vector(2 downto 0);
signal zOut : std_logic_vector(31 downto 0);
begin

ar1(0) <= A(2);
ar1(1) <= A(3);
ar1(2) <= enable(0);

ar2(0) <= A(2);
ar2(1) <= A(3);
ar2(2) <= enable(1);


ar3(0) <= A(2);
ar3(1) <= A(3);
ar3(2) <= enable(2);


ar4(0) <= A(2);
ar4(1) <= A(3);
ar4(2) <= enable(3);


TF : Decoder2_4 port map (A0 =>A(0), A1 =>A(1), Q0 =>enable(0) ,Q1 =>enable(1) ,Q2 =>enable(2) ,Q3 =>enable(3) );
TE1 : Decoder3_8 port map (s => ar1 ,y(7) => z7,y(6)=> z6,y(5) => z5,y(4)=> z4,y(3) => z3,y(2)=> z2,y(1) => z1,y(0)=> z0);
TE2 : Decoder3_8 port map (s => ar2 ,y(7) => z15,y(6)=> z14,y(5) => z13,y(4)=> z12,y(3) => z11,y(2)=> z10,y(1) => z9,y(0)=> z8);
TE3 : Decoder3_8 port map (s => ar3 ,y(7) => z23,y(6)=> z22,y(5) => z21,y(4)=> z20,y(3) => z19,y(2)=> z18,y(1) => z17,y(0)=> z16);
TE4 : Decoder3_8 port map (s => ar4 ,y(7) => z31,y(6)=> z30,y(5) => z29,y(4)=> z28,y(3) => z27,y(2)=> z26,y(1) => z25,y(0)=> z24);

end Behavioral;
