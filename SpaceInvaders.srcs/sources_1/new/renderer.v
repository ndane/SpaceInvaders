`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2021 00:34:53
// Design Name: 
// Module Name: gfx_renderer
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


module gfx_renderer(
    input enable,
    input [9:0] x,
    input [9:0] y,
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue
);

    reg [3:0] r = 0, g = 0, b = 0;
    
    assign red = r;
    assign green = g;
    assign blue = b;
    
    always @* begin
     r <= enable ? (x % 2 == 0 ? 4'h5 : 4'h4) : 4'b0000;
     g <= enable ? (x % 2 == 0 ? 4'h5 : 4'h4) : 4'b0000;
     b <= enable ? (x % 2 == 0 ? 4'h5 : 4'h4) : 4'b0000;
    end
endmodule
