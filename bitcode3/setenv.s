	.text
	.file	"setenv.c"
	.globl	setenv                  # -- Begin function setenv
	.p2align	4, 0x90
	.type	setenv,@function
setenv:                                 # @setenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_setenv_r               # TAILCALL
.Lfunc_end0:
	.size	setenv, .Lfunc_end0-setenv
                                        # -- End function
	.globl	unsetenv                # -- Begin function unsetenv
	.p2align	4, 0x90
	.type	unsetenv,@function
unsetenv:                               # @unsetenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_unsetenv_r             # TAILCALL
.Lfunc_end1:
	.size	unsetenv, .Lfunc_end1-unsetenv
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
