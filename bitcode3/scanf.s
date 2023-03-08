	.text
	.file	"scanf.c"
	.globl	scanf                   # -- Begin function scanf
	.p2align	4, 0x90
	.type	scanf,@function
scanf:                                  # @scanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$200, %rsp
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB0_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	callq	__getreent
	movabsq	$206158430216, %rcx     # imm = 0x3000000008
	movq	%rcx, -32(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	leaq	-208(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	8(%rax), %rsi
	leaq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	_vfscanf_r
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scanf, .Lfunc_end0-scanf
                                        # -- End function
	.globl	_scanf_r                # -- Begin function _scanf_r
	.p2align	4, 0x90
	.type	_scanf_r,@function
_scanf_r:                               # @_scanf_r
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
	callq	_vfscanf_r
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_scanf_r, .Lfunc_end1-_scanf_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
