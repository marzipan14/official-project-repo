	.text
	.file	"crypt.c"
	.globl	crypt                   # -- Begin function crypt
	.p2align	4, 0x90
	.type	crypt,@function
crypt:                                  # @crypt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$crypt.buf, %edx
	callq	__crypt_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	crypt, .Lfunc_end0-crypt
                                        # -- End function
	.type	crypt.buf,@object       # @crypt.buf
	.local	crypt.buf
	.comm	crypt.buf,128,16
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
