	.text
	.file	"lcltime.c"
	.globl	localtime               # -- Begin function localtime
	.p2align	4, 0x90
	.type	localtime,@function
localtime:                              # @localtime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	leaq	188(%rax), %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	localtime_r             # TAILCALL
.Lfunc_end0:
	.size	localtime, .Lfunc_end0-localtime
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
