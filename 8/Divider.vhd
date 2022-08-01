----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:52 09/16/2020 
-- Design Name: 
-- Module Name:    Divider - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity Divider is
    Port ( dividend : in  STD_LOGIC_VECTOR (7 downto 0);
           divisor : in  STD_LOGIC_VECTOR (3 downto 0);
			  quotient : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end Divider;

architecture Behavioral of Divider is
begin

	process(dividend, divisor)is
	variable Z : std_logic_vector(8 downto 0);
	
	begin 

		Z := '0' & dividend(7 downto 0);

		
		for i in 0 to 3 loop
			Z := Z(7 downto 0) & '0';
			if(Z(8 downto 4) >= divisor) then
				Z(8 downto 4) := Z(8 downto 4) - divisor;
				Z(0):='1';
			else
				Z(0):='0';
			end if;
		end loop;
	
		quotient <= Z(3 downto 0);
		
	end process;
	
end ;

