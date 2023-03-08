	.text
	.file	"viprintf.c"
	.globl	viprintf                # -- Begin function viprintf
	.p2align	4, 0x90
	.type	viprintf,@function
viprintf:                               # @viprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	16(%rax), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_vfiprintf_r            # TAILCALL
.Lfunc_end0:
	.size	viprintf, .Lfunc_end0-viprintf
                                        # -- End function
	.globl	_viprintf_r             # -- Begin function _viprintf_r
	.p2align	4, 0x90
	.type	_viprintf_r,@function
_viprintf_r:                            # @_viprintf_r
# %bb.0:
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	16(%rdi), %rsi
	jmp	_vfiprintf_r            # TAILCALL
.Lfunc_end1:
	.size	_viprintf_r, .Lfunc_end1-_viprintf_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
