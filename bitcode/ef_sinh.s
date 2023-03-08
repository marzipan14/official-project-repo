	.text
	.file	"ef_sinh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2               # -- Begin function __ieee754_sinhf
.LCPI0_0:
	.long	1056964608              # float 0.5
	.long	3204448256              # float -0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	2096152002              # float 9.99999993E+36
.LCPI0_2:
	.long	1056964608              # float 0.5
.LCPI0_3:
	.long	1065353216              # float 1
	.text
	.globl	__ieee754_sinhf
	.p2align	4, 0x90
	.type	__ieee754_sinhf,@function
__ieee754_sinhf:                        # @__ieee754_sinhf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movd	%xmm0, %eax
	movl	%eax, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jae	.LBB0_1
# %bb.2:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sets	%cl
	movss	.LCPI0_0(,%rcx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	cmpl	$1102053375, %ebx       # imm = 0x41AFFFFF
	ja	.LBB0_8
# %bb.3:
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	ucomiss	.LCPI0_3(%rip), %xmm1
	jbe	.LBB0_5
# %bb.4:
	cmpl	$830472192, %ebx        # imm = 0x31800000
	jb	.LBB0_14
.LBB0_5:
	movss	%xmm2, -12(%rbp)        # 4-byte Spill
	callq	fabsf
	callq	expm1f
	cmpl	$1065353215, %ebx       # imm = 0x3F7FFFFF
	ja	.LBB0_7
# %bb.6:
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	addss	.LCPI0_3(%rip), %xmm0
	mulss	%xmm2, %xmm2
	divss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	jmp	.LBB0_14
.LBB0_1:
	addss	%xmm0, %xmm0
	jmp	.LBB0_14
.LBB0_8:
	cmpl	$1118925335, %ebx       # imm = 0x42B17217
	ja	.LBB0_11
# %bb.9:
	movss	%xmm2, -12(%rbp)        # 4-byte Spill
	callq	fabsf
	callq	__ieee754_expf
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_10
.LBB0_11:
	cmpl	$1119016188, %ebx       # imm = 0x42B2D4FC
	ja	.LBB0_13
# %bb.12:
	movss	%xmm2, -12(%rbp)        # 4-byte Spill
	callq	fabsf
	mulss	.LCPI0_2(%rip), %xmm0
	callq	__ieee754_expf
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
.LBB0_10:
	mulss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.LBB0_14
.LBB0_7:
	movss	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	jmp	.LBB0_14
.LBB0_13:
	mulss	.LCPI0_1(%rip), %xmm0
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_sinhf, .Lfunc_end0-__ieee754_sinhf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
