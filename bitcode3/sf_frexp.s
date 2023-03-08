	.text
	.file	"sf_frexp.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function frexpf
.LCPI0_0:
	.long	1275068416              # float 33554432
	.text
	.globl	frexpf
	.p2align	4, 0x90
	.type	frexpf,@function
frexpf:                                 # @frexpf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$0, (%rdi)
	leal	-1(%rcx), %edx
	cmpl	$2139095038, %edx       # imm = 0x7F7FFFFE
	ja	.LBB0_4
# %bb.1:
	xorl	%edx, %edx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	ja	.LBB0_3
# %bb.2:
	mulss	.LCPI0_0(%rip), %xmm0
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$-25, (%rdi)
	movl	$-25, %edx
.LBB0_3:
	shrl	$23, %ecx
	addl	%edx, %ecx
	addl	$-126, %ecx
	movl	%ecx, (%rdi)
	andl	$-2139095041, %eax      # imm = 0x807FFFFF
	orl	$1056964608, %eax       # imm = 0x3F000000
	movd	%eax, %xmm0
.LBB0_4:
	retq
.Lfunc_end0:
	.size	frexpf, .Lfunc_end0-frexpf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
