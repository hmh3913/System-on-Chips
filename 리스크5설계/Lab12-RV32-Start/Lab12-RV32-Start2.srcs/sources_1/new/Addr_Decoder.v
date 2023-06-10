`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/29 16:26:18
// Design Name: 
// Module Name: Addr_Decoder
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


module Addr_Decoder(
        input [31:0] addr,
        output reg cs_mem,
        output reg cs_gpio
        );
        
        
// 0xFFFF_FFFF -------------------------------   
//                                
//                         Reserved        
//
// 0xFFFF_3000 -------------------------------
//                           GPIO               4KB
// 0xFFFF_2000 -------------------------------
//               Reserved for Peripheral-2      4KB
// 0xFFFF_1000 -------------------------------
//               Reserved for Peripheral-1      4KB
// 0xFFFF_0000 -------------------------------
//
//                        Reserved
//
// 0x0000_2000 -------------------------------         
//
//                    instruction & data        8KB
//                  
// 0x0000_0000 -------------------------------   


    always @* begin
        if (addr[31:13] == 19'h0) begin // instruction & data
            cs_mem <= 1'b1; 
            cs_gpio <= 1'b0;
        end
        else if (addr[31:12] == 20'hFFFF2) begin // GPIO
            cs_mem <= 1'b0; 
            cs_gpio <= 1'b1;
        end 
    end
         

endmodule
