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
	testq	%rcx, %rcx
	jne	.LBB0_2
# %bb.1:
	movq	%rdi, %rbx
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
.LBB0_2:
	movslq	%r14d, %rdx
	movq	(%rcx,%rdx,8), %rax
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
	testq	%rax, %rax
	je	.LBB0_9
# %bb.5:
	movl	%r14d, 8(%rax)
	movl	%ebx, 12(%rax)
.LBB0_6:
	movq	$0, 16(%rax)
	jmp	.LBB0_7
.LBB0_9:
	xorl	%eax, %eax
.LBB0_7:
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
	testq	%rsi, %rsi
	je	.LBB1_2
# %bb.1:
	movq	120(%rdi), %rax
	movslq	8(%rsi), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rsi)
	movq	%rsi, (%rax,%rcx,8)
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
	movq	%rdi, %r13
	movslq	20(%rsi), %r15
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
	addq	$1, %rax
	cmpl	%r15d, %eax
	jl	.LBB2_1
# %bb.2:
	testl	%ebx, %ebx
	je	.LBB2_13
# %bb.3:
	cmpl	12(%r14), %r15d
	jl	.LBB2_12
# %bb.4:
	movslq	8(%r14), %r12
	movq	120(%r13), %rax
	testq	%rax, %rax
	movq	%r13, -56(%rbp)         # 8-byte Spill
	jne	.LBB2_6
# %bb.5:
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, 120(%r13)
	testq	%rax, %rax
	je	.LBB2_15
.LBB2_6:
	movq	8(%rax,%r12,8), %r13
	testq	%r13, %r13
	je	.LBB2_8
# %bb.7:
	movq	(%r13), %rcx
	movq	%rcx, 8(%rax,%r12,8)
	jmp	.LBB2_10
.LBB2_8:
	addl	$1, %r12d
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	cltq
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	testq	%rax, %rax
	je	.LBB2_15
# %bb.9:
	movq	%rax, %r13
	movl	%r12d, 8(%rax)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 12(%r13)
.LBB2_10:
	movq	$0, 16(%r13)
	jmp	.LBB2_11
.LBB2_15:
	xorl	%r13d, %r13d
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%r13), %rdi
	leaq	16(%r14), %rsi
	movslq	20(%r14), %rax
	leaq	8(,%rax,4), %rdx
	callq	memcpy
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	120(%rax), %rax
	movslq	8(%r14), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%r14)
	movq	%r14, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
.LBB2_12:
	leal	1(%r15), %eax
	movl	%ebx, 24(%r14,%r15,4)
	movl	%eax, 20(%r14)
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
	movl	%ecx, %r12d
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%r13d, %r13d
	cmpl	$10, %ecx
	jl	.LBB3_3
# %bb.1:                                # %.preheader1
	leal	8(%r12), %eax
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
	cmpl	%ecx, %eax
	jg	.LBB3_2
.LBB3_3:
	movq	120(%r15), %rcx
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
	testq	%rax, %rax
	je	.LBB3_5
.LBB3_6:
	movl	%r13d, %edx
	movq	(%rcx,%rdx,8), %rax
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
	testq	%rax, %rax
	je	.LBB3_9
# %bb.10:
	movl	%r13d, 8(%rax)
	movl	%ebx, 12(%rax)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
.LBB3_11:
	movq	$0, 16(%rax)
.LBB3_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, 24(%rax)
	movl	$1, 20(%rax)
	cmpl	$10, %ebx
	jl	.LBB3_16
# %bb.13:
	movq	%r12, -48(%rbp)         # 8-byte Spill
	leal	-10(%rbx), %r13d
	addq	$9, %r13
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	%ebx, %r12d
	movl	$9, %ebx
	.p2align	4, 0x90
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	movsbl	(%r14,%rbx), %ecx
	addl	$-48, %ecx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$10, %edx
	callq	__multadd
	addq	$1, %rbx
	cmpl	%ebx, %r12d
	jne	.LBB3_14
# %bb.15:
	addq	%r13, %r14
	addq	$2, %r14
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpl	%r12d, %ecx
	jl	.LBB3_18
	jmp	.LBB3_20
.LBB3_16:
	addq	$10, %r14
	movl	$9, %ecx
	cmpl	%r12d, %ecx
	jge	.LBB3_20
.LBB3_18:                               # %.preheader
	subl	%ecx, %r12d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	movsbl	(%r14,%rbx), %ecx
	addl	$-48, %ecx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$10, %edx
	callq	__multadd
	addq	$1, %rbx
	cmpl	%ebx, %r12d
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
	xorl	%eax, %eax
	cmpl	$65536, %edi            # imm = 0x10000
	setb	%al
	movl	%edi, %ecx
	shll	$16, %ecx
	cmpl	$65535, %edi            # imm = 0xFFFF
	cmoval	%edi, %ecx
	shll	$4, %eax
	leal	8(%rax), %edx
	movl	%ecx, %esi
	shll	$8, %esi
	cmpl	$16777215, %ecx         # imm = 0xFFFFFF
	cmoval	%ecx, %esi
	cmoval	%eax, %edx
	movl	%esi, %eax
	shll	$4, %eax
	cmpl	$268435455, %esi        # imm = 0xFFFFFFF
	cmoval	%esi, %eax
	leal	4(%rdx), %esi
	cmoval	%edx, %esi
	leal	2(%rsi), %ecx
	leal	(,%rax,4), %edx
	cmpl	$1073741823, %eax       # imm = 0x3FFFFFFF
	cmoval	%eax, %edx
	cmoval	%esi, %ecx
	testl	%edx, %edx
	js	.LBB4_3
# %bb.1:
	movl	$32, %eax
	testl	$1073741824, %edx       # imm = 0x40000000
	je	.LBB4_4
# %bb.2:
	addl	$1, %ecx
.LBB4_3:
	movl	%ecx, %eax
.LBB4_4:
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
	testb	$7, %cl
	je	.LBB5_5
# %bb.1:
	xorl	%eax, %eax
	testb	$1, %cl
	jne	.LBB5_9
# %bb.2:
	testb	$2, %cl
	jne	.LBB5_3
# %bb.4:
	shrl	$2, %ecx
	movl	%ecx, (%rdi)
	movl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB5_5:
	movl	%ecx, %eax
	shrl	$16, %eax
	xorl	%edx, %edx
	testw	%cx, %cx
	sete	%dl
	cmovnel	%ecx, %eax
	shll	$4, %edx
	leal	8(%rdx), %r8d
	movl	%eax, %esi
	shrl	$8, %esi
	testb	%al, %al
	cmovnel	%edx, %r8d
	cmovnel	%eax, %esi
	leal	4(%r8), %edx
	movl	%esi, %ecx
	shrl	$4, %ecx
	testb	$15, %sil
	cmovnel	%r8d, %edx
	cmovnel	%esi, %ecx
	leal	2(%rdx), %eax
	movl	%ecx, %esi
	shrl	$2, %esi
	testb	$3, %cl
	cmovnel	%edx, %eax
	cmovnel	%ecx, %esi
	testb	$1, %sil
	jne	.LBB5_8
# %bb.6:
	shrl	%esi
	je	.LBB5_10
# %bb.7:
	addl	$1, %eax
.LBB5_8:
	movl	%esi, (%rdi)
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB5_3:
	shrl	%ecx
	movl	%ecx, (%rdi)
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB5_10:
	movl	$32, %eax
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
	testq	%rcx, %rcx
	jne	.LBB6_2
