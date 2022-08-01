----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:08 09/18/2020 
-- Design Name: 
-- Module Name:    CPU8bits - CPU8bits_arch 
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

entity CPU8bits is
    Port ( Data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           Address : out  STD_LOGIC_VECTOR (4 downto 0);
           we : out  STD_LOGIC;
           oe : out  STD_LOGIC);
end CPU8bits;

architecture CPU8bits_arch of CPU8bits is
	signal akku: STD_LOGIC_VECTOR(8 downto 0);
	signal pc: STD_LOGIC_VECTOR(4 downto 0);
	signal adreg: STD_LOGIC_VECTOR(4 downto 0);
	signal state: STD_LOGIC_VECTOR(3 downto 0);
	signal next_state: STD_LOGIC_VECTOR(3 downto 0);
begin
	Address <= adreg;
	oe <= '1' when ((state = "0000" or state = "0001") and clk = '0') else '0'; -- read signal
	we <= '1' when (state = "1001" and clk = '0') else '0'; -- write signal
	
	main: process(clk, rst)
	begin
		if rst = '0' then
			state <= (others =>'0');
		elsif rising_edge(clk) then
			state <= next_state;			
		end if;
	end process main;
	
	next_s: process(state, rst)
	begin
		if rst /= '0' then
			-- State Machine
			if state = "0000" then
				next_state <= "0001";
			elsif state = "0001" then
				next_state <= '1' & Data_in(7 downto 5);
			else
				next_state <= "0000";
			end if;
		end if;
	end process next_s;
	
	controller: process(state, rst)
	begin
		if rst = '0' then
			akku <= (others =>'0');
			pc <= (others =>'0');
			adreg <= (others =>'0');
		else
			case state is
				when "0000" => -- Instruction fetch
					adreg <= pc;
					pc <= std_logic_vector(unsigned(pc) + 1);
				when "0001" => -- Load next needed data
					adreg <= Data_in(4 downto 0);
				when "1000" => -- Load data to akku
					akku <= '0' & Data_in;
				when "1001" => -- Store akku Data to RAM
					Data_out <= akku(7 downto 0);
				when "1010" => -- Jump
					pc <= adreg;
				when "1011" => -- Jump if carry (save carry)
					if akku(8) = '1' then
						pc <= adreg;
						akku(8) <= '0';
					end if;
				when "1100" => -- AND operation (reset carry)
					akku <= akku and ('0' & Data_in);
				when "1101" => -- SUM operation (update carry)
					akku <= std_logic_vector(unsigned('0' & akku(7 downto 0)) + unsigned('0' & Data_in));
				when "1110" => -- NOT operation (save carry)
					akku(7 downto 0) <= not akku(7 downto 0);
				when "1111" => -- LEFT_SHIFT operation
					akku <= akku(7 downto 0) & '0';
				when others =>
					null;
			end case;
		end if;
	end process controller;
end CPU8bits_arch;

