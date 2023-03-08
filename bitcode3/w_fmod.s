	.text
	.file	"w_fmod.c"
	.globl	fmod                    # -- Begin function fmod
	.p2align	4, 0x90
	.type	fmod,@function
fmod:                                   # @fmod
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	%xmm1, -32(%rbp)        # 8-byte Spill
	callq	__ieee754_fmod
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_14
# %bb.1:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_7
# %bb.2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	xorpd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_7
	jp	.LBB0_7
# %bb.3:
	testl	%eax, %eax
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_14
# %bb.4:
	movl	$1, -80(%rbp)
	movq	$.L.str, -72(%rbp)
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	$0, -40(%rbp)
	movl	__fdlib_version(%rip), %eax
	testl	%eax, %eax
	je	.LBB0_8
# %bb.5:
	movabsq	$9221120237041090560, %rcx # imm = 0x7FF8000000000000
	movq	%rcx, -48(%rbp)
	cmpl	$2, %eax
	jne	.LBB0_9
	jmp	.LBB0_10
.LBB0_7:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_14
.LBB0_8:
	movsd	%xmm0, -48(%rbp)
.LBB0_9:
	leaq	-80(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_11
.LBB0_10:
	callq	__errno
	movl	$33, (%rax)
.LBB0_11:
	movl	-40(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_13
# %bb.12:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_13:
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_14:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fmod, .Lfunc_end0-fmod
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fmod"
	.size	.L.str, 5

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
