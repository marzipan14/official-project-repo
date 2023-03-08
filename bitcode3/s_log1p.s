	.text
	.file	"s_log1p.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function log1p
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	-4616189618054758400    # double -1
.LCPI0_2:
	.quad	4602678819172646912     # double 0.5
.LCPI0_3:
	.quad	-4619192017806338731    # double -0.66666666666666663
.LCPI0_4:
	.quad	4604418534311723008     # double 0.69314718036912382
.LCPI0_5:
	.quad	4461442080421002358     # double 1.9082149292705877E-10
.LCPI0_6:
	.quad	4611686018427387904     # double 2
.LCPI0_7:
	.quad	4594499633228436036     # double 0.14798198605116586
.LCPI0_8:
	.quad	4594685411790997151     # double 0.15313837699209373
.LCPI0_9:
	.quad	4595719342595441630     # double 0.1818357216161805
.LCPI0_10:
	.quad	4597174411056806063     # double 0.22222198432149784
.LCPI0_11:
	.quad	4598818590951641945     # double 0.28571428743662391
.LCPI0_12:
	.quad	4600877379321592324     # double 0.39999999999409419
.LCPI0_13:
	.quad	4604180019048437139     # double 0.66666666666667351
.LCPI0_14:
	.quad	4850376798678024192     # double 18014398509481984
.LCPI0_15:
	.quad	-4620693217682128896    # double -0.5
.LCPI0_16:
	.quad	-4503599627370496       # double -Inf
	.text
	.globl	log1p
	.p2align	4, 0x90
	.type	log1p,@function
log1p:                                  # @log1p
# %bb.0:
	movq	%xmm0, %rcx
	shrq	$32, %rcx
	cmpl	$1071284857, %ecx       # imm = 0x3FDA8279
	jg	.LBB0_10
# %bb.1:
	movl	%ecx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$1072693248, %eax       # imm = 0x3FF00000
	jb	.LBB0_5
# %bb.2:
	ucomisd	.LCPI0_1(%rip), %xmm0
	jne	.LBB0_4
	jp	.LBB0_4
# %bb.3:
	movsd	.LCPI0_16(%rip), %xmm0  # xmm0 = mem[0],zero
	retq
.LBB0_10:
	cmpl	$2146435072, %ecx       # imm = 0x7FF00000
	jl	.LBB0_16
# %bb.11:
	addsd	%xmm0, %xmm0
	retq
.LBB0_5:
	cmpl	$1042284543, %eax       # imm = 0x3E1FFFFF
	ja	.LBB0_12
# %bb.6:
	movsd	.LCPI0_14(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB0_9
# %bb.7:
	cmpl	$1016070144, %eax       # imm = 0x3C900000
	jae	.LBB0_9
# %bb.8:
	retq
.LBB0_16:
	xorpd	%xmm2, %xmm2
	cmpl	$1128267775, %ecx       # imm = 0x433FFFFF
	jle	.LBB0_18
# %bb.17:
	movdqa	%xmm0, %xmm1
	jmp	.LBB0_22
.LBB0_12:
	addl	$1076707644, %ecx       # imm = 0x402D413C
	cmpl	$1076707645, %ecx       # imm = 0x402D413D
	jb	.LBB0_18
# %bb.13:
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	xorl	%eax, %eax
                                        # implicit-def: $xmm2
	jmp	.LBB0_14
.LBB0_18:
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	movq	%xmm1, %rcx
	shrq	$32, %rcx
	cmpl	$1073741823, %ecx       # imm = 0x3FFFFFFF
	jg	.LBB0_19
# %bb.20:
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	jmp	.LBB0_21
.LBB0_4:
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm0
	retq
.LBB0_19:
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
.LBB0_21:
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
.LBB0_22:
	movl	%ecx, %eax
	sarl	$20, %eax
	andl	$1048575, %ecx          # imm = 0xFFFFF
	cmpl	$434333, %ecx           # imm = 0x6A09D
	ja	.LBB0_24
# %bb.23:
	addl	$-1023, %eax            # imm = 0xFC01
	leal	1072693248(%rcx), %esi
	movq	%xmm1, %rdx
	shlq	$32, %rsi
	movl	%edx, %edx
	orq	%rsi, %rdx
	jmp	.LBB0_25
.LBB0_24:
	addl	$-1022, %eax            # imm = 0xFC02
	leal	1071644672(%rcx), %esi
	movq	%xmm1, %rdx
	shlq	$32, %rsi
	movl	%edx, %edx
	orq	%rsi, %rdx
	movl	$1048576, %esi          # imm = 0x100000
	subl	%ecx, %esi
	shrl	$2, %esi
	movl	%esi, %ecx
.LBB0_25:
	movq	%rdx, %xmm0
	addsd	.LCPI0_1(%rip), %xmm0
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	testl	%ecx, %ecx
	je	.LBB0_26
.LBB0_14:
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movapd	%xmm0, %xmm4
	divsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm1
	mulsd	%xmm4, %xmm1
	movsd	.LCPI0_7(%rip), %xmm5   # xmm5 = mem[0],zero
	mulsd	%xmm1, %xmm5
	addsd	.LCPI0_8(%rip), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	.LCPI0_9(%rip), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	.LCPI0_10(%rip), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	.LCPI0_11(%rip), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	.LCPI0_12(%rip), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	.LCPI0_13(%rip), %xmm5
	mulsd	%xmm1, %xmm5
	testl	%eax, %eax
	je	.LBB0_15
# %bb.32:
	cvtsi2sd	%eax, %xmm6
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm6, %xmm1
	addsd	%xmm3, %xmm5
	mulsd	%xmm5, %xmm4
	mulsd	.LCPI0_5(%rip), %xmm6
	addsd	%xmm6, %xmm2
.LBB0_33:
	addsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm1
.LBB0_34:
	movapd	%xmm1, %xmm0
	retq
.LBB0_26:
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_29
	jp	.LBB0_29
# %bb.27:
	testl	%eax, %eax
	je	.LBB0_34
# %bb.28:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm2
	mulsd	.LCPI0_4(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	retq
.LBB0_15:
	addsd	%xmm3, %xmm5
	mulsd	%xmm5, %xmm4
	subsd	%xmm4, %xmm3
.LBB0_30:
	subsd	%xmm3, %xmm0
	retq
.LBB0_9:
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI0_15(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	retq
.LBB0_29:
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	.LCPI0_0(%rip), %xmm1
	mulsd	%xmm1, %xmm3
	testl	%eax, %eax
	je	.LBB0_30
# %bb.31:
	cvtsi2sd	%eax, %xmm4
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm4, %xmm1
	mulsd	.LCPI0_5(%rip), %xmm4
	jmp	.LBB0_33
.Lfunc_end0:
	.size	log1p, .Lfunc_end0-log1p
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
