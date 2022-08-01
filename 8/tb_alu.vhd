--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:57:59 09/16/2020
-- Design Name:   
-- Module Name:   C:/XilinxProjects/Lab-09/tb_alu.vhd
-- Project Name:  Lab-09
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
use IEEE.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_alu IS
END tb_alu;
 
ARCHITECTURE behavior OF tb_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         temp1 : IN  std_logic_vector(7 downto 0);
         temp2 : IN  std_logic_vector(7 downto 0);
         C : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         temp3 : OUT  std_logic_vector(7 downto 0);
         CF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal temp1 : std_logic_vector(7 downto 0) := (others => '0');
   signal temp2 : std_logic_vector(7 downto 0) := (others => '0');
   signal C : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal temp3 : std_logic_vector(7 downto 0);
   signal CF : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          temp1 => temp1,
          temp2 => temp2,
          C => C,
          clk => clk,
          temp3 => temp3,
          CF => CF
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
      -- hold reset state for 100 ns.
      temp1 <= x"0A";
		temp2 <= x"02";
		C <= x"0";
		wait for clk_period;
		for i in 0 to 15 loop 
			C <= C + x"1";
			wait for clk_period;
		end loop;
      temp1 <= x"16";
		temp2 <= x"0A";
		C <= x"0";
		wait for clk_period;
		for i in 0 to 15 loop 
			C <= C + x"1";
			wait for clk_period;
		end loop;
		wait;

   end process;

END;
