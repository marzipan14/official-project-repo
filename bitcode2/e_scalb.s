	.text
	.file	"e_scalb.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_scalb
.LCPI0_0:
	.quad	4679166345558884352     # double 65000
.LCPI0_1:
	.quad	-4544205691295891456    # double -65000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_2:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_scalb
	.p2align	4, 0x90
	.type	__ieee754_scalb,@function
__ieee754_scalb:                        # @__ieee754_scalb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movapd	%xmm1, -32(%rbp)        # 16-byte Spill
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.1:
	movapd	-32(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movapd	-32(%rbp), %xmm0        # 16-byte Reload
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_4
# %bb.6:
	movapd	-32(%rbp), %xmm0        # 16-byte Reload
	callq	rint
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	-32(%rbp), %xmm0        # 16-byte Folded Reload
	jne	.LBB0_7
	jnp	.LBB0_8
.LBB0_7:
	movapd	-32(%rbp), %xmm0        # 16-byte Reload
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm0
	jmp	.LBB0_14
.LBB0_4:
	xorpd	%xmm0, %xmm0
	movapd	-32(%rbp), %xmm1        # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_5
.LBB0_2:
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0        # 16-byte Folded Reload
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_8:
	movapd	-32(%rbp), %xmm0        # 16-byte Reload
	ucomisd	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_10
# %bb.9:
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$65000, %edi            # imm = 0xFDE8
	jmp	.LBB0_13
.LBB0_5:
	movapd	-32(%rbp), %xmm1        # 16-byte Reload
	xorpd	.LCPI0_2(%rip), %xmm1
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	jmp	.LBB0_14
.LBB0_10:
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0        # 16-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_12
# %bb.11:
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$-65000, %edi           # imm = 0xFFFF0218
	jmp	.LBB0_13
.LBB0_12:
	cvttsd2si	-32(%rbp), %edi # 16-byte Folded Reload
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_13:
	callq	scalbn
	jmp	.LBB0_14
.Lfunc_end0:
	.size	__ieee754_scalb, .Lfunc_end0-__ieee754_scalb
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
