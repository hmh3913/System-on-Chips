
module RippleAdder (
    input[31:0] a, 
    input[31:0] b,
    input ci,
    output[31:0] s,
    output co,
    output last_ci
);
    
    wire [32:0] c;
    
    assign c[0] = ci;
    assign co = c[32];
    assign last_ci = c[31];

  FullAdder fa0(a[0], b[0], c[0], s[0], c[1]);
  FullAdder fa1(a[1], b[1], c[1], s[1], c[2]);
  FullAdder fa2(a[2], b[2], c[2], s[2], c[3]);
  FullAdder fa3(a[3], b[3], c[3], s[3], c[4]);
  FullAdder fa4(a[4], b[4], c[4], s[4], c[5]);
  FullAdder fa5(a[5], b[5], c[5], s[5], c[6]);
  FullAdder fa6(a[6], b[6], c[6], s[6], c[7]);
  FullAdder fa7(a[7], b[7], c[7], s[7], c[8]);
  FullAdder fa8(a[8], b[8], c[8], s[8], c[9]);
  FullAdder fa9(a[9], b[9], c[9], s[9], c[10]);
  FullAdder fa10(a[10], b[10], c[10], s[10], c[11]);
  FullAdder fa11(a[11], b[11], c[11], s[11], c[12]);
  FullAdder fa12(a[12], b[12], c[12], s[12], c[13]);
  FullAdder fa13(a[13], b[13], c[13], s[13], c[14]);
  FullAdder fa14(a[14], b[14], c[14], s[14], c[15]);
  FullAdder fa15(a[15], b[15], c[15], s[15], c[16]);
  FullAdder fa16(a[16], b[16], c[16], s[16], c[17]);
  FullAdder fa17(a[17], b[17], c[17], s[17], c[18]);
  FullAdder fa18(a[18], b[18], c[18], s[18], c[19]);
  FullAdder fa19(a[19], b[19], c[19], s[19], c[20]);
  FullAdder fa20(a[20], b[20], c[20], s[20], c[21]);
  FullAdder fa21(a[21], b[21], c[21], s[21], c[22]);
  FullAdder fa22(a[22], b[22], c[22], s[22], c[23]);
  FullAdder fa23(a[23], b[23], c[23], s[23], c[24]);
  FullAdder fa24(a[24], b[24], c[24], s[24], c[25]);
  FullAdder fa25(a[25], b[25], c[25], s[25], c[26]);
  FullAdder fa26(a[26], b[26], c[26], s[26], c[27]);
  FullAdder fa27(a[27], b[27], c[27], s[27], c[28]);
  FullAdder fa28(a[28], b[28], c[28], s[28], c[29]);
  FullAdder fa29(a[29], b[29], c[29], s[29], c[30]);
  FullAdder fa30(a[30], b[30], c[30], s[30], c[31]);
  FullAdder fa31(a[31], b[31], c[31], s[31], c[32]);
    

    
endmodule