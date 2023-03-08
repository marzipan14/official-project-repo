	.text
	.file	"crypt.c"
	.globl	crypt                   # -- Begin function crypt
	.p2align	4, 0x90
	.type	crypt,@function
crypt:                                  # @crypt
# %bb.0:
	movl	$crypt.buf, %edx
	jmp	__crypt_r               # TAILCALL
.Lfunc_end0:
	.size	crypt, .Lfunc_end0-crypt
                                        # -- End function
	.type	crypt.buf,@object       # @crypt.buf
	.local	crypt.buf
	.comm	crypt.buf,128,16
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
