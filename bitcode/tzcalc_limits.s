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
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__gettzinfo
	xorl	%ecx, %ecx
	cmpl	$1970, %ebx             # imm = 0x7B2
	jl	.LBB0_41
# %bb.1:
	movl	%ebx, 4(%rax)
	imull	$365, %ebx, %ecx        # imm = 0x16D
	leal	-1969(%rbx), %edx
	leal	-1966(%rbx), %esi
	testl	%edx, %edx
	cmovnsl	%edx, %esi
	sarl	$2, %esi
	addl	%ecx, %esi
	leal	-1901(%rbx), %ecx
	movslq	%ecx, %rcx
	imulq	$-1374389535, %rcx, %rcx # imm = 0xAE147AE1
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	addl	%esi, %ecx
	leal	-1601(%rbx), %edx
	movslq	%edx, %rdx
	imulq	$1374389535, %rdx, %rsi # imm = 0x51EB851F
	movq	%rsi, %rdx
	shrq	$63, %rdx
	sarq	$39, %rsi
	addl	%edx, %esi
	leal	(%rcx,%rsi), %edx
	addl	$-719050, %edx          # imm = 0xFFF50736
	testb	$3, %bl
	sete	%r8b
	imull	$-1030792151, %ebx, %edi # imm = 0xC28F5C29
	movl	%edi, %ebx
	rorl	$2, %ebx
	cmpl	$42949672, %ebx         # imm = 0x28F5C28
	seta	%bl
	andb	%r8b, %bl
	rorl	$4, %edi
	cmpl	$10737419, %edi         # imm = 0xA3D70B
	setb	%r15b
	orb	%bl, %r15b
	leal	(%rcx,%rsi), %r8d
	addl	$-719051, %r8d          # imm = 0xFFF50735
	movb	8(%rax), %cl
	cmpb	$68, %cl
	je	.LBB0_4
# %bb.2:
	cmpb	$74, %cl
	jne	.LBB0_5
# %bb.3:
	movl	20(%rax), %ecx
	cmpl	$59, %ecx
	setg	%bl
	andb	%r15b, %bl
	movzbl	%bl, %esi
	addl	%r8d, %ecx
	addl	%esi, %ecx
	jmp	.LBB0_21
.LBB0_4:
	movl	20(%rax), %ecx
	addl	%edx, %ecx
	jmp	.LBB0_21
.LBB0_5:
	movzbl	%r15b, %r11d
	movslq	12(%rax), %rdi
	cmpq	$2, %rdi
	jl	.LBB0_6
# %bb.7:
	leaq	-1(%rdi), %r9
	movl	$1, %esi
	movl	%edx, %ecx
	cmpq	$8, %r9
	jb	.LBB0_15
# %bb.8:
	movq	%r9, %r10
	andq	$-8, %r10
	movd	%edx, %xmm0
	leaq	-8(%r10), %rsi
	movq	%rsi, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r14d
	andl	$1, %r14d
	testq	%rsi, %rsi
	je	.LBB0_9
# %bb.10:
	leaq	(%r11,%r11,2), %rsi
	shlq	$4, %rsi
	leaq	__month_lengths+48(%rsi), %rsi
	movq	%r14, %rbx
	subq	%rcx, %rbx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	paddd	-48(%rsi,%rcx,4), %xmm0
	paddd	-32(%rsi,%rcx,4), %xmm1
	paddd	-16(%rsi,%rcx,4), %xmm0
	paddd	(%rsi,%rcx,4), %xmm1
	addq	$16, %rcx
	addq	$2, %rbx
	jne	.LBB0_11
	jmp	.LBB0_12
.LBB0_6:
	xorl	%r9d, %r9d
	movl	%edx, %ecx
	jmp	.LBB0_18
.LBB0_9:
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
.LBB0_12:
	testq	%r14, %r14
	je	.LBB0_14
# %bb.13:
	shlq	$2, %rcx
	orq	$4, %rcx
	leaq	(%r11,%r11,2), %rsi
	shlq	$4, %rsi
	paddd	__month_lengths+12(%rsi,%rcx), %xmm1
	paddd	__month_lengths-4(%rsi,%rcx), %xmm0
.LBB0_14:
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	leaq	1(%r10), %rsi
	cmpq	%r10, %r9
	je	.LBB0_17
.LBB0_15:
	movq	%r11, %rbx
	shlq	$4, %rbx
	leaq	(%rbx,%rbx,2), %rbx
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	addl	__month_lengths-4(%rbx,%rsi,4), %ecx
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	jl	.LBB0_16
.LBB0_17:
	addl	$-1, %esi
	movslq	%esi, %r9
.LBB0_18:
	leal	4(%rcx), %edi
	movslq	%edi, %r10
	imulq	$-1840700269, %r10, %rbx # imm = 0x92492493
	shrq	$32, %rbx
	addl	%ecx, %ebx
	addl	$4, %ebx
	movl	%ebx, %esi
	shrl	$31, %esi
	sarl	$2, %ebx
	addl	%esi, %ebx
	leal	(,%rbx,8), %esi
	subl	%ebx, %esi
	movl	16(%rax), %r14d
	movl	20(%rax), %edi
	subl	%r10d, %esi
	leal	(%rdi,%rsi), %ebx
	addl	$7, %ebx
                                        # kill: def $edi killed $edi killed $rdi
	addl	%esi, %edi
	cmovnsl	%edi, %ebx
	leal	(,%r14,8), %edi
	subl	%r14d, %edi
	addl	%ebx, %edi
	leaq	(%r11,%r11,2), %rsi
	shlq	$4, %rsi
	movl	__month_lengths(%rsi,%r9,4), %esi
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	addl	$-7, %edi
	cmpl	%esi, %edi
	jge	.LBB0_19
