--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: lab2_design_top_synthesis.vhd
-- /___/   /\     Timestamp: Thu May 04 19:41:14 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm lab2_design_top -w -dir netgen/synthesis -ofmt vhdl -sim lab2_design_top.ngc lab2_design_top_synthesis.vhd 
-- Device	: xc6slx9-2-csg324
-- Input file	: lab2_design_top.ngc
-- Output file	: C:\Users\seb\Desktop\Calculator-Not-Integers\netgen\synthesis\lab2_design_top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: lab2_design_top
-- Xilinx	: D:\SSD\Xilinx\14.7\ISE_DS\ISE\
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

entity lab2_design_top is
  port (
    reset_pin : in STD_LOGIC := 'X'; 
    clock_pin : in STD_LOGIC := 'X'; 
    serialDataIn_pin : in STD_LOGIC := 'X'; 
    serialDataOut_pin : out STD_LOGIC 
  );
end lab2_design_top;

architecture Structure of lab2_design_top is
  signal reset_pin_IBUF_0 : STD_LOGIC; 
  signal clock_pin_BUFGP_1 : STD_LOGIC; 
  signal make_UART_xmit_serialDataOut_2 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal make_UART_rateGen_baudRateEnable_4 : STD_LOGIC; 
  signal make_UART_xmit_n0091_inv2 : STD_LOGIC; 
  signal make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3 : STD_LOGIC; 
  signal make_UART_xmit_Mcount_tx_sm_bitToSend2 : STD_LOGIC; 
  signal make_UART_xmit_Mcount_tx_sm_bitToSend1 : STD_LOGIC; 
  signal make_UART_xmit_Mcount_tx_sm_bitToSend : STD_LOGIC; 
  signal make_UART_xmit_txState_FSM_FFd1_10 : STD_LOGIC; 
  signal make_UART_xmit_n0091_inv : STD_LOGIC; 
  signal make_UART_xmit_txState_FSM_FFd2_12 : STD_LOGIC; 
  signal make_UART_xmit_txState_FSM_FFd1_In : STD_LOGIC; 
  signal make_UART_xmit_txState_FSM_FFd2_In : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_Q_31 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_Q_32 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_Q_33 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_Q_34 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_Q_35 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_Q_36 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_Q_37 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_Q_38 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_Q_39 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_Q_40 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_Q_41 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_0_Q_42 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_lut_0_Q : STD_LOGIC; 
  signal make_UART_rateGen_Result_8_1 : STD_LOGIC; 
  signal make_UART_rateGen_Result_7_1 : STD_LOGIC; 
  signal make_UART_rateGen_Result_6_1 : STD_LOGIC; 
  signal make_UART_rateGen_Result_5_1 : STD_LOGIC; 
  signal make_UART_rateGen_Result_4_1 : STD_LOGIC; 
  signal make_UART_rateGen_Result_3_1 : STD_LOGIC; 
  signal make_UART_rateGen_Result_2_1 : STD_LOGIC; 
  signal make_UART_rateGen_Result_1_1 : STD_LOGIC; 
  signal make_UART_rateGen_Result_0_1 : STD_LOGIC; 
  signal make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_0_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_1_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_2_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_3_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_4_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_5_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_6_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_7_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_8_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_9_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q : STD_LOGIC; 
  signal make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_11_rt_88 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_10_rt_89 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_9_rt_90 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_8_rt_91 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_7_rt_92 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_6_rt_93 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_5_rt_94 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_4_rt_95 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_3_rt_96 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_2_rt_97 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_1_rt_98 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_rt_99 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_rt_100 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_rt_101 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_rt_102 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_rt_103 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_rt_104 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_rt_105 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_rt_106 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_rt_107 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_rt_108 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_rt_109 : STD_LOGIC; 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_12_rt_110 : STD_LOGIC; 
  signal make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_12_rt_111 : STD_LOGIC; 
  signal make_UART_xmit_serialDataOut_rstpot_112 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_10_rstpot_113 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_9_rstpot_114 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_8_rstpot_115 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_7_rstpot_116 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_6_rstpot_117 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_5_rstpot_118 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_4_rstpot_119 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_3_rstpot_120 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_2_rstpot_121 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_1_rstpot_122 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_0_rstpot_123 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_11_rstpot_124 : STD_LOGIC; 
  signal make_UART_rateGen_make_baudEn_clockCount_12_rstpot_125 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal make_UART_xmit_tx_sm_bitToSend : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal make_UART_rateGen_Mcount_make_baudEn_clockCount_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal make_UART_rateGen_Result : STD_LOGIC_VECTOR ( 12 downto 9 ); 
  signal make_UART_rateGen_make_baudEn_clockCount : STD_LOGIC_VECTOR ( 12 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3
    );
  make_UART_xmit_tx_sm_bitToSend_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      CE => make_UART_xmit_n0091_inv,
      D => make_UART_xmit_Mcount_tx_sm_bitToSend2,
      Q => make_UART_xmit_tx_sm_bitToSend(2)
    );
  make_UART_xmit_tx_sm_bitToSend_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      CE => make_UART_xmit_n0091_inv,
      D => make_UART_xmit_Mcount_tx_sm_bitToSend1,
      Q => make_UART_xmit_tx_sm_bitToSend(1)
    );
  make_UART_xmit_tx_sm_bitToSend_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      CE => make_UART_xmit_n0091_inv,
      D => make_UART_xmit_Mcount_tx_sm_bitToSend,
      Q => make_UART_xmit_tx_sm_bitToSend(0)
    );
  make_UART_xmit_txState_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_xmit_txState_FSM_FFd1_In,
      R => reset_pin_IBUF_0,
      Q => make_UART_xmit_txState_FSM_FFd1_10
    );
  make_UART_xmit_txState_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_xmit_txState_FSM_FFd2_In,
      R => reset_pin_IBUF_0,
      Q => make_UART_xmit_txState_FSM_FFd2_12
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_12_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(11),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_12_rt_110,
      O => make_UART_rateGen_Result(12)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_11_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(10),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_11_rt_88,
      O => make_UART_rateGen_Result(11)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_11_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(10),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_11_rt_88,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(11)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_10_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(9),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_10_rt_89,
      O => make_UART_rateGen_Result(10)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_10_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(9),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_10_rt_89,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(10)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_9_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(8),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_9_rt_90,
      O => make_UART_rateGen_Result(9)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_9_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(8),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_9_rt_90,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(9)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_8_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(7),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_8_rt_91,
      O => make_UART_rateGen_Result_8_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_8_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(7),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_8_rt_91,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(8)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_7_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(6),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_7_rt_92,
      O => make_UART_rateGen_Result_7_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_7_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(6),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_7_rt_92,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(7)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_6_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(5),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_6_rt_93,
      O => make_UART_rateGen_Result_6_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_6_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(5),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_6_rt_93,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(6)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_5_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(4),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_5_rt_94,
      O => make_UART_rateGen_Result_5_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_5_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(4),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_5_rt_94,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(5)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_4_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(3),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_4_rt_95,
      O => make_UART_rateGen_Result_4_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_4_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(3),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_4_rt_95,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(4)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_3_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(2),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_3_rt_96,
      O => make_UART_rateGen_Result_3_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_3_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(2),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_3_rt_96,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(3)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_2_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(1),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_2_rt_97,
      O => make_UART_rateGen_Result_2_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_2_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(1),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_2_rt_97,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(2)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_1_Q : XORCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(0),
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_1_rt_98,
      O => make_UART_rateGen_Result_1_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_1_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(0),
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_1_rt_98,
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(1)
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_0_Q : XORCY
    port map (
      CI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      LI => make_UART_rateGen_Mcount_make_baudEn_clockCount_lut(0),
      O => make_UART_rateGen_Result_0_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_0_Q : MUXCY
    port map (
      CI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      DI => N0,
      S => make_UART_rateGen_Mcount_make_baudEn_clockCount_lut(0),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy(0)
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_12_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_Q_31,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_12_rt_111,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_11_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_Q_32,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_rt_99,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_Q_32,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_rt_99,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_Q_31
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_10_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_Q_33,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_rt_100,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_Q_33,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_rt_100,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_Q_32
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_9_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_Q_34,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_rt_101,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_9_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_Q_34,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_rt_101,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_Q_33
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_8_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_Q_35,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_rt_102,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_8_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_Q_35,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_rt_102,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_Q_34
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_7_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_Q_36,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_rt_103,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_7_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_Q_36,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_rt_103,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_Q_35
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_6_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_Q_37,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_rt_104,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_6_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_Q_37,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_rt_104,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_Q_36
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_5_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_Q_38,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_rt_105,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_5_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_Q_38,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_rt_105,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_Q_37
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_4_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_Q_39,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_rt_106,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_4_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_Q_39,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_rt_106,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_Q_38
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_3_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_Q_40,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_rt_107,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_3_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_Q_40,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_rt_107,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_Q_39
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_2_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_Q_41,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_rt_108,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_2_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_Q_41,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_rt_108,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_Q_40
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_1_Q : XORCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_0_Q_42,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_rt_109,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_1_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_Q : MUXCY
    port map (
      CI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_0_Q_42,
      DI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_rt_109,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_Q_41
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_0_Q : XORCY
    port map (
      CI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      LI => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_lut_0_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_0_Q
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_0_Q : MUXCY
    port map (
      CI => make_UART_xmit_Mmux_tx_sm_bitToSend_2_tx_sm_dataToTX_7_Mux_3_o_3,
      DI => N0,
      S => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_lut_0_Q,
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_0_Q_42
    );
  make_UART_rateGen_baudRateEnable : FD
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o,
      Q => make_UART_rateGen_baudRateEnable_4
    );
  make_UART_xmit_n0091_inv1 : LUT5
    generic map(
      INIT => X"20020002"
    )
    port map (
      I0 => make_UART_rateGen_baudRateEnable_4,
      I1 => reset_pin_IBUF_0,
      I2 => make_UART_xmit_txState_FSM_FFd1_10,
      I3 => make_UART_xmit_txState_FSM_FFd2_12,
      I4 => make_UART_xmit_n0091_inv2,
      O => make_UART_xmit_n0091_inv
    );
  make_UART_xmit_txState_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => make_UART_xmit_txState_FSM_FFd1_10,
      I1 => make_UART_rateGen_baudRateEnable_4,
      I2 => make_UART_xmit_txState_FSM_FFd2_12,
      O => make_UART_xmit_txState_FSM_FFd1_In
    );
  make_UART_xmit_Mcount_tx_sm_bitToSend_xor_1_11 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => make_UART_xmit_txState_FSM_FFd1_10,
      I1 => make_UART_xmit_tx_sm_bitToSend(0),
      I2 => make_UART_xmit_tx_sm_bitToSend(1),
      O => make_UART_xmit_Mcount_tx_sm_bitToSend1
    );
  make_UART_xmit_Mcount_tx_sm_bitToSend_xor_2_11 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => make_UART_xmit_txState_FSM_FFd1_10,
      I1 => make_UART_xmit_tx_sm_bitToSend(2),
      I2 => make_UART_xmit_tx_sm_bitToSend(0),
      I3 => make_UART_xmit_tx_sm_bitToSend(1),
      O => make_UART_xmit_Mcount_tx_sm_bitToSend2
    );
  make_UART_xmit_n0091_inv21 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => make_UART_xmit_tx_sm_bitToSend(0),
      I1 => make_UART_xmit_tx_sm_bitToSend(1),
      I2 => make_UART_xmit_tx_sm_bitToSend(2),
      O => make_UART_xmit_n0091_inv2
    );
  make_UART_xmit_Mcount_tx_sm_bitToSend_xor_0_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_xmit_txState_FSM_FFd1_10,
      I1 => make_UART_xmit_tx_sm_bitToSend(0),
      O => make_UART_xmit_Mcount_tx_sm_bitToSend
    );
  make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_1 : LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_0_Q,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_1_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_2_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_3_Q,
      I4 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_4_Q,
      I5 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_5_Q,
      O => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q
    );
  reset_pin_IBUF : IBUF
    port map (
      I => reset_pin,
      O => reset_pin_IBUF_0
    );
  serialDataOut_pin_OBUF : OBUF
    port map (
      I => make_UART_xmit_serialDataOut_2,
      O => serialDataOut_pin
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(11),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_11_rt_88
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(10),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_10_rt_89
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(9),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_9_rt_90
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(8),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_8_rt_91
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(7),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_7_rt_92
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(6),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_6_rt_93
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(5),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_5_rt_94
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(4),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_4_rt_95
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(3),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_3_rt_96
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(2),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_2_rt_97
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(1),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_cy_1_rt_98
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(11),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_11_rt_99
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(10),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_10_rt_100
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(9),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_9_rt_101
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(8),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_8_rt_102
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(7),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_7_rt_103
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(6),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_6_rt_104
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(5),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_5_rt_105
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(4),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_4_rt_106
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(3),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_3_rt_107
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(2),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_2_rt_108
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(1),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_cy_1_rt_109
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(12),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_xor_12_rt_110
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount(12),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_xor_12_rt_111
    );
  make_UART_xmit_serialDataOut : FDS
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_xmit_serialDataOut_rstpot_112,
      S => reset_pin_IBUF_0,
      Q => make_UART_xmit_serialDataOut_2
    );
  make_UART_rateGen_make_baudEn_clockCount_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_10_rstpot_113,
      Q => make_UART_rateGen_make_baudEn_clockCount(10)
    );
  make_UART_rateGen_make_baudEn_clockCount_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_9_rstpot_114,
      Q => make_UART_rateGen_make_baudEn_clockCount(9)
    );
  make_UART_rateGen_make_baudEn_clockCount_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_8_rstpot_115,
      Q => make_UART_rateGen_make_baudEn_clockCount(8)
    );
  make_UART_rateGen_make_baudEn_clockCount_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_7_rstpot_116,
      Q => make_UART_rateGen_make_baudEn_clockCount(7)
    );
  make_UART_rateGen_make_baudEn_clockCount_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_6_rstpot_117,
      Q => make_UART_rateGen_make_baudEn_clockCount(6)
    );
  make_UART_rateGen_make_baudEn_clockCount_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_5_rstpot_118,
      Q => make_UART_rateGen_make_baudEn_clockCount(5)
    );
  make_UART_rateGen_make_baudEn_clockCount_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_4_rstpot_119,
      Q => make_UART_rateGen_make_baudEn_clockCount(4)
    );
  make_UART_rateGen_make_baudEn_clockCount_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_3_rstpot_120,
      Q => make_UART_rateGen_make_baudEn_clockCount(3)
    );
  make_UART_rateGen_make_baudEn_clockCount_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_2_rstpot_121,
      Q => make_UART_rateGen_make_baudEn_clockCount(2)
    );
  make_UART_rateGen_make_baudEn_clockCount_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_1_rstpot_122,
      Q => make_UART_rateGen_make_baudEn_clockCount(1)
    );
  make_UART_rateGen_make_baudEn_clockCount_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_0_rstpot_123,
      Q => make_UART_rateGen_make_baudEn_clockCount(0)
    );
  make_UART_rateGen_make_baudEn_clockCount_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_11_rstpot_124,
      Q => make_UART_rateGen_make_baudEn_clockCount(11)
    );
  make_UART_rateGen_make_baudEn_clockCount_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_pin_BUFGP_1,
      D => make_UART_rateGen_make_baudEn_clockCount_12_rstpot_125,
      Q => make_UART_rateGen_make_baudEn_clockCount(12)
    );
  make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_2_SW0 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_6_Q,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_7_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_8_Q,
      O => N2
    );
  make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_3 : LUT6
    generic map(
      INIT => X"0000010000000000"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_9_Q,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N2,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o
    );
  make_UART_rateGen_make_baudEn_clockCount_10_rstpot_SW0 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_6_Q,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_7_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_8_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_9_Q,
      O => N30
    );
  make_UART_rateGen_make_baudEn_clockCount_10_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result(10),
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_10_rstpot_113
    );
  make_UART_rateGen_make_baudEn_clockCount_9_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result(9),
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_9_rstpot_114
    );
  make_UART_rateGen_make_baudEn_clockCount_8_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_8_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_8_rstpot_115
    );
  make_UART_rateGen_make_baudEn_clockCount_7_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_7_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_7_rstpot_116
    );
  make_UART_rateGen_make_baudEn_clockCount_6_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_6_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_6_rstpot_117
    );
  make_UART_rateGen_make_baudEn_clockCount_5_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_5_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_5_rstpot_118
    );
  make_UART_rateGen_make_baudEn_clockCount_4_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_4_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_4_rstpot_119
    );
  make_UART_rateGen_make_baudEn_clockCount_3_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_3_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_3_rstpot_120
    );
  make_UART_rateGen_make_baudEn_clockCount_2_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_2_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_2_rstpot_121
    );
  make_UART_rateGen_make_baudEn_clockCount_1_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_1_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_1_rstpot_122
    );
  make_UART_rateGen_make_baudEn_clockCount_0_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result_0_1,
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_0_rstpot_123
    );
  make_UART_rateGen_make_baudEn_clockCount_11_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result(11),
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_11_rstpot_124
    );
  make_UART_rateGen_make_baudEn_clockCount_12_rstpot : LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
    port map (
      I0 => make_UART_rateGen_Result(12),
      I1 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_10_Q,
      I2 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_11_Q,
      I3 => make_UART_rateGen_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_12_Q,
      I4 => N30,
      I5 => make_UART_rateGen_PWR_6_o_make_baudEn_clockCount_12_equal_6_o_12_Q,
      O => make_UART_rateGen_make_baudEn_clockCount_12_rstpot_125
    );
  make_UART_xmit_serialDataOut_rstpot : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => make_UART_rateGen_baudRateEnable_4,
      I1 => make_UART_xmit_txState_FSM_FFd2_12,
      I2 => make_UART_xmit_serialDataOut_2,
      O => make_UART_xmit_serialDataOut_rstpot_112
    );
  make_UART_xmit_txState_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"2AAAAAAAFFFFAAAA"
    )
    port map (
      I0 => make_UART_xmit_txState_FSM_FFd2_12,
      I1 => make_UART_xmit_tx_sm_bitToSend(0),
      I2 => make_UART_xmit_tx_sm_bitToSend(1),
      I3 => make_UART_xmit_tx_sm_bitToSend(2),
      I4 => make_UART_rateGen_baudRateEnable_4,
      I5 => make_UART_xmit_txState_FSM_FFd1_10,
      O => make_UART_xmit_txState_FSM_FFd2_In
    );
  clock_pin_BUFGP : BUFGP
    port map (
      I => clock_pin,
      O => clock_pin_BUFGP_1
    );
  make_UART_rateGen_Mcount_make_baudEn_clockCount_lut_0_INV_0 : INV
    port map (
      I => make_UART_rateGen_make_baudEn_clockCount(0),
      O => make_UART_rateGen_Mcount_make_baudEn_clockCount_lut(0)
    );
  make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_lut_0_INV_0 : INV
    port map (
      I => make_UART_rateGen_make_baudEn_clockCount(0),
      O => make_UART_rateGen_Madd_make_baudEn_clockCount_12_GND_6_o_add_4_OUT_lut_0_Q
    );

end Structure;

