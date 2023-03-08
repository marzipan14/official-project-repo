	.text
	.file	"w_remainder.c"
	.globl	remainder               # -- Begin function remainder
	.p2align	4, 0x90
	.type	remainder,@function
remainder:                              # @remainder
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	callq	__ieee754_remainder
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_10
# %bb.1:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	xorpd	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB0_2
	jp	.LBB0_2
# %bb.3:
	testl	%eax, %eax
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_10
# %bb.4:
	movl	$1, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movsd	%xmm2, -56(%rbp)
	movabsq	$9221120237041090560, %rax # imm = 0x7FF8000000000000
	movq	%rax, -48(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_6
# %bb.5:
	leaq	-80(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_7
.LBB0_6:
	callq	__errno
	movl	$33, (%rax)
.LBB0_7:
	movl	-40(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_9
# %bb.8:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_9:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB0_10
.LBB0_2:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_10:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	remainder, .Lfunc_end0-remainder
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"remainder"
	.size	.L.str, 10

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
