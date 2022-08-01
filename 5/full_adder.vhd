----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:00 09/18/2020 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
  port (
    i_0  : in std_logic;
    i_1  : in std_logic;
    i_c : in std_logic;
    o_sum   : out std_logic;
    o_carry : out std_logic
    );
end full_adder;
 
 
architecture behavioral of full_adder is
 
 
 
 
  signal w_0 : std_logic;
  signal w_1 : std_logic;
  signal w_2 : std_logic;
  
  
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


component or_gate
 port(
	A, B : in  STD_LOGIC;
	C : out STD_LOGIC
 );
end component;

   
begin
 
  xor_gate_0 : xor_gate port map(A => i_0, B => i_1, C => w_0);
  and_gate_0: and_gate port map(A => w_0, B => i_c, C => w_1);
  and_gate_1: and_gate port map(A => i_0, B => i_1, C => w_2);
 
  xor_gate_1 : xor_gate port map(A => w_0, B => i_c, C => o_sum);
  o_carry <= w_1 or w_2;
  or_gate_0 : or_gate port map(A => w_1, B => w_2, C => o_carry);
 
 
 
end behavioral;