# %bb.20:
	addl	%edi, %ecx
.LBB0_21:
	movslq	%ecx, %rcx
	imulq	$86400, %rcx, %rcx      # imm = 0x15180
	movslq	24(%rax), %r14
	addq	%rcx, %r14
	addq	40(%rax), %r14
	movq	%r14, 32(%rax)
	movb	48(%rax), %cl
	cmpb	$68, %cl
	je	.LBB0_42
# %bb.22:
	cmpb	$74, %cl
	jne	.LBB0_24
# %bb.23:
	movl	60(%rax), %ecx
	cmpl	$59, %ecx
	setg	%dl
	andb	%dl, %r15b
	movzbl	%r15b, %edx
	addl	%ecx, %r8d
	addl	%edx, %r8d
	movl	%r8d, %edx
	jmp	.LBB0_40
.LBB0_42:
	addl	60(%rax), %edx
	jmp	.LBB0_40
.LBB0_24:
	movzbl	%r15b, %r9d
	movslq	52(%rax), %rdi
	cmpq	$2, %rdi
	jl	.LBB0_25
# %bb.26:
	leaq	-1(%rdi), %r8
	movl	$1, %ecx
	cmpq	$8, %r8
	jb	.LBB0_34
# %bb.27:
	movq	%r8, %r10
	andq	$-8, %r10
	movd	%edx, %xmm0
	leaq	-8(%r10), %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$1, %rcx
	movl	%ecx, %r11d
	andl	$1, %r11d
	testq	%rdx, %rdx
	je	.LBB0_28
# %bb.29:
	leaq	(%r9,%r9,2), %rdx
	shlq	$4, %rdx
	leaq	__month_lengths+48(%rdx), %rbx
	movq	%r11, %rdx
	subq	%rcx, %rdx
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	paddd	-48(%rbx,%rcx,4), %xmm0
	paddd	-32(%rbx,%rcx,4), %xmm1
	paddd	-16(%rbx,%rcx,4), %xmm0
	paddd	(%rbx,%rcx,4), %xmm1
	addq	$16, %rcx
	addq	$2, %rdx
	jne	.LBB0_30
	jmp	.LBB0_31
.LBB0_25:
	xorl	%r8d, %r8d
	jmp	.LBB0_37
.LBB0_28:
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
.LBB0_31:
	testq	%r11, %r11
	je	.LBB0_33
# %bb.32:
	leaq	(%r9,%r9,2), %rdx
	shlq	$4, %rdx
	paddd	__month_lengths+16(%rdx,%rcx,4), %xmm1
	paddd	__month_lengths(%rdx,%rcx,4), %xmm0
.LBB0_33:
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %edx
	leaq	1(%r10), %rcx
	cmpq	%r10, %r8
	je	.LBB0_36
.LBB0_34:
	movq	%r9, %rbx
	shlq	$4, %rbx
	leaq	(%rbx,%rbx,2), %rbx
	.p2align	4, 0x90
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	addl	__month_lengths-4(%rbx,%rcx,4), %edx
	addq	$1, %rcx
	cmpq	%rdi, %rcx
	jl	.LBB0_35
.LBB0_36:
	addl	$-1, %ecx
	movslq	%ecx, %r8
.LBB0_37:
	leal	4(%rdx), %edi
	movslq	%edi, %r10
	imulq	$-1840700269, %r10, %rbx # imm = 0x92492493
	shrq	$32, %rbx
	addl	%edx, %ebx
	addl	$4, %ebx
	movl	%ebx, %ecx
	shrl	$31, %ecx
	sarl	$2, %ebx
	addl	%ecx, %ebx
	leal	(,%rbx,8), %ecx
	subl	%ebx, %ecx
	movl	56(%rax), %ebx
	movl	60(%rax), %edi
	subl	%r10d, %ecx
	leal	(%rdi,%rcx), %esi
	addl	$7, %esi
                                        # kill: def $edi killed $edi killed $rdi
	addl	%ecx, %edi
	cmovnsl	%edi, %esi
	leal	(,%rbx,8), %edi
	subl	%ebx, %edi
	addl	%esi, %edi
	leaq	(%r9,%r9,2), %rcx
	shlq	$4, %rcx
	movl	__month_lengths(%rcx,%r8,4), %ecx
	.p2align	4, 0x90
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	addl	$-7, %edi
	cmpl	%ecx, %edi
	jge	.LBB0_38
# %bb.39:
	addl	%edi, %edx
.LBB0_40:
	movslq	%edx, %rcx
	imulq	$86400, %rcx, %rcx      # imm = 0x15180
	movslq	64(%rax), %rdx
	addq	%rcx, %rdx
	addq	80(%rax), %rdx
	movq	%rdx, 72(%rax)
	xorl	%ecx, %ecx
	cmpq	%rdx, %r14
	setl	%cl
	movl	%ecx, (%rax)
	movl	$1, %ecx
.LBB0_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
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
