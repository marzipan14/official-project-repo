	.text
	.file	"wf_sinh.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function sinhf
.LCPI0_0:
	.quad	-4503599627370496       # double -Inf
	.quad	9218868437227405312     # double +Inf
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.LCPI0_1:
	.long	4286578687              # float -3.40282347E+38
	.long	2139095039              # float 3.40282347E+38
	.text
	.globl	sinhf
	.p2align	4, 0x90
	.type	sinhf,@function
sinhf:                                  # @sinhf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	callq	__ieee754_sinhf
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_12
# %bb.1:
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_12
.LBB0_3:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	je	.LBB0_12
# %bb.4:
	movl	$3, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movss	-16(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_5
# %bb.6:
	xorl	%ecx, %ecx
	ucomiss	%xmm0, %xmm1
	seta	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_5:
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm1
	seta	%al
	movss	.LCPI0_1(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
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
	movl	$34, (%rax)
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
	.size	sinhf, .Lfunc_end0-sinhf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sinhf"
	.size	.L.str, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
