`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 21:41:20
// Design Name: 
// Module Name: pixel_clk
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


module pixel_clk(
    input wire clk_100mhz,
    output wire out // 25.2 Mhz output
);

    reg [3:0] count = 0;
    
    always @(posedge clk_100mhz) count <= count >= 3 ? 0 : count + 1;
    
    assign out = count == 3;
endmodule
