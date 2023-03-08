	.text
	.file	"ispunct.c"
	.globl	ispunct                 # -- Begin function ispunct
	.p2align	4, 0x90
	.type	ispunct,@function
ispunct:                                # @ispunct
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movzbl	1(%rcx,%rax), %eax
	andl	$16, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ispunct, .Lfunc_end0-ispunct
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
