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
    output [3:0] vga_red,
    output [3:0] vga_green,
    output [3:0] vga_blue,
    output hsync,
    output vsync
);
    wire pixelClock;
    wire [9:0] x, y;
    wire video_enable;

    pixel_clk pixel_clk_generator(
        .clk_100mhz(clk_100mhz),
        .out(pixelClock)
    );

    vga vga_device(
        .clk_25_2mhz(pixelClock),
        .hsync(hsync),
        .vsync(vsync),
        .enable(video_enable),
        .x(x),
        .y(y)
    );
    
    gfx_renderer renderer(
        .enable(video_enable),
        .x(x),
        .y(y),
        .red(vga_red),
        .green(vga_green),
        .blue(vga_blue)
    );
endmodule
