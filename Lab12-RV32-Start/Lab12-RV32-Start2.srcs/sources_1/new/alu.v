`define     ALU_ADD         5'b0_0000
`define     ALU_SUB         5'b1_0000
`define     ALU_OR          5'b0_0010
`define     ALU_AND         5'b0_0001
`define     ALU_XOR         5'b0_0011
`define     ALU_SRL         5'b0_0101
`define     ALU_SRA         5'b0_0110
`define     ALU_SLL         5'b0_0100
`define     ALU_SLT         5'b1_0111
`define     ALU_SLTU        5'b1_1000

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
    wire [31:0] sum;
    reg  [31:0] tempA, tempB;
    wire [32:0] c;
    wire sign;
    wire [31:0] bxor;
    always @ (*) begin
        case (control)
            `ALU_ADD: begin
                result = a + b; 
            end
            `ALU_SUB: begin
                result = a - b;
            end
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
    
    assign sign = control[4];
    assign bxor = (sign)? ~b : b;
    
    RippleAdder rca (
        .a(a), 
        .b(bxor),
        .ci(1'b0),
        .s(sum),
        .co(c[32]),
        .last_ci(c[31])        
    );
    assign N = sum[31];
    assign Z = (sum == 32'b0);
    assign C = c[32];   //c32 = cout 
    assign V = c[31] ^ c[32];
    
endmodule