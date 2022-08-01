LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY CAM_tb IS
END CAM_tb;
 
ARCHITECTURE behavior OF CAM_tb IS 
 
    COMPONENT CAM
	 generic (
		w : integer := 8; 
		c : integer := 4 
		);
    PORT(
         clck : IN  std_logic;
         reset : IN  std_logic;
         wr : IN  std_logic;
         rd : IN  std_logic;
         data_in : IN  std_logic_vector(w - 1 downto 0);
         hit_out : OUT  std_logic;
         addr_out : OUT  std_logic_vector(c - 1 downto 0)
        );
    END COMPONENT;
	 
	 
    
	 constant MEMORY_WIDTH : integer := 8;
	 constant ADDRESS_WIDTH : integer := 4;

   
   signal clck : std_logic := '0';
   signal reset : std_logic := '0';
   signal wr : std_logic := '0';
   signal rd : std_logic := '0';
   signal data_in : std_logic_vector(MEMORY_WIDTH - 1 downto 0) := (others => '0');

   signal hit_out : std_logic;
   signal addr_out : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);


   constant clk_period : time := 20 ns;
 
BEGIN
 

   uut: CAM PORT MAP (
          clck => clck,
          reset => reset,
          wr => wr,
          rd => rd,
          data_in => data_in,
          hit_out => hit_out,
          addr_out => addr_out
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
      wait for 100 ns;

		reset <= '1';
		wr <= '1';
		data_in <= "00000011";
		wait for 20 ns;
		
		
		data_in <= "10000000";
		wait for 20 ns;
		
		wr <= '0';
		rd <= '1';
		data_in <= "11000000";
		wait for 20 ns;
		
		data_in <= "00000011";
		wait for 20 ns;
		
		data_in <= "10000000";
		wait for 20 ns;
		
		
		rd <= '0';
      wait for clk_period*10;
 
		
      wait;
   end process;

END;
