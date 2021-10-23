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
    input clk,
    input enable,
    input [11:0] switches,
    input [9:0] x,
    input [9:0] y,
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue
);

    wire [3:0] r, g, b;
    
    assign red = enable ? r : 4'h0;
    assign green = enable ? g : 4'h0;
    assign blue = enable ? b : 4'h0;
    

    renderer_switch_debugger debugger(
        .clk(clk),
        .switches(switches),
        .rgb({r, g, b}),
        .enable(enable)
    );
    
endmodule
