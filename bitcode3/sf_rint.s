	.text
	.file	"sf_rint.c"
	.globl	rintf                   # -- Begin function rintf
	.p2align	4, 0x90
	.type	rintf,@function
rintf:                                  # @rintf
# %bb.0:
	subq	$4, %rsp
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmpl	$1258291199, %ecx       # imm = 0x4AFFFFFF
	ja	.LBB0_8
# %bb.1:
	testl	%ecx, %ecx
	je	.LBB0_10
# %bb.2:
	movl	%eax, %edx
	shrl	$31, %edx
	cmpl	$1065353215, %ecx       # imm = 0x3F7FFFFF
	ja	.LBB0_4
# %bb.3:
	movl	%eax, %ecx
	andl	$8388607, %ecx          # imm = 0x7FFFFF
	movl	%eax, %esi
	andl	$-1048576, %esi         # imm = 0xFFF00000
	negl	%ecx
	shrl	$9, %ecx
	andl	$4194304, %ecx          # imm = 0x400000
	orl	%esi, %ecx
	movd	%ecx, %xmm0
	movl	%edx, %ecx
	movss	TWO23(,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rsp)
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movd	%xmm0, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	andl	$-2147483648, %eax      # imm = 0x80000000
	orl	%ecx, %eax
	movd	%eax, %xmm0
	addq	$4, %rsp
	retq
.LBB0_8:
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jb	.LBB0_10
# %bb.9:
	addss	%xmm0, %xmm0
.LBB0_10:
	addq	$4, %rsp
	retq
.LBB0_4:
	shrl	$23, %ecx
	addl	$-127, %ecx
	movl	$8388607, %esi          # imm = 0x7FFFFF
	shrl	%cl, %esi
	testl	%eax, %esi
	je	.LBB0_10
# %bb.5:
	shrl	%esi
	testl	%eax, %esi
	je	.LBB0_7
# %bb.6:
	notl	%esi
	andl	%eax, %esi
	movl	$2097152, %eax          # imm = 0x200000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	orl	%esi, %eax
.LBB0_7:
	movd	%eax, %xmm0
	movl	%edx, %eax
	movss	TWO23(,%rax,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rsp)
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	addq	$4, %rsp
	retq
.Lfunc_end0:
	.size	rintf, .Lfunc_end0-rintf
                                        # -- End function
	.type	TWO23,@object           # @TWO23
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
TWO23:
	.long	1258291200              # float 8388608
	.long	3405774848              # float -8388608
	.size	TWO23, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
