	.text
	.file	"wf_log10.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function log10f
.LCPI0_0:
	.quad	-4503599627370496       # double -Inf
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
	.text
	.globl	log10f
	.p2align	4, 0x90
	.type	log10f,@function
log10f:                                 # @log10f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	callq	__ieee754_log10f
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_15
# %bb.1:
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	xorps	%xmm0, %xmm0
	movss	-16(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB0_2
# %bb.3:
	testl	%eax, %eax
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB0_15
# %bb.4:
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_8
	jp	.LBB0_8
# %bb.5:
	movl	$2, -64(%rbp)
	cmpl	$2, %eax
	je	.LBB0_6
# %bb.7:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_12
.LBB0_6:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB0_12
.LBB0_2:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_15
.LBB0_8:
	movl	$1, -64(%rbp)
	cmpl	$2, %eax
	je	.LBB0_10
# %bb.9:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_11
.LBB0_10:
	callq	__errno
	movl	$33, (%rax)
.LBB0_11:
	movl	$.L.str.1, %edi
	callq	nan
	movsd	%xmm0, -32(%rbp)
.LBB0_12:
	movl	-24(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_14
# %bb.13:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_14:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	log10f, .Lfunc_end0-log10f
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"log10f"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
