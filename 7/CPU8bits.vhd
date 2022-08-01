library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CPU8bits is
    Port ( data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           address : out  STD_LOGIC_VECTOR (4 downto 0);
           we : out  STD_LOGIC;
           oe : out  STD_LOGIC);
end CPU8bits;

architecture CPU8bits_arch of CPU8bits is
	signal akku: STD_LOGIC_VECTOR(8 downto 0);
	signal pc: STD_LOGIC_VECTOR(4 downto 0);
	signal adreg: STD_LOGIC_VECTOR(4 downto 0);
	signal state: STD_LOGIC_VECTOR(3 downto 0);
	signal nxt_state: STD_LOGIC_VECTOR(3 downto 0);
begin
	address <= adreg;
	oe <= '1' when ((state = "0000" or state = "0001") and clk = '0') else '0'; 
	we <= '1' when (state = "1001" and clk = '0') else '0'; 
	
	main: process(clk, rst)
	begin
		if rst = '0' then
			state <= (others =>'0');
		elsif rising_edge(clk) then
			state <= nxt_state;			
		end if;
	end process main;
	
	next_s: process(state, rst)
	begin
		if rst /= '0' then
			if state = "0000" then
				nxt_state <= "0001";
			elsif state = "0001" then
				nxt_state <= '1' & data_in(7 downto 5);
			else
				nxt_state <= "0000";
			end if;
		end if;
	end process next_s;
	
	ctrlr: process(state, rst)
	begin
		if rst = '0' then
			akku <= (others =>'0');
			pc <= (others =>'0');
			adreg <= (others =>'0');
		else
			case state is
				when "0000" => 
					adreg <= pc;
					pc <= std_logic_vector(unsigned(pc) + 1);
				when "0001" => 
					adreg <= data_in(4 downto 0);
				when "1000" => 
					akku <= '0' & data_in;
				when "1001" => 
					data_out <= akku(7 downto 0);
				when "1010" => 
					pc <= adreg;
				when "1011" => 
					if akku(8) = '1' then
						pc <= adreg;
						akku(8) <= '0';
					end if;
				when "1100" => 
					akku <= akku and ('0' & data_in);
				when "1101" => 
					akku <= std_logic_vector(unsigned('0' & akku(7 downto 0)) + unsigned('0' & data_in));
				when "1110" => 
					akku(7 downto 0) <= not akku(7 downto 0);
				when "1111" => 
					akku <= akku(7 downto 0) & '0';
				when others =>
					null;
			end case;
		end if;
	end process ctrlr;
end CPU8bits_arch;

