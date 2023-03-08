	.text
	.file	"w_hypot.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function hypot
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	hypot
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
	je	.LBB0_3
# %bb.1:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	finite
	testl	%eax, %eax
	je	.LBB0_4
.LBB0_2:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	je	.LBB0_2
# %bb.5:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
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
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	cmpl	$2, %eax
	je	.LBB0_8
# %bb.7:
	leaq	-80(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_9
.LBB0_8:
	callq	__errno
	movl	$34, (%rax)
.LBB0_9:
	movl	-40(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_11
# %bb.10:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_11:
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
