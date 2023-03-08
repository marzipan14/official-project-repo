	.text
	.file	"fsetlocking.c"
	.globl	__fsetlocking           # -- Begin function __fsetlocking
	.p2align	4, 0x90
	.type	__fsetlocking,@function
__fsetlocking:                          # @__fsetlocking
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	__getreent
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rax)
	jne	.LBB0_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
.LBB0_3:
	movl	172(%r14), %ecx
	movl	%ecx, %eax
	andl	$1, %eax
	addl	$1, %eax
	cmpl	$1, %ebx
	je	.LBB0_6
# %bb.4:
	cmpl	$2, %ebx
	jne	.LBB0_8
# %bb.5:
	orl	$1, %ecx
	jmp	.LBB0_7
.LBB0_6:
	andl	$-2, %ecx
.LBB0_7:
	movl	%ecx, 172(%r14)
.LBB0_8:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__fsetlocking, .Lfunc_end0-__fsetlocking
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
