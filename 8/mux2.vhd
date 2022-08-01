----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:51:42 09/16/2020 
-- Design Name: 
-- Module Name:    mux2 - Behavioral 
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

entity mux2 is
	port (
		d0 : in  std_logic;
		d1 : in  std_logic;
		sel : in std_logic;
		o : out std_logic
	);
end mux2;

architecture mux2_arc of mux2 is
begin

	o <= d0 when sel='0' else d1 when sel='1' else '-'; 

end mux2_arc;