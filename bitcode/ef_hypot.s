	.text
	.file	"ef_hypot.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_hypotf
.LCPI0_0:
	.long	2122317824              # float 8.50705917E+37
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_hypotf
	.p2align	4, 0x90
	.type	__ieee754_hypotf,@function
__ieee754_hypotf:                       # @__ieee754_hypotf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movd	%xmm0, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	movd	%xmm1, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	%edx, %eax
	movl	%eax, %ecx
	cmoval	%edx, %ecx
	cmovbel	%edx, %eax
	movd	%eax, %xmm0
	movd	%ecx, %xmm2
	movl	%eax, %edx
	subl	%ecx, %edx
	cmpl	$251658241, %edx        # imm = 0xF000001
	jl	.LBB0_2
# %bb.1:
	addss	%xmm2, %xmm0
	jmp	.LBB0_20
.LBB0_2:
	xorl	%ebx, %ebx
	cmpl	$1484783617, %eax       # imm = 0x58800001
	jb	.LBB0_10
# %bb.3:
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jae	.LBB0_4
# %bb.9:
	addl	$-570425344, %eax       # imm = 0xDE000000
	addl	$-570425344, %ecx       # imm = 0xDE000000
	movd	%eax, %xmm0
	movd	%ecx, %xmm2
	movl	$68, %ebx
.LBB0_10:
	cmpl	$645922815, %ecx        # imm = 0x267FFFFF
	jg	.LBB0_15
# %bb.11:
	testl	%ecx, %ecx
	je	.LBB0_20
# %bb.12:
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_14
# %bb.13:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	mulss	%xmm1, %xmm0
	orl	$-126, %ebx
	jmp	.LBB0_15
.LBB0_4:
	je	.LBB0_6
# %bb.5:
	addss	%xmm2, %xmm0
.LBB0_6:
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	je	.LBB0_8
# %bb.7:
	movaps	%xmm0, %xmm2
.LBB0_8:
	movaps	%xmm2, %xmm0
	jmp	.LBB0_20
.LBB0_14:
	addl	$570425344, %eax        # imm = 0x22000000
	addl	$570425344, %ecx        # imm = 0x22000000
	addl	$-68, %ebx
	movd	%eax, %xmm0
	movd	%ecx, %xmm2
.LBB0_15:
	movdqa	%xmm0, %xmm3
	subss	%xmm2, %xmm3
	ucomiss	%xmm2, %xmm3
	jbe	.LBB0_17
# %bb.16:
	andl	$-4096, %eax            # imm = 0xF000
	movd	%eax, %xmm1
	movaps	%xmm0, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm2, %xmm2
	xorps	.LCPI0_1(%rip), %xmm2
	addss	%xmm1, %xmm0
	mulss	%xmm1, %xmm1
	mulss	%xmm3, %xmm0
	subss	%xmm0, %xmm2
	jmp	.LBB0_18
.LBB0_17:
	addss	%xmm0, %xmm0
	andl	$-4096, %ecx            # imm = 0xF000
	movd	%ecx, %xmm1
	addl	$8388608, %eax          # imm = 0x800000
	movd	%eax, %xmm4
	subss	%xmm4, %xmm0
	mulss	%xmm2, %xmm0
	subss	%xmm1, %xmm2
	mulss	%xmm3, %xmm3
	xorps	.LCPI0_1(%rip), %xmm3
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm2
	addss	%xmm2, %xmm0
	subss	%xmm0, %xmm3
	movaps	%xmm3, %xmm2
.LBB0_18:
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	callq	__ieee754_sqrtf
	testl	%ebx, %ebx
	je	.LBB0_20
# %bb.19:
	shll	$23, %ebx
	addl	$1065353216, %ebx       # imm = 0x3F800000
	movd	%ebx, %xmm1
	mulss	%xmm1, %xmm0
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_hypotf, .Lfunc_end0-__ieee754_hypotf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
