library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;




entity binary_divider is
    Port ( 	m : in  STD_LOGIC_VECTOR (7 downto 0);
			n : in  STD_LOGIC_VECTOR (3 downto 0);
			rmd : out  STD_LOGIC_VECTOR (3 downto 0);
			qtn : out  STD_LOGIC_VECTOR (3 downto 0);
			ovf : out std_logic
	);
end binary_divider;

architecture Behavioral of binary_divider is
begin

process(m , n)is

variable E : std_logic;
variable R : std_logic_vector(3 downto 0);
variable A : std_logic_vector(3 downto 0);

begin 

R := m(7 downto 4);
A := m(3 downto 0);

-- if overflow
if (R >= n) then
	ovf <= '1';
	 
-- if not overflow
else
	ovf <= '0';
	
	for i in 0 to 3 loop
		E := R(3);
		R(3 downto 0) := R(2 downto 0) & A(3);
		A(3 downto 0) := A(2 downto 0) & '0';
		

		if (E = '1') then
			R := R - n;
			A(0) := '1';
		elsif (E = '0') then
			if (R >= n) then
				R := R - n;
				A(0) := '1';
			end if ;
		end if ;
		
	end loop;
end if ;

qtn <= A;
rmd <= R;

end process;
end ;