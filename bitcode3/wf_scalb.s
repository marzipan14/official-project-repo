	.text
	.file	"wf_scalb.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function scalbf
.LCPI0_0:
	.quad	-4503599627370496       # double -Inf
	.quad	9218868437227405312     # double +Inf
	.text
	.globl	scalbf
	.p2align	4, 0x90
	.type	scalbf,@function
scalbf:                                 # @scalbf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	movaps	%xmm0, -80(%rbp)        # 16-byte Spill
	movaps	%xmm1, -96(%rbp)        # 16-byte Spill
	callq	__ieee754_scalbf
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_17
# %bb.1:
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_2
.LBB0_11:
	xorps	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_14
	jp	.LBB0_14
# %bb.12:
	movaps	%xmm1, %xmm0
	ucomiss	-80(%rbp), %xmm1        # 16-byte Folded Reload
	jne	.LBB0_13
	jnp	.LBB0_14
.LBB0_13:
	movl	$4, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	unpcklps	-96(%rbp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	cvtps2pd	%xmm0, %xmm1
	movups	%xmm1, -48(%rbp)
	xorps	%xmm0, %xmm0
	callq	copysign
	jmp	.LBB0_5
.LBB0_14:
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	testl	%eax, %eax
	jne	.LBB0_16
# %bb.15:
	callq	__errno
	movl	$34, (%rax)
.LBB0_16:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_17
.LBB0_2:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_11
# %bb.3:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_11
# %bb.4:
	movl	$3, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movaps	-80(%rbp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	seta	%al
	unpcklps	-96(%rbp), %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	cvtps2pd	%xmm1, %xmm0
	movups	%xmm0, -48(%rbp)
	movsd	.LCPI0_0(,%rax,8), %xmm0 # xmm0 = mem[0],zero
.LBB0_5:
	movsd	%xmm0, -32(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_7
# %bb.6:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_8
.LBB0_7:
	callq	__errno
	movl	$34, (%rax)
.LBB0_8:
	movl	-24(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_10
# %bb.9:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_10:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB0_17:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scalbf, .Lfunc_end0-scalbf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"scalbf"
	.size	.L.str, 7

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
