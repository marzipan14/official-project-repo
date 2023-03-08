	.text
	.file	"vsniprintf.c"
	.globl	vsniprintf              # -- Begin function vsniprintf
	.p2align	4, 0x90
	.type	vsniprintf,@function
vsniprintf:                             # @vsniprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	callq	__getreent
	movq	%rax, %r14
	testq	$-2147483648, %rbx      # imm = 0x80000000
	je	.LBB0_2
# %bb.1:
	movl	$139, (%r14)
	movl	$-1, %eax
	jmp	.LBB0_6
.LBB0_2:
	movl	$-65016, -200(%rbp)     # imm = 0xFFFF0208
	movq	%r13, -216(%rbp)
	movq	%r13, -192(%rbp)
	leal	-1(%rbx), %eax
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	cmovnel	%eax, %ecx
	movl	%ecx, -204(%rbp)
	movl	%ecx, -184(%rbp)
	leaq	-216(%rbp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	_svfiprintf_r
	cmpl	$-2, %eax
	jg	.LBB0_4
# %bb.3:
	movl	$139, (%r14)
.LBB0_4:
	testq	%rbx, %rbx
	je	.LBB0_6
# %bb.5:
	movq	-216(%rbp), %rcx
	movb	$0, (%rcx)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vsniprintf, .Lfunc_end0-vsniprintf
                                        # -- End function
	.globl	_vsniprintf_r           # -- Begin function _vsniprintf_r
	.p2align	4, 0x90
	.type	_vsniprintf_r,@function
_vsniprintf_r:                          # @_vsniprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
	movq	%rdi, %r14
	testq	$-2147483648, %rdx      # imm = 0x80000000
	je	.LBB1_2
# %bb.1:
	movl	$139, (%r14)
	movl	$-1, %eax
	jmp	.LBB1_6
.LBB1_2:
	movq	%rdx, %rbx
	movl	$-65016, -176(%rbp)     # imm = 0xFFFF0208
	movq	%rsi, -192(%rbp)
	movq	%rsi, -168(%rbp)
	leal	-1(%rdx), %eax
	xorl	%edx, %edx
	testq	%rbx, %rbx
	cmovnel	%eax, %edx
	movl	%edx, -180(%rbp)
	movl	%edx, -160(%rbp)
	leaq	-192(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	_svfiprintf_r
	cmpl	$-2, %eax
	jg	.LBB1_4
# %bb.3:
	movl	$139, (%r14)
.LBB1_4:
	testq	%rbx, %rbx
	je	.LBB1_6
# %bb.5:
	movq	-192(%rbp), %rcx
	movb	$0, (%rcx)
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_vsniprintf_r, .Lfunc_end1-_vsniprintf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
