	.text
	.file	"e_log.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_log
.LCPI0_0:
	.quad	-4503599627370496       # double -Inf
.LCPI0_1:
	.quad	4850376798678024192     # double 18014398509481984
.LCPI0_2:
	.quad	-4616189618054758400    # double -1
.LCPI0_3:
	.quad	4611686018427387904     # double 2
.LCPI0_4:
	.quad	4594685411790997151     # double 0.15313837699209373
.LCPI0_5:
	.quad	4597174411056806063     # double 0.22222198432149784
.LCPI0_6:
	.quad	4600877379321592324     # double 0.39999999999409419
.LCPI0_7:
	.quad	4594499633228436036     # double 0.14798198605116586
.LCPI0_8:
	.quad	4595719342595441630     # double 0.1818357216161805
.LCPI0_9:
	.quad	4598818590951641945     # double 0.28571428743662391
.LCPI0_10:
	.quad	4604180019048437139     # double 0.66666666666667351
.LCPI0_11:
	.quad	4604418534311723008     # double 0.69314718036912382
.LCPI0_12:
	.quad	-4761929956433773450    # double -1.9082149292705877E-10
.LCPI0_13:
	.quad	4602678819172646912     # double 0.5
.LCPI0_14:
	.quad	4461442080421002358     # double 1.9082149292705877E-10
.LCPI0_15:
	.quad	-4623695617433709227    # double -0.33333333333333331
	.text
	.globl	__ieee754_log
	.p2align	4, 0x90
	.type	__ieee754_log,@function
__ieee754_log:                          # @__ieee754_log
# %bb.0:
	movq	%xmm0, %rcx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %edx          # imm = 0xFFFFF
	jg	.LBB0_4
# %bb.1:
	movl	%edx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_10
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB0_14
# %bb.3:
	mulsd	.LCPI0_1(%rip), %xmm0
	movq	%xmm0, %rdx
	shrq	$32, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-54, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %edx       # imm = 0x7FF00000
	jl	.LBB0_6
# %bb.5:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_23
.LBB0_6:
	movl	%edx, %esi
	sarl	$20, %esi
	addl	%eax, %esi
	movl	%edx, %r9d
	andl	$1048575, %r9d          # imm = 0xFFFFF
	leal	614244(%r9), %eax
	movl	%eax, %edi
	andl	$1048576, %edi          # imm = 0x100000
	orl	%r9d, %edi
	xorl	$1072693248, %edi       # imm = 0x3FF00000
	movq	%xmm0, %r8
	shlq	$32, %rdi
	movl	%r8d, %ecx
	orq	%rdi, %rcx
	movq	%rcx, %xmm1
	shrl	$20, %eax
	addl	%esi, %eax
	addl	$-1023, %eax            # imm = 0xFC01
	addsd	.LCPI0_2(%rip), %xmm1
	addl	$2, %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	ja	.LBB0_11
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_15
	jp	.LBB0_15
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_23
# %bb.9:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI0_14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	jmp	.LBB0_23
.LBB0_10:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_23
.LBB0_11:
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvtsi2sd	%eax, %xmm3
	movapd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm5
	mulsd	%xmm0, %xmm5
	movl	$440401, %ecx           # imm = 0x6B851
	subl	%r9d, %ecx
	movsd	.LCPI0_4(%rip), %xmm6   # xmm6 = mem[0],zero
	mulsd	%xmm5, %xmm6
	addsd	.LCPI0_5(%rip), %xmm6
	addl	$-398458, %r9d          # imm = 0xFFF9EB86
	mulsd	%xmm5, %xmm6
	addsd	.LCPI0_6(%rip), %xmm6
	movsd	.LCPI0_7(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm5, %xmm4
	addsd	.LCPI0_8(%rip), %xmm4
	orl	%ecx, %r9d
	mulsd	%xmm5, %xmm4
	addsd	.LCPI0_9(%rip), %xmm4
	mulsd	%xmm5, %xmm6
	mulsd	%xmm5, %xmm4
	addsd	.LCPI0_10(%rip), %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	jle	.LBB0_17
# %bb.12:
	movsd	.LCPI0_13(%rip), %xmm5  # xmm5 = mem[0],zero
	mulsd	%xmm1, %xmm5
	mulsd	%xmm1, %xmm5
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_19
# %bb.13:
	movsd	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm5, %xmm4
	mulsd	%xmm4, %xmm2
	mulsd	.LCPI0_14(%rip), %xmm3
	addsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm5
	subsd	%xmm1, %xmm5
	subsd	%xmm5, %xmm0
	jmp	.LBB0_23
.LBB0_14:
	subsd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	jmp	.LBB0_23
.LBB0_15:
	movapd	%xmm1, %xmm0
	movsd	.LCPI0_15(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	.LCPI0_13(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_21
# %bb.16:
	cvtsi2sd	%eax, %xmm3
	movsd	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm0
	mulsd	.LCPI0_12(%rip), %xmm3
	addsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	jmp	.LBB0_23
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_20
# %bb.18:
	movsd	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movapd	%xmm1, %xmm5
	subsd	%xmm4, %xmm5
	mulsd	.LCPI0_12(%rip), %xmm3
	mulsd	%xmm5, %xmm2
	addsd	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm0
	jmp	.LBB0_23
.LBB0_19:
	addsd	%xmm5, %xmm4
	mulsd	%xmm4, %xmm2
	subsd	%xmm2, %xmm5
	subsd	%xmm5, %xmm1
	jmp	.LBB0_22
.LBB0_20:
	movapd	%xmm1, %xmm0
	subsd	%xmm4, %xmm0
	mulsd	%xmm0, %xmm2
.LBB0_21:
	subsd	%xmm2, %xmm1
.LBB0_22:
	movapd	%xmm1, %xmm0
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__ieee754_log, .Lfunc_end0-__ieee754_log
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
