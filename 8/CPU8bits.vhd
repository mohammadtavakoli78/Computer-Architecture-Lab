----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:40:57 09/23/2020 
-- Design Name: 
-- Module Name:    CPU8bits - Behavioral 
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

entity CPU8bits is
	port
	(
		data_in	: in std_logic_vector(7 downto 0);
		clk		: in std_logic;
		rst		: in std_logic;
		data_out	: out std_logic_vector(7 downto 0);
		address	: out std_logic_vector(4 downto 0);
		we		: out std_logic ;
		oe		: out std_logic
		
	);
end;

architecture Behavioral of CPU8bits is

	component RAM is
		port(
			data_in	: in std_logic_vector(7 downto 0);
			addr	: in std_logic_vector(4 downto 0);
			w		: in std_logic ;
			r		: in std_logic ;		
			clk		: in std_logic;
			rst		: in std_logic;
			data_out		: out std_logic_vector(7 downto 0)
		);
	End component RAM;
	
	component ALU is
		port(
			temp1, temp2     : in  STD_LOGIC_VECTOR(7 downto 0);  -- 2 inputs 8-bit
			C  : in  STD_LOGIC_VECTOR(3 downto 0);  -- 1 input 4-bit for selecting function
			clk : in STD_LOGIC;
			temp3   : out  STD_LOGIC_VECTOR(7 downto 0); -- 1 output 8-bit 
			CF : out std_logic        -- Carryout flag
		);
	End component ALU;
	
	signal akku: std_logic_vector(8 downto 0);
	signal tmp1, tmp2, tmp3: std_logic_vector(7 downto 0);

	signal carry, wm, rm: std_logic;
	signal alu_select: std_logic_vector(3 downto 0);
	signal pc: std_logic_vector(4 downto 0);
	signal adreg: std_logic_vector(4 downto 0);
	signal states: std_logic_vector(3 downto 0);
	

begin
	alu_select <=  "00" & states(1 downto 0);
	RAM_instance: RAM PORT MAP(data_in=>akku(7 downto 0), addr=>adreg, w=>wm, r=>rm, clk=>clk, rst=>rst, data_out=>tmp1);
	ALU_instance: ALU PORT MAP(temp1=>akku(7 downto 0), temp2=>tmp1, C=> alu_select, clk=>clk, temp3=>tmp2, CF=>carry);
	Process (clk,rst)
	begin
	
		if (rst = '0') then
			adreg <= (others => '0');
			states <= "0000";
			akku <= (others => '0');
			pc <= (others => '0');
		
		elsif rising_edge(clk) then
			--if (states = "0000") then --Fetch instruction/ Operand address
			--	pc <= adreg +1;
			--	adreg <= data_in (4 downto 0);
			--else 
			--	adreg <= pc;
			--end if;
			
			Case states is 
				when "0000" => --Load memory to akku
					pc <= adreg +1;
					adreg <= data_in (4 downto 0);
				when "1000" => --Load memory to akku
					akku <= "0" & tmp1; 
					adreg <= pc;
				when "1001" => --Write akku to memory
					--data_out <= tmp1;
					adreg <= pc;
				when "1010" => --Read PC
					adreg <= pc;
				when "1011" => --Clear carry, read PC
					akku(8) <= '0';
					adreg <= pc;
				when "0100" => --Read operand, AND
					akku <= carry & tmp2;
					adreg <= pc;
				when "0101" => --Read operand, ADD
					akku <= carry & tmp2;
					adreg <= pc;
				when "0110" => --Not akku
					akku <= carry & tmp2;
				when "0111" => --Shift right akku
					akku <= carry & tmp2;
					
				when others => null;
			end Case;
			
			if (states /= "0000") then 
				states <= "0000";
			elsif (data_in (7 downto 5) = "011" and akku(8) = '0') then
				states <= "0000";
			elsif (data_in (7 downto 5) = "000") then
				states <= "1000";
			elsif (data_in (7 downto 5) = "001") then
				states <= "1001";
			elsif (data_in (7 downto 5) = "010") then
				states <= "1010";
			elsif (data_in (7 downto 5) = "011" and akku(8) = '1') then
				states <= "1011";
			elsif (data_in (7 downto 5) = "100") then
				states <= "0100";
			elsif (data_in (7 downto 5) = "101") then
				states <= "0101";
			elsif (data_in (7 downto 5) = "110") then
				states <= "0110";
			elsif (data_in (7 downto 5) = "111") then
				states <= "0111";
			end if;
		end if;
		
	end process;
	
	address <= adreg;
	data_out <= "ZZZZZZZZ" when states /= "1001" else akku(7 downto 0);
	oe <= '0' when (clk = '1' or states = "1001" or rst ='0' or states = "1011" or states = "0000") else '1';
	rm <= '0' when (clk = '1' or states = "1001" or rst ='0' or states = "1011" or states = "0000") else '1';
	we <= '0' when (clk = '1' or states /= "1001" or rst ='0') else '1';
	wm <= '0' when (clk = '1' or states /= "1001" or rst ='0') else '1';
		
end Behavioral;

