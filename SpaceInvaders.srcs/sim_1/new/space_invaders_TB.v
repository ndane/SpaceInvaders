`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 21:52:26
// Design Name: 
// Module Name: space_invaders_TB
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


module space_invaders_TB();
    reg clk = 0;
    always #5 clk = ~clk;

    wire [3:0] red, green, blue;
    wire hsync, vsync;

    space_invaders DUT(
        .clk_100mhz(clk),
        .vga_red(red),
        .vga_green(green),
        .vga_blue(blue),
        .hsync(hsync),
        .vsync(vsync)
    );
endmodule
