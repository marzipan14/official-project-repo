	.text
	.file	"e_hypot.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_hypot
.LCPI0_0:
	.quad	9209861237972664320     # double 4.4942328371557898E+307
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_hypot
	.p2align	4, 0x90
	.type	__ieee754_hypot,@function
__ieee754_hypot:                        # @__ieee754_hypot
# %bb.0:
	movq	%xmm0, %rdx
	shrq	$32, %rdx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	movq	%xmm1, %rax
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	cmpl	%edx, %eax
	cmoval	%edx, %ecx
	cmovbel	%edx, %eax
	ja	.LBB0_1
# %bb.2:
	movdqa	%xmm1, %xmm2
	jmp	.LBB0_3
.LBB0_1:
	movdqa	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
.LBB0_3:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%xmm0, %rdx
	movq	%rax, %rsi
	shlq	$32, %rsi
	movl	%edx, %r8d
	orq	%r8, %rsi
	movq	%rsi, %xmm0
	movq	%xmm2, %rbx
	movq	%rcx, %rdi
	shlq	$32, %rdi
	movl	%ebx, %r9d
	orq	%r9, %rdi
	movq	%rdi, %xmm2
	movl	%eax, %esi
	subl	%ecx, %esi
	cmpl	$62914561, %esi         # imm = 0x3C00001
	jl	.LBB0_5
# %bb.4:
	addsd	%xmm2, %xmm0
	jmp	.LBB0_23
.LBB0_5:
	xorl	%r14d, %r14d
	cmpl	$1596981249, %eax       # imm = 0x5F300001
	jb	.LBB0_13
# %bb.6:
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jb	.LBB0_12
# %bb.7:
	andl	$1048575, %eax          # imm = 0xFFFFF
	orl	%edx, %eax
	je	.LBB0_9
# %bb.8:
	addsd	%xmm2, %xmm0
.LBB0_9:
	xorl	$2146435072, %ecx       # imm = 0x7FF00000
	orl	%ebx, %ecx
	je	.LBB0_11
# %bb.10:
	movapd	%xmm0, %xmm2
.LBB0_11:
	movapd	%xmm2, %xmm0
	jmp	.LBB0_23
.LBB0_12:
	addl	$-629145600, %eax       # imm = 0xDA800000
	addl	$-629145600, %ecx       # imm = 0xDA800000
	movq	%rax, %rdx
	shlq	$32, %rdx
	orq	%r8, %rdx
	movq	%rdx, %xmm0
	movq	%rcx, %rdi
	shlq	$32, %rdi
	orq	%r9, %rdi
	movq	%rdi, %xmm2
	movl	$600, %r14d             # imm = 0x258
.LBB0_13:
	cmpl	$548405247, %ecx        # imm = 0x20AFFFFF
	jg	.LBB0_18
# %bb.14:
	cmpl	$1048575, %ecx          # imm = 0xFFFFF
	jg	.LBB0_17
# %bb.15:
	orl	%ecx, %edi
	je	.LBB0_23
# %bb.16:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm0
	orl	$-1022, %r14d           # imm = 0xFC02
	jmp	.LBB0_18
.LBB0_17:
	addl	$629145600, %eax        # imm = 0x25800000
	addl	$629145600, %ecx        # imm = 0x25800000
	addl	$-600, %r14d            # imm = 0xFDA8
	movq	%rax, %rdx
	shlq	$32, %rdx
	orq	%r8, %rdx
	movq	%rdx, %xmm0
	movq	%rcx, %rdx
	shlq	$32, %rdx
	orq	%r9, %rdx
	movq	%rdx, %xmm2
.LBB0_18:
	movdqa	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	ucomisd	%xmm2, %xmm3
	jbe	.LBB0_20
# %bb.19:
	shlq	$32, %rax
	movq	%rax, %xmm1
	movapd	%xmm0, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm2
	xorpd	.LCPI0_1(%rip), %xmm2
	addsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm2
	jmp	.LBB0_21
.LBB0_20:
	addsd	%xmm0, %xmm0
	shlq	$32, %rcx
	movq	%rcx, %xmm1
	addl	$1048576, %eax          # imm = 0x100000
	shlq	$32, %rax
	movq	%rax, %xmm4
	subsd	%xmm4, %xmm0
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm2
	mulsd	%xmm3, %xmm3
	xorpd	.LCPI0_1(%rip), %xmm3
	mulsd	%xmm4, %xmm1
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm2
.LBB0_21:
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	callq	__ieee754_sqrt
	testl	%r14d, %r14d
	je	.LBB0_23
# %bb.22:
	shll	$20, %r14d
	addl	$1072693248, %r14d      # imm = 0x3FF00000
	shlq	$32, %r14
	movq	%r14, %xmm1
	mulsd	%xmm1, %xmm0
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_hypot, .Lfunc_end0-__ieee754_hypot
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
