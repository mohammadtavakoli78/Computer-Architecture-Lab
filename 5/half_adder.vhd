----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:11 09/18/2020 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half_adder is
  port (
    i_0  : in std_logic;
    i_1  : in std_logic;
    o_sum   : out std_logic;
    o_carry : out std_logic
    );
end half_adder;
 
architecture behavioral of half_adder is

component and_gate
 port(
	A, B : in  STD_LOGIC;
	C : out STD_LOGIC
 );
end component;

component xor_gate
 port(
	A, B : in  STD_LOGIC;
	C : out STD_LOGIC
 );
end component;


begin
  xor_gate_0: xor_gate port map(A => i_0, B => i_1, C => o_sum);
  and_gate_0: and_gate port map(A => i_0, B => i_1, C => o_carry);
end behavioral;