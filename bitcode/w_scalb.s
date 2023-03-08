	.text
	.file	"w_scalb.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function scalb
.LCPI0_0:
	.quad	-4503599627370496       # double -Inf
	.quad	9218868437227405312     # double +Inf
	.text
	.globl	scalb
	.p2align	4, 0x90
	.type	scalb,@function
scalb:                                  # @scalb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	%xmm1, -32(%rbp)        # 8-byte Spill
	callq	__ieee754_scalb
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_17
# %bb.1:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	finite
	testl	%eax, %eax
	je	.LBB0_8
.LBB0_2:
	xorpd	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_5
	jp	.LBB0_5
# %bb.3:
	movapd	%xmm1, %xmm0
	ucomisd	-24(%rbp), %xmm1        # 8-byte Folded Reload
	jne	.LBB0_4
	jnp	.LBB0_5
.LBB0_4:
	movl	$4, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	xorps	%xmm0, %xmm0
	callq	copysign
	jmp	.LBB0_11
.LBB0_5:
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	jne	.LBB0_7
# %bb.6:
	callq	__errno
	movl	$34, (%rax)
.LBB0_7:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_17
.LBB0_8:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_2
# %bb.9:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	je	.LBB0_2
# %bb.10:
	movl	$3, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	seta	%al
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	.LCPI0_0(,%rax,8), %xmm0 # xmm0 = mem[0],zero
.LBB0_11:
	movsd	%xmm0, -48(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_13
# %bb.12:
	leaq	-80(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_14
.LBB0_13:
	callq	__errno
	movl	$34, (%rax)
.LBB0_14:
	movl	-40(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_16
# %bb.15:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_16:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scalb, .Lfunc_end0-scalb
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"scalb"
	.size	.L.str, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
