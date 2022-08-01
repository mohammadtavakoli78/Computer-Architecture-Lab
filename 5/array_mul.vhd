----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:19:09 09/18/2020 
-- Design Name: 
-- Module Name:    array_mul - Behavioral 
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

entity array_mul is
Port (
	a : in STD_LOGIC_VECTOR(3 downto 0);
	b : in STD_LOGIC_VECTOR(3 downto 0);
	p : out STD_LOGIC_VECTOR(7 downto 0)
);
end array_mul;

architecture behavioral of array_mul is

component and_gate
 port(
	A, B : in  STD_LOGIC;
	C : out STD_LOGIC
 );
end component;

component full_adder
 port(
	i_0, i_1, i_c: in  STD_LOGIC;
	o_sum, o_carry: out STD_LOGIC
 );
end component;

component half_adder
port(
	i_0  : in std_logic;
    i_1  : in std_logic;
    o_sum   : out std_logic;
    o_carry : out std_logic
);
end component;

component ripple_adder
port ( 
	X : in STD_LOGIC_VECTOR (3 downto 0);
	Y : in STD_LOGIC_VECTOR (3 downto 0);
	CARRY_IN : in STD_LOGIC;
	SUM : out STD_LOGIC_VECTOR (3 downto 0);
	CARRY_OUT : out STD_LOGIC
	);
end component;




signal w : STD_LOGIC_VECTOR( 15 DOWNTO 0);
signal r_in_0_0, r_in_0_1, r_in_0_2 : STD_LOGIC_VECTOR (3 downto 0);
signal r_in_1_0, r_in_1_1, r_in_1_2 : STD_LOGIC_VECTOR (3 downto 0);


begin

and_gate_0 : and_gate port map(A => a(0), B => b(0), C => p(0));
and_gate_1 : and_gate port map(A => a(1), B => b(0), C => w(0));
and_gate_2 : and_gate port map(A => a(2), B => b(0), C => w(1));
and_gate_3 : and_gate port map(A => a(3), B => b(0), C => w(2));
and_gate_4 : and_gate port map(A => a(0), B => b(1), C => w(3));
and_gate_5 : and_gate port map(A => a(1), B => b(1), C => w(4));
and_gate_6 : and_gate port map(A => a(2), B => b(1), C => w(5));
and_gate_7 : and_gate port map(A => a(3), B => b(1), C => w(6));
and_gate_8 : and_gate port map(A => a(0), B => b(2), C => w(7));
and_gate_9 : and_gate port map(A => a(1), B => b(2), C => w(8));
and_gate_10 : and_gate port map(A => a(2), B => b(2), C => w(9));
and_gate_11 : and_gate port map(A => a(3), B => b(2), C => w(10));
and_gate_12 : and_gate port map(A => a(0), B => b(3), C => w(11));
and_gate_13 : and_gate port map(A => a(1), B => b(3), C => w(12));
and_gate_14 : and_gate port map(A => a(2), B => b(3), C => w(13));
and_gate_15 : and_gate port map(A => a(3), B => b(3), C => w(14));


r_in_1_0 <= ('0', w(2), w(1), w(0));
r_in_0_0 <= (w(6), w(5), w(4), w(3));
r_in_0_1 <= (w(10), w(9), w(8), w(7));
r_in_0_2 <= (w(14), w(13), w(12), w(11));

ripple_adder_0 : ripple_adder port map(X => r_in_0_0 , Y => r_in_1_0 , CARRY_IN => '0' , 
											SUM(3) => r_in_1_1(2), SUM(2) => r_in_1_1(1), SUM(1) => r_in_1_1(0), SUM(0) => p(1), CARRY_OUT => r_in_1_1(3));
											
											
ripple_adder_1 : ripple_adder port map(X => r_in_0_1 , Y => r_in_1_1 , CARRY_IN => '0' , 
											SUM(3) => r_in_1_2(2), SUM(2) => r_in_1_2(1), SUM(1) => r_in_1_2(0), SUM(0) => p(2), CARRY_OUT => r_in_1_2(3));
											
ripple_adder_2 : ripple_adder port map(X => r_in_0_2 , Y => r_in_1_2 , CARRY_IN => '0' , SUM => p(6 downto 3), CARRY_OUT => p(7));





end behavioral;
