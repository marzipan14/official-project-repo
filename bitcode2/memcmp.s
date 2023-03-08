	.text
	.file	"memcmp.c"
	.globl	memcmp                  # -- Begin function memcmp
	.p2align	4, 0x90
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jb	.LBB0_7
# %bb.1:
	movl	%esi, %eax
	orl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	je	.LBB0_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_8
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$-8, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rdx
	ja	.LBB0_4
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_12
.LBB0_8:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %eax
	movzbl	(%rsi,%rcx), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r8b, %al
	jne	.LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_9
.LBB0_12:
	xorl	%eax, %eax
	jmp	.LBB0_13
.LBB0_10:
	subl	%r8d, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	memcmp, .Lfunc_end0-memcmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
