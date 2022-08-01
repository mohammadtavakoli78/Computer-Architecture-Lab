----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:42 09/16/2020 
-- Design Name: 
-- Module Name:    xor_gate - Behavioral 
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

Entity xor_gate is
	Port(
		A, B: in std_logic;
		C : out std_logic
	);
End entity xor_gate;

Architecture gatelevel of xor_gate is

Begin

	C <= A xor B;

End gatelevel;
