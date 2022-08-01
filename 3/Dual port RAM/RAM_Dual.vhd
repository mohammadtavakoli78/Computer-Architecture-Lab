library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity RAM_Dual is
  generic(
    w : INTEGER := 4; 
    c : INTEGER := 4 
  );
  
  port (
    clck : in std_logic; 
    rd : in std_logic;
    wr : in std_logic; 
    reset : in std_logic; 
    
    addr_rd : in std_logic_vector(c-1 downto 0); 
    addr_wr : in std_logic_vector(c-1 downto 0); 
    
    data_in : in std_logic_vector(w-1 downto 0);
    data_out : out std_logic_vector(w-1 downto 0)
    
  );
end entity;
  
  architecture behaviour of RAM_Dual is
    
     
    type memory is array( (2 ** c) - 1 downto 0) of std_logic_vector(w-1 downto 0);
    
    
    signal ram: memory;
    
  begin
    process(clck, reset)
      begin
        
        if(reset = '0') then
          for i in 0 to ( (2 ** c) - 1 ) loop
            ram(i) <= std_logic_vector(to_unsigned(i, w));
          end loop;
        end if;
        
        if (clck'event and clck = '1') then
          if (wr = '1') then
            ram(to_integer(unsigned(addr_wr))) <= data_in;
			 end if;
          if (rd = '1') then
            data_out <= ram(to_integer(unsigned(addr_rd)));
          end if;
        end if;
        
        
      end process;
      
end behaviour;