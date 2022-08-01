----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:15:20 08/21/2020 
-- Design Name: 
-- Module Name:    comperator0 - Behavioral 
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

entity comperator0 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           GT : in  STD_LOGIC;
           EQ : in  STD_LOGIC;
           LT : in  STD_LOGIC;
           A_GT_B : out  STD_LOGIC;
           A_EQ_B : out  STD_LOGIC;
           A_LT_B : out  STD_LOGIC);
end comperator0;

architecture structure of comperator0 is
	component And_Gate is
		port (
			A, B: in std_logic;
			C: out std_logic
		);
	end component And_Gate;
	component or_gate is
		port (
			A, B: in std_logic;
			C: out std_logic
		);
	end component or_gate;
	component xor_gate is
		port (
			A, B: in std_logic;
			C: out std_logic
		);
	end component xor_gate;
	component not_gate is
		Port ( i : in  STD_LOGIC;
			  o : out  STD_LOGIC);
	end component not_gate;
	signal EQ, GT, lt_only, not_A, not_B, A_xor_B, int0, int1: std_logic;
begin
xor_g: xor_gate port map(A => A, B => B, C => A_xor_B);
eq_g: not_gate port map(i => A_xor_B, o => EQ);
eq2_g: And_Gate port map(A => EQ, B => EQ, C => A_EQ_B);

na_g: not_gate port map(i => A, o => not_A);
nb_g: not_gate port map(i => B, o => not_B);

gt_g: And_Gate port map(A => A, B => not_B, C => GT);
lt_g: And_Gate port map(A => not_A, B => B, C => lt_only);

int1_gt_g: And_Gate port map(A => EQ, B => GT, C => int0);
int2_lt_g: And_Gate port map(A => EQ, B => LT, C => int1);

gt2_g: or_gate port map(A => GT, B => int0, C => A_GT_B);
lt2_g: or_gate port map(A => lt_only, B => int1, C => A_LT_B);


end structure;

