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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_8
# %bb.1:
	movb	1(%rsi), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_8
# %bb.2:
	movb	2(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_8
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$49, %cl
	jne	.LBB0_10
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	jne	.LBB0_5
# %bb.9:
	callq	__crypt_md5
	jmp	.LBB0_19
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$50, %cl
	jne	.LBB0_13
# %bb.11:
	cmpb	$36, 3(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_6
# %bb.12:
	callq	__crypt_blowfish
	jmp	.LBB0_19
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	callq	__crypt_des
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$53, %cl
	jne	.LBB0_16
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	jne	.LBB0_7
# %bb.15:
	callq	__crypt_sha256
	jmp	.LBB0_19
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$54, %cl
	jne	.LBB0_8
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	jne	.LBB0_8
# %bb.18:
	callq	__crypt_sha512
	jmp	.LBB0_19
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
