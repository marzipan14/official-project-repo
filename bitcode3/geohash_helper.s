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
	movb	$26, %al
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB0_1
	jp	.LBB0_1
# %bb.9:
                                        # kill: def $al killed $al killed $eax
	retq
.LBB0_1:
	movl	$1, %eax
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB0_4
# %bb.2:                                # %.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm0
	addl	$1, %eax
	ucomisd	%xmm0, %xmm2
	ja	.LBB0_3
.LBB0_4:
	ucomisd	.LCPI0_1(%rip), %xmm1
	ja	.LBB0_7
# %bb.5:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_7
# %bb.6:
	addl	$-2, %eax
	jmp	.LBB0_8
.LBB0_7:
	ucomisd	.LCPI0_3(%rip), %xmm1
	seta	%cl
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%dl
	orb	%cl, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	addl	$-3, %eax
.LBB0_8:
	testl	%eax, %eax
	movl	$1, %ecx
	cmovgl	%eax, %ecx
	cmpl	$26, %ecx
	movl	$26, %eax
	cmovll	%ecx, %eax
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_2:
	.quad	4580687790476533049     # double 0.017453292519943295
	.quad	4580687790476533049     # double 0.017453292519943295
	.text
	.globl	geohashBoundingBox
	.p2align	4, 0x90
	.type	geohashBoundingBox,@function
geohashBoundingBox:                     # @geohashBoundingBox
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB1_1
# %bb.2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %rbx
	divsd	.LCPI1_0(%rip), %xmm2
	movapd	%xmm2, -32(%rbp)        # 16-byte Spill
	movapd	%xmm1, %xmm2
	mulsd	.LCPI1_1(%rip), %xmm2
	movapd	%xmm2, -64(%rbp)        # 16-byte Spill
	movaps	%xmm0, -48(%rbp)        # 16-byte Spill
	movapd	%xmm2, %xmm0
	movapd	%xmm1, -80(%rbp)        # 16-byte Spill
	callq	cos
	movapd	-32(%rbp), %xmm1        # 16-byte Reload
	divsd	%xmm0, %xmm1
	divsd	.LCPI1_1(%rip), %xmm1
	movapd	-48(%rbp), %xmm0        # 16-byte Reload
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	cos
	movapd	-32(%rbp), %xmm2        # 16-byte Reload
	movapd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	unpcklpd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	divpd	.LCPI1_2(%rip), %xmm1
	movapd	-48(%rbp), %xmm0        # 16-byte Reload
	movapd	-80(%rbp), %xmm2        # 16-byte Reload
	unpcklpd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	addpd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1    # xmm1 = xmm1[1,1]
	subsd	%xmm1, %xmm2
	movsd	%xmm2, 8(%rbx)
	movupd	%xmm0, 16(%rbx)
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB1_1:
	xorl	%eax, %eax
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
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movq	%rdi, %r15
	movapd	%xmm1, %xmm0
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	cos
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movb	$26, %al
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_1
	jnp	.LBB2_9
.LBB2_1:
	movl	$1, %eax
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_4
# %bb.2:                                # %.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm1
	addl	$1, %eax
	ucomisd	%xmm1, %xmm0
	ja	.LBB2_3
.LBB2_4:
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	.LCPI2_3(%rip), %xmm1
	ja	.LBB2_7
