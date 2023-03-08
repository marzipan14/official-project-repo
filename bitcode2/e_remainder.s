	.text
	.file	"e_remainder.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_remainder
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	__ieee754_remainder
	.p2align	4, 0x90
	.type	__ieee754_remainder,@function
__ieee754_remainder:                    # @__ieee754_remainder
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%xmm1, %r15
	movq	%r15, %rbx
	shrq	$32, %rbx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	%ebx, %eax
	orl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_1
# %bb.2:
	movq	%xmm0, %r14
	movq	%r14, %r12
	shrq	$32, %r12
	andl	$2147483647, %r12d      # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435071, %r12d      # imm = 0x7FEFFFFF
	ja	.LBB0_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB0_5
# %bb.4:
	leal	-2146435072(%rbx), %eax
	orl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
.LBB0_1:
	mulsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm0
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2145386495, %ebx       # imm = 0x7FDFFFFF
	ja	.LBB0_8
# %bb.6:
	movq	%xmm1, -40(%rbp)        # 8-byte Folded Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm1
	callq	__ieee754_fmod
	movq	-40(%rbp), %xmm1        # 8-byte Folded Reload
                                        # xmm1 = mem[0],zero
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	subl	%ebx, %r12d
	movl	%r14d, %eax
	subl	%r15d, %eax
	orl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_9
# %bb.10:
	movq	%xmm1, -40(%rbp)        # 8-byte Folded Spill
	callq	fabs
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2097151, %ebx          # imm = 0x1FFFFF
	ja	.LBB0_13
# %bb.11:
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_17
# %bb.12:
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jmp	.LBB0_15
.LBB0_9:
	pxor	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	jmp	.LBB0_18
.LBB0_13:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_17
# %bb.14:
	subsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_17
# %bb.16:
	subsd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_17:
	movq	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	andq	%rcx, %r14
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	andq	%rax, %rcx
	xorq	%r14, %rcx
	movl	%eax, %eax
	orq	%rcx, %rax
	movq	%rax, %xmm0
	jmp	.LBB0_18
.Lfunc_end0:
	.size	__ieee754_remainder, .Lfunc_end0-__ieee754_remainder
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
