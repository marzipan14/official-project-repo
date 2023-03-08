	.text
	.file	"s_fdim.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function fdim
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.text
	.globl	fdim
	.p2align	4, 0x90
	.type	fdim,@function
fdim:                                   # @fdim
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movl	%eax, %ebx
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB0_6
# %bb.5:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_8
.LBB0_1:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_8
.LBB0_3:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_8
.LBB0_6:
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	jbe	.LBB0_8
# %bb.7:
	subsd	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fdim, .Lfunc_end0-fdim
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
