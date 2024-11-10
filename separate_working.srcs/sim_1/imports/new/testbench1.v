`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 00:05:11
// Design Name: 
// Module Name: testbench1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench1;
reg clk,rst;
reg [127:0]buff=128'h0000000000000000ffffffffffffffff;
reg [7:0]sdata;
reg stvalid;
wire stready;
reg [127:0]return;
reg [7:0]i,j;
//wire done;
wire [7:0]rdata;
reg rready=0;
wire rvalid;
wire tx_enable;
design_1_wrapper uut(
    .rst_0(rst),   
    //.i_clk_0(clk),
    .s_axis_aresetn_0(rst),
    .clk_0(clk),
       . clk_1(clk),
         .s_axis_aclk_0(clk),
          . s_axis_aclk_1(clk),
        .s_axis_aresetn_1(rst),
    .s_axis_tdata_0(sdata),
    .s_axis_tready_0(stready),
    .s_axis_tvalid_0(stvalid),
   // .done_0(done), 
    .tx_enable_0(tx_enable),
    .m_axis_tdata_0(rdata),
        .m_axis_tready_0(rready),
        .m_axis_tvalid_0(rvalid)
    );
//....................................................
    initial begin
    clk=1;
    forever #5 clk=~clk;
    end
    initial begin
    #10 rst=1;
    #10 rst=0;
    #10 rst=1;
    #10 stvalid=0; 
   #10 stvalid=1; 
    i=8'd128;
    j=8'd128;
    rready=0;
    end
    
    
    //========================================
    
    always@ (posedge clk)
    begin
    if(i!=8'hf8&&i>=0&&stready)
    begin
    stvalid<=1;
    end
    end
    
    //==========================================
    
    always@(posedge clk&&i==8'hf0)
    begin
    stvalid<=0;
    end    
    //=======================================
    
    always@(posedge clk&&stvalid&&stready)
    begin
     sdata<=buff[i+:8];
       i<=i-8;
    end
    
    //==========================================
    always@(posedge clk&&rvalid)
    begin
    rready=1;
    end
    
    //==============================================
    always@(posedge clk&&rready&&rvalid)
    begin
   return<={rdata,return[127:8]};
    end
    //===============================================
    
    
    endmodule
    