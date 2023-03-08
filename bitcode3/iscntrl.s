	.text
	.file	"iscntrl.c"
	.globl	iscntrl                 # -- Begin function iscntrl
	.p2align	4, 0x90
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movzbl	1(%rcx,%rax), %eax
	andl	$32, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iscntrl, .Lfunc_end0-iscntrl
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
