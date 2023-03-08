	.text
	.file	"sf_atan.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function atanf
.LCPI0_0:
	.long	3212836864              # float -1
.LCPI0_1:
	.long	3217031168              # float -1.5
.LCPI0_2:
	.long	1069547520              # float 1.5
.LCPI0_3:
	.long	1065353216              # float 1
.LCPI0_4:
	.long	1073741824              # float 2
.LCPI0_5:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_6:
	.long	1015376343              # float 0.0162858199
.LCPI0_7:
	.long	1028381273              # float 0.0497687794
.LCPI0_8:
	.long	1032350517              # float 0.0666107312
.LCPI0_9:
	.long	1035611758              # float 0.0909088701
.LCPI0_10:
	.long	1041385765              # float 0.142857149
.LCPI0_11:
	.long	1051372203              # float 0.333333343
.LCPI0_12:
	.long	3172311585              # float -0.0365315713
.LCPI0_13:
	.long	3178164587              # float -0.0583357029
.LCPI0_14:
	.long	3181217685              # float -0.0769187585
.LCPI0_15:
	.long	3185806904              # float -0.111111104
.LCPI0_16:
	.long	3192704205              # float -0.200000003
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_17:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.LCPI0_18:
	.long	3217625051              # float -1.57079637
	.long	1070141403              # float 1.57079637
	.text
	.globl	atanf
	.p2align	4, 0x90
	.type	atanf,@function
atanf:                                  # @atanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movd	%xmm0, %r14d
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1350565888, %ebx       # imm = 0x50800000
	jb	.LBB0_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095041, %ebx       # imm = 0x7F800001
	jb	.LBB0_7
# %bb.2:
	addss	%xmm0, %xmm0
	jmp	.LBB0_20
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1054867455, %ebx       # imm = 0x3EDFFFFF
	ja	.LBB0_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpl	$822083583, %ebx        # imm = 0x30FFFFFF
	ja	.LBB0_15
# %bb.5:
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	ucomiss	.LCPI0_3(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_15
	jmp	.LBB0_20
.LBB0_7:
	xorl	%eax, %eax
	testl	%r14d, %r14d
	setg	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movss	.LCPI0_18(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_21
.LBB0_8:
	callq	fabsf
	movdqa	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1066926079, %ebx       # imm = 0x3F97FFFF
	ja	.LBB0_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1060110335, %ebx       # imm = 0x3F2FFFFF
	ja	.LBB0_13
# %bb.10:
	movaps	%xmm1, %xmm0
	addss	%xmm1, %xmm0
	addss	.LCPI0_0(%rip), %xmm0
	addss	.LCPI0_4(%rip), %xmm1
	divss	%xmm1, %xmm0
	xorl	%eax, %eax
	jmp	.LBB0_15
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1075576831, %ebx       # imm = 0x401BFFFF
	ja	.LBB0_14
# %bb.12:
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	mulss	.LCPI0_2(%rip), %xmm1
	addss	.LCPI0_3(%rip), %xmm1
	divss	%xmm1, %xmm0
	movl	$2, %eax
	jmp	.LBB0_15
.LBB0_13:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	addss	.LCPI0_3(%rip), %xmm1
	divss	%xmm1, %xmm0
	movl	$1, %eax
	jmp	.LBB0_15
.LBB0_14:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movl	$3, %eax
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movaps	%xmm2, %xmm3
	mulss	%xmm2, %xmm3
	movss	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	.LCPI0_7(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LCPI0_8(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LCPI0_9(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LCPI0_10(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LCPI0_11(%rip), %xmm1
	movss	.LCPI0_12(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	addss	.LCPI0_13(%rip), %xmm4
	mulss	%xmm3, %xmm4
	addss	.LCPI0_14(%rip), %xmm4
	mulss	%xmm3, %xmm4
	addss	.LCPI0_15(%rip), %xmm4
	mulss	%xmm3, %xmm4
	addss	.LCPI0_16(%rip), %xmm4
	mulss	%xmm2, %xmm1
	mulss	%xmm3, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_19
# %bb.16:
	cltq
	addss	%xmm1, %xmm4
	mulss	%xmm0, %xmm4
	subss	atanlo(,%rax,4), %xmm4
	movss	atanhi(,%rax,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm4
	subss	%xmm4, %xmm1
	testl	%r14d, %r14d
	jns	.LBB0_18
# %bb.17:
	xorps	.LCPI0_17(%rip), %xmm1
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm1, %xmm0
	jmp	.LBB0_21
.LBB0_19:
	addss	%xmm1, %xmm4
	mulss	%xmm0, %xmm4
	subss	%xmm4, %xmm0
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atanf, .Lfunc_end0-atanf
                                        # -- End function
	.type	atanhi,@object          # @atanhi
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
atanhi:
	.long	1055744824              # float 0.463647604
	.long	1061752794              # float 0.785398125
	.long	1065064542              # float 0.982793688
	.long	1070141402              # float 1.57079625
	.size	atanhi, 16

	.type	atanlo,@object          # @atanlo
	.p2align	4
atanlo:
	.long	833369961               # float 5.01215824E-9
	.long	857874792               # float 3.77489471E-8
	.long	856952756               # float 3.44732172E-8
	.long	866263400               # float 7.54978942E-8
	.size	atanlo, 16

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
