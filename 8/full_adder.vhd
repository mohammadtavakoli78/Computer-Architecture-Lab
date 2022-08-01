----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:42 09/16/2020 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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
----------------------------------------------------------------------------------library IEEE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
	Port(
		a, b, cin: in std_logic;
		sum, cout   : out std_logic
		);
end entity full_adder;
architecture structure of full_adder is
	component or_gate is
		Port(
			A, B: in std_logic;
			C   : out std_logic
		);
	End component or_gate;
	
	component half_adder is
		Port(
			a, b: in std_logic;
			sum, cout   : out std_logic   
		);
	End component half_adder; 

	signal internal_signal0, internal_signal1, internal_signal2: std_logic; 
	
begin 

	half_adder_instance0: half_adder port map ( a => a, b => b, sum => internal_signal0, cout => internal_signal1);
	half_adder_instance1: half_adder port map ( a => internal_signal0, b => cin, sum => sum, cout => internal_signal2);
	or_gate_instance0: or_gate port map ( A => internal_signal1, B => internal_signal2, C => cout );

end structure;