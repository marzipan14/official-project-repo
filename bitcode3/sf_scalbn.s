	.text
	.file	"sf_scalbn.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function scalbnf
.LCPI0_0:
	.long	1275068416              # float 33554432
.LCPI0_1:
	.long	855638016               # float 2.98023224E-8
.LCPI0_2:
	.long	228737632               # float 1.0E-30
.LCPI0_3:
	.long	1900671690              # float 1.00000002E+30
	.text
	.globl	scalbnf
	.p2align	4, 0x90
	.type	scalbnf,@function
scalbnf:                                # @scalbnf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	je	.LBB0_15
# %bb.1:
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jae	.LBB0_2
# %bb.3:
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	ja	.LBB0_4
# %bb.5:
	mulss	.LCPI0_0(%rip), %xmm1
	cmpl	$-50001, %edi           # imm = 0xFFFF3CAF
	jg	.LBB0_6
# %bb.16:
	mulss	.LCPI0_2(%rip), %xmm1
	jmp	.LBB0_15
.LBB0_2:
	addss	%xmm1, %xmm1
	jmp	.LBB0_15
.LBB0_4:
	shrl	$23, %ecx
	jmp	.LBB0_7
.LBB0_6:
	movd	%xmm1, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	addl	$-25, %ecx
.LBB0_7:
	addl	%edi, %ecx
	cmpl	$255, %ecx
	jl	.LBB0_9
.LBB0_8:
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	copysignf
	movaps	%xmm0, %xmm1
	mulss	.LCPI0_3(%rip), %xmm1
	jmp	.LBB0_15
.LBB0_9:
	testl	%ecx, %ecx
	jle	.LBB0_11
# %bb.10:
	andl	$-2139095041, %eax      # imm = 0x807FFFFF
	shll	$23, %ecx
	orl	%eax, %ecx
	movd	%ecx, %xmm1
	jmp	.LBB0_15
.LBB0_11:
	cmpl	$-23, %ecx
	jg	.LBB0_14
# %bb.12:
	cmpl	$50001, %edi            # imm = 0xC351
	jge	.LBB0_8
# %bb.13:
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	copysignf
	movaps	%xmm0, %xmm1
	mulss	.LCPI0_2(%rip), %xmm1
	jmp	.LBB0_15
.LBB0_14:
	andl	$-2139095041, %eax      # imm = 0x807FFFFF
	shll	$23, %ecx
	addl	$209715200, %ecx        # imm = 0xC800000
	orl	%eax, %ecx
	movd	%ecx, %xmm1
	mulss	.LCPI0_1(%rip), %xmm1
.LBB0_15:
	movaps	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scalbnf, .Lfunc_end0-scalbnf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
