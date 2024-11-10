`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2024 10:01:19
// Design Name: 
// Module Name: sipo
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
   

module sipo(clk,rst,din,mvalid,ready,done,tx_enable,svalid,sready,sdata,ciphered,odat,idat,key,load);
  input clk,rst;
  input mvalid;
  input [7:0]din;
	output reg ready;
	output reg [63:0]idat;
	input [63:0]odat; 
  input [63:0]ciphered;
 output reg load=0;
 output reg [79:0]key=80'h56782F68417BE72C46C0;
 input done;

 output reg tx_enable;
 output reg svalid;
 input wire sready;
 output reg [7:0]sdata;

reg [127:0]dat;
reg [127:0]data;
//integer count; 
reg [63:0]ciphertext;
integer s_counter;
always@(posedge clk) 
begin
	if(~rst)
    begin
        dat<= 128'hxx;
		 
		ciphertext<=64'hxxxx; 
		//s_counter<=0;
       
     end
    end
 //.........tx-enable.........//
 always@(posedge clk)
 begin
    if(~rst||s_counter==136)
        tx_enable<=0;
    else if(done)
        tx_enable<=1;
 end
 //......Ready signal.........//   
 always@(posedge clk)
 begin
    if(~rst||mvalid)
    begin
          ready<=1;
    end
    else if(~mvalid)
    ready<=0;
end
//.....data aquisition............//
always @ (posedge clk&&(rst)&&mvalid)
	begin 
        if(ready)
        begin
        dat<={dat[119:0],din};
        end
end
//........send to cipher engine...........//
always@(posedge clk&&(~mvalid))
begin
if(done)
begin
    #10 load=1;
    $display("dataaa=",dat[63:0]);
	idat=dat[63:0];   
    #10 load=0;   
end
end
 always@(posedge clk&&done)
begin	
	#10 load=0;
	//s_counter=0;
	
	data<={64'h0,ciphertext};
end
always@(done)
ciphertext<=ciphered;
  always@(posedge clk)
begin
if(tx_enable&&svalid&&sready&&s_counter<=128)
    s_counter<=s_counter+8;
else if(s_counter==136)
    s_counter<=0;
    else if(done)
    s_counter<=0;
end 
 always@(posedge clk&&tx_enable&&svalid&&sready&&s_counter<=128)
    begin
    
    sdata=data[(s_counter)+:8];
    $display("sdtata=",sdata);
   // s_counter=s_counter+8;
    end
    
   always@(posedge clk)
    begin
    if(~rst)
    svalid<=0;
    if(s_counter==128)
        svalid<=0;
    else if(done)
    svalid<=1;
     end  
 endmodule