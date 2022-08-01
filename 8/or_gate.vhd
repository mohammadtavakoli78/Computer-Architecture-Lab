----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:04 09/16/2020 
-- Design Name: 
-- Module Name:    or_gate - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity or_gate is
	Port(
		A, B: in std_logic;
		C : out std_logic
	);
End entity or_gate;

Architecture gatelevel of or_gate is

Begin

	C <= A or B;

End gatelevel;