----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:56 08/21/2020 
-- Design Name: 
-- Module Name:    comperator_4bit - Behavioral 
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

entity comperator_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           A_GT_B : out  STD_LOGIC;
           A_EQ_B : out  STD_LOGIC;
           A_LT_B : out  STD_LOGIC);
end comperator_4bit;

architecture structure of comperator_4bit is
	component comperator0 is
		 Port ( A : in  STD_LOGIC;
				  B : in  STD_LOGIC;
				  GT : in  STD_LOGIC;
				  EQ : in  STD_LOGIC;
				  LT : in  STD_LOGIC;
				  A_GT_B : out  STD_LOGIC;
				  A_EQ_B : out  STD_LOGIC;
				  A_LT_B : out  STD_LOGIC);
	end component comperator0;
	signal GT, EQ, LT: std_logic_vector(2 downto 0);
begin
comp3: comperator0 port map(A => A(3), B => B(3), GT => GT(2)	, EQ => eq_int(2)	, LT => LT(2)	, A_GT_B => A_GT_B	, A_EQ_B => A_EQ_B	, A_LT_B => A_LT_B	);
comp2: comperator0 port map(A => A(2), B => B(2), GT => GT(1)	, EQ => eq_int(1)	, LT => LT(1)	, A_GT_B => GT(2), A_EQ_B => eq_int(2), A_LT_B => LT(2));
comp1: comperator0 port map(A => A(1), B => B(1), GT => GT(0)	, EQ => eq_int(0)	, LT => LT(0)	, A_GT_B => GT(1), A_EQ_B => eq_int(1), A_LT_B => LT(1));
comp0: comperator0 port map(A => A(0), B => B(0), GT => '0'			, EQ => '1'			, LT => '0'			, A_GT_B => GT(0), A_EQ_B => eq_int(0), A_LT_B => LT(0));

end structure;

