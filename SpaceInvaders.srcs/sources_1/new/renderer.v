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

    // TODO: Other stuff will set these for each pixel
    assign red = enable ? 4'h5 : 4'h0;
    assign green = enable ? 4'h5 : 4'h0;
    assign blue = enable ? 4'h5 : 4'h0;
endmodule
