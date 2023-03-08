	.text
	.file	"w_sinh.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function sinh
.LCPI0_0:
	.quad	-4503599627370496       # double -Inf
	.quad	9218868437227405312     # double +Inf
.LCPI0_1:
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	sinh
	.p2align	4, 0x90
	.type	sinh,@function
sinh:                                   # @sinh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	__ieee754_sinh
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_12
# %bb.1:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	finite
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_12
.LBB0_3:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_12
# %bb.4:
	movl	$3, -72(%rbp)
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_5
# %bb.6:
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm1
	seta	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	cmpl	$2, %eax
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_5:
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	seta	%al
	movsd	.LCPI0_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB0_7:
	leaq	-72(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_9
.LBB0_8:
	callq	__errno
	movl	$34, (%rax)
.LBB0_9:
	movl	-32(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_11
# %bb.10:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_11:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_12:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sinh, .Lfunc_end0-sinh
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sinh"
	.size	.L.str, 5

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
