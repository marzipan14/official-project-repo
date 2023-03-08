	.text
	.file	"gmtime.c"
	.globl	gmtime                  # -- Begin function gmtime
	.p2align	4, 0x90
	.type	gmtime,@function
gmtime:                                 # @gmtime
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
	jmp	gmtime_r                # TAILCALL
.Lfunc_end0:
	.size	gmtime, .Lfunc_end0-gmtime
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
