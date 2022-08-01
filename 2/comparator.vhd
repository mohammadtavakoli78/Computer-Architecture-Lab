--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:51:11 08/21/2020
-- Design Name:   
-- Module Name:   
-- Project Name: 
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comp_4bit
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
use std.env.finish;

ENTITY comparator IS
END comparator;
 
ARCHITECTURE behavior OF comparator IS 

 
    COMPONENT comp_4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         A_GT_B : OUT  std_logic;
         A_EQ_B : OUT  std_logic;
         A_LT_B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal A_GT_B : std_logic;
   signal A_EQ_B : std_logic;
   signal A_LT_B : std_logic;
 
BEGIN
 

   uut: comp_4bit PORT MAP (
          A => A,
          B => B,
          A_GT_B => A_GT_B,
          A_EQ_B => A_EQ_B,
          A_LT_B => A_LT_B
        );
		  

   stim_proc: process
   begin		
		A <= "0111";
		B <= "1010";
      wait for 50 ns;
		
      A <= "1010";
		B <= "1010";
      wait for 50 ns;
		
		A <= "1011";
		B <= "1010";
      wait for 50 ns;

		finish;
   end process;

END;
