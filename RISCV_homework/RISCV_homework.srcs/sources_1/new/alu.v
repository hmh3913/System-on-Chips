`define     ALU_ADD         4'b00_00
`define     ALU_SUB         4'b00_01
`define     ALU_PASS        4'b00_11
`define     ALU_OR          4'b01_00
`define     ALU_AND         4'b01_01
`define     ALU_XOR         4'b01_11
`define     ALU_SRL         4'b10_00
`define     ALU_SRA         4'b10_10 
`define     ALU_SLL         4'b10_01
`define     ALU_SLT         4'b11_01
`define     ALU_SLTU        4'b11_11

module alu(
input [31:0] a, b,
input [4:0] control,
output reg [31:0] result,
output N,
output Z,
output C,
output V
);
//sel = control z = n
    wire [31:0] sum, difference;
    reg  [31:0] tempA, tempB;
    wire [32:0] c;
    always @ (*) begin
        case (control)
            `ALU_ADD: begin
                result = a + b; 
            end
            `ALU_SUB: begin
                result = a - b;
            end
            `ALU_PASS:result = result;  
            `ALU_OR:  result = a | b;
            `ALU_AND: result = a & b;
            `ALU_XOR: result = a ^ b;
            `ALU_SRL: result = a >> b;
            `ALU_SRA: result = a >>> b;
            `ALU_SLL: result = a << b;
            `ALU_SLT: result = (a<b) ? 1 : 0;
            `ALU_SLTU: begin
                if (a[31])
                    tempA = (~a) + 1;
                else
                    tempA = tempA;
                if (b[31])
                    tempB = (~b) + 1;
                else
                    tempB = tempB;
                result = ( tempA < tempB ) ? 1 : 0;
            end
            default: result = 0;
        endcase

    end
    
    RippleAdder rca (
        .a(a), 
        .b(b),
        .ci(1'b0),
        .s(sum),
        .co(c[32]),
        .last_ci(c[31])        
    );
    assign difference = a - b;
    assign N = sum[31];
    assign Z = (sum == 32'b0);
    assign C = c[32];   //c32 = cout 
    assign V = c[31] ^ c[32];
    
endmodule
