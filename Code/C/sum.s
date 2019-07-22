	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4618441417868443648     ## double 6
LCPI0_1:
	.quad	4617315517961601024     ## double 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -44(%rbp)         ## 4-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	callq	mcount
	xorl	%eax, %eax
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI0_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	movl	$0, -4(%rbp)
	movl	-44(%rbp), %edi         ## 4-byte Reload
	movl	%edi, -8(%rbp)
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	%rsi, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
