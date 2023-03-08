	.text
	.file	"lcltime_r.c"
	.globl	localtime_r             # -- Begin function localtime_r
	.p2align	4, 0x90
	.type	localtime_r,@function
localtime_r:                            # @localtime_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	__gettzinfo
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gmtime_r
	movq	%rax, %r12
	movl	$1900, %ebx             # imm = 0x76C
	addl	20(%rax), %ebx
	testb	$3, %bl
	jne	.LBB0_2
# %bb.1:
	movslq	%ebx, %rax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %eax
	movl	%ebx, %ecx
	movb	$1, %r13b
	subl	%eax, %ecx
	jne	.LBB0_3
.LBB0_2:
	imull	$-1030792151, %ebx, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%r13b
.LBB0_3:
	callq	__tz_lock
	callq	_tzset_unlocked
	cmpl	$0, _daylight(%rip)
	je	.LBB0_9
# %bb.4:
	cmpl	4(%r14), %ebx
	je	.LBB0_6
# %bb.5:
	movl	%ebx, %edi
	callq	__tzcalc_limits
	testl	%eax, %eax
	je	.LBB0_14
.LBB0_6:
	cmpl	$0, (%r14)
	movq	(%r15), %rax
	movq	32(%r14), %rcx
	je	.LBB0_10
# %bb.7:
	cmpq	%rcx, %rax
	jge	.LBB0_12
# %bb.8:
	movl	$0, 32(%r12)
	jmp	.LBB0_16
.LBB0_9:
	xorl	%eax, %eax
	jmp	.LBB0_15
.LBB0_10:
	cmpq	%rcx, %rax
	jl	.LBB0_12
# %bb.11:
	movl	$1, 32(%r12)
	jmp	.LBB0_13
.LBB0_12:
	xorl	%ecx, %ecx
	cmpq	72(%r14), %rax
	setl	%cl
	movl	%ecx, 32(%r12)
	jge	.LBB0_16
.LBB0_13:
	addq	$80, %r14
	jmp	.LBB0_17
.LBB0_14:
	movl	$-1, %eax
.LBB0_15:
	movl	%eax, 32(%r12)
.LBB0_16:
	addq	$40, %r14
.LBB0_17:
	movq	(%r14), %rsi
	movabsq	$5247073869855161349, %rcx # imm = 0x48D159E26AF37C05
	movq	%rsi, %rax
	imulq	%rcx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$10, %rcx
	addq	%rax, %rcx
	imulq	$3600, %rcx, %rax       # imm = 0xE10
	subq	%rax, %rsi
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rsi, %rax
	imulq	%rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$5, %rdx
	addl	%eax, %edx
	imull	$60, %edx, %eax
	subl	%esi, %eax
	addl	(%r12), %eax
	movl	%eax, (%r12)
	movl	4(%r12), %edi
	movl	8(%r12), %esi
	subl	%edx, %edi
	movl	%edi, 4(%r12)
	subl	%ecx, %esi
	movl	%esi, 8(%r12)
	cmpl	$60, %eax
	jl	.LBB0_19
# %bb.18:
	addl	$1, %edi
	movl	$-60, %ecx
	jmp	.LBB0_21
.LBB0_19:
	testl	%eax, %eax
	jns	.LBB0_22
# %bb.20:
	addl	$-1, %edi
	movl	$60, %ecx
.LBB0_21:
	movl	%edi, 4(%r12)
	addl	%ecx, %eax
	movl	%eax, (%r12)
.LBB0_22:
	movzbl	%r13b, %eax
	cmpl	$60, %edi
	jl	.LBB0_24
# %bb.23:
	addl	$1, %esi
	movl	$-60, %ecx
	jmp	.LBB0_30
.LBB0_24:
	testl	%edi, %edi
	js	.LBB0_29
# %bb.25:
	cmpl	$24, %esi
	jl	.LBB0_31
.LBB0_26:
	addl	$1, 28(%r12)
	movl	12(%r12), %edi
	movl	24(%r12), %ecx
	leal	1(%rcx), %edx
	xorl	%ebx, %ebx
	cmpl	$5, %ecx
	cmovlel	%edx, %ebx
	movl	%ebx, 24(%r12)
	leal	1(%rdi), %ecx
	movl	%ecx, 12(%r12)
	addl	$-24, %esi
	movl	%esi, 8(%r12)
	movslq	16(%r12), %rdx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	__month_lengths(%rax,%rdx,4), %eax
	cmpl	%eax, %edi
	jl	.LBB0_39
# %bb.27:
	subl	%eax, %ecx
	movl	%ecx, 12(%r12)
	addl	$1, %edx
	movl	%edx, 16(%r12)
	cmpl	$12, %edx
	jne	.LBB0_39
# %bb.28:
	movl	$0, 16(%r12)
	addl	$1, 20(%r12)
	movl	$0, 28(%r12)
	jmp	.LBB0_39
.LBB0_29:
	addl	$-1, %esi
	movl	$60, %ecx
.LBB0_30:
	movl	%esi, 8(%r12)
	addl	%ecx, %edi
	movl	%edi, 4(%r12)
	cmpl	$24, %esi
	jge	.LBB0_26
.LBB0_31:
	testl	%esi, %esi
	jns	.LBB0_39
# %bb.32:
	addl	$-1, 28(%r12)
	movl	24(%r12), %ecx
	leal	-1(%rcx), %edx
	testl	%ecx, %ecx
	movl	$6, %ecx
	cmovgl	%edx, %ecx
	movl	%ecx, 24(%r12)
	addl	$24, %esi
	addl	$-1, 12(%r12)
	movl	%esi, 8(%r12)
	jne	.LBB0_39
# %bb.33:
	movl	16(%r12), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, 16(%r12)
	testl	%edx, %edx
	jg	.LBB0_38
# %bb.34:
	movl	$11, 16(%r12)
	movl	20(%r12), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, 20(%r12)
	leal	1899(%rdx), %ecx
	testb	$3, %cl
	jne	.LBB0_36
# %bb.35:
	movslq	%ecx, %rsi
	imulq	$1374389535, %rsi, %rsi # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	sarq	$37, %rsi
	addl	%edi, %esi
	imull	$100, %esi, %esi
	negl	%esi
	addl	%edx, %esi
	addl	$1899, %esi             # imm = 0x76B
	movl	$365, %edx              # imm = 0x16D
	testl	%esi, %esi
	jne	.LBB0_37
.LBB0_36:
	imull	$-1030792151, %ecx, %ecx # imm = 0xC28F5C29
	addl	$85899344, %ecx         # imm = 0x51EB850
	rorl	$4, %ecx
	xorl	%edx, %edx
	cmpl	$10737419, %ecx         # imm = 0xA3D70B
	setb	%dl
	orl	$364, %edx              # imm = 0x16C
.LBB0_37:
	movl	%edx, 28(%r12)
	movl	$11, %ecx
.LBB0_38:
	movslq	%ecx, %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	__month_lengths(%rax,%rcx,4), %eax
	movl	%eax, 12(%r12)
.LBB0_39:
	callq	__tz_unlock
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	localtime_r, .Lfunc_end0-localtime_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
