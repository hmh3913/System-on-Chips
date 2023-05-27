module alu(
input [31:0] a, b,
input [4:0] control,
output reg [31:0] result,
output N,
output Z,
output C,
output V
);
// case statements
// use addsub module in digital system course
assign N = sum[31];
assign Z = (sum == 32'b0);
assign C = c[32]; // c[32]= cout
assign V = c[31] ^ c[32];
endmodule