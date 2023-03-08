	.text
	.file	"e_atan2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_atan2
.LCPI0_0:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI0_1:
	.quad	-4854416240332743673    # double -1.2246467991473532E-16
.LCPI0_2:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI0_4:
	.quad	-4609115380302729960    # double -3.1415926535897931
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI0_5:
	.quad	4609753056924675352     # double 1.5707963267948966
	.quad	-4613618979930100456    # double -1.5707963267948966
	.text
	.globl	__ieee754_atan2
	.p2align	4, 0x90
	.type	__ieee754_atan2,@function
__ieee754_atan2:                        # @__ieee754_atan2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%xmm1, %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%esi, %edx
	negl	%edx
	orl	%esi, %edx
	shrl	$31, %edx
	orl	%ecx, %edx
	cmpl	$2146435072, %edx       # imm = 0x7FF00000
	ja	.LBB0_2
# %bb.1:
	movq	%xmm0, %rdi
	movq	%rdi, %r8
	shrq	$32, %r8
	movl	%r8d, %r9d
	andl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	%edi, %ebx
	negl	%ebx
	orl	%edi, %ebx
	shrl	$31, %ebx
	orl	%r9d, %ebx
	cmpl	$2146435073, %ebx       # imm = 0x7FF00001
	jb	.LBB0_3
.LBB0_2:
	addsd	%xmm1, %xmm0
.LBB0_28:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_3:
	leal	-1072693248(%rax), %ebx
	orl	%esi, %ebx
	je	.LBB0_29
# %bb.4:
	movq	%rdi, %rbx
	shrq	$63, %rbx
	movq	%rsi, %r14
	shrq	$62, %r14
	andl	$-2, %r14d
	orl	%ebx, %r14d
	movl	%r9d, %edx
	orl	%edi, %edx
	je	.LBB0_5
# %bb.9:
	movl	%ecx, %edx
	orl	%esi, %edx
	je	.LBB0_10
# %bb.11:
	cmpl	$2146435072, %ecx       # imm = 0x7FF00000
	jne	.LBB0_15
# %bb.12:
	xorb	$2, %r14b
	movzbl	%r14b, %eax
	cmpl	$2146435072, %r9d       # imm = 0x7FF00000
	jne	.LBB0_14
# %bb.13:
	movsd	.Lswitch.table.__ieee754_atan2(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB0_28
.LBB0_29:
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	atan                    # TAILCALL
.LBB0_5:
	movl	%r14d, %eax
	shlb	$6, %al
	sarb	$6, %al
	jns	.LBB0_28
# %bb.6:
	cmpb	$3, %r14b
	je	.LBB0_8
# %bb.7:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_28
.LBB0_15:
	cmpl	$2146435072, %r9d       # imm = 0x7FF00000
	jne	.LBB0_16
.LBB0_10:
	xorl	%eax, %eax
	testl	%r8d, %r8d
	sets	%al
	movsd	.LCPI0_5(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB0_28
.LBB0_14:
	movsd	.Lswitch.table.__ieee754_atan2.1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB0_28
.LBB0_16:
	subl	%ecx, %r9d
	cmpl	$63963135, %r9d         # imm = 0x3CFFFFF
	jle	.LBB0_18
# %bb.17:
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB0_21
.LBB0_8:
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_28
.LBB0_18:
	testl	%eax, %eax
	jns	.LBB0_20
# %bb.19:
	xorpd	%xmm2, %xmm2
	cmpl	$-62914560, %r9d        # imm = 0xFC400000
	jl	.LBB0_21
.LBB0_20:
	divsd	%xmm1, %xmm0
	callq	fabs
	callq	atan
	movapd	%xmm0, %xmm2
.LBB0_21:
	testb	%r14b, %r14b
	je	.LBB0_27
# %bb.22:
	cmpb	$2, %r14b
	je	.LBB0_25
# %bb.23:
	cmpb	$1, %r14b
	jne	.LBB0_26
# %bb.24:
	xorpd	.LCPI0_3(%rip), %xmm2
	jmp	.LBB0_27
.LBB0_25:
	addsd	.LCPI0_1(%rip), %xmm2
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	jmp	.LBB0_28
.LBB0_26:
	addsd	.LCPI0_1(%rip), %xmm2
	addsd	.LCPI0_4(%rip), %xmm2
.LBB0_27:
	movapd	%xmm2, %xmm0
	jmp	.LBB0_28
.Lfunc_end0:
	.size	__ieee754_atan2, .Lfunc_end0-__ieee754_atan2
                                        # -- End function
	.type	.Lswitch.table.__ieee754_atan2,@object # @switch.table.__ieee754_atan2
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.Lswitch.table.__ieee754_atan2:
	.quad	4612488097114038738     # double 2.3561944901923448
	.quad	-4610883939740737070    # double -2.3561944901923448
	.quad	4605249457297304856     # double 0.78539816339744828
	.quad	-4618122579557470952    # double -0.78539816339744828
	.size	.Lswitch.table.__ieee754_atan2, 32

	.type	.Lswitch.table.__ieee754_atan2.1,@object # @switch.table.__ieee754_atan2.1
	.p2align	4
.Lswitch.table.__ieee754_atan2.1:
	.quad	4614256656552045848     # double 3.1415926535897931
	.quad	-4609115380302729960    # double -3.1415926535897931
	.quad	0                       # double 0
	.quad	-9223372036854775808    # double -0
	.size	.Lswitch.table.__ieee754_atan2.1, 32

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
