	.text
	.file	"ef_log.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_logf
.LCPI0_0:
	.long	4286578688              # float -Inf
.LCPI0_1:
	.long	1275068416              # float 33554432
.LCPI0_2:
	.long	3212836864              # float -1
.LCPI0_3:
	.long	1073741824              # float 2
.LCPI0_4:
	.long	1042075727              # float 0.153138384
.LCPI0_5:
	.long	1046711849              # float 0.222221985
.LCPI0_6:
	.long	1053609165              # float 0.400000006
.LCPI0_7:
	.long	1041729687              # float 0.147981986
.LCPI0_8:
	.long	1044001573              # float 0.181835726
.LCPI0_9:
	.long	1049774373              # float 0.285714298
.LCPI0_10:
	.long	1059760811              # float 0.666666686
.LCPI0_11:
	.long	1060204928              # float 0.693138123
.LCPI0_12:
	.long	3071801297              # float -9.05800061E-6
.LCPI0_13:
	.long	1056964608              # float 0.5
.LCPI0_14:
	.long	924317649               # float 9.05800061E-6
.LCPI0_15:
	.long	3198855851              # float -0.333333343
	.text
	.globl	__ieee754_logf
	.p2align	4, 0x90
	.type	__ieee754_logf,@function
__ieee754_logf:                         # @__ieee754_logf
# %bb.0:
	movd	%xmm0, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	$2147483647, %edx       # imm = 0x7FFFFFFF
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB0_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %edx       # imm = 0x7F800000
	jge	.LBB0_5
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-127, %eax
	cmpl	$8388607, %edx          # imm = 0x7FFFFF
	jg	.LBB0_8
# %bb.7:
	mulss	.LCPI0_1(%rip), %xmm0
	movd	%xmm0, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-152, %eax
.LBB0_8:
	movl	%edx, %esi
	sarl	$23, %esi
	addl	%eax, %esi
	movl	%edx, %ecx
	andl	$8388607, %ecx          # imm = 0x7FFFFF
	leal	4913952(%rcx), %eax
	movl	%eax, %edi
	andl	$8388608, %edi          # imm = 0x800000
	orl	%ecx, %edi
	xorl	$1065353216, %edi       # imm = 0x3F800000
	movd	%edi, %xmm1
	shrl	$23, %eax
	addss	.LCPI0_2(%rip), %xmm1
	addl	%esi, %eax
	addl	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	$8388592, %edx          # imm = 0x7FFFF0
	je	.LBB0_9
# %bb.15:
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movaps	%xmm1, %xmm2
	divss	%xmm0, %xmm2
	cvtsi2ss	%eax, %xmm3
	movaps	%xmm2, %xmm0
	mulss	%xmm2, %xmm0
	movaps	%xmm0, %xmm5
	mulss	%xmm0, %xmm5
	movl	$3523208, %edx          # imm = 0x35C288
	subl	%ecx, %edx
	movss	.LCPI0_4(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm6
	addss	.LCPI0_5(%rip), %xmm6
	addl	$-3187664, %ecx         # imm = 0xFFCF5C30
	mulss	%xmm5, %xmm6
	addss	.LCPI0_6(%rip), %xmm6
	movss	.LCPI0_7(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm4
	addss	.LCPI0_8(%rip), %xmm4
	orl	%edx, %ecx
	mulss	%xmm5, %xmm4
	addss	.LCPI0_9(%rip), %xmm4
	mulss	%xmm5, %xmm6
	mulss	%xmm5, %xmm4
	addss	.LCPI0_10(%rip), %xmm4
	mulss	%xmm0, %xmm4
	addss	%xmm6, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB0_19
# %bb.16:
	movss	.LCPI0_13(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm5
	mulss	%xmm1, %xmm5
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_17
# %bb.18:
	movss	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	addss	%xmm5, %xmm4
	mulss	%xmm4, %xmm2
	mulss	.LCPI0_14(%rip), %xmm3
	addss	%xmm2, %xmm3
	subss	%xmm3, %xmm5
	subss	%xmm1, %xmm5
	subss	%xmm5, %xmm0
	jmp	.LBB0_22
.LBB0_1:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_22
.LBB0_3:
	subss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	jmp	.LBB0_22
.LBB0_5:
	addss	%xmm0, %xmm0
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_12
	jp	.LBB0_12
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_22
# %bb.11:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	mulss	.LCPI0_14(%rip), %xmm0
	addss	%xmm1, %xmm0
	jmp	.LBB0_22
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_20
# %bb.21:
	movss	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	movaps	%xmm1, %xmm5
	subss	%xmm4, %xmm5
	mulss	.LCPI0_12(%rip), %xmm3
	mulss	%xmm5, %xmm2
	addss	%xmm2, %xmm3
	subss	%xmm1, %xmm3
	subss	%xmm3, %xmm0
	jmp	.LBB0_22
.LBB0_17:
	addss	%xmm5, %xmm4
	mulss	%xmm4, %xmm2
	subss	%xmm2, %xmm5
	subss	%xmm5, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.LBB0_22
.LBB0_12:
	movaps	%xmm1, %xmm0
	movss	.LCPI0_15(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	.LCPI0_13(%rip), %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.14:
	cvtsi2ss	%eax, %xmm3
	movss	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm0
	mulss	.LCPI0_12(%rip), %xmm3
	addss	%xmm3, %xmm2
	subss	%xmm1, %xmm2
	subss	%xmm2, %xmm0
	jmp	.LBB0_22
.LBB0_20:
	movaps	%xmm1, %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm0, %xmm2
.LBB0_13:
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.LBB0_22
.Lfunc_end0:
	.size	__ieee754_logf, .Lfunc_end0-__ieee754_logf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
