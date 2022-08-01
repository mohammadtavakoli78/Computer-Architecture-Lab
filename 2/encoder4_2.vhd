----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:14 08/20/2020 
-- Design Name: 
-- Module Name:   
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

entity encoder4_2 is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (1 downto 0));
end encoder4_2;

architecture structure of encoder4_2 is
	component or_gate is
		port (
			A, B: in std_logic;
			C: out std_logic
		);
	end component or_gate;
begin

O1_G: or_gate port map(A => input(2), B => input(3), C => output(1));
O0_G: or_gate port map(A => input(1), B => input(3), C => output(0));

end structure;

