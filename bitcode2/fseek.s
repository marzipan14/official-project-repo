	.text
	.file	"fseek.c"
	.globl	_fseek_r                # -- Begin function _fseek_r
	.p2align	4, 0x90
	.type	_fseek_r,@function
_fseek_r:                               # @_fseek_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_fseeko_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fseek_r, .Lfunc_end0-_fseek_r
                                        # -- End function
	.globl	fseek                   # -- Begin function fseek
	.p2align	4, 0x90
	.type	fseek,@function
fseek:                                  # @fseek
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	_fseeko_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fseek, .Lfunc_end1-fseek
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
