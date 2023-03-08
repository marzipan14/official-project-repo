	.text
	.file	"ctime.c"
	.globl	ctime                   # -- Begin function ctime
	.p2align	4, 0x90
	.type	ctime,@function
ctime:                                  # @ctime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	localtime
	movq	%rax, %rdi
	popq	%rbp
	jmp	asctime                 # TAILCALL
.Lfunc_end0:
	.size	ctime, .Lfunc_end0-ctime
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
