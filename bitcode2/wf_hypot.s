	.text
	.file	"wf_hypot.c"
	.globl	hypotf                  # -- Begin function hypotf
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_3
# %bb.1:
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_4
.LBB0_2:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	movaps	-48(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.5:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_9
# %bb.7:
	movabsq	$9218868437227405312, %rcx # imm = 0x7FF0000000000000
	movq	%rcx, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB0_10
	jmp	.LBB0_11
.LBB0_9:
	movabsq	$5183643170566569984, %rax # imm = 0x47EFFFFFE0000000
	movq	%rax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	leaq	-96(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_12
.LBB0_11:
	callq	__errno
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	-56(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_14
# %bb.13:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
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
