	.text
	.file	"fgetc_u.c"
	.globl	_fgetc_unlocked_r       # -- Begin function _fgetc_unlocked_r
	.p2align	4, 0x90
	.type	_fgetc_unlocked_r,@function
_fgetc_unlocked_r:                      # @_fgetc_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r14)
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
.LBB0_3:
	movl	8(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rbx)
	testl	%eax, %eax
	jle	.LBB0_5
# %bb.4:
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__srget_r               # TAILCALL
.Lfunc_end0:
	.size	_fgetc_unlocked_r, .Lfunc_end0-_fgetc_unlocked_r
                                        # -- End function
	.globl	fgetc_unlocked          # -- Begin function fgetc_unlocked
	.p2align	4, 0x90
	.type	fgetc_unlocked,@function
fgetc_unlocked:                         # @fgetc_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r14)
	jne	.LBB1_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
.LBB1_3:
	movl	8(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rbx)
	testl	%eax, %eax
	jle	.LBB1_5
# %bb.4:
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB1_5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__srget_r               # TAILCALL
.Lfunc_end1:
	.size	fgetc_unlocked, .Lfunc_end1-fgetc_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
