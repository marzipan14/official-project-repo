	.text
	.file	"ftell.c"
	.globl	_ftell_r                # -- Begin function _ftell_r
	.p2align	4, 0x90
	.type	_ftell_r,@function
_ftell_r:                               # @_ftell_r
# %bb.0:
	jmp	_ftello_r               # TAILCALL
.Lfunc_end0:
	.size	_ftell_r, .Lfunc_end0-_ftell_r
                                        # -- End function
	.globl	ftell                   # -- Begin function ftell
	.p2align	4, 0x90
	.type	ftell,@function
ftell:                                  # @ftell
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_ftello_r               # TAILCALL
.Lfunc_end1:
	.size	ftell, .Lfunc_end1-ftell
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
