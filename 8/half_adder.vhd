----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:28 09/16/2020 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
	Port(
		a, b: in std_logic;
		sum, cout   : out std_logic
	);
end entity half_adder;

architecture structure of half_adder is
	component xor_gate is
		Port(
			A, B: in std_logic;
			C   : out std_logic
		);
	End component xor_gate;

	component and_gate is
		Port(
			A, B: in std_logic;
			C : out std_logic
		);
	End component and_gate;

begin

	xor_gate_instance0: xor_gate port map ( A => a, B => b, C=>sum );
	and_gate_instance0: and_gate port map ( A => a, B => b, C=>cout );

end structure; 
 