# %bb.5:
	movsd	.LCPI2_4(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB2_7
# %bb.6:
	addl	$-2, %eax
	jmp	.LBB2_8
.LBB2_7:
	ucomisd	.LCPI2_5(%rip), %xmm1
	seta	%cl
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%dl
	orb	%cl, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	addl	$-3, %eax
.LBB2_8:
	testl	%eax, %eax
	movl	$1, %ecx
	cmovgl	%eax, %ecx
	cmpl	$26, %ecx
	movl	$26, %eax
	cmovll	%ecx, %eax
.LBB2_9:
	movzbl	%al, %r14d
	leaq	-112(%rbp), %rbx
	leaq	-96(%rbp), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	geohashGetCoordRange
	leaq	-160(%rbp), %r13
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%r14d, %edx
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
	leaq	-360(%rbp), %rdx
	callq	geohashDecode
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-288(%rbp), %rdi
	movl	-280(%rbp), %esi
	leaq	-552(%rbp), %rdx
	callq	geohashDecode
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-240(%rbp), %rdi
	movl	-232(%rbp), %esi
	leaq	-504(%rbp), %rdx
	callq	geohashDecode
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-272(%rbp), %rdi
	movl	-264(%rbp), %esi
	leaq	-456(%rbp), %rdx
	callq	geohashDecode
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-256(%rbp), %rdi
	movl	-248(%rbp), %esi
	leaq	-408(%rbp), %rdx
	callq	geohashDecode
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	movsd	-512(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
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
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%bl
	movsd	-472(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
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
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%r12b
	movsd	-432(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm0
	mulsd	.LCPI2_7(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
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
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%r13b
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
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
	movsd	-80(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	.LCPI2_8(%rip), %xmm0
	ucomisd	%xmm0, %xmm4
	seta	%al
	cmpb	$2, %r14b
	jb	.LBB2_12
# %bb.10:
	orb	%r12b, %bl
	orb	%r13b, %bl
	orb	%al, %bl
	je	.LBB2_12
# %bb.11:
	addl	$-1, %r14d
	movzbl	%r14b, %edx
	leaq	-112(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-160(%rbp), %rbx
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
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
	leaq	-360(%rbp), %rdx
	callq	geohashDecode
	movsd	-80(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
.LBB2_12:
	movsd	.LCPI2_1(%rip), %xmm3   # xmm3 = mem[0],zero
	cmpl	$2, %r14d
	jl	.LBB2_21
# %bb.13:
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
	ucomisd	-328(%rbp), %xmm2
	jbe	.LBB2_15
# %bb.14:
	movb	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movb	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movb	$0, -200(%rbp)
	movq	$0, -208(%rbp)
.LBB2_15:
	divsd	%xmm3, %xmm0
	movsd	-144(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	movsd	-320(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm4, %xmm1
	jbe	.LBB2_17
# %bb.16:
	movb	$0, -280(%rbp)
	movq	$0, -288(%rbp)
	movb	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movb	$0, -184(%rbp)
	movq	$0, -192(%rbp)
.LBB2_17:
	addsd	%xmm3, %xmm0
	ucomisd	-344(%rbp), %xmm2
	jbe	.LBB2_19
# %bb.18:
	movb	$0, -248(%rbp)
	movq	$0, -256(%rbp)
	movb	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movb	$0, -184(%rbp)
	movq	$0, -192(%rbp)
.LBB2_19:
	movsd	-336(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_21
# %bb.20:
	movb	$0, -264(%rbp)
	movq	$0, -272(%rbp)
	movb	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movb	$0, -216(%rbp)
	movq	$0, -224(%rbp)
.LBB2_21:
	movups	-160(%rbp), %xmm0
	movups	%xmm0, (%r15)
	movups	-288(%rbp), %xmm0
	movq	-272(%rbp), %rax
	movb	-264(%rbp), %cl
	movl	-263(%rbp), %edx
	movzwl	-259(%rbp), %esi
	movb	-257(%rbp), %bl
	movups	-256(%rbp), %xmm1
	movups	-240(%rbp), %xmm2
	movups	%xmm0, 64(%r15)
	movq	%rax, 80(%r15)
	movb	%cl, 88(%r15)
	movl	%edx, 89(%r15)
	movw	%si, 93(%r15)
	movb	%bl, 95(%r15)
	movups	%xmm1, 96(%r15)
	movups	%xmm2, 112(%r15)
	movups	-224(%rbp), %xmm0
	movups	%xmm0, 128(%r15)
	movups	-208(%rbp), %xmm0
	movups	%xmm0, 144(%r15)
	movups	-192(%rbp), %xmm0
	movups	%xmm0, 160(%r15)
	movups	-176(%rbp), %xmm0
	movups	%xmm0, 176(%r15)
	movups	-360(%rbp), %xmm0
	movups	-344(%rbp), %xmm1
	movups	-328(%rbp), %xmm2
	movups	%xmm0, 16(%r15)
	movups	%xmm1, 32(%r15)
	movups	%xmm2, 48(%r15)
	movq	%r15, %rax
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
	mulsd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm3
	movsd	%xmm3, -32(%rbp)        # 8-byte Spill
	mulsd	%xmm2, %xmm4
	subsd	%xmm0, %xmm4
	movsd	%xmm4, -8(%rbp)         # 8-byte Spill
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
	mulsd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm3
	movsd	%xmm3, -40(%rbp)        # 8-byte Spill
	mulsd	%xmm2, %xmm4
	subsd	%xmm0, %xmm4
	movsd	%xmm4, -16(%rbp)        # 8-byte Spill
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
	movsd	%xmm0, (%rbx)
	xorl	%eax, %eax
	ucomisd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	setbe	%al
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
	mulsd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm3
	movsd	%xmm3, -40(%rbp)        # 8-byte Spill
	mulsd	%xmm2, %xmm4
	subsd	%xmm0, %xmm4
	movsd	%xmm4, -16(%rbp)        # 8-byte Spill
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
	movsd	%xmm0, (%rbx)
	xorl	%eax, %eax
	ucomisd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	setbe	%al
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
