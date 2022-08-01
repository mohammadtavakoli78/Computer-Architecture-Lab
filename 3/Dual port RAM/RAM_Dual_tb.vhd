LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
USE ieee.numeric_std.ALL;
 
ENTITY RAM_Dual_tb IS
END RAM_Dual_tb;
 
ARCHITECTURE behavior OF RAM_Dual_tb IS 
 
   
 
    COMPONENT RAM_Dual
		 generic(
			 w : INTEGER := 4; 
			 c : INTEGER := 4 
	  );
  
    PORT(
         clck : IN  std_logic;
         rd : IN  std_logic;
         wr : IN  std_logic;
         reset : IN  std_logic;
         addr_rd : IN  std_logic_vector(c - 1 downto 0);
         addr_wr : IN  std_logic_vector(c - 1 downto 0);
         data_in : IN  std_logic_vector(w - 1 downto 0);
         data_out : OUT  std_logic_vector(w - 1 downto 0)
        );
    END COMPONENT;
    
	 
	
	constant MEMORY_WIDTH : integer := 4;
	constant ADDRESS_WIDTH : integer := 4;

  
   signal clck : std_logic := '0';
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal reset : std_logic := '0';
   signal addr_rd : std_logic_vector(ADDRESS_WIDTH - 1 downto 0) := (others => '0');
   signal addr_wr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0) := (others => '0');
   signal data_in : std_logic_vector(MEMORY_WIDTH - 1 downto 0) := (others => '0');

 	
   signal data_out : std_logic_vector(MEMORY_WIDTH - 1 downto 0);

   
   constant clk_period : time := 20 ns;
 
BEGIN
 
	
   uut: RAM_Dual PORT MAP (
          clck => clck,
          rd => rd,
          wr => wr,
          reset => reset,
          addr_rd => addr_rd,
          addr_wr => addr_wr,
          data_in => data_in,
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
    
		reset <= '0';
		wait for 20 ns;
		
		
		reset <= '1';
		rd <= '1';
		for i in 0 to ( (2 ** ADDRESS_WIDTH) - 1 ) loop
            addr_rd <= std_logic_vector(to_unsigned(i, ADDRESS_WIDTH));
				wait for 20 ns;
       end loop;
		 
		 rd <= '0';
		 wr <= '1';
		 addr_wr <= "0000";
		 data_in <= "1100";
		 wait for 20 ns;
		 
		 
		 addr_wr <= "0001";
		 data_in <= "0101";
		 
		 addr_rd <= "0000";
		 rd <= '1';
		 wr <= '1';
		 wait for 20 ns;
		 

		 rd <= '1';
		 wr <= '0';
		 addr_rd <= "0001";
		 wait for 20 ns;

      wait for clk_period*10; 

      wait;
   end process;

END;
