	.text
	.file	"crypt_r.c"
	.globl	__crypt_r               # -- Begin function __crypt_r
	.p2align	4, 0x90
	.type	__crypt_r,@function
__crypt_r:                              # @__crypt_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpb	$36, (%rsi)
	jne	.LBB0_15
# %bb.1:
	movb	1(%rsi), %al
	testb	%al, %al
	je	.LBB0_15
# %bb.2:
	movb	2(%rsi), %cl
	testb	%cl, %cl
	je	.LBB0_15
# %bb.3:
	cmpb	$49, %al
	jne	.LBB0_6
# %bb.4:
	cmpb	$36, %cl
	jne	.LBB0_6
# %bb.5:
	callq	__crypt_md5
	jmp	.LBB0_16
.LBB0_6:
	cmpb	$54, %al
	je	.LBB0_13
# %bb.7:
	cmpb	$53, %al
	je	.LBB0_11
# %bb.8:
	cmpb	$50, %al
	jne	.LBB0_15
# %bb.9:
	cmpb	$36, 3(%rsi)
	jne	.LBB0_15
# %bb.10:
	callq	__crypt_blowfish
	jmp	.LBB0_16
.LBB0_13:
	cmpb	$36, %cl
	jne	.LBB0_15
# %bb.14:
	callq	__crypt_sha512
	jmp	.LBB0_16
.LBB0_11:
	cmpb	$36, %cl
	jne	.LBB0_15
# %bb.12:
	callq	__crypt_sha256
	jmp	.LBB0_16
.LBB0_15:
	callq	__crypt_des
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__crypt_r, .Lfunc_end0-__crypt_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.weak	crypt_r
	.type	crypt_r,@function
.set crypt_r, __crypt_r
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
