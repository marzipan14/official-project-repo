	.text
	.file	"adlist.c"
	.globl	listCreate              # -- Begin function listCreate
	.p2align	4, 0x90
	.type	listCreate,@function
listCreate:                             # @listCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$48, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	popq	%rbp
	retq
.LBB0_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	listCreate, .Lfunc_end0-listCreate
                                        # -- End function
	.globl	listEmpty               # -- Begin function listEmpty
	.p2align	4, 0x90
	.type	listEmpty,@function
listEmpty:                              # @listEmpty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	40(%rdi), %r15
	testq	%r15, %r15
	je	.LBB1_5
# %bb.1:
	movq	(%r14), %rbx
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rdi
	callq	zfree
	movq	%r12, %rbx
	testq	%r15, %r15
	je	.LBB1_5
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	addq	$-1, %r15
	movq	8(%rbx), %r12
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	16(%rbx), %rdi
	callq	*%rax
	jmp	.LBB1_4
.LBB1_5:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r14)
	movq	$0, 40(%r14)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	listEmpty, .Lfunc_end1-listEmpty
                                        # -- End function
	.globl	listRelease             # -- Begin function listRelease
	.p2align	4, 0x90
	.type	listRelease,@function
listRelease:                            # @listRelease
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	40(%rdi), %r15
	testq	%r15, %r15
	je	.LBB2_5
# %bb.1:
	movq	(%r14), %rbx
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rbx, %rdi
	callq	zfree
	movq	%r12, %rbx
	testq	%r15, %r15
	je	.LBB2_5
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	addq	$-1, %r15
	movq	8(%rbx), %r12
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movq	16(%rbx), %rdi
	callq	*%rax
	jmp	.LBB2_4
.LBB2_5:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r14)
	movq	$0, 40(%r14)
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end2:
	.size	listRelease, .Lfunc_end2-listRelease
                                        # -- End function
	.globl	listAddNodeHead         # -- Begin function listAddNodeHead
	.p2align	4, 0x90
	.type	listAddNodeHead,@function
listAddNodeHead:                        # @listAddNodeHead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB3_1
# %bb.2:
	movq	%r14, 16(%rax)
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_3
# %bb.4:
	movq	$0, (%rax)
	movq	(%rbx), %rdx
	movq	%rdx, 8(%rax)
	movq	%rax, (%rdx)
	movq	%rax, (%rbx)
	jmp	.LBB3_5
.LBB3_1:
	xorl	%ebx, %ebx
	jmp	.LBB3_6
