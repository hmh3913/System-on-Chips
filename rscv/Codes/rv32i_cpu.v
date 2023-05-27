`define OP_LUI 7'b0110111
`define OP_AUIPC 7'b0110111
`define OP_JAL 7'b1101111
`define OP_JALR 7'b1100111
`define OP_B 7'b1100011
`define OP_I_LOAD 7'b0000011
`define OP_S 7'b0100011
`define OP_I_ARITH 7'b0010011
`define OP_R 7'b0110011

module rv32i_cpu(
        input   clk, 
        input   rst,
        output reg [31:0]  pc, //program counter (address for instruction)
        input   [31:0]  inst, //instruction from memory
        output  MemWen, 	
        output  [31:0]  MemAddr, 
        output  [31:0]  MemWdata, 
        input   [31:0]  MemRdata 
    );
    
    wire [4:0] rs1, rs2, rd;
    reg memwrite;
    wire [31:0] rs1_data, rs2_data, rd_data;
    reg [31:0] alusrc1, alusrc2;
    reg [4:0] alucontrol;
    wire[6:0] opcode. funct7;
    wire[2:0] funct3;
    
    always@(posedge clk, posedge rst) begin
        if(rst) pc <= 0;
        else pc <= pc + 4;
    end
    
    assign rs1 = inst[19:15];
    assign rs2 = inst[24:20];
    assign rd = inst[11:7];
   
   regfile regfile_inst(
    .clk(clk),
    .we(memwrite),
    .rs1(rs1),
    .rs2(rs2),
    .rd_data(rd_data),
    .rs1_data(rs1_data),
    .rs2_data(rs2_data)
    );
    
    alu alu_inst(
    .a(alu)
    input [31:0] a, b,
    input [4:0] control,
    output reg [31:0] result,
    output N,
    output Z,
    output C,
    output V
    );
    
    assign opcode = inst[6:0];
    assign funct3 = inst[31:25];
    
    
// register for pc
// register file
// rs1,rs2,rd,opcode,funct7,funct3 from inst
// alucontrol from opcode
// control signals from opcode (alusrc, lui, regwrite, memwrite..)
// alu


endmodule
