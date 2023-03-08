	.text
	.file	"getwchar_u.c"
	.globl	_getwchar_unlocked_r    # -- Begin function _getwchar_unlocked_r
	.p2align	4, 0x90
	.type	_getwchar_unlocked_r,@function
_getwchar_unlocked_r:                   # @_getwchar_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_fgetwc_unlocked_r      # TAILCALL
.Lfunc_end0:
	.size	_getwchar_unlocked_r, .Lfunc_end0-_getwchar_unlocked_r
                                        # -- End function
	.globl	getwchar_unlocked       # -- Begin function getwchar_unlocked
	.p2align	4, 0x90
	.type	getwchar_unlocked,@function
getwchar_unlocked:                      # @getwchar_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	8(%rax), %rdi
	popq	%rbp
	jmp	fgetwc_unlocked         # TAILCALL
.Lfunc_end1:
	.size	getwchar_unlocked, .Lfunc_end1-getwchar_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
