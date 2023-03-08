	.text
	.file	"asniprintf.c"
	.globl	_asniprintf_r           # -- Begin function _asniprintf_r
	.p2align	4, 0x90
	.type	_asniprintf_r,@function
_asniprintf_r:                          # @_asniprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
	movq	%rdx, %rbx
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movaps	%xmm0, -336(%rbp)
	movaps	%xmm1, -320(%rbp)
	movaps	%xmm2, -304(%rbp)
	movaps	%xmm3, -288(%rbp)
	movaps	%xmm4, -272(%rbp)
	movaps	%xmm5, -256(%rbp)
	movaps	%xmm6, -240(%rbp)
	movaps	%xmm7, -224(%rbp)
.LBB0_2:
	movq	%r8, -352(%rbp)
	movq	%r9, -344(%rbp)
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_6
# %bb.3:
	testq	%rax, %rax
	je	.LBB0_6
# %bb.4:
	movw	$1544, -192(%rbp)       # imm = 0x608
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -208(%rbp)
	movq	%rsi, -184(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	$-2147483648, %rax      # imm = 0x80000000
	je	.LBB0_7
# %bb.5:
	movl	$139, (%rdi)
	jmp	.LBB0_9
.LBB0_6:
	movw	$648, -192(%rbp)        # imm = 0x288
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -208(%rbp)
	movq	$0, -184(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_7:
	movl	%eax, -196(%rbp)
	movl	%eax, -176(%rbp)
	movw	$-1, -190(%rbp)
	movabsq	$206158430240, %rax     # imm = 0x3000000020
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-208(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	_svfiprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_9
# %bb.8:
	cltq
	movq	%rax, (%rbx)
	movq	-208(%rbp), %rax
	movb	$0, (%rax)
	movq	-184(%rbp), %rax
	jmp	.LBB0_10
.LBB0_9:
	xorl	%eax, %eax
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_asniprintf_r, .Lfunc_end0-_asniprintf_r
                                        # -- End function
	.globl	asniprintf              # -- Begin function asniprintf
	.p2align	4, 0x90
	.type	asniprintf,@function
asniprintf:                             # @asniprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
	movq	%rdx, %r14
	movq	%rsi, %r15
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
	movq	(%r15), %rbx
	callq	__getreent
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB1_6
# %bb.3:
	testq	%rbx, %rbx
	je	.LBB1_6
# %bb.4:
	movw	$1544, -400(%rbp)       # imm = 0x608
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -416(%rbp)
	movq	%r12, -392(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	$-2147483648, %rbx      # imm = 0x80000000
	je	.LBB1_7
# %bb.5:
	movl	$139, (%rax)
	jmp	.LBB1_9
.LBB1_6:
	movw	$648, -400(%rbp)        # imm = 0x288
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -416(%rbp)
	movq	$0, -392(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB1_7:
	movl	%ebx, -404(%rbp)
	movl	%ebx, -384(%rbp)
	movw	$-1, -398(%rbp)
	movabsq	$206158430232, %rcx     # imm = 0x3000000018
	movq	%rcx, -64(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	leaq	-240(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	leaq	-416(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	_svfiprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_9
# %bb.8:
	cltq
	movq	%rax, (%r15)
	movq	-416(%rbp), %rax
	movb	$0, (%rax)
	movq	-392(%rbp), %rax
	jmp	.LBB1_10
.LBB1_9:
	xorl	%eax, %eax
.LBB1_10:
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
	.size	asniprintf, .Lfunc_end1-asniprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