# %bb.1:
	movq	%rdi, %rbx
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.LBB6_9
.LBB6_2:
	movq	8(%rcx), %rax
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
	testq	%rax, %rax
	je	.LBB6_9
# %bb.5:
	movabsq	$8589934593, %rcx       # imm = 0x200000001
	movq	%rcx, 8(%rax)
.LBB6_6:
	movq	$0, 16(%rax)
	jmp	.LBB6_7
.LBB6_9:
	xorl	%eax, %eax
.LBB6_7:
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
	subq	$40, %rsp
	movq	%rdi, %r15
	movl	20(%rsi), %eax
	cmpl	20(%rdx), %eax
	movq	%rdx, %r14
	cmovlq	%rsi, %r14
	cmovlq	%rdx, %rsi
	movslq	20(%rsi), %r9
	movslq	20(%r14), %rdi
	leaq	(%rdi,%r9), %r13
	xorl	%ebx, %ebx
	cmpl	12(%rsi), %r13d
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movslq	8(%rsi), %r12
	setg	%al
	movq	120(%r15), %rcx
	testq	%rcx, %rcx
	jne	.LBB7_2
# %bb.1:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$8, %edi
	movl	$65, %esi
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movb	%al, -41(%rbp)          # 1-byte Spill
	callq	calloc
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%rax, %rcx
	movb	-41(%rbp), %al          # 1-byte Reload
	movq	%rcx, 120(%r15)
	testq	%rcx, %rcx
	je	.LBB7_37
.LBB7_2:
	movb	%al, %bl
	addq	%rbx, %r12
	movq	(%rcx,%r12,8), %rax
	testq	%rax, %rax
	je	.LBB7_4
# %bb.3:
	movq	(%rax), %rdx
	movq	%rdx, (%rcx,%r12,8)
	jmp	.LBB7_6
.LBB7_4:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %r15
	movl	$1, %ebx
	movl	%r12d, %ecx
	shll	%cl, %ebx
	movslq	%ebx, %rax
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	testq	%rax, %rax
	je	.LBB7_38
# %bb.5:
	movl	%r12d, 8(%rax)
	movl	%ebx, 12(%rax)
	movq	%r15, %r9
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB7_6:
	movq	$0, 16(%rax)
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rax), %r11
	testl	%r13d, %r13d
	jle	.LBB7_19
# %bb.8:
	leaq	(%rax,%r13,4), %rdx
	addq	$24, %rdx
	leaq	28(%rax), %rsi
	cmpq	%rsi, %rdx
	cmovaq	%rdx, %rsi
	subq	%rax, %rsi
	addq	$-25, %rsi
	shrq	$2, %rsi
	addq	$1, %rsi
	movq	%r11, %rcx
	cmpq	$8, %rsi
	jb	.LBB7_18
# %bb.9:
	movq	%rdi, %r10
	movq	%rsi, %r8
	andq	$-8, %r8
	leaq	-8(%r8), %rcx
	movq	%rcx, %rbx
	shrq	$3, %rbx
	addq	$1, %rbx
	movl	%ebx, %edi
	andl	$7, %edi
	cmpq	$56, %rcx
	jae	.LBB7_11
# %bb.10:
	xorl	%ebx, %ebx
	jmp	.LBB7_13
.LBB7_11:
	movq	%rdi, %rcx
	subq	%rbx, %rcx
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB7_12:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 24(%rax,%rbx,4)
	movups	%xmm0, 40(%rax,%rbx,4)
	movups	%xmm0, 56(%rax,%rbx,4)
	movups	%xmm0, 72(%rax,%rbx,4)
	movups	%xmm0, 88(%rax,%rbx,4)
	movups	%xmm0, 104(%rax,%rbx,4)
	movups	%xmm0, 120(%rax,%rbx,4)
	movups	%xmm0, 136(%rax,%rbx,4)
	movups	%xmm0, 152(%rax,%rbx,4)
	movups	%xmm0, 168(%rax,%rbx,4)
	movups	%xmm0, 184(%rax,%rbx,4)
	movups	%xmm0, 200(%rax,%rbx,4)
	movups	%xmm0, 216(%rax,%rbx,4)
	movups	%xmm0, 232(%rax,%rbx,4)
	movups	%xmm0, 248(%rax,%rbx,4)
	movups	%xmm0, 264(%rax,%rbx,4)
	addq	$64, %rbx
	addq	$8, %rcx
	jne	.LBB7_12
.LBB7_13:
	testq	%rdi, %rdi
	je	.LBB7_16
# %bb.14:                               # %.preheader4
	leaq	(%rax,%rbx,4), %rcx
	addq	$40, %rcx
	negq	%rdi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB7_15:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, (%rcx)
	addq	$32, %rcx
	incq	%rdi
	jne	.LBB7_15
.LBB7_16:
	cmpq	%r8, %rsi
	movq	%r10, %rdi
	je	.LBB7_19
# %bb.17:
	leaq	(%rax,%r8,4), %rcx
	addq	$24, %rcx
	.p2align	4, 0x90
.LBB7_18:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rcx)
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	jb	.LBB7_18
.LBB7_19:
	testl	%edi, %edi
	jle	.LBB7_30
# %bb.20:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r9,4), %r10
	addq	$24, %r10
	leaq	(%r14,%rdi,4), %rdx
	addq	$24, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	addq	$24, %r14
	leaq	28(%rcx), %r9
	cmpq	%r9, %r10
	cmovaq	%r10, %r9
	subq	%rcx, %r9
	leaq	24(%rcx), %r8
	addq	$3, %r9
	andq	$-4, %r9
	addq	%rax, %r9
	jmp	.LBB7_22
	.p2align	4, 0x90
.LBB7_21:                               #   in Loop: Header=BB7_22 Depth=1
	addq	$4, %r14
	addq	$4, %r11
	addq	$4, %r9
	cmpq	-56(%rbp), %r14         # 8-byte Folded Reload
	jae	.LBB7_30
.LBB7_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_28 Depth 2
	movl	(%r14), %r15d
	movl	%r15d, %r12d
	andl	$65535, %r12d           # imm = 0xFFFF
	je	.LBB7_26
# %bb.23:                               # %.preheader1
                                        #   in Loop: Header=BB7_22 Depth=1
	xorl	%edi, %edi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB7_24:                               #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r8,%rdi), %edx
	movzwl	%dx, %r15d
	imull	%r12d, %r15d
	movl	(%r11,%rdi), %ecx
	movzwl	%cx, %ebx
	addl	%esi, %ebx
	addl	%r15d, %ebx
	movzwl	%bx, %r15d
	shrl	$16, %ebx
	shrl	$16, %edx
	imull	%r12d, %edx
	shrl	$16, %ecx
	addl	%edx, %ecx
	addl	%ebx, %ecx
	movl	%ecx, %esi
	shrl	$16, %esi
	shll	$16, %ecx
	orl	%ecx, %r15d
	movl	%r15d, (%r11,%rdi)
	leaq	(%r8,%rdi), %rcx
	addq	$4, %rcx
	addq	$4, %rdi
	cmpq	%r10, %rcx
	jb	.LBB7_24
# %bb.25:                               #   in Loop: Header=BB7_22 Depth=1
	movl	%esi, (%r9)
	movl	(%r14), %r15d
