	.text
	.file	"localeconv.c"
	.globl	__localeconv_l          # -- Begin function __localeconv_l
	.p2align	4, 0x90
	.type	__localeconv_l,@function
__localeconv_l:                         # @__localeconv_l
# %bb.0:
	leaq	256(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__localeconv_l, .Lfunc_end0-__localeconv_l
                                        # -- End function
	.globl	_localeconv_r           # -- Begin function _localeconv_r
	.p2align	4, 0x90
	.type	_localeconv_r,@function
_localeconv_r:                          # @_localeconv_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	72(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$256, %rax              # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_localeconv_r, .Lfunc_end1-_localeconv_r
                                        # -- End function
	.globl	localeconv              # -- Begin function localeconv
	.p2align	4, 0x90
	.type	localeconv,@function
localeconv:                             # @localeconv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	72(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$256, %rax              # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	localeconv, .Lfunc_end2-localeconv
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
