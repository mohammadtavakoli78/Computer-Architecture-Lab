--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:41:15 09/18/2020
-- Design Name:   
-- Module Name:   D:/vhdl/ex9/basic_computer_test.vhd
-- Project Name:  ex9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU8bits
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY basic_computer_test IS
END basic_computer_test;
 
ARCHITECTURE behavior OF basic_computer_test IS 
 
 
    COMPONENT CPU8bits
    PORT(
         Data_in : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         Data_out : OUT  std_logic_vector(7 downto 0);
         Address : OUT  std_logic_vector(4 downto 0);
         we : OUT  std_logic;
         oe : OUT  std_logic
        );
    END COMPONENT;
	 
	COMPONENT RAM
		 Port ( Data_in : in  STD_LOGIC_VECTOR (7 downto 0);
				  Addr : in  STD_LOGIC_VECTOR (4 downto 0);
				  w : in  STD_LOGIC;
				  r : in  STD_LOGIC;
				  rst : in  STD_LOGIC;
				  Data_out : out  STD_LOGIC_VECTOR (7 downto 0));
	end COMPONENT;
    

   --Inputs
   signal Data_in_cpu : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '1';
   signal rst : std_logic := '1';

 	--Outputs
   signal Data_out_cpu : std_logic_vector(7 downto 0);
   signal Address : std_logic_vector(4 downto 0);
   signal we : std_logic := '0';
   signal oe : std_logic := '0';

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
   cpu: CPU8bits PORT MAP (
          Data_in => Data_in_cpu,
          clk => clk,
          rst => rst,
          Data_out => Data_out_cpu,
          Address => Address,
          we => we,
          oe => oe
        );
		  
   ram0: RAM PORT MAP (
          Data_in => Data_out_cpu,
			 Addr => Address,
			 w => we,
			 r => oe,
          rst => rst,
          Data_out => Data_in_cpu
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		wait for 2 ns;
		rst <= '0';
		wait for 2 ns;
		rst <= '1';

      wait;
   end process;

END;
