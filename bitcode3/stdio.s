	.text
	.file	"stdio.c"
	.globl	__sread                 # -- Begin function __sread
	.p2align	4, 0x90
	.type	__sread,@function
__sread:                                # @__sread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movswl	18(%rsi), %esi
	movslq	%ecx, %rcx
	callq	_read_r
	testq	%rax, %rax
	js	.LBB0_2
# %bb.1:
	addq	%rax, 144(%rbx)
	jmp	.LBB0_3
.LBB0_2:
	andb	$-17, 17(%rbx)
.LBB0_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__sread, .Lfunc_end0-__sread
                                        # -- End function
	.globl	__seofread              # -- Begin function __seofread
	.p2align	4, 0x90
	.type	__seofread,@function
__seofread:                             # @__seofread
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	__seofread, .Lfunc_end1-__seofread
                                        # -- End function
	.globl	__swrite                # -- Begin function __swrite
	.p2align	4, 0x90
	.type	__swrite,@function
__swrite:                               # @__swrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movzwl	16(%rsi), %eax
	testl	$256, %eax              # imm = 0x100
	je	.LBB2_2
# %bb.1:
	movswl	18(%rbx), %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	_lseek_r
	movzwl	16(%rbx), %eax
.LBB2_2:
	andl	$61439, %eax            # imm = 0xEFFF
	movw	%ax, 16(%rbx)
	movswl	18(%rbx), %esi
	movslq	%r15d, %rcx
	movq	%r12, %rdi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_write_r                # TAILCALL
.Lfunc_end2:
	.size	__swrite, .Lfunc_end2-__swrite
                                        # -- End function
	.globl	__sseek                 # -- Begin function __sseek
	.p2align	4, 0x90
	.type	__sseek,@function
__sseek:                                # @__sseek
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movswl	18(%rsi), %esi
	callq	_lseek_r
	movzwl	16(%rbx), %ecx
	cmpq	$-1, %rax
	je	.LBB3_1
# %bb.2:
	orl	$4096, %ecx             # imm = 0x1000
	movw	%cx, 16(%rbx)
	movq	%rax, 144(%rbx)
	jmp	.LBB3_3
.LBB3_1:
	andl	$61439, %ecx            # imm = 0xEFFF
	movw	%cx, 16(%rbx)
.LBB3_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	__sseek, .Lfunc_end3-__sseek
                                        # -- End function
	.globl	__sclose                # -- Begin function __sclose
	.p2align	4, 0x90
	.type	__sclose,@function
__sclose:                               # @__sclose
# %bb.0:
	movswl	18(%rsi), %esi
	jmp	_close_r                # TAILCALL
.Lfunc_end4:
	.size	__sclose, .Lfunc_end4-__sclose
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
