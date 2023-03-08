	.text
	.file	"wf_remainder.c"
	.globl	remainderf              # -- Begin function remainderf
	.p2align	4, 0x90
	.type	remainderf,@function
remainderf:                             # @remainderf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	movaps	%xmm0, -96(%rbp)        # 16-byte Spill
	movaps	%xmm1, -32(%rbp)        # 16-byte Spill
	callq	__ieee754_remainderf
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_10
# %bb.1:
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	xorps	%xmm0, %xmm0
	movaps	-32(%rbp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_2
	jp	.LBB0_2
# %bb.3:
	testl	%eax, %eax
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB0_10
# %bb.4:
	movl	$1, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	cvtps2pd	%xmm0, %xmm0
	movups	%xmm0, -64(%rbp)
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
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_10
.LBB0_2:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB0_10:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	remainderf, .Lfunc_end0-remainderf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"remainderf"
	.size	.L.str, 11

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
