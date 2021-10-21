`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 21:33:06
// Design Name: 
// Module Name: vga_vsync
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


module vga_vsync(
    input wire next, // Set high to advance line
    output wire [9:0] y, // X Position
    output wire vsync
);

    parameter ACTIVE_END = 479;
    parameter SYNC_START = ACTIVE_END + 10;
    parameter SYNC_END = SYNC_START + 2;
    parameter END = 524;

    reg [9:0] y_pos = 0;

    assign y = y_pos;
    assign vsync = ~(y_pos >= SYNC_START && y_pos < SYNC_END);

    always @(posedge next) begin
        y_pos <= y_pos == END ? 0 : y_pos + 1;
    end
endmodule
