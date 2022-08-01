LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
USE ieee.numeric_std.ALL;
 
ENTITY ROM_tb IS
END ROM_tb;
 
ARCHITECTURE behavior OF ROM_tb IS 
 
   
 
    COMPONENT ROM
		 generic(
					w : INTEGER := 4; 
					c : INTEGER := 4 
				);
		 PORT(
				clck : IN  std_logic;
				addr : IN  std_logic_vector(c - 1 downto 0);
				data_out : OUT  std_logic_vector(w - 1 downto 0)
			  );
    END COMPONENT;
	 
	 
	 
	constant MEMORY_WIDTH : integer := 4;
	constant ADDRESS_WIDTH : integer := 4;
    

 
   signal clck : std_logic := '0';
   signal addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0) := (others => '0');

 	
   signal data_out : std_logic_vector(MEMORY_WIDTH - 1 downto 0);

  
   constant clk_period : time := 20 ns;
 
BEGIN
 
	
   uut: ROM PORT MAP (
          clck => clck,
          addr => addr,
          data_out => data_out
        );

 
   clk_process :process
   begin
		clck <= '0';
		wait for clk_period/2;
		clck <= '1';
		wait for clk_period/2;
   end process;
 


   stim_proc: process
   begin		
    
      wait for 20 ns;	
		
		for i in 0 to ( (2 ** ADDRESS_WIDTH) - 1 ) loop
            addr <= std_logic_vector(to_unsigned(i, ADDRESS_WIDTH));
				wait for 20 ns;
       end loop;
		 

      wait for clk_period*10;



      wait;
   end process;

END;
