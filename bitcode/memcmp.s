	.text
	.file	"memcmp.c"
	.globl	memcmp                  # -- Begin function memcmp
	.p2align	4, 0x90
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	cmpq	$8, %rdx
	jae	.LBB0_1
.LBB0_4:
	testq	%rdx, %rdx
	jne	.LBB0_5
	jmp	.LBB0_9
.LBB0_1:
	movl	%esi, %eax
	orl	%edi, %eax
	testb	$7, %al
	je	.LBB0_2
.LBB0_5:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %eax
	movzbl	(%rsi,%rcx), %r8d
	cmpb	%r8b, %al
	jne	.LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_6
.LBB0_9:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$8, %rdi
	addq	$8, %rsi
	addq	$-8, %rdx
	cmpq	$7, %rdx
	jbe	.LBB0_4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	je	.LBB0_3
	jmp	.LBB0_4
.LBB0_7:
	subl	%r8d, %eax
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
