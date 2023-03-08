	.text
	.file	"wf_hypot.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function hypotf
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	hypotf
	.p2align	4, 0x90
	.type	hypotf,@function
hypotf:                                 # @hypotf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	movaps	%xmm0, -48(%rbp)        # 16-byte Spill
	movaps	%xmm1, -32(%rbp)        # 16-byte Spill
	callq	__ieee754_hypotf
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_3
# %bb.1:
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_4
.LBB0_2:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	movaps	-48(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_2
# %bb.5:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	testl	%eax, %eax
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB0_3
# %bb.6:
	movl	$3, -96(%rbp)
	movq	$.L.str, -88(%rbp)
	movl	$0, -56(%rbp)
	movaps	-48(%rbp), %xmm0        # 16-byte Reload
	unpcklps	-32(%rbp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	cvtps2pd	%xmm0, %xmm0
	movups	%xmm0, -80(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	cmpl	$2, %eax
	je	.LBB0_8
# %bb.7:
	leaq	-96(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_9
.LBB0_8:
	callq	__errno
	movl	$34, (%rax)
.LBB0_9:
	movl	-56(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_11
# %bb.10:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_11:
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_3
.Lfunc_end0:
	.size	hypotf, .Lfunc_end0-hypotf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hypotf"
	.size	.L.str, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
