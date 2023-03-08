	.text
	.file	"vasniprintf.c"
	.globl	_vasniprintf_r          # -- Begin function _vasniprintf_r
	.p2align	4, 0x90
	.type	_vasniprintf_r,@function
_vasniprintf_r:                         # @_vasniprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdx, %rbx
	movq	(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.1:
	testq	%rax, %rax
	je	.LBB0_4
# %bb.2:
	movw	$1544, -168(%rbp)       # imm = 0x608
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -184(%rbp)
	movq	%rsi, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	$-2147483648, %rax      # imm = 0x80000000
	je	.LBB0_5
# %bb.3:
	movl	$139, (%rdi)
	jmp	.LBB0_7
.LBB0_4:
	movw	$648, -168(%rbp)        # imm = 0x288
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -184(%rbp)
	movq	$0, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_5:
	movl	%eax, -172(%rbp)
	movl	%eax, -152(%rbp)
	movw	$-1, -166(%rbp)
	leaq	-184(%rbp), %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	_svfiprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_7
# %bb.6:
	cltq
	movq	%rax, (%rbx)
	movq	-184(%rbp), %rax
	movb	$0, (%rax)
	movq	-160(%rbp), %rax
	jmp	.LBB0_8
.LBB0_7:
	xorl	%eax, %eax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_vasniprintf_r, .Lfunc_end0-_vasniprintf_r
                                        # -- End function
	.globl	vasniprintf             # -- Begin function vasniprintf
	.p2align	4, 0x90
	.type	vasniprintf,@function
vasniprintf:                            # @vasniprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_4
# %bb.1:
	testq	%rcx, %rcx
	je	.LBB1_4
# %bb.2:
	movw	$1544, -192(%rbp)       # imm = 0x608
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -208(%rbp)
	movq	%rbx, -184(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	$-2147483648, %rcx      # imm = 0x80000000
	je	.LBB1_5
# %bb.3:
	movl	$139, (%rax)
	jmp	.LBB1_7
.LBB1_4:
	movw	$648, -192(%rbp)        # imm = 0x288
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -208(%rbp)
	movq	$0, -184(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB1_5:
	movl	%ecx, -196(%rbp)
	movl	%ecx, -176(%rbp)
	movw	$-1, -190(%rbp)
	leaq	-208(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_svfiprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_7
# %bb.6:
	cltq
	movq	%rax, (%r12)
	movq	-208(%rbp), %rax
	movb	$0, (%rax)
	movq	-184(%rbp), %rax
	jmp	.LBB1_8
.LBB1_7:
	xorl	%eax, %eax
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	vasniprintf, .Lfunc_end1-vasniprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
