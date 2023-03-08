	.text
	.file	"wf_pow.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function powf
.LCPI0_0:
	.long	1056964608              # float 0.5
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
	movaps	%xmm0, %xmm1
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_43
# %bb.1:
	movss	%xmm1, -12(%rbp)        # 4-byte Spill
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.2:
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_8
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movaps	-96(%rbp), %xmm2        # 16-byte Reload
	ucomiss	%xmm0, %xmm2
	jne	.LBB0_12
	jp	.LBB0_12
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movaps	-80(%rbp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_20
	jp	.LBB0_20
# %bb.5:
	movaps	%xmm1, %xmm0
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	cvtps2pd	%xmm2, %xmm0
	movups	%xmm0, -48(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_37
# %bb.6:
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -32(%rbp)
	jmp	.LBB0_39
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movaps	-80(%rbp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jne	.LBB0_43
	jp	.LBB0_43
# %bb.9:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-96(%rbp), %xmm1        # 16-byte Reload
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movups	%xmm0, -48(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -32(%rbp)
	movl	__fdlib_version(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	je	.LBB0_11
# %bb.10:
	cmpl	$-1, %ecx
	jne	.LBB0_37
.LBB0_11:
	movq	%rax, -32(%rbp)
	jmp	.LBB0_39
.LBB0_12:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_25
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	jne	.LBB0_43
	jp	.LBB0_43
# %bb.14:
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.15:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	je	.LBB0_43
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_19
# %bb.18:
	leaq	-64(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_40
.LBB0_19:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB0_39
.LBB0_20:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	xorps	%xmm0, %xmm0
	ucomiss	-80(%rbp), %xmm0        # 16-byte Folded Reload
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_7
# %bb.21:
	testl	%eax, %eax
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	je	.LBB0_43
# %bb.22:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-96(%rbp), %xmm1        # 16-byte Reload
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movups	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_36
# %bb.23:
	movabsq	$-4503599627370496, %rcx # imm = 0xFFF0000000000000
.LBB0_24:
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB0_37
	jmp	.LBB0_38
.LBB0_7:
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_43
.LBB0_25:
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.26:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.27:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_34
# %bb.28:
	movl	$3, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-96(%rbp), %xmm1        # 16-byte Reload
	movaps	%xmm1, %xmm0
	unpcklps	-80(%rbp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	cvtps2pd	%xmm0, %xmm0
	movups	%xmm0, -48(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_44
# %bb.29:
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, -32(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_17
# %bb.30:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	mulss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	rint
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	-80(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_31
	jnp	.LBB0_17
.LBB0_31:
	movabsq	$-4503599627370496, %rax # imm = 0xFFF0000000000000
	jmp	.LBB0_47
.LBB0_34:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	unpcklps	-80(%rbp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	cvtps2pd	%xmm0, %xmm0
	movups	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_36
# %bb.35:
	movabsq	$9221120237041090560, %rcx # imm = 0x7FF8000000000000
	jmp	.LBB0_24
.LBB0_36:
	movq	$0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:
	leaq	-64(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_40
.LBB0_38:
	callq	__errno
	movl	$33, (%rax)
.LBB0_39:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_40:
	movl	-24(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_42
# %bb.41:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_42:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
.LBB0_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm1, %xmm0
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_44:
	movabsq	$5183643170566569984, %rax # imm = 0x47EFFFFFE0000000
	movq	%rax, -32(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_17
# %bb.45:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	mulss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	rint
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	-80(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_46
	jnp	.LBB0_17
.LBB0_46:
	movabsq	$-4039728866288205824, %rax # imm = 0xC7EFFFFFE0000000
.LBB0_47:
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
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