.LBB3_3:
	movq	%rax, 8(%rbx)
	movq	%rax, (%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
.LBB3_5:
	addq	$1, %rcx
	movq	%rcx, 40(%rbx)
.LBB3_6:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	listAddNodeHead, .Lfunc_end3-listAddNodeHead
                                        # -- End function
	.globl	listAddNodeTail         # -- Begin function listAddNodeTail
	.p2align	4, 0x90
	.type	listAddNodeTail,@function
listAddNodeTail:                        # @listAddNodeTail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB4_1
# %bb.2:
	movq	%r14, 16(%rax)
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB4_3
# %bb.4:
	movq	8(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, 8(%rdx)
	movq	%rax, 8(%rbx)
	jmp	.LBB4_5
.LBB4_1:
	xorl	%ebx, %ebx
	jmp	.LBB4_6
.LBB4_3:
	movq	%rax, 8(%rbx)
	movq	%rax, (%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
.LBB4_5:
	addq	$1, %rcx
	movq	%rcx, 40(%rbx)
.LBB4_6:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	listAddNodeTail, .Lfunc_end4-listAddNodeTail
                                        # -- End function
	.globl	listInsertNode          # -- Begin function listInsertNode
	.p2align	4, 0x90
	.type	listInsertNode,@function
listInsertNode:                         # @listInsertNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$24, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB5_1
# %bb.2:
	movq	%r12, 16(%rax)
	testl	%r15d, %r15d
	je	.LBB5_6
# %bb.3:
	movq	%rbx, (%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	cmpq	%rbx, 8(%r14)
	je	.LBB5_5
# %bb.4:
	movq	%rbx, %rcx
	jmp	.LBB5_9
.LBB5_1:
	xorl	%r14d, %r14d
	jmp	.LBB5_12
.LBB5_6:
	movq	%rbx, 8(%rax)
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	cmpq	%rbx, (%r14)
	je	.LBB5_7
# %bb.8:
	testq	%rcx, %rcx
	jne	.LBB5_9
	jmp	.LBB5_10
.LBB5_5:
	movq	%rax, 8(%r14)
	movq	%rbx, %rcx
	jmp	.LBB5_9
.LBB5_7:
	movq	%rax, (%r14)
	testq	%rcx, %rcx
	je	.LBB5_10
.LBB5_9:
	movq	%rax, 8(%rcx)
	movq	8(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_11
.LBB5_10:
	movq	%rax, (%rbx)
.LBB5_11:
	addq	$1, 40(%r14)
.LBB5_12:
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	listInsertNode, .Lfunc_end5-listInsertNode
                                        # -- End function
	.globl	listDelNode             # -- Begin function listDelNode
	.p2align	4, 0x90
	.type	listDelNode,@function
listDelNode:                            # @listDelNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	testq	%rax, %rax
	je	.LBB6_2
# %bb.1:
	movq	%rcx, 8(%rax)
	movq	8(%rbx), %rcx
	jmp	.LBB6_3
.LBB6_2:
	movq	%rcx, (%r14)
.LBB6_3:
	leaq	8(%r14), %rdx
	testq	%rcx, %rcx
	cmovneq	%rcx, %rdx
	movq	%rax, (%rdx)
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB6_5
# %bb.4:
	movq	16(%rbx), %rdi
	callq	*%rax
.LBB6_5:
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 40(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	listDelNode, .Lfunc_end6-listDelNode
                                        # -- End function
	.globl	listGetIterator         # -- Begin function listGetIterator
	.p2align	4, 0x90
	.type	listGetIterator,@function
listGetIterator:                        # @listGetIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$16, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB7_1
# %bb.2:
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	setne	%cl
	movq	(%r14,%rcx,8), %rcx
	movq	%rcx, (%rax)
	movl	%ebx, 8(%rax)
	jmp	.LBB7_3
.LBB7_1:
	xorl	%eax, %eax
.LBB7_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	listGetIterator, .Lfunc_end7-listGetIterator
                                        # -- End function
	.globl	listReleaseIterator     # -- Begin function listReleaseIterator
	.p2align	4, 0x90
	.type	listReleaseIterator,@function
listReleaseIterator:                    # @listReleaseIterator
# %bb.0:
	jmp	zfree                   # TAILCALL
.Lfunc_end8:
	.size	listReleaseIterator, .Lfunc_end8-listReleaseIterator
                                        # -- End function
	.globl	listRewind              # -- Begin function listRewind
	.p2align	4, 0x90
	.type	listRewind,@function
listRewind:                             # @listRewind
# %bb.0:
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	retq
.Lfunc_end9:
	.size	listRewind, .Lfunc_end9-listRewind
                                        # -- End function
	.globl	listRewindTail          # -- Begin function listRewindTail
	.p2align	4, 0x90
	.type	listRewindTail,@function
listRewindTail:                         # @listRewindTail
# %bb.0:
	movq	8(%rdi), %rax
	movq	%rax, (%rsi)
	movl	$1, 8(%rsi)
	retq
.Lfunc_end10:
	.size	listRewindTail, .Lfunc_end10-listRewindTail
                                        # -- End function
	.globl	listNext                # -- Begin function listNext
	.p2align	4, 0x90
	.type	listNext,@function
listNext:                               # @listNext
# %bb.0:
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB11_2
# %bb.1:
	xorl	%ecx, %ecx
	cmpl	$0, 8(%rdi)
	sete	%cl
	movq	(%rax,%rcx,8), %rcx
	movq	%rcx, (%rdi)
.LBB11_2:
	retq
.Lfunc_end11:
	.size	listNext, .Lfunc_end11-listNext
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function listDup
.LCPI12_0:
	.zero	16
	.text
	.globl	listDup
	.p2align	4, 0x90
	.type	listDup,@function
listDup:                                # @listDup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$48, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB12_22
# %bb.1:
	movq	%rax, %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movdqu	16(%rbx), %xmm0
	movdqu	%xmm0, 16(%rax)
	movq	32(%rbx), %rax
	movq	%rax, 32(%r14)
	movq	(%rbx), %r15
	testq	%r15, %r15
	je	.LBB12_23
# %bb.2:
	movq	%xmm0, %rcx
	.p2align	4, 0x90
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rbx
	movq	8(%r15), %r15
	testq	%rcx, %rcx
	je	.LBB12_10
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	movq	%rbx, %rdi
	callq	*%rcx
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB12_5
.LBB12_10:                              #   in Loop: Header=BB12_3 Depth=1
	movl	$24, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB12_16
# %bb.11:                               #   in Loop: Header=BB12_3 Depth=1
	movq	%rbx, 16(%rax)
	movq	40(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB12_12
# %bb.13:                               #   in Loop: Header=BB12_3 Depth=1
	movq	8(%r14), %rdx
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, 8(%rdx)
	movq	%rax, 8(%r14)
	jmp	.LBB12_14
	.p2align	4, 0x90
.LBB12_12:                              #   in Loop: Header=BB12_3 Depth=1
	movq	%rax, 8(%r14)
	movq	%rax, (%r14)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rax)
.LBB12_14:                              #   in Loop: Header=BB12_3 Depth=1
	addq	$1, %rcx
	movq	%rcx, 40(%r14)
	testq	%r15, %r15
	je	.LBB12_23
# %bb.15:                               #   in Loop: Header=BB12_3 Depth=1
	movq	16(%r14), %rcx
	jmp	.LBB12_3
.LBB12_16:
	movq	40(%r14), %r15
	testq	%r15, %r15
	je	.LBB12_21
# %bb.17:
	movq	(%r14), %rbx
	jmp	.LBB12_18
	.p2align	4, 0x90
.LBB12_20:                              #   in Loop: Header=BB12_18 Depth=1
	movq	%rbx, %rdi
	callq	zfree
	movq	%r12, %rbx
	testq	%r15, %r15
	je	.LBB12_21
.LBB12_18:                              # =>This Inner Loop Header: Depth=1
	addq	$-1, %r15
	movq	8(%rbx), %r12
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB12_20
# %bb.19:                               #   in Loop: Header=BB12_18 Depth=1
	movq	16(%rbx), %rdi
	callq	*%rax
	jmp	.LBB12_20
.LBB12_5:
	movq	40(%r14), %r15
	testq	%r15, %r15
	je	.LBB12_21
# %bb.6:
	movq	(%r14), %rbx
	jmp	.LBB12_7
	.p2align	4, 0x90
.LBB12_9:                               #   in Loop: Header=BB12_7 Depth=1
	movq	%rbx, %rdi
	callq	zfree
	movq	%r12, %rbx
	testq	%r15, %r15
	je	.LBB12_21
.LBB12_7:                               # =>This Inner Loop Header: Depth=1
	addq	$-1, %r15
	movq	8(%rbx), %r12
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB12_9
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=1
	movq	16(%rbx), %rdi
	callq	*%rax
	jmp	.LBB12_9
.LBB12_21:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r14)
	movq	$0, 40(%r14)
	movq	%r14, %rdi
	callq	zfree
.LBB12_22:
	xorl	%r14d, %r14d
.LBB12_23:
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	listDup, .Lfunc_end12-listDup
                                        # -- End function
	.globl	listSearchKey           # -- Begin function listSearchKey
	.p2align	4, 0x90
	.type	listSearchKey,@function
listSearchKey:                          # @listSearchKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB13_7
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %r15
	jmp	.LBB13_2
	.p2align	4, 0x90
.LBB13_4:                               #   in Loop: Header=BB13_2 Depth=1
	cmpq	%r14, %rdi
	je	.LBB13_7
.LBB13_5:                               #   in Loop: Header=BB13_2 Depth=1
	movq	%r12, %rbx
	testq	%r12, %r12
	je	.LBB13_6
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %r12
	movq	16(%rbx), %rdi
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB13_4
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	movq	%r14, %rsi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB13_5
	jmp	.LBB13_7
.LBB13_6:
	xorl	%ebx, %ebx
.LBB13_7:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	listSearchKey, .Lfunc_end13-listSearchKey
                                        # -- End function
	.globl	listIndex               # -- Begin function listIndex
	.p2align	4, 0x90
	.type	listIndex,@function
listIndex:                              # @listIndex
# %bb.0:
	testq	%rsi, %rsi
	js	.LBB14_1
# %bb.6:
	movq	(%rdi), %rax
	je	.LBB14_11
# %bb.7:
	testq	%rax, %rax
	je	.LBB14_11
# %bb.8:                                # %.preheader
	addq	$-1, %rsi
	.p2align	4, 0x90
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	addq	$-1, %rsi
	jae	.LBB14_11
# %bb.10:                               #   in Loop: Header=BB14_9 Depth=1
	testq	%rax, %rax
	jne	.LBB14_9
	jmp	.LBB14_11
.LBB14_1:
	movq	8(%rdi), %rax
	cmpq	$-1, %rsi
	je	.LBB14_11
# %bb.2:
	testq	%rax, %rax
	je	.LBB14_11
# %bb.3:
	addq	$2, %rsi
	.p2align	4, 0x90
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	testq	%rsi, %rsi
	je	.LBB14_11
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	addq	$1, %rsi
	testq	%rax, %rax
	jne	.LBB14_4
.LBB14_11:
	retq
.Lfunc_end14:
	.size	listIndex, .Lfunc_end14-listIndex
                                        # -- End function
	.globl	listRotate              # -- Begin function listRotate
	.p2align	4, 0x90
	.type	listRotate,@function
listRotate:                             # @listRotate
# %bb.0:
	cmpq	$2, 40(%rdi)
	jb	.LBB15_2
# %bb.1:
	movq	8(%rdi), %rax
	movq	(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movq	$0, 8(%rcx)
	movq	(%rdi), %rcx
	movq	%rax, (%rcx)
	movq	$0, (%rax)
	movq	%rcx, 8(%rax)
	movq	%rax, (%rdi)
.LBB15_2:
	retq
.Lfunc_end15:
	.size	listRotate, .Lfunc_end15-listRotate
                                        # -- End function
	.globl	listJoin                # -- Begin function listJoin
	.p2align	4, 0x90
	.type	listJoin,@function
listJoin:                               # @listJoin
# %bb.0:
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB16_1
# %bb.2:
	movq	8(%rdi), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB16_3
.LBB16_1:
	movq	8(%rdi), %rcx
.LBB16_3:
	testq	%rcx, %rcx
	leaq	8(%rcx), %rcx
	cmoveq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB16_5
# %bb.4:
	movq	%rax, 8(%rdi)
.LBB16_5:
	movq	40(%rsi), %rax
	addq	%rax, 40(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
	movq	$0, 40(%rsi)
	retq
.Lfunc_end16:
	.size	listJoin, .Lfunc_end16-listJoin
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
