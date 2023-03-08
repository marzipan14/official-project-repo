	.text
	.file	"t_set.c"
	.globl	setTypeCreate           # -- Begin function setTypeCreate
	.p2align	4, 0x90
	.type	setTypeCreate,@function
setTypeCreate:                          # @setTypeCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	isSdsRepresentableAsLongLong
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	popq	%rbp
	jmp	createSetObject         # TAILCALL
.LBB0_1:
	popq	%rbp
	jmp	createIntsetObject      # TAILCALL
.Lfunc_end0:
	.size	setTypeCreate, .Lfunc_end0-setTypeCreate
                                        # -- End function
	.globl	setTypeAdd              # -- Begin function setTypeAdd
	.p2align	4, 0x90
	.type	setTypeAdd,@function
setTypeAdd:                             # @setTypeAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB1_8
# %bb.1:
	cmpb	$2, %al
	jne	.LBB1_15
# %bb.2:
	movq	8(%rbx), %r12
	xorl	%ebx, %ebx
	movq	%r12, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	dictAddRaw
	testq	%rax, %rax
	je	.LBB1_18
# %bb.3:
	movq	%rax, %r15
	movq	(%r12), %rax
	movq	8(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_5
# %bb.4:
	movq	8(%r12), %r13
	movq	%r14, %rdi
	callq	sdsdup
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	*%rbx
	jmp	.LBB1_6
.LBB1_8:
	leaq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	isSdsRepresentableAsLongLong
	testl	%eax, %eax
	je	.LBB1_9
# %bb.13:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	setTypeConvert
	movq	8(%rbx), %rbx
	movq	%r14, %rdi
	callq	sdsdup
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$1, %ebx
	testl	%eax, %eax
	je	.LBB1_18
# %bb.14:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$79, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB1_9:
	movb	$0, -41(%rbp)
	movq	8(%rbx), %rdi
	movq	-56(%rbp), %rsi
	leaq	-41(%rbp), %rdx
	callq	intsetAdd
	movq	%rax, 8(%rbx)
	cmpb	$0, -41(%rbp)
	je	.LBB1_12
# %bb.10:
	movq	%rax, %rdi
	callq	intsetLen
	movl	%eax, %eax
	cmpq	%rax, server+2816(%rip)
	jae	.LBB1_17
# %bb.11:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	setTypeConvert
	jmp	.LBB1_17
.LBB1_5:
	movq	%r14, %rdi
	callq	sdsdup
.LBB1_6:
	movq	%rax, (%r15)
	movq	(%r12), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_16
# %bb.7:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	callq	*%rax
	movq	%rax, 8(%r15)
	jmp	.LBB1_17
.LBB1_16:
	movq	$0, 8(%r15)
.LBB1_17:
	movl	$1, %ebx
.LBB1_18:
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_12:
	xorl	%ebx, %ebx
	jmp	.LBB1_18
.LBB1_15:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$83, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end1:
	.size	setTypeAdd, .Lfunc_end1-setTypeAdd
                                        # -- End function
	.globl	setTypeConvert          # -- Begin function setTypeConvert
	.p2align	4, 0x90
	.type	setTypeConvert,@function
setTypeConvert:                         # @setTypeConvert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	cmpb	$98, (%rdi)
	jne	.LBB2_21
# %bb.1:
	cmpl	$2, %esi
	jne	.LBB2_20
# %bb.2:
	movl	$setDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, %r15
	movq	8(%r14), %rdi
	callq	intsetLen
	movl	%eax, %esi
	movq	%r15, %rdi
	callq	dictExpand
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movl	(%r14), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%rbx)
	andb	$15, %al
	cmpb	$6, %al
	je	.LBB2_7
# %bb.3:
	cmpb	$2, %al
	jne	.LBB2_5
# %bb.4:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rbx, %r13
	addq	$16, %r13
	movq	%rax, 16(%rbx)
	jmp	.LBB2_8
.LBB2_7:
	movl	$0, 12(%rbx)
	movq	%rbx, %r13
	addq	$16, %r13
.LBB2_8:
	leaq	-48(%rbp), %r12
	.p2align	4, 0x90
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %eax
	cmpl	$6, %eax
	je	.LBB2_16
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	cmpl	$2, %eax
	jne	.LBB2_22
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	movq	(%r13), %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB2_17
# %bb.12:                               #   in Loop: Header=BB2_9 Depth=1
	movq	$-123456789, -48(%rbp)  # imm = 0xF8A432EB
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_9 Depth=1
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movl	12(%rbx), %esi
	leal	1(%rsi), %eax
	movl	%eax, 12(%rbx)
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r12, %rdx
	callq	intsetGet
	testb	%al, %al
	je	.LBB2_17
.LBB2_13:                               #   in Loop: Header=BB2_9 Depth=1
	cmpl	$-1, 8(%rbx)
	je	.LBB2_19
# %bb.14:                               #   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rdi
	callq	sdsfromlonglong
	movq	%r15, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	je	.LBB2_9
# %bb.15:
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$252, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB2_17:
	cmpl	$2, 8(%rbx)
	jne	.LBB2_19
# %bb.18:
	movq	(%r13), %rdi
	callq	dictReleaseIterator
