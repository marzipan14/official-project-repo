	.text
	.file	"tzcalc_limits.c"
	.globl	__tzcalc_limits         # -- Begin function __tzcalc_limits
	.p2align	4, 0x90
	.type	__tzcalc_limits,@function
__tzcalc_limits:                        # @__tzcalc_limits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edi, %r12d
	callq	__gettzinfo
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1970, %r12d            # imm = 0x7B2
	jl	.LBB0_28
# %bb.1:
	movl	%r12d, 4(%rax)
	imull	$365, %r12d, %ecx       # imm = 0x16D
	leal	-1969(%r12), %edx
	leal	-1966(%r12), %esi
	testl	%edx, %edx
	cmovnsl	%edx, %esi
	sarl	$2, %esi
	addl	%ecx, %esi
	leal	-1901(%r12), %ecx
	movslq	%ecx, %rcx
	imulq	$-1374389535, %rcx, %rcx # imm = 0xAE147AE1
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	addl	%esi, %ecx
	leal	-1601(%r12), %edx
	movslq	%edx, %rdx
	imulq	$1374389535, %rdx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$39, %rdx
	addl	%esi, %edx
	leal	(%rcx,%rdx), %r15d
	addl	$-719050, %r15d         # imm = 0xFFF50736
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %esi
	imulq	$1374389535, %rsi, %rsi # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$37, %rdi
	imull	$100, %edi, %edi
	movl	%r12d, %r10d
	subl	%edi, %r10d
	shrq	$39, %rsi
	imull	$400, %esi, %esi        # imm = 0x190
	movl	%r12d, %r11d
	subl	%esi, %r11d
	sete	-41(%rbp)               # 1-byte Folded Spill
	leal	(%rcx,%rdx), %r14d
	addl	$-719051, %r14d         # imm = 0xFFF50735
	xorl	%edx, %edx
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_2 Depth=1
	addl	%ecx, %edi
.LBB0_26:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rcx
	imulq	$86400, %rcx, %rcx      # imm = 0x15180
	movslq	24(%rax,%r9,8), %rsi
	addq	%rcx, %rsi
	addq	40(%rax,%r9,8), %rsi
	movq	%rsi, 32(%rax,%r9,8)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rdx
	je	.LBB0_27
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	leaq	(%rdx,%rdx,4), %r9
	movb	8(%rax,%r9,8), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$74, %cl
	jne	.LBB0_9
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	20(%rax,%r9,8), %edi
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r12b
	je	.LBB0_4
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r11d, %r11d
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$68, %cl
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_2 Depth=1
	movl	20(%rax,%r9,8), %edi
	addl	%r15d, %edi
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r12b
	je	.LBB0_12
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	-41(%rbp), %cl          # 1-byte Reload
	jmp	.LBB0_14
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	je	.LBB0_5
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$59, %edi
	setg	%cl
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	%cl, %ecx
	addl	%r14d, %edi
	addl	%ecx, %edi
	jmp	.LBB0_26
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %cl
	testl	%r10d, %r10d
	je	.LBB0_13
.LBB0_14:                               #   in Loop: Header=BB0_2 Depth=1
	movzbl	%cl, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movslq	12(%rax,%r9,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	movl	%r15d, %ecx
	cmpq	$2, %rdi
	jl	.LBB0_20
# %bb.15:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%r10d, %esi
	leal	-1(%rdi), %r10d
	andl	$1, %r10d
	movl	$1, %ebx
	movl	%r15d, %ecx
	cmpl	$2, %edi
	je	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_2 Depth=1
	leaq	(,%r13,2), %rcx
	addq	%r13, %rcx
	shlq	$4, %rcx
	leaq	__month_lengths(%rcx), %r8
	subq	%r10, %rdi
	movl	$1, %ebx
	movl	%r15d, %ecx
	.p2align	4, 0x90
.LBB0_17:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	-4(%r8,%rbx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	(%r8,%rbx,4), %ecx
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdi
	jne	.LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_2 Depth=1
	testq	%r10, %r10
	movl	%esi, %r10d
	je	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_2 Depth=1
	leaq	(,%r13,2), %rdi
	addq	%r13, %rdi
	shlq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	__month_lengths-4(%rdi,%rbx,4), %ecx
	addq	$1, %rbx
.LBB0_20:                               #   in Loop: Header=BB0_2 Depth=1
	leal	4(%rcx), %edi
	movslq	%edi, %r8
	imulq	$-1840700269, %r8, %rdi # imm = 0x92492493
	shrq	$32, %rdi
	leal	(%rdi,%rcx), %esi
	addl	$4, %esi
	movl	%esi, %edi
	shrl	$31, %edi
	sarl	$2, %esi
	addl	%edi, %esi
	leal	(,%rsi,8), %edi
	subl	%esi, %edi
	subl	%r8d, %edi
	addl	20(%rax,%r9,8), %edi
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_2 Depth=1
	addl	$7, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:                               #   in Loop: Header=BB0_2 Depth=1
	movl	16(%rax,%r9,8), %r8d
	leal	(,%r8,8), %esi
	subl	%r8d, %esi
	addl	%esi, %edi
	addl	$-7, %edi
	movl	$42, __A_VARIABLE(%rip)
	shlq	$32, %rbx
	movabsq	$-4294967296, %rsi      # imm = 0xFFFFFFFF00000000
	addq	%rsi, %rbx
	sarq	$30, %rbx
	leaq	(,%r13,2), %rsi
	addq	%r13, %rsi
	shlq	$4, %rsi
	movl	__month_lengths(%rsi,%rbx), %ebx
	.p2align	4, 0x90
.LBB0_24:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %edi
	jl	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_24 Depth=2
	addl	$-7, %edi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_24
.LBB0_27:
	movq	32(%rax), %rcx
	xorl	%edx, %edx
	cmpq	72(%rax), %rcx
	setl	%dl
	movl	%edx, (%rax)
	movl	$1, %ecx
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__tzcalc_limits, .Lfunc_end0-__tzcalc_limits
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
