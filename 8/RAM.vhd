----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:23 09/23/2020 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
USE ieee.numeric_std.ALL;


entity RAM is
	port
	(
		data_in	: in std_logic_vector(7 downto 0);
		addr	: in std_logic_vector(4 downto 0);
		w		: in std_logic ;
		r		: in std_logic ;		
		clk		: in std_logic;
		rst		: in std_logic;
		data_out		: out std_logic_vector(7 downto 0)
	);
	
end entity;

architecture Behavioral of RAM is

	-- Build a 2-D array type for the RAM
	type memory_t is array(15 downto 0) of std_logic_vector(7 downto 0);
	
	-- Declare the RAM signal.
	signal ram : memory_t;
	

begin

	process(clk, rst)
	begin
		if (rst = '0') then
			ram <=(
				x"0F",x"0E",x"0D",x"0C", 
				x"0B",x"0A",x"09",x"08",
				x"07",x"06",x"05",x"04",
				x"03",x"02",x"01",x"00"
			);
		end if;
		if(clk'event and clk='1') then
			if(w = '1') then
				ram(to_integer(unsigned(addr))) <= data_in;
			elsif(r = '1') then
				data_out <= ram(to_integer(unsigned(addr)));
			end if;
		end if;
	end process;
end Behavioral;
