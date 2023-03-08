	.text
	.file	"w_gamma.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function gamma
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	gamma
	.p2align	4, 0x90
	.type	gamma,@function
gamma:                                  # @gamma
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__getreent
	leaq	224(%rax), %rdi
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__ieee754_gamma_r
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_15
# %bb.1:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	finite
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_15
.LBB0_3:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_15
# %bb.4:
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	xorl	%eax, %eax
	cmpl	$0, __fdlib_version(%rip)
	movsd	%xmm0, -56(%rbp)
	sete	%al
	movsd	.LCPI0_0(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	movsd	%xmm1, -40(%rbp)
	callq	floor
	xorpd	%xmm1, %xmm1
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jb	.LBB0_9
# %bb.5:
	movapd	%xmm2, %xmm1
	ucomisd	%xmm2, %xmm0
	jne	.LBB0_9
	jp	.LBB0_9
# %bb.6:
	movl	$2, -72(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_7
# %bb.8:
	leaq	-72(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_12
.LBB0_7:
	callq	__errno
	movl	$33, (%rax)
	jmp	.LBB0_12
.LBB0_9:
	movl	$3, -72(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_11
# %bb.10:
	leaq	-72(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_12
.LBB0_11:
	callq	__errno
	movl	$34, (%rax)
.LBB0_12:
	movl	-32(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_14
# %bb.13:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_14:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gamma, .Lfunc_end0-gamma
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gamma"
	.size	.L.str, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
