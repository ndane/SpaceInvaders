`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 21:41:20
// Design Name: 
// Module Name: pixel_clk
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


module pixel_clk(
    input wire clk_100mhz,
    output wire out // 25.2 Mhz output
);

    parameter clk_in_freq = 100000000;
    parameter clk_target_freq = 25200000;
    parameter max = clk_in_freq / (2 * clk_target_freq);

    integer count = 0;
    reg new_clk = 0;
    
    always @(posedge clk_100mhz) begin
        if (count >= max - 1) begin
            count <= 0;
            new_clk <= ~new_clk;
        end
        else count <= count + 1;
    end
    
    assign out = new_clk;
endmodule
