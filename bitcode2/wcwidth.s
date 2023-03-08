	.text
	.file	"wcwidth.c"
	.globl	__wcwidth               # -- Begin function __wcwidth
	.p2align	4, 0x90
	.type	__wcwidth,@function
__wcwidth:                              # @__wcwidth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	iswprint
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB0_3
.LBB0_2:
	movl	%ebx, %edi
	callq	iswcntrl
	testl	%eax, %eax
	sete	%al
	testl	%ebx, %ebx
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andb	%al, %cl
	movzbl	%cl, %eax
	negl	%eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__wcwidth, .Lfunc_end0-__wcwidth
                                        # -- End function
	.globl	wcwidth                 # -- Begin function wcwidth
	.p2align	4, 0x90
	.type	wcwidth,@function
wcwidth:                                # @wcwidth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	iswprint
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB1_3
.LBB1_2:
	movl	%ebx, %edi
	callq	iswcntrl
	testl	%eax, %eax
	sete	%al
	testl	%ebx, %ebx
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andb	%al, %cl
	movzbl	%cl, %eax
	negl	%eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	wcwidth, .Lfunc_end1-wcwidth
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
