`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 21:33:06
// Design Name: 
// Module Name: vga_hsync
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


module vga_hsync(
    input wire clk, // 25.2Mhz clock
    output wire [9:0] x, // X Position
    output wire hsync,
    output wire enable,
    output wire line_end // High when hsync reaches last pixel
);

    parameter ACTIVE_END = 639;
    parameter SYNC_START = ACTIVE_END + 16;
    parameter SYNC_END = SYNC_START + 96;
    parameter END = 799;

    reg [9:0] x_pos = 0;

    assign x = x_pos;
    assign hsync = ~(x_pos >= SYNC_START && x_pos < SYNC_END);
    assign line_end = x_pos == END;
    assign enable = x_pos < ACTIVE_END;
    
    always @(posedge clk) begin
        x_pos <= x_pos == END ? 0 : x_pos + 1;
    end
endmodule
