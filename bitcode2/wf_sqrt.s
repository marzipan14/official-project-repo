	.text
	.file	"wf_sqrt.c"
	.globl	sqrtf                   # -- Begin function sqrtf
	.p2align	4, 0x90
	.type	sqrtf,@function
sqrtf:                                  # @sqrtf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__ieee754_sqrtf
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_12
# %bb.1:
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	xorps	%xmm0, %xmm0
	ucomiss	-12(%rbp), %xmm0        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jbe	.LBB0_12
# %bb.4:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_5
# %bb.6:
	movabsq	$9221120237041090560, %rcx # imm = 0x7FF8000000000000
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_2:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_12
.LBB0_5:
	movq	$0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	leaq	-64(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_9
.LBB0_8:
	callq	__errno
	movl	$33, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movl	-24(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_11
# %bb.10:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sqrtf, .Lfunc_end0-sqrtf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sqrtf"
	.size	.L.str, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
