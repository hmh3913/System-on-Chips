	.file	"SevenSeg.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	SevenSeg
	.type	SevenSeg, @function
SevenSeg:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	li	a5,-57344
	addi	a5,a5,12
	sw	a5,-28(s0)
	li	a5,-57344
	addi	a5,a5,8
	sw	a5,-32(s0)
	li	a5,341
	sw	a5,-24(s0)
.L10:
	lw	a5,-28(s0)
	li	a4,91
	sw	a4,0(a5)
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	xori	a5,a5,1023
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,1048576
	addi	a5,a5,-2
	bleu	a4,a5,.L3
	sw	zero,-20(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L5
	lw	a5,-28(s0)
	li	a4,119
	sw	a4,0(a5)
	lw	a5,-32(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	xori	a5,a5,1023
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L6
.L7:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a4,-20(s0)
	li	a5,1048576
	addi	a5,a5,-2
	bleu	a4,a5,.L7
	sw	zero,-20(s0)
	j	.L8
.L9:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L8:
	lw	a4,-20(s0)
	li	a5,15
	bleu	a4,a5,.L9
	j	.L10
	.size	SevenSeg, .-SevenSeg
	.ident	"GCC: (g) 12.2.0"
