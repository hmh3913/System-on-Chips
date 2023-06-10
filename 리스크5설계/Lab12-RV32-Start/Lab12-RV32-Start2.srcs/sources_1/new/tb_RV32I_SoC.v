`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/28 19:16:39
// Design Name: 
// Module Name: tb_RV32I_SoC
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


module tb_RV32I_SoC();

reg     clk_100mhz, btn; 
wire    [7:0] seg_data, leds;
wire    [5:0] seg_com; 


RV32I_SoC   DUT (clk_100mhz, btn, leds, seg_data, seg_com); 

initial begin
    clk_100mhz = 1'b0; 
    btn = 1'b0; //not pressed
    #1000000;
    $stop;
end
     

always begin
    #5; clk_100mhz = ~clk_100mhz; //100MHz clk
end

endmodule
