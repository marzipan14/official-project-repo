	.text
	.file	"swprintf.c"
	.globl	_swprintf_r             # -- Begin function _swprintf_r
	.p2align	4, 0x90
	.type	_swprintf_r,@function
_swprintf_r:                            # @_swprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
	movq	%rdx, %rbx
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
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	cmpq	$536870911, %rbx        # imm = 0x1FFFFFFF
	ja	.LBB0_6
# %bb.3:
	movl	$-65016, -384(%rbp)     # imm = 0xFFFF0208
	movq	%rsi, -400(%rbp)
	movq	%rsi, -376(%rbp)
	xorl	%eax, %eax
	testq	%rbx, %rbx
	leal	-4(,%rbx,4), %edx
	cmovel	%eax, %edx
	movl	%edx, -388(%rbp)
	movl	%edx, -368(%rbp)
	movabsq	$206158430240, %rax     # imm = 0x3000000020
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-400(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	_svfwprintf_r
	testq	%rbx, %rbx
	je	.LBB0_5
# %bb.4:
	movq	-400(%rbp), %rcx
	movl	$0, (%rcx)
.LBB0_5:
	movslq	%eax, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB0_7
.LBB0_6:
	movl	$139, (%r14)
	movl	$-1, %eax
.LBB0_7:
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_swprintf_r, .Lfunc_end0-_swprintf_r
                                        # -- End function
	.globl	swprintf                # -- Begin function swprintf
	.p2align	4, 0x90
	.type	swprintf,@function
swprintf:                               # @swprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB1_2:
	movq	%rcx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	callq	__getreent
	movq	%rax, %r15
	cmpq	$536870911, %rbx        # imm = 0x1FFFFFFF
	ja	.LBB1_6
# %bb.3:
	movl	$-65016, -400(%rbp)     # imm = 0xFFFF0208
	movq	%r12, -416(%rbp)
	movq	%r12, -392(%rbp)
	xorl	%eax, %eax
	testq	%rbx, %rbx
	leal	-4(,%rbx,4), %ecx
	cmovel	%eax, %ecx
	movl	%ecx, -404(%rbp)
	movl	%ecx, -384(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-416(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_svfwprintf_r
	testq	%rbx, %rbx
	je	.LBB1_5
# %bb.4:
	movq	-416(%rbp), %rcx
	movl	$0, (%rcx)
.LBB1_5:
	movslq	%eax, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB1_7
.LBB1_6:
	movl	$139, (%r15)
	movl	$-1, %eax
.LBB1_7:
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	swprintf, .Lfunc_end1-swprintf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
