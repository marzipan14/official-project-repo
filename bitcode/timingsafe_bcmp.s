	.text
	.file	"timingsafe_bcmp.c"
	.globl	timingsafe_bcmp         # -- Begin function timingsafe_bcmp
	.p2align	4, 0x90
	.type	timingsafe_bcmp,@function
timingsafe_bcmp:                        # @timingsafe_bcmp
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:
	xorl	%r9d, %r9d
	cmpq	$8, %rdx
	jb	.LBB0_11
# %bb.3:
	movq	%rdx, %r8
	andq	$-8, %r8
	leaq	-8(%r8), %rcx
	movq	%rcx, %r10
	shrq	$3, %r10
	addq	$1, %r10
	movl	%r10d, %r9d
	andl	$1, %r9d
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.5:
	subq	%r9, %r10
	pxor	%xmm2, %xmm2
	xorl	%r11d, %r11d
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%r11), %eax
	movl	4(%rsi,%r11), %ecx
	xorl	(%rdi,%r11), %eax
	xorl	4(%rdi,%r11), %ecx
	movd	%eax, %xmm3
	movd	%ecx, %xmm4
	punpcklbw	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
	punpcklwd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	por	%xmm0, %xmm3
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	por	%xmm1, %xmm4
	movl	8(%rsi,%r11), %eax
	movl	12(%rsi,%r11), %ecx
	xorl	8(%rdi,%r11), %eax
	movd	%eax, %xmm0
	xorl	12(%rdi,%r11), %ecx
	movd	%ecx, %xmm1
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	por	%xmm3, %xmm0
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	por	%xmm4, %xmm1
	addq	$16, %r11
	addq	$-2, %r10
	jne	.LBB0_6
# %bb.7:
	testq	%r9, %r9
	je	.LBB0_9
.LBB0_8:
	movl	4(%rsi,%r11), %eax
	xorl	4(%rdi,%r11), %eax
	movl	(%rsi,%r11), %ecx
	movd	%eax, %xmm2
	pxor	%xmm3, %xmm3
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	por	%xmm2, %xmm1
	xorl	(%rdi,%r11), %ecx
	movd	%ecx, %xmm2
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	por	%xmm2, %xmm0
.LBB0_9:
	por	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %r9d
	cmpq	%rdx, %r8
	je	.LBB0_13
# %bb.10:
	andl	$7, %edx
	addq	%r8, %rsi
	addq	%r8, %rdi
.LBB0_11:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rax), %ecx
	xorb	(%rdi,%rax), %cl
	movzbl	%cl, %ecx
	orl	%ecx, %r9d
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.LBB0_12
.LBB0_13:
	xorl	%eax, %eax
	testl	%r9d, %r9d
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	pxor	%xmm0, %xmm0
	xorl	%r11d, %r11d
	pxor	%xmm1, %xmm1
	testq	%r9, %r9
	jne	.LBB0_8
	jmp	.LBB0_9
.Lfunc_end0:
	.size	timingsafe_bcmp, .Lfunc_end0-timingsafe_bcmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
