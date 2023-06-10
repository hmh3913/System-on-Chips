`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/29 16:50:45
// Design Name: 
// Module Name: GPIO
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


module GPIO(
    input   clk, 
    input   rst,
    input   CS, 
    input   REN,
    input   WEN,
    input   [11:0] Addr, 
    input   [31:0] DataIn,
    output  reg [31:0]  DataOut,
    output  reg [6:0] HEX0,
    output  reg [6:0] HEX1, 
    output  reg [6:0] HEX2, 
    output  reg [6:0] HEX3, 
    output  reg [6:0] HEX4, 
    output  reg [6:0] HEX5, 
    output  reg [7:0] LEDS
    );
    
    // Register Write
    always @(posedge clk) begin
        if (rst) begin
            HEX0  <= 0; 
            HEX1  <= 0; 
            HEX2  <= 0; 
            HEX3  <= 0; 
            HEX4  <= 0; 
            HEX5  <= 0;
        end
        else if (CS & WEN) begin
            if (Addr==12'h008) LEDS <= DataIn[7:0];
            else if (Addr==12'h00C) HEX0 <= DataIn[6:0]; 
            else if (Addr==12'h010) HEX1 <= DataIn[6:0];
            else if (Addr==12'h014) HEX2 <= DataIn[6:0];
            else if (Addr==12'h018) HEX3 <= DataIn[6:0];
            else if (Addr==12'h01C) HEX4 <= DataIn[6:0];
            else if (Addr==12'h020) HEX5 <= DataIn[6:0];
         end
     end
  
    
endmodule
