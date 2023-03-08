	.text
	.file	"w_pow.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function pow
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
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
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_pow
	movapd	%xmm0, %xmm1
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_43
# %bb.1:
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.2:
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_8
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB0_12
	jp	.LBB0_12
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_20
	jp	.LBB0_20
# %bb.5:
	movapd	%xmm1, %xmm0
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
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
	xorpd	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jne	.LBB0_43
	jp	.LBB0_43
# %bb.9:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
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
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_25
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB0_43
	jp	.LBB0_43
# %bb.14:
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.15:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	je	.LBB0_43
# %bb.16:
	movl	$4, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
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
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	xorpd	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_7
# %bb.21:
	testl	%eax, %eax
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	je	.LBB0_43
# %bb.22:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
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
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB0_43
.LBB0_25:
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.26:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.27:
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_34
# %bb.28:
	movl	$3, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_44
# %bb.29:
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, -32(%rbp)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_17
# %bb.30:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	rint
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_31
	jnp	.LBB0_17
.LBB0_31:
	movabsq	$-4503599627370496, %rax # imm = 0xFFF0000000000000
	jmp	.LBB0_47
.LBB0_34:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
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
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
.LBB0_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_44:
	movabsq	$5183643170566569984, %rax # imm = 0x47EFFFFFE0000000
	movq	%rax, -32(%rbp)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_17
# %bb.45:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	rint
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_46
	jnp	.LBB0_17
.LBB0_46:
	movabsq	$-4039728866288205824, %rax # imm = 0xC7EFFFFFE0000000
.LBB0_47:
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_17
.Lfunc_end0:
	.size	pow, .Lfunc_end0-pow
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pow"
	.size	.L.str, 4

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
