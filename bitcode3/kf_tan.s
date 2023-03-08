	.text
	.file	"kf_tan.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function __kernel_tanf
.LCPI0_0:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	1061752794              # float 0.785398125
.LCPI0_2:
	.long	857874792               # float 3.77489471E-8
.LCPI0_3:
	.long	3080433247              # float -1.85586377E-5
.LCPI0_4:
	.long	950268997               # float 7.81794442E-5
.LCPI0_5:
	.long	974792392               # float 5.88041265E-4
.LCPI0_6:
	.long	996894998               # float 0.00359207904
.LCPI0_7:
	.long	1018374052              # float 0.0218694881
.LCPI0_8:
	.long	1040746633              # float 0.13333334
.LCPI0_9:
	.long	936989572               # float 2.59073058E-5
.LCPI0_10:
	.long	949338234               # float 7.14072521E-5
.LCPI0_11:
	.long	964769721               # float 2.4646314E-4
.LCPI0_12:
	.long	985587272               # float 0.00145620946
.LCPI0_13:
	.long	1007761183              # float 0.00886323955
.LCPI0_14:
	.long	1029508561              # float 0.0539682545
.LCPI0_15:
	.long	1051372203              # float 0.333333343
.LCPI0_16:
	.long	4294963200              # float NaN
.LCPI0_17:
	.long	3212836864              # float -1
.LCPI0_18:
	.long	1065353216              # float 1
	.text
	.globl	__kernel_tanf
	.p2align	4, 0x90
	.type	__kernel_tanf,@function
__kernel_tanf:                          # @__kernel_tanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
                                        # kill: def $edi killed $edi def $rdi
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cvttss2si	%xmm0, %edx
	testl	%edx, %edx
	jne	.LBB0_7
# %bb.1:
	cmpl	$830472191, %ecx        # imm = 0x317FFFFF
	ja	.LBB0_7
# %bb.2:
	leal	1(%rdi), %eax
	orl	%ecx, %eax
	je	.LBB0_3
# %bb.4:
	cmpl	$1, %edi
	je	.LBB0_6
# %bb.5:                                # %select.false.sink
	movss	.LCPI0_17(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
.LBB0_6:                                # %select.end
	movaps	%xmm0, %xmm1
	jmp	.LBB0_15
.LBB0_7:
	cmpl	$1059889472, %ecx       # imm = 0x3F2CA140
	jb	.LBB0_11
# %bb.8:
	testl	%eax, %eax
	jns	.LBB0_10
# %bb.9:
	movaps	.LCPI0_0(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm2, %xmm0
	xorps	%xmm2, %xmm1
.LBB0_10:
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
.LBB0_11:
	movaps	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	movaps	%xmm3, %xmm4
	mulss	%xmm3, %xmm4
	movss	.LCPI0_3(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm2
	addss	.LCPI0_4(%rip), %xmm2
	mulss	%xmm4, %xmm2
	addss	.LCPI0_5(%rip), %xmm2
	mulss	%xmm4, %xmm2
	addss	.LCPI0_6(%rip), %xmm2
	mulss	%xmm4, %xmm2
	addss	.LCPI0_7(%rip), %xmm2
	mulss	%xmm4, %xmm2
	addss	.LCPI0_8(%rip), %xmm2
	movss	.LCPI0_9(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm5
	addss	.LCPI0_10(%rip), %xmm5
	mulss	%xmm4, %xmm5
	addss	.LCPI0_11(%rip), %xmm5
	mulss	%xmm4, %xmm5
	addss	.LCPI0_12(%rip), %xmm5
	mulss	%xmm4, %xmm5
	addss	.LCPI0_13(%rip), %xmm5
	mulss	%xmm4, %xmm5
	addss	.LCPI0_14(%rip), %xmm5
	mulss	%xmm3, %xmm5
	addss	%xmm2, %xmm5
	movaps	%xmm0, %xmm2
	mulss	%xmm3, %xmm2
	mulss	%xmm2, %xmm5
	addss	%xmm1, %xmm5
	mulss	%xmm3, %xmm5
	mulss	.LCPI0_15(%rip), %xmm2
	addss	%xmm1, %xmm5
	addss	%xmm5, %xmm2
	movaps	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	cmpl	$1059889472, %ecx       # imm = 0x3F2CA140
	jb	.LBB0_13
# %bb.12:
	xorps	%xmm3, %xmm3
	cvtsi2ss	%edi, %xmm3
	shrl	$30, %eax
	andl	$-2, %eax
	movl	$1, %ecx
	subl	%eax, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2ss	%ecx, %xmm4
	movaps	%xmm1, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm3, %xmm1
	divss	%xmm1, %xmm5
	subss	%xmm2, %xmm5
	subss	%xmm5, %xmm0
	addss	%xmm0, %xmm0
	subss	%xmm0, %xmm3
	mulss	%xmm4, %xmm3
	movaps	%xmm3, %xmm1
	jmp	.LBB0_15
.LBB0_13:
	cmpl	$1, %edi
	je	.LBB0_15
# %bb.14:
	movss	.LCPI0_16(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI0_17(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm4
	andps	%xmm3, %xmm1
	movaps	%xmm1, %xmm5
	subss	%xmm0, %xmm5
	subss	%xmm5, %xmm2
	andps	%xmm4, %xmm3
	mulss	%xmm3, %xmm1
	addss	.LCPI0_18(%rip), %xmm1
	mulss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	mulss	%xmm4, %xmm2
	addss	%xmm3, %xmm2
	movaps	%xmm2, %xmm1
	jmp	.LBB0_15
.LBB0_3:
	callq	fabsf
	movss	.LCPI0_18(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
.LBB0_15:
	movaps	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__kernel_tanf, .Lfunc_end0-__kernel_tanf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
