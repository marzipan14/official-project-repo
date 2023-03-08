	.text
	.file	"w_pow.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function pow
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
.LCPI0_1:
	.quad	9221120237041090560     # double NaN
.LCPI0_2:
	.quad	-4503599627370496       # double -Inf
	.text
	.globl	pow
	.p2align	4, 0x90
	.type	pow,@function
pow:                                    # @pow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_pow
	movapd	%xmm0, %xmm2
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_30
# %bb.1:
	movsd	%xmm2, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_7
# %bb.2:
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_8
# %bb.3:
	xorpd	%xmm1, %xmm1
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jne	.LBB0_12
	jp	.LBB0_12
# %bb.4:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_20
	jp	.LBB0_20
# %bb.5:
	movl	$1, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	%xmm2, -64(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	je	.LBB0_25
# %bb.6:
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -48(%rbp)
	jmp	.LBB0_27
.LBB0_8:
	xorpd	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jne	.LBB0_30
	jp	.LBB0_30
# %bb.9:
	movl	$1, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -56(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -48(%rbp)
	movl	__fdlib_version(%rip), %ecx
	cmpl	$2, %ecx
	je	.LBB0_11
# %bb.10:
	cmpl	$-1, %ecx
	jne	.LBB0_25
.LBB0_11:
	movq	%rax, -48(%rbp)
	jmp	.LBB0_27
.LBB0_12:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	je	.LBB0_31
.LBB0_13:
	xorpd	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB0_30
	jp	.LBB0_30
# %bb.14:
	callq	finite
	testl	%eax, %eax
	je	.LBB0_7
# %bb.15:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	testl	%eax, %eax
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB0_30
# %bb.16:
	movl	$4, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	$0, -48(%rbp)
.LBB0_17:
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_19
# %bb.18:
	leaq	-80(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_27
.LBB0_19:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB0_27
.LBB0_20:
	callq	finite
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_7
# %bb.21:
	testl	%eax, %eax
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB0_30
# %bb.22:
	movl	$1, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_24
# %bb.23:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB0_24:
	movsd	%xmm0, -48(%rbp)
	cmpl	$2, %eax
	je	.LBB0_26
.LBB0_25:
	leaq	-80(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_27
.LBB0_26:
	callq	__errno
	movl	$33, (%rax)
.LBB0_27:
	movl	-40(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_29
# %bb.28:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_29:
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	jmp	.LBB0_30
.LBB0_7:
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB0_30:
	movapd	%xmm2, %xmm0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_31:
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	je	.LBB0_13
# %bb.32:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	je	.LBB0_13
# %bb.33:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_40
# %bb.34:
	movl	$3, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, -64(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	je	.LBB0_42
# %bb.35:
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, -48(%rbp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB0_17
# %bb.36:
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	rint
	ucomisd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_37
	jnp	.LBB0_17
.LBB0_37:
	movabsq	$-4503599627370496, %rax # imm = 0xFFF0000000000000
	movq	%rax, -48(%rbp)
	jmp	.LBB0_17
.LBB0_40:
	movl	$1, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_24
# %bb.41:
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_24
.LBB0_42:
	movabsq	$5183643170566569984, %rax # imm = 0x47EFFFFFE0000000
	movq	%rax, -48(%rbp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB0_17
# %bb.43:
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	rint
	ucomisd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_44
	jnp	.LBB0_17
.LBB0_44:
	movabsq	$-4039728866288205824, %rax # imm = 0xC7EFFFFFE0000000
	movq	%rax, -48(%rbp)
	jmp	.LBB0_17
.Lfunc_end0:
	.size	pow, .Lfunc_end0-pow
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pow"
	.size	.L.str, 4

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
