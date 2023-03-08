	.text
	.file	"vsiprintf.c"
	.globl	vsiprintf               # -- Begin function vsiprintf
	.p2align	4, 0x90
	.type	vsiprintf,@function
vsiprintf:                              # @vsiprintf
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
	callq	_svfiprintf_r
	movq	-200(%rbp), %rcx
	movb	$0, (%rcx)
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vsiprintf, .Lfunc_end0-vsiprintf
                                        # -- End function
	.globl	_vsiprintf_r            # -- Begin function _vsiprintf_r
	.p2align	4, 0x90
	.type	_vsiprintf_r,@function
_vsiprintf_r:                           # @_vsiprintf_r
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
	callq	_svfiprintf_r
	movq	-176(%rbp), %rcx
	movb	$0, (%rcx)
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_vsiprintf_r, .Lfunc_end1-_vsiprintf_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
