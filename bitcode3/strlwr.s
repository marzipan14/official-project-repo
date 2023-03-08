	.text
	.file	"strlwr.c"
	.globl	strlwr                  # -- Begin function strlwr
	.p2align	4, 0x90
	.type	strlwr,@function
strlwr:                                 # @strlwr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movb	(%rdi), %r15b
	testb	%r15b, %r15b
	je	.LBB0_3
# %bb.1:                                # %.preheader
	leaq	1(%r14), %rbx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	callq	__locale_ctype_ptr
	movzbl	%r15b, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	leal	32(%rcx), %edx
	cmpb	$1, %al
	movzbl	%dl, %eax
	cmovnel	%ecx, %eax
	movb	%al, -1(%rbx)
	movzbl	(%rbx), %r15d
	addq	$1, %rbx
	testb	%r15b, %r15b
	jne	.LBB0_2
.LBB0_3:
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strlwr, .Lfunc_end0-strlwr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
