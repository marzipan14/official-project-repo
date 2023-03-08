	.text
	.file	"sf_logb.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function logbf
.LCPI0_0:
	.long	4286578688              # float -Inf
.LCPI0_1:
	.long	2139095040              # float +Inf
.LCPI0_2:
	.long	3271294976              # float -126
	.text
	.globl	logbf
	.p2align	4, 0x90
	.type	logbf,@function
logbf:                                  # @logbf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	je	.LBB0_1
# %bb.2:
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	ja	.LBB0_7
# %bb.3:
	shll	$8, %eax
	testl	%eax, %eax
	jle	.LBB0_4
# %bb.5:                                # %.preheader
	movl	$-126, %ecx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	addl	$-1, %ecx
	addl	%eax, %eax
	testl	%eax, %eax
	jg	.LBB0_6
	jmp	.LBB0_11
.LBB0_1:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	retq
.LBB0_7:
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jne	.LBB0_9
# %bb.8:
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	retq
.LBB0_9:
	ja	.LBB0_12
# %bb.10:
	shrl	$23, %ecx
	addl	$-127, %ecx
.LBB0_11:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
.LBB0_12:
	retq
.LBB0_4:
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end0:
	.size	logbf, .Lfunc_end0-logbf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
