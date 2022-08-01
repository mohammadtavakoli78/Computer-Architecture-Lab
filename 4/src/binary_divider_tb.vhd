
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY binary_divider_tb IS
END binary_divider_tb;
 
ARCHITECTURE behavior OF binary_divider_tb IS 
 
    
 
    COMPONENT binary_divider
    PORT(
         m : IN  std_logic_vector(7 downto 0);
         n : IN  std_logic_vector(3 downto 0);
         rmd : OUT  std_logic_vector(3 downto 0);
         qtn : OUT  std_logic_vector(3 downto 0);
         ovf : OUT  std_logic
        );
    END COMPONENT;
    

   
    signal m : std_logic_vector(7 downto 0) := (others => '0');
    signal n : std_logic_vector(3 downto 0) := (others => '0');
  

 	
    signal rmd : std_logic_vector(3 downto 0);
    signal qtn : std_logic_vector(3 downto 0);
    signal ovf : std_logic;

 
BEGIN
 
	
    uut: binary_divider PORT MAP (
          m => m,
          n => n,
          rmd => rmd,
          qtn => qtn,
		  ovf => ovf
        );


 

   
    stim_proc: process
    begin		
		 
		wait for 100 ns;	
			m <= "00011000";
       		n <= "1001";
      
		wait for 100 ns;
			m <= "01101111";
        	n <= "1001";
		
		wait for 100 ns;
			m <= "00010100";
       		n <= "0011";
		
		wait for 100 ns;
			m <= "10100101";
       		n <= "1000";
		
		wait for 100 ns;
			m <= "01101100";
       		n <= "1001";
		
		wait for 100 ns;
			m <= "01011111";
       		n <= "1101";
		 
		wait for 100 ms;
			m <= "01101111";
       		n <= "0101";
     
		wait;
    end process;
 
END;
