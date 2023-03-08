	.text
	.file	"wrf_gamma.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function gammaf_r
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	gammaf_r
	.p2align	4, 0x90
	.type	gammaf_r,@function
gammaf_r:                               # @gammaf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__ieee754_gammaf_r
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_16
# %bb.1:
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_16
.LBB0_3:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB0_16
# %bb.4:
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	xorl	%eax, %eax
	cmpl	$0, __fdlib_version(%rip)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_0(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm1, %xmm0
	callq	floorf
	xorps	%xmm1, %xmm1
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_9
# %bb.5:
	movaps	%xmm2, %xmm1
	ucomiss	%xmm2, %xmm0
	jne	.LBB0_9
	jp	.LBB0_9
# %bb.6:
	movl	$2, -64(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
# %bb.8:
	leaq	-64(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
.LBB0_7:
	callq	__errno
	movl	$33, (%rax)
	jmp	.LBB0_12
.LBB0_9:
	movl	$3, -64(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_11
# %bb.10:
	leaq	-64(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
.LBB0_11:
	callq	__errno
	movl	$34, (%rax)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	-24(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_15
# %bb.14:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gammaf_r, .Lfunc_end0-gammaf_r
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gammaf"
	.size	.L.str, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