.LBB7_26:                               #   in Loop: Header=BB7_22 Depth=1
	shrl	$16, %r15d
	je	.LBB7_21
# %bb.27:                               #   in Loop: Header=BB7_22 Depth=1
	movl	(%r11), %edx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movl	%edx, %ecx
	.p2align	4, 0x90
.LBB7_28:                               #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r8,%rbx), %esi
	imull	%r15d, %esi
	shrl	$16, %edx
	addl	%edi, %edx
	addl	%esi, %edx
	movl	%edx, %esi
	shrl	$16, %esi
	shll	$16, %edx
	movzwl	%cx, %ecx
	orl	%edx, %ecx
	movl	%ecx, (%r11,%rbx)
	movzwl	2(%r8,%rbx), %edi
	imull	%r15d, %edi
	movl	4(%r11,%rbx), %edx
	movzwl	%dx, %ecx
	addl	%edi, %ecx
	addl	%esi, %ecx
	movl	%ecx, %edi
	shrl	$16, %edi
	leaq	(%r8,%rbx), %rsi
	addq	$4, %rsi
	addq	$4, %rbx
	cmpq	%r10, %rsi
	jb	.LBB7_28
# %bb.29:                               #   in Loop: Header=BB7_22 Depth=1
	movl	%ecx, (%r9)
	jmp	.LBB7_21
.LBB7_30:
	testl	%r13d, %r13d
	jle	.LBB7_35
# %bb.31:                               # %.preheader
	leaq	(%rax,%r13,4), %rcx
	addq	$20, %rcx
	.p2align	4, 0x90
.LBB7_32:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx)
	jne	.LBB7_35
# %bb.33:                               #   in Loop: Header=BB7_32 Depth=1
	leal	-1(%r13), %edx
	addq	$-4, %rcx
	cmpl	$1, %r13d
	movl	%edx, %r13d
	jg	.LBB7_32
	jmp	.LBB7_36
.LBB7_35:
	movl	%r13d, %edx
.LBB7_36:
	movl	%edx, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_37:
	xorl	%eax, %eax
	jmp	.LBB7_7
.LBB7_38:
	xorl	%eax, %eax
	movq	%r15, %r9
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB7_7
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
.LBB8_2:
	sarl	$2, %r12d
	je	.LBB8_22
# %bb.3:
	movq	112(%r15), %rax
	testq	%rax, %rax
	jne	.LBB8_15
# %bb.4:
	movq	120(%r15), %rcx
	testq	%rcx, %rcx
	jne	.LBB8_6
# %bb.5:
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%r15)
	testq	%rax, %rax
	je	.LBB8_13
.LBB8_6:
	movq	8(%rcx), %rax
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
	testq	%rax, %rax
	je	.LBB8_13
# %bb.9:
	movabsq	$8589934593, %rcx       # imm = 0x200000001
	movq	%rcx, 8(%rax)
.LBB8_10:
	movq	$0, 16(%rax)
	jmp	.LBB8_11
.LBB8_13:
	xorl	%eax, %eax
.LBB8_11:
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2684354560001, %rcx    # imm = 0x27100000001
	movq	%rcx, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 112(%r15)
.LBB8_14:
	movq	$0, (%rax)
.LBB8_15:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	testb	$1, %r12b
	je	.LBB8_19
# %bb.16:                               #   in Loop: Header=BB8_15 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	__multiply
	testq	%r14, %r14
	je	.LBB8_18
# %bb.17:                               #   in Loop: Header=BB8_15 Depth=1
	movq	120(%r15), %rcx
	movslq	8(%r14), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	%rsi, (%r14)
	movq	%r14, (%rcx,%rdx,8)
.LBB8_18:                               #   in Loop: Header=BB8_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
.LBB8_19:                               #   in Loop: Header=BB8_15 Depth=1
	sarl	%r12d
	je	.LBB8_22
# %bb.20:                               #   in Loop: Header=BB8_15 Depth=1
	movq	(%rbx), %rax
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
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	%edx, %r13d
	sarl	$5, %r13d
	movl	8(%rsi), %ebx
	movl	12(%rsi), %eax
	movl	20(%rsi), %r8d
	leal	(%r8,%r13), %ecx
	cmpl	%eax, %ecx
	jl	.LBB9_3
	.p2align	4, 0x90
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %ebx
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jge	.LBB9_1
.LBB9_3:
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movq	120(%r14), %rcx
	testq	%rcx, %rcx
	movq	%r14, -56(%rbp)         # 8-byte Spill
	jne	.LBB9_6
# %bb.4:
	movl	$8, %edi
	movl	$65, %esi
	movq	%r8, -48(%rbp)          # 8-byte Spill
	callq	calloc
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, 120(%r14)
	testq	%rax, %rax
	je	.LBB9_5
.LBB9_6:
	movslq	%ebx, %rdx
	movq	(%rcx,%rdx,8), %rax
	testq	%rax, %rax
	je	.LBB9_8
# %bb.7:
	movq	(%rax), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	jmp	.LBB9_11
.LBB9_8:
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movl	$1, %r14d
	movl	%ebx, %ecx
	shll	%cl, %r14d
	movslq	%r14d, %rax
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	testq	%rax, %rax
	je	.LBB9_9
# %bb.10:
	movl	%ebx, 8(%rax)
	movl	%r14d, 12(%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
.LBB9_11:
	movq	$0, 16(%rax)
.LBB9_12:
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rax), %r14
	cmpl	$32, %r15d
	jl	.LBB9_18
# %bb.13:
	testl	%r13d, %r13d
	movl	$1, %edx
	cmovgl	%r13d, %edx
	leal	-1(%rdx), %edi
	leaq	1(%rdi), %rbx
	xorl	%ecx, %ecx
	cmpq	$8, %rbx
	jb	.LBB9_17
# %bb.14:
	andl	$7, %edx
	subq	%rdx, %rbx
	leaq	(%rax,%rbx,4), %r14
	addq	$24, %r14
	movl	%ebx, %ecx
	subq	%rdx, %rdi
	addq	$1, %rdi
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB9_15:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 24(%rax,%rbx,4)
	movups	%xmm0, 40(%rax,%rbx,4)
	addq	$8, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB9_15
# %bb.16:
	testl	%edx, %edx
	je	.LBB9_18
	.p2align	4, 0x90
.LBB9_17:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%r14)
	addq	$4, %r14
	addl	$1, %ecx
	cmpl	%r13d, %ecx
	jl	.LBB9_17
.LBB9_18:
	addl	%r8d, %r13d
	addl	$1, %r13d
	leaq	24(%r12), %rbx
	movslq	20(%r12), %rcx
	leaq	(%r12,%rcx,4), %rsi
	addq	$24, %rsi
	andl	$31, %r15d
	je	.LBB9_19
# %bb.38:
	movl	$32, %r11d
	subl	%r15d, %r11d
	leaq	28(%r12), %rcx
	cmpq	%rcx, %rsi
	cmovaq	%rsi, %rcx
	subq	%r12, %rcx
	addq	$-25, %rcx
	movq	%rcx, %r9
	shrq	$2, %r9
	leal	1(%r9), %r10d
	andl	$3, %r10d
	cmpq	$12, %rcx
	jae	.LBB9_40
# %bb.39:
	xorl	%edi, %edi
	movq	%r14, %r8
	testq	%r10, %r10
	jne	.LBB9_44
	jmp	.LBB9_46
