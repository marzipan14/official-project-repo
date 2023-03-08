	.text
	.file	"mprec.c"
	.globl	_Balloc                 # -- Begin function _Balloc
	.p2align	4, 0x90
	.type	_Balloc,@function
_Balloc:                                # @_Balloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	120(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB0_2
# %bb.1:
	movq	%rdi, %rbx
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_9
.LBB0_2:
	movslq	%r14d, %rdx
	movq	(%rcx,%rdx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.3:
	movq	(%rax), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	jmp	.LBB0_6
.LBB0_4:
	movl	$1, %ebx
	movl	%r14d, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rax
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.5:
	movl	%r14d, 8(%rax)
	movl	%ebx, 12(%rax)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
	jmp	.LBB0_7
.LBB0_9:
	xorl	%eax, %eax
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Balloc, .Lfunc_end0-_Balloc
                                        # -- End function
	.globl	_Bfree                  # -- Begin function _Bfree
	.p2align	4, 0x90
	.type	_Bfree,@function
_Bfree:                                 # @_Bfree
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_2
# %bb.1:
	movq	120(%rdi), %rax
	movslq	8(%rsi), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rsi)
	movq	%rsi, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	_Bfree, .Lfunc_end1-_Bfree
                                        # -- End function
	.globl	__multadd               # -- Begin function __multadd
	.p2align	4, 0x90
	.type	__multadd,@function
