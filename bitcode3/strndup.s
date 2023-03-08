	.text
	.file	"strndup.c"
	.globl	strndup                 # -- Begin function strndup
	.p2align	4, 0x90
	.type	strndup,@function
strndup:                                # @strndup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_strndup_r              # TAILCALL
.Lfunc_end0:
	.size	strndup, .Lfunc_end0-strndup
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
