	.text
	.file	"timingsafe_memcmp.c"
	.globl	timingsafe_memcmp       # -- Begin function timingsafe_memcmp
	.p2align	4, 0x90
	.type	timingsafe_memcmp,@function
timingsafe_memcmp:                      # @timingsafe_memcmp
# %bb.0:
	pushq	%rbp
	pushq	%rbx
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:
	movl	%edx, %r8d
	andl	$1, %r8d
	cmpq	$1, %rdx
	jne	.LBB0_4
# %bb.3:
	movl	$-1, %ecx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	testq	%r8, %r8
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_9
.LBB0_4:
	subq	%r8, %rdx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r9), %r11d
	movzbl	(%rsi,%r9), %r10d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	sarl	$8, %ebx
	subl	%r11d, %r10d
	sarl	$8, %r10d
	movl	%ebx, %r11d
	subl	%r10d, %r11d
	orl	%ecx, %r10d
	notl	%ecx
	andl	%r11d, %ecx
	orl	%eax, %ecx
	orl	%ebx, %r10d
	movzbl	1(%rdi,%r9), %eax
	movzbl	1(%rsi,%r9), %ebx
	movl	%eax, %r11d
	subl	%ebx, %r11d
	sarl	$8, %r11d
	subl	%eax, %ebx
	sarl	$8, %ebx
	movl	%r11d, %ebp
	subl	%ebx, %ebp
	movl	%r10d, %eax
	notl	%eax
	andl	%ebp, %eax
	orl	%ecx, %eax
	orl	%r11d, %ebx
	movl	%ebx, %ecx
	orl	%r10d, %ecx
	addq	$2, %r9
	cmpq	%r9, %rdx
	jne	.LBB0_5
# %bb.6:
	notl	%ecx
	testq	%r8, %r8
	je	.LBB0_9
.LBB0_8:
	movzbl	(%rdi,%r9), %edx
	movzbl	(%rsi,%r9), %esi
	movl	%esi, %edi
	subl	%edx, %edi
	sarl	$8, %edi
	subl	%esi, %edx
	sarl	$8, %edx
	subl	%edi, %edx
	andl	%ecx, %edx
	orl	%edx, %eax
.LBB0_9:
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	timingsafe_memcmp, .Lfunc_end0-timingsafe_memcmp
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
