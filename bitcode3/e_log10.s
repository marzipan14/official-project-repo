	.text
	.file	"e_log10.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_log10
.LCPI0_0:
	.quad	-4503599627370496       # double -Inf
.LCPI0_1:
	.quad	4850376798678024192     # double 18014398509481984
.LCPI0_2:
	.quad	4420844829172378422     # double 3.6942390771589308E-13
.LCPI0_3:
	.quad	4601495173785380110     # double 0.43429448190325182
.LCPI0_4:
	.quad	4599094494223097856     # double 0.30102999566361177
	.text
	.globl	__ieee754_log10
	.p2align	4, 0x90
	.type	__ieee754_log10,@function
__ieee754_log10:                        # @__ieee754_log10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%xmm0, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	xorl	%ecx, %ecx
	cmpl	$1048575, %eax          # imm = 0xFFFFF
	jg	.LBB0_6
# %bb.1:
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	orl	%edx, %ecx
	je	.LBB0_2
# %bb.3:
	testl	%eax, %eax
	js	.LBB0_4
# %bb.5:
	mulsd	.LCPI0_1(%rip), %xmm0
	movq	%xmm0, %rax
	shrq	$32, %rax
	movl	$-54, %ecx
.LBB0_6:
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jl	.LBB0_8
# %bb.7:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_9
.LBB0_8:
	movl	%eax, %edx
	sarl	$20, %edx
	leal	(%rdx,%rcx), %esi
	addl	%edx, %ecx
	addl	$-1023, %ecx            # imm = 0xFC01
	shrl	$31, %ecx
	andl	$1048575, %eax          # imm = 0xFFFFF
	leal	(%rcx,%rsi), %edx
	addl	$-1023, %edx            # imm = 0xFC01
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$20, %ecx
	orl	%eax, %ecx
	cvtsi2sd	%edx, %xmm1
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	xorl	$1072693248, %ecx       # imm = 0x3FF00000
	movq	%xmm0, %rax
	shlq	$32, %rcx
	movl	%eax, %eax
	orq	%rcx, %rax
	movq	%rax, %xmm0
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -8(%rbp)         # 8-byte Spill
	callq	__ieee754_log
	mulsd	.LCPI0_3(%rip), %xmm0
	addsd	-8(%rbp), %xmm0         # 8-byte Folded Reload
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI0_4(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.LBB0_9
.LBB0_2:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_9
.LBB0_4:
	subsd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
.LBB0_9:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_log10, .Lfunc_end0-__ieee754_log10
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
