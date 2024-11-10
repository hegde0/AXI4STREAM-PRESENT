//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Feb 11 20:52:51 2024
//Host        : LAPTOP-FDL84CCL running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    clk_1,
    m_axis_tdata_0,
    m_axis_tready_0,
    m_axis_tvalid_0,
    rst_0,
    s_axis_aclk_0,
    s_axis_aclk_1,
    s_axis_aresetn_0,
    s_axis_aresetn_1,
    s_axis_tdata_0,
    s_axis_tready_0,
    s_axis_tvalid_0,
    tx_enable_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_1, CLK_DOMAIN design_1_clk_1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_1;
  output [7:0]m_axis_tdata_0;
  input m_axis_tready_0;
  output m_axis_tvalid_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK_0, ASSOCIATED_RESET s_axis_aresetn_0, CLK_DOMAIN design_1_s_axis_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK_1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK_1, ASSOCIATED_RESET s_axis_aresetn_1, CLK_DOMAIN design_1_s_axis_aclk_1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_aclk_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN_1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_ARESETN_1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_aresetn_1;
  input [7:0]s_axis_tdata_0;
  output s_axis_tready_0;
  input s_axis_tvalid_0;
  output tx_enable_0;

  wire [63:0]PRESENT_ENCRYPT_0_ciphered;
  wire PRESENT_ENCRYPT_0_done;
  wire [63:0]PRESENT_ENCRYPT_0_odat;
  wire [7:0]axis_data_fifo_0_m_axis_tdata;
  wire axis_data_fifo_0_m_axis_tvalid;
  wire axis_data_fifo_0_s_axis_tready;
  wire [7:0]axis_data_fifo_1_m_axis_tdata;
  wire axis_data_fifo_1_m_axis_tvalid;
  wire axis_data_fifo_1_s_axis_tready;
  wire clk_0_1;
  wire clk_1_1;
  wire m_axis_tready_0_1;
  wire rst_0_1;
  wire s_axis_aclk_0_1;
  wire s_axis_aclk_1_1;
  wire s_axis_aresetn_0_1;
  wire s_axis_aresetn_1_1;
  wire [7:0]s_axis_tdata_0_1;
  wire s_axis_tvalid_0_1;
  wire [63:0]sipo_0_idat;
  wire [79:0]sipo_0_key;
  wire sipo_0_load;
  wire sipo_0_ready;
  wire [7:0]sipo_0_sdata;
  wire sipo_0_svalid;
  wire sipo_0_tx_enable;

  assign clk_0_1 = clk_0;
  assign clk_1_1 = clk_1;
  assign m_axis_tdata_0[7:0] = axis_data_fifo_1_m_axis_tdata;
  assign m_axis_tready_0_1 = m_axis_tready_0;
  assign m_axis_tvalid_0 = axis_data_fifo_1_m_axis_tvalid;
  assign rst_0_1 = rst_0;
  assign s_axis_aclk_0_1 = s_axis_aclk_0;
  assign s_axis_aclk_1_1 = s_axis_aclk_1;
  assign s_axis_aresetn_0_1 = s_axis_aresetn_0;
  assign s_axis_aresetn_1_1 = s_axis_aresetn_1;
  assign s_axis_tdata_0_1 = s_axis_tdata_0[7:0];
  assign s_axis_tready_0 = axis_data_fifo_0_s_axis_tready;
  assign s_axis_tvalid_0_1 = s_axis_tvalid_0;
  assign tx_enable_0 = sipo_0_tx_enable;
  design_1_PRESENT_ENCRYPT_0_0 PRESENT_ENCRYPT_0
       (.ciphered(PRESENT_ENCRYPT_0_ciphered),
        .clk(clk_1_1),
        .done(PRESENT_ENCRYPT_0_done),
        .idat(sipo_0_idat),
        .key(sipo_0_key),
        .load(sipo_0_load),
        .odat(PRESENT_ENCRYPT_0_odat));
  design_1_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_m_axis_tdata),
        .m_axis_tready(sipo_0_ready),
        .m_axis_tvalid(axis_data_fifo_0_m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk_1_1),
        .s_axis_aresetn(s_axis_aresetn_1_1),
        .s_axis_tdata(s_axis_tdata_0_1),
        .s_axis_tready(axis_data_fifo_0_s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid_0_1));
  design_1_axis_data_fifo_1_0 axis_data_fifo_1
       (.m_axis_tdata(axis_data_fifo_1_m_axis_tdata),
        .m_axis_tready(m_axis_tready_0_1),
        .m_axis_tvalid(axis_data_fifo_1_m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_aresetn(s_axis_aresetn_0_1),
        .s_axis_tdata(sipo_0_sdata),
        .s_axis_tready(axis_data_fifo_1_s_axis_tready),
        .s_axis_tvalid(sipo_0_svalid));
  design_1_sipo_0_1 sipo_0
       (.ciphered(PRESENT_ENCRYPT_0_ciphered),
        .clk(clk_0_1),
        .din(axis_data_fifo_0_m_axis_tdata),
        .done(PRESENT_ENCRYPT_0_done),
        .idat(sipo_0_idat),
        .key(sipo_0_key),
        .load(sipo_0_load),
        .mvalid(axis_data_fifo_0_m_axis_tvalid),
        .odat(PRESENT_ENCRYPT_0_odat),
        .ready(sipo_0_ready),
        .rst(rst_0_1),
        .sdata(sipo_0_sdata),
        .sready(axis_data_fifo_1_s_axis_tready),
        .svalid(sipo_0_svalid),
        .tx_enable(sipo_0_tx_enable));
endmodule
