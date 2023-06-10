`define     OP_LUI          7'b0110111
`define     OP_AUIPC        7'b0010111
`define     OP_JAL          7'b1101111
`define     OP_JALR         7'b1100111
`define     OP_B            7'b1100011
`define     OP_I_LOAD       7'b0000011
`define     OP_S            7'b0100011
`define     OP_I_ARITH      7'b0010011
`define     OP_R            7'b0110011


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
    wire [31:0] rs1_data, rs2_data; 
    reg [31:0] rd_data;
    wire [6:0] funct7; 
    wire [2:0] funct3;

    reg [31:0] alusrc1, alusrc2;    
    wire [31:0] aluout; 
    reg [4:0] alucontrol;   
    reg alusrc, regwrite, lui, memwrite, branch, jal, jalr, mem2reg;
    wire fjbeq, fjbne, fjblt, fjbge, fjbltu, fjbgeu;
    wire Nflag, Zflag, Cflag, Vflag;
    wire beq_true, bne_true, blt_true, bge_true, bltu_true, bgeu_true;

//branch operation
assign fjbeq = {funct3 == 3'b000};
assign fjbne = {funct3 == 3'b001};
assign fjblt = {funct3 == 3'b100};
assign fjbge = {funct3 == 3'b101};
assign fjbltu = {funct3 == 3'b110};
assign fjbgeu = {funct3 == 3'b111};

assign bgeu_true = branch & fjbgeu & Cflag;

// register for pc

    always @ (posedge clk, posedge rst)
    begin
        if (rst)
            pc <= 0;
        else if(jalr)
            pc <= {aluout[31:1], 1'b0};
        else if(jal)
            pc <= pc + {{11{inst[31]}}, {inst[31], inst[19:12], inst[20], inst[30:21], 1'b0} };
        else if(bgeu_true)
            pc <=pc + {{19{inst[31]}}, {inst[31], inst[7], inst[30:25], inst[11:8], 1'b0} };
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
    always @* begin 
 
        case (opcode)
            `OP_R: //R-type
                case ({funct7,funct3}) 
                    10'b0000000_000: alucontrol = `ALU_ADD;
                    10'b0100000_000: alucontrol = `ALU_SUB;
                    10'b0000000_001: alucontrol = `ALU_SLL;
                    10'b0000000_010: alucontrol = `ALU_SLT;
                    10'b0000000_011: alucontrol = `ALU_SLTU;
                    10'b0000000_100: alucontrol = `ALU_XOR;
                    10'b0000000_101: alucontrol = `ALU_SRL;
                    10'b0100000_101: alucontrol = `ALU_SRA;
                    10'b0000000_110: alucontrol = `ALU_OR;
                    10'b0000000_111: alucontrol = `ALU_AND;
                    default: alucontrol = `ALU_ADD;
                endcase
            `OP_I_ARITH: //I-Type Arithemtic
                case (funct3)
                    3'b000 : alucontrol = `ALU_ADD; //ADDI
                    3'b010 : alucontrol = `ALU_SUB; //SLTI
                    3'b011 : alucontrol = `ALU_SUB; //SLTIU
                    3'b100 : alucontrol = `ALU_XOR; //XORI
                    3'b110 : alucontrol = `ALU_OR; //ORI
                    3'b111 : alucontrol = `ALU_AND; //ANDI
                    default: alucontrol = `ALU_ADD; 
                endcase
            `OP_LUI : alucontrol = `ALU_ADD;
            `OP_JAL : alucontrol = `ALU_ADD;
            `OP_JALR : alucontrol = `ALU_ADD;
            `OP_I_LOAD : alucontrol = `ALU_ADD;
            `OP_AUIPC : alucontrol = `ALU_ADD;
            `OP_S: alucontrol = `ALU_ADD;
            `OP_B: alucontrol = `ALU_SUB;
            default: 
                alucontrol = 5'b0;
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
                jal = 1'b0;
                jalr = 1'b0;
                mem2reg = 1'b0;
                branch = 1'b0; 
            end 
            `OP_I_ARITH: begin //I-type
                alusrc = 1'b1; 
                regwrite = 1'b1;
                lui = 1'b0; 
                memwrite = 1'b0;
                jal = 1'b0;
                jalr = 1'b0;
                mem2reg = 1'b0;
                branch = 1'b0; 
                
            end
            `OP_LUI: begin
                alusrc = 1'b0; 
                regwrite = 1'b1;
                lui = 1'b1; 
                memwrite = 1'b0;
                jal = 1'b0;
                jalr = 1'b0;
                mem2reg = 1'b0;
                branch = 1'b0; 
             end
             `OP_S: begin
                 alusrc = 1'b0; 
                 regwrite = 1'b0;
                 lui = 1'b0; 
                 memwrite = 1'b1;
                 jal = 1'b0;
                 jalr = 1'b0;
                 mem2reg = 1'b0;
                 branch = 1'b0; 
              end
              `OP_JAL: begin
                alusrc = 1'b0; 
                regwrite = 1'b1;
                lui = 1'b0; 
                memwrite = 1'b0;
                jal = 1'b1;
                jalr = 1'b0;
                mem2reg = 1'b1;
                branch = 1'b0;
              end 
              `OP_JALR: begin
                alusrc = 1'b1; 
                regwrite = 1'b1;
                lui = 1'b0; 
                memwrite = 1'b0;
                jal = 1'b0;
                jalr = 1'b1;
                mem2reg = 1'b0;
                branch = 1'b1;
             end
             `OP_B: begin
                alusrc = 1'b0; 
                regwrite = 1'b0;
                lui = 1'b0; 
                memwrite = 1'b1;
                jal = 1'b0;
                jalr = 1'b0;
                mem2reg = 1'b0;
                branch = 1'b1;
             end
             `OP_I_LOAD: begin
                alusrc = 1'b1; 
                regwrite = 1'b1;
                lui = 1'b0; 
                memwrite = 1'b0;
                jal = 1'b0;
                jalr = 1'b0;
                mem2reg = 1'b1;
                branch = 1'b0;
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
        else if (jal) alusrc1 = pc;
        else alusrc1 = rs1_data; 
    end

    always @* begin
        if (alusrc) alusrc2 = {{20{inst[31]}}, inst[31:20]};
        else if (lui) alusrc2 = {inst[31:12], 12'b0};
        else if (memwrite) alusrc2 = {{20{inst[31]}}, inst[31:25], inst[11:7]};
        else if (jal) alusrc2 = 4;  
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
    
   // assign rd_data = aluout;
    always@* begin
        if(mem2reg) rd_data = MemRdata;
        else if(jalr) rd_data = pc+4;
        else rd_data = aluout;
    end
    assign MemAddr = aluout;  
    assign MemWdata = rs2_data; 
    assign MemWen = memwrite; 


endmodule