.LBB9_19:
	leaq	28(%r12), %rdi
	cmpq	%rdi, %rsi
	movq	%rdi, %r10
	cmovaq	%rsi, %r10
	subq	%r12, %r10
	addq	$-25, %r10
	shrq	$2, %r10
	addq	$1, %r10
	cmpq	$7, %r10
	jbe	.LBB9_20
# %bb.27:
	cmpq	%rdi, %rsi
	cmovaq	%rsi, %rdi
	subq	%r12, %rdi
	leaq	3(%rdi), %rcx
	andq	$-4, %rcx
	addq	%r12, %rcx
	cmpq	%r14, %rcx
	jbe	.LBB9_29
# %bb.28:
	leaq	24(%r12), %rcx
	addq	$-25, %rdi
	andq	$-4, %rdi
	leaq	(%rdi,%r14), %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jb	.LBB9_20
.LBB9_29:
	movq	%r10, %r9
	andq	$-8, %r9
	leaq	-8(%r9), %rdi
	movq	%rdi, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	andl	$3, %edx
	cmpq	$24, %rdi
	jae	.LBB9_31
# %bb.30:
	xorl	%edi, %edi
	jmp	.LBB9_33
.LBB9_40:
	movq	%r9, -48(%rbp)          # 8-byte Spill
	subq	%r10, %r9
	addq	$1, %r9
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_41:                               # =>This Inner Loop Header: Depth=1
	movl	24(%r12,%rbx,4), %r8d
	movl	%r15d, %ecx
	shll	%cl, %r8d
	orl	%edi, %r8d
	movl	%r8d, (%r14,%rbx,4)
	movl	24(%r12,%rbx,4), %edi
	movl	%r11d, %ecx
	shrl	%cl, %edi
	movl	28(%r12,%rbx,4), %esi
	movl	%r15d, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 4(%r14,%rbx,4)
	movl	28(%r12,%rbx,4), %esi
	movl	%r11d, %ecx
	shrl	%cl, %esi
	movl	32(%r12,%rbx,4), %edi
	movl	%r15d, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 8(%r14,%rbx,4)
	movl	32(%r12,%rbx,4), %esi
	movl	%r11d, %ecx
	shrl	%cl, %esi
	movl	36(%r12,%rbx,4), %edi
	movl	%r15d, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 12(%r14,%rbx,4)
	movl	36(%r12,%rbx,4), %edi
	movl	%r11d, %ecx
	shrl	%cl, %edi
	addq	$-16, %rdx
	addq	$4, %rbx
	cmpq	%rbx, %r9
	jne	.LBB9_41
# %bb.42:                               # %.loopexit8
	movq	%r12, %rbx
	subq	%rdx, %rbx
	addq	$24, %rbx
	movq	%r14, %r8
	subq	%rdx, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	testq	%r10, %r10
	je	.LBB9_46
.LBB9_44:                               # %.preheader6
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_45:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx,4), %esi
	movl	%r15d, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, (%r8,%rdx,4)
	movl	(%rbx,%rdx,4), %edi
	movl	%r11d, %ecx
	shrl	%cl, %edi
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.LBB9_45
.LBB9_46:
	movl	%edi, 4(%r14,%r9,4)
	movl	-60(%rbp), %ecx         # 4-byte Reload
	addl	$2, %ecx
	testl	%edi, %edi
	cmovnel	%ecx, %r13d
	jmp	.LBB9_47
.LBB9_5:
	xorl	%eax, %eax
	jmp	.LBB9_12
.LBB9_9:
	xorl	%eax, %eax
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB9_12
.LBB9_31:
	movq	%rdx, %rbx
	subq	%rcx, %rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_32:                               # =>This Inner Loop Header: Depth=1
	movups	24(%r12,%rdi,4), %xmm0
	movups	40(%r12,%rdi,4), %xmm1
	movups	%xmm0, (%r14,%rdi,4)
	movups	%xmm1, 16(%r14,%rdi,4)
	movups	56(%r12,%rdi,4), %xmm0
	movups	72(%r12,%rdi,4), %xmm1
	movups	%xmm0, 32(%r14,%rdi,4)
	movups	%xmm1, 48(%r14,%rdi,4)
	movups	88(%r12,%rdi,4), %xmm0
	movups	104(%r12,%rdi,4), %xmm1
	movups	%xmm0, 64(%r14,%rdi,4)
	movups	%xmm1, 80(%r14,%rdi,4)
	movups	120(%r12,%rdi,4), %xmm0
	movups	136(%r12,%rdi,4), %xmm1
	movups	%xmm0, 96(%r14,%rdi,4)
	movups	%xmm1, 112(%r14,%rdi,4)
	addq	$32, %rdi
	addq	$4, %rbx
	jne	.LBB9_32
.LBB9_33:
	testq	%rdx, %rdx
	je	.LBB9_36
# %bb.34:                               # %.preheader3
	shlq	$2, %rdi
	negq	%rdx
	.p2align	4, 0x90
.LBB9_35:                               # =>This Inner Loop Header: Depth=1
	movups	24(%r12,%rdi), %xmm0
	movups	40(%r12,%rdi), %xmm1
	movups	%xmm0, (%r14,%rdi)
	movups	%xmm1, 16(%r14,%rdi)
	addq	$32, %rdi
	incq	%rdx
	jne	.LBB9_35
.LBB9_36:
	cmpq	%r9, %r10
	je	.LBB9_47
# %bb.37:
	leaq	(%r12,%r9,4), %rbx
	addq	$24, %rbx
	leaq	(%r14,%r9,4), %r14
.LBB9_20:
	leaq	4(%rbx), %rcx
	cmpq	%rcx, %rsi
	cmovaq	%rsi, %rcx
	movq	%rbx, %r9
	notq	%r9
	addq	%rcx, %r9
	movl	%r9d, %r10d
	shrl	$2, %r10d
	addl	$1, %r10d
	andq	$7, %r10
	je	.LBB9_24
# %bb.21:                               # %.preheader1
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_22:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %edi
	movl	%edi, (%r14,%rcx,4)
	addq	$1, %rcx
	addq	$-4, %rdx
	cmpq	%rcx, %r10
	jne	.LBB9_22
# %bb.23:                               # %.loopexit2
	subq	%rdx, %rbx
	subq	%rdx, %r14
.LBB9_24:
	cmpq	$28, %r9
	jb	.LBB9_47
# %bb.25:                               # %.preheader
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_26:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx), %ecx
	movl	%ecx, (%r14,%rdx)
	movl	4(%rbx,%rdx), %ecx
	movl	%ecx, 4(%r14,%rdx)
	movl	8(%rbx,%rdx), %ecx
	movl	%ecx, 8(%r14,%rdx)
	movl	12(%rbx,%rdx), %ecx
	movl	%ecx, 12(%r14,%rdx)
	movl	16(%rbx,%rdx), %ecx
	movl	%ecx, 16(%r14,%rdx)
	movl	20(%rbx,%rdx), %ecx
	movl	%ecx, 20(%r14,%rdx)
	movl	24(%rbx,%rdx), %ecx
	movl	%ecx, 24(%r14,%rdx)
	movl	28(%rbx,%rdx), %ecx
	movl	%ecx, 28(%r14,%rdx)
	leaq	(%rbx,%rdx), %rcx
	addq	$32, %rcx
	addq	$32, %rdx
	cmpq	%rsi, %rcx
	jb	.LBB9_26
