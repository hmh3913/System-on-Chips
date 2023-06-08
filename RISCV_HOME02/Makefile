HOME=/home/hmh/rv32i
RISCVBIN=$(HOME)/bin

AS=$(RISCVBIN)/riscv32-unknown-elf-as
LD=$(RISCVBIN)/riscv32-unknown-elf-ld
CC=$(RISCVBIN)/riscv32-unknown-elf-gcc
CPP=$(RISCVBIN)/riscv32-unknown-elf-cpp
OBJDUMP=$(RISCVBIN)/riscv32-unknown-elf-objdump
OBJCOPY=$(RISCVBIN)/riscv32-unknown-elf-objcopy

ASFLAGS= -g -march=rv32i
LDFLAGS= -N -X --no-warn-rwx-segments -Tlabcode.lds
CCFLAGS= -c -g -march=rv32i

all: SevenSeg
SevenSeg: lab0.o SevenSeg.o
	$(LD) $(LDFLAGS) lab0.o SevenSeg.o -o labcode
	$(OBJDUMP) -xS  labcode > labcode.dump
	$(OBJCOPY) -O  binary labcode labcode.bin
	./bin2hex.perl > labcode.hex
	./hex2coe.perl
lab0.o: lab0.s
	$(AS) $(ASFLAGS) lab0.s -o lab0.o
SevenSeg.o: SevenSeg.c
	$(CPP) SevenSeg.c > SevenSeg.i
	$(CC) -Wall -S SevenSeg.i
	$(AS) $(ASFLAGS) SevenSeg.s -o SevenSeg.o
clean:
	rm -rf *.o *.mif *.dump *.hex *.bin *.mif *.coe labcode

