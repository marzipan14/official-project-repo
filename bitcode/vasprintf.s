	.text
	.file	"vasprintf.c"
	.globl	vasprintf               # -- Begin function vasprintf
	.p2align	4, 0x90
	.type	vasprintf,@function
vasprintf:                              # @vasprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__getreent
	movq	$0, -200(%rbp)
	movq	$0, -176(%rbp)
	movabsq	$-278691837902848, %rcx # imm = 0xFFFF028800000000
	movq	%rcx, -188(%rbp)
	movl	$0, -168(%rbp)
	leaq	-200(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	_svfprintf_r
	testl	%eax, %eax
	js	.LBB0_2
# %bb.1:
	movq	-200(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-176(%rbp), %rcx
	movq	%rcx, (%r14)
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vasprintf, .Lfunc_end0-vasprintf
                                        # -- End function
	.globl	_vasprintf_r            # -- Begin function _vasprintf_r
	.p2align	4, 0x90
	.type	_vasprintf_r,@function
_vasprintf_r:                           # @_vasprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$184, %rsp
	movq	%rsi, %rbx
	movq	$0, -184(%rbp)
	movq	$0, -160(%rbp)
	movabsq	$-278691837902848, %rax # imm = 0xFFFF028800000000
	movq	%rax, -172(%rbp)
	movl	$0, -152(%rbp)
	leaq	-184(%rbp), %rsi
	callq	_svfprintf_r
	testl	%eax, %eax
	js	.LBB1_2
# %bb.1:
	movq	-184(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-160(%rbp), %rcx
	movq	%rcx, (%rbx)
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_vasprintf_r, .Lfunc_end1-_vasprintf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
