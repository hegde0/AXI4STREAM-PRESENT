//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Feb 12 00:03:59 2024
//Host        : LAPTOP-FDL84CCL running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input clk_0;
  input clk_1;
  output [7:0]m_axis_tdata_0;
  input m_axis_tready_0;
  output m_axis_tvalid_0;
  input rst_0;
  input s_axis_aclk_0;
  input s_axis_aclk_1;
  input s_axis_aresetn_0;
  input s_axis_aresetn_1;
  input [7:0]s_axis_tdata_0;
  output s_axis_tready_0;
  input s_axis_tvalid_0;
  output tx_enable_0;

  wire clk_0;
  wire clk_1;
  wire [7:0]m_axis_tdata_0;
  wire m_axis_tready_0;
  wire m_axis_tvalid_0;
  wire rst_0;
  wire s_axis_aclk_0;
  wire s_axis_aclk_1;
  wire s_axis_aresetn_0;
  wire s_axis_aresetn_1;
  wire [7:0]s_axis_tdata_0;
  wire s_axis_tready_0;
  wire s_axis_tvalid_0;
  wire tx_enable_0;

  design_1 design_1_i
       (.clk_0(clk_0),
        .clk_1(clk_1),
        .m_axis_tdata_0(m_axis_tdata_0),
        .m_axis_tready_0(m_axis_tready_0),
        .m_axis_tvalid_0(m_axis_tvalid_0),
        .rst_0(rst_0),
        .s_axis_aclk_0(s_axis_aclk_0),
        .s_axis_aclk_1(s_axis_aclk_1),
        .s_axis_aresetn_0(s_axis_aresetn_0),
        .s_axis_aresetn_1(s_axis_aresetn_1),
        .s_axis_tdata_0(s_axis_tdata_0),
        .s_axis_tready_0(s_axis_tready_0),
        .s_axis_tvalid_0(s_axis_tvalid_0),
        .tx_enable_0(tx_enable_0));
endmodule