.LBB9_47:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addl	$-1, %r13d
	movl	%r13d, 20(%rax)
	testq	%r12, %r12
	je	.LBB9_49
# %bb.48:
	movq	120(%rcx), %rcx
	movslq	8(%r12), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	%rsi, (%r12)
	movq	%r12, (%rcx,%rdx,8)
.LBB9_49:
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
	subl	%ecx, %eax
	je	.LBB10_1
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB10_1:
	leaq	(%rdi,%rcx,4), %rax
	addq	$24, %rax
	addq	$24, %rdi
	leaq	(%rsi,%rcx,4), %rcx
	addq	$20, %rcx
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edx
	cmpl	%edx, -4(%rax)
	jne	.LBB10_3
# %bb.4:                                #   in Loop: Header=BB10_2 Depth=1
	addq	$-4, %rax
	addq	$-4, %rcx
	cmpq	%rdi, %rax
	ja	.LBB10_2
# %bb.5:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB10_3:
	setae	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	addl	$-1, %eax
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
	movq	%rdi, %r14
	movl	20(%rsi), %eax
	movslq	20(%rdx), %rsi
	subl	%esi, %eax
	jne	.LBB11_9
# %bb.1:
	leaq	24(%r12), %rax
	leaq	(%r12,%rsi,4), %rcx
	addq	$24, %rcx
	leaq	(%rdx,%rsi,4), %rsi
	addq	$20, %rsi
	.p2align	4, 0x90
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %edi
	cmpl	%edi, -4(%rcx)
	jne	.LBB11_8
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	addq	$-4, %rcx
	addq	$-4, %rsi
	cmpq	%rax, %rcx
	ja	.LBB11_2
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movq	120(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB11_6
# %bb.5:
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%r14)
	testq	%rax, %rax
	je	.LBB11_37
.LBB11_6:
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.LBB11_32
# %bb.7:
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	jmp	.LBB11_34
.LBB11_8:
	setae	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	addl	$-1, %eax
