	.text
	.file	"wf_gamma.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function gammaf
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	gammaf
	.p2align	4, 0x90
	.type	gammaf,@function
gammaf:                                 # @gammaf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__getreent
	leaq	224(%rax), %rdi
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__ieee754_gammaf_r
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_15
# %bb.1:
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_15
.LBB0_3:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	finitef
	testl	%eax, %eax
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB0_15
# %bb.4:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	floorf
	xorps	%xmm1, %xmm1
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	movaps	%xmm2, %xmm1
	jb	.LBB0_9
# %bb.5:
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_9
	jp	.LBB0_9
# %bb.6:
	movl	$2, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	cmpl	$2, %eax
	je	.LBB0_7
# %bb.8:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_12
.LBB0_7:
	callq	__errno
	movl	$33, (%rax)
	jmp	.LBB0_12
.LBB0_9:
	movl	$3, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	cmpl	$2, %eax
	je	.LBB0_11
# %bb.10:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_12
.LBB0_11:
	callq	__errno
	movl	$34, (%rax)
.LBB0_12:
	movl	-24(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_14
# %bb.13:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_14:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB0_15:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gammaf, .Lfunc_end0-gammaf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gammaf"
	.size	.L.str, 7

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
