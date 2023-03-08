	.text
	.file	"geohash_helper.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashEstimateStepsByRadius
.LCPI0_0:
	.quad	4716144046444872991     # double 20037726.370000001
.LCPI0_1:
	.quad	4634344754052595712     # double 66
.LCPI0_2:
	.quad	-4589027282802180096    # double -66
.LCPI0_3:
	.quad	4635329916471083008     # double 80
.LCPI0_4:
	.quad	-4588042120383692800    # double -80
	.text
	.globl	geohashEstimateStepsByRadius
	.p2align	4, 0x90
	.type	geohashEstimateStepsByRadius,@function
geohashEstimateStepsByRadius:           # @geohashEstimateStepsByRadius
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$26, %al
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB0_2
	jp	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	retq
.LBB0_2:
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jbe	.LBB0_5
# %bb.3:                                # %.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm0
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_4
.LBB0_5:
	ucomisd	.LCPI0_1(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_8
# %bb.6:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_8
# %bb.7:
	addl	$-2, %eax
	jmp	.LBB0_12
.LBB0_8:
	ucomisd	.LCPI0_3(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_11
# %bb.9:
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_11
# %bb.10:
	addl	$-3, %eax
	jmp	.LBB0_12
.LBB0_11:
	addl	$-4, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$26, %ecx
	cmpl	$27, %eax
	jge	.LBB0_15
	jmp	.LBB0_16
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	geohashEstimateStepsByRadius, .Lfunc_end0-geohashEstimateStepsByRadius
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashBoundingBox
.LCPI1_0:
	.quad	4708600750251774096     # double 6372797.5608559996
.LCPI1_1:
	.quad	4580687790476533049     # double 0.017453292519943295
	.text
	.globl	geohashBoundingBox
	.p2align	4, 0x90
	.type	geohashBoundingBox,@function
geohashBoundingBox:                     # @geohashBoundingBox
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_1
# %bb.2:
	movq	%rdi, %rbx
	divsd	.LCPI1_0(%rip), %xmm2
	movsd	%xmm2, -16(%rbp)        # 8-byte Spill
	movapd	%xmm1, %xmm2
	mulsd	.LCPI1_1(%rip), %xmm2
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movapd	%xmm2, %xmm0
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	divsd	.LCPI1_1(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	addsd	-24(%rbp), %xmm1        # 8-byte Folded Reload
	movsd	%xmm1, 16(%rbx)
	movapd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 24(%rbx)
	movl	$1, %eax
	jmp	.LBB1_3
.LBB1_1:
	xorl	%eax, %eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	geohashBoundingBox, .Lfunc_end1-geohashBoundingBox
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashGetAreasByRadius
.LCPI2_0:
	.quad	4708600750251774096     # double 6372797.5608559996
.LCPI2_1:
	.quad	4580687790476533049     # double 0.017453292519943295
.LCPI2_2:
	.quad	4716144046444872991     # double 20037726.370000001
.LCPI2_3:
	.quad	4634344754052595712     # double 66
.LCPI2_4:
	.quad	-4589027282802180096    # double -66
.LCPI2_5:
	.quad	4635329916471083008     # double 80
.LCPI2_6:
	.quad	-4588042120383692800    # double -80
.LCPI2_7:
	.quad	4602678819172646912     # double 0.5
.LCPI2_8:
	.quad	4713104349879144592     # double 12745595.121711999
	.text
	.globl	geohashGetAreasByRadius
	.p2align	4, 0x90
	.type	geohashGetAreasByRadius,@function
geohashGetAreasByRadius:                # @geohashGetAreasByRadius
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
	movsd	%xmm2, -80(%rbp)        # 8-byte Spill
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	callq	cos
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$26, %r14b
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_1
	jnp	.LBB2_16
.LBB2_1:
	movsd	-136(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jbe	.LBB2_4
# %bb.2:                                # %.preheader
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm1
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB2_3
.LBB2_4:
	movapd	%xmm3, %xmm1
	ucomisd	.LCPI2_3(%rip), %xmm3
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB2_7
# %bb.5:
	movsd	.LCPI2_4(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB2_7
# %bb.6:
	addl	$-2, %r14d
	jmp	.LBB2_11
.LBB2_7:
	ucomisd	.LCPI2_5(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB2_10
# %bb.8:
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB2_10
# %bb.9:
	addl	$-3, %r14d
	jmp	.LBB2_11
.LBB2_10:
	addl	$-4, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB2_12
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$26, %eax
	cmpl	$27, %r14d
	jge	.LBB2_14
	jmp	.LBB2_15
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB2_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB2_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_16:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r14b, %r12d
	leaq	-112(%rbp), %rbx
	leaq	-96(%rbp), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	geohashGetCoordRange
	leaq	-160(%rbp), %r13
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%r12d, %edx
	movq	%r13, %rcx
	callq	geohashEncode
	leaq	-288(%rbp), %rsi
	movq	%r13, %rdi
	callq	geohashNeighbors
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-160(%rbp), %rdi
	movl	-152(%rbp), %esi
	leaq	-368(%rbp), %rdx
	callq	geohashDecode
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-288(%rbp), %rdi
	movl	-280(%rbp), %esi
	leaq	-560(%rbp), %rdx
	callq	geohashDecode
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-240(%rbp), %rdi
	movl	-232(%rbp), %esi
	leaq	-512(%rbp), %rdx
	callq	geohashDecode
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-272(%rbp), %rdi
	movl	-264(%rbp), %esi
	leaq	-464(%rbp), %rdx
	callq	geohashDecode
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-256(%rbp), %rdi
	movl	-248(%rbp), %esi
	leaq	-416(%rbp), %rdx
	callq	geohashDecode
	movl	$42, __A_VARIABLE(%rip)
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movsd	-520(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
	subsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	mulsd	.LCPI2_7(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm0
	mulsd	.LCPI2_7(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	sin
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-312(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	callq	sqrt
	callq	asin
	mulsd	.LCPI2_8(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB2_18:
	movsd	-480(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	mulsd	.LCPI2_7(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-120(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	callq	sqrt
	callq	asin
	mulsd	.LCPI2_8(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_20
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB2_20:
	movsd	-440(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm1
	movsd	.LCPI2_7(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0       # 8-byte Folded Reload
	mulsd	.LCPI2_7(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-120(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	callq	sqrt
	callq	asin
	mulsd	.LCPI2_8(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_22
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB2_22:
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0       # 8-byte Folded Reload
	mulsd	.LCPI2_7(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	callq	sqrt
	callq	asin
	mulsd	.LCPI2_8(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movsd	-80(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	ucomisd	%xmm0, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_24
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB2_24:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %r14b
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm3   # xmm3 = mem[0],zero
	jb	.LBB2_27
# %bb.25:
	testl	%ebx, %ebx
	je	.LBB2_27
# %bb.26:
	addl	$-1, %r12d
	movzbl	%r12b, %edx
	leaq	-112(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-160(%rbp), %rbx
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbx, %rcx
	callq	geohashEncode
	leaq	-288(%rbp), %rsi
	movq	%rbx, %rdi
	callq	geohashNeighbors
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-160(%rbp), %rdi
	movl	-152(%rbp), %esi
	leaq	-368(%rbp), %rdx
	callq	geohashDecode
	movsd	.LCPI2_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	-80(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
.LBB2_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jl	.LBB2_36
# %bb.28:
	divsd	.LCPI2_0(%rip), %xmm4
	movapd	%xmm4, %xmm1
	divsd	-304(%rbp), %xmm1       # 8-byte Folded Reload
	movapd	%xmm4, %xmm0
	divsd	-296(%rbp), %xmm0       # 8-byte Folded Reload
	divsd	%xmm3, %xmm1
	divsd	%xmm3, %xmm4
	movsd	-136(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm2
	subsd	%xmm4, %xmm2
	addsd	%xmm5, %xmm4
	ucomisd	-336(%rbp), %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_30
# %bb.29:
	movb	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movb	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movb	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_30:
	divsd	%xmm3, %xmm0
	movsd	-144(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	movsd	-328(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm4, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_32
# %bb.31:
	movb	$0, -280(%rbp)
	movq	$0, -288(%rbp)
	movb	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movb	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_32:
	addsd	%xmm3, %xmm0
	ucomisd	-352(%rbp), %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_34
# %bb.33:
	movb	$0, -248(%rbp)
	movq	$0, -256(%rbp)
	movb	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movb	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_34:
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_36
# %bb.35:
	movb	$0, -264(%rbp)
	movq	$0, -272(%rbp)
	movb	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movb	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_36:
	movups	-160(%rbp), %xmm0
	movq	-320(%rbp), %rax        # 8-byte Reload
	movups	%xmm0, (%rax)
	movups	-288(%rbp), %xmm0
	movq	-272(%rbp), %rdi
	movb	-264(%rbp), %cl
	movl	-263(%rbp), %edx
	movzwl	-259(%rbp), %esi
	movb	-257(%rbp), %bl
	movups	-256(%rbp), %xmm1
	movups	-240(%rbp), %xmm2
	movups	%xmm0, 64(%rax)
	movq	%rdi, 80(%rax)
	movb	%cl, 88(%rax)
	movl	%edx, 89(%rax)
	movw	%si, 93(%rax)
	movb	%bl, 95(%rax)
	movups	%xmm1, 96(%rax)
	movups	%xmm2, 112(%rax)
	movups	-224(%rbp), %xmm0
	movups	%xmm0, 128(%rax)
	movups	-208(%rbp), %xmm0
	movups	%xmm0, 144(%rax)
	movups	-192(%rbp), %xmm0
	movups	%xmm0, 160(%rax)
	movups	-176(%rbp), %xmm0
	movups	%xmm0, 176(%rax)
	movups	-368(%rbp), %xmm0
	movups	-352(%rbp), %xmm1
	movups	-336(%rbp), %xmm2
	movups	%xmm0, 16(%rax)
	movups	%xmm1, 32(%rax)
	movups	%xmm2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	geohashGetAreasByRadius, .Lfunc_end2-geohashGetAreasByRadius
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashGetDistance
.LCPI3_0:
	.quad	4580687790476533049     # double 0.017453292519943295
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
.LCPI3_2:
	.quad	4713104349879144592     # double 12745595.121711999
	.text
	.globl	geohashGetDistance
	.p2align	4, 0x90
	.type	geohashGetDistance,@function
geohashGetDistance:                     # @geohashGetDistance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movsd	.LCPI3_0(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm1
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm4, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm4, %xmm3
	movsd	%xmm3, -32(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm2, %xmm4
	subsd	%xmm0, %xmm4
	movsd	%xmm4, -8(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm3, %xmm0
	subsd	%xmm1, %xmm0
	mulsd	.LCPI3_1(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI3_1(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-8(%rbp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-24(%rbp), %xmm0        # 8-byte Folded Reload
	callq	sqrt
	callq	asin
	mulsd	.LCPI3_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	geohashGetDistance, .Lfunc_end3-geohashGetDistance
                                        # -- End function
	.globl	geohashGetAreasByRadiusWGS84 # -- Begin function geohashGetAreasByRadiusWGS84
	.p2align	4, 0x90
	.type	geohashGetAreasByRadiusWGS84,@function
geohashGetAreasByRadiusWGS84:           # @geohashGetAreasByRadiusWGS84
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	geohashGetAreasByRadius
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	geohashGetAreasByRadiusWGS84, .Lfunc_end4-geohashGetAreasByRadiusWGS84
                                        # -- End function
	.globl	geohashAlign52Bits      # -- Begin function geohashAlign52Bits
	.p2align	4, 0x90
	.type	geohashAlign52Bits,@function
geohashAlign52Bits:                     # @geohashAlign52Bits
# %bb.0:
	movq	%rdi, %rax
	addl	%esi, %esi
	movb	$52, %cl
	subb	%sil, %cl
	shlq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	geohashAlign52Bits, .Lfunc_end5-geohashAlign52Bits
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashGetDistanceIfInRadius
.LCPI6_0:
	.quad	4580687790476533049     # double 0.017453292519943295
.LCPI6_1:
	.quad	4602678819172646912     # double 0.5
.LCPI6_2:
	.quad	4713104349879144592     # double 12745595.121711999
	.text
	.globl	geohashGetDistanceIfInRadius
	.p2align	4, 0x90
	.type	geohashGetDistanceIfInRadius,@function
geohashGetDistanceIfInRadius:           # @geohashGetDistanceIfInRadius
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	movsd	%xmm4, -48(%rbp)        # 8-byte Spill
	movsd	.LCPI6_0(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm1
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm4, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm4, %xmm3
	movsd	%xmm3, -40(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm2, %xmm4
	subsd	%xmm0, %xmm4
	movsd	%xmm4, -16(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm3, %xmm0
	subsd	%xmm1, %xmm0
	mulsd	.LCPI6_1(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI6_1(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-24(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	callq	sqrt
	callq	asin
	mulsd	.LCPI6_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	ucomisd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	setbe	%al
	movsd	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	geohashGetDistanceIfInRadius, .Lfunc_end6-geohashGetDistanceIfInRadius
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function geohashGetDistanceIfInRadiusWGS84
.LCPI7_0:
	.quad	4580687790476533049     # double 0.017453292519943295
.LCPI7_1:
	.quad	4602678819172646912     # double 0.5
.LCPI7_2:
	.quad	4713104349879144592     # double 12745595.121711999
	.text
	.globl	geohashGetDistanceIfInRadiusWGS84
	.p2align	4, 0x90
	.type	geohashGetDistanceIfInRadiusWGS84,@function
geohashGetDistanceIfInRadiusWGS84:      # @geohashGetDistanceIfInRadiusWGS84
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	movsd	%xmm4, -48(%rbp)        # 8-byte Spill
	movsd	.LCPI7_0(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm1
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm4, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm4, %xmm3
	movsd	%xmm3, -40(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm2, %xmm4
	subsd	%xmm0, %xmm4
	movsd	%xmm4, -16(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm3, %xmm0
	subsd	%xmm1, %xmm0
	mulsd	.LCPI7_1(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI7_1(%rip), %xmm0
	callq	sin
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-24(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0        # 8-byte Folded Reload
	callq	sqrt
	callq	asin
	mulsd	.LCPI7_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm0, (%rbx)
	xorl	%eax, %eax
	ucomisd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	setbe	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	geohashGetDistanceIfInRadiusWGS84, .Lfunc_end7-geohashGetDistanceIfInRadiusWGS84
                                        # -- End function
	.type	DEG_TO_RAD,@object      # @DEG_TO_RAD
	.section	.rodata,"a",@progbits
	.globl	DEG_TO_RAD
	.p2align	3
DEG_TO_RAD:
	.quad	4580687790476533049     # double 0.017453292519943295
	.size	DEG_TO_RAD, 8

	.type	EARTH_RADIUS_IN_METERS,@object # @EARTH_RADIUS_IN_METERS
	.globl	EARTH_RADIUS_IN_METERS
	.p2align	3
EARTH_RADIUS_IN_METERS:
	.quad	4708600750251774096     # double 6372797.5608559996
	.size	EARTH_RADIUS_IN_METERS, 8

	.type	MERCATOR_MAX,@object    # @MERCATOR_MAX
	.globl	MERCATOR_MAX
	.p2align	3
MERCATOR_MAX:
	.quad	4716144046444872991     # double 20037726.370000001
	.size	MERCATOR_MAX, 8

	.type	MERCATOR_MIN,@object    # @MERCATOR_MIN
	.globl	MERCATOR_MIN
	.p2align	3
MERCATOR_MIN:
	.quad	-4507227990409902817    # double -20037726.370000001
	.size	MERCATOR_MIN, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
