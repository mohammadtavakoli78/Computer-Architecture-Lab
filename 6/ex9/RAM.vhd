----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:50 09/18/2020 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Port ( Data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           w : in  STD_LOGIC;
           r : in  STD_LOGIC;	
           rst : in  STD_LOGIC;
           Data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture RAM_arch of RAM is
	type mem_type is array (31 downto 0) of STD_LOGIC_VECTOR (7 downto 0);
	signal RAM : mem_type;
begin
	fnc: process(rst, w, r)
	begin
		if rst = '0' then
			RAM(0) <= "00000111"; -- Load RAM(7) to akku
			RAM(1) <= "10101000"; -- Add RAM(8) with akku
			RAM(2) <= "00111111"; -- Store akku to RAM(31)
			RAM(3) <= "11000000"; -- Not akku
			RAM(4) <= "11100000"; -- Left-Shift akku
			RAM(5) <= "01100001";
			--RAM(5) <= "10011111"; -- And akku with RAM(31)
			RAM(6) <= "01000000"; -- Jump to RAM(0)
			RAM(7) <= "00000101"; -- 5
			RAM(8) <= "00001010"; -- 10
			for i in 9 to 31 loop 
				RAM(i) <= std_logic_vector(to_unsigned(0, Data_out'length));
			end loop;
		elsif rising_edge(w) then
			RAM(to_integer(unsigned(Addr))) <= Data_in;
		elsif rising_edge(r) then
			Data_out <= RAM(to_integer(unsigned(Addr)));
		end if;
	end process;
end RAM_arch;

