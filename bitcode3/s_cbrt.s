	.text
	.file	"s_cbrt.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function cbrt
.LCPI0_0:
	.quad	4850376798678024192     # double 18014398509481984
.LCPI0_1:
	.quad	4603064841997850097     # double 0.54285714285714282
.LCPI0_2:
	.quad	4609048195788499471     # double 1.4142857142857144
.LCPI0_3:
	.quad	-4618843984529012684    # double -0.70530612244897961
.LCPI0_4:
	.quad	4609916747145206638     # double 1.6071428571428572
.LCPI0_5:
	.quad	4600105333671292343     # double 0.35714285714285715
	.text
	.globl	cbrt
	.p2align	4, 0x90
	.type	cbrt,@function
cbrt:                                   # @cbrt
# %bb.0:
	movq	%xmm0, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %ecx       # imm = 0x7FF00000
	jb	.LBB0_2
# %bb.1:
	addsd	%xmm0, %xmm0
	retq
.LBB0_2:
	movl	%ecx, %edx
	orl	%eax, %edx
	je	.LBB0_7
# %bb.3:
	movq	%rcx, %rdx
	shlq	$32, %rdx
	movl	%eax, %esi
	orq	%rdx, %rsi
	movq	%rsi, %xmm0
	cmpl	$1048575, %ecx          # imm = 0xFFFFF
	ja	.LBB0_5
# %bb.4:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rdx
	movl	%edx, %ecx
	shrq	$32, %rdx
	movl	$2863311531, %esi       # imm = 0xAAAAAAAB
	imulq	%rdx, %rsi
	shrq	$33, %rsi
	addl	$696219795, %esi        # imm = 0x297F7893
	shlq	$32, %rsi
	orq	%rsi, %rcx
	jmp	.LBB0_6
.LBB0_5:
	movl	%ecx, %edx
	movl	$2863311531, %ecx       # imm = 0xAAAAAAAB
	imulq	%rdx, %rcx
	shrq	$33, %rcx
	addl	$715094163, %ecx        # imm = 0x2A9F7893
	shlq	$32, %rcx
.LBB0_6:
	movq	%rcx, %xmm1
	movdqa	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	.LCPI0_1(%rip), %xmm2
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	addsd	%xmm2, %xmm3
	movsd	.LCPI0_3(%rip), %xmm4   # xmm4 = mem[0],zero
	divsd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	movsd	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm4, %xmm2
	addsd	.LCPI0_5(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	movq	%xmm2, %rcx
	movabsq	$4294967296, %rdx       # imm = 0x100000000
	addq	%rcx, %rdx
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	andq	%rcx, %rdx
	movq	%rdx, %xmm1
	movdqa	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movapd	%xmm1, %xmm2
	addsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	movq	%xmm0, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	andq	%rsi, %rax
	andq	%rdx, %rcx
	orq	%rax, %rcx
	movl	%edx, %eax
	orq	%rcx, %rax
	movq	%rax, %xmm0
.LBB0_7:
	retq
.Lfunc_end0:
	.size	cbrt, .Lfunc_end0-cbrt
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
