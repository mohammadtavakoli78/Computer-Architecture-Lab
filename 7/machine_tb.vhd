LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY machine_tb IS
END machine_tb;
 
ARCHITECTURE behavior OF machine_tb IS 
 
 	COMPONENT RAM
		 Port ( 
			data_in : in  STD_LOGIC_VECTOR (7 downto 0);
			address : in  STD_LOGIC_VECTOR (4 downto 0);
			w : in  STD_LOGIC;
			r : in  STD_LOGIC;
			rst : in  STD_LOGIC;
			data_out : out  STD_LOGIC_VECTOR (7 downto 0)
		      );
	end COMPONENT;

    COMPONENT CPU8bits
    PORT(
         data_in : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         data_out : OUT  std_logic_vector(7 downto 0);
         address : OUT  std_logic_vector(4 downto 0);
         we : OUT  std_logic;
         oe : OUT  std_logic
        );
    END COMPONENT;
	    
   signal data_in_cpu : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '1';
   signal rst : std_logic := '1';
   signal data_out_cpu : std_logic_vector(7 downto 0);
   signal address : std_logic_vector(4 downto 0);
   signal we : std_logic := '0';
   signal oe : std_logic := '0';
   constant clk_period : time := 20 ns;
 
BEGIN
 
	ram_0: RAM PORT MAP (
          data_in => data_out_cpu,
	  address => address,
	  w => we,
	  r => oe,
          rst => rst,
          data_out => data_in_cpu
        );
	
	cpu_0: CPU8bits PORT MAP (
          data_in => data_in_cpu,
          clk => clk,
          rst => rst,
          data_out => data_out_cpu,
          address => address,
          we => we,
          oe => oe
        );
		  
	
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 
   stim_proc: process
   begin	
		wait for 5 ns;
		rst <= '0';
		wait for 5 ns;
		rst <= '1';

      wait;
   end process;

END;
