	.text
	.file	"dprintf.c"
	.globl	_dprintf_r              # -- Begin function _dprintf_r
	.p2align	4, 0x90
	.type	_dprintf_r,@function
_dprintf_r:                             # @_dprintf_r
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
	callq	_vdprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_dprintf_r, .Lfunc_end0-_dprintf_r
                                        # -- End function
	.globl	dprintf                 # -- Begin function dprintf
	.p2align	4, 0x90
	.type	dprintf,@function
dprintf:                                # @dprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
	movq	%rsi, %r14
	movl	%edi, %ebx
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
	callq	__getreent
	movabsq	$206158430224, %rcx     # imm = 0x3000000010
	movq	%rcx, -48(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	leaq	-224(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_vdprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dprintf, .Lfunc_end1-dprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
