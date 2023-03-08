	.text
	.file	"wctob.c"
	.globl	wctob                   # -- Begin function wctob
	.p2align	4, 0x90
	.type	wctob,@function
wctob:                                  # @wctob
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	cmpl	$-1, %edi
	je	.LBB0_1
# %bb.2:
	movl	%edi, %r15d
	leaq	-40(%rbp), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	callq	__getreent
	movq	%rax, %r14
	callq	__getreent
	movq	72(%rax), %rbx
	testq	%rbx, %rbx
	jne	.LBB0_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ebx
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-25(%rbp), %rsi
	leaq	-40(%rbp), %rcx
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	*224(%rbx)
	cmpl	$1, %eax
	movzbl	-25(%rbp), %ecx
	movl	$-1, %eax
	cmovel	%ecx, %eax
	jmp	.LBB0_5
.LBB0_1:
	movl	$-1, %eax
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wctob, .Lfunc_end0-wctob
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
