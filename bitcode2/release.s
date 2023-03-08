	.text
	.file	"release.c"
	.globl	redisGitSHA1            # -- Begin function redisGitSHA1
	.p2align	4, 0x90
	.type	redisGitSHA1,@function
redisGitSHA1:                           # @redisGitSHA1
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	retq
.Lfunc_end0:
	.size	redisGitSHA1, .Lfunc_end0-redisGitSHA1
                                        # -- End function
	.globl	redisGitDirty           # -- Begin function redisGitDirty
	.p2align	4, 0x90
	.type	redisGitDirty,@function
redisGitDirty:                          # @redisGitDirty
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %eax
	retq
.Lfunc_end1:
	.size	redisGitDirty, .Lfunc_end1-redisGitDirty
                                        # -- End function
	.globl	redisBuildId            # -- Begin function redisBuildId
	.p2align	4, 0x90
	.type	redisBuildId,@function
redisBuildId:                           # @redisBuildId
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.2, %edi
	callq	strlen
	movl	$.L.str.2, %esi
	xorl	%edi, %edi
	movq	%rax, %rdx
	callq	crc64
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	redisBuildId, .Lfunc_end2-redisBuildId
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"c5ee3442"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"86"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"5.0.6ukhost-157260550886c5ee3442"
	.size	.L.str.2, 33

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
