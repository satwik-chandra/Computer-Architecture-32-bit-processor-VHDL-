library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FunctionUnit_tb is
end;

architecture bench of FunctionUnit_tb is

  component FunctionUnit
   Port ( 
      a_in, b_in : in std_logic_vector(31 downto 0);
      function_select : in std_logic_vector(4 downto 0);
      v, c, n, z : out std_logic;
      f : out std_logic_vector(31 downto 0)
    );
  end component;

  signal a_in, b_in: std_logic_vector(31 downto 0);
  signal function_select: std_logic_vector(4 downto 0);
  signal v, c, n, z: std_logic;
  signal f: std_logic_vector(31 downto 0) ;

begin

  uut: FunctionUnit port map ( a_in            => a_in,
                               b_in            => b_in,
                               function_select => function_select,
                               v               => v,
                               c               => c,
                               n               => n,
                               z               => z,
                               f               => f );

  stimulus: process
  begin
  
    a_in <= x"0126D253";
        b_in <= x"0126D254";
        
        function_select <= "00000";
		wait for 20ns;
		
		function_select <= "00001";
		wait for 20ns;
		
		function_select <= "00010";
		wait for 20ns;
		
		function_select <= "00011";
		wait for 20ns;
		
		function_select <= "00100";
		wait for 20ns;
		
		function_select <= "00101";
		wait for 20ns;
		
		function_select <= "00110";
		wait for 20ns;
		
		function_select <= "00111";
		wait for 20ns;
		
		function_select <= "01000";
		wait for 20ns;
		
		function_select <= "01001";
		wait for 20ns;
		
		function_select <= "01010";
		wait for 20ns;
		
		function_select <= "01011";
		wait for 20ns;
		
		function_select <= "01100";
		wait for 20ns;
		
		function_select <= "01101";
		wait for 20ns;
		
		function_select <= "01110";
		wait for 20ns;
		
		function_select <= "01111";
		wait for 20ns;
		
		function_select <= "10000";
		wait for 20ns;
		
		function_select <= "10100";
		wait for 20ns;
		
		function_select <= "11000";
		wait for 20ns;
    wait;
  end process;


end;