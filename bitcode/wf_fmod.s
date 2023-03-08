	.text
	.file	"wf_fmod.c"
	.globl	fmodf                   # -- Begin function fmodf
	.p2align	4, 0x90
	.type	fmodf,@function
fmodf:                                  # @fmodf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	movaps	%xmm0, -32(%rbp)        # 16-byte Spill
	movaps	%xmm1, -48(%rbp)        # 16-byte Spill
	callq	__ieee754_fmodf
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_14
# %bb.1:
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	movaps	-48(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_7
# %bb.2:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	xorps	%xmm0, %xmm0
	movaps	-48(%rbp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_7
	jp	.LBB0_7
# %bb.3:
	testl	%eax, %eax
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB0_14
# %bb.4:
	movl	$1, -96(%rbp)
	movq	$.L.str, -88(%rbp)
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	cvtps2pd	%xmm0, %xmm0
	movl	$0, -56(%rbp)
	movups	%xmm0, -80(%rbp)
	movl	__fdlib_version(%rip), %eax
	testl	%eax, %eax
	je	.LBB0_8
# %bb.5:
	movabsq	$9221120237041090560, %rcx # imm = 0x7FF8000000000000
	movq	%rcx, -64(%rbp)
	cmpl	$2, %eax
	jne	.LBB0_9
	jmp	.LBB0_10
.LBB0_7:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_14
.LBB0_8:
	movlps	%xmm0, -64(%rbp)
.LBB0_9:
	leaq	-96(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_11
.LBB0_10:
	callq	__errno
	movl	$33, (%rax)
.LBB0_11:
	movl	-56(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_13
# %bb.12:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_13:
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fmodf, .Lfunc_end0-fmodf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fmodf"
	.size	.L.str, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
