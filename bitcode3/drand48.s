	.text
	.file	"drand48.c"
	.globl	_drand48_r              # -- Begin function _drand48_r
	.p2align	4, 0x90
	.type	_drand48_r,@function
_drand48_r:                             # @_drand48_r
# %bb.0:
	leaq	240(%rdi), %rsi
	jmp	_erand48_r              # TAILCALL
.Lfunc_end0:
	.size	_drand48_r, .Lfunc_end0-_drand48_r
                                        # -- End function
	.globl	drand48                 # -- Begin function drand48
	.p2align	4, 0x90
	.type	drand48,@function
drand48:                                # @drand48
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	leaq	240(%rax), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_erand48_r              # TAILCALL
.Lfunc_end1:
	.size	drand48, .Lfunc_end1-drand48
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
