LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

USE ieee.numeric_std.ALL;


 
ENTITY RAM_tb IS
END RAM_tb;
 
ARCHITECTURE behavior OF RAM_tb IS 
 
    COMPONENT RAM
			generic(
				w : INTEGER := 8; 
				c : INTEGER := 64 
			);
			
			PORT(
				clck : IN  std_logic;
				rd : IN  std_logic;
				wr : IN  std_logic;
				reset : IN  std_logic;
				addr : IN  std_logic_vector(c-1 downto 0);
				data : INOUT  std_logic_vector(w-1 downto 0)
        );
    END COMPONENT;
	 
	 
   
	constant MEMORY_WIDTH : integer := 4;
	constant ADDRESS_WIDTH : integer := 4;

   
   signal clck : std_logic := '0';
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal reset : std_logic := '1';
   signal addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0) := (others => '0');
	
	

 	
   signal data : std_logic_vector(MEMORY_WIDTH - 1 downto 0) := (others => 'Z');
	

   
   constant clk_period : time := 20 ns;
 
BEGIN
 
	
   uut: RAM
		generic map ( w => MEMORY_WIDTH, c => ADDRESS_WIDTH)
		PORT MAP (
          clck => clck,
          rd => rd,
          wr => wr,
          reset => reset,
          addr => addr,
          data => data
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
				data <= (others => 'Z');
            addr <= std_logic_vector(to_unsigned(i, ADDRESS_WIDTH));
				wait for 20 ns;
       end loop;
		 
		 data <= (others => 'Z');
		 wait for 20 ns;
		 
		 
		 addr <= "0000";
		 data <= "0101";
		 rd <= '0';
		 wr <= '1';
		 wait for 20 ns;
		 
		 
		 
		 addr <= "0000";
		 rd <= '1';
		 wr <= '0';
		 wait for 20 ns;
		 
		 
		 data <= (others => 'Z');
		 wait for 20 ns;

      wait for clk_period*10; 

      wait;
   end process;

END;
