	.text
	.file	"syncio.c"
	.globl	syncWrite               # -- Begin function syncWrite
	.p2align	4, 0x90
	.type	syncWrite,@function
syncWrite:                              # @syncWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movl	%edi, %r12d
	callq	mstime
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	%r15, %r13
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$9, %r15
	movl	$10, %eax
	cmovleq	%rax, %r15
	movl	%r12d, %edi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	write
	cmpq	$-1, %rax
	je	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addq	%rax, %rbx
	subq	%rax, %r14
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB0_8
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	testq	%r14, %r14
	je	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%r12d, %edi
	movl	$2, %esi
	movq	%r15, %rdx
	callq	aeWait
	callq	mstime
	subq	-56(%rbp), %rax         # 8-byte Folded Reload
	movq	%r13, %r15
	subq	%rax, %r15
	jg	.LBB0_1
# %bb.7:
	callq	__errno
	movl	$116, (%rax)
.LBB0_8:
	movq	$-1, %rax
	jmp	.LBB0_9
.LBB0_5:
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB0_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	syncWrite, .Lfunc_end0-syncWrite
                                        # -- End function
	.globl	syncRead                # -- Begin function syncRead
	.p2align	4, 0x90
	.type	syncRead,@function
syncRead:                               # @syncRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movl	%edi, %r12d
	callq	mstime
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB1_1
# %bb.2:                                # %.preheader
	xorl	%r13d, %r13d
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB1_11
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	movl	%r12d, %edi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	aeWait
	callq	mstime
	subq	-56(%rbp), %rax         # 8-byte Folded Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	subq	%rax, %r14
	jle	.LBB1_10
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	cmpq	$9, %r14
	movl	$10, %eax
	cmovleq	%rax, %r14
	movl	%r12d, %edi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	read
	movq	$-1, %rcx
	cmpq	$-1, %rax
	je	.LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	testq	%rax, %rax
	je	.LBB1_12
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	addq	%rax, %r13
	subq	%rax, %rbx
	je	.LBB1_6
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	addq	%rax, %r15
	jmp	.LBB1_9
.LBB1_1:
	xorl	%ecx, %ecx
	jmp	.LBB1_12
.LBB1_10:
	callq	__errno
	movl	$116, (%rax)
.LBB1_11:
	movq	$-1, %rcx
	jmp	.LBB1_12
.LBB1_6:
	movq	%r13, %rcx
.LBB1_12:
	movq	%rcx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	syncRead, .Lfunc_end1-syncRead
                                        # -- End function
	.globl	syncReadLine            # -- Begin function syncReadLine
	.p2align	4, 0x90
	.type	syncReadLine,@function
syncReadLine:                           # @syncReadLine
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	cmpq	$1, %rdx
	je	.LBB2_10
# %bb.1:                                # %.preheader
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movl	%edi, %r13d
	addq	$-1, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movl	%r13d, %edi
	leaq	-41(%rbp), %rsi
	movq	%r15, %rcx
	callq	syncRead
	cmpq	$-1, %rax
	je	.LBB2_6
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movzbl	-41(%rbp), %eax
	cmpb	$10, %al
	je	.LBB2_7
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movb	%al, (%r14,%rbx)
	movb	$0, 1(%r14,%rbx)
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jne	.LBB2_2
	jmp	.LBB2_11
.LBB2_6:
	movq	$-1, %rbx
	jmp	.LBB2_11
.LBB2_7:
	movb	$0, (%r14,%rbx)
	testq	%rbx, %rbx
	je	.LBB2_10
# %bb.8:
	cmpb	$13, -1(%r14,%rbx)
	jne	.LBB2_11
# %bb.9:
	movb	$0, -1(%r14,%rbx)
	jmp	.LBB2_11
.LBB2_10:
	xorl	%ebx, %ebx
.LBB2_11:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	syncReadLine, .Lfunc_end2-syncReadLine
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
