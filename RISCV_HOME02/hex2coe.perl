#!/usr/bin/perl
# It generates coe files for Xilinx FPGA Memory initialization
# Programmed assuming only for 4KB Instruction and Data Memories

open (FH, "<labcode.hex") or die "oooops: $!";
$lcount = 0;
while (<FH>)
{
         $lcount++;
}
#print $lcount;
close(FH);

open (FH, "<labcode.hex") or die "oooops: $!";

# Instruction & Data Memory Initialization
$file = 'insts_data.coe';
open(MEM, ">$file");

print MEM "memory_initialization_radix=16;\n";
print MEM "memory_initialization_vector=\n";

while (<FH>)
{
         chomp;
     if ($lcount > 1) {print MEM "$_,\n";}
     else  {print MEM "$_;";}
         $lcount--;
}
close(MEM);

close(FH);