.LBB2_19:
	movq	%rbx, %rdi
	callq	zfree
	movl	$-241, %eax
	andl	(%r14), %eax
	orl	$32, %eax
	movl	%eax, (%r14)
	movq	8(%r14), %rdi
	callq	zfree
	movq	%r15, 8(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_22:
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	movl	$165, %esi
.LBB2_6:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB2_21:
	movl	$.L.str.5, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$238, %r8d
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB2_20:
	movl	$.L.str.1, %edi
	movl	$.L.str.7, %edx
	movl	$260, %esi              # imm = 0x104
	jmp	.LBB2_6
.LBB2_5:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
	jmp	.LBB2_6
.Lfunc_end2:
	.size	setTypeConvert, .Lfunc_end2-setTypeConvert
                                        # -- End function
	.globl	setTypeRemove           # -- Begin function setTypeRemove
	.p2align	4, 0x90
	.type	setTypeRemove,@function
setTypeRemove:                          # @setTypeRemove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB3_5
# %bb.1:
	cmpb	$2, %al
	jne	.LBB3_9
# %bb.2:
	movq	8(%r14), %rdi
	callq	dictDelete
	testl	%eax, %eax
	jne	.LBB3_7
# %bb.3:
	movq	8(%r14), %rdi
	callq	htNeedsResize
	movl	$1, %ebx
	testl	%eax, %eax
	je	.LBB3_8
# %bb.4:
	movq	8(%r14), %rdi
	callq	dictResize
	jmp	.LBB3_8
.LBB3_5:
	leaq	-32(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	isSdsRepresentableAsLongLong
	testl	%eax, %eax
	je	.LBB3_6
.LBB3_7:
	xorl	%ebx, %ebx
.LBB3_8:
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB3_6:
	movq	8(%r14), %rdi
	movq	-32(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	callq	intsetRemove
	movq	%rax, 8(%r14)
	cmpl	$0, -20(%rbp)
	movl	$1, %ebx
	jne	.LBB3_8
	jmp	.LBB3_7
.LBB3_9:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$102, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end3:
	.size	setTypeRemove, .Lfunc_end3-setTypeRemove
                                        # -- End function
	.globl	setTypeIsMember         # -- Begin function setTypeIsMember
	.p2align	4, 0x90
	.type	setTypeIsMember,@function
setTypeIsMember:                        # @setTypeIsMember
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB4_3
# %bb.1:
	cmpb	$2, %al
	jne	.LBB4_6
# %bb.2:
	movq	8(%rbx), %rdi
	callq	dictFind
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	jmp	.LBB4_5
.LBB4_3:
	leaq	-16(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	isSdsRepresentableAsLongLong
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB4_5
# %bb.4:
	movq	8(%rbx), %rdi
	movq	-16(%rbp), %rsi
	callq	intsetFind
	movzbl	%al, %eax
.LBB4_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB4_6:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$116, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end4:
	.size	setTypeIsMember, .Lfunc_end4-setTypeIsMember
                                        # -- End function
	.globl	setTypeInitIterator     # -- Begin function setTypeInitIterator
	.p2align	4, 0x90
	.type	setTypeInitIterator,@function
setTypeInitIterator:                    # @setTypeInitIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movl	(%r14), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%rbx)
	andb	$15, %al
	cmpb	$6, %al
	je	.LBB5_4
# %bb.1:
	cmpb	$2, %al
	jne	.LBB5_3
# %bb.2:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%rbx)
	jmp	.LBB5_5
.LBB5_4:
	movl	$0, 12(%rbx)
.LBB5_5:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end5:
	.size	setTypeInitIterator, .Lfunc_end5-setTypeInitIterator
                                        # -- End function
	.globl	setTypeReleaseIterator  # -- Begin function setTypeReleaseIterator
	.p2align	4, 0x90
	.type	setTypeReleaseIterator,@function
setTypeReleaseIterator:                 # @setTypeReleaseIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$2, 8(%rdi)
	jne	.LBB6_2
# %bb.1:
	movq	16(%rbx), %rdi
	callq	dictReleaseIterator
.LBB6_2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end6:
	.size	setTypeReleaseIterator, .Lfunc_end6-setTypeReleaseIterator
                                        # -- End function
	.globl	setTypeNext             # -- Begin function setTypeNext
	.p2align	4, 0x90
	.type	setTypeNext,@function
setTypeNext:                            # @setTypeNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	8(%rdi), %eax
	cmpl	$6, %eax
	je	.LBB7_4
# %bb.1:
	cmpl	$2, %eax
	jne	.LBB7_10
# %bb.2:
	movq	16(%rbx), %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB7_8
# %bb.3:
	movq	(%rax), %rax
	movq	%rax, (%r14)
	movq	$-123456789, (%r15)     # imm = 0xF8A432EB
	jmp	.LBB7_6
.LBB7_4:
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movl	12(%rbx), %esi
	leal	1(%rsi), %eax
	movl	%eax, 12(%rbx)
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r15, %rdx
	callq	intsetGet
	testb	%al, %al
	je	.LBB7_8
# %bb.5:
	movq	$0, (%r14)
.LBB7_6:
	movl	8(%rbx), %eax
	jmp	.LBB7_9
.LBB7_8:
	movl	$-1, %eax
.LBB7_9:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_10:
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	movl	$165, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end7:
	.size	setTypeNext, .Lfunc_end7-setTypeNext
                                        # -- End function
	.globl	setTypeNextObject       # -- Begin function setTypeNextObject
	.p2align	4, 0x90
	.type	setTypeNextObject,@function
setTypeNextObject:                      # @setTypeNextObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	8(%rdi), %eax
	cmpl	$6, %eax
	je	.LBB8_4
# %bb.1:
	cmpl	$2, %eax
	jne	.LBB8_13
# %bb.2:
	movq	16(%rbx), %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB8_11
# %bb.3:
	movq	(%rax), %rax
	movq	$-123456789, -16(%rbp)  # imm = 0xF8A432EB
	jmp	.LBB8_5
.LBB8_4:
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movl	12(%rbx), %esi
	leal	1(%rsi), %eax
	movl	%eax, 12(%rbx)
	leaq	-16(%rbp), %rdx
                                        # kill: def $esi killed $esi killed $rsi
	callq	intsetGet
	movl	%eax, %ecx
	xorl	%eax, %eax
	testb	%cl, %cl
	je	.LBB8_12
.LBB8_5:
	movl	8(%rbx), %ecx
	cmpl	$-1, %ecx
	je	.LBB8_11
# %bb.6:
	cmpl	$2, %ecx
	je	.LBB8_9
# %bb.7:
	cmpl	$6, %ecx
	jne	.LBB8_14
# %bb.8:
	movq	-16(%rbp), %rdi
	callq	sdsfromlonglong
	jmp	.LBB8_12
.LBB8_11:
	xorl	%eax, %eax
	jmp	.LBB8_12
.LBB8_9:
	movq	%rax, %rdi
	callq	sdsdup
.LBB8_12:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB8_13:
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	movl	$165, %esi
	jmp	.LBB8_15
.LBB8_14:
	movl	$.L.str.1, %edi
	movl	$.L.str.4, %edx
	movl	$190, %esi
.LBB8_15:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end8:
	.size	setTypeNextObject, .Lfunc_end8-setTypeNextObject
                                        # -- End function
	.globl	setTypeRandomElement    # -- Begin function setTypeRandomElement
	.p2align	4, 0x90
	.type	setTypeRandomElement,@function
setTypeRandomElement:                   # @setTypeRandomElement
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB9_4
# %bb.1:
	cmpb	$2, %al
	jne	.LBB9_3
# %bb.2:
	movq	8(%rbx), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rax
	movq	%rax, (%r15)
	movq	$-123456789, (%r14)     # imm = 0xF8A432EB
	jmp	.LBB9_5
.LBB9_4:
	movq	8(%rbx), %rdi
	callq	intsetRandom
	movq	%rax, (%r14)
	movq	$0, (%r15)
.LBB9_5:
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$217, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end9:
	.size	setTypeRandomElement, .Lfunc_end9-setTypeRandomElement
                                        # -- End function
	.globl	setTypeSize             # -- Begin function setTypeSize
	.p2align	4, 0x90
	.type	setTypeSize,@function
setTypeSize:                            # @setTypeSize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB10_4
# %bb.1:
	cmpb	$2, %al
	jne	.LBB10_3
# %bb.2:
	movq	8(%rdi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	popq	%rbp
	retq
.LBB10_4:
	movq	8(%rdi), %rdi
	callq	intsetLen
	movl	%eax, %eax
	popq	%rbp
	retq
.LBB10_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end10:
	.size	setTypeSize, .Lfunc_end10-setTypeSize
                                        # -- End function
	.globl	saddCommand             # -- Begin function saddCommand
	.p2align	4, 0x90
	.type	saddCommand,@function
saddCommand:                            # @saddCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB11_1
# %bb.5:
	movq	%rax, %r15
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$2, %eax
	je	.LBB11_6
# %bb.13:
	movq	shared+112(%rip), %rsi
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB11_1:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	callq	isSdsRepresentableAsLongLong
	testl	%eax, %eax
	je	.LBB11_2
# %bb.3:
	callq	createSetObject
	jmp	.LBB11_4
.LBB11_2:
	callq	createIntsetObject
.LBB11_4:
	movq	%rax, %r15
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdx
	callq	dbAdd
.LBB11_6:
	xorl	%r12d, %r12d
	cmpl	$3, 64(%r14)
	jl	.LBB11_12
# %bb.7:                                # %.preheader
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdi
	callq	setTypeAdd
	cmpl	$1, %eax
	sbbl	$-1, %r12d
	addq	$1, %rbx
	movslq	64(%r14), %rax
	cmpq	%rax, %rbx
	jl	.LBB11_8
# %bb.9:
	testl	%r12d, %r12d
	je	.LBB11_10
# %bb.11:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.8, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
	movl	%r12d, %r12d
	jmp	.LBB11_12
.LBB11_10:
	xorl	%r12d, %r12d
.LBB11_12:
	addq	%r12, server+2080(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.Lfunc_end11:
	.size	saddCommand, .Lfunc_end11-saddCommand
                                        # -- End function
	.globl	sremCommand             # -- Begin function sremCommand
	.p2align	4, 0x90
	.type	sremCommand,@function
sremCommand:                            # @sremCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB12_20
# %bb.1:
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB12_2
.LBB12_20:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_2:
	xorl	%r15d, %r15d
	cmpl	$3, 64(%r14)
	jl	.LBB12_19
# %bb.3:
	movl	$2, %ebx
	jmp	.LBB12_4
	.p2align	4, 0x90
.LBB12_9:                               #   in Loop: Header=BB12_4 Depth=1
	movq	8(%r12), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB12_10:                              #   in Loop: Header=BB12_4 Depth=1
	addl	$1, %r15d
	testq	%rax, %rax
	je	.LBB12_11
.LBB12_12:                              #   in Loop: Header=BB12_4 Depth=1
	addq	$1, %rbx
	movslq	64(%r14), %rax
	cmpq	%rax, %rbx
	jge	.LBB12_13
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdi
	callq	setTypeRemove
	testl	%eax, %eax
	je	.LBB12_12
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	movzbl	(%r12), %eax
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB12_9
# %bb.6:                                #   in Loop: Header=BB12_4 Depth=1
	cmpb	$2, %al
	jne	.LBB12_8
# %bb.7:                                #   in Loop: Header=BB12_4 Depth=1
	movq	8(%r12), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB12_10
.LBB12_13:
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	je	.LBB12_15
.LBB12_16:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.9, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
	testl	%ebx, %ebx
	je	.LBB12_18
# %bb.17:
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
.LBB12_18:
	movslq	%r15d, %r15
	addq	%r15, server+2080(%rip)
	jmp	.LBB12_19
.LBB12_11:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movl	$1, %ebx
	testl	%r15d, %r15d
	jne	.LBB12_16
.LBB12_15:
	xorl	%r15d, %r15d
.LBB12_19:
	movq	%r14, %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.LBB12_8:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end12:
	.size	sremCommand, .Lfunc_end12-sremCommand
                                        # -- End function
	.globl	smoveCommand            # -- Begin function smoveCommand
	.p2align	4, 0x90
	.type	smoveCommand,@function
smoveCommand:                           # @smoveCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movq	%rax, %r15
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	callq	lookupKeyWrite
	testq	%r15, %r15
	je	.LBB13_1
# %bb.3:
	movq	%rax, %r14
	movq	72(%rbx), %rax
	movq	24(%rax), %r12
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB13_4
.LBB13_24:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_4:
	testq	%r14, %r14
	je	.LBB13_6
# %bb.5:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB13_24
.LBB13_6:
	movq	8(%r12), %rsi
	cmpq	%r14, %r15
	je	.LBB13_7
# %bb.8:
	movq	%r15, %rdi
	callq	setTypeRemove
	testl	%eax, %eax
	je	.LBB13_1
# %bb.9:
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.9, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
	movb	(%r15), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB13_13
# %bb.10:
	cmpb	$2, %al
	jne	.LBB13_12
# %bb.11:
	movq	8(%r15), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB13_14
.LBB13_1:
	movq	shared+32(%rip), %rsi
.LBB13_2:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB13_7:
	movq	%r15, %rdi
	callq	setTypeIsMember
	testl	%eax, %eax
	movl	$shared+32, %eax
	movl	$shared+40, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rsi
	jmp	.LBB13_2
.LBB13_13:
	movq	8(%r15), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB13_14:
	testq	%rax, %rax
	jne	.LBB13_16
# %bb.15:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
.LBB13_16:
	testq	%r14, %r14
	jne	.LBB13_21
# %bb.17:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	callq	isSdsRepresentableAsLongLong
	testl	%eax, %eax
	je	.LBB13_18
# %bb.19:
	callq	createSetObject
	jmp	.LBB13_20
.LBB13_18:
	callq	createIntsetObject
.LBB13_20:
	movq	%rax, %r14
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
.LBB13_21:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	callq	setTypeAdd
	testl	%eax, %eax
	je	.LBB13_23
# %bb.22:
	addq	$1, server+2080(%rip)
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	16(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.8, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
.LBB13_23:
	movq	shared+40(%rip), %rsi
	jmp	.LBB13_2
.LBB13_12:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end13:
	.size	smoveCommand, .Lfunc_end13-smoveCommand
                                        # -- End function
	.globl	sismemberCommand        # -- Begin function sismemberCommand
	.p2align	4, 0x90
	.type	sismemberCommand,@function
sismemberCommand:                       # @sismemberCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB14_6
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB14_2
.LBB14_6:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB14_2:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	setTypeIsMember
	testl	%eax, %eax
	je	.LBB14_5
# %bb.3:
	movq	shared+40(%rip), %rsi
	jmp	.LBB14_4
.LBB14_5:
	movq	shared+32(%rip), %rsi
.LBB14_4:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReply                # TAILCALL
.Lfunc_end14:
	.size	sismemberCommand, .Lfunc_end14-sismemberCommand
                                        # -- End function
	.globl	scardCommand            # -- Begin function scardCommand
	.p2align	4, 0x90
	.type	scardCommand,@function
scardCommand:                           # @scardCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB15_8
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB15_2
.LBB15_8:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB15_2:
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB15_6
# %bb.3:
	cmpb	$2, %al
	jne	.LBB15_5
# %bb.4:
	movq	8(%rbx), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	jmp	.LBB15_7
.LBB15_6:
	movq	8(%rbx), %rdi
	callq	intsetLen
	movl	%eax, %esi
.LBB15_7:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.LBB15_5:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end15:
	.size	scardCommand, .Lfunc_end15-scardCommand
                                        # -- End function
	.globl	spopWithCountCommand    # -- Begin function spopWithCountCommand
	.p2align	4, 0x90
	.type	spopWithCountCommand,@function
spopWithCountCommand:                   # @spopWithCountCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r13
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-88(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB16_94
# %bb.1:
	movq	-88(%rbp), %r15
	testq	%r15, %r15
	js	.LBB16_6
# %bb.2:
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	movq	%r13, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB16_94
# %bb.3:
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB16_94
# %bb.4:
	testq	%r15, %r15
	je	.LBB16_5
# %bb.8:
	movb	(%r14), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB16_13
# %bb.9:
	cmpb	$2, %al
	jne	.LBB16_11
# %bb.10:
	movq	8(%r14), %rax
	movq	72(%rax), %r12
	addq	40(%rax), %r12
	jmp	.LBB16_14
.LBB16_6:
	movq	shared+144(%rip), %rsi
.LBB16_7:
	movq	%r13, %rdi
	callq	addReply
.LBB16_94:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_5:
	movq	shared+104(%rip), %rsi
	jmp	.LBB16_7
.LBB16_13:
	movq	8(%r14), %rdi
	callq	intsetLen
	movl	%eax, %r12d
.LBB16_14:
	movq	16(%r13), %rax
	movq	72(%r13), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.11, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
	addq	%r15, server+2080(%rip)
	movq	%r12, %rbx
	subq	%r15, %rbx
	jbe	.LBB16_15
# %bb.16:
	movl	$.L.str.12, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, -80(%rbp)
	movq	72(%r13), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	addReplyMultiBulkLen
	leaq	(%rbx,%rbx,4), %rax
	cmpq	%r15, %rax
	ja	.LBB16_19
# %bb.17:
	testq	%rbx, %rbx
	je	.LBB16_18
# %bb.43:
	subq	%r12, %r15
	xorl	%r12d, %r12d
	jmp	.LBB16_44
.LBB16_24:                              #   in Loop: Header=BB16_19 Depth=1
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	movq	-48(%rbp), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %r12
	movq	8(%r14), %rdi
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	callq	intsetRemove
	movq	%rax, 8(%r14)
.LBB16_42:                              #   in Loop: Header=BB16_19 Depth=1
	movq	%r12, -64(%rbp)
	movq	server+952(%rip), %rdi
	movq	16(%r13), %rax
	movl	40(%rax), %esi
	leaq	-80(%rbp), %rdx
	movl	$3, %ecx
	movl	$3, %r8d
	callq	alsoPropagate
	movq	%r12, %rdi
	callq	decrRefCount
	testq	%r15, %r15
	je	.LBB16_92
.LBB16_19:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %eax
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB16_22
# %bb.20:                               #   in Loop: Header=BB16_19 Depth=1
	cmpb	$2, %al
	jne	.LBB16_47
# %bb.21:                               #   in Loop: Header=BB16_19 Depth=1
	movq	8(%r14), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rbx
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB16_23
.LBB16_22:                              #   in Loop: Header=BB16_19 Depth=1
	movq	8(%r14), %rdi
	callq	intsetRandom
	xorl	%ebx, %ebx
.LBB16_23:                              #   in Loop: Header=BB16_19 Depth=1
	addq	$-1, %r15
	movq	%rax, -48(%rbp)
	movl	(%r14), %ecx
	movl	$240, %edx
	andl	%edx, %ecx
	cmpl	$96, %ecx
	je	.LBB16_24
# %bb.25:                               #   in Loop: Header=BB16_19 Depth=1
	movzbl	-1(%rbx), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB16_26
# %bb.27:                               #   in Loop: Header=BB16_19 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI16_2(,%rax,8)
.LBB16_28:                              #   in Loop: Header=BB16_19 Depth=1
	shrq	$3, %rdx
	jmp	.LBB16_33
.LBB16_32:                              #   in Loop: Header=BB16_19 Depth=1
	movq	-17(%rbx), %rdx
	jmp	.LBB16_33
.LBB16_30:                              #   in Loop: Header=BB16_19 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB16_33
.LBB16_31:                              #   in Loop: Header=BB16_19 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB16_33
.LBB16_29:                              #   in Loop: Header=BB16_19 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB16_33
.LBB16_26:                              #   in Loop: Header=BB16_19 Depth=1
	xorl	%edx, %edx
.LBB16_33:                              #   in Loop: Header=BB16_19 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
	movzbl	-1(%rbx), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB16_34
# %bb.35:                               #   in Loop: Header=BB16_19 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI16_3(,%rax,8)
.LBB16_36:                              #   in Loop: Header=BB16_19 Depth=1
	shrq	$3, %rsi
	jmp	.LBB16_41
.LBB16_40:                              #   in Loop: Header=BB16_19 Depth=1
	movq	-17(%rbx), %rsi
	jmp	.LBB16_41
.LBB16_38:                              #   in Loop: Header=BB16_19 Depth=1
	movzwl	-5(%rbx), %esi
	jmp	.LBB16_41
.LBB16_39:                              #   in Loop: Header=BB16_19 Depth=1
	movl	-9(%rbx), %esi
	jmp	.LBB16_41
.LBB16_37:                              #   in Loop: Header=BB16_19 Depth=1
	movzbl	-3(%rbx), %esi
	jmp	.LBB16_41
.LBB16_34:                              #   in Loop: Header=BB16_19 Depth=1
	xorl	%esi, %esi
.LBB16_41:                              #   in Loop: Header=BB16_19 Depth=1
	movq	%rbx, %rdi
	callq	createStringObject
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	setTypeRemove
	jmp	.LBB16_42
.LBB16_55:                              #   in Loop: Header=BB16_44 Depth=1
	callq	createSetObject
.LBB16_56:                              #   in Loop: Header=BB16_44 Depth=1
	movq	%rax, %r12
.LBB16_57:                              #   in Loop: Header=BB16_44 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	setTypeAdd
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	setTypeRemove
	movq	%rbx, %rdi
	callq	sdsfree
	incq	%r15
	je	.LBB16_58
.LBB16_44:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %eax
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB16_48
# %bb.45:                               #   in Loop: Header=BB16_44 Depth=1
	cmpb	$2, %al
	jne	.LBB16_47
# %bb.46:                               #   in Loop: Header=BB16_44 Depth=1
	movq	8(%r14), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rdi
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB16_49
.LBB16_48:                              #   in Loop: Header=BB16_44 Depth=1
	movq	8(%r14), %rdi
	callq	intsetRandom
	xorl	%edi, %edi
.LBB16_49:                              #   in Loop: Header=BB16_44 Depth=1
	movq	%rax, -48(%rbp)
	movl	(%r14), %ecx
	movl	$240, %edx
	andl	%edx, %ecx
	cmpl	$96, %ecx
	jne	.LBB16_51
# %bb.50:                               #   in Loop: Header=BB16_44 Depth=1
	movq	%rax, %rdi
	callq	sdsfromlonglong
	jmp	.LBB16_52
.LBB16_51:                              #   in Loop: Header=BB16_44 Depth=1
	callq	sdsdup
.LBB16_52:                              #   in Loop: Header=BB16_44 Depth=1
	movq	%rax, %rbx
	testq	%r12, %r12
	jne	.LBB16_57
# %bb.53:                               #   in Loop: Header=BB16_44 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	isSdsRepresentableAsLongLong
	testl	%eax, %eax
	jne	.LBB16_55
# %bb.54:                               #   in Loop: Header=BB16_44 Depth=1
	callq	createIntsetObject
	jmp	.LBB16_56
.LBB16_15:
	movq	72(%r13), %rsi
	addq	$8, %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	sunionDiffGenericCommand
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movq	16(%r13), %rax
	movq	72(%r13), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	movq	shared+296(%rip), %rdx
	movq	72(%r13), %rax
	movq	8(%rax), %rcx
	movq	%r13, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	rewriteClientCommandVector
	jmp	.LBB16_93
.LBB16_18:
	xorl	%r12d, %r12d
.LBB16_58:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%r14, (%rax)
	movl	(%r14), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r15)
	andb	$15, %al
	cmpb	$6, %al
	je	.LBB16_62
# %bb.59:
	cmpb	$2, %al
	jne	.LBB16_61
# %bb.60:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%r15, %rcx
	addq	$16, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, 16(%r15)
	jmp	.LBB16_63
.LBB16_62:
	movl	$0, 12(%r15)
	movq	%r15, %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB16_63
.LBB16_96:                              #   in Loop: Header=BB16_63 Depth=1
	movq	-48(%rbp), %rsi
	movq	%r13, %rdi
	callq	addReplyBulkLongLong
	movq	-48(%rbp), %rdi
	callq	createStringObjectFromLongLong
.LBB16_88:                              #   in Loop: Header=BB16_63 Depth=1
	movq	%rax, %rbx
	movq	%rax, -64(%rbp)
	movq	server+952(%rip), %rdi
	movq	16(%r13), %rax
	movl	40(%rax), %esi
	leaq	-80(%rbp), %rdx
	movl	$3, %ecx
	movl	$3, %r8d
	callq	alsoPropagate
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB16_63:                              # =>This Inner Loop Header: Depth=1
	movl	8(%r15), %eax
	cmpl	$6, %eax
	je	.LBB16_67
# %bb.64:                               #   in Loop: Header=BB16_63 Depth=1
	cmpl	$2, %eax
	jne	.LBB16_95
# %bb.65:                               #   in Loop: Header=BB16_63 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB16_89
# %bb.66:                               #   in Loop: Header=BB16_63 Depth=1
	movq	(%rax), %r14
	movq	$-123456789, -48(%rbp)  # imm = 0xF8A432EB
	jmp	.LBB16_69
.LBB16_67:                              #   in Loop: Header=BB16_63 Depth=1
	movq	(%r15), %rax
	movq	8(%rax), %rdi
	movl	12(%r15), %esi
	leal	1(%rsi), %eax
	movl	%eax, 12(%r15)
                                        # kill: def $esi killed $esi killed $rsi
	leaq	-48(%rbp), %rdx
	callq	intsetGet
	testb	%al, %al
	je	.LBB16_89
# %bb.68:                               #   in Loop: Header=BB16_63 Depth=1
	xorl	%r14d, %r14d
.LBB16_69:                              #   in Loop: Header=BB16_63 Depth=1
	movl	8(%r15), %eax
	cmpl	$6, %eax
	je	.LBB16_96
# %bb.70:                               #   in Loop: Header=BB16_63 Depth=1
	cmpl	$-1, %eax
	je	.LBB16_91
# %bb.71:                               #   in Loop: Header=BB16_63 Depth=1
	movzbl	-1(%r14), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB16_72
# %bb.73:                               #   in Loop: Header=BB16_63 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI16_0(,%rax,8)
.LBB16_74:                              #   in Loop: Header=BB16_63 Depth=1
	shrq	$3, %rdx
	jmp	.LBB16_79
.LBB16_78:                              #   in Loop: Header=BB16_63 Depth=1
	movq	-17(%r14), %rdx
	jmp	.LBB16_79
.LBB16_76:                              #   in Loop: Header=BB16_63 Depth=1
	movzwl	-5(%r14), %edx
	jmp	.LBB16_79
.LBB16_77:                              #   in Loop: Header=BB16_63 Depth=1
	movl	-9(%r14), %edx
	jmp	.LBB16_79
.LBB16_75:                              #   in Loop: Header=BB16_63 Depth=1
	movzbl	-3(%r14), %edx
	jmp	.LBB16_79
.LBB16_72:                              #   in Loop: Header=BB16_63 Depth=1
	xorl	%edx, %edx
.LBB16_79:                              #   in Loop: Header=BB16_63 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	addReplyBulkCBuffer
	movzbl	-1(%r14), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB16_80
# %bb.81:                               #   in Loop: Header=BB16_63 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI16_1(,%rax,8)
.LBB16_82:                              #   in Loop: Header=BB16_63 Depth=1
	shrq	$3, %rsi
	jmp	.LBB16_87
.LBB16_86:                              #   in Loop: Header=BB16_63 Depth=1
	movq	-17(%r14), %rsi
	jmp	.LBB16_87
.LBB16_84:                              #   in Loop: Header=BB16_63 Depth=1
	movzwl	-5(%r14), %esi
	jmp	.LBB16_87
.LBB16_85:                              #   in Loop: Header=BB16_63 Depth=1
	movl	-9(%r14), %esi
	jmp	.LBB16_87
.LBB16_83:                              #   in Loop: Header=BB16_63 Depth=1
	movzbl	-3(%r14), %esi
	jmp	.LBB16_87
.LBB16_80:                              #   in Loop: Header=BB16_63 Depth=1
	xorl	%esi, %esi
.LBB16_87:                              #   in Loop: Header=BB16_63 Depth=1
	movq	%r14, %rdi
	callq	createStringObject
	jmp	.LBB16_88
.LBB16_89:
	cmpl	$2, 8(%r15)
	jne	.LBB16_91
# %bb.90:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	callq	dictReleaseIterator
.LBB16_91:
	movq	%r15, %rdi
	callq	zfree
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdx
	callq	dbOverwrite
.LBB16_92:
	movq	-80(%rbp), %rdi
	callq	decrRefCount
	movq	%r13, %rdi
	callq	preventCommandPropagation
.LBB16_93:
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	jmp	.LBB16_94
.LBB16_47:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$217, %esi
	jmp	.LBB16_12
.LBB16_95:
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	movl	$165, %esi
	jmp	.LBB16_12
.LBB16_11:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	jmp	.LBB16_12
.LBB16_61:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
.LBB16_12:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end16:
	.size	spopWithCountCommand, .Lfunc_end16-spopWithCountCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI16_0:
	.quad	.LBB16_74
	.quad	.LBB16_75
	.quad	.LBB16_76
	.quad	.LBB16_77
	.quad	.LBB16_78
.LJTI16_1:
	.quad	.LBB16_82
	.quad	.LBB16_83
	.quad	.LBB16_84
	.quad	.LBB16_85
	.quad	.LBB16_86
.LJTI16_2:
	.quad	.LBB16_28
	.quad	.LBB16_29
	.quad	.LBB16_30
	.quad	.LBB16_31
	.quad	.LBB16_32
.LJTI16_3:
	.quad	.LBB16_36
	.quad	.LBB16_37
	.quad	.LBB16_38
	.quad	.LBB16_39
	.quad	.LBB16_40
                                        # -- End function
	.text
	.globl	sunionDiffGenericCommand # -- Begin function sunionDiffGenericCommand
	.p2align	4, 0x90
	.type	sunionDiffGenericCommand,@function
sunionDiffGenericCommand:               # @sunionDiffGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %r13
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movslq	%edx, %rbx
	leaq	(,%rbx,8), %rdi
	callq	zmalloc
	movq	%rax, %rdi
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	testl	%ebx, %ebx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jle	.LBB17_9
# %bb.1:
	xorl	%ebx, %ebx
	jmp	.LBB17_2
	.p2align	4, 0x90
.LBB17_6:                               #   in Loop: Header=BB17_2 Depth=1
	xorl	%r14d, %r14d
.LBB17_8:                               #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, (%rdi,%rbx,8)
	addq	$1, %rbx
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jge	.LBB17_9
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rdi
	movq	(%r15,%rbx,8), %rsi
	testq	%r13, %r13
	je	.LBB17_4
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	callq	lookupKeyWrite
	jmp	.LBB17_5
	.p2align	4, 0x90
.LBB17_4:                               #   in Loop: Header=BB17_2 Depth=1
	callq	lookupKeyRead
.LBB17_5:                               #   in Loop: Header=BB17_2 Depth=1
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB17_6
# %bb.7:                                #   in Loop: Header=BB17_2 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB17_8
	jmp	.LBB17_127
.LBB17_9:
	movl	$1, %r15d
	movl	-56(%rbp), %ebx         # 4-byte Reload
	cmpl	$1, %ebx
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	%r13, -88(%rbp)         # 8-byte Spill
	jne	.LBB17_31
# %bb.10:
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB17_55
# %bb.11:
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jle	.LBB17_55
# %bb.12:                               # %.preheader11
	movl	$1, %ebx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB17_25
	.p2align	4, 0x90
.LBB17_14:
	movq	(%rdi), %rcx
	movb	(%rcx), %dl
	shrb	$4, %dl
	cmpb	$6, %dl
	je	.LBB17_19
# %bb.15:
	cmpb	$2, %dl
	jne	.LBB17_17
# %bb.16:
	movq	8(%rcx), %rcx
	movq	72(%rcx), %r12
	addq	40(%rcx), %r12
	jmp	.LBB17_20
	.p2align	4, 0x90
.LBB17_19:
	movq	8(%rcx), %rdi
	callq	intsetLen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %r12d
	movq	-8(%rdi,%rbx,8), %rax
.LBB17_20:
	movb	(%rax), %cl
	shrb	$4, %cl
	cmpb	$6, %cl
	je	.LBB17_23
# %bb.21:
	cmpb	$2, %cl
	jne	.LBB17_17
# %bb.22:
	movq	8(%rax), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB17_24
	.p2align	4, 0x90
.LBB17_23:
	movq	8(%rax), %rdi
	callq	intsetLen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %eax
.LBB17_24:
	addq	%r12, %r15
	addq	%rax, %r14
.LBB17_25:                              # =>This Inner Loop Header: Depth=1
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jge	.LBB17_27
# %bb.26:                               #   in Loop: Header=BB17_25 Depth=1
	movq	(%rdi,%rbx,8), %rax
	addq	$1, %rbx
	testq	%rax, %rax
	jne	.LBB17_14
	jmp	.LBB17_25
.LBB17_55:
	movl	$1, %r15d
	callq	createIntsetObject
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r13
	jmp	.LBB17_56
.LBB17_27:
	movq	%r15, %rax
	shrq	$63, %rax
	addq	%r15, %rax
	sarq	%rax
	xorl	%ecx, %ecx
	cmpq	%r14, %rax
	setle	%cl
	movl	$2, %r15d
	subl	%ecx, %r15d
	cmpl	$2, -64(%rbp)           # 4-byte Folded Reload
	jl	.LBB17_28
# %bb.29:
	cmpq	%r14, %rax
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jg	.LBB17_31
# %bb.30:
	addq	$8, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	addl	$-1, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$qsortCompareSetsByRevCardinality, %ecx
	callq	qsort
	jmp	.LBB17_31
.LBB17_28:
	movl	-56(%rbp), %ebx         # 4-byte Reload
.LBB17_31:
	callq	createIntsetObject
	movq	%rax, %r13
	testl	%ebx, %ebx
	je	.LBB17_32
# %bb.51:
	cmpl	$1, %ebx
	jne	.LBB17_53
# %bb.52:
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB17_56:
	movq	(%rcx), %rbx
	cmpl	$1, %r15d
	jne	.LBB17_77
# %bb.57:
	testq	%rbx, %rbx
	je	.LBB17_77
# %bb.58:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r15)
	andb	$15, %al
	cmpb	$6, %al
	je	.LBB17_61
# %bb.59:
	cmpb	$2, %al
	jne	.LBB17_97
# %bb.60:
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r15)
	jmp	.LBB17_62
.LBB17_32:
	movl	$.L.str.16, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jle	.LBB17_33
# %bb.38:                               # %.preheader9
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	movq	-48(%rbp), %rax         # 8-byte Reload
	jmp	.LBB17_39
	.p2align	4, 0x90
.LBB17_49:                              #   in Loop: Header=BB17_39 Depth=1
	movq	%r15, %rdi
	callq	zfree
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB17_50:                              #   in Loop: Header=BB17_39 Depth=1
	addq	$1, %r14
	cmpq	-72(%rbp), %r14         # 8-byte Folded Reload
	jge	.LBB17_34
.LBB17_39:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_46 Depth 2
	movq	(%rax,%r14,8), %rbx
	testq	%rbx, %rbx
	je	.LBB17_50
# %bb.40:                               #   in Loop: Header=BB17_39 Depth=1
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r15)
	andb	$15, %al
	cmpb	$6, %al
	je	.LBB17_43
# %bb.41:                               #   in Loop: Header=BB17_39 Depth=1
	cmpb	$2, %al
	jne	.LBB17_97
# %bb.42:                               #   in Loop: Header=BB17_39 Depth=1
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r15)
	jmp	.LBB17_44
	.p2align	4, 0x90
.LBB17_43:                              #   in Loop: Header=BB17_39 Depth=1
	movl	$0, 12(%r15)
.LBB17_44:                              #   in Loop: Header=BB17_39 Depth=1
	movq	%r15, %rdi
	callq	setTypeNextObject
	testq	%rax, %rax
	je	.LBB17_47
# %bb.45:                               # %.preheader7
                                        #   in Loop: Header=BB17_39 Depth=1
	movq	%rax, %rbx
	.p2align	4, 0x90
.LBB17_46:                              #   Parent Loop BB17_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	setTypeAdd
	cmpl	$1, %eax
	sbbl	$-1, %r12d
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r15, %rdi
	callq	setTypeNextObject
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB17_46
.LBB17_47:                              #   in Loop: Header=BB17_39 Depth=1
	cmpl	$2, 8(%r15)
	jne	.LBB17_49
# %bb.48:                               #   in Loop: Header=BB17_39 Depth=1
	movq	16(%r15), %rdi
	callq	dictReleaseIterator
	jmp	.LBB17_49
.LBB17_77:
	xorl	%r12d, %r12d
	movl	$.L.str.17, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	cmpl	$2, %r15d
	jne	.LBB17_34
# %bb.78:
	testq	%rbx, %rbx
	je	.LBB17_34
# %bb.79:
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jle	.LBB17_34
# %bb.80:                               # %.preheader5
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB17_95
	.p2align	4, 0x90
.LBB17_82:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r15)
	andb	$15, %al
	cmpb	$6, %al
	je	.LBB17_85
# %bb.83:
	cmpb	$2, %al
	jne	.LBB17_97
# %bb.84:
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r15)
	jmp	.LBB17_86
	.p2align	4, 0x90
.LBB17_85:
	movl	$0, 12(%r15)
.LBB17_86:
	movq	%r15, %rdi
	callq	setTypeNextObject
	testq	%rax, %rax
	je	.LBB17_92
# %bb.87:
	movq	%rax, %rbx
	jmp	.LBB17_88
	.p2align	4, 0x90
.LBB17_90:                              #   in Loop: Header=BB17_88 Depth=1
	callq	setTypeRemove
	negl	%eax
	sbbl	%ecx, %ecx
.LBB17_91:                              #   in Loop: Header=BB17_88 Depth=1
	addl	%ecx, %r12d
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r15, %rdi
	callq	setTypeNextObject
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB17_92
.LBB17_88:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	testq	%r14, %r14
	jne	.LBB17_90
# %bb.89:                               #   in Loop: Header=BB17_88 Depth=1
	callq	setTypeAdd
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	jmp	.LBB17_91
	.p2align	4, 0x90
.LBB17_92:
	cmpl	$2, 8(%r15)
	jne	.LBB17_94
# %bb.93:
	movq	16(%r15), %rdi
	callq	dictReleaseIterator
.LBB17_94:
	movq	%r15, %rdi
	callq	zfree
	testl	%r12d, %r12d
	movq	-48(%rbp), %rcx         # 8-byte Reload
	je	.LBB17_33
.LBB17_95:                              # =>This Inner Loop Header: Depth=1
	leaq	1(%r14), %rax
	cmpq	-72(%rbp), %rax         # 8-byte Folded Reload
	jge	.LBB17_34
# %bb.96:                               #   in Loop: Header=BB17_95 Depth=1
	movq	8(%rcx,%r14,8), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	jne	.LBB17_82
	jmp	.LBB17_95
.LBB17_53:
	xorl	%r12d, %r12d
	jmp	.LBB17_54
.LBB17_33:
	xorl	%r12d, %r12d
	jmp	.LBB17_34
.LBB17_61:
	movl	$0, 12(%r15)
.LBB17_62:
	movq	%r15, %rdi
	callq	setTypeNextObject
	testq	%rax, %rax
	je	.LBB17_63
# %bb.64:
	movq	%rax, %r14
	xorl	%r12d, %r12d
	jmp	.LBB17_65
	.p2align	4, 0x90
.LBB17_73:                              #   in Loop: Header=BB17_65 Depth=1
	movq	%r14, %rdi
	callq	sdsfree
	movq	%r15, %rdi
	callq	setTypeNextObject
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB17_74
.LBB17_65:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_67 Depth 2
	movl	$1, %ebx
	cmpl	$2, -64(%rbp)           # 4-byte Folded Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jl	.LBB17_71
# %bb.66:                               # %.preheader1
                                        #   in Loop: Header=BB17_65 Depth=1
	movl	$1, %ebx
	jmp	.LBB17_67
	.p2align	4, 0x90
.LBB17_70:                              #   in Loop: Header=BB17_67 Depth=2
	addq	$1, %rbx
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jge	.LBB17_71
.LBB17_67:                              #   Parent Loop BB17_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB17_70
# %bb.68:                               #   in Loop: Header=BB17_67 Depth=2
	cmpq	(%rcx), %rdi
	je	.LBB17_71
# %bb.69:                               #   in Loop: Header=BB17_67 Depth=2
	movq	%r14, %rsi
	callq	setTypeIsMember
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB17_70
	.p2align	4, 0x90
.LBB17_71:                              #   in Loop: Header=BB17_65 Depth=1
	cmpl	-64(%rbp), %ebx         # 4-byte Folded Reload
	jne	.LBB17_73
# %bb.72:                               #   in Loop: Header=BB17_65 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	setTypeAdd
	addl	$1, %r12d
	jmp	.LBB17_73
.LBB17_63:
	xorl	%r12d, %r12d
.LBB17_74:
	cmpl	$2, 8(%r15)
	jne	.LBB17_76
# %bb.75:
	movq	16(%r15), %rdi
	callq	dictReleaseIterator
.LBB17_76:
	movq	%r15, %rdi
	callq	zfree
.LBB17_54:
	movl	$.L.str.17, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB17_34:
	movq	-88(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB17_35
# %bb.113:
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	movq	%rsi, %r15
	callq	dbDelete
	movl	%eax, %r14d
	movb	(%r13), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB17_116
# %bb.114:
	cmpb	$2, %al
	jne	.LBB17_17
# %bb.115:
	movq	8(%r13), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	testq	%rax, %rax
	je	.LBB17_123
.LBB17_118:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	dbAdd
	movb	(%r13), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB17_121
# %bb.119:
	cmpb	$2, %al
	jne	.LBB17_17
# %bb.120:
	movq	8(%r13), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	jmp	.LBB17_122
.LBB17_35:
	movslq	%r12d, %rsi
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%r13, (%rax)
	movl	(%r13), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r15)
	andb	$15, %al
	cmpb	$6, %al
	je	.LBB17_98
# %bb.36:
	cmpb	$2, %al
	jne	.LBB17_97
# %bb.37:
	movq	8(%r13), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r15)
	jmp	.LBB17_99
.LBB17_116:
	movq	8(%r13), %rdi
	callq	intsetLen
	movl	%eax, %eax
	testq	%rax, %rax
	jne	.LBB17_118
.LBB17_123:
	movq	%r13, %rdi
	callq	decrRefCount
	movq	shared+32(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	testl	%r14d, %r14d
	je	.LBB17_126
# %bb.124:
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	jmp	.LBB17_125
.LBB17_121:
	movq	8(%r13), %rdi
	callq	intsetLen
	movl	%eax, %esi
.LBB17_122:
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$32, %edi
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB17_125:
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
.LBB17_126:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	jmp	.LBB17_127
.LBB17_98:
	movl	$0, 12(%r15)
.LBB17_99:
	movq	%r15, %rdi
	callq	setTypeNextObject
	testq	%rax, %rax
	je	.LBB17_110
# %bb.100:                              # %.preheader
	movq	%rax, %rbx
	jmp	.LBB17_101
.LBB17_108:                             #   in Loop: Header=BB17_101 Depth=1
	movq	-17(%rbx), %rdx
	.p2align	4, 0x90
.LBB17_109:                             #   in Loop: Header=BB17_101 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r15, %rdi
	callq	setTypeNextObject
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB17_110
.LBB17_101:                             # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rbx), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB17_102
# %bb.103:                              #   in Loop: Header=BB17_101 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_104:                             #   in Loop: Header=BB17_101 Depth=1
	shrq	$3, %rdx
	jmp	.LBB17_109
.LBB17_106:                             #   in Loop: Header=BB17_101 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB17_109
.LBB17_107:                             #   in Loop: Header=BB17_101 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB17_109
.LBB17_105:                             #   in Loop: Header=BB17_101 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB17_109
.LBB17_102:                             #   in Loop: Header=BB17_101 Depth=1
	xorl	%edx, %edx
	jmp	.LBB17_109
.LBB17_110:
	cmpl	$2, 8(%r15)
	jne	.LBB17_112
# %bb.111:
	movq	16(%r15), %rdi
	callq	dictReleaseIterator
.LBB17_112:
	movq	%r15, %rdi
	callq	zfree
	movq	%r13, %rdi
	callq	decrRefCount
.LBB17_127:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	zfree                   # TAILCALL
.LBB17_17:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	jmp	.LBB17_18
.LBB17_97:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
.LBB17_18:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end17:
	.size	sunionDiffGenericCommand, .Lfunc_end17-sunionDiffGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI17_0:
	.quad	.LBB17_104
	.quad	.LBB17_105
	.quad	.LBB17_106
	.quad	.LBB17_107
	.quad	.LBB17_108
                                        # -- End function
	.text
	.globl	spopCommand             # -- Begin function spopCommand
	.p2align	4, 0x90
	.type	spopCommand,@function
spopCommand:                            # @spopCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rbx
	movl	64(%rdi), %eax
	cmpl	$3, %eax
	jne	.LBB18_1
# %bb.30:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	spopWithCountCommand    # TAILCALL
.LBB18_1:
	cmpl	$4, %eax
	jl	.LBB18_2
# %bb.31:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB18_2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB18_29
# %bb.3:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB18_29
# %bb.4:
	movb	(%r14), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB18_9
# %bb.5:
	cmpb	$2, %al
	jne	.LBB18_7
# %bb.6:
	movq	8(%r14), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rdi
	movq	$-123456789, %r12       # imm = 0xF8A432EB
	jmp	.LBB18_10
.LBB18_9:
	movq	8(%r14), %rdi
	callq	intsetRandom
	movq	%rax, %r12
	xorl	%edi, %edi
.LBB18_10:
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$96, %eax
	jne	.LBB18_12
# %bb.11:
	movq	%r12, %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %r15
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	intsetRemove
	movq	%rax, 8(%r14)
	jmp	.LBB18_21
.LBB18_12:
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB18_13
# %bb.14:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_15:
	shrq	$3, %rsi
	jmp	.LBB18_20
.LBB18_19:
	movq	-17(%rdi), %rsi
	jmp	.LBB18_20
.LBB18_17:
	movzwl	-5(%rdi), %esi
	jmp	.LBB18_20
.LBB18_16:
	movzbl	-3(%rdi), %esi
	jmp	.LBB18_20
.LBB18_18:
	movl	-9(%rdi), %esi
	jmp	.LBB18_20
.LBB18_13:
	xorl	%esi, %esi
.LBB18_20:
	callq	createStringObject
	movq	%rax, %r15
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	setTypeRemove
.LBB18_21:
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.11, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
	movl	$.L.str.12, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, %r12
	movq	72(%rbx), %rax
	movq	8(%rax), %rcx
	movq	%rbx, %rdi
	movl	$3, %esi
	movq	%r12, %rdx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	rewriteClientCommandVector
	movq	%r12, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	addReplyBulk
	movq	%r15, %rdi
	callq	decrRefCount
	movb	(%r14), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB18_25
# %bb.22:
	cmpb	$2, %al
	jne	.LBB18_24
# %bb.23:
	movq	8(%r14), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB18_26
.LBB18_25:
	movq	8(%r14), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB18_26:
	testq	%rax, %rax
	jne	.LBB18_28
# %bb.27:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
.LBB18_28:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
.LBB18_29:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_7:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$217, %esi
	jmp	.LBB18_8
.LBB18_24:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
.LBB18_8:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end18:
	.size	spopCommand, .Lfunc_end18-spopCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_15
	.quad	.LBB18_16
	.quad	.LBB18_17
	.quad	.LBB18_18
	.quad	.LBB18_19
                                        # -- End function
	.text
	.globl	srandmemberWithCountCommand # -- Begin function srandmemberWithCountCommand
	.p2align	4, 0x90
	.type	srandmemberWithCountCommand,@function
srandmemberWithCountCommand:            # @srandmemberWithCountCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	je	.LBB19_1
.LBB19_88:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_1:
	movq	-64(%rbp), %rbx
	movq	%rbx, %r14
	negq	%r14
	cmovlq	%rbx, %r14
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	movq	%r12, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB19_88
# %bb.2:
	movq	%rax, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB19_88
# %bb.3:
	movb	(%r15), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB19_8
# %bb.4:
	cmpb	$2, %al
	jne	.LBB19_6
# %bb.5:
	movq	8(%r15), %rax
	movq	72(%rax), %r13
	addq	40(%rax), %r13
	testq	%r14, %r14
	je	.LBB19_10
.LBB19_11:
	testq	%rbx, %rbx
	js	.LBB19_12
# %bb.29:
	cmpq	%r13, %r14
	jae	.LBB19_30
# %bb.31:
	movl	$objectKeyPointerValueDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	(%r14,%r14,2), %rax
	cmpq	%r13, %rax
	jbe	.LBB19_32
# %bb.37:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r15, (%rax)
	movl	(%r15), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%rbx)
	andb	$15, %al
	cmpb	$6, %al
	je	.LBB19_41
# %bb.38:
	cmpb	$2, %al
	jne	.LBB19_40
# %bb.39:
	movq	8(%r15), %rdi
	callq	dictGetIterator
	movq	%rbx, %r15
	addq	$16, %r15
	movq	%rax, 16(%rbx)
	jmp	.LBB19_42
.LBB19_8:
	movq	8(%r15), %rdi
	callq	intsetLen
	movl	%eax, %r13d
	testq	%r14, %r14
	jne	.LBB19_11
.LBB19_10:
	movq	shared+104(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB19_88
.LBB19_12:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	addReplyMultiBulkLen
	movl	$240, %r14d
	jmp	.LBB19_13
	.p2align	4, 0x90
.LBB19_18:                              #   in Loop: Header=BB19_13 Depth=1
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
.LBB19_28:                              #   in Loop: Header=BB19_13 Depth=1
	incq	%rbx
	je	.LBB19_88
.LBB19_13:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB19_16
# %bb.14:                               #   in Loop: Header=BB19_13 Depth=1
	cmpb	$2, %al
	jne	.LBB19_67
# %bb.15:                               #   in Loop: Header=BB19_13 Depth=1
	movq	8(%r15), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rsi
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB19_17
	.p2align	4, 0x90
.LBB19_16:                              #   in Loop: Header=BB19_13 Depth=1
	movq	8(%r15), %rdi
	callq	intsetRandom
	xorl	%esi, %esi
.LBB19_17:                              #   in Loop: Header=BB19_13 Depth=1
	movq	%rax, -56(%rbp)
	movl	(%r15), %ecx
	andl	%r14d, %ecx
	cmpl	$96, %ecx
	je	.LBB19_18
# %bb.19:                               #   in Loop: Header=BB19_13 Depth=1
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB19_20
# %bb.21:                               #   in Loop: Header=BB19_13 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI19_2(,%rax,8)
.LBB19_22:                              #   in Loop: Header=BB19_13 Depth=1
	shrq	$3, %rdx
	jmp	.LBB19_27
.LBB19_26:                              #   in Loop: Header=BB19_13 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB19_27
.LBB19_24:                              #   in Loop: Header=BB19_13 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB19_27
.LBB19_25:                              #   in Loop: Header=BB19_13 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB19_27
.LBB19_23:                              #   in Loop: Header=BB19_13 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB19_27
.LBB19_20:                              #   in Loop: Header=BB19_13 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB19_27:                              #   in Loop: Header=BB19_13 Depth=1
	movq	%r12, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB19_28
.LBB19_30:
	movq	72(%r12), %rsi
	addq	$8, %rsi
	movq	%r12, %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	sunionDiffGenericCommand
	jmp	.LBB19_88
.LBB19_32:
	testq	%rbx, %rbx
	je	.LBB19_84
# %bb.33:
	xorl	%r13d, %r13d
	jmp	.LBB19_34
.LBB19_82:                              #   in Loop: Header=BB19_34 Depth=1
	movq	%rbx, %rdi
	callq	decrRefCount
	cmpq	%r14, %r13
	jae	.LBB19_84
.LBB19_34:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB19_68
# %bb.35:                               #   in Loop: Header=BB19_34 Depth=1
	cmpb	$2, %al
	jne	.LBB19_67
# %bb.36:                               #   in Loop: Header=BB19_34 Depth=1
	movq	8(%r15), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rdi
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB19_69
.LBB19_68:                              #   in Loop: Header=BB19_34 Depth=1
	movq	8(%r15), %rdi
	callq	intsetRandom
	xorl	%edi, %edi
.LBB19_69:                              #   in Loop: Header=BB19_34 Depth=1
	movq	%rax, -56(%rbp)
	movl	(%r15), %ecx
	movl	$240, %edx
	andl	%edx, %ecx
	cmpl	$96, %ecx
	jne	.LBB19_71
# %bb.70:                               #   in Loop: Header=BB19_34 Depth=1
	movq	%rax, %rdi
	callq	createStringObjectFromLongLong
	jmp	.LBB19_80
.LBB19_71:                              #   in Loop: Header=BB19_34 Depth=1
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB19_72
# %bb.73:                               #   in Loop: Header=BB19_34 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI19_0(,%rax,8)
.LBB19_74:                              #   in Loop: Header=BB19_34 Depth=1
	shrq	$3, %rsi
	jmp	.LBB19_79
.LBB19_78:                              #   in Loop: Header=BB19_34 Depth=1
	movq	-17(%rdi), %rsi
	jmp	.LBB19_79
.LBB19_76:                              #   in Loop: Header=BB19_34 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB19_79
.LBB19_77:                              #   in Loop: Header=BB19_34 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB19_79
.LBB19_75:                              #   in Loop: Header=BB19_34 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB19_79
.LBB19_72:                              #   in Loop: Header=BB19_34 Depth=1
	xorl	%esi, %esi
.LBB19_79:                              #   in Loop: Header=BB19_34 Depth=1
	callq	createStringObject
.LBB19_80:                              #   in Loop: Header=BB19_34 Depth=1
	movq	%rax, %rbx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB19_82
# %bb.81:                               #   in Loop: Header=BB19_34 Depth=1
	addq	$1, %r13
	cmpq	%r14, %r13
	jb	.LBB19_34
	jmp	.LBB19_84
.LBB19_41:
	movl	$0, 12(%rbx)
	movq	%rbx, %r15
	addq	$16, %r15
	jmp	.LBB19_42
.LBB19_90:                              #   in Loop: Header=BB19_42 Depth=1
	movq	-56(%rbp), %rdi
	callq	createStringObjectFromLongLong
.LBB19_59:                              #   in Loop: Header=BB19_42 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB19_60
.LBB19_42:                              # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %eax
	cmpl	$6, %eax
	je	.LBB19_46
# %bb.43:                               #   in Loop: Header=BB19_42 Depth=1
	cmpl	$2, %eax
	jne	.LBB19_89
# %bb.44:                               #   in Loop: Header=BB19_42 Depth=1
	movq	(%r15), %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB19_62
# %bb.45:                               #   in Loop: Header=BB19_42 Depth=1
	movq	(%rax), %rdi
	movq	$-123456789, -56(%rbp)  # imm = 0xF8A432EB
	jmp	.LBB19_48
.LBB19_46:                              #   in Loop: Header=BB19_42 Depth=1
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movl	12(%rbx), %esi
	leal	1(%rsi), %eax
	movl	%eax, 12(%rbx)
                                        # kill: def $esi killed $esi killed $rsi
	leaq	-56(%rbp), %rdx
	callq	intsetGet
	testb	%al, %al
	je	.LBB19_62
# %bb.47:                               #   in Loop: Header=BB19_42 Depth=1
	xorl	%edi, %edi
.LBB19_48:                              #   in Loop: Header=BB19_42 Depth=1
	movl	8(%rbx), %eax
	cmpl	$6, %eax
	je	.LBB19_90
# %bb.49:                               #   in Loop: Header=BB19_42 Depth=1
	cmpl	$-1, %eax
	je	.LBB19_64
# %bb.50:                               #   in Loop: Header=BB19_42 Depth=1
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB19_51
# %bb.52:                               #   in Loop: Header=BB19_42 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI19_1(,%rax,8)
.LBB19_53:                              #   in Loop: Header=BB19_42 Depth=1
	shrq	$3, %rsi
	jmp	.LBB19_58
.LBB19_57:                              #   in Loop: Header=BB19_42 Depth=1
	movq	-17(%rdi), %rsi
	jmp	.LBB19_58
.LBB19_55:                              #   in Loop: Header=BB19_42 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB19_58
.LBB19_56:                              #   in Loop: Header=BB19_42 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB19_58
.LBB19_54:                              #   in Loop: Header=BB19_42 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB19_58
.LBB19_51:                              #   in Loop: Header=BB19_42 Depth=1
	xorl	%esi, %esi
.LBB19_58:                              #   in Loop: Header=BB19_42 Depth=1
	callq	createStringObject
	jmp	.LBB19_59
.LBB19_62:
	cmpl	$2, 8(%rbx)
	jne	.LBB19_64
# %bb.63:
	movq	(%r15), %rdi
	callq	dictReleaseIterator
.LBB19_64:
	movq	%rbx, %rdi
	callq	zfree
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	cmpq	%r13, %rax
	jne	.LBB19_91
# %bb.65:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB19_66:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	dictDelete
	addq	$-1, %r13
	cmpq	%r14, %r13
	ja	.LBB19_66
.LBB19_84:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	addReplyMultiBulkLen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB19_86:                              # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB19_87
# %bb.85:                               #   in Loop: Header=BB19_86 Depth=1
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	addReplyBulk
	movq	%rbx, %rdi
	jmp	.LBB19_86
.LBB19_87:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	dictRelease
	jmp	.LBB19_88
.LBB19_67:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$217, %esi
.LBB19_7:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB19_89:
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	movl	$165, %esi
	jmp	.LBB19_7
.LBB19_60:
	movl	$.L.str.13, %edi
	movl	$.L.str.1, %esi
	movl	$695, %edx              # imm = 0x2B7
.LBB19_61:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB19_6:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	jmp	.LBB19_7
.LBB19_40:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
	jmp	.LBB19_7
.LBB19_91:
	movl	$.L.str.14, %edi
	movl	$.L.str.1, %esi
	movl	$698, %edx              # imm = 0x2BA
	jmp	.LBB19_61
.Lfunc_end19:
	.size	srandmemberWithCountCommand, .Lfunc_end19-srandmemberWithCountCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_74
	.quad	.LBB19_75
	.quad	.LBB19_76
	.quad	.LBB19_77
	.quad	.LBB19_78
.LJTI19_1:
	.quad	.LBB19_53
	.quad	.LBB19_54
	.quad	.LBB19_55
	.quad	.LBB19_56
	.quad	.LBB19_57
.LJTI19_2:
	.quad	.LBB19_22
	.quad	.LBB19_23
	.quad	.LBB19_24
	.quad	.LBB19_25
	.quad	.LBB19_26
                                        # -- End function
	.text
	.globl	srandmemberCommand      # -- Begin function srandmemberCommand
	.p2align	4, 0x90
	.type	srandmemberCommand,@function
srandmemberCommand:                     # @srandmemberCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	64(%rdi), %eax
	cmpl	$3, %eax
	jne	.LBB20_1
# %bb.20:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	srandmemberWithCountCommand # TAILCALL
.LBB20_1:
	cmpl	$4, %eax
	jl	.LBB20_2
# %bb.21:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB20_2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB20_19
# %bb.3:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB20_4
.LBB20_19:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB20_4:
	movb	(%r14), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB20_8
# %bb.5:
	cmpb	$2, %al
	jne	.LBB20_7
# %bb.6:
	movq	8(%r14), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rsi
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB20_9
.LBB20_8:
	movq	8(%r14), %rdi
	callq	intsetRandom
	xorl	%esi, %esi
.LBB20_9:
	movl	$240, %ecx
	andl	(%r14), %ecx
	cmpl	$96, %ecx
	jne	.LBB20_10
# %bb.22:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyBulkLongLong    # TAILCALL
.LBB20_10:
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB20_11
# %bb.12:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI20_0(,%rax,8)
.LBB20_13:
	shrq	$3, %rdx
	jmp	.LBB20_18
.LBB20_17:
	movq	-17(%rsi), %rdx
	jmp	.LBB20_18
.LBB20_15:
	movzwl	-5(%rsi), %edx
	jmp	.LBB20_18
.LBB20_14:
	movzbl	-3(%rsi), %edx
	jmp	.LBB20_18
.LBB20_16:
	movl	-9(%rsi), %edx
	jmp	.LBB20_18
.LBB20_11:
	xorl	%edx, %edx
.LBB20_18:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyBulkCBuffer     # TAILCALL
.LBB20_7:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$217, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end20:
	.size	srandmemberCommand, .Lfunc_end20-srandmemberCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI20_0:
	.quad	.LBB20_13
	.quad	.LBB20_14
	.quad	.LBB20_15
	.quad	.LBB20_16
	.quad	.LBB20_17
                                        # -- End function
	.text
	.globl	qsortCompareSetsByCardinality # -- Begin function qsortCompareSetsByCardinality
	.p2align	4, 0x90
	.type	qsortCompareSetsByCardinality,@function
qsortCompareSetsByCardinality:          # @qsortCompareSetsByCardinality
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rax
	movb	(%rax), %cl
	shrb	$4, %cl
	cmpb	$6, %cl
	je	.LBB21_3
# %bb.1:
	cmpb	$2, %cl
	jne	.LBB21_16
# %bb.2:
	movq	8(%rax), %rax
	movq	72(%rax), %rbx
	addq	40(%rax), %rbx
	jmp	.LBB21_4
.LBB21_3:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %ebx
.LBB21_4:
	movq	(%r14), %rax
	movb	(%rax), %cl
	shrb	$4, %cl
	cmpb	$6, %cl
	je	.LBB21_7
# %bb.5:
	cmpb	$2, %cl
	jne	.LBB21_16
# %bb.6:
	movq	8(%rax), %rax
	movq	72(%rax), %rcx
	addq	40(%rax), %rcx
	jmp	.LBB21_8
.LBB21_7:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %ecx
.LBB21_8:
	movl	$1, %eax
	cmpq	%rcx, %rbx
	ja	.LBB21_19
# %bb.9:
	movq	(%r15), %rax
	movb	(%rax), %cl
	shrb	$4, %cl
	cmpb	$6, %cl
	je	.LBB21_12
# %bb.10:
	cmpb	$2, %cl
	jne	.LBB21_16
# %bb.11:
	movq	8(%rax), %rax
	movq	72(%rax), %rbx
	addq	40(%rax), %rbx
	jmp	.LBB21_13
.LBB21_12:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %ebx
.LBB21_13:
	movq	(%r14), %rax
	movb	(%rax), %cl
	shrb	$4, %cl
	cmpb	$6, %cl
	je	.LBB21_17
# %bb.14:
	cmpb	$2, %cl
	jne	.LBB21_16
# %bb.15:
	movq	8(%rax), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB21_18
.LBB21_17:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB21_18:
	cmpq	%rax, %rbx
	sbbl	%eax, %eax
.LBB21_19:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_16:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end21:
	.size	qsortCompareSetsByCardinality, .Lfunc_end21-qsortCompareSetsByCardinality
                                        # -- End function
	.globl	qsortCompareSetsByRevCardinality # -- Begin function qsortCompareSetsByRevCardinality
	.p2align	4, 0x90
	.type	qsortCompareSetsByRevCardinality,@function
qsortCompareSetsByRevCardinality:       # @qsortCompareSetsByRevCardinality
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	(%rdi), %rax
	movq	(%rsi), %r14
	testq	%rax, %rax
	je	.LBB22_1
# %bb.2:
	movb	(%rax), %cl
	shrb	$4, %cl
	cmpb	$6, %cl
	je	.LBB22_5
# %bb.3:
	cmpb	$2, %cl
	jne	.LBB22_11
# %bb.4:
	movq	8(%rax), %rax
	movq	72(%rax), %rbx
	addq	40(%rax), %rbx
	testq	%r14, %r14
	jne	.LBB22_8
	jmp	.LBB22_7
.LBB22_1:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB22_7
.LBB22_8:
	movb	(%r14), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB22_12
# %bb.9:
	cmpb	$2, %al
	jne	.LBB22_11
# %bb.10:
	movq	8(%r14), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB22_13
.LBB22_5:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %ebx
	testq	%r14, %r14
	jne	.LBB22_8
.LBB22_7:
	xorl	%eax, %eax
	jmp	.LBB22_13
.LBB22_12:
	movq	8(%r14), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB22_13:
	xorl	%ecx, %ecx
	cmpq	%rax, %rbx
	seta	%cl
	negl	%ecx
	cmpq	%rax, %rbx
	movl	$1, %eax
	cmovael	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB22_11:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end22:
	.size	qsortCompareSetsByRevCardinality, .Lfunc_end22-qsortCompareSetsByRevCardinality
                                        # -- End function
	.globl	sinterGenericCommand    # -- Begin function sinterGenericCommand
	.p2align	4, 0x90
	.type	sinterGenericCommand,@function
sinterGenericCommand:                   # @sinterGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r13
	leaq	(,%rdx,8), %rdi
	callq	zmalloc
	movq	%rax, %r15
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB23_14
# %bb.1:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rdi
	movq	(%r14,%rbx,8), %rsi
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB23_4
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	callq	lookupKeyWrite
	jmp	.LBB23_5
	.p2align	4, 0x90
.LBB23_4:                               #   in Loop: Header=BB23_2 Depth=1
	callq	lookupKeyRead
.LBB23_5:                               #   in Loop: Header=BB23_2 Depth=1
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB23_6
# %bb.12:                               #   in Loop: Header=BB23_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB23_78
# %bb.13:                               #   in Loop: Header=BB23_2 Depth=1
	movq	%r12, (%r15,%rbx,8)
	addq	$1, %rbx
	cmpq	-56(%rbp), %rbx         # 8-byte Folded Reload
	jb	.LBB23_2
.LBB23_14:
	movl	$8, %edx
	movl	$qsortCompareSetsByCardinality, %ecx
	movq	%r15, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	qsort
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB23_15
# %bb.16:
	xorl	%r14d, %r14d
	callq	createIntsetObject
	jmp	.LBB23_17
.LBB23_15:
	movq	%r13, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, %r14
	xorl	%eax, %eax
.LBB23_17:
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	(%r15), %rbx
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r12)
	andb	$15, %al
	cmpb	$6, %al
	movq	%r14, -104(%rbp)        # 8-byte Spill
	je	.LBB23_22
# %bb.18:
	cmpb	$2, %al
	jne	.LBB23_20
# %bb.19:
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%r12, %rcx
	addq	$16, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, 16(%r12)
	jmp	.LBB23_23
.LBB23_22:
	movl	$0, 12(%r12)
	movq	%r12, %rax
	addq	$16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB23_23:
	movq	%r13, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%r12, -112(%rbp)        # 8-byte Spill
	jmp	.LBB23_24
	.p2align	4, 0x90
.LBB23_58:                              #   in Loop: Header=BB23_24 Depth=1
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	setTypeAdd
.LBB23_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_33 Depth 2
	movl	8(%r12), %eax
	cmpl	$6, %eax
	je	.LBB23_28
# %bb.25:                               #   in Loop: Header=BB23_24 Depth=1
	cmpl	$2, %eax
	jne	.LBB23_80
# %bb.26:                               #   in Loop: Header=BB23_24 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB23_59
# %bb.27:                               #   in Loop: Header=BB23_24 Depth=1
	movq	(%rax), %r14
	movq	$-123456789, -64(%rbp)  # imm = 0xF8A432EB
	jmp	.LBB23_30
	.p2align	4, 0x90
.LBB23_28:                              #   in Loop: Header=BB23_24 Depth=1
	movq	(%r12), %rax
	movq	8(%rax), %rdi
	movl	12(%r12), %esi
	leal	1(%rsi), %eax
	movl	%eax, 12(%r12)
                                        # kill: def $esi killed $esi killed $rsi
	leaq	-64(%rbp), %rdx
	callq	intsetGet
	testb	%al, %al
	je	.LBB23_59
# %bb.29:                               #   in Loop: Header=BB23_24 Depth=1
	xorl	%r14d, %r14d
.LBB23_30:                              #   in Loop: Header=BB23_24 Depth=1
	movl	8(%r12), %r13d
	cmpl	$-1, %r13d
	je	.LBB23_61
# %bb.31:                               #   in Loop: Header=BB23_24 Depth=1
	movl	$1, %r12d
	cmpq	$2, %rbx
	jb	.LBB23_43
# %bb.32:                               # %.preheader
                                        #   in Loop: Header=BB23_24 Depth=1
	movl	$1, %r12d
	jmp	.LBB23_33
	.p2align	4, 0x90
.LBB23_41:                              #   in Loop: Header=BB23_33 Depth=2
	movq	%r14, %rsi
	callq	setTypeIsMember
	testl	%eax, %eax
	je	.LBB23_43
.LBB23_42:                              #   in Loop: Header=BB23_33 Depth=2
	addq	$1, %r12
	cmpq	%rbx, %r12
	jae	.LBB23_43
.LBB23_33:                              #   Parent Loop BB23_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15,%r12,8), %rdi
	cmpq	(%r15), %rdi
	je	.LBB23_42
# %bb.34:                               #   in Loop: Header=BB23_33 Depth=2
	cmpl	$2, %r13d
	je	.LBB23_41
# %bb.35:                               #   in Loop: Header=BB23_33 Depth=2
	cmpl	$6, %r13d
	jne	.LBB23_42
# %bb.36:                               #   in Loop: Header=BB23_33 Depth=2
	movl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$240, %ecx
	cmpl	$96, %ecx
	jne	.LBB23_39
# %bb.37:                               #   in Loop: Header=BB23_33 Depth=2
	movq	8(%rdi), %rdi
	movq	-64(%rbp), %rsi
	callq	intsetFind
	testb	%al, %al
	je	.LBB23_43
# %bb.38:                               #   in Loop: Header=BB23_33 Depth=2
	movq	(%r15,%r12,8), %rax
	movl	(%rax), %eax
.LBB23_39:                              #   in Loop: Header=BB23_33 Depth=2
	andl	$240, %eax
	cmpl	$32, %eax
	jne	.LBB23_42
# %bb.40:                               #   in Loop: Header=BB23_33 Depth=2
	movq	-64(%rbp), %rdi
	callq	sdsfromlonglong
	movq	%rax, %r14
	movq	(%r15,%r12,8), %rdi
	movq	%rax, %rsi
	callq	setTypeIsMember
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	sdsfree
	testl	%ebx, %ebx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB23_42
	.p2align	4, 0x90
.LBB23_43:                              #   in Loop: Header=BB23_24 Depth=1
	cmpq	%rbx, %r12
	movq	-112(%rbp), %r12        # 8-byte Reload
	jne	.LBB23_24
# %bb.44:                               #   in Loop: Header=BB23_24 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB23_45
# %bb.56:                               #   in Loop: Header=BB23_24 Depth=1
	cmpl	$6, %r13d
	jne	.LBB23_58
# %bb.57:                               #   in Loop: Header=BB23_24 Depth=1
	movq	-64(%rbp), %rdi
	callq	sdsfromlonglong
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	setTypeAdd
	movq	%rbx, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	callq	sdsfree
	jmp	.LBB23_24
.LBB23_45:                              #   in Loop: Header=BB23_24 Depth=1
	cmpl	$2, %r13d
	jne	.LBB23_55
# %bb.46:                               #   in Loop: Header=BB23_24 Depth=1
	movzbl	-1(%r14), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	-72(%rbp), %rdi         # 8-byte Reload
	ja	.LBB23_47
# %bb.48:                               #   in Loop: Header=BB23_24 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_49:                              #   in Loop: Header=BB23_24 Depth=1
	shrq	$3, %rdx
	jmp	.LBB23_54
.LBB23_55:                              #   in Loop: Header=BB23_24 Depth=1
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	addReplyBulkLongLong
	addq	$1, -88(%rbp)           # 8-byte Folded Spill
	jmp	.LBB23_24
.LBB23_47:                              #   in Loop: Header=BB23_24 Depth=1
	xorl	%edx, %edx
	jmp	.LBB23_54
.LBB23_50:                              #   in Loop: Header=BB23_24 Depth=1
	movzbl	-3(%r14), %edx
	jmp	.LBB23_54
.LBB23_51:                              #   in Loop: Header=BB23_24 Depth=1
	movzwl	-5(%r14), %edx
	jmp	.LBB23_54
.LBB23_52:                              #   in Loop: Header=BB23_24 Depth=1
	movl	-9(%r14), %edx
	jmp	.LBB23_54
.LBB23_53:                              #   in Loop: Header=BB23_24 Depth=1
	movq	-17(%r14), %rdx
.LBB23_54:                              #   in Loop: Header=BB23_24 Depth=1
	movq	%r14, %rsi
	callq	addReplyBulkCBuffer
	addq	$1, -88(%rbp)           # 8-byte Folded Spill
	jmp	.LBB23_24
.LBB23_59:
	cmpl	$2, 8(%r12)
	jne	.LBB23_61
# %bb.60:
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	callq	dictReleaseIterator
.LBB23_61:
	movq	%r12, %rdi
	callq	zfree
	movq	-48(%rbp), %r13         # 8-byte Reload
	testq	%r13, %r13
	je	.LBB23_77
# %bb.62:
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	16(%r12), %rdi
	movq	%r13, %rsi
	callq	dbDelete
	movl	%eax, %r14d
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB23_65
# %bb.63:
	cmpb	$2, %al
	jne	.LBB23_70
# %bb.64:
	movq	8(%rbx), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	testq	%rax, %rax
	je	.LBB23_73
.LBB23_67:
	movq	16(%r12), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	dbAdd
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB23_71
# %bb.68:
	cmpb	$2, %al
	jne	.LBB23_70
# %bb.69:
	movq	8(%rbx), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	jmp	.LBB23_72
.LBB23_77:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	setDeferredMultiBulkLength
	jmp	.LBB23_78
.LBB23_6:
	movq	%r15, %rdi
	callq	zfree
	movq	-48(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB23_11
# %bb.7:
	movq	16(%r13), %rdi
	movq	%rbx, %rsi
	callq	dbDelete
	testl	%eax, %eax
	je	.LBB23_9
# %bb.8:
	movq	16(%r13), %rdi
	movq	%rbx, %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
.LBB23_9:
	movq	shared+32(%rip), %rsi
	jmp	.LBB23_10
.LBB23_65:
	movq	8(%rbx), %rdi
	callq	intsetLen
	movl	%eax, %eax
	testq	%rax, %rax
	jne	.LBB23_67
.LBB23_73:
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	shared+32(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	testl	%r14d, %r14d
	je	.LBB23_76
# %bb.74:
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	jmp	.LBB23_75
.LBB23_71:
	movq	8(%rbx), %rdi
	callq	intsetLen
	movl	%eax, %esi
.LBB23_72:
	movq	%r12, %rdi
	callq	addReplyLongLong
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$32, %edi
.LBB23_75:
	movq	%r13, %rdx
	callq	notifyKeyspaceEvent
.LBB23_76:
	movq	16(%r12), %rdi
	movq	%r13, %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
.LBB23_78:
	movq	%r15, %rdi
	callq	zfree
	jmp	.LBB23_79
.LBB23_11:
	movq	shared+104(%rip), %rsi
.LBB23_10:
	movq	%r13, %rdi
	callq	addReply
.LBB23_79:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_80:
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	movl	$165, %esi
.LBB23_21:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB23_20:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
	jmp	.LBB23_21
.LBB23_70:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	jmp	.LBB23_21
.Lfunc_end23:
	.size	sinterGenericCommand, .Lfunc_end23-sinterGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_49
	.quad	.LBB23_50
	.quad	.LBB23_51
	.quad	.LBB23_52
	.quad	.LBB23_53
                                        # -- End function
	.text
	.globl	sinterCommand           # -- Begin function sinterCommand
	.p2align	4, 0x90
	.type	sinterCommand,@function
sinterCommand:                          # @sinterCommand
# %bb.0:
	movq	72(%rdi), %rsi
	addq	$8, %rsi
	movslq	64(%rdi), %rdx
	addq	$-1, %rdx
	xorl	%ecx, %ecx
	jmp	sinterGenericCommand    # TAILCALL
.Lfunc_end24:
	.size	sinterCommand, .Lfunc_end24-sinterCommand
                                        # -- End function
	.globl	sinterstoreCommand      # -- Begin function sinterstoreCommand
	.p2align	4, 0x90
	.type	sinterstoreCommand,@function
sinterstoreCommand:                     # @sinterstoreCommand
# %bb.0:
	movq	72(%rdi), %rsi
	movslq	64(%rdi), %rdx
	addq	$-2, %rdx
	movq	8(%rsi), %rcx
	addq	$16, %rsi
	jmp	sinterGenericCommand    # TAILCALL
.Lfunc_end25:
	.size	sinterstoreCommand, .Lfunc_end25-sinterstoreCommand
                                        # -- End function
	.globl	sunionCommand           # -- Begin function sunionCommand
	.p2align	4, 0x90
	.type	sunionCommand,@function
sunionCommand:                          # @sunionCommand
# %bb.0:
	movq	72(%rdi), %rsi
	addq	$8, %rsi
	movl	64(%rdi), %edx
	addl	$-1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	sunionDiffGenericCommand # TAILCALL
.Lfunc_end26:
	.size	sunionCommand, .Lfunc_end26-sunionCommand
                                        # -- End function
	.globl	sunionstoreCommand      # -- Begin function sunionstoreCommand
	.p2align	4, 0x90
	.type	sunionstoreCommand,@function
sunionstoreCommand:                     # @sunionstoreCommand
# %bb.0:
	movq	72(%rdi), %rsi
	movl	64(%rdi), %edx
	addl	$-2, %edx
	movq	8(%rsi), %rcx
	addq	$16, %rsi
	xorl	%r8d, %r8d
	jmp	sunionDiffGenericCommand # TAILCALL
.Lfunc_end27:
	.size	sunionstoreCommand, .Lfunc_end27-sunionstoreCommand
                                        # -- End function
	.globl	sdiffCommand            # -- Begin function sdiffCommand
	.p2align	4, 0x90
	.type	sdiffCommand,@function
sdiffCommand:                           # @sdiffCommand
# %bb.0:
	movq	72(%rdi), %rsi
	addq	$8, %rsi
	movl	64(%rdi), %edx
	addl	$-1, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	jmp	sunionDiffGenericCommand # TAILCALL
.Lfunc_end28:
	.size	sdiffCommand, .Lfunc_end28-sdiffCommand
                                        # -- End function
	.globl	sdiffstoreCommand       # -- Begin function sdiffstoreCommand
	.p2align	4, 0x90
	.type	sdiffstoreCommand,@function
sdiffstoreCommand:                      # @sdiffstoreCommand
# %bb.0:
	movq	72(%rdi), %rsi
	movl	64(%rdi), %edx
	addl	$-2, %edx
	movq	8(%rsi), %rcx
	addq	$16, %rsi
	movl	$1, %r8d
	jmp	sunionDiffGenericCommand # TAILCALL
.Lfunc_end29:
	.size	sdiffstoreCommand, .Lfunc_end29-sdiffstoreCommand
                                        # -- End function
	.globl	sscanCommand            # -- Begin function sscanCommand
	.p2align	4, 0x90
	.type	sscanCommand,@function
sscanCommand:                           # @sscanCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-24(%rbp), %rdx
	callq	parseScanCursorOrReply
	cmpl	$-1, %eax
	je	.LBB30_4
# %bb.1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+360(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB30_4
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB30_4
# %bb.3:
	movq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	scanGenericCommand
.LBB30_4:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end30:
	.size	sscanCommand, .Lfunc_end30-sscanCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dictAdd(subject->ptr,sdsdup(value),NULL) == DICT_OK"
	.size	.L.str, 52

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_set.c"
	.size	.L.str.1, 73

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Unknown set encoding"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Wrong set encoding in setTypeNext"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unsupported encoding"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"setobj->type == OBJ_SET && setobj->encoding == OBJ_ENCODING_INTSET"
	.size	.L.str.5, 67

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dictAdd(d,element,NULL) == DICT_OK"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unsupported set conversion"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"sadd"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"srem"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"del"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"spop"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"SREM"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"retval == DICT_OK"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dictSize(d) == size"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"sinterstore"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"sunionstore"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"sdiffstore"
	.size	.L.str.17, 11

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
