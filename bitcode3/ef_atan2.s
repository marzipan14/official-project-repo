	.text
	.file	"ef_atan2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2               # -- Begin function __ieee754_atan2f
.LCPI0_0:
	.long	1070141403              # float 1.57079637
	.long	3217625051              # float -1.57079637
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	1070141403              # float 1.57079637
.LCPI0_2:
	.long	867941678               # float 8.74227765E-8
.LCPI0_3:
	.long	1078530011              # float 3.14159274
.LCPI0_5:
	.long	3226013659              # float -3.14159274
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_4:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_atan2f
	.p2align	4, 0x90
	.type	__ieee754_atan2f,@function
__ieee754_atan2f:                       # @__ieee754_atan2f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movd	%xmm0, %ecx
	movl	%ecx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	ja	.LBB0_2
# %bb.1:
	movd	%xmm1, %edx
	movl	%edx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	cmpl	$2139095041, %esi       # imm = 0x7F800001
	jae	.LBB0_2
# %bb.3:
	cmpl	$1065353216, %edx       # imm = 0x3F800000
	jne	.LBB0_4
# %bb.29:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	atanf                   # TAILCALL
.LBB0_2:
	addss	%xmm1, %xmm0
.LBB0_28:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	movl	%ecx, %edi
	shrl	$31, %edi
	movl	%edx, %ebx
	shrl	$31, %ebx
	leal	(%rdi,%rbx,2), %ebx
	testl	%eax, %eax
	je	.LBB0_5
# %bb.9:
	cmpl	$2139095040, %esi       # imm = 0x7F800000
	je	.LBB0_12
# %bb.10:
	testl	%esi, %esi
	je	.LBB0_11
# %bb.15:
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jne	.LBB0_16
.LBB0_11:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sets	%al
	movss	.LCPI0_0(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_28
.LBB0_5:
	movl	%ebx, %eax
	shlb	$6, %al
	sarb	$6, %al
	jns	.LBB0_28
# %bb.6:
	cmpb	$3, %bl
	je	.LBB0_8
# %bb.7:
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_28
.LBB0_12:
	xorb	$2, %bl
	movzbl	%bl, %ecx
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jne	.LBB0_14
# %bb.13:
	movss	.Lswitch.table.__ieee754_atan2f(,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_28
.LBB0_16:
	subl	%esi, %eax
	cmpl	$511705087, %eax        # imm = 0x1E7FFFFF
	jle	.LBB0_18
# %bb.17:
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB0_21
.LBB0_14:
	movss	.Lswitch.table.__ieee754_atan2f.1(,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_28
.LBB0_8:
	movss	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_28
.LBB0_18:
	testl	%edx, %edx
	jns	.LBB0_20
# %bb.19:
	xorps	%xmm2, %xmm2
	cmpl	$-503316480, %eax       # imm = 0xE2000000
	jl	.LBB0_21
.LBB0_20:
	divss	%xmm1, %xmm0
	callq	fabsf
	callq	atanf
	movaps	%xmm0, %xmm2
.LBB0_21:
	testb	%bl, %bl
	je	.LBB0_27
# %bb.22:
	cmpb	$2, %bl
	je	.LBB0_25
# %bb.23:
	cmpb	$1, %bl
	jne	.LBB0_26
# %bb.24:
	xorps	.LCPI0_4(%rip), %xmm2
	jmp	.LBB0_27
.LBB0_25:
	addss	.LCPI0_2(%rip), %xmm2
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm0
	jmp	.LBB0_28
.LBB0_26:
	addss	.LCPI0_2(%rip), %xmm2
	addss	.LCPI0_5(%rip), %xmm2
.LBB0_27:
	movaps	%xmm2, %xmm0
	jmp	.LBB0_28
.Lfunc_end0:
	.size	__ieee754_atan2f, .Lfunc_end0-__ieee754_atan2f
                                        # -- End function
	.type	.Lswitch.table.__ieee754_atan2f,@object # @switch.table.__ieee754_atan2f
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.Lswitch.table.__ieee754_atan2f:
	.long	1075235812              # float 2.3561945
	.long	3222719460              # float -2.3561945
	.long	1061752795              # float 0.785398185
	.long	3209236443              # float -0.785398185
	.size	.Lswitch.table.__ieee754_atan2f, 16

	.type	.Lswitch.table.__ieee754_atan2f.1,@object # @switch.table.__ieee754_atan2f.1
	.p2align	2
.Lswitch.table.__ieee754_atan2f.1:
	.long	1078530011              # float 3.14159274
	.long	3226013659              # float -3.14159274
	.long	0                       # float 0
	.long	2147483648              # float -0
	.size	.Lswitch.table.__ieee754_atan2f.1, 16

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
