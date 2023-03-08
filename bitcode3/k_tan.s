	.text
	.file	"k_tan.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function __kernel_tan
.LCPI0_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4605249457297304856     # double 0.78539816339744828
.LCPI0_2:
	.quad	4359948597267291143     # double 3.061616997868383E-17
.LCPI0_3:
	.quad	-4687273268743220365    # double -1.8558637485527546E-5
.LCPI0_4:
	.quad	4545397049192321702     # double 7.8179444293955709E-5
.LCPI0_5:
	.quad	4558562946408670465     # double 5.880412408202641E-4
.LCPI0_6:
	.quad	4570429193025094440     # double 0.0035920791075913124
.LCPI0_7:
	.quad	4581960672245896759     # double 0.021869488294859542
.LCPI0_8:
	.quad	4593971859893059194     # double 0.13333333333320124
.LCPI0_9:
	.quad	4538267711989316308     # double 2.5907305186363371E-5
.LCPI0_10:
	.quad	4544897349388904425     # double 7.1407249138260819E-5
.LCPI0_11:
	.quad	4553182066015801448     # double 2.4646313481846991E-4
.LCPI0_12:
	.quad	4564358403679355669     # double 0.0014562094543252903
.LCPI0_13:
	.quad	4576262931677611155     # double 0.0088632398235993
.LCPI0_14:
	.quad	4587938466107703806     # double 0.053968253976226052
.LCPI0_15:
	.quad	4599676419421066595     # double 0.33333333333333409
.LCPI0_16:
	.quad	-4294967296             # double NaN
.LCPI0_17:
	.quad	-4616189618054758400    # double -1
.LCPI0_18:
	.quad	4607182418800017408     # double 1
	.text
	.globl	__kernel_tan
	.p2align	4, 0x90
	.type	__kernel_tan,@function
__kernel_tan:                           # @__kernel_tan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
                                        # kill: def $edi killed $edi def $rdi
	movq	%xmm0, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cvttsd2si	%xmm0, %esi
	testl	%esi, %esi
	jne	.LBB0_7
# %bb.1:
	cmpl	$1043333119, %ecx       # imm = 0x3E2FFFFF
	ja	.LBB0_7
# %bb.2:
	leal	1(%rdi), %edx
	orl	%eax, %edx
	orl	%ecx, %edx
	je	.LBB0_3
# %bb.4:
	cmpl	$1, %edi
	je	.LBB0_6
# %bb.5:                                # %select.false.sink
	movsd	.LCPI0_17(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
.LBB0_6:                                # %select.end
	movapd	%xmm0, %xmm1
	jmp	.LBB0_15
.LBB0_7:
	cmpl	$1072010280, %ecx       # imm = 0x3FE59428
	jb	.LBB0_11
# %bb.8:
	testl	%edx, %edx
	jns	.LBB0_10
# %bb.9:
	movapd	.LCPI0_0(%rip), %xmm2   # xmm2 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm2, %xmm0
	xorpd	%xmm2, %xmm1
.LBB0_10:
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	xorpd	%xmm1, %xmm1
.LBB0_11:
	movapd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	movsd	.LCPI0_3(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm4, %xmm2
	addsd	.LCPI0_4(%rip), %xmm2
	mulsd	%xmm4, %xmm2
	addsd	.LCPI0_5(%rip), %xmm2
	mulsd	%xmm4, %xmm2
	addsd	.LCPI0_6(%rip), %xmm2
	mulsd	%xmm4, %xmm2
	addsd	.LCPI0_7(%rip), %xmm2
	mulsd	%xmm4, %xmm2
	addsd	.LCPI0_8(%rip), %xmm2
	movsd	.LCPI0_9(%rip), %xmm5   # xmm5 = mem[0],zero
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_10(%rip), %xmm5
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_11(%rip), %xmm5
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_12(%rip), %xmm5
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_13(%rip), %xmm5
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_14(%rip), %xmm5
	mulsd	%xmm3, %xmm5
	addsd	%xmm2, %xmm5
	movapd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm5
	addsd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm5
	mulsd	.LCPI0_15(%rip), %xmm2
	addsd	%xmm1, %xmm5
	addsd	%xmm5, %xmm2
	movapd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	cmpl	$1072010280, %ecx       # imm = 0x3FE59428
	jb	.LBB0_13
# %bb.12:
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edi, %xmm3
	shrq	$62, %rax
	andl	$-2, %eax
	movl	$1, %ecx
	subl	%eax, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sd	%ecx, %xmm4
	movapd	%xmm1, %xmm5
	mulsd	%xmm1, %xmm5
	addsd	%xmm3, %xmm1
	divsd	%xmm1, %xmm5
	subsd	%xmm2, %xmm5
	subsd	%xmm5, %xmm0
	addsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm3
	mulsd	%xmm4, %xmm3
	movapd	%xmm3, %xmm1
	jmp	.LBB0_15
.LBB0_13:
	cmpl	$1, %edi
	je	.LBB0_15
# %bb.14:
	movsd	.LCPI0_16(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI0_17(%rip), %xmm4  # xmm4 = mem[0],zero
	divsd	%xmm1, %xmm4
	andpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm5
	subsd	%xmm0, %xmm5
	subsd	%xmm5, %xmm2
	andpd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm1
	addsd	.LCPI0_18(%rip), %xmm1
	mulsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm2
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm1
	jmp	.LBB0_15
.LBB0_3:
	callq	fabs
	movsd	.LCPI0_18(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
.LBB0_15:
	movapd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__kernel_tan, .Lfunc_end0-__kernel_tan
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
