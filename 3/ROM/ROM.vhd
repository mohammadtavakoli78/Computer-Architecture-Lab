library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;

entity ROM is
  generic(
    w : INTEGER := 4;
    c : INTEGER := 4 
  );
  
  port (
    clck : in std_logic;     
    addr : in std_logic_vector(c-1 downto 0); 
    
    data_out : out std_logic_vector(w-1 downto 0)
    
  );
end entity;
  
  architecture behaviour of ROM is
    
    
    type memory is array( (2 ** c) - 1 downto 0) of std_logic_vector(w-1 downto 0);
    

    signal rom: memory :=(
		5 => "0101",
		6 => "1010",
		7 => "0101",
		8 => "1010",
		9 => "1100",
		10 => "0011",
		others => "0000"
	 );
    
  begin
    process(clck)
      begin
        
        if (clck'event and clck = '1') then
            data_out <= rom(to_integer(unsigned(addr)));
        end if;
        
        
      end process;
      
end behaviour;