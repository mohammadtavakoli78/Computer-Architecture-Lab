--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CPU8bits_synthesis.vhd
-- /___/   /\     Timestamp: Wed Sep 23 15:16:47 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CPU8bits -w -dir netgen/synthesis -ofmt vhdl -sim CPU8bits.ngc CPU8bits_synthesis.vhd 
-- Device	: xc3s400-5-pq208
-- Input file	: CPU8bits.ngc
-- Output file	: D:\vhdl\ex9\netgen\synthesis\CPU8bits_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CPU8bits
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity CPU8bits is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    oe : out STD_LOGIC; 
    we : out STD_LOGIC; 
    Address : out STD_LOGIC_VECTOR ( 4 downto 0 ); 
    Data_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Data_in : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end CPU8bits;

architecture Structure of CPU8bits is
  signal Data_in_0_IBUF_13 : STD_LOGIC; 
  signal Data_in_1_IBUF_14 : STD_LOGIC; 
  signal Data_in_2_IBUF_15 : STD_LOGIC; 
  signal Data_in_3_IBUF_16 : STD_LOGIC; 
  signal Data_in_4_IBUF_17 : STD_LOGIC; 
  signal Data_in_5_IBUF_18 : STD_LOGIC; 
  signal Data_in_6_IBUF_19 : STD_LOGIC; 
  signal Data_in_7_IBUF_20 : STD_LOGIC; 
  signal Data_out_0_29 : STD_LOGIC; 
  signal Data_out_1_30 : STD_LOGIC; 
  signal Data_out_2_31 : STD_LOGIC; 
  signal Data_out_3_32 : STD_LOGIC; 
  signal Data_out_4_33 : STD_LOGIC; 
  signal Data_out_5_34 : STD_LOGIC; 
  signal Data_out_6_35 : STD_LOGIC; 
  signal Data_out_7_36 : STD_LOGIC; 
  signal Data_out_cmp_eq0000 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal adreg_0_1_97 : STD_LOGIC; 
  signal adreg_1_1_99 : STD_LOGIC; 
  signal adreg_2_1_101 : STD_LOGIC; 
  signal adreg_3_1_103 : STD_LOGIC; 
  signal adreg_4_1_105 : STD_LOGIC; 
  signal adreg_and0000 : STD_LOGIC; 
  signal adreg_mux0001_0_1 : STD_LOGIC; 
  signal akku_0_mux0001 : STD_LOGIC; 
  signal akku_0_mux000133_115 : STD_LOGIC; 
  signal akku_0_mux000162_116 : STD_LOGIC; 
  signal akku_0_not0001 : STD_LOGIC; 
  signal akku_0_not00011_118 : STD_LOGIC; 
  signal akku_0_not00012 : STD_LOGIC; 
  signal akku_1_mux0001 : STD_LOGIC; 
  signal akku_1_mux000113_122 : STD_LOGIC; 
  signal akku_1_mux000114_123 : STD_LOGIC; 
  signal akku_1_mux000127_124 : STD_LOGIC; 
  signal akku_2_mux0001 : STD_LOGIC; 
  signal akku_2_mux000113_127 : STD_LOGIC; 
  signal akku_2_mux000127_128 : STD_LOGIC; 
  signal akku_3_mux0001 : STD_LOGIC; 
  signal akku_3_mux000113_131 : STD_LOGIC; 
  signal akku_3_mux000127_132 : STD_LOGIC; 
  signal akku_4_mux0001 : STD_LOGIC; 
  signal akku_4_mux000113_135 : STD_LOGIC; 
  signal akku_4_mux000127_136 : STD_LOGIC; 
  signal akku_5_mux0001 : STD_LOGIC; 
  signal akku_5_mux000113_139 : STD_LOGIC; 
  signal akku_5_mux000127_140 : STD_LOGIC; 
  signal akku_6_mux0001 : STD_LOGIC; 
  signal akku_6_mux000113_143 : STD_LOGIC; 
  signal akku_6_mux000127_144 : STD_LOGIC; 
  signal akku_7_mux0001 : STD_LOGIC; 
  signal akku_7_mux000113_147 : STD_LOGIC; 
  signal akku_7_mux000127_148 : STD_LOGIC; 
  signal akku_8_mux0001_150 : STD_LOGIC; 
  signal akku_8_not0001_151 : STD_LOGIC; 
  signal clk_IBUF_161 : STD_LOGIC; 
  signal clk_IBUF1 : STD_LOGIC; 
  signal next_state_mux0002_3_1_170 : STD_LOGIC; 
  signal oe_OBUF_172 : STD_LOGIC; 
  signal pc_mux0001_1_1_180 : STD_LOGIC; 
  signal pc_mux0001_1_2_181 : STD_LOGIC; 
  signal pc_not0001_185 : STD_LOGIC; 
  signal rst_IBUF_187 : STD_LOGIC; 
  signal rst_IBUF1 : STD_LOGIC; 
  signal rst_inv : STD_LOGIC; 
  signal we_OBUF_195 : STD_LOGIC; 
  signal Madd_akku_add0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Madd_akku_add0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal adreg : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal adreg_mux0001 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal akku : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal akku_add0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal next_state_mux0002 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal pc : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal pc_mux0001 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  state_0 : FDC
    port map (
      C => clk_IBUF_161,
      CLR => rst_inv,
      D => next_state(0),
      Q => state(0)
    );
  state_1 : FDC
    port map (
      C => clk_IBUF_161,
      CLR => rst_inv,
      D => next_state(1),
      Q => state(1)
    );
  state_2 : FDC
    port map (
      C => clk_IBUF_161,
      CLR => rst_inv,
      D => next_state(2),
      Q => state(2)
    );
  state_3 : FDC
    port map (
      C => clk_IBUF_161,
      CLR => rst_inv,
      D => next_state(3),
      Q => state(3)
    );
  akku_8 : LD
    port map (
      D => akku_8_mux0001_150,
      G => akku_8_not0001_151,
      Q => akku(8)
    );
  akku_7 : LD
    port map (
      D => akku_7_mux0001,
      G => akku_0_not0001,
      Q => akku(7)
    );
  akku_6 : LD
    port map (
      D => akku_6_mux0001,
      G => akku_0_not0001,
      Q => akku(6)
    );
  akku_5 : LD
    port map (
      D => akku_5_mux0001,
      G => akku_0_not0001,
      Q => akku(5)
    );
  akku_4 : LD
    port map (
      D => akku_4_mux0001,
      G => akku_0_not0001,
      Q => akku(4)
    );
  akku_3 : LD
    port map (
      D => akku_3_mux0001,
      G => akku_0_not0001,
      Q => akku(3)
    );
  akku_2 : LD
    port map (
      D => akku_2_mux0001,
      G => akku_0_not0001,
      Q => akku(2)
    );
  akku_1 : LD
    port map (
      D => akku_1_mux0001,
      G => akku_0_not0001,
      Q => akku(1)
    );
  akku_0 : LD
    port map (
      D => akku_0_mux0001,
      G => akku_0_not0001,
      Q => akku(0)
    );
  adreg_0 : LD_1
    port map (
      D => adreg_mux0001(0),
      G => adreg_and0000,
      Q => adreg(0)
    );
  adreg_1 : LD_1
    port map (
      D => adreg_mux0001(1),
      G => adreg_and0000,
      Q => adreg(1)
    );
  adreg_2 : LD_1
    port map (
      D => adreg_mux0001(2),
      G => adreg_and0000,
      Q => adreg(2)
    );
  adreg_3 : LD_1
    port map (
      D => adreg_mux0001(3),
      G => adreg_and0000,
      Q => adreg(3)
    );
  adreg_4 : LD_1
    port map (
      D => adreg_mux0001(4),
      G => adreg_and0000,
      Q => adreg(4)
    );
  pc_0 : LD
    port map (
      D => pc_mux0001(0),
      G => pc_not0001_185,
      Q => pc(0)
    );
  pc_1 : LD
    port map (
      D => pc_mux0001(1),
      G => pc_not0001_185,
      Q => pc(1)
    );
  pc_2 : LD
    port map (
      D => pc_mux0001(2),
      G => pc_not0001_185,
      Q => pc(2)
    );
  pc_3 : LD
    port map (
      D => pc_mux0001(3),
      G => pc_not0001_185,
      Q => pc(3)
    );
  pc_4 : LD
    port map (
      D => pc_mux0001(4),
      G => pc_not0001_185,
      Q => pc(4)
    );
  next_state_0 : LD
    port map (
      D => next_state_mux0002(3),
      G => rst_IBUF_187,
      Q => next_state(0)
    );
  next_state_1 : LD
    port map (
      D => next_state_mux0002(2),
      G => rst_IBUF_187,
      Q => next_state(1)
    );
  next_state_2 : LD
    port map (
      D => next_state_mux0002(1),
      G => rst_IBUF_187,
      Q => next_state(2)
    );
  next_state_3 : LD
    port map (
      D => N42,
      G => rst_IBUF_187,
      Q => next_state(3)
    );
  Madd_akku_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Data_in_0_IBUF_13,
      I1 => akku(0),
      O => Madd_akku_add0000_lut(0)
    );
  Madd_akku_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => akku(0),
      S => Madd_akku_add0000_lut(0),
      O => Madd_akku_add0000_cy(0)
    );
  Madd_akku_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Madd_akku_add0000_lut(0),
      O => akku_add0000(0)
    );
  Madd_akku_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Data_in_1_IBUF_14,
      I1 => akku(1),
      O => Madd_akku_add0000_lut(1)
    );
  Madd_akku_add0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_akku_add0000_cy(0),
      DI => akku(1),
      S => Madd_akku_add0000_lut(1),
      O => Madd_akku_add0000_cy(1)
    );
  Madd_akku_add0000_xor_1_Q : XORCY
    port map (
      CI => Madd_akku_add0000_cy(0),
      LI => Madd_akku_add0000_lut(1),
      O => akku_add0000(1)
    );
  Madd_akku_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Data_in_2_IBUF_15,
      I1 => akku(2),
      O => Madd_akku_add0000_lut(2)
    );
  Madd_akku_add0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_akku_add0000_cy(1),
      DI => akku(2),
      S => Madd_akku_add0000_lut(2),
      O => Madd_akku_add0000_cy(2)
    );
  Madd_akku_add0000_xor_2_Q : XORCY
    port map (
      CI => Madd_akku_add0000_cy(1),
      LI => Madd_akku_add0000_lut(2),
      O => akku_add0000(2)
    );
  Madd_akku_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Data_in_3_IBUF_16,
      I1 => akku(3),
      O => Madd_akku_add0000_lut(3)
    );
  Madd_akku_add0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_akku_add0000_cy(2),
      DI => akku(3),
      S => Madd_akku_add0000_lut(3),
      O => Madd_akku_add0000_cy(3)
    );
  Madd_akku_add0000_xor_3_Q : XORCY
    port map (
      CI => Madd_akku_add0000_cy(2),
      LI => Madd_akku_add0000_lut(3),
      O => akku_add0000(3)
    );
  Madd_akku_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Data_in_4_IBUF_17,
      I1 => akku(4),
      O => Madd_akku_add0000_lut(4)
    );
  Madd_akku_add0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_akku_add0000_cy(3),
      DI => akku(4),
      S => Madd_akku_add0000_lut(4),
      O => Madd_akku_add0000_cy(4)
    );
  Madd_akku_add0000_xor_4_Q : XORCY
    port map (
      CI => Madd_akku_add0000_cy(3),
      LI => Madd_akku_add0000_lut(4),
      O => akku_add0000(4)
    );
  Madd_akku_add0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Data_in_5_IBUF_18,
      I1 => akku(5),
      O => Madd_akku_add0000_lut(5)
    );
  Madd_akku_add0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_akku_add0000_cy(4),
      DI => akku(5),
      S => Madd_akku_add0000_lut(5),
      O => Madd_akku_add0000_cy(5)
    );
  Madd_akku_add0000_xor_5_Q : XORCY
    port map (
      CI => Madd_akku_add0000_cy(4),
      LI => Madd_akku_add0000_lut(5),
      O => akku_add0000(5)
    );
  Madd_akku_add0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Data_in_6_IBUF_19,
      I1 => akku(6),
      O => Madd_akku_add0000_lut(6)
    );
  Madd_akku_add0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_akku_add0000_cy(5),
      DI => akku(6),
      S => Madd_akku_add0000_lut(6),
      O => Madd_akku_add0000_cy(6)
    );
  Madd_akku_add0000_xor_6_Q : XORCY
    port map (
      CI => Madd_akku_add0000_cy(5),
      LI => Madd_akku_add0000_lut(6),
      O => akku_add0000(6)
    );
  Madd_akku_add0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Data_in_7_IBUF_20,
      I1 => akku(7),
      O => Madd_akku_add0000_lut(7)
    );
  Madd_akku_add0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_akku_add0000_cy(6),
      DI => akku(7),
      S => Madd_akku_add0000_lut(7),
      O => Madd_akku_add0000_cy(7)
    );
  Madd_akku_add0000_xor_7_Q : XORCY
    port map (
      CI => Madd_akku_add0000_cy(6),
      LI => Madd_akku_add0000_lut(7),
      O => akku_add0000(7)
    );
  Data_out_0 : LDE
    port map (
      D => akku(0),
      G => rst_IBUF_187,
      GE => Data_out_cmp_eq0000,
      Q => Data_out_0_29
    );
  Data_out_1 : LDE
    port map (
      D => akku(1),
      G => rst_IBUF_187,
      GE => Data_out_cmp_eq0000,
      Q => Data_out_1_30
    );
  Data_out_2 : LDE
    port map (
      D => akku(2),
      G => rst_IBUF_187,
      GE => Data_out_cmp_eq0000,
      Q => Data_out_2_31
    );
  Data_out_3 : LDE
    port map (
      D => akku(3),
      G => rst_IBUF_187,
      GE => Data_out_cmp_eq0000,
      Q => Data_out_3_32
    );
  Data_out_4 : LDE
    port map (
      D => akku(4),
      G => rst_IBUF_187,
      GE => Data_out_cmp_eq0000,
      Q => Data_out_4_33
    );
  Data_out_5 : LDE
    port map (
      D => akku(5),
      G => rst_IBUF_187,
      GE => Data_out_cmp_eq0000,
      Q => Data_out_5_34
    );
  Data_out_6 : LDE
    port map (
      D => akku(6),
      G => rst_IBUF_187,
      GE => Data_out_cmp_eq0000,
      Q => Data_out_6_35
    );
  Data_out_7 : LDE
    port map (
      D => akku(7),
      G => rst_IBUF_187,
      GE => Data_out_cmp_eq0000,
      Q => Data_out_7_36
    );
  akku_0_mux0001121 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state(2),
      I1 => state(1),
      O => N43
    );
  next_state_mux0002_1_11 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      O => N42
    );
  adreg_and00001 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      O => adreg_and0000
    );
  akku_8_not0001_SW0 : LUT4
    generic map(
      INIT => X"CB8B"
    )
    port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => akku(8),
      O => N2
    );
  akku_8_not0001 : LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => N2,
      I1 => state(3),
      I2 => rst_IBUF1,
      O => akku_8_not0001_151
    );
  pc_not0001_SW0 : LUT4
    generic map(
      INIT => X"8099"
    )
    port map (
      I0 => state(1),
      I1 => state(3),
      I2 => akku(8),
      I3 => state(0),
      O => N4
    );
  pc_not0001 : LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => state(2),
      I1 => N4,
      I2 => rst_IBUF1,
      O => pc_not0001_185
    );
  next_state_mux0002_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Data_in_6_IBUF_19,
      I1 => N42,
      O => next_state_mux0002(2)
    );
  next_state_mux0002_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Data_in_7_IBUF_20,
      I1 => N42,
      O => next_state_mux0002(1)
    );
  pc_mux0001_0_1_SW0 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => state(0),
      I1 => rst_IBUF1,
      I2 => akku(8),
      O => N10
    );
  pc_mux0001_0_1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => N10,
      O => N16
    );
  oe_and00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => state(1),
      I1 => clk_IBUF1,
      I2 => state(3),
      I3 => state(2),
      O => oe_OBUF_172
    );
  pc_mux0001_0_2 : LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => adreg(0),
      I1 => N16,
      I2 => pc(0),
      I3 => N13,
      O => pc_mux0001(0)
    );
  adreg_mux0001_0_22 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => N40,
      I2 => state(3),
      O => N17
    );
  adreg_mux0001_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => pc(4),
      I1 => N13,
      I2 => Data_in_4_IBUF_17,
      I3 => N17,
      O => adreg_mux0001(4)
    );
  adreg_mux0001_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => pc(3),
      I1 => N13,
      I2 => Data_in_3_IBUF_16,
      I3 => N17,
      O => adreg_mux0001(3)
    );
  we_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => N40,
      I1 => state(3),
      I2 => clk_IBUF1,
      O => we_OBUF_195
    );
  adreg_mux0001_0_211 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => N40
    );
  adreg_mux0001_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => pc(2),
      I1 => N13,
      I2 => Data_in_2_IBUF_15,
      I3 => N17,
      O => adreg_mux0001(2)
    );
  adreg_mux0001_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => pc(1),
      I1 => N13,
      I2 => Data_in_1_IBUF_14,
      I3 => N17,
      O => adreg_mux0001(1)
    );
  adreg_mux0001_0_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => pc(0),
      I1 => N13,
      I2 => Data_in_0_IBUF_13,
      I3 => N17,
      O => adreg_mux0001(0)
    );
  pc_mux0001_2_Q : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => adreg(2),
      I1 => N16,
      I2 => N14,
      I3 => N13,
      O => pc_mux0001(2)
    );
  akku_8_mux0001_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => rst_IBUF1,
      O => N161
    );
  akku_8_mux0001 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => state(1),
      I1 => N161,
      I2 => Madd_akku_add0000_cy(7),
      I3 => akku(7),
      O => akku_8_mux0001_150
    );
  akku_0_mux000133 : LUT4
    generic map(
      INIT => X"0CA4"
    )
    port map (
      I0 => state(2),
      I1 => Data_in_0_IBUF_13,
      I2 => state(1),
      I3 => akku(0),
      O => akku_0_mux000133_115
    );
  akku_0_mux000162 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => state(3),
      O => akku_0_mux000162_116
    );
  pc_mux0001_4_SW0 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => pc(4),
      I1 => pc(3),
      I2 => N25,
      O => N20
    );
  pc_mux0001_4_Q : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => N13,
      I1 => N16,
      I2 => adreg(4),
      I3 => N20,
      O => pc_mux0001(4)
    );
  akku_1_mux000114 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state(0),
      I1 => state(2),
      O => akku_1_mux000114_123
    );
  akku_3_mux000127 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => state(2),
      I1 => Data_in_3_IBUF_16,
      I2 => state(0),
      I3 => akku(3),
      O => akku_3_mux000127_132
    );
  akku_4_mux000127 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => state(2),
      I1 => Data_in_4_IBUF_17,
      I2 => state(0),
      I3 => akku(4),
      O => akku_4_mux000127_136
    );
  akku_5_mux000127 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => state(2),
      I1 => Data_in_5_IBUF_18,
      I2 => state(0),
      I3 => akku(5),
      O => akku_5_mux000127_140
    );
  akku_6_mux000127 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => state(2),
      I1 => Data_in_6_IBUF_19,
      I2 => state(0),
      I3 => akku(6),
      O => akku_6_mux000127_144
    );
  akku_7_mux000127 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => state(2),
      I1 => Data_in_7_IBUF_20,
      I2 => state(0),
      I3 => akku(7),
      O => akku_7_mux000127_148
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF1
    );
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => clk_IBUF1
    );
  Data_in_7_IBUF : IBUF
    port map (
      I => Data_in(7),
      O => Data_in_7_IBUF_20
    );
  Data_in_6_IBUF : IBUF
    port map (
      I => Data_in(6),
      O => Data_in_6_IBUF_19
    );
  Data_in_5_IBUF : IBUF
    port map (
      I => Data_in(5),
      O => Data_in_5_IBUF_18
    );
  Data_in_4_IBUF : IBUF
    port map (
      I => Data_in(4),
      O => Data_in_4_IBUF_17
    );
  Data_in_3_IBUF : IBUF
    port map (
      I => Data_in(3),
      O => Data_in_3_IBUF_16
    );
  Data_in_2_IBUF : IBUF
    port map (
      I => Data_in(2),
      O => Data_in_2_IBUF_15
    );
  Data_in_1_IBUF : IBUF
    port map (
      I => Data_in(1),
      O => Data_in_1_IBUF_14
    );
  Data_in_0_IBUF : IBUF
    port map (
      I => Data_in(0),
      O => Data_in_0_IBUF_13
    );
  oe_OBUF : OBUF
    port map (
      I => oe_OBUF_172,
      O => oe
    );
  we_OBUF : OBUF
    port map (
      I => we_OBUF_195,
      O => we
    );
  Address_4_OBUF : OBUF
    port map (
      I => adreg_4_1_105,
      O => Address(4)
    );
  Address_3_OBUF : OBUF
    port map (
      I => adreg_3_1_103,
      O => Address(3)
    );
  Address_2_OBUF : OBUF
    port map (
      I => adreg_2_1_101,
      O => Address(2)
    );
  Address_1_OBUF : OBUF
    port map (
      I => adreg_1_1_99,
      O => Address(1)
    );
  Address_0_OBUF : OBUF
    port map (
      I => adreg_0_1_97,
      O => Address(0)
    );
  Data_out_7_OBUF : OBUF
    port map (
      I => Data_out_7_36,
      O => Data_out(7)
    );
  Data_out_6_OBUF : OBUF
    port map (
      I => Data_out_6_35,
      O => Data_out(6)
    );
  Data_out_5_OBUF : OBUF
    port map (
      I => Data_out_5_34,
      O => Data_out(5)
    );
  Data_out_4_OBUF : OBUF
    port map (
      I => Data_out_4_33,
      O => Data_out(4)
    );
  Data_out_3_OBUF : OBUF
    port map (
      I => Data_out_3_32,
      O => Data_out(3)
    );
  Data_out_2_OBUF : OBUF
    port map (
      I => Data_out_2_31,
      O => Data_out(2)
    );
  Data_out_1_OBUF : OBUF
    port map (
      I => Data_out_1_30,
      O => Data_out(1)
    );
  Data_out_0_OBUF : OBUF
    port map (
      I => Data_out_0_29,
      O => Data_out(0)
    );
  akku_7_mux000140_SW0 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => akku_0_mux000162_116,
      I1 => state(1),
      I2 => akku_7_mux000127_148,
      I3 => N64,
      O => N22
    );
  akku_7_mux000164 : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => akku_1_mux000114_123,
      I1 => N23,
      I2 => N22,
      I3 => akku_add0000(7),
      O => akku_7_mux0001
    );
  akku_6_mux000140_SW0 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => akku_0_mux000162_116,
      I1 => state(1),
      I2 => akku_6_mux000127_144,
      I3 => N63,
      O => N251
    );
  akku_6_mux000164 : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => akku_1_mux000114_123,
      I1 => N26,
      I2 => N251,
      I3 => akku_add0000(6),
      O => akku_6_mux0001
    );
  akku_5_mux000140_SW0 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => akku_0_mux000162_116,
      I1 => state(1),
      I2 => akku_5_mux000127_140,
      I3 => N62,
      O => N28
    );
  akku_5_mux000164 : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => akku_1_mux000114_123,
      I1 => N29,
      I2 => N28,
      I3 => akku_add0000(5),
      O => akku_5_mux0001
    );
  akku_4_mux000140_SW0 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => akku_0_mux000162_116,
      I1 => state(1),
      I2 => akku_4_mux000127_136,
      I3 => N61,
      O => N31
    );
  akku_4_mux000164 : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => akku_1_mux000114_123,
      I1 => N32,
      I2 => N31,
      I3 => akku_add0000(4),
      O => akku_4_mux0001
    );
  akku_3_mux000140_SW0 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => akku_0_mux000162_116,
      I1 => state(1),
      I2 => akku_3_mux000127_132,
      I3 => N60,
      O => N34
    );
  akku_3_mux000164 : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => akku_1_mux000114_123,
      I1 => N35,
      I2 => N34,
      I3 => akku_add0000(3),
      O => akku_3_mux0001
    );
  akku_2_mux000140_SW0 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => state(1),
      I2 => akku_2_mux000127_128,
      I3 => N58,
      O => N37
    );
  akku_2_mux000164 : LUT4
    generic map(
      INIT => X"A808"
    )
    port map (
      I0 => state(3),
      I1 => N37,
      I2 => akku_add0000(2),
      I3 => N38,
      O => akku_2_mux0001
    );
  akku_1_mux000140_SW0 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => rst_IBUF1,
      I1 => state(1),
      I2 => akku_1_mux000127_124,
      I3 => N56,
      O => N401
    );
  akku_1_mux000164 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => state(3),
      I1 => akku_add0000(1),
      I2 => N401,
      I3 => N41,
      O => akku_1_mux0001
    );
  Data_out_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      O => Data_out_cmp_eq0000
    );
  pc_mux0001_3_Q : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => adreg(3),
      I1 => N16,
      I2 => N47,
      I3 => N13,
      O => pc_mux0001(3)
    );
  akku_0_mux000165 : MUXF5
    port map (
      I0 => N49,
      I1 => N50,
      S => state(0),
      O => akku_0_mux0001
    );
  akku_0_mux000165_F : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => akku_0_mux000133_115,
      I1 => akku_0_mux000162_116,
      O => N49
    );
  akku_0_mux000165_G : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => state(2),
      I1 => state(1),
      I2 => akku_add0000(0),
      I3 => akku_0_mux000162_116,
      O => N50
    );
  akku_2_mux000140_SW1_F : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => akku_1_mux000114_123,
      I1 => state(1),
      I2 => rst_IBUF1,
      I3 => N59,
      O => N51
    );
  akku_1_mux000140_SW1_F : LUT4
    generic map(
      INIT => X"3020"
    )
    port map (
      I0 => akku_1_mux000114_123,
      I1 => state(1),
      I2 => rst_IBUF1,
      I3 => N57,
      O => N53
    );
  rst_IBUF_BUFG : BUFG
    port map (
      I => rst_IBUF1,
      O => rst_IBUF_187
    );
  clk_IBUF_BUFG : BUFG
    port map (
      I => clk_IBUF1,
      O => clk_IBUF_161
    );
  rst_inv1_INV_0 : INV
    port map (
      I => rst_IBUF1,
      O => rst_inv
    );
  akku_0_not00011 : LUT4
    generic map(
      INIT => X"F1FF"
    )
    port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => rst_IBUF1,
      O => akku_0_not00011_118
    );
  akku_0_not0001_f5 : MUXF5
    port map (
      I0 => akku_0_not00012,
      I1 => akku_0_not00011_118,
      S => state(3),
      O => akku_0_not0001
    );
  next_state_mux0002_3_1 : LUT4
    generic map(
      INIT => X"1011"
    )
    port map (
      I0 => state(2),
      I1 => state(1),
      I2 => Data_in_5_IBUF_18,
      I3 => state(0),
      O => next_state_mux0002_3_1_170
    );
  next_state_mux0002_3_f5 : MUXF5
    port map (
      I0 => next_state_mux0002_3_1_170,
      I1 => N0,
      S => state(3),
      O => next_state_mux0002(3)
    );
  adreg_mux0001_0_11 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => state(2),
      I1 => rst_IBUF1,
      I2 => state(1),
      I3 => state(0),
      O => adreg_mux0001_0_1
    );
  adreg_mux0001_0_1_f5 : MUXF5
    port map (
      I0 => adreg_mux0001_0_1,
      I1 => N0,
      S => state(3),
      O => N13
    );
  pc_mux0001_1_1 : LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => adreg(1),
      I1 => N16,
      I2 => pc(0),
      I3 => N13,
      O => pc_mux0001_1_1_180
    );
  pc_mux0001_1_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => adreg(1),
      I1 => N16,
      I2 => pc(0),
      I3 => N13,
      O => pc_mux0001_1_2_181
    );
  pc_mux0001_1_f5 : MUXF5
    port map (
      I0 => pc_mux0001_1_2_181,
      I1 => pc_mux0001_1_1_180,
      S => pc(1),
      O => pc_mux0001(1)
    );
  pc_mux0001_2_SW0 : LUT3_L
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => pc(2),
      I1 => pc(1),
      I2 => pc(0),
      LO => N14
    );
  pc_mux0001_3_111 : LUT3_L
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => pc(2),
      I1 => pc(1),
      I2 => pc(0),
      LO => N25
    );
  akku_1_mux000113 : LUT4_D
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => N43,
      I1 => state(0),
      I2 => akku(1),
      I3 => akku(0),
      LO => N56,
      O => akku_1_mux000113_122
    );
  akku_1_mux000127 : LUT4_D
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => state(2),
      I1 => Data_in_1_IBUF_14,
      I2 => state(0),
      I3 => akku(1),
      LO => N57,
      O => akku_1_mux000127_124
    );
  akku_2_mux000113 : LUT4_D
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => N43,
      I1 => state(0),
      I2 => akku(2),
      I3 => akku(1),
      LO => N58,
      O => akku_2_mux000113_127
    );
  akku_2_mux000127 : LUT4_D
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => state(2),
      I1 => Data_in_2_IBUF_15,
      I2 => state(0),
      I3 => akku(2),
      LO => N59,
      O => akku_2_mux000127_128
    );
  akku_3_mux000113 : LUT4_D
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => N43,
      I1 => state(0),
      I2 => akku(3),
      I3 => akku(2),
      LO => N60,
      O => akku_3_mux000113_131
    );
  akku_4_mux000113 : LUT4_D
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => N43,
      I1 => state(0),
      I2 => akku(4),
      I3 => akku(3),
      LO => N61,
      O => akku_4_mux000113_135
    );
  akku_5_mux000113 : LUT4_D
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => N43,
      I1 => state(0),
      I2 => akku(5),
      I3 => akku(4),
      LO => N62,
      O => akku_5_mux000113_139
    );
  akku_6_mux000113 : LUT4_D
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => N43,
      I1 => state(0),
      I2 => akku(6),
      I3 => akku(5),
      LO => N63,
      O => akku_6_mux000113_143
    );
  akku_7_mux000113 : LUT4_D
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => N43,
      I1 => state(0),
      I2 => akku(7),
      I3 => akku(6),
      LO => N64,
      O => akku_7_mux000113_147
    );
  akku_7_mux000140_SW1 : LUT4_L
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => state(1),
      I1 => rst_IBUF1,
      I2 => state(3),
      I3 => akku_7_mux000113_147,
      LO => N23
    );
  akku_6_mux000140_SW1 : LUT4_L
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => state(1),
      I1 => rst_IBUF1,
      I2 => state(3),
      I3 => akku_6_mux000113_143,
      LO => N26
    );
  akku_5_mux000140_SW1 : LUT4_L
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => state(1),
      I1 => rst_IBUF1,
      I2 => state(3),
      I3 => akku_5_mux000113_139,
      LO => N29
    );
  akku_4_mux000140_SW1 : LUT4_L
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => state(1),
      I1 => rst_IBUF1,
      I2 => state(3),
      I3 => akku_4_mux000113_135,
      LO => N32
    );
  akku_3_mux000140_SW1 : LUT4_L
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => state(1),
      I1 => rst_IBUF1,
      I2 => state(3),
      I3 => akku_3_mux000113_131,
      LO => N35
    );
  pc_mux0001_3_SW1 : LUT4_L
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => pc(0),
      I1 => pc(3),
      I2 => pc(1),
      I3 => pc(2),
      LO => N47
    );
  akku_2_mux000140_SW11 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => akku_2_mux000113_127,
      I1 => rst_IBUF1,
      I2 => N51,
      LO => N38
    );
  akku_1_mux000140_SW11 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => akku_1_mux000113_122,
      I1 => rst_IBUF1,
      I2 => N53,
      LO => N41
    );
  adreg_4_1 : LD_1
    port map (
      D => adreg_mux0001(4),
      G => adreg_and0000,
      Q => adreg_4_1_105
    );
  adreg_3_1 : LD_1
    port map (
      D => adreg_mux0001(3),
      G => adreg_and0000,
      Q => adreg_3_1_103
    );
  adreg_2_1 : LD_1
    port map (
      D => adreg_mux0001(2),
      G => adreg_and0000,
      Q => adreg_2_1_101
    );
  adreg_1_1 : LD_1
    port map (
      D => adreg_mux0001(1),
      G => adreg_and0000,
      Q => adreg_1_1_99
    );
  adreg_0_1 : LD_1
    port map (
      D => adreg_mux0001(0),
      G => adreg_and0000,
      Q => adreg_0_1_97
    );
  akku_0_not00012_INV_0 : INV
    port map (
      I => rst_IBUF1,
      O => akku_0_not00012
    );

end Structure;

