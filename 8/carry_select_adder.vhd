----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:37 09/16/2020 
-- Design Name: 
-- Module Name:    carry_select_adder - Behavioral 
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

entity carry_select_adder is
	port (
		A    : in  std_logic_vector(7 downto 0);
		B    : in  std_logic_vector(7 downto 0);
		cin  : in  std_logic;
		S    : out std_logic_vector(7 downto 0);
		cout : out std_logic
	);
end carry_select_adder;

architecture carry_select_adder_arc of carry_select_adder is

	component full_adder is
		Port ( a, b, cin : in  STD_LOGIC;
				 sum, cout : out  STD_LOGIC);
	End component full_adder;
	
	component mux2 is
		Port ( d0, d1, sel : in  STD_LOGIC;
				 o : out  STD_LOGIC);
	End component mux2;

	signal S0,S1,C0,C1: STD_LOGIC_VECTOR( 7 DOWNTO 0);
	
begin

	FA1: full_adder PORT MAP(a=>A(0), b=>B(0), cin=>'0', sum=>S0(0), cout=>C0(0));
	FA2: full_adder PORT MAP(a=>A(1), b=>B(1), cin=>C0(0), sum=>S0(1), cout=>C0(1));
	FA3: full_adder PORT MAP(a=>A(2), b=>B(2), cin=>C0(1), sum=>S0(2), cout=>C0(2));
	FA4: full_adder PORT MAP(a=>A(3), b=>B(3), cin=>C0(2), sum=>S0(3), cout=>C0(3));
	FA5: full_adder PORT MAP(a=>A(4), b=>B(4), cin=>C0(3), sum=>S0(4), cout=>C0(4));
	FA6: full_adder PORT MAP(a=>A(5), b=>B(5), cin=>C0(4), sum=>S0(5), cout=>C0(5));
	FA7: full_adder PORT MAP(a=>A(6), b=>B(6), cin=>C0(5), sum=>S0(6), cout=>C0(6));
	FA8: full_adder PORT MAP(a=>A(7), b=>B(7), cin=>C0(6), sum=>S0(7), cout=>C0(7));
 
	FA9: full_adder PORT MAP(a=>A(0), b=>B(0), cin=>'1', sum=>S1(0), cout=>C1(0));
	FA10: full_adder PORT MAP(a=>A(1), b=>B(1), cin=>C1(0), sum=>S1(1), cout=>C1(1));
	FA11: full_adder PORT MAP(a=>A(2), b=>B(2), cin=>C1(1), sum=>S1(2), cout=>C1(2));
	FA12: full_adder PORT MAP(a=>A(3), b=>B(3), cin=>C1(2), sum=>S1(3), cout=>C1(3));
	FA13: full_adder PORT MAP(a=>A(4), b=>B(4), cin=>C1(3), sum=>S1(4), cout=>C1(4));
	FA14: full_adder PORT MAP(a=>A(5), b=>B(5), cin=>C1(4), sum=>S1(5), cout=>C1(5));
	FA15: full_adder PORT MAP(a=>A(6), b=>B(6), cin=>C1(5), sum=>S1(6), cout=>C1(6));
	FA16: full_adder PORT MAP(a=>A(7), b=>B(7), cin=>C1(6), sum=>S1(7), cout=>C1(7));
 
	MX1: mux2 PORT MAP(d0=>S0(0), d1=>S1(0), sel=>cin, o=>S(0));
	MX2: mux2 PORT MAP(d0=>S0(1), d1=>S1(1), sel=>cin, o=>S(1));
	MX3: mux2 PORT MAP(d0=>S0(2), d1=>S1(2), sel=>cin, o=>S(2));
	MX4: mux2 PORT MAP(d0=>S0(3), d1=>S1(3), sel=>cin, o=>S(3));
	MX5: mux2 PORT MAP(d0=>S0(4), d1=>S1(4), sel=>cin, o=>S(4));
	MX6: mux2 PORT MAP(d0=>S0(5), d1=>S1(5), sel=>cin, o=>S(5));
	MX7: mux2 PORT MAP(d0=>S0(6), d1=>S1(6), sel=>cin, o=>S(6));
	MX8: mux2 PORT MAP(d0=>S0(7), d1=>S1(7), sel=>cin, o=>S(7));
 
	MX9: mux2 PORT MAP(d0=>C0(7), d1=>C1(7), sel=>cin, o=>cout);

end carry_select_adder_arc;