`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2021 15:31:51
// Design Name: 
// Module Name: renderer_switch_debugger
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


module renderer_switch_debugger(
    input clk,
    input [11:0] switches,
    output [11:0] rgb,
    input enable
);

    assign rgb = enable ? switches : 12'h0;

endmodule
