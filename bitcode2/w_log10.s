	.text
	.file	"w_log10.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function log10
.LCPI0_0:
	.quad	-4503599627370496       # double -Inf
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
	.text
	.globl	log10
	.p2align	4, 0x90
	.type	log10,@function
log10:                                  # @log10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_log10
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_16
# %bb.1:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	xorpd	%xmm3, %xmm3
	ucomisd	-16(%rbp), %xmm3        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jb	.LBB0_16
# %bb.4:
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm2, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_0(,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movsd	%xmm1, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm3, %xmm2
	jne	.LBB0_8
	jp	.LBB0_8
# %bb.5:
	movl	$2, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB0_6
# %bb.7:
	leaq	-72(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
.LBB0_6:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB0_12
.LBB0_2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_16
.LBB0_8:
	movl	$1, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB0_10
# %bb.9:
	leaq	-72(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_11
.LBB0_10:
	callq	__errno
	movl	$33, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movl	$.L.str.1, %edi
	callq	nan
	movsd	%xmm0, -40(%rbp)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	-32(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_15
# %bb.14:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	log10, .Lfunc_end0-log10
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"log10"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
