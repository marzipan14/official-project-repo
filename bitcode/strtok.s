	.text
	.file	"strtok.c"
	.globl	strtok                  # -- Begin function strtok
	.p2align	4, 0x90
	.type	strtok,@function
strtok:                                 # @strtok
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	leaq	152(%rax), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$1, %ecx
	callq	__strtok_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strtok, .Lfunc_end0-strtok
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
