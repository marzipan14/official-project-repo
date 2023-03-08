	.text
	.file	"getc_u.c"
	.globl	_getc_unlocked_r        # -- Begin function _getc_unlocked_r
	.p2align	4, 0x90
	.type	_getc_unlocked_r,@function
_getc_unlocked_r:                       # @_getc_unlocked_r
# %bb.0:
	movl	8(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rsi)
	testl	%eax, %eax
	jle	.LBB0_2
# %bb.1:
	movq	(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movzbl	(%rax), %eax
	retq
.LBB0_2:
	jmp	__srget_r               # TAILCALL
.Lfunc_end0:
	.size	_getc_unlocked_r, .Lfunc_end0-_getc_unlocked_r
                                        # -- End function
	.globl	getc_unlocked           # -- Begin function getc_unlocked
	.p2align	4, 0x90
	.type	getc_unlocked,@function
getc_unlocked:                          # @getc_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	8(%rdi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rdi)
	testl	%eax, %eax
	jle	.LBB1_2
# %bb.1:
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB1_2:
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__srget_r               # TAILCALL
.Lfunc_end1:
	.size	getc_unlocked, .Lfunc_end1-getc_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
