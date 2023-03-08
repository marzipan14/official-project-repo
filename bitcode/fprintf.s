	.text
	.file	"fprintf.c"
	.globl	_fprintf_r              # -- Begin function _fprintf_r
	.p2align	4, 0x90
	.type	_fprintf_r,@function
_fprintf_r:                             # @_fprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
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
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rcx
	callq	_vfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fprintf_r, .Lfunc_end0-_fprintf_r
                                        # -- End function
	.globl	fprintf                 # -- Begin function fprintf
	.p2align	4, 0x90
	.type	fprintf,@function
fprintf:                                # @fprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB1_2:
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -48(%rbp)
	callq	__getreent
	leaq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_vfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fprintf, .Lfunc_end1-fprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
