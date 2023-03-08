	.text
	.file	"sf_cos.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function cosf
.LCPI0_0:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	cosf
	.p2align	4, 0x90
	.type	cosf,@function
cosf:                                   # @cosf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movd	%xmm0, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$1061752792, %eax       # imm = 0x3F490FD8
	ja	.LBB0_2
# %bb.1:
	xorps	%xmm1, %xmm1
	callq	__kernel_cosf
	jmp	.LBB0_11
.LBB0_2:
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jae	.LBB0_3
# %bb.4:
	leaq	-8(%rbp), %rdi
	callq	__ieee754_rem_pio2f
	andb	$3, %al
	cmpb	$2, %al
	je	.LBB0_9
# %bb.5:
	cmpb	$1, %al
	je	.LBB0_8
# %bb.6:
	testb	%al, %al
	jne	.LBB0_10
# %bb.7:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	callq	__kernel_cosf
	jmp	.LBB0_11
.LBB0_3:
	subss	%xmm0, %xmm0
	jmp	.LBB0_11
.LBB0_9:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	callq	__kernel_cosf
	xorps	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_11
.LBB0_8:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %edi
	callq	__kernel_sinf
	xorps	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_11
.LBB0_10:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %edi
	callq	__kernel_sinf
.LBB0_11:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cosf, .Lfunc_end0-cosf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
