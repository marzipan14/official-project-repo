	.text
	.file	"asctime.c"
	.globl	asctime                 # -- Begin function asctime
	.p2align	4, 0x90
	.type	asctime,@function
asctime:                                # @asctime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	leaq	160(%rax), %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	asctime_r               # TAILCALL
.Lfunc_end0:
	.size	asctime, .Lfunc_end0-asctime
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
