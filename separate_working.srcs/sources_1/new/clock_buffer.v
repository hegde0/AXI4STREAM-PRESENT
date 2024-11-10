`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 18:33:53
// Design Name: 
// Module Name: clock_buffer
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

 
module clock_buffer(input i_clk,input rst,output reg[3:0]opclk,output reg[2:0]reset_mst);
reg [3:0]buff=0; 
reg [2:0]rbufff=1;
always@(posedge i_clk)
begin
buff<={i_clk,i_clk,i_clk,i_clk};
rbufff<={rst,rst,rst,rst};
end
always@(posedge i_clk)
begin
reset_mst<=rbufff;
opclk<=buff;
end
endmodule 
