	.text
	.file	"hash_func.c"
	.p2align	4, 0x90         # -- Begin function hash4
	.type	hash4,@function
hash4:                                  # @hash4
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.3:
	leaq	7(%rsi), %rcx
	shrq	$3, %rcx
	xorl	%eax, %eax
	andl	$7, %esi
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_1:
	xorl	%eax, %eax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	addl	%edx, %eax
.LBB0_5:
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	addl	%edx, %eax
.LBB0_6:
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	addl	%edx, %eax
.LBB0_7:
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	addl	%edx, %eax
.LBB0_8:
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	addl	%edx, %eax
.LBB0_9:
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	addl	%edx, %eax
.LBB0_10:
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	addl	%edx, %eax
.LBB0_11:
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addl	%edx, %eax
	addq	$-1, %rcx
	je	.LBB0_2
# %bb.12:
	addq	$1, %rdi
	jmp	.LBB0_4
.Lfunc_end0:
	.size	hash4, .Lfunc_end0-hash4
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_11
	.quad	.LBB0_10
	.quad	.LBB0_9
	.quad	.LBB0_8
	.quad	.LBB0_7
	.quad	.LBB0_6
	.quad	.LBB0_5
                                        # -- End function
	.type	__default_hash,@object  # @__default_hash
	.data
	.globl	__default_hash
	.p2align	3
__default_hash:
	.quad	hash4
	.size	__default_hash, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
