	.text
	.file	"wr_lgamma.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function lgamma_r
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	lgamma_r
	.p2align	4, 0x90
	.type	lgamma_r,@function
lgamma_r:                               # @lgamma_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_lgamma_r
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_16
# %bb.1:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_16
.LBB0_3:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_16
# %bb.4:
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	xorl	%eax, %eax
	cmpl	$0, __fdlib_version(%rip)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_0(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	movsd	%xmm1, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	callq	floor
	xorpd	%xmm1, %xmm1
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_9
# %bb.5:
	movapd	%xmm2, %xmm1
	ucomisd	%xmm2, %xmm0
	jne	.LBB0_9
	jp	.LBB0_9
# %bb.6:
	movl	$2, -72(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
# %bb.8:
	leaq	-72(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
.LBB0_7:
	callq	__errno
	movl	$33, (%rax)
	jmp	.LBB0_12
.LBB0_9:
	movl	$3, -72(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_11
# %bb.10:
	leaq	-72(%rbp), %rdi
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
	movl	-32(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_15
# %bb.14:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lgamma_r, .Lfunc_end0-lgamma_r
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lgamma"
	.size	.L.str, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
