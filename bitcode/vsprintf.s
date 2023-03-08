	.text
	.file	"vsprintf.c"
	.globl	vsprintf                # -- Begin function vsprintf
	.p2align	4, 0x90
	.type	vsprintf,@function
vsprintf:                               # @vsprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rbx, -200(%rbp)
	movq	%rbx, -176(%rbp)
	movabsq	$-279239446233089, %rcx # imm = 0xFFFF02087FFFFFFF
	movq	%rcx, -188(%rbp)
	movl	$2147483647, -168(%rbp) # imm = 0x7FFFFFFF
	leaq	-200(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_svfprintf_r
	movq	-200(%rbp), %rcx
	movb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vsprintf, .Lfunc_end0-vsprintf
                                        # -- End function
	.globl	_vsprintf_r             # -- Begin function _vsprintf_r
	.p2align	4, 0x90
	.type	_vsprintf_r,@function
_vsprintf_r:                            # @_vsprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rsi, -176(%rbp)
	movq	%rsi, -152(%rbp)
	movabsq	$-279239446233089, %rax # imm = 0xFFFF02087FFFFFFF
	movq	%rax, -164(%rbp)
	movl	$2147483647, -144(%rbp) # imm = 0x7FFFFFFF
	leaq	-176(%rbp), %rsi
	callq	_svfprintf_r
	movq	-176(%rbp), %rcx
	movb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_vsprintf_r, .Lfunc_end1-_vsprintf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
