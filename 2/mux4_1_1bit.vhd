----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:59:25 08/20/2020 
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

entity mux4_1_1bit is
    Port ( selector : in  STD_LOGIC_VECTOR (1 downto 0);
           input : in  STD_LOGIC_VECTOR (0 to 3);
           output : out  STD_LOGIC);
end mux4_1_1bit;

architecture structure of mux4_1_1bit is
	component decoder2_4 is
		 Port ( input : in  STD_LOGIC_VECTOR (1 downto 0);
				  output : out  STD_LOGIC_VECTOR (3 downto 0));
	end component decoder2_4;
	component And_Gate is
		port (
			A, B: in std_logic;
			C: out std_logic
		);
	end component And_Gate;
	component or_gate is
		port (
			A, B: in std_logic;
			C: out std_logic
		);
	end component or_gate;
	signal Decoder_Out, Or_In: std_logic_vector(3 downto 0);
	signal int0, int1: std_logic;
begin
DEC: decoder2_4 port map(input => selector, output => Decoder_Out);
A0: And_Gate port map(A => Decoder_Out(0), B => input(0), C => Or_In(0));
A1: And_Gate port map(A => Decoder_Out(1), B => input(1), C => Or_In(1));
A2: And_Gate port map(A => Decoder_Out(2), B => input(2), C => Or_In(2));
A3: And_Gate port map(A => Decoder_Out(3), B => input(3), C => Or_In(3));

O0: or_gate port map(A => Or_In(3), B => Or_In(2), C => int0);
O1: or_gate port map(A => Or_In(1), B => Or_In(0), C => int1);
O2: or_gate port map(A => int0, B => int1, C => output);

end structure;

