	.text
	.file	"w_cosh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function cosh
.LCPI0_0:
	.quad	4649460627574225021     # double 710.47586007394386
	.text
	.globl	cosh
	.p2align	4, 0x90
	.type	cosh,@function
cosh:                                   # @cosh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_cosh
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_12
# %bb.1:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	ucomisd	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jbe	.LBB0_12
# %bb.4:
	movl	$3, -72(%rbp)
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	__fdlib_version(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_5
# %bb.6:
	movabsq	$9218868437227405312, %rcx # imm = 0x7FF0000000000000
	movq	%rcx, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_12
.LBB0_5:
	movabsq	$5183643170566569984, %rax # imm = 0x47EFFFFFE0000000
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	leaq	-72(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_9
.LBB0_8:
	callq	__errno
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movl	-32(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_11
# %bb.10:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cosh, .Lfunc_end0-cosh
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cosh"
	.size	.L.str, 5

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
