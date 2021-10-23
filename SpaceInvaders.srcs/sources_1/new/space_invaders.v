`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 00:07:11
// Design Name: 
// Module Name: space_invaders
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


module space_invaders(
    input clk_100mhz,
    input [11:0] switches,
    output [3:0] vga_red,
    output [3:0] vga_green,
    output [3:0] vga_blue,
    output hsync,
    output vsync
);
    wire [9:0] x, y;
    wire video_enable;

    vga vga_device(
        .clk_100mhz(clk_100mhz),
        .hsync(hsync),
        .vsync(vsync),
        .enable(video_enable),
        .x(x),
        .y(y)
    );

    gfx_renderer renderer(
        .clk(clk),
        .enable(video_enable),
        .switches(switches),
        .x(x),
        .y(y),
        .red(vga_red),
        .green(vga_green),
        .blue(vga_blue)
    );
endmodule
