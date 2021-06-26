----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2021 21:51:39
-- Design Name: 
-- Module Name: ControlMemory256_41 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlMemory256_41 is
Port(   FL : out std_logic; -- 0
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
end ControlMemory256_41;

architecture Behavioral of ControlMemory256_41 is
    type mem_array is array(0 to 255) of std_logic_vector(41 downto 0);
begin

memory_m: process(IN_CAR)
variable control_mem : mem_array:=(
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 00
"000000000000000000000000000000000000000000",-- 01
"000000000000000000000000000000000000000000",-- 02
"000000000000000000000000000000000000000000",-- 03
"000000000000000000000000000000000000000000",-- 04
"000000000000000000000000000000000000000000",-- 05
"000000000000000000000000000000000000000000",-- 06
"000000000000000000000000000000000000000000",-- 07


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 08
"000000000000000000000000000000000000000000",-- 09
"000000000000000000000000000000000000000000",-- 0A
"000000000000000000000000000000000000000000",-- 0B
"000000000000000000000000000000000000000000",-- 0C
"000000000000000000000000000000000000000000",-- 0D
"000000000000000000000000000000000000000000",-- 0E
"000000000000000000000000000000000000000000",-- 0F
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 10
"000000000000000000000000000000000000000000",-- 11
"000000000000000000000000000000000000000000",-- 12
"000000000000000000000000000000000000000000",-- 13
"000000000000000000000000000000000000000000",-- 14
"000000000000000000000000000000000000000000",-- 15
"000000000000000000000000000000000000000000",-- 16
"000000000000000000000000000000000000000000",-- 17

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- F8
"000000000000000000000000000000000000000000",-- F9
"000000000000000000000000000000000000000000",-- FA
"000000000000000000000000000000000000000000",-- FB
"000000000000000000000000000000000000000000",-- FC
"000000000000000000000000000000000000000000",-- FD
"000000000000000000000000000000000000000000",-- FE
"000000000000000000000000000000000000000000",-- FF

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 00
"000000000000000000000000000000000000000000",-- 01
"000000000000000000000000000000000000000000",-- 02
"000000000000000000000000000000000000000000",-- 03
"000000000000000000000000000000000000000000",-- 04
"000000000000000000000000000000000000000000",-- 05
"000000000000000000000000000000000000000000",-- 06
"000000000000000000000000000000000000000000",-- 07


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 08
"000000000000000000000000000000000000000000",-- 09
"000000000000000000000000000000000000000000",-- 0A
"000000000000000000000000000000000000000000",-- 0B
"000000000000000000000000000000000000000000",-- 0C
"000000000000000000000000000000000000000000",-- 0D
"000000000000000000000000000000000000000000",-- 0E
"000000000000000000000000000000000000000000",-- 0F
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 10
"000000000000000000000000000000000000000000",-- 11
"000000000000000000000000000000000000000000",-- 12
"000000000000000000000000000000000000000000",-- 13
"000000000000000000000000000000000000000000",-- 14
"000000000000000000000000000000000000000000",-- 15
"000000000000000000000000000000000000000000",-- 16
"000000000000000000000000000000000000000000",-- 17

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- F8
"000000000000000000000000000000000000000000",-- F9
"000000000000000000000000000000000000000000",-- FA
"000000000000000000000000000000000000000000",-- FB
"000000000000000000000000000000000000000000",-- FC
"000000000000000000000000000000000000000000",-- FD
"000000000000000000000000000000000000000000",-- FE
"000000000000000000000000000000000000000000",-- FF

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 00
"000000000000000000000000000000000000000000",-- 01
"000000000000000000000000000000000000000000",-- 02
"000000000000000000000000000000000000000000",-- 03
"000000000000000000000000000000000000000000",-- 04
"000000000000000000000000000000000000000000",-- 05
"000000000000000000000000000000000000000000",-- 06
"000000000000000000000000000000000000000000",-- 07


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 08
"000000000000000000000000000000000000000000",-- 09
"000000000000000000000000000000000000000000",-- 0A
"000000000000000000000000000000000000000000",-- 0B
"000000000000000000000000000000000000000000",-- 0C
"000000000000000000000000000000000000000000",-- 0D
"000000000000000000000000000000000000000000",-- 0E
"000000000000000000000000000000000000000000",-- 0F
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 10
"000000000000000000000000000000000000000000",-- 11
"000000000000000000000000000000000000000000",-- 12
"000000000000000000000000000000000000000000",-- 13
"000000000000000000000000000000000000000000",-- 14
"000000000000000000000000000000000000000000",-- 15
"000000000000000000000000000000000000000000",-- 16
"000000000000000000000000000000000000000000",-- 17

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- F8
"000000000000000000000000000000000000000000",-- F9
"000000000000000000000000000000000000000000",-- FA
"000000000000000000000000000000000000000000",-- FB
"000000000000000000000000000000000000000000",-- FC
"000000000000000000000000000000000000000000",-- FD
"000000000000000000000000000000000000000000",-- FE
"000000000000000000000000000000000000000000",-- FF


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 00
"000000000000000000000000000000000000000000",-- 01
"000000000000000000000000000000000000000000",-- 02
"000000000000000000000000000000000000000000",-- 03
"000000000000000000000000000000000000000000",-- 04
"000000000000000000000000000000000000000000",-- 05
"000000000000000000000000000000000000000000",-- 06
"000000000000000000000000000000000000000000",-- 07


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 08
"000000000000000000000000000000000000000000",-- 09
"000000000000000000000000000000000000000000",-- 0A
"000000000000000000000000000000000000000000",-- 0B
"000000000000000000000000000000000000000000",-- 0C
"000000000000000000000000000000000000000000",-- 0D
"000000000000000000000000000000000000000000",-- 0E
"000000000000000000000000000000000000000000",-- 0F
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 10
"000000000000000000000000000000000000000000",-- 11
"000000000000000000000000000000000000000000",-- 12
"000000000000000000000000000000000000000000",-- 13
"000000000000000000000000000000000000000000",-- 14
"000000000000000000000000000000000000000000",-- 15
"000000000000000000000000000000000000000000",-- 16
"000000000000000000000000000000000000000000",-- 17

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- F8
"000000000000000000000000000000000000000000",-- F9
"000000000000000000000000000000000000000000",-- FA
"000000000000000000000000000000000000000000",-- FB
"000000000000000000000000000000000000000000",-- FC
"000000000000000000000000000000000000000000",-- FD
"000000000000000000000000000000000000000000",-- FE
"000000000000000000000000000000000000000000",-- FF

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 00
"000000000000000000000000000000000000000000",-- 01
"000000000000000000000000000000000000000000",-- 02
"000000000000000000000000000000000000000000",-- 03
"000000000000000000000000000000000000000000",-- 04
"000000000000000000000000000000000000000000",-- 05
"000000000000000000000000000000000000000000",-- 06
"000000000000000000000000000000000000000000",-- 07


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 08
"000000000000000000000000000000000000000000",-- 09
"000000000000000000000000000000000000000000",-- 0A
"000000000000000000000000000000000000000000",-- 0B
"000000000000000000000000000000000000000000",-- 0C
"000000000000000000000000000000000000000000",-- 0D
"000000000000000000000000000000000000000000",-- 0E
"000000000000000000000000000000000000000000",-- 0F
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 10
"000000000000000000000000000000000000000000",-- 11
"000000000000000000000000000000000000000000",-- 12
"000000000000000000000000000000000000000000",-- 13
"000000000000000000000000000000000000000000",-- 14
"000000000000000000000000000000000000000000",-- 15
"000000000000000000000000000000000000000000",-- 16
"000000000000000000000000000000000000000000",-- 17

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- F8
"000000000000000000000000000000000000000000",-- F9
"000000000000000000000000000000000000000000",-- FA
"000000000000000000000000000000000000000000",-- FB
"000000000000000000000000000000000000000000",-- FC
"000000000000000000000000000000000000000000",-- FD
"000000000000000000000000000000000000000000",-- FE
"000000000000000000000000000000000000000000",-- FF

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 00
"000000000000000000000000000000000000000000",-- 01
"000000000000000000000000000000000000000000",-- 02
"000000000000000000000000000000000000000000",-- 03
"000000000000000000000000000000000000000000",-- 04
"000000000000000000000000000000000000000000",-- 05
"000000000000000000000000000000000000000000",-- 06
"000000000000000000000000000000000000000000",-- 07


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 08
"000000000000000000000000000000000000000000",-- 09
"000000000000000000000000000000000000000000",-- 0A
"000000000000000000000000000000000000000000",-- 0B
"000000000000000000000000000000000000000000",-- 0C
"000000000000000000000000000000000000000000",-- 0D
"000000000000000000000000000000000000000000",-- 0E
"000000000000000000000000000000000000000000",-- 0F
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 10
"000000000000000000000000000000000000000000",-- 11
"000000000000000000000000000000000000000000",-- 12
"000000000000000000000000000000000000000000",-- 13
"000000000000000000000000000000000000000000",-- 14
"000000000000000000000000000000000000000000",-- 15
"000000000000000000000000000000000000000000",-- 16
"000000000000000000000000000000000000000000",-- 17

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- F8
"000000000000000000000000000000000000000000",-- F9
"000000000000000000000000000000000000000000",-- FA
"000000000000000000000000000000000000000000",-- FB
"000000000000000000000000000000000000000000",-- FC
"000000000000000000000000000000000000000000",-- FD
"000000000000000000000000000000000000000000",-- FE
"000000000000000000000000000000000000000000",-- FF

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 00
"000000000000000000000000000000000000000000",-- 01
"000000000000000000000000000000000000000000",-- 02
"000000000000000000000000000000000000000000",-- 03
"000000000000000000000000000000000000000000",-- 04
"000000000000000000000000000000000000000000",-- 05
"000000000000000000000000000000000000000000",-- 06
"000000000000000000000000000000000000000000",-- 07


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 08
"000000000000000000000000000000000000000000",-- 09
"000000000000000000000000000000000000000000",-- 0A
"000000000000000000000000000000000000000000",-- 0B
"000000000000000000000000000000000000000000",-- 0C
"000000000000000000000000000000000000000000",-- 0D
"000000000000000000000000000000000000000000",-- 0E
"000000000000000000000000000000000000000000",-- 0F
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 10
"000000000000000000000000000000000000000000",-- 11
"000000000000000000000000000000000000000000",-- 12
"000000000000000000000000000000000000000000",-- 13
"000000000000000000000000000000000000000000",-- 14
"000000000000000000000000000000000000000000",-- 15
"000000000000000000000000000000000000000000",-- 16
"000000000000000000000000000000000000000000",-- 17

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- F8
"000000000000000000000000000000000000000000",-- F9
"000000000000000000000000000000000000000000",-- FA
"000000000000000000000000000000000000000000",-- FB
"000000000000000000000000000000000000000000",-- FC
"000000000000000000000000000000000000000000",-- FD
"000000000000000000000000000000000000000000",-- FE
"000000000000000000000000000000000000000000",-- FF

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 00
"000000000000000000000000000000000000000000",-- 01
"000000000000000000000000000000000000000000",-- 02
"000000000000000000000000000000000000000000",-- 03
"000000000000000000000000000000000000000000",-- 04
"000000000000000000000000000000000000000000",-- 05
"000000000000000000000000000000000000000000",-- 06
"000000000000000000000000000000000000000000",-- 07


-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 08
"000000000000000000000000000000000000000000",-- 09
"000000000000000000000000000000000000000000",-- 0A
"000000000000000000000000000000000000000000",-- 0B
"000000000000000000000000000000000000000000",-- 0C
"000000000000000000000000000000000000000000",-- 0D
"000000000000000000000000000000000000000000",-- 0E
"000000000000000000000000000000000000000000",-- 0F
-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- 10
"000000000000000000000000000000000000000000",-- 11
"000000000000000000000000000000000000000000",-- 12
"000000000000000000000000000000000000000000",-- 13
"000000000000000000000000000000000000000000",-- 14
"000000000000000000000000000000000000000000",-- 15
"000000000000000000000000000000000000000000",-- 16
"000000000000000000000000000000000000000000",-- 17

-- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
-- | Next Address | MS | M| I| P| P| T| T| T| M| FS |M|R|M|M|R|R|R|R|F|
-- | Next Address | MS | C| L| I| L| D| A| B| B| FS |D|W|M|W|V|C|N|Z|L|
"000000000000000000000000000000000000000000",-- F8
"000000000000000000000000000000000000000000",-- F9
"000000000000000000000000000000000000000000",-- FA
"000000000000000000000000000000000000000000",-- FB
"000000000000000000000000000000000000000000",-- FC
"000000000000000000000000000000000000000000",-- FD
"000000000000000000000000000000000000000000",-- FE
"000000000000000000000000000000000000000000"--FF

);

variable addr : integer;
variable control_out : std_logic_vector(41 downto 0);

begin
addr := conv_integer(IN_CAR);
control_out := control_mem(addr);
FL <= control_out(0);
RZ <= control_out(1);
RN <= control_out(2);
RC <= control_out(3);
RV <= control_out(4);
MW <= control_out(5);
MM <= control_out(6);
RW <= control_out(7);
MD <= control_out(8);
FS <= control_out(13 downto 9);
MB <= control_out(14);
TB <= control_out(15);
TA <= control_out(16);
TD <= control_out(12);
PL <= control_out(17);
PI <= control_out(19);
IL <= control_out(20);
MC <= control_out(21);
MS <= control_out(24 downto 22);
NA <= control_out(41 downto 25);
end process;

end Behavioral;