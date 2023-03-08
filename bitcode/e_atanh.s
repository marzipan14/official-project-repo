	.text
	.file	"e_atanh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_atanh
.LCPI0_0:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_atanh
	.p2align	4, 0x90
	.type	__ieee754_atanh,@function
__ieee754_atanh:                        # @__ieee754_atanh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%xmm0, %rcx
	movq	%rcx, %rbx
	shrq	$32, %rbx
	movl	%ebx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	negl	%edx
	orl	%ecx, %edx
	shrl	$31, %edx
	orl	%eax, %edx
	cmpl	$1072693249, %edx       # imm = 0x3FF00001
	jb	.LBB0_2
# %bb.1:
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm0
	jmp	.LBB0_11
.LBB0_2:
	cmpl	$1072693248, %eax       # imm = 0x3FF00000
	jne	.LBB0_4
# %bb.3:
	xorpd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	jmp	.LBB0_11
.LBB0_4:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB0_6
# %bb.5:
	cmpl	$1043333120, %eax       # imm = 0x3E300000
	jb	.LBB0_11
.LBB0_6:
	movq	%rax, %rdx
	shlq	$32, %rdx
	movl	%ecx, %ecx
	orq	%rdx, %rcx
	movq	%rcx, %xmm2
	movdqa	%xmm2, %xmm1
	addsd	%xmm2, %xmm1
	cmpl	$1071644671, %eax       # imm = 0x3FDFFFFF
	ja	.LBB0_8
# %bb.7:
	movapd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LCPI0_1(%rip), %xmm3   # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	jmp	.LBB0_9
.LBB0_8:
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
.LBB0_9:
	callq	log1p
	mulsd	.LCPI0_2(%rip), %xmm0
	testl	%ebx, %ebx
	jns	.LBB0_11
# %bb.10:
	xorpd	.LCPI0_3(%rip), %xmm0
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_atanh, .Lfunc_end0-__ieee754_atanh
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
