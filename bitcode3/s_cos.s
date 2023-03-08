	.text
	.file	"s_cos.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function cos
.LCPI0_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	cos
	.p2align	4, 0x90
	.type	cos,@function
cos:                                    # @cos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%xmm0, %rax
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$1072243195, %eax       # imm = 0x3FE921FB
	ja	.LBB0_2
# %bb.1:
	xorps	%xmm1, %xmm1
	callq	__kernel_cos
	jmp	.LBB0_11
.LBB0_2:
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jb	.LBB0_4
# %bb.3:
	subsd	%xmm0, %xmm0
	jmp	.LBB0_11
.LBB0_4:
	leaq	-16(%rbp), %rdi
	callq	__ieee754_rem_pio2
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
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	callq	__kernel_cos
	jmp	.LBB0_11
.LBB0_9:
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	callq	__kernel_cos
	xorpd	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_11
.LBB0_8:
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movl	$1, %edi
	callq	__kernel_sin
	xorpd	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_11
.LBB0_10:
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movl	$1, %edi
	callq	__kernel_sin
.LBB0_11:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cos, .Lfunc_end0-cos
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
