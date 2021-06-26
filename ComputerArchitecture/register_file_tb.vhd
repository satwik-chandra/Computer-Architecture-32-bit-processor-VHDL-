library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity register_file_tb is
end;

architecture bench of register_file_tb is

  component register_file
  Port ( Clk, load_enabled : in std_logic;
          addr_a, addr_b : in std_logic_vector(4 downto 0);
           dest_d : in std_logic_vector(4 downto 0);
          data : in std_logic_vector(31 downto 0);
          out_a, out_b : out std_logic_vector(31 downto 0)
      );
  end component;

  signal Clk, load_enabled: std_logic;
  signal addr_a, addr_b: std_logic_vector(4 downto 0);
  signal dest_d: std_logic_vector(4 downto 0);
  signal data: std_logic_vector(31 downto 0);
  signal out_a, out_b: std_logic_vector(31 downto 0) ;

begin

  uut: register_file port map ( Clk          => Clk,
                                load_enabled => load_enabled,
                                addr_a       => addr_a,
                                addr_b       => addr_b,
                                dest_d       => dest_d,
                                data         => data,
                                out_a        => out_a,
                                out_b        => out_b );

  stimulus: process
  begin
  
     dest_d <= "00000";
     data <= x"0126D253";
     Clk <= '0';
     load_enabled <= '1';
     
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;

     dest_d <= "00001";
     data <=  x"0126D254";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "00010";
     data <=x"0126D255";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "00100";
     data <= x"0126D256";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "01000";
     data <= x"0126D257";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "10000";
     data <= x"0126D258";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "00011";
     data <=  x"0126D259";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "00110";
     data <= x"0126D25A";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
     
     wait for 10 ns;

     dest_d <= "00101";
     data <= x"0126D25B";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "01010";
     data <= x"0126D25C";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "01001";
     data <= x"0126D25D";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "01100";
     data <=x"0126D25E";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "11000";
     data <= x"0126D25F";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "10001";
     data <= x"0126D260";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "10100";
     data <= x"0126D261";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
     
     wait for 10 ns;

     dest_d <= "10010";
     data <= x"0126D262";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "11100";
     data <= x"0126D263";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "11001";
     data <= x"0126D264";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "11010";
     data <= x"0126D265";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "10101";
     data <= x"0126D266";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "10110";
     data <= x"0126D267";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "10011";
     data <= x"0126D268";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;

     dest_d <= "00111";
     data <= x"0126D269";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "01110";
     data <= x"0126D26A";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "01011";
     data <=  x"0126D26B";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "01101";
     data <= x"0126D26C";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "11110";
     data <= x"0126D26D";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "11101";
     data <=  x"0126D26E";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "11011";
     data <= x"0126D26F";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
     
     wait for 10 ns;
     
     dest_d <= "10111";
     data <= x"0126D270";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
      
     wait for 10 ns;
     
     dest_d <= "01111";
     data <= x"0126D271";
     Clk <= '0';
          
     wait for 10 ns;
   
     Clk <= '1';
     
     wait for 10 ns;
      
     dest_d <= "11111";
     data <= x"0126D272";
     Clk <= '0';
          
     wait for 10 ns;
   
     
     Clk <= '1';
      
     
     wait for 10 ns;
     
     addr_a <= "00000";
     addr_b <= "11111";
     
     wait for 10 ns;

     addr_a <= "00001";
     addr_b <= "01111";
     
     wait for 10 ns;
     
     addr_a <= "00010";
     addr_b <= "10111";
     
     wait for 10 ns;
     
     addr_a <= "00100";
     addr_b <= "11101";
     
     wait for 10 ns;
     
     addr_a <= "01000";
     addr_b <= "11101";
     
     wait for 10 ns;
     
     addr_a <= "10000";
     addr_b <= "11110";
     
     wait for 10 ns;
     
     addr_a <= "00011";
     addr_b <= "01101";
     
     wait for 10 ns;
     
     addr_a <= "00110";
     addr_b <= "01011";
     
      wait for 10 ns;
     
     addr_a <= "00101";
     addr_b <= "01110";
     
     wait for 10 ns;

     addr_a <= "01010";
     addr_b <= "00111";
     
     wait for 10 ns;
     
     addr_a <= "01001";
     addr_b <= "10011";
     
     wait for 10 ns;
     
     addr_a <= "01100";
     addr_b <= "10110";
     
     wait for 10 ns;
     
     addr_a <= "11000";
     addr_b <= "10101";
     
     wait for 10 ns;
     
     addr_a <= "10001";
     addr_b <= "11010";
     
     wait for 10 ns;
     
     addr_a <= "10100";
     addr_b <= "11001";
     
     wait for 10 ns;
     
     addr_a <= "10010";
     addr_b <= "11100";
     
     wait for 10 ns;
     
  end process;


end;