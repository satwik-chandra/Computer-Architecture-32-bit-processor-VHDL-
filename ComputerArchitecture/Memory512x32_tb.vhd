library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Memory512x32_tb is
end;

architecture bench of Memory512x32_tb is

  component Memory512x32
      Port(	address_mem : in STD_LOGIC_VECTOR(31 downto 0);
  			write_data : in STD_LOGIC_VECTOR(31 downto 0);
  			mem_write : in STD_LOGIC;
  			read_data : out STD_LOGIC_VECTOR(31 downto 0)
  			);
  end component;

  signal address_mem: STD_LOGIC_VECTOR(31 downto 0):= (others => '0');
  signal write_data: STD_LOGIC_VECTOR(31 downto 0):= (others => '0');
  signal mem_write: STD_LOGIC:= '0';
  signal read_data: STD_LOGIC_VECTOR(31 downto 0) ;

begin

  uut: Memory512x32 port map ( address_mem => address_mem,
                               write_data  => write_data,
                               mem_write   => mem_write,
                               read_data   => read_data );

  stimulus: process
  begin
  
   wait for 10ns;
		address_mem <= x"00000000";
		
		wait for 10ns;
		address_mem <= x"00000001";
		
		wait for 10ns;
		address_mem <= x"00000006";
		
		wait for 10ns;
		address_mem <= x"00000007";

    wait;
  end process;


end;
  