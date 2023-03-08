	.text
	.file	"sprintf.c"
	.globl	_sprintf_r              # -- Begin function _sprintf_r
	.p2align	4, 0x90
	.type	_sprintf_r,@function
_sprintf_r:                             # @_sprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$384, %rsp              # imm = 0x180
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
	movq	%rsi, -384(%rbp)
	movq	%rsi, -360(%rbp)
	movabsq	$-279239446233089, %rax # imm = 0xFFFF02087FFFFFFF
	movq	%rax, -372(%rbp)
	movl	$2147483647, -352(%rbp) # imm = 0x7FFFFFFF
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-384(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	callq	_svfprintf_r
	movq	-384(%rbp), %rcx
	movb	$0, (%rcx)
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_sprintf_r, .Lfunc_end0-_sprintf_r
                                        # -- End function
	.globl	sprintf                 # -- Begin function sprintf
	.p2align	4, 0x90
	.type	sprintf,@function
sprintf:                                # @sprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
	movq	%rsi, %rbx
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
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	movq	%rdi, -384(%rbp)
	movq	%rdi, -360(%rbp)
	movabsq	$-279239446233089, %rax # imm = 0xFFFF02087FFFFFFF
	movq	%rax, -372(%rbp)
	movl	$2147483647, -352(%rbp) # imm = 0x7FFFFFFF
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	__getreent
	leaq	-384(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	_svfprintf_r
	movq	-384(%rbp), %rcx
	movb	$0, (%rcx)
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sprintf, .Lfunc_end1-sprintf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
