----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:44:54 09/16/2020 
-- Design Name: 
-- Module Name:    array_multiplier - Behavioral 
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

entity array_multiplier is	
	Port(
		a, b: in std_logic_vector(3 downto 0); 
		p   : out std_logic_vector(7 downto 0) 
	);
end array_multiplier;

architecture structure of array_multiplier is
	
	component and_gate is
		Port(
			A, B: in std_logic;
			C : out std_logic
		);
	End component and_gate;
	
	component carry_ripple_adder is
		port (
			A    : in  std_logic_vector(3 downto 0);
			B    : in  std_logic_vector(3 downto 0);
			cin  : in  std_logic;
			S    : out std_logic_vector(3 downto 0);
			cout : out std_logic
		);
	end component carry_ripple_adder;
	
	signal c : std_logic_vector(10 downto 0); 
	signal f : std_logic_vector(15 downto 0); 

begin

	f(0) <= (a(0) and b(0));
	f(1) <= (a(1) and b(0));
	f(2) <= (a(2) and b(0));
	f(3) <= (a(3) and b(0));

	f(4) <= (a(0) and b(1));
	f(5) <= (a(1) and b(1));
	f(6) <= (a(2) and b(1));
	f(7) <= (a(3) and b(1));

	f(8) <= (a(0) and b(2));
	f(9) <= (a(1) and b(2));
	f(10) <= (a(2) and b(2));
	f(11) <= (a(3) and b(2));

	f(12) <= (a(0) and b(3));
	f(13) <= (a(1) and b(3));
	f(14) <= (a(2) and b(3));
	f(15) <= (a(3) and b(3));
	
	p(0) <= f(0);
	
	carry_ripple_adder_instance0: carry_ripple_adder port map ( A(0)=>f(1), A(1)=>f(2), A(2)=>f(3), A(3)=>'0',
	B(0)=>f(4), B(1)=>f(5), B(2)=>f(6), B(3)=>f(7), cin=>'0', S(0)=>p(1), S(1)=>c(0), S(2)=>c(1), S(3)=>c(2), cout=>c(3) );
	
	carry_ripple_adder_instance1: carry_ripple_adder port map ( A(0)=>c(0), A(1)=>c(1), A(2)=>c(2), A(3)=>c(3),
	B(0)=>f(8), B(1)=>f(9), B(2)=>f(10), B(3)=>f(11), cin=>'0', S(0)=>p(2), S(1)=>c(4), S(2)=>c(5), S(3)=>c(6), cout=>c(7) );
	
	carry_ripple_adder_instance2: carry_ripple_adder port map ( A(0)=>c(4), A(1)=>c(5), A(2)=>c(6), A(3)=>c(7),
	B(0)=>f(12), B(1)=>f(13), B(2)=>f(14), B(3)=>f(15), cin=>'0', S(0)=>p(3), S(1)=>p(4), S(2)=>p(5), S(3)=>p(6), cout=>p(7) );
	
end structure;

