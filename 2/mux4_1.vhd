----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:35:51 08/20/2020 
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

entity mux4_1 is
    Port ( input0 : in  STD_LOGIC_VECTOR (0 to 3);
           input1 : in  STD_LOGIC_VECTOR (0 to 3);
           input2 : in  STD_LOGIC_VECTOR (0 to 3);
           input3 : in  STD_LOGIC_VECTOR (0 to 3);
           selector : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (0 to 3));
end mux4_1;

architecture structure of mux4_1 is
	component mux4_1_1bit is
		 Port ( selector : in  STD_LOGIC_VECTOR (1 downto 0);
				  input : in  STD_LOGIC_VECTOR (0 to 3);
				  output : out  STD_LOGIC);
	end component mux4_1_1bit;
	signal in0, in1, in2, in3: std_logic_vector(0 to 3);
begin
in0 <= (input0(0) & input1(0) & input2(0) & input3(0));
in1 <= (input0(1) & input1(1) & input2(1) & input3(1));
in2 <= (input0(2) & input1(2) & input2(2) & input3(2));
in3 <= (input0(3) & input1(3) & input2(3) & input3(3));
mux0: mux4_1_1bit port map(selector => selector, input => in0, output => output(0));
mux1: mux4_1_1bit port map(selector => selector, input => in1, output => output(1));
mux2: mux4_1_1bit port map(selector => selector, input => in2, output => output(2));
mux3: mux4_1_1bit port map(selector => selector, input => in3, output => output(3));

end structure;

