library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM is
    Port ( data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           address : in  STD_LOGIC_VECTOR (4 downto 0);
           w : in  STD_LOGIC;
           r : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture RAM_arch of RAM is
	type mem_type is array (31 downto 0) of STD_LOGIC_VECTOR (7 downto 0);
	signal RAM : mem_type;
begin
	fnc: process(rst, w, r)
	begin
		if rst = '0' then
			RAM(0) <= "00000111"; 
			RAM(1) <= "10101000"; 
			RAM(2) <= "00111111"; 
			RAM(3) <= "11000000"; 
			RAM(4) <= "11100000"; 
			RAM(5) <= "01100001";
			RAM(6) <= "01000000"; 
			RAM(7) <= "00000100"; 
			RAM(8) <= "00000111"; 
			for i in 9 to 31 loop 
				RAM(i) <= std_logic_vector(to_unsigned(0, data_out'length));
			end loop;
		elsif rising_edge(w) then
			RAM(to_integer(unsigned(address))) <= data_in;
		elsif rising_edge(r) then
			data_out <= RAM(to_integer(unsigned(address)));
		end if;
	end process;
end RAM_arch;

