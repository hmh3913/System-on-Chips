`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/28 17:18:21
// Design Name: 
// Module Name: RV32I_System
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


module RV32I_SoC(
    input   clk_100mhz, 
    input   btn,    //'1' when pressed
    output [7:0] leds,  
    output reg [7:0]   seg_data, 
    output reg [5:0]   seg_com 
    );
    
    wire clk, clk90, clk180;
    reg rst;
    wire [31:0] fetch_addr, data_addr, inst, write_data;
    wire [31:0] read_data_mem, read_data_gpio;
    reg [31:0] read_data;  
    wire cs_mem, cs_gpio, data_we, locked; 
    wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
    reg [13:0] seg_cnt;
    
    ram_2port_2048x32 iMEM (
        .clka (clk90), 
        .ena (1'b1), 
        .wea (1'b0), 
        .addra (fetch_addr[12:2]),
        .dina (32'b0), 
        .douta (inst), 
        .clkb (clk180), 
        .enb (cs_mem), 
        .web ({4{data_we}}),
        .addrb(data_addr[12:2]), 
        .dinb (write_data), 
        .doutb (read_data_mem)
  );
  
    clk_wiz_0 iPLL ( 
        .clk0(clk), 
        .clk90(clk90),
        .clk180(clk180), 
        .reset(btn),        //active high 
        .locked(locked),    //'1' after clock becomes stable
        .clk_in1(clk_100mhz)
    );
   
    always @ (posedge clk_100mhz) begin
        rst <= (~locked) | btn; //'1' when clock is not stable or btn is pressed. 
    end      
    
    
    rv32i_cpu iCPU(
        .clk(clk),  
        .rst(rst),        //active high reset
        .pc(fetch_addr),  
        .inst(inst), 
        .MemWen(data_we), 
        .MemAddr(data_addr), 
        .MemWdata(write_data),  
        .MemRdata(read_data) 
       );
       
    always @* begin // more peripherals can be added
        if (cs_gpio) read_data = read_data_gpio;
        else read_data = read_data_mem; 
    end
    
    Addr_Decoder iDec( //chip select
        .addr(data_addr), 
        .cs_mem(cs_mem),
        .cs_gpio(cs_gpio)
    );
    
    GPIO iGPIO(
        .clk(clk), 
        .rst(rst), 
        .CS(cs_gpio),
        .REN(~data_we),
        .WEN(data_we),
        .Addr(data_addr),  
        .DataIn(write_data),
        .DataOut(read_data_gpio),
        .HEX0(HEX0),
        .HEX1(HEX1),        
        .HEX2(HEX2),
        .HEX3(HEX3),        
        .HEX4(HEX4),
        .HEX5(HEX5),
        .LEDS(leds)        
        );
        
        
    always @ (posedge clk, posedge rst)
    begin  
        if (rst) begin
            seg_cnt <= 0; 
            seg_com <= 6'b100000;
        end 
        else begin
            if (seg_cnt[13] == 1'b1) begin
                seg_com <= {seg_com[0], seg_com[5:1]};
                seg_cnt <= 0; 
            end
            else seg_cnt <= seg_cnt +1; 
        end    
    end
        
    always @* begin
        case (seg_com)
            6'b100000 : seg_data = {HEX0, 1'b0};          
            6'b010000 : seg_data = {HEX1, 1'b0};
            6'b001000 : seg_data = {HEX2, 1'b0};
            6'b000100 : seg_data = {HEX3, 1'b0};
            6'b000010 : seg_data = {HEX4, 1'b0};
            6'b000001 : seg_data = {HEX5, 1'b0};
            default: seg_data = 8'b0;       
        endcase
    end
        
endmodule