__multadd:                              # @__multadd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%ecx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movslq	20(%rsi), %r15
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	24(%r14,%rax,4), %ecx
	movzwl	%cx, %esi
	imull	%edx, %esi
	addl	%ebx, %esi
	shrl	$16, %ecx
	imull	%edx, %ecx
	movzwl	%si, %edi
	shrl	$16, %esi
	addl	%ecx, %esi
	movl	%esi, %ebx
	shrl	$16, %ebx
	shll	$16, %esi
	orl	%esi, %edi
	movl	%edi, 24(%r14,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpl	%r15d, %eax
	jl	.LBB2_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB2_13
# %bb.3:
	cmpl	12(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB2_12
# %bb.4:
	movslq	8(%r14), %r13
	movq	120(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, -56(%rbp)         # 8-byte Spill
	jne	.LBB2_6
# %bb.5:
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, 120(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_15
.LBB2_6:
	movq	8(%rax,%r13,8), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB2_8
# %bb.7:
	movq	(%r12), %rcx
	movq	%rcx, 8(%rax,%r13,8)
	jmp	.LBB2_10
.LBB2_8:
	addl	$1, %r13d
	movl	$1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	cltq
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_15
# %bb.9:
	movq	%rax, %r12
	movl	%r13d, 8(%rax)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 12(%r12)
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%r12)
	jmp	.LBB2_11
.LBB2_15:
	xorl	%r12d, %r12d
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%r12), %rdi
	leaq	16(%r14), %rsi
	movslq	20(%r14), %rax
	leaq	8(,%rax,4), %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	120(%rax), %rax
	movslq	8(%r14), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%r14)
	movq	%r14, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r14
.LBB2_12:
	leal	1(%r15), %eax
	movl	%ebx, 24(%r14,%r15,4)
	movl	%eax, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_13:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__multadd, .Lfunc_end2-__multadd
                                        # -- End function
	.globl	__s2b                   # -- Begin function __s2b
	.p2align	4, 0x90
	.type	__s2b,@function
__s2b:                                  # @__s2b
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%ecx, %r14d
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jl	.LBB3_3
# %bb.1:                                # %.preheader1
	leal	8(%r14), %eax
	cltq
	imulq	$954437177, %rax, %rax  # imm = 0x38E38E39
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$33, %rax
	addl	%ecx, %eax
	xorl	%r13d, %r13d
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	addl	%ecx, %ecx
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jg	.LBB3_2
.LBB3_3:
	movq	120(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB3_6
# %bb.4:
	movl	$8, %edi
	movl	$65, %esi
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	callq	calloc
	movl	-48(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %rcx
	movq	%rax, 120(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_5
.LBB3_6:
	movl	%r13d, %edx
	movq	(%rcx,%rdx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_8
# %bb.7:
	movq	(%rax), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	jmp	.LBB3_11
.LBB3_8:
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	$1, %ebx
	movl	%r13d, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rax
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_9
# %bb.10:
	movl	%r13d, 8(%rax)
	movl	%ebx, 12(%rax)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
.LBB3_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, 24(%rax)
	movl	$1, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ebx
	jl	.LBB3_16
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	leal	-10(%rbx), %ecx
	addq	$9, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	%ebx, %ebx
	movl	$9, %r13d
	.p2align	4, 0x90
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	movsbl	(%r12,%r13), %ecx
	addl	$-48, %ecx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$10, %edx
	callq	__multadd
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	cmpl	%r13d, %ebx
	jne	.LBB3_14
# %bb.15:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %r12
	addq	$2, %r12
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB3_17
.LBB3_16:
	addq	$10, %r12
	movl	$9, %ecx
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %ecx
	jge	.LBB3_20
# %bb.18:                               # %.preheader
	subl	%ecx, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	movsbl	(%r12,%rbx), %ecx
	addl	$-48, %ecx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$10, %edx
	callq	__multadd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpl	%ebx, %r14d
	jne	.LBB3_19
.LBB3_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_5:
	xorl	%eax, %eax
	jmp	.LBB3_12
.LBB3_9:
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
	jmp	.LBB3_12
.Lfunc_end3:
	.size	__s2b, .Lfunc_end3-__s2b
                                        # -- End function
	.globl	__hi0bits               # -- Begin function __hi0bits
	.p2align	4, 0x90
	.type	__hi0bits,@function
__hi0bits:                              # @__hi0bits
# %bb.0:
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %edi            # imm = 0xFFFF
	ja	.LBB4_2
# %bb.1:
	shll	$16, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %ecx
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16777215, %edi         # imm = 0xFFFFFF
	ja	.LBB4_4
# %bb.3:
	orl	$8, %ecx
	shll	$8, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB4_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$268435455, %edi        # imm = 0xFFFFFFF
	ja	.LBB4_6
# %bb.5:
	addl	$4, %ecx
	shll	$4, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741823, %edi       # imm = 0x3FFFFFFF
	ja	.LBB4_8
# %bb.7:
	addl	$2, %ecx
	shll	$2, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB4_8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB4_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$32, %eax
	testl	$1073741824, %edi       # imm = 0x40000000
	je	.LBB4_12
# %bb.10:
	addl	$1, %ecx
.LBB4_11:
	movl	%ecx, %eax
.LBB4_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	__hi0bits, .Lfunc_end4-__hi0bits
                                        # -- End function
	.globl	__lo0bits               # -- Begin function __lo0bits
	.p2align	4, 0x90
	.type	__lo0bits,@function
__lo0bits:                              # @__lo0bits
# %bb.0:
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %cl
	je	.LBB5_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testb	$1, %cl
	jne	.LBB5_17
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB5_3
# %bb.4:
	shrl	$2, %ecx
	movl	%ecx, (%rdi)
	movl	$2, %eax
	jmp	.LBB5_17
.LBB5_5:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	jne	.LBB5_7
# %bb.6:
	shrl	$16, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB5_9
# %bb.8:
	orl	$8, %eax
	shrl	$8, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %cl
	jne	.LBB5_11
# %bb.10:
	addl	$4, %eax
	shrl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %cl
	jne	.LBB5_13
# %bb.12:
	addl	$2, %eax
	shrl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_13:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB5_16
# %bb.14:
	shrl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_18
# %bb.15:
	addl	$1, %eax
.LBB5_16:
	movl	%ecx, (%rdi)
	jmp	.LBB5_17
.LBB5_3:
	shrl	%ecx
	movl	%ecx, (%rdi)
	movl	$1, %eax
	jmp	.LBB5_17
.LBB5_18:
	movl	$32, %eax
.LBB5_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	__lo0bits, .Lfunc_end5-__lo0bits
                                        # -- End function
	.globl	__i2b                   # -- Begin function __i2b
	.p2align	4, 0x90
	.type	__i2b,@function
__i2b:                                  # @__i2b
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	120(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB6_2
# %bb.1:
	movq	%rdi, %rbx
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_9
.LBB6_2:
	movq	8(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_4
# %bb.3:
	movq	(%rax), %rdx
	movq	%rdx, 8(%rcx)
	jmp	.LBB6_6
.LBB6_4:
	movl	$1, %edi
	movl	$36, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_9
# %bb.5:
	movabsq	$8589934593, %rcx       # imm = 0x200000001
	movq	%rcx, 8(%rax)
.LBB6_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
	jmp	.LBB6_7
.LBB6_9:
	xorl	%eax, %eax
.LBB6_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, 24(%rax)
	movl	$1, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	__i2b, .Lfunc_end6-__i2b
                                        # -- End function
	.globl	__multiply              # -- Begin function __multiply
	.p2align	4, 0x90
	.type	__multiply,@function
__multiply:                             # @__multiply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r13
	movq	%rdi, %rdx
	movl	20(%rsi), %eax
	movl	20(%r13), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %eax
	jge	.LBB7_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ebx
	movq	%rsi, %r15
	jmp	.LBB7_3
.LBB7_2:
	movl	%edi, %ebx
	movl	%eax, %edi
	movq	%r13, %r15
	movq	%rsi, %r13
.LBB7_3:
	movl	8(%r13), %r14d
	leal	(%rbx,%rdi), %r12d
	cmpl	12(%r13), %r12d
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB7_5
# %bb.4:
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB7_5:
	movq	120(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB7_7
# %bb.6:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$8, %edi
	movl	$65, %esi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	calloc
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rcx, 120(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB7_33
.LBB7_7:
	movslq	%r14d, %rdx
	movq	(%rcx,%rdx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_9
# %bb.8:
	movq	(%rax), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	jmp	.LBB7_11
.LBB7_9:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$1, %ebx
	movl	%r14d, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rax
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_34
# %bb.10:
	movl	%r14d, 8(%rax)
	movl	%ebx, 12(%rax)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
.LBB7_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rax), %r11
	movslq	%r12d, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB7_15
# %bb.13:                               # %.preheader2
	leaq	(%rax,%rsi,4), %rcx
	addq	$24, %rcx
	movq	%r11, %rdx
	.p2align	4, 0x90
.LBB7_14:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdx)
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jb	.LBB7_14
.LBB7_15:
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB7_26
# %bb.16:
	movslq	%edi, %rcx
	leaq	24(,%rcx,4), %r10
	addq	%r13, %r10
	movslq	%ebx, %rcx
	leaq	(%r15,%rcx,4), %r9
	addq	$24, %r9
	addq	$24, %r15
	addq	$24, %r13
	jmp	.LBB7_18
	.p2align	4, 0x90
.LBB7_17:                               #   in Loop: Header=BB7_18 Depth=1
	addq	$4, %r15
	addq	$4, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB7_26
.LBB7_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
                                        #     Child Loop BB7_24 Depth 2
	movl	(%r15), %r8d
	movl	%r8d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	andl	$65535, %r14d           # imm = 0xFFFF
	je	.LBB7_22
# %bb.19:                               #   in Loop: Header=BB7_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB7_20:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r13,%rdi), %esi
	movzwl	%si, %ebx
	imull	%r14d, %ebx
	movl	(%r11,%rdi), %edx
	movzwl	%dx, %r8d
	addl	%ecx, %r8d
	addl	%ebx, %r8d
	movzwl	%r8w, %ebx
	shrl	$16, %r8d
	shrl	$16, %esi
	imull	%r14d, %esi
	shrl	$16, %edx
	addl	%esi, %edx
	addl	%r8d, %edx
	movl	%edx, %ecx
	shrl	$16, %ecx
	shll	$16, %edx
	orl	%edx, %ebx
	movl	%ebx, (%r11,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdi,%r13), %rdx
	addq	$4, %rdx
	addq	$4, %rdi
	cmpq	%r10, %rdx
	jb	.LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_18 Depth=1
	movl	%ecx, (%r11,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %r8d
.LBB7_22:                               #   in Loop: Header=BB7_18 Depth=1
	shrl	$16, %r8d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_17
# %bb.23:                               #   in Loop: Header=BB7_18 Depth=1
	movl	(%r11), %esi
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%esi, %ebx
	.p2align	4, 0x90
.LBB7_24:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r13,%rcx), %edi
	imull	%r8d, %edi
	shrl	$16, %esi
	addl	%edx, %esi
	addl	%edi, %esi
	movl	%esi, %edx
	shrl	$16, %edx
	shll	$16, %esi
	movzwl	%bx, %edi
	orl	%esi, %edi
	movl	%edi, (%r11,%rcx)
	movzwl	2(%r13,%rcx), %edi
	imull	%r8d, %edi
	movl	4(%r11,%rcx), %esi
	movzwl	%si, %ebx
	addl	%edi, %ebx
	addl	%edx, %ebx
	movl	%ebx, %edx
	shrl	$16, %edx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rcx,%r13), %rdi
	addq	$4, %rdi
	addq	$4, %rcx
	cmpq	%r10, %rdi
	jb	.LBB7_24
# %bb.25:                               #   in Loop: Header=BB7_18 Depth=1
	movl	%ebx, (%r11,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_17
.LBB7_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB7_31
# %bb.27:                               # %.preheader
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx,4), %rcx
	addq	$20, %rcx
	.p2align	4, 0x90
.LBB7_28:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_31
# %bb.29:                               #   in Loop: Header=BB7_28 Depth=1
	leal	-1(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %rcx
	cmpl	$1, %r12d
	movl	%edx, %r12d
	jg	.LBB7_28
	jmp	.LBB7_32
.LBB7_31:
	movl	%r12d, %edx
.LBB7_32:
	movl	%edx, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_33:
	xorl	%eax, %eax
	jmp	.LBB7_12
.LBB7_34:
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB7_12
.Lfunc_end7:
	.size	__multiply, .Lfunc_end7-__multiply
                                        # -- End function
	.globl	__pow5mult              # -- Begin function __pow5mult
	.p2align	4, 0x90
	.type	__pow5mult,@function
__pow5mult:                             # @__pow5mult
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$3, %eax
	je	.LBB8_2
# %bb.1:
	cltq
	movl	__pow5mult.p05-4(,%rax,4), %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB8_2:
	sarl	$2, %r12d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_22
# %bb.3:
	movq	112(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB8_15
# %bb.4:
	movq	120(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB8_6
# %bb.5:
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_13
.LBB8_6:
	movq	8(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_8
# %bb.7:
	movq	(%rax), %rdx
	movq	%rdx, 8(%rcx)
	jmp	.LBB8_10
.LBB8_8:
	movl	$1, %edi
	movl	$36, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_13
# %bb.9:
	movabsq	$8589934593, %rcx       # imm = 0x200000001
	movq	%rcx, 8(%rax)
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
	jmp	.LBB8_11
.LBB8_13:
	xorl	%eax, %eax
.LBB8_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2684354560001, %rcx    # imm = 0x27100000001
	movq	%rcx, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 112(%r15)
.LBB8_14:
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_15:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	je	.LBB8_19
# %bb.16:                               #   in Loop: Header=BB8_15 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	__multiply
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB8_18
# %bb.17:                               #   in Loop: Header=BB8_15 Depth=1
	movq	120(%r15), %rcx
	movslq	8(%r14), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	%rsi, (%r14)
	movq	%r14, (%rcx,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_18:                               #   in Loop: Header=BB8_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
.LBB8_19:                               #   in Loop: Header=BB8_15 Depth=1
	sarl	%r12d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_22
# %bb.20:                               #   in Loop: Header=BB8_15 Depth=1
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB8_15
# %bb.21:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	__multiply
	movq	%rax, (%rbx)
	jmp	.LBB8_14
.LBB8_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	__pow5mult, .Lfunc_end8-__pow5mult
                                        # -- End function
	.globl	__lshift                # -- Begin function __lshift
	.p2align	4, 0x90
	.type	__lshift,@function
__lshift:                               # @__lshift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r12d
	movq	%rsi, %r15
	movq	%rdi, %r11
	movl	%edx, %r14d
	sarl	$5, %r14d
	movl	8(%rsi), %ebx
	movl	12(%rsi), %eax
	movl	20(%rsi), %edi
	leal	(%rdi,%r14), %r13d
	.p2align	4, 0x90
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r13d
	jl	.LBB9_3
# %bb.1:                                #   in Loop: Header=BB9_2 Depth=1
	addl	$1, %ebx
	addl	%eax, %eax
	jmp	.LBB9_2
.LBB9_3:
	movq	120(%r11), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB9_6
# %bb.4:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$8, %edi
	movl	$65, %esi
	movq	%r11, -56(%rbp)         # 8-byte Spill
	callq	calloc
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, 120(%r11)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_5
.LBB9_6:
	movslq	%ebx, %rdx
	movq	(%rcx,%rdx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_8
# %bb.7:
	movq	(%rax), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	jmp	.LBB9_11
.LBB9_8:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	$1, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	cltq
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_9
# %bb.10:
	movl	%ebx, 8(%rax)
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 12(%rax)
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB9_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
.LBB9_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	jl	.LBB9_15
# %bb.13:                               # %.preheader1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_14:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rsi)
	addq	$4, %rsi
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %ecx
	jl	.LBB9_14
.LBB9_15:
	leal	(%rdi,%r14), %r8d
	addl	$1, %r8d
	leaq	24(%r15), %rbx
	movslq	20(%r15), %rcx
	leaq	(%r15,%rcx,4), %r10
	addq	$24, %r10
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %r12d
	je	.LBB9_20
# %bb.16:
	movl	$32, %r9d
	subl	%r12d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_17:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edi
	movl	%r12d, %ecx
	shll	%cl, %edi
	orl	%edx, %edi
	movl	%edi, (%rsi)
	movl	(%rbx), %edx
	movl	%r9d, %ecx
	shrl	%cl, %edx
	addq	$4, %rsi
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %rbx
	jb	.LBB9_17
# %bb.18:
	movl	%edx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB9_21
# %bb.19:
	addl	$2, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %r8d
	jmp	.LBB9_21
	.p2align	4, 0x90
.LBB9_20:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ecx
	addq	$4, %rbx
	movl	%ecx, (%rsi)
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %rbx
	jb	.LBB9_20
.LBB9_21:
	addl	$-1, %r8d
	movl	%r8d, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB9_23
# %bb.22:
	movq	120(%r11), %rcx
	movslq	8(%r15), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	%rsi, (%r15)
	movq	%r15, (%rcx,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_5:
	xorl	%eax, %eax
	jmp	.LBB9_12
.LBB9_9:
	xorl	%eax, %eax
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB9_12
.Lfunc_end9:
	.size	__lshift, .Lfunc_end9-__lshift
                                        # -- End function
	.globl	__mcmp                  # -- Begin function __mcmp
	.p2align	4, 0x90
	.type	__mcmp,@function
__mcmp:                                 # @__mcmp
# %bb.0:
	movl	20(%rdi), %eax
	movslq	20(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %eax
	jne	.LBB10_6
# %bb.1:
	leaq	(%rdi,%rcx,4), %rax
	addq	$24, %rax
	addq	$24, %rdi
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rsi,%rcx,4), %rcx
	addq	$20, %rcx
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edx
	cmpl	%edx, -4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_3
# %bb.4:                                #   in Loop: Header=BB10_2 Depth=1
	addq	$-4, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %rcx
	cmpq	%rdi, %rax
	ja	.LBB10_2
# %bb.5:
	xorl	%eax, %eax
	jmp	.LBB10_6
.LBB10_3:
	setae	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	addl	$-1, %eax
.LBB10_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end10:
	.size	__mcmp, .Lfunc_end10-__mcmp
                                        # -- End function
	.globl	__mdiff                 # -- Begin function __mdiff
	.p2align	4, 0x90
	.type	__mdiff,@function
__mdiff:                                # @__mdiff
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	20(%rsi), %eax
	movslq	20(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	subl	%esi, %eax
	jne	.LBB11_9
# %bb.1:
	leaq	24(%r12), %rax
	leaq	(%r12,%rsi,4), %rcx
	addq	$24, %rcx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdx,%rsi,4), %rsi
	addq	$20, %rsi
	.p2align	4, 0x90
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %edi
	cmpl	%edi, -4(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_8
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	addq	$-4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %rsi
	cmpq	%rax, %rcx
	ja	.LBB11_2
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	120(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB11_6
# %bb.5:
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_33
.LBB11_6:
	movq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_28
# %bb.7:
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	jmp	.LBB11_30
.LBB11_8:
	setae	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	addl	$-1, %eax
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
	shrl	$31, %r13d
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %r14
	cmovsq	%r12, %r14
	cmovsq	%rdx, %r12
	movl	8(%r12), %r15d
	movq	120(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB11_11
# %bb.10:
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_27
.LBB11_11:
	movslq	%r15d, %rdx
	movq	(%rcx,%rdx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_13
# %bb.12:
	movq	(%rax), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	jmp	.LBB11_15
.LBB11_13:
	movl	$1, %ebx
	movl	%r15d, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rax
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_27
# %bb.14:
	movl	%r15d, 8(%rax)
	movl	%ebx, 12(%rax)
.LBB11_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
	jmp	.LBB11_16
.LBB11_27:
	xorl	%eax, %eax
.LBB11_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, 16(%rax)
	movl	20(%r12), %r10d
	leaq	24(%r12), %r11
	movslq	%r10d, %r8
	movslq	20(%r14), %rcx
	leaq	(%r14,%rcx,4), %r9
	addq	$24, %r9
	addq	$24, %r14
	movl	$42, __A_VARIABLE(%rip)
	leaq	20(%rax), %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB11_17:                              # =>This Inner Loop Header: Depth=1
	movl	(%r11), %edi
	movzwl	%di, %esi
	movl	(%r14), %edx
	movzwl	%dx, %ecx
	subl	%ecx, %esi
	addl	%ebx, %esi
	movzwl	%si, %ecx
	sarl	$16, %esi
	addq	$4, %r11
	shrl	$16, %edi
	addq	$4, %r14
	shrl	$16, %edx
	subl	%edx, %edi
	addl	%esi, %edi
	movl	%edi, %ebx
	sarl	$16, %ebx
	shll	$16, %edi
	orl	%edi, %ecx
	movl	%ecx, 4(%r15)
	addq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r14
	jb	.LBB11_17
# %bb.18:
	leaq	(%r12,%r8,4), %rdi
	addq	$24, %rdi
	.p2align	4, 0x90
.LBB11_19:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r11
	jae	.LBB11_21
# %bb.20:                               #   in Loop: Header=BB11_19 Depth=1
	movl	(%r11), %edx
	movzwl	%dx, %esi
	addl	%ebx, %esi
	movzwl	%si, %ecx
	sarl	$16, %esi
	addq	$4, %r11
	shrl	$16, %edx
	addl	%esi, %edx
	movl	%edx, %ebx
	sarl	$16, %ebx
	shll	$16, %edx
	orl	%edx, %ecx
	movl	%ecx, 4(%r15)
	addq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_19
.LBB11_21:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB11_24
# %bb.22:                               # %.preheader
	addq	$-4, %r15
	.p2align	4, 0x90
.LBB11_23:                              # =>This Inner Loop Header: Depth=1
	addl	$-1, %r10d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%r15)
	leaq	-4(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_23
.LBB11_24:
	movl	%r10d, 20(%rax)
.LBB11_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_28:
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_33
# %bb.29:
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	movq	%rcx, 8(%rax)
.LBB11_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax)
	jmp	.LBB11_31
.LBB11_33:
	xorl	%eax, %eax
.LBB11_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$1, 20(%rax)
	jmp	.LBB11_25
.Lfunc_end11:
	.size	__mdiff, .Lfunc_end11-__mdiff
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ulp
.LCPI12_0:
	.quad	1                       # double 4.9406564584124654E-324
	.text
	.globl	__ulp
	.p2align	4, 0x90
	.type	__ulp,@function
__ulp:                                  # @__ulp
# %bb.0:
	movq	%xmm0, %rax
	shrq	$32, %rax
	andl	$2146435072, %eax       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$54525953, %eax         # imm = 0x3400001
	jb	.LBB12_3
# %bb.1:
	addl	$-54525952, %eax        # imm = 0xFCC00000
	jmp	.LBB12_2
.LBB12_3:
	movl	$54525952, %edx         # imm = 0x3400000
	subl	%eax, %edx
	movl	%edx, %ecx
	sarl	$20, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$20971519, %edx         # imm = 0x13FFFFF
	jg	.LBB12_5
# %bb.4:
	movl	$524288, %eax           # imm = 0x80000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
.LBB12_2:
	shlq	$32, %rax
	movq	%rax, %xmm0
.LBB12_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB12_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$52428800, %edx         # imm = 0x3200000
	jle	.LBB12_7
# %bb.6:
	movq	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB12_8
.LBB12_7:
	movb	$51, %al
	subb	%cl, %al
	movl	$1, %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %xmm0
	jmp	.LBB12_8
.Lfunc_end12:
	.size	__ulp, .Lfunc_end12-__ulp
                                        # -- End function
	.globl	__b2d                   # -- Begin function __b2d
	.p2align	4, 0x90
	.type	__b2d,@function
__b2d:                                  # @__b2d
# %bb.0:
	movslq	20(%rdi), %rdx
	movl	20(%rdi,%rdx,4), %r8d
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %ecx
	cmpl	$65535, %r8d            # imm = 0xFFFF
	ja	.LBB13_2
# %bb.1:
	movl	%r8d, %ecx
	shll	$16, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16777215, %ecx         # imm = 0xFFFFFF
	ja	.LBB13_4
# %bb.3:
	orl	$8, %eax
	shll	$8, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB13_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$268435455, %ecx        # imm = 0xFFFFFFF
	ja	.LBB13_6
# %bb.5:
	addl	$4, %eax
	shll	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741823, %ecx       # imm = 0x3FFFFFFF
	ja	.LBB13_8
# %bb.7:
	addl	$2, %eax
	shll	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB13_8:
	leaq	(%rdi,%rdx,4), %r11
	addq	$24, %r11
	leaq	(%rdi,%rdx,4), %r9
	addq	$20, %r9
	leaq	24(%rdi), %r10
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB13_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testl	$1073741824, %ecx       # imm = 0x40000000
	jne	.LBB13_10
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$32, %eax
	jmp	.LBB13_16
.LBB13_10:
	addl	$1, %eax
.LBB13_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	%ecx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jg	.LBB13_16
# %bb.12:
	movl	$11, %edx
	subl	%eax, %edx
	movl	%r8d, %esi
	movl	%edx, %ecx
	shrl	%cl, %esi
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r9
	jbe	.LBB13_14
# %bb.13:
	movl	-8(%r11), %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB13_14:
	addb	$21, %al
	movl	%eax, %ecx
	shll	%cl, %r8d
	movl	%edx, %ecx
	shrl	%cl, %edi
	orl	%r8d, %edi
	jmp	.LBB13_23
.LBB13_16:
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r9
	jbe	.LBB13_18
# %bb.17:
	movl	-8(%r11), %edi
	addq	$-8, %r11
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %r9
.LBB13_18:
	movl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-11, %edx
	je	.LBB13_22
# %bb.19:
	movl	%edx, %ecx
	shll	%cl, %r8d
	movl	$43, %esi
	subl	%eax, %esi
	movl	%edi, %eax
	movl	%esi, %ecx
	shrl	%cl, %eax
	xorl	%r11d, %r11d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r9
	jbe	.LBB13_21
# %bb.20:
	movl	-4(%r9), %r11d
	movl	$42, __A_VARIABLE(%rip)
.LBB13_21:
	orl	%eax, %r8d
	movl	%edx, %ecx
	shll	%cl, %edi
	movl	%esi, %ecx
	shrl	%cl, %r11d
	orl	%r11d, %edi
.LBB13_22:
	movl	%r8d, %esi
.LBB13_23:
	orl	$1072693248, %esi       # imm = 0x3FF00000
	shlq	$32, %rsi
	movl	%edi, %eax
	orq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end13:
	.size	__b2d, .Lfunc_end13-__b2d
                                        # -- End function
	.globl	__d2b                   # -- Begin function __d2b
	.p2align	4, 0x90
	.type	__d2b,@function
__d2b:                                  # @__d2b
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	120(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB14_3
# %bb.1:
	movq	%rdi, %rbx
	movl	$8, %edi
	movl	$65, %esi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	calloc
	movq	-56(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, 120(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_2
.LBB14_3:
	movq	8(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB14_5
# %bb.4:
	movq	(%r12), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB14_8
.LBB14_5:
	movq	%xmm0, -56(%rbp)        # 8-byte Folded Spill
	movl	$1, %edi
	movl	$36, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_6
# %bb.7:
	movq	%rax, %r12
	movabsq	$8589934593, %rax       # imm = 0x200000001
	movq	%rax, 8(%r12)
	movq	-56(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%r12)
.LBB14_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%xmm0, %rax
	movq	%rax, %rbx
	shrq	$32, %rbx
	andl	$1048575, %ebx          # imm = 0xFFFFF
	movl	%ebx, -44(%rbp)
	movq	%rax, %r13
	shrq	$52, %r13
	movl	$42, __A_VARIABLE(%rip)
	andl	$2047, %r13d            # imm = 0x7FF
	je	.LBB14_11
# %bb.10:
	orl	$1048576, %ebx          # imm = 0x100000
	movl	%ebx, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_16
# %bb.12:
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	__lo0bits
                                        # kill: def $eax killed $eax def $rax
	movl	-48(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_14
# %bb.13:
	movl	%eax, %ecx
	negb	%cl
	movl	%ebx, %esi
	shll	%cl, %esi
	orl	%edx, %esi
	movl	%esi, 24(%r12)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, -44(%rbp)
	jmp	.LBB14_15
.LBB14_16:
	leaq	-44(%rbp), %rdi
	callq	__lo0bits
                                        # kill: def $eax killed $eax def $rax
	movl	-44(%rbp), %ecx
	movl	%ecx, 24(%r12)
	movl	$1, 20(%r12)
	addl	$32, %eax
	movl	$1, %ecx
	jmp	.LBB14_17
.LBB14_14:
	movl	%edx, 24(%r12)
.LBB14_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, 28(%r12)
	cmpl	$1, %ebx
	movl	$2, %ecx
	sbbl	$0, %ecx
	movl	%ecx, 20(%r12)
.LBB14_17:
	leal	(%rax,%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB14_19
# %bb.18:
	addl	$-1075, %edx            # imm = 0xFBCD
	movl	%edx, (%r15)
	movl	$53, %ecx
	subl	%eax, %ecx
	jmp	.LBB14_32
.LBB14_19:
	addl	$-1074, %edx            # imm = 0xFBCE
	movl	%edx, (%r15)
	movslq	%ecx, %rax
	movl	20(%r12,%rax,4), %edx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %edx            # imm = 0xFFFF
	ja	.LBB14_21
# %bb.20:
	shll	$16, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB14_21:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	ja	.LBB14_23
# %bb.22:
	orl	$8, %eax
	shll	$8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB14_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$268435455, %edx        # imm = 0xFFFFFFF
	ja	.LBB14_25
# %bb.24:
	addl	$4, %eax
	shll	$4, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB14_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741823, %edx       # imm = 0x3FFFFFFF
	ja	.LBB14_27
# %bb.26:
	addl	$2, %eax
	shll	$2, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB14_27:
	shll	$5, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB14_30
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$32, %esi
	testl	$1073741824, %edx       # imm = 0x40000000
	je	.LBB14_31
# %bb.29:
	addl	$1, %eax
.LBB14_30:
	movl	%eax, %esi
.LBB14_31:
	subl	%esi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_32:
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_2:
	xorl	%r12d, %r12d
	jmp	.LBB14_9
.LBB14_6:
	xorl	%r12d, %r12d
	movq	-56(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB14_9
.Lfunc_end14:
	.size	__d2b, .Lfunc_end14-__d2b
                                        # -- End function
	.globl	__ratio                 # -- Begin function __ratio
	.p2align	4, 0x90
	.type	__ratio,@function
__ratio:                                # @__ratio
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	-24(%rbp), %rsi
	callq	__b2d
	movq	%xmm0, -32(%rbp)        # 8-byte Folded Spill
	leaq	-20(%rbp), %rsi
	movq	%r14, %rdi
	callq	__b2d
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	20(%rbx), %ecx
	subl	20(%r14), %ecx
	shll	$5, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	shll	$20, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB15_2
# %bb.1:
	movq	-32(%rbp), %xmm1        # 8-byte Folded Reload
                                        # xmm1 = mem[0],zero
	movq	%xmm1, %rcx
	movl	%ecx, %edx
	shrq	$32, %rcx
	addl	%ecx, %eax
	shlq	$32, %rax
	orq	%rax, %rdx
	movq	%rdx, %xmm1
	jmp	.LBB15_3
.LBB15_2:
	movq	%xmm0, %rcx
	movl	%ecx, %edx
	shrq	$32, %rcx
	subl	%eax, %ecx
	shlq	$32, %rcx
	orq	%rcx, %rdx
	movq	%rdx, %xmm0
	movq	-32(%rbp), %xmm1        # 8-byte Folded Reload
                                        # xmm1 = mem[0],zero
.LBB15_3:
	divsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	__ratio, .Lfunc_end15-__ratio
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _mprec_log10
.LCPI16_0:
	.quad	4607182418800017408     # double 1
.LCPI16_1:
	.quad	4621819117588971520     # double 10
	.text
	.globl	_mprec_log10
	.p2align	4, 0x90
	.type	_mprec_log10,@function
_mprec_log10:                           # @_mprec_log10
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$24, %edi
	jge	.LBB16_1
# %bb.4:
	movslq	%edi, %rax
	movsd	__mprec_tens(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB16_3
.LBB16_1:
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %edi
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %edi
	cmpl	$1, %edi
	jg	.LBB16_2
.LBB16_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end16:
	.size	_mprec_log10, .Lfunc_end16-_mprec_log10
                                        # -- End function
	.globl	__copybits              # -- Begin function __copybits
	.p2align	4, 0x90
	.type	__copybits,@function
__copybits:                             # @__copybits
# %bb.0:
	addl	$-1, %esi
	sarl	$5, %esi
	movslq	%esi, %r9
	leaq	(%rdi,%r9,4), %r8
	addq	$4, %r8
	movslq	20(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	testq	%rsi, %rsi
	jle	.LBB17_3
# %bb.1:
	leaq	(%rdx,%rsi,4), %rsi
	addq	$24, %rsi
	addq	$24, %rdx
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %ecx
	addq	$4, %rdx
	movl	%ecx, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jb	.LBB17_2
.LBB17_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rax
	jae	.LBB17_8
# %bb.4:
	leaq	(%rdi,%r9,4), %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %rdx
	cmovaq	%rax, %rdx
	subq	%rax, %rdx
	addq	$3, %rdx
	movl	%edx, %esi
	shrl	$2, %esi
	addl	$1, %esi
	andq	$7, %rsi
	je	.LBB17_6
	.p2align	4, 0x90
.LBB17_5:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rsi
	jne	.LBB17_5
.LBB17_6:
	cmpq	$28, %rdx
	jb	.LBB17_8
	.p2align	4, 0x90
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 12(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 28(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	28(%rax), %rdx
	addq	$32, %rax
	cmpq	%rcx, %rdx
	jb	.LBB17_7
.LBB17_8:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end17:
	.size	__copybits, .Lfunc_end17-__copybits
                                        # -- End function
	.globl	__any_on                # -- Begin function __any_on
	.p2align	4, 0x90
	.type	__any_on,@function
__any_on:                               # @__any_on
# %bb.0:
	movl	20(%rdi), %eax
	movl	%esi, %edx
	sarl	$5, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jle	.LBB18_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	jmp	.LBB18_5
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB18_5
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %esi
	je	.LBB18_5
# %bb.4:
	movslq	%edx, %rax
	movl	24(%rdi,%rax,4), %r8d
	movl	%r8d, %r9d
	movl	%esi, %ecx
	shrl	%cl, %r9d
	shll	%cl, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	%r8d, %r9d
	jne	.LBB18_10
.LBB18_5:
	movslq	%edx, %rax
	leaq	(%rdi,%rax,4), %rax
	addq	$24, %rax
	addq	$24, %rdi
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB18_6:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jbe	.LBB18_7
# %bb.8:                                #   in Loop: Header=BB18_6 Depth=1
	cmpl	$0, -4(%rax)
	leaq	-4(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_6
# %bb.9:
	movl	$1, %eax
	jmp	.LBB18_10
.LBB18_7:
	xorl	%eax, %eax
.LBB18_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end18:
	.size	__any_on, .Lfunc_end18-__any_on
                                        # -- End function
	.type	__pow5mult.p05,@object  # @__pow5mult.p05
	.section	.rodata,"a",@progbits
	.p2align	2
__pow5mult.p05:
	.long	5                       # 0x5
	.long	25                      # 0x19
	.long	125                     # 0x7d
	.size	__pow5mult.p05, 12

	.type	__mprec_tens,@object    # @__mprec_tens
	.globl	__mprec_tens
	.p2align	4
__mprec_tens:
	.quad	4607182418800017408     # double 1
	.quad	4621819117588971520     # double 10
	.quad	4636737291354636288     # double 100
	.quad	4652007308841189376     # double 1000
	.quad	4666723172467343360     # double 1.0E+4
	.quad	4681608360884174848     # double 1.0E+5
	.quad	4696837146684686336     # double 1.0E+6
	.quad	4711630319722168320     # double 1.0E+7
	.quad	4726483295884279808     # double 1.0E+8
	.quad	4741671816366391296     # double 1.0E+9
	.quad	4756540486875873280     # double 1.0E+10
	.quad	4771362005757984768     # double 1.0E+11
	.quad	4786511204640096256     # double 1.0E+12
	.quad	4801453603149578240     # double 1.0E+13
	.quad	4816244402031689728     # double 1.0E+14
	.quad	4831355200913801216     # double 1.0E+15
	.quad	4846369599423283200     # double 1.0E+16
	.quad	4861130398305394688     # double 1.0E+17
	.quad	4876203697187506176     # double 1.0E+18
	.quad	4891288408196988160     # double 1.0E+19
	.quad	4906019910204099648     # double 1.0E+20
	.quad	4921056587992461136     # double 1.0E+21
	.quad	4936209963552724370     # double 1.0E+22
	.quad	4950912855330343670     # double 9.9999999999999991E+22
	.quad	4965913770331839924     # double 9.9999999999999998E+23
	.size	__mprec_tens, 200

	.type	__mprec_bigtens,@object # @__mprec_bigtens
	.globl	__mprec_bigtens
	.p2align	4
__mprec_bigtens:
	.quad	4846369599423283200     # double 1.0E+16
	.quad	5085611494797045271     # double 1.0000000000000001E+32
	.quad	5564284217833028085     # double 1.0E+64
	.quad	6521906365687930162     # double 1.0000000000000001E+128
	.quad	8436737289693151036     # double 1.0E+256
	.size	__mprec_bigtens, 40

	.type	__mprec_tinytens,@object # @__mprec_tinytens
	.globl	__mprec_tinytens
	.p2align	4
__mprec_tinytens:
	.quad	4367597403136100796     # double 9.9999999999999997E-17
	.quad	4128101167230658355     # double 1.0000000000000001E-32
	.quad	3649340653511681853     # double 9.9999999999999997E-65
	.quad	2691949749288605597     # double 1.0000000000000001E-128
	.quad	776877706278891331      # double 9.9999999999999997E-257
	.size	__mprec_tinytens, 40

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
