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
    input wire clk_100mhz,
    output wire hsync,
    output wire vsync,
    output wire enable,
    output wire [9:0] x,
    output wire [9:0] y
);
    wire pixel_clock;
    wire next_vsync;
    wire h_enable, v_enable;
    
     clk_vga480p vga_clk(
        .clk_in1(clk_100mhz),
        .clk_out(pixel_clock)
    );
    
    vga_hsync hsync_generator(
        .clk(pixel_clock),
        .x(x),
        .enable(h_enable),
        .hsync(hsync),
        .line_end(next_vsync)
    );

    vga_vsync vsync_generator(
        .y(y),
        .enable(v_enable),
        .vsync(vsync),
        .next(next_vsync)
    );

    assign enable = h_enable & v_enable;
endmodule
