	.text
	.file	"snprintf.c"
	.globl	_snprintf_r             # -- Begin function _snprintf_r
	.p2align	4, 0x90
	.type	_snprintf_r,@function
_snprintf_r:                            # @_snprintf_r
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
	movl	$42, __A_VARIABLE(%rip)
	testq	$-2147483648, %rbx      # imm = 0x80000000
	je	.LBB0_4
# %bb.3:
	movl	$139, (%r14)
	movl	$-1, %eax
	jmp	.LBB0_8
.LBB0_4:
	movl	$-65016, -384(%rbp)     # imm = 0xFFFF0208
	movq	%rsi, -400(%rbp)
	movq	%rsi, -376(%rbp)
	leal	-1(%rbx), %eax
	xorl	%edx, %edx
	testq	%rbx, %rbx
	cmovnel	%eax, %edx
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
	callq	_svfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2, %eax
	jg	.LBB0_6
# %bb.5:
	movl	$139, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_8
# %bb.7:
	movq	-400(%rbp), %rcx
	movb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_snprintf_r, .Lfunc_end0-_snprintf_r
                                        # -- End function
	.globl	snprintf                # -- Begin function snprintf
	.p2align	4, 0x90
	.type	snprintf,@function
snprintf:                               # @snprintf
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
	movl	$42, __A_VARIABLE(%rip)
	testq	$-2147483648, %rbx      # imm = 0x80000000
	je	.LBB1_4
# %bb.3:
	movl	$139, (%r15)
	movl	$-1, %eax
	jmp	.LBB1_8
.LBB1_4:
	movl	$-65016, -400(%rbp)     # imm = 0xFFFF0208
	movq	%r12, -416(%rbp)
	movq	%r12, -392(%rbp)
	leal	-1(%rbx), %eax
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	cmovnel	%eax, %ecx
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
	callq	_svfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2, %eax
	jg	.LBB1_6
# %bb.5:
	movl	$139, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_8
# %bb.7:
	movq	-416(%rbp), %rcx
	movb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	snprintf, .Lfunc_end1-snprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
