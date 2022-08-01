----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:43 08/20/2020 
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

entity decoder2_4 is
    Port ( input1 : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end decoder2_4;

architecture structure of decoder2_4 is
	component and_gate is
		port (
			A, B: in std_logic;
			C: out std_logic
		);
	end component and_gate;
	component not_gate is
		Port ( input1 : in  STD_LOGIC;
			  output : out  STD_LOGIC);
	end component not_gate;
	signal Not_input: std_logic_vector(1 downto 0);
begin
not1: Not_Gate port map(input1 => input1(1), output => Not_input(1));
not0: Not_Gate port map(input1 => input1(0), output => Not_input(0));
A0: And_Gate port map(A => Not_input(1)	, B => Not_input(0), C=> output(0));
A1: And_Gate port map(A => Not_input(1)	, B => input1(0)		, C=> output(1));
A2: And_Gate port map(A => input1(1)		, B => Not_input(0), C=> output(2));
A3: And_Gate port map(A => input1(1)		, B => input1(0)		, C=> output(3));

end structure;

