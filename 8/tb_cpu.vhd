--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:18:13 09/24/2020
-- Design Name:   
-- Module Name:   C:/XilinxProjects/Lab-09/tb_cpu.vhd
-- Project Name:  Lab-09
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
--USE ieee.numeric_std.ALL;
 
ENTITY tb_cpu IS
END tb_cpu;
 
ARCHITECTURE behavior OF tb_cpu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU8bits
    PORT(
         data_in : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         data_out : OUT  std_logic_vector(7 downto 0);
         address : OUT  std_logic_vector(4 downto 0);
         we : INOUT  std_logic;
         oe : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

	--BiDirs
   signal we : std_logic;
   signal oe : std_logic;

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);
   signal address : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU8bits PORT MAP (
          data_in => data_in,
          clk => clk,
          rst => rst,
          data_out => data_out,
          address => address,
          we => we,
          oe => oe
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst <= '1';
      wait for 20 ns;	
		data_in <= "00010000";
		wait for 20 ns;
      data_in <= "00010000";
		wait for 20 ns;
		data_in <= "00010001";
		wait for 20 ns;
		data_in <= "00110000";
		wait for 20 ns;
		data_in <= "00010000";
		wait for 20 ns;
		rst <= '0';
		wait for 20 ns;	
		data_in <= "00010000";
		wait for 20 ns;
      data_in <= "00110000";
		wait for 20 ns;
		data_in <= "00010001";
		wait for 20 ns;
		data_in <= "00010000";
		wait for 20 ns;
		data_in <= "00010000";
		wait for 20 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
