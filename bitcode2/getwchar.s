	.text
	.file	"getwchar.c"
	.globl	_getwchar_r             # -- Begin function _getwchar_r
	.p2align	4, 0x90
	.type	_getwchar_r,@function
_getwchar_r:                            # @_getwchar_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_getwchar_r, .Lfunc_end0-_getwchar_r
                                        # -- End function
	.globl	getwchar                # -- Begin function getwchar
	.p2align	4, 0x90
	.type	getwchar,@function
getwchar:                               # @getwchar
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	8(%rax), %rdi
	callq	fgetwc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getwchar, .Lfunc_end1-getwchar
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
