-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.1
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity packet_generator is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_V : IN STD_LOGIC_VECTOR (31 downto 0);
    mac_destination_V : IN STD_LOGIC_VECTOR (47 downto 0);
    mac_source_V : IN STD_LOGIC_VECTOR (47 downto 0);
    length_V : IN STD_LOGIC_VECTOR (15 downto 0);
    ip_destination_V : IN STD_LOGIC_VECTOR (31 downto 0);
    ip_source_V : IN STD_LOGIC_VECTOR (31 downto 0);
    source_port_V : IN STD_LOGIC_VECTOR (15 downto 0);
    destination_port_V : IN STD_LOGIC_VECTOR (15 downto 0);
    inter_packet_gap_V : IN STD_LOGIC_VECTOR (31 downto 0);
    num_pkt_V : IN STD_LOGIC_VECTOR (15 downto 0);
    continuos_V : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of packet_generator is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "packet_generator,hls_ip_2015_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';



begin



    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
end behav;
