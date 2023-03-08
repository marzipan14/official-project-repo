	.text
	.file	"crypt_r.c"
	.globl	__crypt_r               # -- Begin function __crypt_r
	.p2align	4, 0x90
	.type	__crypt_r,@function
__crypt_r:                              # @__crypt_r
# %bb.0:
	cmpb	$36, (%rsi)
	jne	.LBB0_13
# %bb.1:
	movb	1(%rsi), %al
	testb	%al, %al
	je	.LBB0_13
# %bb.2:
	movb	2(%rsi), %cl
	testb	%cl, %cl
	je	.LBB0_13
# %bb.3:
	cmpb	$49, %al
	jne	.LBB0_5
# %bb.4:
	cmpb	$36, %cl
	jne	.LBB0_5
# %bb.14:
	jmp	__crypt_md5             # TAILCALL
.LBB0_5:
	cmpb	$54, %al
	je	.LBB0_12
# %bb.6:
	cmpb	$53, %al
	je	.LBB0_10
# %bb.7:
	cmpb	$50, %al
	jne	.LBB0_13
# %bb.8:
	cmpb	$36, 3(%rsi)
	jne	.LBB0_13
# %bb.9:
	jmp	__crypt_blowfish        # TAILCALL
.LBB0_12:
	cmpb	$36, %cl
	jne	.LBB0_13
# %bb.15:
	jmp	__crypt_sha512          # TAILCALL
.LBB0_10:
	cmpb	$36, %cl
	jne	.LBB0_13
# %bb.11:
	jmp	__crypt_sha256          # TAILCALL
.LBB0_13:
	jmp	__crypt_des             # TAILCALL
.Lfunc_end0:
	.size	__crypt_r, .Lfunc_end0-__crypt_r
                                        # -- End function
	.weak	crypt_r
	.type	crypt_r,@function
.set crypt_r, __crypt_r
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
