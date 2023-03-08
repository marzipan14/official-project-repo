	.text
	.file	"sf_log1p.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function log1pf
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	3212836864              # float -1
.LCPI0_2:
	.long	1056964608              # float 0.5
.LCPI0_3:
	.long	3207244459              # float -0.666666686
.LCPI0_4:
	.long	1060204928              # float 0.693138123
.LCPI0_5:
	.long	924317649               # float 9.05800061E-6
.LCPI0_6:
	.long	1073741824              # float 2
.LCPI0_7:
	.long	1041729687              # float 0.147981986
.LCPI0_8:
	.long	1042075727              # float 0.153138384
.LCPI0_9:
	.long	1044001573              # float 0.181835726
.LCPI0_10:
	.long	1046711849              # float 0.222221985
.LCPI0_11:
	.long	1049774373              # float 0.285714298
.LCPI0_12:
	.long	1053609165              # float 0.400000006
.LCPI0_13:
	.long	1059760811              # float 0.666666686
.LCPI0_14:
	.long	1275068416              # float 33554432
.LCPI0_15:
	.long	3204448256              # float -0.5
.LCPI0_16:
	.long	4286578688              # float -Inf
	.text
	.globl	log1pf
	.p2align	4, 0x90
	.type	log1pf,@function
log1pf:                                 # @log1pf
# %bb.0:
	movd	%xmm0, %ecx
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jge	.LBB0_1
# %bb.2:
	cmpl	$1054086102, %ecx       # imm = 0x3ED413D6
	jg	.LBB0_16
# %bb.3:
	movl	%ecx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$1065353216, %eax       # imm = 0x3F800000
	jb	.LBB0_7
# %bb.4:
	ucomiss	.LCPI0_1(%rip), %xmm0
	jne	.LBB0_6
	jp	.LBB0_6
# %bb.5:
	movss	.LCPI0_16(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_33
.LBB0_1:
	addss	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	jmp	.LBB0_33
.LBB0_16:
	xorps	%xmm2, %xmm2
	cmpl	$1509949439, %ecx       # imm = 0x59FFFFFF
	jg	.LBB0_21
.LBB0_17:
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movd	%xmm1, %ecx
	cmpl	$1073741823, %ecx       # imm = 0x3FFFFFFF
	jg	.LBB0_18
# %bb.19:
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	subss	%xmm2, %xmm0
	jmp	.LBB0_20
.LBB0_7:
	cmpl	$822083583, %eax        # imm = 0x30FFFFFF
	ja	.LBB0_12
# %bb.8:
	movss	.LCPI0_14(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jbe	.LBB0_11
# %bb.9:
	cmpl	$612368384, %eax        # imm = 0x24800000
	jae	.LBB0_11
# %bb.10:
	movaps	%xmm0, %xmm1
	jmp	.LBB0_33
.LBB0_18:
	subss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
.LBB0_20:
	movaps	%xmm0, %xmm2
	divss	%xmm1, %xmm2
.LBB0_21:
	movl	%ecx, %eax
	sarl	$23, %eax
	andl	$8388607, %ecx          # imm = 0x7FFFFF
	cmpl	$3474678, %ecx          # imm = 0x3504F6
	ja	.LBB0_23
# %bb.22:
	addl	$-127, %eax
	leal	1065353216(%rcx), %edx
	jmp	.LBB0_24
.LBB0_23:
	addl	$-126, %eax
	movl	$8388608, %esi          # imm = 0x800000
	subl	%ecx, %esi
	movl	%ecx, %edx
	orl	$1056964608, %edx       # imm = 0x3F000000
	shrl	$2, %esi
	movl	%esi, %ecx
.LBB0_24:
	movd	%edx, %xmm0
	addss	.LCPI0_1(%rip), %xmm0
	movss	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	testl	%ecx, %ecx
	je	.LBB0_25
.LBB0_14:
	movss	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movaps	%xmm0, %xmm4
	divss	%xmm1, %xmm4
	movaps	%xmm4, %xmm1
	mulss	%xmm4, %xmm1
	movss	.LCPI0_7(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm5
	addss	.LCPI0_8(%rip), %xmm5
	mulss	%xmm1, %xmm5
	addss	.LCPI0_9(%rip), %xmm5
	mulss	%xmm1, %xmm5
	addss	.LCPI0_10(%rip), %xmm5
	mulss	%xmm1, %xmm5
	addss	.LCPI0_11(%rip), %xmm5
	mulss	%xmm1, %xmm5
	addss	.LCPI0_12(%rip), %xmm5
	mulss	%xmm1, %xmm5
	addss	.LCPI0_13(%rip), %xmm5
	mulss	%xmm1, %xmm5
	testl	%eax, %eax
	je	.LBB0_15
# %bb.31:
	cvtsi2ss	%eax, %xmm6
	movss	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	addss	%xmm3, %xmm5
	mulss	%xmm5, %xmm4
	mulss	.LCPI0_5(%rip), %xmm6
	addss	%xmm6, %xmm2
.LBB0_32:
	addss	%xmm4, %xmm2
	subss	%xmm2, %xmm3
	subss	%xmm0, %xmm3
	subss	%xmm3, %xmm1
	jmp	.LBB0_33
.LBB0_25:
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_28
	jp	.LBB0_28
# %bb.26:
	testl	%eax, %eax
	je	.LBB0_33
# %bb.27:
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movss	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	addss	%xmm0, %xmm2
	mulss	.LCPI0_4(%rip), %xmm1
	addss	%xmm2, %xmm1
	jmp	.LBB0_33
.LBB0_15:
	addss	%xmm3, %xmm5
	mulss	%xmm5, %xmm4
	subss	%xmm4, %xmm3
.LBB0_29:
	subss	%xmm3, %xmm0
	movaps	%xmm0, %xmm1
	jmp	.LBB0_33
.LBB0_12:
	addl	$1097468384, %ecx       # imm = 0x416A09E0
	cmpl	$1097468385, %ecx       # imm = 0x416A09E1
	jb	.LBB0_17
# %bb.13:
	movss	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	xorl	%eax, %eax
                                        # implicit-def: $xmm2
	jmp	.LBB0_14
.LBB0_6:
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	jmp	.LBB0_33
.LBB0_28:
	movss	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI0_0(%rip), %xmm1
	mulss	%xmm1, %xmm3
	testl	%eax, %eax
	je	.LBB0_29
# %bb.30:
	cvtsi2ss	%eax, %xmm4
	movss	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm1
	mulss	.LCPI0_5(%rip), %xmm4
	jmp	.LBB0_32
.LBB0_11:
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	mulss	.LCPI0_15(%rip), %xmm1
	addss	%xmm0, %xmm1
.LBB0_33:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end0:
	.size	log1pf, .Lfunc_end0-log1pf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
