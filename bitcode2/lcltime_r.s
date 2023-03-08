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
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %bl
	je	.LBB0_1
.LBB0_2:
	imull	$-1030792151, %ebx, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%r13b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_3
.LBB0_1:
	imull	$-1030792151, %ebx, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r13b
	cmpl	$42949672, %eax         # imm = 0x28F5C28
	jbe	.LBB0_2
.LBB0_3:
	callq	__tz_lock
	callq	_tzset_unlocked
	cmpl	$0, _daylight(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_4
# %bb.7:
	cmpl	4(%r14), %ebx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_10
# %bb.8:
	movl	%ebx, %edi
	callq	__tzcalc_limits
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_9
.LBB0_10:
	cmpl	$0, (%r14)
	movq	(%r15), %rcx
	movq	32(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_13
# %bb.11:
	cmpq	%rdx, %rcx
	jge	.LBB0_14
# %bb.12:
	xorl	%eax, %eax
	jmp	.LBB0_15
.LBB0_4:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_13:
	movb	$1, %al
	cmpq	%rdx, %rcx
	jge	.LBB0_15
.LBB0_14:
	cmpq	72(%r14), %rcx
	setl	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movzbl	%al, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 32(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_6
# %bb.16:
	addq	$80, %r14
	jmp	.LBB0_17
.LBB0_9:
	movl	$-1, %eax
.LBB0_5:
	movl	%eax, 32(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	addq	$40, %r14
.LBB0_17:
	movq	(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$60, %eax
	jl	.LBB0_19
# %bb.18:
	addl	$1, %edi
	movl	$-60, %ecx
	jmp	.LBB0_21
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_22
# %bb.20:
	addl	$-1, %edi
	movl	$60, %ecx
.LBB0_21:
	movl	%edi, 4(%r12)
	addl	%ecx, %eax
	movl	%eax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movzbl	%r13b, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$60, %edi
	jl	.LBB0_24
# %bb.23:
	addl	$1, %esi
	movl	$-60, %ecx
	jmp	.LBB0_26
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jns	.LBB0_27
# %bb.25:
	addl	$-1, %esi
	movl	$60, %ecx
.LBB0_26:
	movl	%esi, 8(%r12)
	addl	%ecx, %edi
	movl	%edi, 4(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$24, %esi
	jl	.LBB0_33
# %bb.28:
	addl	$1, 28(%r12)
	movl	24(%r12), %ecx
	leal	1(%rcx), %edx
	movl	%edx, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jl	.LBB0_30
# %bb.29:
	movl	$0, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_30:
	movl	12(%r12), %edi
	leal	1(%rdi), %edx
	movl	%edx, 12(%r12)
	addl	$-24, %esi
	movl	%esi, 8(%r12)
	movslq	16(%r12), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	__month_lengths(%rax,%rcx,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edi
	jl	.LBB0_44
# %bb.31:
	subl	%eax, %edx
	movl	%edx, 12(%r12)
	addl	$1, %ecx
	movl	%ecx, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %ecx
	jne	.LBB0_44
# %bb.32:
	movl	$0, 16(%r12)
	addl	$1, 20(%r12)
	movl	$0, 28(%r12)
	jmp	.LBB0_43
.LBB0_33:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jns	.LBB0_44
# %bb.34:
	addl	$-1, 28(%r12)
	movl	24(%r12), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_36
# %bb.35:
	movl	$6, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_36:
	addl	$24, %esi
	addl	$-1, 12(%r12)
	movl	%esi, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_44
# %bb.37:
	movl	16(%r12), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jg	.LBB0_42
# %bb.38:
	movl	$11, 16(%r12)
	movl	20(%r12), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 20(%r12)
	addl	$1899, %ecx             # imm = 0x76B
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %cl
	jne	.LBB0_40
# %bb.39:
	imull	$-1030792151, %ecx, %esi # imm = 0xC28F5C29
	addl	$85899344, %esi         # imm = 0x51EB850
	rorl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$365, %edx              # imm = 0x16D
	cmpl	$42949672, %esi         # imm = 0x28F5C28
	ja	.LBB0_41
.LBB0_40:
	imull	$-1030792151, %ecx, %ecx # imm = 0xC28F5C29
	addl	$85899344, %ecx         # imm = 0x51EB850
	rorl	$4, %ecx
	xorl	%edx, %edx
	cmpl	$10737419, %ecx         # imm = 0xA3D70B
	setb	%dl
	movl	$42, __A_VARIABLE(%rip)
	orl	$364, %edx              # imm = 0x16C
.LBB0_41:
	movl	%edx, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$11, %ecx
.LBB0_42:
	movslq	%ecx, %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	__month_lengths(%rax,%rcx,4), %eax
	movl	%eax, 12(%r12)
.LBB0_43:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_44:
	callq	__tz_unlock
	movl	$42, __A_VARIABLE(%rip)
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
