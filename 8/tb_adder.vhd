--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:18 09/16/2020
-- Design Name:   
-- Module Name:   C:/XilinxProjects/Lab-09/tb_adder.vhd
-- Project Name:  Lab-09
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_select_adder
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
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_adder IS
END tb_adder;
 
ARCHITECTURE behavior OF tb_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carry_select_adder
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         cin : IN  std_logic;
         S : OUT  std_logic_vector(7 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carry_select_adder PORT MAP (
          A => A,
          B => B,
          cin => cin,
          S => S,
          cout => cout
        );

   A <= 
		X"00" after 00 ns ,
		X"03" after 10 ns ,
		X"25" after 20 ns ,
		X"07" after 30 ns ,
		X"79" after 40 ns ,
		X"87" after 50 ns ,
		X"09" after 60 ns ,
		X"1B" after 70 ns ,
		X"1D" after 80 ns ,
		X"FF" after 90 ns ;

	B <= 
		X"12" after 00 ns ,
		X"16" after 10 ns ,
		X"1A" after 20 ns ,
		X"1E" after 30 ns ,
		X"14" after 40 ns ,
		X"18" after 50 ns ,
		X"19" after 60 ns ,
		X"14" after 70 ns ,
		X"1C" after 80 ns ,
		X"15" after 90 ns ;

		cin <= not cin after 5 ns ;

END;
