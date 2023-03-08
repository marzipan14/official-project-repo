	.text
	.file	"wf_pow.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function powf
.LCPI0_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	9221120237041090560     # double NaN
.LCPI0_2:
	.quad	-4503599627370496       # double -Inf
	.text
	.globl	powf
	.p2align	4, 0x90
	.type	powf,@function
powf:                                   # @powf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	movaps	%xmm0, -96(%rbp)        # 16-byte Spill
	movaps	%xmm1, -80(%rbp)        # 16-byte Spill
	callq	__ieee754_powf
	movaps	%xmm0, %xmm2
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_30
# %bb.1:
	movss	%xmm2, -12(%rbp)        # 4-byte Spill
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_7
# %bb.2:
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_8
# %bb.3:
	xorps	%xmm1, %xmm1
	movaps	-96(%rbp), %xmm2        # 16-byte Reload
	ucomiss	%xmm1, %xmm2
	jne	.LBB0_12
	jp	.LBB0_12
# %bb.4:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_20
	jp	.LBB0_20
# %bb.5:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	unpcklps	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	cvtps2pd	%xmm2, %xmm0
	movups	%xmm0, -48(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	je	.LBB0_25
# %bb.6:
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -32(%rbp)
	jmp	.LBB0_27
.LBB0_8:
	xorps	%xmm0, %xmm0
	movaps	-80(%rbp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	jne	.LBB0_30
	jp	.LBB0_30
# %bb.9:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	cvtps2pd	%xmm0, %xmm0
	movups	%xmm0, -48(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -32(%rbp)
	movl	__fdlib_version(%rip), %ecx
	cmpl	$2, %ecx
	je	.LBB0_11
# %bb.10:
	cmpl	$-1, %ecx
	jne	.LBB0_25
.LBB0_11:
	movq	%rax, -32(%rbp)
	jmp	.LBB0_27
.LBB0_12:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_31
.LBB0_13:
	xorps	%xmm0, %xmm0
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	jne	.LBB0_30
	jp	.LBB0_30
# %bb.14:
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_7
# %bb.15:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	testl	%eax, %eax
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	je	.LBB0_30
# %bb.16:
	movl	$4, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-96(%rbp), %xmm1        # 16-byte Reload
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movups	%xmm0, -48(%rbp)
	movq	$0, -32(%rbp)
.LBB0_17:
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_19
# %bb.18:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_27
.LBB0_19:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB0_27
.LBB0_20:
	callq	finitef
	movaps	-80(%rbp), %xmm1        # 16-byte Reload
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_7
# %bb.21:
	testl	%eax, %eax
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	je	.LBB0_30
# %bb.22:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	cvtps2pd	%xmm0, %xmm0
	movups	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorps	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_24
# %bb.23:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB0_24:
	movsd	%xmm0, -32(%rbp)
	cmpl	$2, %eax
	je	.LBB0_26
.LBB0_25:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_27
.LBB0_26:
	callq	__errno
	movl	$33, (%rax)
.LBB0_27:
	movl	-24(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_29
# %bb.28:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_29:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm0, %xmm2
	jmp	.LBB0_30
.LBB0_7:
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm2, %xmm0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_31:
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_13
# %bb.32:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_13
# %bb.33:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_40
# %bb.34:
	movl	$3, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movaps	-96(%rbp), %xmm2        # 16-byte Reload
	movaps	%xmm2, %xmm0
	movaps	-80(%rbp), %xmm1        # 16-byte Reload
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	cvtps2pd	%xmm0, %xmm0
	movl	$0, -24(%rbp)
	movups	%xmm0, -48(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	je	.LBB0_42
# %bb.35:
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, -32(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	%xmm2, %xmm0
	jbe	.LBB0_17
# %bb.36:
	mulss	.LCPI0_0(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	rint
	ucomisd	-80(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_37
	jnp	.LBB0_17
.LBB0_37:
	movabsq	$-4503599627370496, %rax # imm = 0xFFF0000000000000
	movq	%rax, -32(%rbp)
	jmp	.LBB0_17
.LBB0_40:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	unpcklps	-80(%rbp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	cvtps2pd	%xmm0, %xmm0
	movups	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorps	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_24
# %bb.41:
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_24
.LBB0_42:
	movabsq	$5183643170566569984, %rax # imm = 0x47EFFFFFE0000000
	movq	%rax, -32(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	%xmm2, %xmm0
	jbe	.LBB0_17
# %bb.43:
	mulss	.LCPI0_0(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	rint
	ucomisd	-80(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_44
	jnp	.LBB0_17
.LBB0_44:
	movabsq	$-4039728866288205824, %rax # imm = 0xC7EFFFFFE0000000
	movq	%rax, -32(%rbp)
	jmp	.LBB0_17
.Lfunc_end0:
	.size	powf, .Lfunc_end0-powf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"powf"
	.size	.L.str, 5

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
