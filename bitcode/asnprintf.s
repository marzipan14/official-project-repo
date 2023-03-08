	.text
	.file	"asnprintf.c"
	.globl	_asnprintf_r            # -- Begin function _asnprintf_r
	.p2align	4, 0x90
	.type	_asnprintf_r,@function
_asnprintf_r:                           # @_asnprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
	movq	%rdx, %r14
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB0_2:
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movq	(%r14), %rdx
	testq	%rsi, %rsi
	setne	%r8b
	testq	%rdx, %rdx
	setne	%bl
	xorl	%eax, %eax
	testb	%bl, %r8b
	movl	$1544, %r8d             # imm = 0x608
	movl	$648, %ebx              # imm = 0x288
	cmovnel	%r8d, %ebx
	cmoveq	%rax, %rsi
	cmovneq	%rdx, %rax
	movw	%bx, -384(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%rsi, -376(%rbp)
	testq	$-2147483648, %rax      # imm = 0x80000000
	je	.LBB0_4
# %bb.3:
	movl	$139, (%rdi)
	jmp	.LBB0_6
.LBB0_4:
	movl	%eax, -388(%rbp)
	movl	%eax, -368(%rbp)
	movw	$-1, -382(%rbp)
	movabsq	$206158430240, %rax     # imm = 0x3000000020
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-400(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	_svfprintf_r
	testl	%eax, %eax
	js	.LBB0_6
# %bb.5:
	cltq
	movq	%rax, (%r14)
	movq	-400(%rbp), %rax
	movb	$0, (%rax)
	movq	-376(%rbp), %rax
	jmp	.LBB0_7
.LBB0_6:
	xorl	%eax, %eax
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_asnprintf_r, .Lfunc_end0-_asnprintf_r
                                        # -- End function
	.globl	asnprintf               # -- Begin function asnprintf
	.p2align	4, 0x90
	.type	asnprintf,@function
asnprintf:                              # @asnprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB1_2:
	movq	%rcx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	movq	(%r15), %r12
	callq	__getreent
	testq	%rbx, %rbx
	setne	%sil
	testq	%r12, %r12
	setne	%dl
	xorl	%ecx, %ecx
	testb	%dl, %sil
	movl	$1544, %edx             # imm = 0x608
	movl	$648, %esi              # imm = 0x288
	cmovnel	%edx, %esi
	cmoveq	%rcx, %rbx
	cmovneq	%r12, %rcx
	movw	%si, -400(%rbp)
	movq	%rbx, -416(%rbp)
	movq	%rbx, -392(%rbp)
	testq	$-2147483648, %rcx      # imm = 0x80000000
	je	.LBB1_4
# %bb.3:
	movl	$139, (%rax)
	jmp	.LBB1_6
.LBB1_4:
	movl	%ecx, -404(%rbp)
	movl	%ecx, -384(%rbp)
	movw	$-1, -398(%rbp)
	movabsq	$206158430232, %rcx     # imm = 0x3000000018
	movq	%rcx, -64(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	leaq	-240(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	leaq	-416(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	_svfprintf_r
	testl	%eax, %eax
	js	.LBB1_6
# %bb.5:
	cltq
	movq	%rax, (%r15)
	movq	-416(%rbp), %rax
	movb	$0, (%rax)
	movq	-392(%rbp), %rax
	jmp	.LBB1_7
.LBB1_6:
	xorl	%eax, %eax
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	asnprintf, .Lfunc_end1-asnprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
