	.text
	.file	"sf_llrint.c"
	.globl	llrintf                 # -- Begin function llrintf
	.p2align	4, 0x90
	.type	llrintf,@function
llrintf:                                # @llrintf
# %bb.0:
	subq	$4, %rsp
	movd	%xmm0, %edx
	movl	%edx, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %eax
	cmpl	$189, %eax
	ja	.LBB0_3
# %bb.1:
	cmpl	$126, %eax
	jae	.LBB0_4
.LBB0_2:
	xorl	%eax, %eax
	jmp	.LBB0_9
.LBB0_3:
	cvttss2si	%xmm0, %rax
	jmp	.LBB0_9
.LBB0_4:
	movl	%edx, %esi
	shrl	$31, %esi
	cmpl	$150, %eax
	jb	.LBB0_6
# %bb.5:
	andl	$8388607, %edx          # imm = 0x7FFFFF
	orl	$8388608, %edx          # imm = 0x800000
	addb	$106, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	jmp	.LBB0_8
.LBB0_6:
	movl	%esi, %eax
	movss	TWO23(,%rax,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rsp)
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movd	%xmm0, %edx
	testl	$2147483647, %edx       # imm = 0x7FFFFFFF
	je	.LBB0_2
# %bb.7:
	movl	%edx, %eax
	shrl	$23, %eax
	andl	$8388607, %edx          # imm = 0x7FFFFF
	orl	$8388608, %edx          # imm = 0x800000
	movb	$-106, %cl
	subb	%al, %cl
	shrl	%cl, %edx
.LBB0_8:
	movq	%rdx, %rax
	negq	%rax
	testl	%esi, %esi
	cmoveq	%rdx, %rax
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsp
	retq
.Lfunc_end0:
	.size	llrintf, .Lfunc_end0-llrintf
                                        # -- End function
	.type	TWO23,@object           # @TWO23
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
TWO23:
	.long	1258291200              # float 8388608
	.long	3405774848              # float -8388608
	.size	TWO23, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
