----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:02 09/24/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:23 09/16/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use ieee.NUMERIC_STD.all;


entity ALU is
    Port (
		temp1, temp2	: in  STD_LOGIC_VECTOR(7 downto 0);  -- 2 inputs 8-bit
		C  : in  STD_LOGIC_VECTOR(3 downto 0);  -- 1 input 4-bit for selecting function
		clk : in STD_LOGIC;
		temp3   : out  STD_LOGIC_VECTOR(7 downto 0); -- 1 output 8-bit 
		CF : out std_logic        -- Carryout flag
    );
end ALU; 

architecture Behavioral of ALU is

	component carry_select_adder is
		Port (  
				X : in STD_LOGIC_VECTOR (3 downto 0);
				Y : in STD_LOGIC_VECTOR (3 downto 0);
				CARRY_IN : in STD_LOGIC;
				SUM : out STD_LOGIC_VECTOR (3 downto 0);
				CARRY_OUT : out STD_LOGIC
			 );
	End component carry_select_adder;
	
	component array_mul is	
		Port(
			a : in STD_LOGIC_VECTOR(3 downto 0);
			b : in STD_LOGIC_VECTOR(3 downto 0);
			p : out STD_LOGIC_VECTOR(7 downto 0)
		);
	End component array_mul;
	
	component binary_divider is
    Port ( 	
			m : in  STD_LOGIC_VECTOR (7 downto 0);
			n : in  STD_LOGIC_VECTOR (3 downto 0);
			rmd : out  STD_LOGIC_VECTOR (3 downto 0);
			qtn : out  STD_LOGIC_VECTOR (3 downto 0);
			ovf : out std_logic
		);
	End component binary_divider;


signal c1 : std_logic_vector (7 downto 0);
signal tmp1, tmp2, tmp3, tmp4 : std_logic_vector (7 downto 0);
signal c2, c3: std_logic;


begin
   
	c1 <= not temp2;
	carry_select_adder0: carry_select_adder PORT MAP(A=>temp1, B=>temp2, cin=>'0', S=>tmp1, cout=>c2);
	carry_select_adder1: carry_select_adder PORT MAP(A=>temp1, B=>c1, cin=>'1', S=>tmp2, cout=>c3);
	array_mul0: array_mul PORT MAP(A=>temp1(3 downto 0), B=>temp2(3 downto 0), P=>tmp3);
	binary_divider0: binary_divider PORT MAP(m=>temp1, n=>temp2(3 downto 0), qtn=>tmp4(3 downto 0));
	tmp4(7 downto 4) <= "0000"; 
	
	process(clk)
	begin
	if(clk'event and clk='1') then
		
		case(C) is
			
			when "0000" => -- Logical and 
				temp3 <= temp1 and temp2;
			
			when "0001" => -- Addition
				temp3 <= tmp1;
				CF<= c2;
			
			when "0010" => -- Logical not
				temp3 <= not temp1;
			
			when "0011" => -- Logical Shift Right
				temp3 <= '0' & temp1(7 downto 1);
			
			when "0100" => -- Logical Shift Left
				temp3 <= temp1(6 downto 0) & '0';
			
			when "0101" => -- Rotate right
				temp3 <= temp1(0) & temp1(7 downto 1);
			
			when "0110" => --  Rotate left
				temp3 <= temp1(6 downto 0) & temp1(7);
			
			when "0111" => -- Subtraction
				temp3 <= tmp2;
				CF <= '0';
			when "1000" => -- Multiplication
				temp3 <= tmp3;
			
			when "1001" => -- Division
				temp3 <= tmp4;
			
			when "1010" => -- Logical xor 
				temp3 <= temp1 xor temp2;
			
			when "1011" => -- Logical nor
				temp3 <= temp1 nor temp2;
			
			when "1100" => -- Logical nand 
				temp3 <= temp1 nand temp2;	
			
			when "1101" => -- Logical xnor
				temp3<= temp1 xnor temp2;	
			
			when "1110" => -- Logical or
				temp3 <= temp1 or temp2;
			
			when others => temp3 <= temp1;
		end case;
		end if;
	end process;
	
end Behavioral;



