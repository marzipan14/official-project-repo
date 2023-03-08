	.text
	.file	"vasniprintf.c"
	.globl	_vasniprintf_r          # -- Begin function _vasniprintf_r
	.p2align	4, 0x90
	.type	_vasniprintf_r,@function
_vasniprintf_r:                         # @_vasniprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
	movq	%rdx, %r14
	movq	(%rdx), %rdx
	testq	%rsi, %rsi
	setne	%r9b
	testq	%rdx, %rdx
	setne	%bl
	xorl	%eax, %eax
	testb	%bl, %r9b
	movl	$1544, %r9d             # imm = 0x608
	movl	$648, %ebx              # imm = 0x288
	cmovnel	%r9d, %ebx
	cmoveq	%rax, %rsi
	cmovneq	%rdx, %rax
	movw	%bx, -176(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rsi, -168(%rbp)
	testq	$-2147483648, %rax      # imm = 0x80000000
	je	.LBB0_2
# %bb.1:
	movl	$139, (%rdi)
	jmp	.LBB0_4
.LBB0_2:
	movl	%eax, -180(%rbp)
	movl	%eax, -160(%rbp)
	movw	$-1, -174(%rbp)
	leaq	-192(%rbp), %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	_svfiprintf_r
	testl	%eax, %eax
	js	.LBB0_4
# %bb.3:
	cltq
	movq	%rax, (%r14)
	movq	-192(%rbp), %rax
	movb	$0, (%rax)
	movq	-168(%rbp), %rax
	jmp	.LBB0_5
.LBB0_4:
	xorl	%eax, %eax
.LBB0_5:
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_vasniprintf_r, .Lfunc_end0-_vasniprintf_r
                                        # -- End function
	.globl	vasniprintf             # -- Begin function vasniprintf
	.p2align	4, 0x90
	.type	vasniprintf,@function
vasniprintf:                            # @vasniprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	(%r12), %rdi
	testq	%rbx, %rbx
	setne	%sil
	testq	%rdi, %rdi
	setne	%dl
	xorl	%ecx, %ecx
	testb	%dl, %sil
	movl	$1544, %edx             # imm = 0x608
	movl	$648, %esi              # imm = 0x288
	cmovnel	%edx, %esi
	cmoveq	%rcx, %rbx
	cmovneq	%rdi, %rcx
	movw	%si, -192(%rbp)
	movq	%rbx, -208(%rbp)
	movq	%rbx, -184(%rbp)
	testq	$-2147483648, %rcx      # imm = 0x80000000
	je	.LBB1_2
# %bb.1:
	movl	$139, (%rax)
	jmp	.LBB1_4
.LBB1_2:
	movl	%ecx, -196(%rbp)
	movl	%ecx, -176(%rbp)
	movw	$-1, -190(%rbp)
	leaq	-208(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_svfiprintf_r
	testl	%eax, %eax
	js	.LBB1_4
# %bb.3:
	cltq
	movq	%rax, (%r12)
	movq	-208(%rbp), %rax
	movb	$0, (%rax)
	movq	-184(%rbp), %rax
	jmp	.LBB1_5
.LBB1_4:
	xorl	%eax, %eax
.LBB1_5:
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	vasniprintf, .Lfunc_end1-vasniprintf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
