	.text
	.file	"sf_tan.c"
	.globl	tanf                    # -- Begin function tanf
	.p2align	4, 0x90
	.type	tanf,@function
tanf:                                   # @tanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movd	%xmm0, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$1061752794, %eax       # imm = 0x3F490FDA
	ja	.LBB0_2
# %bb.1:
	xorps	%xmm1, %xmm1
	movl	$1, %edi
	jmp	.LBB0_5
.LBB0_2:
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jae	.LBB0_3
# %bb.4:
	leaq	-8(%rbp), %rdi
	callq	__ieee754_rem_pio2f
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	addl	%eax, %eax
	andl	$2, %eax
	movl	$1, %edi
	subl	%eax, %edi
.LBB0_5:
	callq	__kernel_tanf
	jmp	.LBB0_6
.LBB0_3:
	subss	%xmm0, %xmm0
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tanf, .Lfunc_end0-tanf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
