library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity RAM is
  generic(
    w : INTEGER := 8;
    c : INTEGER := 8 
  );
  
  port (
    clck : in std_logic;
    rd : in std_logic; 
    wr : in std_logic;
    reset : in std_logic; 
    
    addr : in std_logic_vector(c-1 downto 0); 
    
    data : inout std_logic_vector(w-1 downto 0)
    
  );
end entity;
  
  architecture behaviour of RAM is
    
    
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
            ram(to_integer(unsigned(addr))) <= data;
          elsif (rd = '1') then
            data <= ram(to_integer(unsigned(addr)));
          end if;
        end if;
        
        
      end process;
      
end behaviour;