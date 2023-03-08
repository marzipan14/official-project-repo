	.text
	.file	"w_exp.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function exp
.LCPI0_0:
	.quad	4649454530587146735     # double 709.78271289338397
.LCPI0_1:
	.quad	-4573606559926636463    # double -745.13321910194111
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
.LCPI0_2:
	.quad	9218868437227405312     # double +Inf
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	exp
	.p2align	4, 0x90
	.type	exp,@function
exp:                                    # @exp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_exp
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_12
# %bb.1:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_5
# %bb.4:
	movl	$3, -72(%rbp)
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_2(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	cmpl	$2, %eax
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_12
.LBB0_5:
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jbe	.LBB0_12
# %bb.6:
	movl	$4, -72(%rbp)
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_8
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
	.size	exp, .Lfunc_end0-exp
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"exp"
	.size	.L.str, 4

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
