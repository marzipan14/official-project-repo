	.text
	.file	"sf_scalbln.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function scalblnf
.LCPI0_0:
	.long	1275068416              # float 33554432
.LCPI0_1:
	.long	855638016               # float 2.98023224E-8
.LCPI0_2:
	.long	228737632               # float 1.0E-30
.LCPI0_3:
	.long	1900671690              # float 1.00000002E+30
	.text
	.globl	scalblnf
	.p2align	4, 0x90
	.type	scalblnf,@function
scalblnf:                               # @scalblnf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	cmpb	$-1, %cl
	je	.LBB0_15
# %bb.1:
	testb	%cl, %cl
	jne	.LBB0_2
# %bb.3:
	testl	$2147483647, %eax       # imm = 0x7FFFFFFF
	je	.LBB0_14
# %bb.4:
	mulss	.LCPI0_0(%rip), %xmm1
	movd	%xmm1, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	addl	$-25, %ecx
	cmpq	$50000, %rdi            # imm = 0xC350
	jle	.LBB0_6
	jmp	.LBB0_7
.LBB0_15:
	addss	%xmm1, %xmm1
	jmp	.LBB0_14
.LBB0_2:
	movzbl	%cl, %ecx
	cmpq	$50000, %rdi            # imm = 0xC350
	jg	.LBB0_7
.LBB0_6:
	addl	%edi, %ecx
	cmpl	$255, %ecx
	jge	.LBB0_7
# %bb.8:
	cmpq	$-50001, %rdi           # imm = 0xFFFF3CAF
	jg	.LBB0_10
.LBB0_9:
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	copysignf
	movaps	%xmm0, %xmm1
	mulss	.LCPI0_2(%rip), %xmm1
	jmp	.LBB0_14
.LBB0_7:
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	copysignf
	movaps	%xmm0, %xmm1
	mulss	.LCPI0_3(%rip), %xmm1
	jmp	.LBB0_14
.LBB0_10:
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.11:
	andl	$-2139095041, %eax      # imm = 0x807FFFFF
	shll	$23, %ecx
	orl	%eax, %ecx
	movd	%ecx, %xmm1
	jmp	.LBB0_14
.LBB0_12:
	cmpl	$-25, %ecx
	jle	.LBB0_9
# %bb.13:
	andl	$-2139095041, %eax      # imm = 0x807FFFFF
	shll	$23, %ecx
	addl	$209715200, %ecx        # imm = 0xC800000
	orl	%eax, %ecx
	movd	%ecx, %xmm1
	mulss	.LCPI0_1(%rip), %xmm1
.LBB0_14:
	movaps	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scalblnf, .Lfunc_end0-scalblnf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