.LBB11_9:
	movl	%eax, %r13d
	shrl	$31, %r13d
	testl	%eax, %eax
	movq	%rdx, %r15
	cmovsq	%r12, %r15
	cmovsq	%rdx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r12), %ebx
	movq	120(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB11_11
# %bb.10:
	movl	$8, %edi
	movl	$65, %esi
	callq	calloc
	movq	%rax, %rcx
	movq	%rax, 120(%r14)
	testq	%rax, %rax
	je	.LBB11_31
.LBB11_11:
	movslq	%ebx, %rdx
	movq	(%rcx,%rdx,8), %rax
	testq	%rax, %rax
	je	.LBB11_13
# %bb.12:
	movq	(%rax), %rsi
	movq	%rsi, (%rcx,%rdx,8)
	jmp	.LBB11_15
.LBB11_13:
	movl	$1, %r14d
	movl	%ebx, %ecx
	shll	%cl, %r14d
	movslq	%r14d, %rax
	leaq	28(,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc
	testq	%rax, %rax
	je	.LBB11_31
# %bb.14:
	movl	%ebx, 8(%rax)
	movl	%r14d, 12(%rax)
.LBB11_15:
	movq	$0, 16(%rax)
	jmp	.LBB11_16
.LBB11_31:
	xorl	%eax, %eax
.LBB11_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, 16(%rax)
	movslq	20(%r15), %rcx
	leaq	(%r15,%rcx,4), %r8
	addq	$24, %r8
	leaq	28(%r15), %r9
	cmpq	%r9, %r8
	cmovaq	%r8, %r9
	movslq	20(%r12), %r11
	subq	%r15, %r9
	addq	$3, %r9
	andq	$-4, %r9
	leaq	(%r12,%r9), %r10
	leaq	(%rax,%r9), %r14
	xorl	%ebx, %ebx
	movl	$24, %esi
	.p2align	4, 0x90
.LBB11_17:                              # =>This Inner Loop Header: Depth=1
	movl	(%r12,%rsi), %edi
	movzwl	%di, %ecx
	movl	(%r15,%rsi), %r13d
	movzwl	%r13w, %edx
	subl	%edx, %ecx
	addl	%ebx, %ecx
	movzwl	%cx, %edx
	sarl	$16, %ecx
	shrl	$16, %edi
	shrl	$16, %r13d
	subl	%r13d, %edi
	addl	%ecx, %edi
	movl	%edi, %ebx
	sarl	$16, %ebx
	shll	$16, %edi
	orl	%edi, %edx
	movl	%edx, (%rax,%rsi)
	leaq	(%r15,%rsi), %rcx
	addq	$4, %rcx
	addq	$4, %rsi
	cmpq	%r8, %rcx
	jb	.LBB11_17
# %bb.18:
	leaq	(%r12,%r11,4), %r8
	addq	$24, %r8
	cmpq	%r10, %r8
	jbe	.LBB11_26
# %bb.19:
	leaq	23(,%r11,4), %rsi
	movq	%rsi, %rcx
	subq	%r10, %rcx
	addq	%rcx, %r12
	shrq	$2, %r12
	subq	%r9, %rsi
	testb	$4, %sil
	jne	.LBB11_21
# %bb.20:
	movl	(%r10), %ecx
	movzwl	%cx, %edi
	addl	%ebx, %edi
	movzwl	%di, %edx
	sarl	$16, %edi
	addq	$4, %r10
	shrl	$16, %ecx
	addl	%edi, %ecx
	movl	%ecx, %ebx
	sarl	$16, %ebx
	shll	$16, %ecx
	orl	%ecx, %edx
	leaq	4(%r14), %rdi
	movl	%edx, (%r14)
	jmp	.LBB11_22
.LBB11_21:
	movq	%r14, %rdi
.LBB11_22:
	addq	$1, %r12
	cmpq	$3, %rsi
	je	.LBB11_25
# %bb.23:                               # %.preheader
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB11_24:                              # =>This Inner Loop Header: Depth=1
	movl	(%r10,%rsi), %ecx
	movzwl	%cx, %edx
	addl	%ebx, %edx
	movzwl	%dx, %ebx
	sarl	$16, %edx
	shrl	$16, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	sarl	$16, %edx
	shll	$16, %ecx
	orl	%ecx, %ebx
	movl	%ebx, (%rdi,%rsi)
	movl	4(%r10,%rsi), %ecx
	movzwl	%cx, %ebx
	addl	%edx, %ebx
	movzwl	%bx, %edx
	sarl	$16, %ebx
	shrl	$16, %ecx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	sarl	$16, %ebx
	shll	$16, %ecx
	orl	%ecx, %edx
	movl	%edx, 4(%rdi,%rsi)
	leaq	(%r10,%rsi), %rcx
	addq	$8, %rcx
	addq	$8, %rsi
	cmpq	%r8, %rcx
	jb	.LBB11_24
.LBB11_25:
	leaq	(%r14,%r12,4), %r14
.LBB11_26:
	addl	$1, %r11d
	addq	$-4, %r14
	.p2align	4, 0x90
.LBB11_27:                              # =>This Inner Loop Header: Depth=1
	addl	$-1, %r11d
	cmpl	$0, (%r14)
	leaq	-4(%r14), %r14
	je	.LBB11_27
# %bb.28:
	movl	%r11d, 20(%rax)
.LBB11_29:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_32:
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB11_37
# %bb.33:
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	movq	%rcx, 8(%rax)
.LBB11_34:
	movq	$0, 16(%rax)
	jmp	.LBB11_35
.LBB11_37:
	xorl	%eax, %eax
.LBB11_35:
	movl	$42, __A_VARIABLE(%rip)
	movq	$1, 20(%rax)
	jmp	.LBB11_29
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
	cmpl	$20971519, %edx         # imm = 0x13FFFFF
	jg	.LBB12_5
# %bb.4:
	movl	$524288, %eax           # imm = 0x80000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
.LBB12_2:
	shlq	$32, %rax
	movq	%rax, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB12_5:
	cmpl	$52428800, %edx         # imm = 0x3200000
	jle	.LBB12_7
# %bb.6:
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB12_7:
	movb	$51, %al
	subb	%cl, %al
	movl	$1, %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	movq	%rdx, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end12:
	.size	__ulp, .Lfunc_end12-__ulp
                                        # -- End function
	.globl	__b2d                   # -- Begin function __b2d
	.p2align	4, 0x90
	.type	__b2d,@function
__b2d:                                  # @__b2d
# %bb.0:
	pushq	%rbx
	movslq	20(%rdi), %r10
	movl	20(%rdi,%r10,4), %r8d
	xorl	%ecx, %ecx
	cmpl	$65536, %r8d            # imm = 0x10000
	setb	%cl
	movl	%r8d, %eax
	shll	$16, %eax
	cmpl	$65535, %r8d            # imm = 0xFFFF
	cmoval	%r8d, %eax
	leaq	(%rdi,%r10,4), %r9
	addq	$24, %r9
	shll	$4, %ecx
	leal	8(%rcx), %r11d
	movl	%eax, %edx
	shll	$8, %edx
	cmpl	$16777215, %eax         # imm = 0xFFFFFF
	cmoval	%eax, %edx
	cmoval	%ecx, %r11d
	movl	%edx, %ebx
	shll	$4, %ebx
	cmpl	$268435455, %edx        # imm = 0xFFFFFFF
	cmoval	%edx, %ebx
	leal	4(%r11), %edx
	cmoval	%r11d, %edx
	leaq	(%rdi,%r10,4), %r10
	addq	$20, %r10
	leaq	24(%rdi), %r11
	leal	2(%rdx), %eax
	leal	(,%rbx,4), %ecx
	cmpl	$1073741823, %ebx       # imm = 0x3FFFFFFF
	cmoval	%ebx, %ecx
	cmoval	%edx, %eax
	testl	%ecx, %ecx
	js	.LBB13_3
# %bb.1:
	testl	$1073741824, %ecx       # imm = 0x40000000
	jne	.LBB13_2
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, (%rsi)
	movl	$32, %eax
	jmp	.LBB13_8
.LBB13_2:
	addl	$1, %eax
.LBB13_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	%ecx, (%rsi)
	cmpl	$10, %eax
	jg	.LBB13_8
# %bb.4:
	movl	$11, %edx
	subl	%eax, %edx
	movl	%r8d, %esi
	movl	%edx, %ecx
	shrl	%cl, %esi
	xorl	%edi, %edi
	cmpq	%r11, %r10
	jbe	.LBB13_6
# %bb.5:
	movl	-8(%r9), %edi
.LBB13_6:
	addb	$21, %al
	movl	%eax, %ecx
	shll	%cl, %r8d
	movl	%edx, %ecx
	shrl	%cl, %edi
	orl	%r8d, %edi
	jmp	.LBB13_15
.LBB13_8:
	xorl	%edi, %edi
	cmpq	%r11, %r10
	jbe	.LBB13_10
# %bb.9:
	movl	-8(%r9), %edi
	addq	$-8, %r9
	movq	%r9, %r10
.LBB13_10:
	movl	%eax, %edx
	addl	$-11, %edx
	je	.LBB13_14
# %bb.11:
	movl	%edx, %ecx
	shll	%cl, %r8d
	movl	$43, %esi
	subl	%eax, %esi
	movl	%edi, %eax
	movl	%esi, %ecx
	shrl	%cl, %eax
	xorl	%r9d, %r9d
	cmpq	%r11, %r10
	jbe	.LBB13_13
# %bb.12:
	movl	-4(%r10), %r9d
.LBB13_13:
	orl	%eax, %r8d
	movl	%edx, %ecx
	shll	%cl, %edi
	movl	%esi, %ecx
	shrl	%cl, %r9d
	orl	%r9d, %edi
.LBB13_14:
	movl	%r8d, %esi
.LBB13_15:
	orl	$1072693248, %esi       # imm = 0x3FF00000
	shlq	$32, %rsi
	movl	%edi, %eax
	orq	%rsi, %rax
	movq	%rax, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
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
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	120(%rdi), %rcx
	testq	%rcx, %rcx
	jne	.LBB14_3
# %bb.1:
	movq	%rdi, %rbx
	movl	$8, %edi
	movl	$65, %esi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	calloc
	movq	-32(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rcx
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.LBB14_2
.LBB14_3:
	movq	8(%rcx), %rax
	testq	%rax, %rax
	je	.LBB14_5
# %bb.4:
	movq	(%rax), %rdx
	movq	%rdx, 8(%rcx)
	jmp	.LBB14_8
.LBB14_5:
	movq	%xmm0, -32(%rbp)        # 8-byte Folded Spill
	movl	$1, %edi
	movl	$36, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB14_6
# %bb.7:
	movabsq	$8589934593, %rcx       # imm = 0x200000001
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
.LBB14_8:
	movq	$0, 16(%rax)
.LBB14_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%xmm0, %rcx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	andl	$1048575, %edx          # imm = 0xFFFFF
	movq	%rcx, %r8
	shrq	$52, %r8
	leal	1048576(%rdx), %r9d
	andl	$2047, %r8d             # imm = 0x7FF
	cmovel	%edx, %r9d
	testl	%ecx, %ecx
	je	.LBB14_25
# %bb.10:
	testb	$7, %cl
	je	.LBB14_17
# %bb.11:
	testb	$1, %cl
	jne	.LBB14_12
# %bb.14:
	testb	$2, %cl
	jne	.LBB14_15
# %bb.16:
	shrl	$2, %ecx
	movl	$2, %edx
	jmp	.LBB14_22
.LBB14_25:
	testb	$7, %r9b
	je	.LBB14_30
# %bb.26:
	xorl	%edx, %edx
	testb	$1, %r9b
	jne	.LBB14_34
# %bb.27:
	testb	$2, %r9b
	jne	.LBB14_28
# %bb.29:
	shrl	$2, %r9d
	movl	$2, %edx
	jmp	.LBB14_34
.LBB14_17:
	movl	%ecx, %edi
	shrl	$16, %edi
	xorl	%ebx, %ebx
	testw	%cx, %cx
	sete	%bl
	cmovnel	%ecx, %edi
	shll	$4, %ebx
	leal	8(%rbx), %esi
	movl	%edi, %edx
	shrl	$8, %edx
	testb	%dil, %dil
	cmovnel	%ebx, %esi
	cmovnel	%edi, %edx
	leal	4(%rsi), %edi
	movl	%edx, %ebx
	shrl	$4, %ebx
	testb	$15, %dl
	cmovnel	%esi, %edi
	cmovnel	%edx, %ebx
	leal	2(%rdi), %edx
	movl	%ebx, %esi
	shrl	$2, %esi
	testb	$3, %bl
	cmovnel	%edi, %edx
	cmovnel	%ebx, %esi
	testb	$1, %sil
	jne	.LBB14_20
# %bb.18:
	shrl	%esi
	je	.LBB14_21
# %bb.19:
	addl	$1, %edx
.LBB14_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ecx
	testl	%edx, %edx
	jne	.LBB14_23
	jmp	.LBB14_13
.LBB14_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_13:
	movl	%ecx, 24(%rax)
	xorl	%edx, %edx
	jmp	.LBB14_24
.LBB14_2:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_30:
	movl	%r9d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	testw	%r9w, %r9w
	sete	%dl
	cmovnel	%r9d, %ecx
	shll	$4, %edx
	leal	8(%rdx), %esi
	movl	%ecx, %edi
	shrl	$8, %edi
	testb	%cl, %cl
	cmovnel	%edx, %esi
	cmovnel	%ecx, %edi
	leal	4(%rsi), %ebx
	movl	%edi, %ecx
	shrl	$4, %ecx
	testb	$15, %dil
	cmovnel	%esi, %ebx
	cmovnel	%edi, %ecx
	leal	2(%rbx), %edx
	movl	%ecx, %esi
	shrl	$2, %esi
	testb	$3, %cl
	cmovnel	%ebx, %edx
	cmovnel	%ecx, %esi
	testb	$1, %sil
	jne	.LBB14_33
# %bb.31:
	shrl	%esi
	je	.LBB14_43
# %bb.32:
	addl	$1, %edx
.LBB14_33:
	movl	%esi, %r9d
	jmp	.LBB14_34
.LBB14_6:
	xorl	%eax, %eax
	movq	-32(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB14_9
.LBB14_15:
	shrl	%ecx
	movl	$1, %edx
	jmp	.LBB14_22
.LBB14_28:
	shrl	%r9d
	movl	$1, %edx
	jmp	.LBB14_34
.LBB14_21:
	movl	$32, %edx
.LBB14_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
.LBB14_23:
	movl	%edx, %ecx
	negb	%cl
	movl	%r9d, %edi
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 24(%rax)
	movl	%edx, %ecx
	shrl	%cl, %r9d
.LBB14_24:
	movl	%r9d, 28(%rax)
	cmpl	$1, %r9d
	movl	$2, %ecx
	sbbl	$0, %ecx
	movl	%ecx, 20(%rax)
	jmp	.LBB14_35
.LBB14_43:
	movl	$32, %edx
.LBB14_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, 24(%rax)
	movl	$1, 20(%rax)
	addl	$32, %edx
	movl	$1, %ecx
.LBB14_35:
	leal	(%rdx,%r8), %edi
	testl	%r8d, %r8d
	je	.LBB14_37
# %bb.36:
	addl	$-1075, %edi            # imm = 0xFBCD
	movl	%edi, (%r15)
	movl	$53, %ecx
	subl	%edx, %ecx
	jmp	.LBB14_42
.LBB14_37:
	addl	$-1074, %edi            # imm = 0xFBCE
	movl	%edi, (%r15)
	movslq	%ecx, %rdx
	shll	$5, %ecx
	movl	20(%rax,%rdx,4), %edi
	xorl	%esi, %esi
	cmpl	$65536, %edi            # imm = 0x10000
	setb	%sil
	movl	%edi, %edx
	shll	$16, %edx
	cmpl	$65535, %edi            # imm = 0xFFFF
	cmoval	%edi, %edx
	shll	$4, %esi
	leal	8(%rsi), %ebx
	movl	%edx, %edi
	shll	$8, %edi
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	cmoval	%edx, %edi
	cmoval	%esi, %ebx
	movl	%edi, %edx
	shll	$4, %edx
	cmpl	$268435455, %edi        # imm = 0xFFFFFFF
	cmoval	%edi, %edx
	leal	4(%rbx), %edi
	cmoval	%ebx, %edi
	leal	2(%rdi), %ebx
	leal	(,%rdx,4), %esi
	cmpl	$1073741823, %edx       # imm = 0x3FFFFFFF
	cmoval	%edx, %esi
	cmoval	%edi, %ebx
	testl	%esi, %esi
	js	.LBB14_40
# %bb.38:
	movl	$32, %edx
	testl	$1073741824, %esi       # imm = 0x40000000
	je	.LBB14_41
# %bb.39:
	addl	$1, %ebx
.LBB14_40:
	movl	%ebx, %edx
.LBB14_41:
	subl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB14_42:
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	cmpl	$24, %edi
	jge	.LBB16_1
# %bb.4:
	movslq	%edi, %rax
	movsd	__mprec_tens(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB16_1:                               # %.preheader
	addl	$1, %edi
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm0
	addl	$-1, %edi
	cmpl	$1, %edi
	jg	.LBB16_2
# %bb.3:
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
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	addl	$-1, %esi
	sarl	$5, %esi
	movslq	%esi, %r9
	leaq	(%rdi,%r9,4), %r8
	addq	$4, %r8
	movslq	20(%rdx), %rcx
	movq	%rdi, %rax
	testq	%rcx, %rcx
	jle	.LBB17_11
# %bb.1:
	leaq	(%rdx,%rcx,4), %r14
	addq	$24, %r14
	leaq	24(%rdx), %rax
	leaq	28(%rdx), %rcx
	cmpq	%rcx, %r14
	movq	%rcx, %r10
	cmovaq	%r14, %r10
	subq	%rdx, %r10
	addq	$-25, %r10
	shrq	$2, %r10
	addq	$1, %r10
	cmpq	$7, %r10
	ja	.LBB17_16
# %bb.2:
	movq	%rdi, %rcx
	jmp	.LBB17_3
.LBB17_16:
	cmpq	%rcx, %r14
	cmovaq	%r14, %rcx
	subq	%rdx, %rcx
	leaq	3(%rcx), %rsi
	andq	$-4, %rsi
	addq	%rdx, %rsi
	cmpq	%rdi, %rsi
	jbe	.LBB17_18
# %bb.17:
	leaq	24(%rdx), %rsi
	addq	$-25, %rcx
	andq	$-4, %rcx
	leaq	(%rcx,%rdi), %rbp
	addq	$4, %rbp
	movq	%rdi, %rcx
	cmpq	%rbp, %rsi
	jb	.LBB17_3
.LBB17_18:
	movq	%r10, %r11
	andq	$-8, %r11
	leaq	-8(%r11), %rsi
	movq	%rsi, %rax
	shrq	$3, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpq	$24, %rsi
	jae	.LBB17_20
# %bb.19:
	xorl	%eax, %eax
	jmp	.LBB17_22
.LBB17_20:
	movq	%rcx, %rbx
	subq	%rax, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB17_21:                              # =>This Inner Loop Header: Depth=1
	movups	24(%rdx,%rax,4), %xmm0
	movups	40(%rdx,%rax,4), %xmm1
	movups	%xmm0, (%rdi,%rax,4)
	movups	%xmm1, 16(%rdi,%rax,4)
	movups	56(%rdx,%rax,4), %xmm0
	movups	72(%rdx,%rax,4), %xmm1
	movups	%xmm0, 32(%rdi,%rax,4)
	movups	%xmm1, 48(%rdi,%rax,4)
	movups	88(%rdx,%rax,4), %xmm0
	movups	104(%rdx,%rax,4), %xmm1
	movups	%xmm0, 64(%rdi,%rax,4)
	movups	%xmm1, 80(%rdi,%rax,4)
	movups	120(%rdx,%rax,4), %xmm0
	movups	136(%rdx,%rax,4), %xmm1
	movups	%xmm0, 96(%rdi,%rax,4)
	movups	%xmm1, 112(%rdi,%rax,4)
	addq	$32, %rax
	addq	$4, %rbx
	jne	.LBB17_21
.LBB17_22:
	testq	%rcx, %rcx
	je	.LBB17_25
# %bb.23:                               # %.preheader7
	shlq	$2, %rax
	negq	%rcx
	.p2align	4, 0x90
.LBB17_24:                              # =>This Inner Loop Header: Depth=1
	movups	24(%rdx,%rax), %xmm0
	movups	40(%rdx,%rax), %xmm1
	movups	%xmm0, (%rdi,%rax)
	movups	%xmm1, 16(%rdi,%rax)
	addq	$32, %rax
	incq	%rcx
	jne	.LBB17_24
.LBB17_25:
	cmpq	%r11, %r10
	je	.LBB17_10
# %bb.26:
	leaq	(%rdi,%r11,4), %rcx
	leaq	(%rdx,%r11,4), %rax
	addq	$24, %rax
.LBB17_3:
	leaq	4(%rax), %rdx
	cmpq	%rdx, %r14
	cmovaq	%r14, %rdx
	movq	%rax, %r11
	notq	%r11
	addq	%rdx, %r11
	movl	%r11d, %edx
	shrl	$2, %edx
	addl	$1, %edx
	andq	$7, %rdx
	je	.LBB17_7
# %bb.4:                                # %.preheader5
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB17_5:                               # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rbx,4), %ebp
	movl	%ebp, (%rcx,%rbx,4)
	addq	$1, %rbx
	addq	$-4, %rsi
	cmpq	%rbx, %rdx
	jne	.LBB17_5
# %bb.6:                                # %.loopexit6
	subq	%rsi, %rcx
	subq	%rsi, %rax
.LBB17_7:
	cmpq	$28, %r11
	jb	.LBB17_10
# %bb.8:                                # %.preheader3
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB17_9:                               # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rdx), %esi
	movl	%esi, (%rcx,%rdx)
	movl	4(%rax,%rdx), %esi
	movl	%esi, 4(%rcx,%rdx)
	movl	8(%rax,%rdx), %esi
	movl	%esi, 8(%rcx,%rdx)
	movl	12(%rax,%rdx), %esi
	movl	%esi, 12(%rcx,%rdx)
	movl	16(%rax,%rdx), %esi
	movl	%esi, 16(%rcx,%rdx)
	movl	20(%rax,%rdx), %esi
	movl	%esi, 20(%rcx,%rdx)
	movl	24(%rax,%rdx), %esi
	movl	%esi, 24(%rcx,%rdx)
	movl	28(%rax,%rdx), %esi
	movl	%esi, 28(%rcx,%rdx)
	leaq	(%rax,%rdx), %rsi
	addq	$32, %rsi
	addq	$32, %rdx
	cmpq	%r14, %rsi
	jb	.LBB17_9
.LBB17_10:
	leaq	(%rdi,%r10,4), %rax
.LBB17_11:
	cmpq	%r8, %rax
	jae	.LBB17_15
# %bb.12:
	leaq	(%rdi,%r9,4), %rcx
	cmpq	%rcx, %rax
	movq	%rcx, %r9
	cmovaq	%rax, %r9
	subq	%rax, %r9
	addq	$3, %r9
	shrq	$2, %r9
	addq	$1, %r9
	cmpq	$7, %r9
	jbe	.LBB17_13
# %bb.27:
	movq	%r9, %r8
	andq	$-8, %r8
	leaq	-8(%r8), %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	addq	$1, %rsi
	movl	%esi, %edx
	andl	$7, %edx
	cmpq	$56, %rdi
	jae	.LBB17_29
# %bb.28:
	xorl	%esi, %esi
	jmp	.LBB17_31
.LBB17_29:
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB17_30:                              # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax,%rsi,4)
	movups	%xmm0, 16(%rax,%rsi,4)
	movups	%xmm0, 32(%rax,%rsi,4)
	movups	%xmm0, 48(%rax,%rsi,4)
	movups	%xmm0, 64(%rax,%rsi,4)
	movups	%xmm0, 80(%rax,%rsi,4)
	movups	%xmm0, 96(%rax,%rsi,4)
	movups	%xmm0, 112(%rax,%rsi,4)
	movups	%xmm0, 128(%rax,%rsi,4)
	movups	%xmm0, 144(%rax,%rsi,4)
	movups	%xmm0, 160(%rax,%rsi,4)
	movups	%xmm0, 176(%rax,%rsi,4)
	movups	%xmm0, 192(%rax,%rsi,4)
	movups	%xmm0, 208(%rax,%rsi,4)
	movups	%xmm0, 224(%rax,%rsi,4)
	movups	%xmm0, 240(%rax,%rsi,4)
	addq	$64, %rsi
	addq	$8, %rdi
	jne	.LBB17_30
.LBB17_31:
	testq	%rdx, %rdx
	je	.LBB17_34
# %bb.32:                               # %.preheader
	leaq	(%rax,%rsi,4), %rsi
	addq	$16, %rsi
	negq	%rdx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB17_33:                              # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	addq	$32, %rsi
	incq	%rdx
	jne	.LBB17_33
.LBB17_34:
	cmpq	%r8, %r9
	je	.LBB17_15
# %bb.35:
	leaq	(%rax,%r8,4), %rax
.LBB17_13:
	addq	$-4, %rax
	.p2align	4, 0x90
.LBB17_14:                              # =>This Inner Loop Header: Depth=1
	movl	$0, 4(%rax)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB17_14
.LBB17_15:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	__copybits, .Lfunc_end17-__copybits
                                        # -- End function
	.globl	__any_on                # -- Begin function __any_on
	.p2align	4, 0x90
	.type	__any_on,@function
__any_on:                               # @__any_on
# %bb.0:
	movl	20(%rdi), %ecx
	movl	%esi, %edx
	sarl	$5, %edx
	cmpl	%ecx, %edx
	jg	.LBB18_7
# %bb.1:
	jge	.LBB18_6
# %bb.2:
	andl	$31, %esi
	je	.LBB18_6
# %bb.3:
	movslq	%edx, %rax
	movl	24(%rdi,%rax,4), %r8d
	movl	%r8d, %r9d
	movl	%esi, %ecx
	shrl	%cl, %r9d
	shll	%cl, %r9d
	movl	$1, %eax
	movl	%edx, %ecx
	cmpl	%r8d, %r9d
	je	.LBB18_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB18_6:
	movl	%edx, %ecx
.LBB18_7:
	movslq	%ecx, %rax
	leaq	(%rdi,%rax,4), %rax
	addq	$24, %rax
	addq	$24, %rdi
	.p2align	4, 0x90
.LBB18_8:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rax
	jbe	.LBB18_11
# %bb.9:                                #   in Loop: Header=BB18_8 Depth=1
	cmpl	$0, -4(%rax)
	leaq	-4(%rax), %rax
	je	.LBB18_8
# %bb.10:
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB18_11:
	xorl	%eax, %eax
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
