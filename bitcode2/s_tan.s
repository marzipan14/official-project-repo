	.text
	.file	"s_tan.c"
	.globl	tan                     # -- Begin function tan
	.p2align	4, 0x90
	.type	tan,@function
tan:                                    # @tan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%xmm0, %rax
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1072243195, %eax       # imm = 0x3FE921FB
	ja	.LBB0_2
# %bb.1:
	xorps	%xmm1, %xmm1
	movl	$1, %edi
	jmp	.LBB0_5
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jb	.LBB0_4
# %bb.3:
	subsd	%xmm0, %xmm0
	jmp	.LBB0_6
.LBB0_4:
	leaq	-16(%rbp), %rdi
	callq	__ieee754_rem_pio2
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addl	%eax, %eax
	andl	$2, %eax
	movl	$1, %edi
	subl	%eax, %edi
.LBB0_5:
	callq	__kernel_tan
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tan, .Lfunc_end0-tan
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
