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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	callq	createSetObject
	jmp	.LBB0_3
.LBB0_1:
	callq	createIntsetObject
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB1_9
# %bb.1:
	movq	8(%rbx), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	dictAddRaw
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_18
# %bb.2:
	movq	%rax, %r15
	movq	(%rbx), %rax
	movq	8(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_4
# %bb.3:
	movq	8(%rbx), %r12
	movq	%r14, %rdi
	callq	sdsdup
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	*%r13
	jmp	.LBB1_5
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB1_17
# %bb.10:
	leaq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	isSdsRepresentableAsLongLong
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_11
# %bb.15:
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
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB1_19
# %bb.16:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$79, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB1_11:
	movb	$0, -41(%rbp)
	movq	8(%rbx), %rdi
	movq	-56(%rbp), %rsi
	leaq	-41(%rbp), %rdx
	callq	intsetAdd
	movq	%rax, 8(%rbx)
	cmpb	$0, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_18
# %bb.12:
	movq	%rax, %rdi
	callq	intsetLen
	movl	%eax, %eax
	cmpq	%rax, server+2816(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_14
# %bb.13:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	setTypeConvert
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_14
.LBB1_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB1_19
.LBB1_4:
	movq	%r14, %rdi
	callq	sdsdup
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r15)
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_6
# %bb.7:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	*%rcx
	jmp	.LBB1_8
.LBB1_6:
	xorl	%eax, %eax
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 8(%r15)
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB1_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_17:
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
	subq	$24, %rsp
	movq	%rdi, %r14
	movl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB2_17
# %bb.1:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %eax
	jne	.LBB2_17
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jne	.LBB2_16
# %bb.3:
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
	andl	$15, %eax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB2_5
# %bb.4:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%rbx)
	jmp	.LBB2_7
.LBB2_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB2_11
# %bb.6:
	movl	$0, 12(%rbx)
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %r12
	leaq	-56(%rbp), %r13
	.p2align	4, 0x90
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	setTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_13
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdi
	callq	sdsfromlonglong
	movq	%rax, -48(%rbp)
	movq	%r15, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_8
# %bb.10:
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$252, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB2_13:
	cmpl	$2, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_15
# %bb.14:
	movq	16(%rbx), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB2_15:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$-241, %eax
	andl	(%r14), %eax
	orl	$32, %eax
	movl	%eax, (%r14)
	movq	8(%r14), %rdi
	callq	zfree
	movq	%r15, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_17:
	movl	$.L.str.5, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$238, %r8d
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB2_16:
	movl	$.L.str.1, %edi
	movl	$.L.str.7, %edx
	movl	$260, %esi              # imm = 0x104
	jmp	.LBB2_12
.LBB2_11:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
.LBB2_12:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
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
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB3_4
# %bb.1:
	movq	8(%rbx), %rdi
	callq	dictDelete
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_7
# %bb.2:
	movq	8(%rbx), %rdi
	callq	htNeedsResize
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testl	%eax, %eax
	je	.LBB3_7
# %bb.3:
	movq	8(%rbx), %rdi
	callq	dictResize
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_7
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB3_9
# %bb.5:
	leaq	-32(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	isSdsRepresentableAsLongLong
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_6
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB3_6:
	movq	8(%rbx), %rdi
	movq	-32(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	callq	intsetRemove
	movq	%rax, 8(%rbx)
	cmpl	$0, -20(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
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
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB4_2
# %bb.1:
	movq	8(%rbx), %rdi
	callq	dictFind
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	jmp	.LBB4_5
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB4_6
# %bb.3:
	leaq	-16(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	isSdsRepresentableAsLongLong
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB4_5
# %bb.4:
	movq	8(%rbx), %rdi
	movq	-16(%rbp), %rsi
	callq	intsetFind
	movzbl	%al, %eax
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	andl	$15, %eax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB5_2
# %bb.1:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%rbx)
	jmp	.LBB5_4
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB5_5
# %bb.3:
	movl	$0, 12(%rbx)
.LBB5_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_5:
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_2
# %bb.1:
	movq	16(%rbx), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB6_2:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB7_3
# %bb.1:
	movq	16(%rbx), %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_7
# %bb.2:
	movq	(%rax), %rax
	movq	%rax, (%r14)
	movq	$-123456789, (%r15)     # imm = 0xF8A432EB
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_6
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB7_10
# %bb.4:
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movl	12(%rbx), %esi
	leal	1(%rsi), %eax
	movl	%eax, 12(%rbx)
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r15, %rdx
	callq	intsetGet
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB7_8
# %bb.5:
	movq	$0, (%r14)
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rbx), %eax
	jmp	.LBB7_9
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_8:
	movl	$-1, %eax
.LBB7_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$16, %rsp
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	setTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB8_1
# %bb.2:
	cmpl	$2, %eax
	je	.LBB8_6
# %bb.3:
	cmpl	$6, %eax
	jne	.LBB8_5
# %bb.4:
	movq	-16(%rbp), %rdi
	callq	sdsfromlonglong
	jmp	.LBB8_7
.LBB8_6:
	movq	-8(%rbp), %rdi
	callq	sdsdup
	jmp	.LBB8_7
.LBB8_1:
	xorl	%eax, %eax
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB8_5:
	movl	$.L.str.1, %edi
	movl	$.L.str.4, %edx
	movl	$190, %esi
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
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB9_2
# %bb.1:
	movq	8(%rbx), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rax
	movq	%rax, (%r15)
	movq	$-123456789, (%r14)     # imm = 0xF8A432EB
	jmp	.LBB9_4
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB9_5
# %bb.3:
	movq	8(%rbx), %rdi
	callq	intsetRandom
	movq	%rax, (%r14)
	movq	$0, (%r15)
.LBB9_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_5:
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
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB10_2
# %bb.1:
	movq	8(%rdi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB10_4
.LBB10_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB10_5
# %bb.3:
	movq	8(%rdi), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB10_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB10_5:
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
	movq	%rdi, %r12
	movq	16(%rdi), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_1
# %bb.12:
	movq	%rax, %r14
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB11_5
# %bb.13:
	movq	shared+112(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB11_17
.LBB11_1:
	movq	72(%r12), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	callq	isSdsRepresentableAsLongLong
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_2
# %bb.3:
	callq	createSetObject
	jmp	.LBB11_4
.LBB11_2:
	callq	createIntsetObject
.LBB11_4:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$3, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB11_15
# %bb.6:                                # %.preheader
	xorl	%r15d, %r15d
	movl	$2, %ebx
	jmp	.LBB11_7
	.p2align	4, 0x90
.LBB11_9:                               #   in Loop: Header=BB11_7 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB11_10
.LBB11_7:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	setTypeAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_9
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_9
.LBB11_10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB11_11
# %bb.14:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.8, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
.LBB11_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_16
.LBB11_11:
	xorl	%r15d, %r15d
.LBB11_16:
	movslq	%r15d, %rsi
	addq	%rsi, server+2080(%rip)
	movq	%r12, %rdi
	callq	addReplyLongLong
.LBB11_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_20
# %bb.1:
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB12_20
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$3, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB12_18
# %bb.3:
	movl	$2, %ebx
	jmp	.LBB12_4
	.p2align	4, 0x90
.LBB12_6:                               #   in Loop: Header=BB12_4 Depth=1
	movq	8(%r12), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB12_9:                               #   in Loop: Header=BB12_4 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_10
.LBB12_11:                              #   in Loop: Header=BB12_4 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB12_12
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdi
	callq	setTypeRemove
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB12_11
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB12_6
# %bb.7:                                #   in Loop: Header=BB12_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB12_21
# %bb.8:                                #   in Loop: Header=BB12_4 Depth=1
	movq	8(%r12), %rdi
	callq	intsetLen
	movl	%eax, %eax
	jmp	.LBB12_9
.LBB12_12:
	xorl	%ebx, %ebx
	jmp	.LBB12_13
.LBB12_10:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB12_13:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB12_14
# %bb.15:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB12_17
# %bb.16:
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB12_17:
	movslq	%r15d, %r15
	addq	%r15, server+2080(%rip)
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_19:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	addReplyLongLong
.LBB12_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_14:
	xorl	%r15d, %r15d
	jmp	.LBB12_19
.LBB12_21:
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
	movq	%rax, %r14
	movq	72(%rbx), %rax
	movq	24(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB13_1
# %bb.2:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_23
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB13_5
# %bb.4:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_23
.LBB13_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rsi
	cmpq	%r14, %r15
	je	.LBB13_6
# %bb.7:
	movq	%r15, %rdi
	callq	setTypeRemove
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_1
# %bb.8:
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.9, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
	movl	(%r15), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB13_10
# %bb.9:
	movq	8(%r15), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB13_12
.LBB13_1:
	movq	shared+32(%rip), %rsi
.LBB13_22:
	movq	%rbx, %rdi
	callq	addReply
.LBB13_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_6:
	movq	%r15, %rdi
	callq	setTypeIsMember
	testl	%eax, %eax
	movl	$shared+32, %eax
	movl	$shared+40, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rsi
	jmp	.LBB13_22
.LBB13_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB13_24
# %bb.11:
	movq	8(%r15), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB13_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB13_14
# %bb.13:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB13_14:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB13_19
# %bb.15:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	callq	isSdsRepresentableAsLongLong
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_16
# %bb.17:
	callq	createSetObject
	jmp	.LBB13_18
.LBB13_16:
	callq	createIntsetObject
.LBB13_18:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
.LBB13_19:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_21
# %bb.20:
	addq	$1, server+2080(%rip)
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	16(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.8, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB13_21:
	movq	shared+40(%rip), %rsi
	jmp	.LBB13_22
.LBB13_24:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_6
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB14_6
# %bb.2:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	setTypeIsMember
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_4
# %bb.3:
	movq	shared+40(%rip), %rsi
	jmp	.LBB14_5
.LBB14_4:
	movq	shared+32(%rip), %rsi
.LBB14_5:
	movq	%r14, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
.LBB14_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_7
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_7
# %bb.2:
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB15_4
# %bb.3:
	movq	8(%rbx), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	jmp	.LBB15_6
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB15_8
# %bb.5:
	movq	8(%rbx), %rdi
	callq	intsetLen
	movl	%eax, %esi
.LBB15_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	addReplyLongLong
.LBB15_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB15_8:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB16_88
# %bb.1:
	movq	-88(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	js	.LBB16_6
# %bb.2:
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	movq	%r13, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_88
# %bb.3:
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB16_88
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB16_5
# %bb.8:
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB16_10
# %bb.9:
	movq	8(%r14), %rax
	movq	72(%rax), %r12
	addq	40(%rax), %r12
	jmp	.LBB16_12
.LBB16_6:
	movq	shared+144(%rip), %rsi
.LBB16_7:
	movq	%r13, %rdi
	callq	addReply
.LBB16_88:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
.LBB16_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB16_14
# %bb.11:
	movq	8(%r14), %rdi
	callq	intsetLen
	movl	%eax, %r12d
.LBB16_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rax
	movq	72(%r13), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.11, %esi
	movl	$32, %edi
	callq	notifyKeyspaceEvent
	addq	%r15, server+2080(%rip)
	movq	%r12, %rbx
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %rbx
	jbe	.LBB16_13
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB16_17
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB16_42
# %bb.43:
	subq	%r12, %r15
	xorl	%r12d, %r12d
	jmp	.LBB16_44
.LBB16_22:                              #   in Loop: Header=BB16_17 Depth=1
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
.LBB16_40:                              #   in Loop: Header=BB16_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB16_86
.LBB16_17:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB16_19
# %bb.18:                               #   in Loop: Header=BB16_17 Depth=1
	movq	8(%r14), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rbx
	movq	%rbx, -56(%rbp)
	movq	$-123456789, -48(%rbp)  # imm = 0xF8A432EB
	movl	$42, __A_VARIABLE(%rip)
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB16_21
.LBB16_19:                              #   in Loop: Header=BB16_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB16_89
# %bb.20:                               #   in Loop: Header=BB16_17 Depth=1
	movq	8(%r14), %rdi
	callq	intsetRandom
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB16_21:                              #   in Loop: Header=BB16_17 Depth=1
	addq	$-1, %r15
	movl	(%r14), %ecx
	movl	$240, %edx
	andl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %ecx
	je	.LBB16_22
# %bb.23:                               #   in Loop: Header=BB16_17 Depth=1
	movzbl	-1(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB16_24
# %bb.25:                               #   in Loop: Header=BB16_17 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI16_2(,%rax,8)
.LBB16_26:                              #   in Loop: Header=BB16_17 Depth=1
	shrq	$3, %rdx
	jmp	.LBB16_31
.LBB16_30:                              #   in Loop: Header=BB16_17 Depth=1
	movq	-17(%rbx), %rdx
	jmp	.LBB16_31
.LBB16_28:                              #   in Loop: Header=BB16_17 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB16_31
.LBB16_29:                              #   in Loop: Header=BB16_17 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB16_31
.LBB16_27:                              #   in Loop: Header=BB16_17 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB16_31
.LBB16_24:                              #   in Loop: Header=BB16_17 Depth=1
	xorl	%edx, %edx
.LBB16_31:                              #   in Loop: Header=BB16_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
	movzbl	-1(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB16_32
# %bb.33:                               #   in Loop: Header=BB16_17 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI16_3(,%rax,8)
.LBB16_34:                              #   in Loop: Header=BB16_17 Depth=1
	shrq	$3, %rsi
	jmp	.LBB16_39
.LBB16_38:                              #   in Loop: Header=BB16_17 Depth=1
	movq	-17(%rbx), %rsi
	jmp	.LBB16_39
.LBB16_36:                              #   in Loop: Header=BB16_17 Depth=1
	movzwl	-5(%rbx), %esi
	jmp	.LBB16_39
.LBB16_37:                              #   in Loop: Header=BB16_17 Depth=1
	movl	-9(%rbx), %esi
	jmp	.LBB16_39
.LBB16_35:                              #   in Loop: Header=BB16_17 Depth=1
	movzbl	-3(%rbx), %esi
	jmp	.LBB16_39
.LBB16_32:                              #   in Loop: Header=BB16_17 Depth=1
	xorl	%esi, %esi
.LBB16_39:                              #   in Loop: Header=BB16_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	createStringObject
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	setTypeRemove
	jmp	.LBB16_40
.LBB16_54:                              #   in Loop: Header=BB16_44 Depth=1
	callq	createSetObject
.LBB16_55:                              #   in Loop: Header=BB16_44 Depth=1
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_56:                              #   in Loop: Header=BB16_44 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	setTypeAdd
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	setTypeRemove
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%r15
	je	.LBB16_57
.LBB16_44:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB16_46
# %bb.45:                               #   in Loop: Header=BB16_44 Depth=1
	movq	8(%r14), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rdi
	movq	%rdi, -56(%rbp)
	movq	$-123456789, -48(%rbp)  # imm = 0xF8A432EB
	movl	$42, __A_VARIABLE(%rip)
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB16_48
.LBB16_46:                              #   in Loop: Header=BB16_44 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB16_89
# %bb.47:                               #   in Loop: Header=BB16_44 Depth=1
	movq	8(%r14), %rdi
	callq	intsetRandom
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
.LBB16_48:                              #   in Loop: Header=BB16_44 Depth=1
	movl	(%r14), %ecx
	movl	$240, %edx
	andl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %ecx
	jne	.LBB16_50
# %bb.49:                               #   in Loop: Header=BB16_44 Depth=1
	movq	%rax, %rdi
	callq	sdsfromlonglong
	jmp	.LBB16_51
.LBB16_50:                              #   in Loop: Header=BB16_44 Depth=1
	callq	sdsdup
.LBB16_51:                              #   in Loop: Header=BB16_44 Depth=1
	movq	%rax, %rbx
	movq	%rax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB16_56
# %bb.52:                               #   in Loop: Header=BB16_44 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	isSdsRepresentableAsLongLong
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB16_54
# %bb.53:                               #   in Loop: Header=BB16_44 Depth=1
	callq	createIntsetObject
	jmp	.LBB16_55
.LBB16_13:
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
	jmp	.LBB16_87
.LBB16_42:
	xorl	%r12d, %r12d
.LBB16_57:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%r14, (%rax)
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB16_59
# %bb.58:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r15)
	jmp	.LBB16_61
.LBB16_59:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB16_90
# %bb.60:
	movl	$0, 12(%r15)
.LBB16_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r15, %rdi
	callq	setTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB16_83
# %bb.62:
	leaq	-48(%rbp), %r14
	jmp	.LBB16_63
.LBB16_64:                              #   in Loop: Header=BB16_63 Depth=1
	movq	-48(%rbp), %rsi
	movq	%r13, %rdi
	callq	addReplyBulkLongLong
	movq	-48(%rbp), %rdi
	callq	createStringObjectFromLongLong
.LBB16_82:                              #   in Loop: Header=BB16_63 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	leaq	-56(%rbp), %rsi
	movq	%r14, %rdx
	callq	setTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB16_83
.LBB16_63:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	je	.LBB16_64
# %bb.65:                               #   in Loop: Header=BB16_63 Depth=1
	movq	-56(%rbp), %rbx
	movzbl	-1(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB16_66
# %bb.67:                               #   in Loop: Header=BB16_63 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI16_0(,%rax,8)
.LBB16_68:                              #   in Loop: Header=BB16_63 Depth=1
	shrq	$3, %rdx
	jmp	.LBB16_73
.LBB16_72:                              #   in Loop: Header=BB16_63 Depth=1
	movq	-17(%rbx), %rdx
	jmp	.LBB16_73
.LBB16_70:                              #   in Loop: Header=BB16_63 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB16_73
.LBB16_71:                              #   in Loop: Header=BB16_63 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB16_73
.LBB16_69:                              #   in Loop: Header=BB16_63 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB16_73
.LBB16_66:                              #   in Loop: Header=BB16_63 Depth=1
	xorl	%edx, %edx
.LBB16_73:                              #   in Loop: Header=BB16_63 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
	movzbl	-1(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB16_74
# %bb.75:                               #   in Loop: Header=BB16_63 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI16_1(,%rax,8)
.LBB16_76:                              #   in Loop: Header=BB16_63 Depth=1
	shrq	$3, %rsi
	jmp	.LBB16_81
.LBB16_80:                              #   in Loop: Header=BB16_63 Depth=1
	movq	-17(%rbx), %rsi
	jmp	.LBB16_81
.LBB16_78:                              #   in Loop: Header=BB16_63 Depth=1
	movzwl	-5(%rbx), %esi
	jmp	.LBB16_81
.LBB16_79:                              #   in Loop: Header=BB16_63 Depth=1
	movl	-9(%rbx), %esi
	jmp	.LBB16_81
.LBB16_77:                              #   in Loop: Header=BB16_63 Depth=1
	movzbl	-3(%rbx), %esi
	jmp	.LBB16_81
.LBB16_74:                              #   in Loop: Header=BB16_63 Depth=1
	xorl	%esi, %esi
.LBB16_81:                              #   in Loop: Header=BB16_63 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	createStringObject
	jmp	.LBB16_82
.LBB16_83:
	cmpl	$2, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_85
# %bb.84:
	movq	16(%r15), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB16_85:
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdx
	callq	dbOverwrite
	movl	$42, __A_VARIABLE(%rip)
.LBB16_86:
	movq	-80(%rbp), %rdi
	callq	decrRefCount
	movq	%r13, %rdi
	callq	preventCommandPropagation
.LBB16_87:
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	jmp	.LBB16_88
.LBB16_89:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$217, %esi
.LBB16_15:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB16_14:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	jmp	.LBB16_15
.LBB16_90:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
	jmp	.LBB16_15
.Lfunc_end16:
	.size	spopWithCountCommand, .Lfunc_end16-spopWithCountCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI16_0:
	.quad	.LBB16_68
	.quad	.LBB16_69
	.quad	.LBB16_70
	.quad	.LBB16_71
	.quad	.LBB16_72
.LJTI16_1:
	.quad	.LBB16_76
	.quad	.LBB16_77
	.quad	.LBB16_78
	.quad	.LBB16_79
	.quad	.LBB16_80
.LJTI16_2:
	.quad	.LBB16_26
	.quad	.LBB16_27
	.quad	.LBB16_28
	.quad	.LBB16_29
	.quad	.LBB16_30
.LJTI16_3:
	.quad	.LBB16_34
	.quad	.LBB16_35
	.quad	.LBB16_36
	.quad	.LBB16_37
	.quad	.LBB16_38
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
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %r12
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movslq	%edx, %rbx
	leaq	(,%rbx,8), %rdi
	callq	zmalloc
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB17_8
# %bb.1:
	xorl	%ebx, %ebx
	jmp	.LBB17_2
	.p2align	4, 0x90
.LBB17_6:                               #   in Loop: Header=BB17_2 Depth=1
	xorl	%r15d, %r15d
.LBB17_7:                               #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jge	.LBB17_8
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rdi
	movq	(%r14,%rbx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB17_4
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	callq	lookupKeyWrite
	jmp	.LBB17_5
	.p2align	4, 0x90
.LBB17_4:                               #   in Loop: Header=BB17_2 Depth=1
	callq	lookupKeyRead
.LBB17_5:                               #   in Loop: Header=BB17_2 Depth=1
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_6
# %bb.12:                               #   in Loop: Header=BB17_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_7
# %bb.13:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_133
.LBB17_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	movl	-52(%rbp), %ebx         # 4-byte Reload
	cmpl	$1, %ebx
	movq	%r12, -80(%rbp)         # 8-byte Spill
	jne	.LBB17_35
# %bb.9:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_35
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jle	.LBB17_11
# %bb.14:                               # %.preheader11
	movl	$1, %ebx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB17_15:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_27
# %bb.16:                               #   in Loop: Header=BB17_15 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movl	(%rcx), %edx
	shrl	$4, %edx
	andl	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jne	.LBB17_18
# %bb.17:                               #   in Loop: Header=BB17_15 Depth=1
	movq	8(%rcx), %rcx
	movq	72(%rcx), %r12
	addq	40(%rcx), %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_20
	.p2align	4, 0x90
.LBB17_18:                              #   in Loop: Header=BB17_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %edx
	jne	.LBB17_22
# %bb.19:                               #   in Loop: Header=BB17_15 Depth=1
	movq	8(%rcx), %rdi
	callq	intsetLen
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-8(%rax,%rbx,8), %rax
.LBB17_20:                              #   in Loop: Header=BB17_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB17_24
# %bb.21:                               #   in Loop: Header=BB17_15 Depth=1
	movq	8(%rax), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB17_26
	.p2align	4, 0x90
.LBB17_24:                              #   in Loop: Header=BB17_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB17_22
# %bb.25:                               #   in Loop: Header=BB17_15 Depth=1
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB17_26:                              #   in Loop: Header=BB17_15 Depth=1
	addq	%r12, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r12         # 8-byte Reload
.LBB17_27:                              #   in Loop: Header=BB17_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jge	.LBB17_29
# %bb.28:                               #   in Loop: Header=BB17_15 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%rbx,8), %rax
	addq	$1, %rbx
	jmp	.LBB17_15
.LBB17_29:
	movq	%r15, %rax
	shrq	$63, %rax
	addq	%r15, %rax
	sarq	%rax
	xorl	%ecx, %ecx
	cmpq	%r14, %rax
	setle	%cl
	movl	$2, %r15d
	subl	%ecx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -64(%rbp)           # 4-byte Folded Reload
	jl	.LBB17_30
# %bb.31:
	cmpq	%r14, %rax
	movl	-52(%rbp), %ebx         # 4-byte Reload
	jg	.LBB17_34
# %bb.32:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	$8, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	addl	$-1, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$qsortCompareSetsByRevCardinality, %ecx
	callq	qsort
	jmp	.LBB17_33
.LBB17_11:
	movl	$1, %r15d
.LBB17_33:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_35:
	callq	createIntsetObject
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	%r13, -88(%rbp)         # 8-byte Spill
	je	.LBB17_36
# %bb.52:
	cmpl	$1, %ebx
	jne	.LBB17_97
# %bb.53:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r15d
	jne	.LBB17_74
# %bb.54:
	testq	%rbx, %rbx
	je	.LBB17_74
# %bb.55:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB17_57
# %bb.56:
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r12)
	jmp	.LBB17_59
.LBB17_36:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jle	.LBB17_98
# %bb.37:                               # %.preheader3
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.LBB17_38
	.p2align	4, 0x90
.LBB17_50:                              #   in Loop: Header=BB17_38 Depth=1
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r12         # 8-byte Reload
.LBB17_51:                              #   in Loop: Header=BB17_38 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %r15         # 8-byte Folded Reload
	jge	.LBB17_99
.LBB17_38:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_45 Depth 2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r15,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB17_51
# %bb.39:                               #   in Loop: Header=BB17_38 Depth=1
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB17_41
# %bb.40:                               #   in Loop: Header=BB17_38 Depth=1
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r12)
	jmp	.LBB17_43
	.p2align	4, 0x90
.LBB17_41:                              #   in Loop: Header=BB17_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB17_134
# %bb.42:                               #   in Loop: Header=BB17_38 Depth=1
	movl	$0, 12(%r12)
.LBB17_43:                              #   in Loop: Header=BB17_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	setTypeNextObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_48
# %bb.44:                               # %.preheader1
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	%rax, %rbx
	jmp	.LBB17_45
	.p2align	4, 0x90
.LBB17_47:                              #   in Loop: Header=BB17_45 Depth=2
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	setTypeNextObject
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_48
.LBB17_45:                              #   Parent Loop BB17_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	setTypeAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_47
# %bb.46:                               #   in Loop: Header=BB17_45 Depth=2
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_47
	.p2align	4, 0x90
.LBB17_48:                              #   in Loop: Header=BB17_38 Depth=1
	cmpl	$2, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_50
# %bb.49:                               #   in Loop: Header=BB17_38 Depth=1
	movq	16(%r12), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_50
.LBB17_97:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_98:
	xorl	%r13d, %r13d
	jmp	.LBB17_99
.LBB17_74:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jne	.LBB17_99
# %bb.75:
	testq	%rbx, %rbx
	je	.LBB17_99
# %bb.76:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jle	.LBB17_99
# %bb.77:                               # %.preheader9
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB17_78:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_85 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB17_95
# %bb.79:                               #   in Loop: Header=BB17_78 Depth=1
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB17_81
# %bb.80:                               #   in Loop: Header=BB17_78 Depth=1
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r12)
	jmp	.LBB17_83
	.p2align	4, 0x90
.LBB17_81:                              #   in Loop: Header=BB17_78 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB17_134
# %bb.82:                               #   in Loop: Header=BB17_78 Depth=1
	movl	$0, 12(%r12)
.LBB17_83:                              #   in Loop: Header=BB17_78 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	setTypeNextObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_92
# %bb.84:                               #   in Loop: Header=BB17_78 Depth=1
	movq	%rax, %rbx
	jmp	.LBB17_85
	.p2align	4, 0x90
.LBB17_90:                              #   in Loop: Header=BB17_85 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB17_91:                              #   in Loop: Header=BB17_85 Depth=2
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	setTypeNextObject
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_92
.LBB17_85:                              #   Parent Loop BB17_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	testq	%r15, %r15
	je	.LBB17_86
# %bb.88:                               #   in Loop: Header=BB17_85 Depth=2
	callq	setTypeRemove
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_91
# %bb.89:                               #   in Loop: Header=BB17_85 Depth=2
	addl	$-1, %r13d
	jmp	.LBB17_90
	.p2align	4, 0x90
.LBB17_86:                              #   in Loop: Header=BB17_85 Depth=2
	callq	setTypeAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_91
# %bb.87:                               #   in Loop: Header=BB17_85 Depth=2
	addl	$1, %r13d
	jmp	.LBB17_90
	.p2align	4, 0x90
.LBB17_92:                              #   in Loop: Header=BB17_78 Depth=1
	cmpl	$2, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_94
# %bb.93:                               #   in Loop: Header=BB17_78 Depth=1
	movq	16(%r12), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB17_94:                              #   in Loop: Header=BB17_78 Depth=1
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movq	-80(%rbp), %r12         # 8-byte Reload
	je	.LBB17_98
.LBB17_95:                              #   in Loop: Header=BB17_78 Depth=1
	leaq	1(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %rax         # 8-byte Folded Reload
	jge	.LBB17_99
# %bb.96:                               #   in Loop: Header=BB17_78 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx,%r15,8), %rbx
	movq	%rax, %r15
	jmp	.LBB17_78
.LBB17_57:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB17_134
# %bb.58:
	movl	$0, 12(%r12)
.LBB17_59:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	setTypeNextObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_60
# %bb.61:
	movq	%rax, %r15
	xorl	%r13d, %r13d
	jmp	.LBB17_62
	.p2align	4, 0x90
.LBB17_70:                              #   in Loop: Header=BB17_62 Depth=1
	movq	%r15, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	setTypeNextObject
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_71
.LBB17_62:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_64 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	cmpl	$2, -64(%rbp)           # 4-byte Folded Reload
	jl	.LBB17_68
# %bb.63:                               # %.preheader5
                                        #   in Loop: Header=BB17_62 Depth=1
	movl	$1, %ebx
	jmp	.LBB17_64
	.p2align	4, 0x90
.LBB17_67:                              #   in Loop: Header=BB17_64 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jge	.LBB17_68
.LBB17_64:                              #   Parent Loop BB17_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB17_67
# %bb.65:                               #   in Loop: Header=BB17_64 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_68
# %bb.66:                               #   in Loop: Header=BB17_64 Depth=2
	movq	%r15, %rsi
	callq	setTypeIsMember
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_67
	.p2align	4, 0x90
.LBB17_68:                              #   in Loop: Header=BB17_62 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-64(%rbp), %ebx         # 4-byte Folded Reload
	jne	.LBB17_70
# %bb.69:                               #   in Loop: Header=BB17_62 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	setTypeAdd
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_70
.LBB17_60:
	xorl	%r13d, %r13d
.LBB17_71:
	cmpl	$2, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_73
# %bb.72:
	movq	16(%r12), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB17_73:
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r12         # 8-byte Reload
.LBB17_99:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB17_100
# %bb.118:
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	movq	%r12, %rsi
	callq	dbDelete
	movl	%eax, %r15d
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB17_120
# %bb.119:
	movq	8(%r14), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB17_122
.LBB17_100:
	movslq	%r13d, %rsi
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%r14, (%rax)
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB17_102
# %bb.101:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r15)
	jmp	.LBB17_104
.LBB17_120:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB17_22
# %bb.121:
	movq	8(%r14), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB17_122:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_128
# %bb.123:
	movq	16(%rbx), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB17_125
# %bb.124:
	movq	8(%r14), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	jmp	.LBB17_127
.LBB17_128:
	movq	%r14, %rdi
	callq	decrRefCount
	movq	shared+32(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB17_131
# %bb.129:
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	jmp	.LBB17_130
.LBB17_125:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB17_22
# %bb.126:
	movq	8(%r14), %rdi
	callq	intsetLen
	movl	%eax, %esi
.LBB17_127:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	addReplyLongLong
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	movl	$.L.str.16, %eax
	movl	$.L.str.17, %esi
	cmoveq	%rax, %rsi
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$32, %edi
.LBB17_130:
	movq	%r12, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB17_131:
	movq	16(%rbx), %rdi
	movq	%r12, %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	jmp	.LBB17_132
.LBB17_102:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB17_134
# %bb.103:
	movl	$0, 12(%r15)
.LBB17_104:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	setTypeNextObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_115
# %bb.105:                              # %.preheader
	movq	%rax, %rbx
	jmp	.LBB17_106
.LBB17_113:                             #   in Loop: Header=BB17_106 Depth=1
	movq	-17(%rbx), %rdx
	.p2align	4, 0x90
.LBB17_114:                             #   in Loop: Header=BB17_106 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	setTypeNextObject
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_115
.LBB17_106:                             # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB17_107
# %bb.108:                              #   in Loop: Header=BB17_106 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_109:                             #   in Loop: Header=BB17_106 Depth=1
	shrq	$3, %rdx
	jmp	.LBB17_114
.LBB17_111:                             #   in Loop: Header=BB17_106 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB17_114
.LBB17_112:                             #   in Loop: Header=BB17_106 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB17_114
.LBB17_110:                             #   in Loop: Header=BB17_106 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB17_114
.LBB17_107:                             #   in Loop: Header=BB17_106 Depth=1
	xorl	%edx, %edx
	jmp	.LBB17_114
.LBB17_115:
	cmpl	$2, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_117
# %bb.116:
	movq	16(%r15), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB17_117:
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	decrRefCount
.LBB17_132:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zfree
.LBB17_133:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_30:
	movl	-52(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB17_34
.LBB17_22:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	jmp	.LBB17_23
.LBB17_134:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
.LBB17_23:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end17:
	.size	sunionDiffGenericCommand, .Lfunc_end17-sunionDiffGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI17_0:
	.quad	.LBB17_109
	.quad	.LBB17_110
	.quad	.LBB17_111
	.quad	.LBB17_112
	.quad	.LBB17_113
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB18_2
# %bb.1:
	movq	%rbx, %rdi
	callq	spopWithCountCommand
	jmp	.LBB18_30
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jl	.LBB18_4
# %bb.3:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB18_30
.LBB18_4:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyWriteOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_30
# %bb.5:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_30
# %bb.6:
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB18_8
# %bb.7:
	movq	8(%r14), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rdi
	movq	$-123456789, %r12       # imm = 0xF8A432EB
	jmp	.LBB18_10
.LBB18_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB18_12
# %bb.9:
	movq	8(%r14), %rdi
	callq	intsetRandom
	movq	%rax, %r12
	xorl	%edi, %edi
.LBB18_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %eax
	andl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %eax
	jne	.LBB18_14
# %bb.11:
	movq	%r12, %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %r15
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	intsetRemove
	movq	%rax, 8(%r14)
	jmp	.LBB18_23
.LBB18_14:
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB18_15
# %bb.16:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_17:
	shrq	$3, %rsi
	jmp	.LBB18_22
.LBB18_21:
	movq	-17(%rdi), %rsi
	jmp	.LBB18_22
.LBB18_19:
	movzwl	-5(%rdi), %esi
	jmp	.LBB18_22
.LBB18_18:
	movzbl	-3(%rdi), %esi
	jmp	.LBB18_22
.LBB18_20:
	movl	-9(%rdi), %esi
	jmp	.LBB18_22
.LBB18_15:
	xorl	%esi, %esi
.LBB18_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, %r15
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	setTypeRemove
.LBB18_23:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB18_25
# %bb.24:
	movq	8(%r14), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB18_27
.LBB18_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB18_31
# %bb.26:
	movq	8(%r14), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB18_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB18_29
# %bb.28:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB18_29:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
.LBB18_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_12:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$217, %esi
	jmp	.LBB18_13
.LBB18_31:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
.LBB18_13:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end18:
	.size	spopCommand, .Lfunc_end18-spopCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_17
	.quad	.LBB18_18
	.quad	.LBB18_19
	.quad	.LBB18_20
	.quad	.LBB18_21
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
	subq	$40, %rsp
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-72(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB19_1
.LBB19_82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_1:
	movq	-72(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	negq	%r12
	cmovlq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	movq	%r14, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_82
# %bb.2:
	movq	%rax, %r13
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_82
# %bb.3:
	movl	(%r13), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB19_5
# %bb.4:
	movq	8(%r13), %rax
	movq	72(%rax), %r15
	addq	40(%rax), %r15
	jmp	.LBB19_7
.LBB19_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB19_9
# %bb.6:
	movq	8(%r13), %rdi
	callq	intsetLen
	movl	%eax, %r15d
.LBB19_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB19_8
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	js	.LBB19_12
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	jae	.LBB19_30
# %bb.31:
	movl	$objectKeyPointerValueDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	(%r12,%r12,2), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jbe	.LBB19_58
# %bb.32:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r13, (%rax)
	movl	(%r13), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB19_34
# %bb.33:
	movq	8(%r13), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%rbx)
	jmp	.LBB19_36
.LBB19_8:
	movq	shared+104(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB19_82
.LBB19_12:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %ebx
	jmp	.LBB19_13
	.p2align	4, 0x90
.LBB19_18:                              #   in Loop: Header=BB19_13 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
.LBB19_28:                              #   in Loop: Header=BB19_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB19_82
.LBB19_13:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB19_15
# %bb.14:                               #   in Loop: Header=BB19_13 Depth=1
	movq	8(%r13), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)
	movq	$-123456789, -56(%rbp)  # imm = 0xF8A432EB
	movl	$42, __A_VARIABLE(%rip)
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB19_17
	.p2align	4, 0x90
.LBB19_15:                              #   in Loop: Header=BB19_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB19_85
# %bb.16:                               #   in Loop: Header=BB19_13 Depth=1
	movq	8(%r13), %rdi
	callq	intsetRandom
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB19_17:                              #   in Loop: Header=BB19_13 Depth=1
	addq	$-1, %r12
	movl	(%r13), %ecx
	andl	%ebx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %ecx
	je	.LBB19_18
# %bb.19:                               #   in Loop: Header=BB19_13 Depth=1
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB19_28
.LBB19_30:
	movq	72(%r14), %rsi
	addq	$8, %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	sunionDiffGenericCommand
	jmp	.LBB19_82
.LBB19_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB19_59
.LBB19_76:                              #   in Loop: Header=BB19_59 Depth=1
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB19_77:                              #   in Loop: Header=BB19_59 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jae	.LBB19_78
.LBB19_59:                              # =>This Inner Loop Header: Depth=1
	movl	(%r13), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB19_61
# %bb.60:                               #   in Loop: Header=BB19_59 Depth=1
	movq	8(%r13), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rdi
	movq	%rdi, -64(%rbp)
	movq	$-123456789, -56(%rbp)  # imm = 0xF8A432EB
	movl	$42, __A_VARIABLE(%rip)
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB19_63
.LBB19_61:                              #   in Loop: Header=BB19_59 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB19_85
# %bb.62:                               #   in Loop: Header=BB19_59 Depth=1
	movq	8(%r13), %rdi
	callq	intsetRandom
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
.LBB19_63:                              #   in Loop: Header=BB19_59 Depth=1
	movl	(%r13), %ecx
	movl	$240, %edx
	andl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %ecx
	jne	.LBB19_65
# %bb.64:                               #   in Loop: Header=BB19_59 Depth=1
	movq	%rax, %rdi
	callq	createStringObjectFromLongLong
	jmp	.LBB19_74
.LBB19_65:                              #   in Loop: Header=BB19_59 Depth=1
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB19_66
# %bb.67:                               #   in Loop: Header=BB19_59 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI19_0(,%rax,8)
.LBB19_68:                              #   in Loop: Header=BB19_59 Depth=1
	shrq	$3, %rsi
	jmp	.LBB19_73
.LBB19_72:                              #   in Loop: Header=BB19_59 Depth=1
	movq	-17(%rdi), %rsi
	jmp	.LBB19_73
.LBB19_70:                              #   in Loop: Header=BB19_59 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB19_73
.LBB19_71:                              #   in Loop: Header=BB19_59 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB19_73
.LBB19_69:                              #   in Loop: Header=BB19_59 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB19_73
.LBB19_66:                              #   in Loop: Header=BB19_59 Depth=1
	xorl	%esi, %esi
.LBB19_73:                              #   in Loop: Header=BB19_59 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
.LBB19_74:                              #   in Loop: Header=BB19_59 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_76
# %bb.75:                               #   in Loop: Header=BB19_59 Depth=1
	addq	$1, %r15
	jmp	.LBB19_77
.LBB19_34:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB19_83
# %bb.35:
	movl	$0, 12(%rbx)
.LBB19_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rdi
	callq	setTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB19_53
# %bb.37:                               # %.preheader3
	leaq	-56(%rbp), %r13
.LBB19_38:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB19_40
# %bb.39:                               #   in Loop: Header=BB19_38 Depth=1
	movq	-56(%rbp), %rdi
	callq	createStringObjectFromLongLong
	jmp	.LBB19_49
.LBB19_40:                              #   in Loop: Header=BB19_38 Depth=1
	movq	-64(%rbp), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB19_41
# %bb.42:                               #   in Loop: Header=BB19_38 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI19_1(,%rax,8)
.LBB19_43:                              #   in Loop: Header=BB19_38 Depth=1
	shrq	$3, %rsi
	jmp	.LBB19_48
.LBB19_47:                              #   in Loop: Header=BB19_38 Depth=1
	movq	-17(%rdi), %rsi
	jmp	.LBB19_48
.LBB19_45:                              #   in Loop: Header=BB19_38 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB19_48
.LBB19_46:                              #   in Loop: Header=BB19_38 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB19_48
.LBB19_44:                              #   in Loop: Header=BB19_38 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB19_48
.LBB19_41:                              #   in Loop: Header=BB19_38 Depth=1
	xorl	%esi, %esi
.LBB19_48:                              #   in Loop: Header=BB19_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
.LBB19_49:                              #   in Loop: Header=BB19_38 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_50
# %bb.52:                               #   in Loop: Header=BB19_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	leaq	-64(%rbp), %rsi
	movq	%r13, %rdx
	callq	setTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB19_38
.LBB19_53:
	cmpl	$2, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_55
# %bb.54:
	movq	16(%rbx), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB19_55:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jne	.LBB19_84
# %bb.56:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB19_57:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	dictDelete
	addq	$-1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	ja	.LBB19_57
.LBB19_78:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	addReplyMultiBulkLen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	dictGetIterator
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB19_80:                              # =>This Inner Loop Header: Depth=1
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_81
# %bb.79:                               #   in Loop: Header=BB19_80 Depth=1
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	addReplyBulk
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	jmp	.LBB19_80
.LBB19_81:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	dictRelease
	jmp	.LBB19_82
.LBB19_85:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$217, %esi
.LBB19_10:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB19_50:
	movl	$.L.str.13, %edi
	movl	$.L.str.1, %esi
	movl	$695, %edx              # imm = 0x2B7
.LBB19_51:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB19_9:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
	jmp	.LBB19_10
.LBB19_84:
	movl	$.L.str.14, %edi
	movl	$.L.str.1, %esi
	movl	$698, %edx              # imm = 0x2BA
	jmp	.LBB19_51
.LBB19_83:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
	jmp	.LBB19_10
.Lfunc_end19:
	.size	srandmemberWithCountCommand, .Lfunc_end19-srandmemberWithCountCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_68
	.quad	.LBB19_69
	.quad	.LBB19_70
	.quad	.LBB19_71
	.quad	.LBB19_72
.LJTI19_1:
	.quad	.LBB19_43
	.quad	.LBB19_44
	.quad	.LBB19_45
	.quad	.LBB19_46
	.quad	.LBB19_47
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB20_2
# %bb.1:
	movq	%rbx, %rdi
	callq	srandmemberWithCountCommand
	jmp	.LBB20_22
.LBB20_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jl	.LBB20_4
# %bb.3:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB20_22
.LBB20_4:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_22
# %bb.5:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB20_22
# %bb.6:
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB20_8
# %bb.7:
	movq	8(%r14), %rdi
	callq	dictGetRandomKey
	movq	(%rax), %rsi
	movq	$-123456789, %rax       # imm = 0xF8A432EB
	jmp	.LBB20_10
.LBB20_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB20_23
# %bb.9:
	movq	8(%r14), %rdi
	callq	intsetRandom
	xorl	%esi, %esi
.LBB20_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %ecx
	andl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %ecx
	jne	.LBB20_12
# %bb.11:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	jmp	.LBB20_21
.LBB20_12:
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB20_13
# %bb.14:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI20_0(,%rax,8)
.LBB20_15:
	shrq	$3, %rdx
	jmp	.LBB20_20
.LBB20_19:
	movq	-17(%rsi), %rdx
	jmp	.LBB20_20
.LBB20_17:
	movzwl	-5(%rsi), %edx
	jmp	.LBB20_20
.LBB20_16:
	movzbl	-3(%rsi), %edx
	jmp	.LBB20_20
.LBB20_18:
	movl	-9(%rsi), %edx
	jmp	.LBB20_20
.LBB20_13:
	xorl	%edx, %edx
.LBB20_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
.LBB20_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB20_23:
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
	.quad	.LBB20_15
	.quad	.LBB20_16
	.quad	.LBB20_17
	.quad	.LBB20_18
	.quad	.LBB20_19
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
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB21_2
# %bb.1:
	movq	8(%rax), %rax
	movq	72(%rax), %rbx
	addq	40(%rax), %rbx
	jmp	.LBB21_4
.LBB21_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB21_20
# %bb.3:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %ebx
.LBB21_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB21_6
# %bb.5:
	movq	8(%rax), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB21_8
.LBB21_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB21_20
# %bb.7:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB21_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jbe	.LBB21_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB21_19
.LBB21_10:
	movq	(%r15), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB21_12
# %bb.11:
	movq	8(%rax), %rax
	movq	72(%rax), %rbx
	addq	40(%rax), %rbx
	jmp	.LBB21_14
.LBB21_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB21_20
# %bb.13:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %ebx
.LBB21_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB21_16
# %bb.15:
	movq	8(%rax), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB21_18
.LBB21_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB21_20
# %bb.17:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB21_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	sbbl	%eax, %eax
.LBB21_19:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_20:
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
	movq	(%rsi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_1
# %bb.2:
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB22_4
# %bb.3:
	movq	8(%rax), %rax
	movq	72(%rax), %r14
	addq	40(%rax), %r14
	jmp	.LBB22_6
.LBB22_1:
	xorl	%r14d, %r14d
	jmp	.LBB22_7
.LBB22_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB22_18
# %bb.5:
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %r14d
.LBB22_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_7:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB22_8
# %bb.9:
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB22_11
# %bb.10:
	movq	8(%rbx), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB22_13
.LBB22_8:
	xorl	%eax, %eax
	jmp	.LBB22_14
.LBB22_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB22_18
# %bb.12:
	movq	8(%rbx), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB22_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jae	.LBB22_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB22_17
.LBB22_16:
	cmpq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	sbbl	%eax, %eax
.LBB22_17:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB22_18:
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
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	leaq	(,%rdx,8), %rdi
	callq	zmalloc
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	testq	%rbx, %rbx
	movq	%r15, -72(%rbp)         # 8-byte Spill
	je	.LBB23_8
# %bb.1:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rdi
	movq	(%r14,%rbx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB23_4
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	callq	lookupKeyWrite
	jmp	.LBB23_5
	.p2align	4, 0x90
.LBB23_4:                               #   in Loop: Header=BB23_2 Depth=1
	callq	lookupKeyRead
.LBB23_5:                               #   in Loop: Header=BB23_2 Depth=1
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_60
# %bb.6:                                #   in Loop: Header=BB23_2 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB23_64
# %bb.7:                                #   in Loop: Header=BB23_2 Depth=1
	movq	%r15, (%r13,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-56(%rbp), %rbx         # 8-byte Folded Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	jb	.LBB23_2
.LBB23_8:
	movl	$8, %edx
	movl	$qsortCompareSetsByCardinality, %ecx
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	qsort
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB23_10
# %bb.9:
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	createIntsetObject
	jmp	.LBB23_11
.LBB23_10:
	movq	%r12, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
.LBB23_11:
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rbx
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r14
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB23_13
# %bb.12:
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, 16(%r14)
	jmp	.LBB23_15
.LBB23_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB23_82
# %bb.14:
	movl	$0, 12(%r14)
.LBB23_15:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	setTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB23_53
# %bb.16:
	movl	%eax, %r14d
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r12, -112(%rbp)        # 8-byte Spill
	jmp	.LBB23_19
	.p2align	4, 0x90
.LBB23_17:                              #   in Loop: Header=BB23_19 Depth=1
	movq	-112(%rbp), %r12        # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB23_18:                              #   in Loop: Header=BB23_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	setTypeNext
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB23_54
.LBB23_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_22 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	cmpq	$2, %rbx
	jb	.LBB23_33
# %bb.20:                               #   in Loop: Header=BB23_19 Depth=1
	movl	$1, %r12d
	movq	-48(%rbp), %r15
	jmp	.LBB23_22
	.p2align	4, 0x90
.LBB23_21:                              #   in Loop: Header=BB23_22 Depth=2
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	jae	.LBB23_32
.LBB23_22:                              #   Parent Loop BB23_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%r12,8), %rdi
	cmpq	(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_21
# %bb.23:                               #   in Loop: Header=BB23_22 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %r14d
	jne	.LBB23_30
# %bb.24:                               #   in Loop: Header=BB23_22 Depth=2
	movl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %ecx
	jne	.LBB23_27
# %bb.25:                               #   in Loop: Header=BB23_22 Depth=2
	movq	8(%rdi), %rdi
	movq	-80(%rbp), %rsi
	callq	intsetFind
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB23_32
# %bb.26:                               #   in Loop: Header=BB23_22 Depth=2
	movq	(%r13,%r12,8), %rax
	movl	(%rax), %eax
.LBB23_27:                              #   in Loop: Header=BB23_22 Depth=2
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB23_21
# %bb.28:                               #   in Loop: Header=BB23_22 Depth=2
	movq	-80(%rbp), %rdi
	callq	sdsfromlonglong
	movq	%rax, %r15
	movq	(%r13,%r12,8), %rdi
	movq	%rax, %rsi
	callq	setTypeIsMember
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB23_44
# %bb.29:                               #   in Loop: Header=BB23_22 Depth=2
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB23_21
	.p2align	4, 0x90
.LBB23_30:                              #   in Loop: Header=BB23_22 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jne	.LBB23_21
# %bb.31:                               #   in Loop: Header=BB23_22 Depth=2
	movq	%r15, %rsi
	callq	setTypeIsMember
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB23_21
	.p2align	4, 0x90
.LBB23_32:                              #   in Loop: Header=BB23_19 Depth=1
	movq	%r15, -48(%rbp)
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB23_33:                              #   in Loop: Header=BB23_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	jne	.LBB23_17
# %bb.34:                               #   in Loop: Header=BB23_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movq	-112(%rbp), %r12        # 8-byte Reload
	je	.LBB23_37
# %bb.35:                               #   in Loop: Header=BB23_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %r14d
	jne	.LBB23_41
# %bb.36:                               #   in Loop: Header=BB23_19 Depth=1
	movq	-80(%rbp), %rdi
	callq	sdsfromlonglong
	movq	%rax, %rbx
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	setTypeAdd
	movq	%rbx, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	callq	sdsfree
	jmp	.LBB23_42
.LBB23_37:                              #   in Loop: Header=BB23_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jne	.LBB23_43
# %bb.38:                               #   in Loop: Header=BB23_19 Depth=1
	movq	-48(%rbp), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	-64(%rbp), %r14         # 8-byte Reload
	ja	.LBB23_49
# %bb.39:                               #   in Loop: Header=BB23_19 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_40:                              #   in Loop: Header=BB23_19 Depth=1
	shrq	$3, %rdx
	jmp	.LBB23_50
.LBB23_41:                              #   in Loop: Header=BB23_19 Depth=1
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	setTypeAdd
.LBB23_42:                              #   in Loop: Header=BB23_19 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB23_52
.LBB23_43:                              #   in Loop: Header=BB23_19 Depth=1
	movq	-80(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkLongLong
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB23_51
.LBB23_44:                              #   in Loop: Header=BB23_19 Depth=1
	movq	%r15, -48(%rbp)
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB23_33
.LBB23_45:                              #   in Loop: Header=BB23_19 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB23_50
.LBB23_46:                              #   in Loop: Header=BB23_19 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB23_50
.LBB23_47:                              #   in Loop: Header=BB23_19 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB23_50
.LBB23_48:                              #   in Loop: Header=BB23_19 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB23_50
.LBB23_49:                              #   in Loop: Header=BB23_19 Depth=1
	xorl	%edx, %edx
.LBB23_50:                              #   in Loop: Header=BB23_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCBuffer
.LBB23_51:                              #   in Loop: Header=BB23_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, -96(%rbp)           # 8-byte Folded Spill
.LBB23_52:                              #   in Loop: Header=BB23_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_18
.LBB23_53:
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB23_54:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpl	$2, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_56
# %bb.55:
	movq	16(%rbx), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB23_56:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movq	-88(%rbp), %rbx         # 8-byte Reload
	je	.LBB23_59
# %bb.57:
	movq	16(%r12), %rdi
	movq	%r15, %rsi
	callq	dbDelete
	movl	%eax, %r14d
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB23_65
# %bb.58:
	movq	8(%rbx), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB23_67
.LBB23_59:
	movq	%r12, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	setDeferredMultiBulkLength
	jmp	.LBB23_77
.LBB23_60:
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB23_78
# %bb.61:
	movq	16(%r12), %rdi
	movq	%rbx, %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_63
# %bb.62:
	movq	16(%r12), %rdi
	movq	%rbx, %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_63:
	movq	shared+32(%rip), %rsi
	jmp	.LBB23_79
.LBB23_64:
	movq	%r13, %rdi
	callq	zfree
	jmp	.LBB23_80
.LBB23_65:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB23_83
# %bb.66:
	movq	8(%rbx), %rdi
	callq	intsetLen
	movl	%eax, %eax
.LBB23_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_70
# %bb.68:
	movq	16(%r12), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	dbAdd
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB23_72
# %bb.69:
	movq	8(%rbx), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	jmp	.LBB23_74
.LBB23_70:
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	shared+32(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB23_76
# %bb.71:
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.10, %esi
	movl	$4, %edi
	jmp	.LBB23_75
.LBB23_72:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB23_83
# %bb.73:
	movq	8(%rbx), %rdi
	callq	intsetLen
	movl	%eax, %esi
.LBB23_74:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyLongLong
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$32, %edi
.LBB23_75:
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB23_76:
	movq	16(%r12), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
.LBB23_77:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	zfree
	jmp	.LBB23_81
.LBB23_78:
	movq	shared+104(%rip), %rsi
.LBB23_79:
	movq	%r12, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
.LBB23_80:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_81:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_82:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$130, %esi
	jmp	.LBB23_84
.LBB23_83:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$228, %esi
.LBB23_84:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end23:
	.size	sinterGenericCommand, .Lfunc_end23-sinterGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_40
	.quad	.LBB23_48
	.quad	.LBB23_46
	.quad	.LBB23_47
	.quad	.LBB23_45
                                        # -- End function
	.text
	.globl	sinterCommand           # -- Begin function sinterCommand
	.p2align	4, 0x90
	.type	sinterCommand,@function
sinterCommand:                          # @sinterCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rsi
	addq	$8, %rsi
	movslq	64(%rdi), %rdx
	addq	$-1, %rdx
	xorl	%ecx, %ecx
	callq	sinterGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	sinterCommand, .Lfunc_end24-sinterCommand
                                        # -- End function
	.globl	sinterstoreCommand      # -- Begin function sinterstoreCommand
	.p2align	4, 0x90
	.type	sinterstoreCommand,@function
sinterstoreCommand:                     # @sinterstoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rsi
	movslq	64(%rdi), %rdx
	addq	$-2, %rdx
	movq	8(%rsi), %rcx
	addq	$16, %rsi
	callq	sinterGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end25:
	.size	sinterstoreCommand, .Lfunc_end25-sinterstoreCommand
                                        # -- End function
	.globl	sunionCommand           # -- Begin function sunionCommand
	.p2align	4, 0x90
	.type	sunionCommand,@function
sunionCommand:                          # @sunionCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rsi
	addq	$8, %rsi
	movl	64(%rdi), %edx
	addl	$-1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	sunionDiffGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	sunionCommand, .Lfunc_end26-sunionCommand
                                        # -- End function
	.globl	sunionstoreCommand      # -- Begin function sunionstoreCommand
	.p2align	4, 0x90
	.type	sunionstoreCommand,@function
sunionstoreCommand:                     # @sunionstoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rsi
	movl	64(%rdi), %edx
	addl	$-2, %edx
	movq	8(%rsi), %rcx
	addq	$16, %rsi
	xorl	%r8d, %r8d
	callq	sunionDiffGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	sunionstoreCommand, .Lfunc_end27-sunionstoreCommand
                                        # -- End function
	.globl	sdiffCommand            # -- Begin function sdiffCommand
	.p2align	4, 0x90
	.type	sdiffCommand,@function
sdiffCommand:                           # @sdiffCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rsi
	addq	$8, %rsi
	movl	64(%rdi), %edx
	addl	$-1, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	sunionDiffGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	sdiffCommand, .Lfunc_end28-sdiffCommand
                                        # -- End function
	.globl	sdiffstoreCommand       # -- Begin function sdiffstoreCommand
	.p2align	4, 0x90
	.type	sdiffstoreCommand,@function
sdiffstoreCommand:                      # @sdiffstoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rsi
	movl	64(%rdi), %edx
	addl	$-2, %edx
	movq	8(%rsi), %rcx
	addq	$16, %rsi
	movl	$1, %r8d
	callq	sunionDiffGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB30_4
# %bb.1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+360(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_4
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB30_4
# %bb.3:
	movq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	scanGenericCommand
.LBB30_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
