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
	cmpq	$536870911, %rdx        # imm = 0x1FFFFFFF
	ja	.LBB0_4
# %bb.1:
	movq	%rdx, %rbx
	movl	$-65016, -176(%rbp)     # imm = 0xFFFF0208
	movq	%rsi, -192(%rbp)
	movq	%rsi, -168(%rbp)
	xorl	%eax, %eax
	testq	%rdx, %rdx
	leal	-4(,%rdx,4), %edx
	cmovel	%eax, %edx
	movl	%edx, -180(%rbp)
	movl	%edx, -160(%rbp)
	leaq	-192(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	_svfwprintf_r
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.2:
	movq	-192(%rbp), %rcx
	movl	$0, (%rcx)
.LBB0_3:
	movslq	%eax, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB0_5
.LBB0_4:
	movl	$139, (%r14)
	movl	$-1, %eax
.LBB0_5:
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
	movq	%rsi, %rbx
	movq	%rdi, %r13
	callq	__getreent
	movq	%rax, %r14
	cmpq	$536870911, %rbx        # imm = 0x1FFFFFFF
	ja	.LBB1_4
# %bb.1:
	movl	$-65016, -200(%rbp)     # imm = 0xFFFF0208
	movq	%r13, -216(%rbp)
	movq	%r13, -192(%rbp)
	xorl	%eax, %eax
	testq	%rbx, %rbx
	leal	-4(,%rbx,4), %ecx
	cmovel	%eax, %ecx
	movl	%ecx, -204(%rbp)
	movl	%ecx, -184(%rbp)
	leaq	-216(%rbp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	_svfwprintf_r
	testq	%rbx, %rbx
	je	.LBB1_3
# %bb.2:
	movq	-216(%rbp), %rcx
	movl	$0, (%rcx)
.LBB1_3:
	movslq	%eax, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB1_5
.LBB1_4:
	movl	$139, (%r14)
	movl	$-1, %eax
.LBB1_5:
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
