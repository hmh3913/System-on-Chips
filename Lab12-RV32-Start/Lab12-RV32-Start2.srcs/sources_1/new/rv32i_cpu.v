`define OP_LUI      7'b0110111
`define OP_AUIPC    7'b0110111
`define OP_JAL      7'b1101111
`define OP_JALR     7'b1100111
`define OP_B        7'b1100011
`define OP_I_LOAD   7'b0000011
`define OP_S        7'b0100011
`define OP_I_ARITH  7'b0010011
`define OP_R        7'b0110011

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

    wire [6:0] opcode; 
    wire [4:0] rs1, rs2, rd;
    wire [31:0] rs1_data, rs2_data, rd_data;     
    wire [6:0] funct7; 
    wire [2:0] funct3;

    reg [31:0] alusrc1, alusrc2;    
    wire [31:0] aluout; 
    reg [4:0] alucontrol;   
    reg alusrc, regwrite, lui, memwrite;
    wire Nflag, Zflag, Cflag, Vflag; 


// register for pc

    always @ (posedge clk, posedge rst)
    begin
        if (rst)
            pc <= 0; 
      //  else if
           // pc <= pc + {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0};
        else
            pc <= pc+4; 
    end
    
           
    // register file
    regfile regfile_inst( 
        .clk(clk), 
        .we(regwrite),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .rd_data(rd_data),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data)
    );  
  
    assign rs1 = inst[19:15]; 
    assign rs2 = inst[24:20];
    assign rd = inst[11:7];
  
    assign opcode = inst[6:0];
    assign funct7 = inst[31:25];
    assign funct3 = inst[14:12];
     
    //generate constrol signal for alu 
// generate constrol signal for alu
    always @* begin
        case (opcode)
            `OP_R: // R-type
                case ({funct7, funct3}) 
                    10'b0000000_000: alucontrol = `ALU_ADD; //ADD
                    10'b0100000_000: alucontrol = `ALU_SUB; //SUB
                    10'b0000000_001: alucontrol = `ALU_SLL; //SLL
                    10'b0000000_010: alucontrol = `ALU_SLT; //SLT
                    10'b0000000_011: alucontrol = `ALU_SLTU; //SLTU
                    10'b0000000_100: alucontrol = `ALU_XOR;  //XOR
                    10'b0000000_101: alucontrol = `ALU_SRL;  //SRL
                    10'b0100000_101: alucontrol = `ALU_SRA;  //SRA
                    10'b0000000_101: alucontrol = `ALU_SRL; //SRL
                    10'b0000000_110: alucontrol = `ALU_OR;  //OR
                    10'b0000000_111: alucontrol = `ALU_AND; //AND
                    default: alucontrol = `ALU_ADD;
                endcase
            `OP_I_ARITH: // I-Type Arithemtic
                case (funct3)
                    3'b000: alucontrol = `ALU_ADD;  //ADDI
                    3'b010: alucontrol = `ALU_SUB;  //SLTI
                    3'b011: alucontrol = `ALU_SUB;  //SLTIU
                    3'b100: alucontrol = `ALU_XOR;  //XORI
                    3'b110: alucontrol = `ALU_OR;   //ORI
                    3'b111: alucontrol = `ALU_AND;  //ANDI
                    default: alucontrol = `ALU_ADD;
                endcase
            `OP_LUI, `OP_AUIPC: // LUI, AUIPC
                alucontrol = `ALU_ADD;
            `OP_JAL: // JAL
                alucontrol = `ALU_ADD;
            `OP_JALR: // JALR
                alucontrol = `ALU_ADD;
            `OP_B: // B-type
                case (funct3)
                    3'b000: alucontrol = `ALU_SUB;  //BEQ
                    3'b001: alucontrol = `ALU_SUB;  //BNE
                    3'b100: alucontrol = `ALU_SUB;  //BLT
                    3'b101: alucontrol = `ALU_SUB;  //BGE
                    3'b110: alucontrol = `ALU_SUB;  //BLTU
                    3'b111: alucontrol = `ALU_SUB;  //BGEU
                    default: alucontrol = `ALU_ADD;
                endcase
            `OP_I_LOAD: // I-Type Load
                alucontrol = `ALU_ADD;
            `OP_S: // S-type
                alucontrol = `ALU_ADD;
            default:
                alucontrol = `ALU_ADD;
        endcase
    end
  
    //generate various control signals according to opcode
    always @* begin
        case (opcode)
              `OP_R: begin //R-type
                       alusrc = 1'b0; 
                       regwrite = 1'b1;
                       lui = 1'b0; 
                       memwrite = 1'b0; 
                   end 
                   `OP_I_ARITH: begin //I-type
                       alusrc = 1'b1; 
                       regwrite = 1'b1;
                       lui = 1'b0; 
                       memwrite = 1'b0;
                   end
                   `OP_LUI: begin
                       alusrc = 1'b0; 
                       regwrite = 1'b1;
                       lui = 1'b1; 
                       memwrite = 1'b0;
                    end
                    `OP_S: begin
                        alusrc = 1'b0; 
                        regwrite = 1'b0;
                        lui = 1'b0; 
                        memwrite = 1'b1;
                     end
                    default: begin
                       alusrc = 1'b0;
                       regwrite = 1'b0;
                       lui = 1'b0;
                       memwrite = 1'b0;
                   end
         endcase
    end 

    
    //always for alusrc1, alusrc2
    always @* begin
        if (lui) alusrc1 = 0; 
        else alusrc1 = rs1_data; 
    end

    always @* begin
        if (alusrc) alusrc2 = {{20{inst[31]}}, inst[31:20]};
        else if (lui) alusrc2 = {inst[31:12], 12'b0};
        else if (memwrite) alusrc2 = {{20{inst[31]}}, inst[31:25], inst[11:7]};  
        else alusrc2 = rs2_data;
    end
    
      
    alu alu_inst(
          .a(alusrc1), 
          .b(alusrc2),
          .control(alucontrol),
          .result(aluout),
          .N(Nflag),
          .Z(Zflag),
          .C(Cflag),
          .V(Vflag)
    );   
    
    assign rd_data = aluout;
    assign MemAddr = aluout;  
    assign MemWdata = rs2_data; 
    assign MemWen = memwrite; 


endmodule