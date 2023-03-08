	.text
	.file	"itoa.c"
	.globl	__itoa                  # -- Begin function __itoa
	.p2align	4, 0x90
	.type	__itoa,@function
__itoa:                                 # @__itoa
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %rbx
	leal	-2(%rdx), %eax
	cmpl	$35, %eax
	jb	.LBB0_2
# %bb.1:
	movb	$0, (%rbx)
	xorl	%ebx, %ebx
	jmp	.LBB0_6
.LBB0_2:
	xorl	%esi, %esi
	testl	%edi, %edi
	jns	.LBB0_5
# %bb.3:
	cmpl	$10, %edx
	jne	.LBB0_5
# %bb.4:
	movb	$45, (%rbx)
	negl	%edi
	movl	$1, %esi
.LBB0_5:
	addq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	__utoa
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__itoa, .Lfunc_end0-__itoa
                                        # -- End function
	.globl	itoa                    # -- Begin function itoa
	.p2align	4, 0x90
	.type	itoa,@function
itoa:                                   # @itoa
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %rbx
	leal	-2(%rdx), %eax
	cmpl	$35, %eax
	jb	.LBB1_2
# %bb.1:
	movb	$0, (%rbx)
	xorl	%ebx, %ebx
	jmp	.LBB1_6
.LBB1_2:
	xorl	%esi, %esi
	testl	%edi, %edi
	jns	.LBB1_5
# %bb.3:
	cmpl	$10, %edx
	jne	.LBB1_5
# %bb.4:
	movb	$45, (%rbx)
	negl	%edi
	movl	$1, %esi
.LBB1_5:
	addq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	__utoa
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	itoa, .Lfunc_end1-itoa
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
