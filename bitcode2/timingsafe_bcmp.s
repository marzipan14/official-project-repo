	.text
	.file	"timingsafe_bcmp.c"
	.globl	timingsafe_bcmp         # -- Begin function timingsafe_bcmp
	.p2align	4, 0x90
	.type	timingsafe_bcmp,@function
timingsafe_bcmp:                        # @timingsafe_bcmp
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:
	movl	%edx, %r8d
	andl	$1, %r8d
	cmpq	$1, %rdx
	jne	.LBB0_4
# %bb.3:
	xorl	%ecx, %ecx
	jmp	.LBB0_6
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	movq	%r8, %rax
	subq	%rdx, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %edx
	xorb	(%rdi), %dl
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rsi), %ecx
	addq	$2, %rsi
	xorb	1(%rdi), %cl
	addq	$2, %rdi
	movzbl	%cl, %ecx
	orl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	jne	.LBB0_5
.LBB0_6:
	testq	%r8, %r8
	je	.LBB0_8
# %bb.7:
	movb	(%rsi), %al
	xorb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %eax
	orl	%eax, %ecx
.LBB0_8:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	timingsafe_bcmp, .Lfunc_end0-timingsafe_bcmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
