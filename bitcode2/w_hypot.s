	.text
	.file	"w_hypot.c"
	.globl	hypot                   # -- Begin function hypot
	.p2align	4, 0x90
	.type	hypot,@function
hypot:                                  # @hypot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	callq	__ieee754_hypot
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_3
# %bb.1:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_4
.LBB0_2:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.5:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_3
# %bb.6:
	movl	$3, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movl	$0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	__fdlib_version(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_9
# %bb.7:
	movabsq	$9218868437227405312, %rcx # imm = 0x7FF0000000000000
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB0_10
	jmp	.LBB0_11
.LBB0_9:
	movabsq	$5183643170566569984, %rax # imm = 0x47EFFFFFE0000000
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	leaq	-80(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_12
.LBB0_11:
	callq	__errno
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	-40(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_14
# %bb.13:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB0_3
.Lfunc_end0:
	.size	hypot, .Lfunc_end0-hypot
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hypot"
	.size	.L.str, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
