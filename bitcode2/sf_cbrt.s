	.text
	.file	"sf_cbrt.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function cbrtf
.LCPI0_0:
	.long	1266679808              # float 16777216
.LCPI0_1:
	.long	1057683632              # float 0.54285717
.LCPI0_2:
	.long	1068828496              # float 1.41428566
.LCPI0_3:
	.long	3207892721              # float -0.705306112
.LCPI0_4:
	.long	1070446299              # float 1.60714281
.LCPI0_5:
	.long	1052171118              # float 0.357142866
	.text
	.globl	cbrtf
	.p2align	4, 0x90
	.type	cbrtf,@function
cbrtf:                                  # @cbrtf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jae	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_4
# %bb.3:
	andl	$-2147483648, %eax      # imm = 0x80000000
	movd	%ecx, %xmm0
	xorl	%edx, %edx
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	seta	%dl
	cmpl	$8388608, %ecx          # imm = 0x800000
	movl	$42, __A_VARIABLE(%rip)
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movd	%xmm1, %esi
	cmovael	%ecx, %esi
	shll	$26, %edx
	movl	$2863311531, %ecx       # imm = 0xAAAAAAAB
	imulq	%rsi, %rcx
	shrq	$33, %rcx
	addl	%edx, %ecx
	addl	$642849266, %ecx        # imm = 0x265119F2
	movl	$42, __A_VARIABLE(%rip)
	movd	%ecx, %xmm1
	movdqa	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_1(%rip), %xmm2
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm0
	movss	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm3
	addss	%xmm0, %xmm3
	movss	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm2
	addss	.LCPI0_5(%rip), %xmm2
	mulss	%xmm1, %xmm2
	movd	%eax, %xmm0
	por	%xmm2, %xmm0
	jmp	.LBB0_4
.LBB0_1:
	addss	%xmm0, %xmm0
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	cbrtf, .Lfunc_end0-cbrtf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
