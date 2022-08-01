----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:36:26 09/16/2020 
-- Design Name: 
-- Module Name:    carry_ripple_adder - Behavioral 
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

entity carry_ripple_adder is
	port (
		A    : in  std_logic_vector(3 downto 0);
		B    : in  std_logic_vector(3 downto 0);
		cin  : in  std_logic;
		S    : out std_logic_vector(3 downto 0);
		cout : out std_logic
	);
end carry_ripple_adder;

architecture carry_ripple_adder_arc of carry_ripple_adder is

	component full_adder is
		Port ( a, b, cin : in  STD_LOGIC;
				 sum, cout : out  STD_LOGIC);
	End component full_adder;
	
	signal c1,c2,c3: STD_LOGIC;

begin

	FA1: full_adder port map( A(0), B(0), Cin, S(0), c1);
	FA2: full_adder port map( A(1), B(1), c1, S(1), c2);
	FA3: full_adder port map( A(2), B(2), c2, S(2), c3);
	FA4: full_adder port map( A(3), B(3), c3, S(3), Cout);

end carry_ripple_adder_arc;