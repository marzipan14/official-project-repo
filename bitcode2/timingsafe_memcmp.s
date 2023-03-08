	.text
	.file	"timingsafe_memcmp.c"
	.globl	timingsafe_memcmp       # -- Begin function timingsafe_memcmp
	.p2align	4, 0x90
	.type	timingsafe_memcmp,@function
timingsafe_memcmp:                      # @timingsafe_memcmp
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:                                # %.preheader
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r8), %r9d
	movzbl	(%rsi,%r8), %r10d
	movl	%r9d, %r11d
	subl	%r10d, %r11d
	sarl	$8, %r11d
	subl	%r9d, %r10d
	sarl	$8, %r10d
	movl	%r11d, %r9d
	subl	%r10d, %r9d
	orl	%ecx, %r10d
	notl	%ecx
	andl	%r9d, %ecx
	orl	%ecx, %eax
	orl	%r11d, %r10d
	addq	$1, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %ecx
	cmpq	%r8, %rdx
	jne	.LBB0_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	timingsafe_memcmp, .Lfunc_end0-timingsafe_memcmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
