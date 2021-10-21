`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 00:56:48
// Design Name: 
// Module Name: vga
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


module vga(
    input wire clk_25_2mhz,
    output wire hsync,
    output wire vsync,
    output wire [9:0] x,
    output wire [9:0] y
);
    wire next_vsync;
    
    vga_hsync hsync_generator(
        .clk(clk_25_2mhz),
        .x(x),
        .hsync(hsync),
        .line_end(next_vsync)
    );

    vga_vsync vsync_generator(
        .y(y),
        .vsync(vsync),
        .next(next_vsync)
    );
endmodule
