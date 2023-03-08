	.text
	.file	"iscanf.c"
	.globl	iscanf                  # -- Begin function iscanf
	.p2align	4, 0x90
	.type	iscanf,@function
iscanf:                                 # @iscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB0_2:
	movq	%rsi, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -48(%rbp)
	callq	__getreent
	movq	%rax, %rbx
	callq	__getreent
	movq	8(%rax), %rsi
	leaq	-48(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	__svfiscanf_r
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iscanf, .Lfunc_end0-iscanf
                                        # -- End function
	.globl	_iscanf_r               # -- Begin function _iscanf_r
	.p2align	4, 0x90
	.type	_iscanf_r,@function
_iscanf_r:                              # @_iscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdx, %r10
	movq	%rsi, %rdx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
	movq	%r10, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -32(%rbp)
	movq	8(%rdi), %rsi
	leaq	-32(%rbp), %rcx
	callq	__svfiscanf_r
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_iscanf_r, .Lfunc_end1-_iscanf_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
