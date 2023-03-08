	.text
	.file	"getchar.c"
	.globl	_getchar_r              # -- Begin function _getchar_r
	.p2align	4, 0x90
	.type	_getchar_r,@function
_getchar_r:                             # @_getchar_r
# %bb.0:
	movq	8(%rdi), %rsi
	jmp	_getc_r                 # TAILCALL
.Lfunc_end0:
	.size	_getchar_r, .Lfunc_end0-_getchar_r
                                        # -- End function
	.globl	getchar                 # -- Begin function getchar
	.p2align	4, 0x90
	.type	getchar,@function
getchar:                                # @getchar
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	8(%rax), %rsi
	movq	%rax, %rdi
	popq	%rbp
	jmp	_getc_r                 # TAILCALL
.Lfunc_end1:
	.size	getchar, .Lfunc_end1-getchar
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
