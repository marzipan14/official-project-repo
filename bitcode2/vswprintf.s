	.text
	.file	"vswprintf.c"
	.globl	_vswprintf_r            # -- Begin function _vswprintf_r
	.p2align	4, 0x90
	.type	_vswprintf_r,@function
_vswprintf_r:                           # @_vswprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$536870912, %rdx        # imm = 0x20000000
	jb	.LBB0_2
# %bb.1:
	movl	$139, (%r14)
	jmp	.LBB0_9
.LBB0_2:
	movq	%rdx, %rbx
	movw	$520, -176(%rbp)        # imm = 0x208
	movq	%rsi, -192(%rbp)
	movq	%rsi, -168(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	leal	-4(,%rbx,4), %eax
	jmp	.LBB0_5
.LBB0_3:
	xorl	%eax, %eax
.LBB0_5:
	movl	%eax, -180(%rbp)
	movl	%eax, -160(%rbp)
	movw	$-1, -174(%rbp)
	leaq	-192(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	_svfwprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_7
# %bb.6:
	movq	-192(%rbp), %rcx
	movl	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	jb	.LBB0_10
# %bb.8:
	movl	$139, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movl	$-1, %eax
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_vswprintf_r, .Lfunc_end0-_vswprintf_r
                                        # -- End function
	.globl	vswprintf               # -- Begin function vswprintf
	.p2align	4, 0x90
	.type	vswprintf,@function
vswprintf:                              # @vswprintf
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
	movq	%rsi, %r13
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$536870912, %r13        # imm = 0x20000000
	jb	.LBB1_2
# %bb.1:
	movl	$139, (%r14)
	jmp	.LBB1_9
.LBB1_2:
	movw	$520, -200(%rbp)        # imm = 0x208
	movq	%rbx, -216(%rbp)
	movq	%rbx, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	leal	-4(,%r13,4), %eax
	jmp	.LBB1_5
.LBB1_3:
	xorl	%eax, %eax
.LBB1_5:
	movl	%eax, -204(%rbp)
	movl	%eax, -184(%rbp)
	movw	$-1, -198(%rbp)
	leaq	-216(%rbp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	_svfwprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_7
# %bb.6:
	movq	-216(%rbp), %rcx
	movl	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	jb	.LBB1_10
# %bb.8:
	movl	$139, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_9:
	movl	$-1, %eax
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
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
.Lfunc_end1:
	.size	vswprintf, .Lfunc_end1-vswprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
