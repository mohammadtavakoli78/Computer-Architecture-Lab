library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CAM is
	generic (
		w : integer := 8; 
		c : integer := 4 
		);
	
	port (
		clck : in std_logic; 
		reset : in std_logic; 
		
		wr : in std_logic; 
		rd : in std_logic; 
		
		data_in : in std_logic_vector(w - 1 downto 0);
		hit_out : out std_logic; 
		addr_out : out std_logic_vector(c - 1 downto 0) 
		);
end CAM;

architecture Behavioral of CAM is
	
    type memory is array( (2 ** c) - 1 downto 0) of std_logic_vector(w-1 downto 0);
    
    
    signal cam: memory;
	 
	 
	 signal writeptr : integer := 0;
	 
	 
	 signal hit_internal : std_logic := '0';

begin
	process (clck, reset)
	
	begin
		if (reset = '0') then
			for i in 0 to ( (2 ** c) - 1 ) loop
				cam(i) <= std_logic_vector(to_unsigned(i, w));
			end loop;
		end if;
		
		if (clck'event and clck = '1') then
			if (wr = '1') then
				hit_internal <= '0';
				for i in 0 to ( (2 ** c) - 1) loop
					if (cam(i) = data_in) then
						hit_internal <= '1';
						addr_out <= std_logic_vector(to_unsigned(i, c));
						exit;
					end if;
				end loop;
				
				if (hit_internal = '0') then
					cam(writeptr) <= data_in;
					
					writeptr <= writeptr + 1;
					if (writeptr = ( (2 ** c) - 1)) then 
						writeptr <= 0;
					end if;
					
				end if;
			end if;
			
			else if (rd = '1') then
				hit_internal <= '0';
				for i in 0 to ( (2 ** c) - 1) loop
					if (cam(i) = data_in) then
						hit_internal <= '1';
						addr_out <= std_logic_vector(to_unsigned(i, c));
						exit;
					end if;
				end loop;
				
			end if;
			
			hit_out <= hit_internal;
			
		end if;
			
	end process;



end Behavioral;

