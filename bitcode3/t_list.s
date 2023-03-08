	.text
	.file	"t_list.c"
	.globl	listTypePush            # -- Begin function listTypePush
	.p2align	4, 0x90
	.type	listTypePush,@function
listTypePush:                           # @listTypePush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$144, %eax
	jne	.LBB0_10
# %bb.1:
	movq	%rdi, %r15
	negl	%edx
	sbbl	%r14d, %r14d
	movq	%rsi, %rdi
	callq	getDecodedObject
	movq	%rax, %rbx
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB0_2
# %bb.3:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_4:
	shrq	$3, %rdx
	jmp	.LBB0_9
.LBB0_8:
	movq	-17(%rsi), %rdx
	jmp	.LBB0_9
.LBB0_6:
	movzwl	-5(%rsi), %edx
	jmp	.LBB0_9
.LBB0_7:
	movl	-9(%rsi), %edx
	jmp	.LBB0_9
.LBB0_5:
	movzbl	-3(%rsi), %edx
	jmp	.LBB0_9
.LBB0_2:
	xorl	%edx, %edx
.LBB0_9:
	movq	8(%r15), %rdi
	movl	%r14d, %ecx
	callq	quicklistPush
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	decrRefCount            # TAILCALL
.LBB0_10:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$49, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end0:
	.size	listTypePush, .Lfunc_end0-listTypePush
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
                                        # -- End function
	.text
	.globl	listPopSaver            # -- Begin function listPopSaver
	.p2align	4, 0x90
	.type	listPopSaver,@function
listPopSaver:                           # @listPopSaver
# %bb.0:
	movl	%esi, %esi
	jmp	createStringObject      # TAILCALL
.Lfunc_end1:
	.size	listPopSaver, .Lfunc_end1-listPopSaver
                                        # -- End function
	.globl	listTypePop             # -- Begin function listTypePop
	.p2align	4, 0x90
	.type	listTypePop,@function
listTypePop:                            # @listTypePop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$144, %eax
	jne	.LBB2_5
# %bb.1:
	negl	%esi
	sbbl	%esi, %esi
	movq	8(%rdi), %rdi
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %r8
	movl	$listPopSaver, %r9d
	xorl	%ecx, %ecx
	callq	quicklistPopCustom
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	testl	%ecx, %ecx
	je	.LBB2_4
# %bb.2:
	testq	%rax, %rax
	jne	.LBB2_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, -8(%rbp)
.LBB2_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB2_5:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$69, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end2:
	.size	listTypePop, .Lfunc_end2-listTypePop
                                        # -- End function
	.globl	listTypeLength          # -- Begin function listTypeLength
	.p2align	4, 0x90
	.type	listTypeLength,@function
listTypeLength:                         # @listTypeLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$144, %eax
	jne	.LBB3_2
# %bb.1:
	movq	8(%rdi), %rdi
	popq	%rbp
	jmp	quicklistCount          # TAILCALL
.LBB3_2:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end3:
	.size	listTypeLength, .Lfunc_end3-listTypeLength
                                        # -- End function
	.globl	listTypeInitIterator    # -- Begin function listTypeInitIterator
	.p2align	4, 0x90
	.type	listTypeInitIterator,@function
listTypeInitIterator:                   # @listTypeInitIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r15, (%rax)
	movb	(%r15), %al
	shrb	$4, %al
	movb	%al, 8(%rbx)
	movb	%r12b, 9(%rbx)
	movq	$0, 16(%rbx)
	cmpb	$9, %al
	jne	.LBB4_2
# %bb.1:
	xorl	%esi, %esi
	testb	%r12b, %r12b
	sete	%sil
	movq	8(%r15), %rdi
	movq	%r14, %rdx
	callq	quicklistGetIteratorAtIdx
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_2:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$98, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end4:
	.size	listTypeInitIterator, .Lfunc_end4-listTypeInitIterator
                                        # -- End function
	.globl	listTypeReleaseIterator # -- Begin function listTypeReleaseIterator
	.p2align	4, 0x90
	.type	listTypeReleaseIterator,@function
listTypeReleaseIterator:                # @listTypeReleaseIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	callq	zfree
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end5:
	.size	listTypeReleaseIterator, .Lfunc_end5-listTypeReleaseIterator
                                        # -- End function
	.globl	listTypeNext            # -- Begin function listTypeNext
	.p2align	4, 0x90
	.type	listTypeNext,@function
listTypeNext:                           # @listTypeNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movzbl	8(%rdi), %eax
	cmpl	%eax, %ecx
	jne	.LBB6_3
# %bb.1:
	movq	%rdi, (%rsi)
	cmpb	$9, %al
	jne	.LBB6_2
# %bb.4:
	movq	16(%rdi), %rdi
	addq	$8, %rsi
	popq	%rbp
	jmp	quicklistNext           # TAILCALL
.LBB6_3:
	movl	$.L.str.2, %edi
	movl	$.L.str, %esi
	movl	$114, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB6_2:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$120, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end6:
	.size	listTypeNext, .Lfunc_end6-listTypeNext
                                        # -- End function
	.globl	listTypeGet             # -- Begin function listTypeGet
	.p2align	4, 0x90
	.type	listTypeGet,@function
listTypeGet:                            # @listTypeGet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rax
	cmpb	$9, 8(%rax)
	jne	.LBB7_3
# %bb.1:
	movq	32(%rdi), %rax
	testq	%rax, %rax
	je	.LBB7_2
# %bb.4:
	movl	48(%rdi), %esi
	movq	%rax, %rdi
	popq	%rbp
	jmp	createStringObject      # TAILCALL
.LBB7_2:
	movq	40(%rdi), %rdi
	popq	%rbp
	jmp	createStringObjectFromLongLong # TAILCALL
.LBB7_3:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$136, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end7:
	.size	listTypeGet, .Lfunc_end7-listTypeGet
                                        # -- End function
	.globl	listTypeInsert          # -- Begin function listTypeInsert
	.p2align	4, 0x90
	.type	listTypeInsert,@function
listTypeInsert:                         # @listTypeInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rax
	cmpb	$9, 8(%rax)
	jne	.LBB8_14
# %bb.1:
	movl	%edx, %r15d
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	getDecodedObject
	movq	%rax, %r14
	movq	8(%rax), %rdx
	movzbl	-1(%rdx), %ecx
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB8_2
# %bb.3:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_4:
	shrq	$3, %rcx
	testl	%r15d, %r15d
	jne	.LBB8_10
	jmp	.LBB8_12
.LBB8_8:
	movq	-17(%rdx), %rcx
	testl	%r15d, %r15d
	jne	.LBB8_10
	jmp	.LBB8_12
.LBB8_6:
	movzwl	-5(%rdx), %ecx
	testl	%r15d, %r15d
	jne	.LBB8_10
	jmp	.LBB8_12
.LBB8_7:
	movl	-9(%rdx), %ecx
	testl	%r15d, %r15d
	jne	.LBB8_10
	jmp	.LBB8_12
.LBB8_5:
	movzbl	-3(%rdx), %ecx
	testl	%r15d, %r15d
	jne	.LBB8_10
.LBB8_12:
	movq	8(%rbx), %rdi
	addq	$8, %rbx
	movq	%rbx, %rsi
	callq	quicklistInsertBefore
	jmp	.LBB8_13
.LBB8_2:
	xorl	%ecx, %ecx
	testl	%r15d, %r15d
	je	.LBB8_12
.LBB8_10:
	cmpl	$1, %r15d
	jne	.LBB8_13
# %bb.11:
	movq	8(%rbx), %rdi
	addq	$8, %rbx
	movq	%rbx, %rsi
	callq	quicklistInsertAfter
.LBB8_13:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	decrRefCount            # TAILCALL
.LBB8_14:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$155, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end8:
	.size	listTypeInsert, .Lfunc_end8-listTypeInsert
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_4
	.quad	.LBB8_5
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_8
                                        # -- End function
	.text
	.globl	listTypeEqual           # -- Begin function listTypeEqual
	.p2align	4, 0x90
	.type	listTypeEqual,@function
listTypeEqual:                          # @listTypeEqual
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rax
	cmpb	$9, 8(%rax)
	jne	.LBB9_11
# %bb.1:
	movb	(%rsi), %al
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB9_12
# %bb.2:
	movq	24(%rdi), %rdi
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB9_9
# %bb.3:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_4:
	shrq	$3, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	popq	%rbp
	jmp	quicklistCompare        # TAILCALL
.LBB9_5:
	movq	-17(%rsi), %rdx
                                        # kill: def $edx killed $edx killed $rdx
	popq	%rbp
	jmp	quicklistCompare        # TAILCALL
.LBB9_6:
	movzwl	-5(%rsi), %edx
                                        # kill: def $edx killed $edx killed $rdx
	popq	%rbp
	jmp	quicklistCompare        # TAILCALL
.LBB9_7:
	movzbl	-3(%rsi), %edx
                                        # kill: def $edx killed $edx killed $rdx
	popq	%rbp
	jmp	quicklistCompare        # TAILCALL
.LBB9_8:
	movl	-9(%rsi), %edx
                                        # kill: def $edx killed $edx killed $rdx
	popq	%rbp
	jmp	quicklistCompare        # TAILCALL
.LBB9_9:
	xorl	%edx, %edx
                                        # kill: def $edx killed $edx killed $rdx
	popq	%rbp
	jmp	quicklistCompare        # TAILCALL
.LBB9_11:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$165, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB9_12:
	movl	$.L.str.3, %edx
	movl	$.L.str, %ecx
	xorl	%edi, %edi
	movl	$162, %r8d
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end9:
	.size	listTypeEqual, .Lfunc_end9-listTypeEqual
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_4
	.quad	.LBB9_7
	.quad	.LBB9_6
	.quad	.LBB9_8
	.quad	.LBB9_5
                                        # -- End function
	.text
	.globl	listTypeDelete          # -- Begin function listTypeDelete
	.p2align	4, 0x90
	.type	listTypeDelete,@function
listTypeDelete:                         # @listTypeDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rsi), %rax
	cmpb	$9, 8(%rax)
	jne	.LBB10_2
# %bb.1:
	movq	16(%rdi), %rdi
	addq	$8, %rsi
	popq	%rbp
	jmp	quicklistDelEntry       # TAILCALL
.LBB10_2:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$174, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end10:
	.size	listTypeDelete, .Lfunc_end10-listTypeDelete
                                        # -- End function
	.globl	listTypeConvert         # -- Begin function listTypeConvert
	.p2align	4, 0x90
	.type	listTypeConvert,@function
listTypeConvert:                        # @listTypeConvert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$1, %ecx
	jne	.LBB11_1
# %bb.3:
	andl	$240, %eax
	cmpl	$80, %eax
	jne	.LBB11_4
# %bb.5:
	cmpl	$9, %esi
	jne	.LBB11_7
# %bb.6:
	movl	server+2864(%rip), %edi
	movl	server+2868(%rip), %esi
	movq	8(%rbx), %rdx
	callq	quicklistCreateFromZiplist
	movq	%rax, 8(%rbx)
	movl	$-241, %eax
	andl	(%rbx), %eax
	orl	$144, %eax
	movl	%eax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB11_1:
	movl	$.L.str.4, %edx
	movl	$.L.str, %ecx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movl	$180, %r8d
	jmp	.LBB11_2
.LBB11_4:
	movl	$.L.str.5, %edx
	movl	$.L.str, %ecx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movl	$181, %r8d
.LBB11_2:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB11_7:
	movl	$.L.str, %edi
	movl	$.L.str.6, %edx
	movl	$189, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end11:
	.size	listTypeConvert, .Lfunc_end11-listTypeConvert
                                        # -- End function
	.globl	pushGenericCommand      # -- Begin function pushGenericCommand
	.p2align	4, 0x90
	.type	pushGenericCommand,@function
pushGenericCommand:                     # @pushGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movq	%rax, %r12
	testq	%rax, %rax
	sete	%al
	je	.LBB12_2
# %bb.1:
	movl	(%r12), %ecx
	andl	$15, %ecx
	cmpl	$1, %ecx
	jne	.LBB12_15
.LBB12_2:
	xorl	%ebx, %ebx
	cmpl	$3, 64(%r15)
	jl	.LBB12_8
# %bb.3:                                # %.preheader
	movl	$2, %ebx
	jmp	.LBB12_4
	.p2align	4, 0x90
.LBB12_6:                               #   in Loop: Header=BB12_4 Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	listTypePush
	addq	$1, %rbx
	movslq	64(%r15), %rcx
	testq	%r12, %r12
	sete	%al
	cmpq	%rcx, %rbx
	jge	.LBB12_7
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	je	.LBB12_6
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	callq	createQuicklistObject
	movq	%rax, %r12
	movq	8(%rax), %rdi
	movl	server+2864(%rip), %esi
	movl	server+2868(%rip), %edx
	callq	quicklistSetOptions
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdx
	callq	dbAdd
	jmp	.LBB12_6
.LBB12_7:                               # %.loopexit
	addl	$-2, %ebx
.LBB12_8:
	testb	%al, %al
	je	.LBB12_10
# %bb.9:
	xorl	%esi, %esi
	jmp	.LBB12_12
.LBB12_10:
	movl	$240, %eax
	andl	(%r12), %eax
	cmpl	$144, %eax
	jne	.LBB12_16
# %bb.11:
	movq	8(%r12), %rdi
	callq	quicklistCount
	movq	%rax, %rsi
.LBB12_12:
	movq	%r15, %rdi
	callq	addReplyLongLong
	testl	%ebx, %ebx
	je	.LBB12_14
# %bb.13:
	testl	%r14d, %r14d
	movl	$.L.str.7, %eax
	movl	$.L.str.8, %r14d
	cmoveq	%rax, %r14
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r15), %rax
	movq	72(%r15), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$16, %edi
	movq	%r14, %rsi
	callq	notifyKeyspaceEvent
.LBB12_14:
	movl	%ebx, %eax
	addq	%rax, server+2080(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_15:
	movq	shared+112(%rip), %rsi
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB12_16:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end12:
	.size	pushGenericCommand, .Lfunc_end12-pushGenericCommand
                                        # -- End function
	.globl	lpushCommand            # -- Begin function lpushCommand
	.p2align	4, 0x90
	.type	lpushCommand,@function
lpushCommand:                           # @lpushCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	pushGenericCommand      # TAILCALL
.Lfunc_end13:
	.size	lpushCommand, .Lfunc_end13-lpushCommand
                                        # -- End function
	.globl	rpushCommand            # -- Begin function rpushCommand
	.p2align	4, 0x90
	.type	rpushCommand,@function
rpushCommand:                           # @rpushCommand
# %bb.0:
	movl	$1, %esi
	jmp	pushGenericCommand      # TAILCALL
.Lfunc_end14:
	.size	rpushCommand, .Lfunc_end14-rpushCommand
                                        # -- End function
	.globl	pushxGenericCommand     # -- Begin function pushxGenericCommand
	.p2align	4, 0x90
	.type	pushxGenericCommand,@function
pushxGenericCommand:                    # @pushxGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB15_10
# %bb.1:
	movq	%rax, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB15_10
# %bb.2:
	xorl	%ebx, %ebx
	cmpl	$3, 64(%r12)
	jl	.LBB15_6
# %bb.3:                                # %.preheader
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	listTypePush
	addq	$1, %rbx
	movslq	64(%r12), %rax
	cmpq	%rax, %rbx
	jl	.LBB15_4
# %bb.5:                                # %.loopexit
	addl	$-2, %ebx
.LBB15_6:
	movl	$240, %eax
	andl	(%r15), %eax
	cmpl	$144, %eax
	jne	.LBB15_11
# %bb.7:
	movq	8(%r15), %rdi
	callq	quicklistCount
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	testl	%ebx, %ebx
	je	.LBB15_9
# %bb.8:
	testl	%r14d, %r14d
	movl	$.L.str.7, %eax
	movl	$.L.str.8, %r14d
	cmoveq	%rax, %r14
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$16, %edi
	movq	%r14, %rsi
	callq	notifyKeyspaceEvent
.LBB15_9:
	movl	%ebx, %eax
	addq	%rax, server+2080(%rip)
.LBB15_10:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_11:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end15:
	.size	pushxGenericCommand, .Lfunc_end15-pushxGenericCommand
                                        # -- End function
	.globl	lpushxCommand           # -- Begin function lpushxCommand
	.p2align	4, 0x90
	.type	lpushxCommand,@function
lpushxCommand:                          # @lpushxCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	pushxGenericCommand     # TAILCALL
.Lfunc_end16:
	.size	lpushxCommand, .Lfunc_end16-lpushxCommand
                                        # -- End function
	.globl	rpushxCommand           # -- Begin function rpushxCommand
	.p2align	4, 0x90
	.type	rpushxCommand,@function
rpushxCommand:                          # @rpushxCommand
# %bb.0:
	movl	$1, %esi
	jmp	pushxGenericCommand     # TAILCALL
.Lfunc_end17:
	.size	rpushxCommand, .Lfunc_end17-rpushxCommand
                                        # -- End function
	.globl	linsertCommand          # -- Begin function linsertCommand
	.p2align	4, 0x90
	.type	linsertCommand,@function
linsertCommand:                         # @linsertCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r12
	movq	72(%rdi), %r14
	movq	16(%r14), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB18_1
# %bb.2:
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB18_3
# %bb.21:
	movq	shared+128(%rip), %rsi
.LBB18_19:
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB18_20
.LBB18_1:
	movl	$1, %ebx
	jmp	.LBB18_4
.LBB18_3:
	xorl	%ebx, %ebx
.LBB18_4:
	movq	8(%r14), %rsi
	movq	shared+32(%rip), %rdx
	movq	%r12, %rdi
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB18_20
# %bb.5:
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB18_20
# %bb.6:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movb	(%r14), %al
	shrb	$4, %al
	movb	%al, 8(%rbx)
	movb	$1, 9(%rbx)
	movq	$0, 16(%rbx)
	cmpb	$9, %al
	jne	.LBB18_7
# %bb.9:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	quicklistGetIteratorAtIdx
	movq	%rax, 16(%rbx)
	leaq	-96(%rbp), %r13
	leaq	-104(%rbp), %r15
	.p2align	4, 0x90
.LBB18_10:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movzbl	8(%rbx), %eax
	cmpl	%eax, %ecx
	jne	.LBB18_22
# %bb.11:                               #   in Loop: Header=BB18_10 Depth=1
	movq	%rbx, -104(%rbp)
	cmpb	$9, %al
	jne	.LBB18_12
# %bb.13:                               #   in Loop: Header=BB18_10 Depth=1
	movq	16(%rbx), %rdi
	movq	%r13, %rsi
	callq	quicklistNext
	testl	%eax, %eax
	je	.LBB18_18
# %bb.14:                               #   in Loop: Header=BB18_10 Depth=1
	movq	72(%r12), %rax
	movq	24(%rax), %rsi
	movq	%r15, %rdi
	callq	listTypeEqual
	testl	%eax, %eax
	je	.LBB18_10
# %bb.15:
	movq	72(%r12), %rax
	movq	32(%rax), %rsi
	leaq	-104(%rbp), %rdi
	movl	-44(%rbp), %edx         # 4-byte Reload
	callq	listTypeInsert
	movq	16(%rbx), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.11, %esi
	movl	$16, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB18_16
# %bb.17:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
.LBB18_20:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_18:
	movq	16(%rbx), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	movq	shared+48(%rip), %rsi
	jmp	.LBB18_19
.LBB18_22:
	movl	$.L.str.2, %edi
	movl	$.L.str, %esi
	movl	$114, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB18_12:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$120, %esi
.LBB18_8:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB18_7:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$98, %esi
	jmp	.LBB18_8
.LBB18_16:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	jmp	.LBB18_8
.Lfunc_end18:
	.size	linsertCommand, .Lfunc_end18-linsertCommand
                                        # -- End function
	.globl	llenCommand             # -- Begin function llenCommand
	.p2align	4, 0x90
	.type	llenCommand,@function
llenCommand:                            # @llenCommand
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
	je	.LBB19_4
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB19_2
.LBB19_4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB19_2:
	movl	$240, %eax
	andl	(%rbx), %eax
	cmpl	$144, %eax
	jne	.LBB19_5
# %bb.3:
	movq	8(%rbx), %rdi
	callq	quicklistCount
	movq	%r14, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.LBB19_5:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end19:
	.size	llenCommand, .Lfunc_end19-llenCommand
                                        # -- End function
	.globl	lindexCommand           # -- Begin function lindexCommand
	.p2align	4, 0x90
	.type	lindexCommand,@function
lindexCommand:                          # @lindexCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB20_11
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB20_11
# %bb.2:
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	leaq	-24(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB20_11
# %bb.3:
	movl	$240, %eax
	andl	(%rbx), %eax
	cmpl	$144, %eax
	jne	.LBB20_9
# %bb.4:
	movq	8(%rbx), %rdi
	movq	-24(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	callq	quicklistIndex
	testl	%eax, %eax
	je	.LBB20_10
# %bb.5:
	movq	-48(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB20_7
# %bb.6:
	movl	-32(%rbp), %esi
	callq	createStringObject
	jmp	.LBB20_8
.LBB20_10:
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB20_11
.LBB20_7:
	movq	-40(%rbp), %rdi
	callq	createStringObjectFromLongLong
.LBB20_8:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB20_11:
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB20_9:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$337, %esi              # imm = 0x151
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end20:
	.size	lindexCommand, .Lfunc_end20-lindexCommand
                                        # -- End function
	.globl	lsetCommand             # -- Begin function lsetCommand
	.p2align	4, 0x90
	.type	lsetCommand,@function
lsetCommand:                            # @lsetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+120(%rip), %rdx
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB21_16
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB21_16
# %bb.2:
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	movq	24(%rax), %r15
	leaq	-32(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB21_16
# %bb.3:
	movl	$240, %eax
	andl	(%rbx), %eax
	cmpl	$144, %eax
	jne	.LBB21_14
# %bb.4:
	movq	8(%rbx), %rdi
	movq	-32(%rbp), %rsi
	movq	8(%r15), %rdx
	movzbl	-1(%rdx), %ecx
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB21_5
# %bb.6:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_7:
	shrq	$3, %rcx
	jmp	.LBB21_12
.LBB21_11:
	movq	-17(%rdx), %rcx
	jmp	.LBB21_12
.LBB21_9:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB21_12
.LBB21_10:
	movl	-9(%rdx), %ecx
	jmp	.LBB21_12
.LBB21_8:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB21_12
.LBB21_5:
	xorl	%ecx, %ecx
.LBB21_12:
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	quicklistReplaceAtIndex
	testl	%eax, %eax
	je	.LBB21_13
# %bb.15:
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.12, %esi
	movl	$16, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	jmp	.LBB21_16
.LBB21_13:
	movq	shared+144(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB21_16:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_14:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$363, %esi              # imm = 0x16B
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end21:
	.size	lsetCommand, .Lfunc_end21-lsetCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_7
	.quad	.LBB21_8
	.quad	.LBB21_9
	.quad	.LBB21_10
	.quad	.LBB21_11
                                        # -- End function
	.text
	.globl	popGenericCommand       # -- Begin function popGenericCommand
	.p2align	4, 0x90
	.type	popGenericCommand,@function
popGenericCommand:                      # @popGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB22_15
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB22_15
# %bb.2:
	movq	$0, -40(%rbp)
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB22_8
# %bb.3:
	movl	%r15d, %eax
	negl	%eax
	sbbl	%esi, %esi
	movq	8(%r14), %rdi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %r8
	movl	$listPopSaver, %r9d
	xorl	%ecx, %ecx
	callq	quicklistPopCustom
	movq	-40(%rbp), %r12
	testl	%eax, %eax
	je	.LBB22_6
# %bb.4:
	testq	%r12, %r12
	jne	.LBB22_6
# %bb.5:
	movq	-48(%rbp), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %r12
	movq	%rax, -40(%rbp)
.LBB22_6:
	testq	%r12, %r12
	je	.LBB22_7
# %bb.10:
	testl	%r15d, %r15d
	movl	$.L.str.13, %eax
	movl	$.L.str.14, %r15d
	cmoveq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	addReplyBulk
	movq	%r12, %rdi
	callq	decrRefCount
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$16, %edi
	movq	%r15, %rsi
	callq	notifyKeyspaceEvent
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB22_11
# %bb.12:
	movq	8(%r14), %rdi
	callq	quicklistCount
	testq	%rax, %rax
	jne	.LBB22_14
# %bb.13:
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
.LBB22_14:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	jmp	.LBB22_15
.LBB22_7:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB22_15:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_8:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$69, %esi
	jmp	.LBB22_9
.LBB22_11:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
.LBB22_9:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end22:
	.size	popGenericCommand, .Lfunc_end22-popGenericCommand
                                        # -- End function
	.globl	lpopCommand             # -- Begin function lpopCommand
	.p2align	4, 0x90
	.type	lpopCommand,@function
lpopCommand:                            # @lpopCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	popGenericCommand       # TAILCALL
.Lfunc_end23:
	.size	lpopCommand, .Lfunc_end23-lpopCommand
                                        # -- End function
	.globl	rpopCommand             # -- Begin function rpopCommand
	.p2align	4, 0x90
	.type	rpopCommand,@function
rpopCommand:                            # @rpopCommand
# %bb.0:
	movl	$1, %esi
	jmp	popGenericCommand       # TAILCALL
.Lfunc_end24:
	.size	rpopCommand, .Lfunc_end24-rpopCommand
                                        # -- End function
	.globl	lrangeCommand           # -- Begin function lrangeCommand
	.p2align	4, 0x90
	.type	lrangeCommand,@function
lrangeCommand:                          # @lrangeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB25_32
# %bb.1:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	je	.LBB25_2
.LBB25_32:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB25_32
# %bb.3:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB25_32
# %bb.4:
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB25_5
# %bb.7:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movq	-48(%rbp), %r13
	testq	%r13, %r13
	jns	.LBB25_9
# %bb.8:
	addq	%rax, %r13
	movq	%r13, -48(%rbp)
.LBB25_9:
	movq	-56(%rbp), %r12
	testq	%r12, %r12
	js	.LBB25_10
# %bb.11:
	testq	%r13, %r13
	js	.LBB25_12
.LBB25_13:
	cmpq	%rax, %r13
	jl	.LBB25_14
	jmp	.LBB25_15
.LBB25_10:
	addq	%rax, %r12
	movq	%r12, -56(%rbp)
	testq	%r13, %r13
	jns	.LBB25_13
.LBB25_12:
	movq	$0, -48(%rbp)
	xorl	%r13d, %r13d
	cmpq	%rax, %r13
	jge	.LBB25_15
.LBB25_14:
	cmpq	%r12, %r13
	jg	.LBB25_15
# %bb.16:
	cmpq	%rax, %r12
	jl	.LBB25_18
# %bb.17:
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	movq	%rax, %r12
.LBB25_18:
	movq	%r12, %rsi
	subq	%r13, %rsi
	addq	$1, %rsi
	movq	%rbx, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	addReplyMultiBulkLen
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB25_34
# %bb.19:
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%r14, (%rax)
	movb	(%r14), %al
	shrb	$4, %al
	movb	%al, 8(%r15)
	movb	$1, 9(%r15)
	movq	$0, 16(%r15)
	cmpb	$9, %al
	jne	.LBB25_20
# %bb.21:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	quicklistGetIteratorAtIdx
	movq	%rax, 16(%r15)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB25_31
# %bb.22:
	leaq	-120(%rbp), %r14
	notq	%r12
	addq	%r13, %r12
	jmp	.LBB25_23
.LBB25_28:                              #   in Loop: Header=BB25_23 Depth=1
	movq	-88(%rbp), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	incq	%r12
	je	.LBB25_30
.LBB25_23:                              # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movzbl	8(%r15), %eax
	cmpl	%eax, %ecx
	jne	.LBB25_33
# %bb.24:                               #   in Loop: Header=BB25_23 Depth=1
	movq	%r15, -128(%rbp)
	cmpb	$9, %al
	jne	.LBB25_25
# %bb.26:                               #   in Loop: Header=BB25_23 Depth=1
	movq	16(%r15), %rdi
	movq	%r14, %rsi
	callq	quicklistNext
	movq	-96(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB25_28
# %bb.27:                               #   in Loop: Header=BB25_23 Depth=1
	movl	-80(%rbp), %edx
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
	incq	%r12
	jne	.LBB25_23
.LBB25_30:
	movq	16(%r15), %rax
.LBB25_31:
	movq	%rax, %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
	jmp	.LBB25_32
.LBB25_15:
	movq	shared+104(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB25_32
.LBB25_33:
	movl	$.L.str.2, %edi
	movl	$.L.str, %esi
	movl	$114, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB25_25:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$120, %esi
.LBB25_6:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB25_5:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	jmp	.LBB25_6
.LBB25_34:
	movl	$.L.str, %edi
	movl	$.L.str.16, %edx
	movl	$440, %esi              # imm = 0x1B8
	jmp	.LBB25_6
.LBB25_20:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$98, %esi
	jmp	.LBB25_6
.Lfunc_end25:
	.size	lrangeCommand, .Lfunc_end25-lrangeCommand
                                        # -- End function
	.globl	ltrimCommand            # -- Begin function ltrimCommand
	.p2align	4, 0x90
	.type	ltrimCommand,@function
ltrimCommand:                           # @ltrimCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB26_23
# %bb.1:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	je	.LBB26_2
.LBB26_23:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+8(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB26_23
# %bb.3:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB26_23
# %bb.4:
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB26_5
# %bb.7:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movq	-48(%rbp), %rcx
	testq	%rcx, %rcx
	jns	.LBB26_9
# %bb.8:
	addq	%rax, %rcx
	movq	%rcx, -48(%rbp)
.LBB26_9:
	movq	-40(%rbp), %rdx
	testq	%rdx, %rdx
	jns	.LBB26_11
# %bb.10:
	addq	%rax, %rdx
	movq	%rdx, -40(%rbp)
.LBB26_11:
	testq	%rcx, %rcx
	jns	.LBB26_13
# %bb.12:
	movq	$0, -48(%rbp)
	xorl	%ecx, %ecx
.LBB26_13:
	xorl	%r15d, %r15d
	cmpq	%rax, %rcx
	jge	.LBB26_18
# %bb.14:
	cmpq	%rdx, %rcx
	jg	.LBB26_18
# %bb.15:
	cmpq	%rax, %rdx
	jl	.LBB26_17
# %bb.16:
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
.LBB26_17:
	notq	%rdx
	movq	%rax, %r15
	addq	%rdx, %r15
	movq	%rcx, %rax
.LBB26_18:
	movl	$240, %r12d
	movl	(%r14), %ecx
	andl	%r12d, %ecx
	cmpl	$144, %ecx
	jne	.LBB26_24
# %bb.19:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	quicklistDelRange
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	negq	%rsi
	movq	%r15, %rdx
	callq	quicklistDelRange
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.17, %esi
	movl	$16, %edi
	callq	notifyKeyspaceEvent
	andl	(%r14), %r12d
	cmpl	$144, %r12d
	jne	.LBB26_5
# %bb.20:
	movq	8(%r14), %rdi
	callq	quicklistCount
	testq	%rax, %rax
	jne	.LBB26_22
# %bb.21:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
.LBB26_22:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB26_23
.LBB26_5:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	jmp	.LBB26_6
.LBB26_24:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$477, %esi              # imm = 0x1DD
.LBB26_6:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end26:
	.size	ltrimCommand, .Lfunc_end26-ltrimCommand
                                        # -- End function
	.globl	lremCommand             # -- Begin function lremCommand
	.p2align	4, 0x90
	.type	lremCommand,@function
lremCommand:                            # @lremCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	16(%rax), %rsi
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	je	.LBB27_1
.LBB27_29:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_1:
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	movq	%r12, %rdi
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB27_29
# %bb.2:
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB27_29
# %bb.3:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	movq	%r14, -56(%rbp)         # 8-byte Spill
	js	.LBB27_4
# %bb.8:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movb	(%r14), %al
	shrb	$4, %al
	movb	%al, 8(%rbx)
	movb	$1, 9(%rbx)
	movq	$0, 16(%rbx)
	cmpb	$9, %al
	jne	.LBB27_5
# %bb.9:
	movq	%rbx, %r15
	addq	$8, %r15
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	.LBB27_10
.LBB27_4:
	negq	%rax
	movq	%rax, -48(%rbp)
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movb	(%r14), %al
	shrb	$4, %al
	movb	%al, 8(%rbx)
	movb	$0, 9(%rbx)
	movq	$0, 16(%rbx)
	cmpb	$9, %al
	jne	.LBB27_5
# %bb.7:
	movq	%rbx, %r15
	addq	$8, %r15
	movq	8(%r14), %rdi
	movl	$1, %esi
	movq	$-1, %rdx
.LBB27_10:
	callq	quicklistGetIteratorAtIdx
	movq	%rax, 16(%rbx)
	movq	(%rbx), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movzbl	8(%rbx), %eax
	cmpl	%eax, %ecx
	jne	.LBB27_21
# %bb.11:
	leaq	-112(%rbp), %r14
	xorl	%r13d, %r13d
	jmp	.LBB27_12
	.p2align	4, 0x90
.LBB27_20:                              #   in Loop: Header=BB27_12 Depth=1
	movq	(%rbx), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movzbl	(%r15), %eax
	cmpl	%eax, %ecx
	jne	.LBB27_21
.LBB27_12:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, -120(%rbp)
	cmpb	$9, %al
	jne	.LBB27_13
# %bb.14:                               #   in Loop: Header=BB27_12 Depth=1
	movq	16(%rbx), %rdi
	movq	%r14, %rsi
	callq	quicklistNext
	testl	%eax, %eax
	je	.LBB27_22
# %bb.15:                               #   in Loop: Header=BB27_12 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	listTypeEqual
	testl	%eax, %eax
	je	.LBB27_20
# %bb.16:                               #   in Loop: Header=BB27_12 Depth=1
	movq	-120(%rbp), %rax
	cmpb	$9, 8(%rax)
	jne	.LBB27_17
# %bb.18:                               #   in Loop: Header=BB27_12 Depth=1
	movq	16(%rbx), %rdi
	movq	%r14, %rsi
	callq	quicklistDelEntry
	addq	$1, server+2080(%rip)
	addq	$1, %r13
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB27_20
# %bb.19:                               #   in Loop: Header=BB27_12 Depth=1
	cmpq	%rax, %r13
	jne	.LBB27_20
.LBB27_22:
	movq	16(%rbx), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	testq	%r13, %r13
	je	.LBB27_24
# %bb.23:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.18, %esi
	movl	$16, %edi
	callq	notifyKeyspaceEvent
.LBB27_24:
	movl	$240, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	andl	(%rcx), %eax
	cmpl	$144, %eax
	jne	.LBB27_25
# %bb.26:
	movq	8(%rcx), %rdi
	callq	quicklistCount
	testq	%rax, %rax
	jne	.LBB27_28
# %bb.27:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
.LBB27_28:
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	addReplyLongLong
	jmp	.LBB27_29
.LBB27_21:
	movl	$.L.str.2, %edi
	movl	$.L.str, %esi
	movl	$114, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB27_13:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$120, %esi
	jmp	.LBB27_6
.LBB27_17:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$174, %esi
.LBB27_6:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB27_5:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$98, %esi
	jmp	.LBB27_6
.LBB27_25:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	jmp	.LBB27_6
.Lfunc_end27:
	.size	lremCommand, .Lfunc_end27-lremCommand
                                        # -- End function
	.globl	rpoplpushHandlePush     # -- Begin function rpoplpushHandlePush
	.p2align	4, 0x90
	.type	rpoplpushHandlePush,@function
rpoplpushHandlePush:                    # @rpoplpushHandlePush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	testq	%rdx, %rdx
	jne	.LBB28_2
# %bb.1:
	callq	createQuicklistObject
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	movl	server+2864(%rip), %esi
	movl	server+2868(%rip), %edx
	callq	quicklistSetOptions
	movq	16(%r12), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	dbAdd
.LBB28_2:
	movq	16(%r12), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	listTypePush
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.7, %esi
	movl	$16, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movq	%r12, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyBulk            # TAILCALL
.Lfunc_end28:
	.size	rpoplpushHandlePush, .Lfunc_end28-rpoplpushHandlePush
                                        # -- End function
	.globl	rpoplpushCommand        # -- Begin function rpoplpushCommand
	.p2align	4, 0x90
	.type	rpoplpushCommand,@function
rpoplpushCommand:                       # @rpoplpushCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyWriteOrReply
	testq	%rax, %rax
	je	.LBB29_17
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB29_2
.LBB29_17:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_2:
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB29_3
# %bb.5:
	movq	8(%r14), %rdi
	callq	quicklistCount
	testq	%rax, %rax
	je	.LBB29_18
# %bb.6:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	callq	lookupKeyWrite
	movq	%rax, %r12
	movq	72(%rbx), %rax
	movq	8(%rax), %r15
	testq	%r12, %r12
	je	.LBB29_8
# %bb.7:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB29_17
.LBB29_8:
	movq	$0, -48(%rbp)
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB29_19
# %bb.9:
	movq	8(%r14), %rdi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %r8
	movl	$listPopSaver, %r9d
	movl	$-1, %esi
	xorl	%ecx, %ecx
	callq	quicklistPopCustom
	movq	-48(%rbp), %r13
	testl	%eax, %eax
	je	.LBB29_12
# %bb.10:
	testq	%r13, %r13
	jne	.LBB29_12
# %bb.11:
	movq	-56(%rbp), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %r13
	movq	%rax, -48(%rbp)
.LBB29_12:
	movq	%r15, %rdi
	callq	incrRefCount
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	rpoplpushHandlePush
	movq	%r13, %rdi
	callq	decrRefCount
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.14, %esi
	movl	$16, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movl	$240, %eax
	andl	(%r14), %eax
	cmpl	$144, %eax
	jne	.LBB29_3
# %bb.13:
	movq	8(%r14), %rdi
	callq	quicklistCount
	testq	%rax, %rax
	jne	.LBB29_15
# %bb.14:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	dbDelete
	movq	16(%rbx), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$4, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
.LBB29_15:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	movq	%r15, %rdi
	callq	decrRefCount
	addq	$1, server+2080(%rip)
	movq	80(%rbx), %rax
	movl	$brpoplpushCommand, %ecx
	cmpq	%rcx, 8(%rax)
	jne	.LBB29_17
# %bb.16:
	movq	shared+336(%rip), %rdx
	movq	72(%rbx), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %r8
	movq	%rbx, %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	rewriteClientCommandVector
	jmp	.LBB29_17
.LBB29_18:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB29_3:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	jmp	.LBB29_4
.LBB29_19:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$69, %esi
.LBB29_4:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end29:
	.size	rpoplpushCommand, .Lfunc_end29-rpoplpushCommand
                                        # -- End function
	.globl	brpoplpushCommand       # -- Begin function brpoplpushCommand
	.p2align	4, 0x90
	.type	brpoplpushCommand,@function
brpoplpushCommand:                      # @brpoplpushCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	24(%rax), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getTimeoutFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB30_11
# %bb.1:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB30_2
# %bb.6:
	movq	%rax, %r14
	movl	(%rax), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$1, %ecx
	jne	.LBB30_7
# %bb.8:
	andl	$240, %eax
	cmpl	$144, %eax
	jne	.LBB30_12
# %bb.9:
	movq	8(%r14), %rdi
	callq	quicklistCount
	testq	%rax, %rax
	je	.LBB30_13
# %bb.10:
	movq	%rbx, %rdi
	callq	rpoplpushCommand
	jmp	.LBB30_11
.LBB30_2:
	testb	$8, 160(%rbx)
	jne	.LBB30_3
# %bb.5:
	movq	72(%rbx), %rdx
	movq	-24(%rbp), %r8
	movq	16(%rdx), %r9
	addq	$8, %rdx
	movq	$0, (%rsp)
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$1, %ecx
	callq	blockForKeys
	jmp	.LBB30_11
.LBB30_7:
	movq	shared+112(%rip), %rsi
	jmp	.LBB30_4
.LBB30_3:
	movq	shared+80(%rip), %rsi
.LBB30_4:
	movq	%rbx, %rdi
	callq	addReply
.LBB30_11:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB30_12:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB30_13:
	movl	$.L.str.20, %edx
	movl	$.L.str, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$773, %r8d              # imm = 0x305
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end30:
	.size	brpoplpushCommand, .Lfunc_end30-brpoplpushCommand
                                        # -- End function
	.globl	serveClientBlockedOnList # -- Begin function serveClientBlockedOnList
	.p2align	4, 0x90
	.type	serveClientBlockedOnList,@function
serveClientBlockedOnList:               # @serveClientBlockedOnList
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	testq	%rdx, %rdx
	je	.LBB31_1
# %bb.2:
	movq	%rdx, %rbx
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	16(%r13), %rdi
	movq	%rdx, %rsi
	callq	lookupKeyWrite
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB31_4
# %bb.3:
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	callq	checkType
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB31_6
.LBB31_4:
	movq	shared+312(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	%r14, -56(%rbp)
	movq	server+928(%rip), %rdi
	movl	40(%r12), %esi
	leaq	-64(%rbp), %rdx
	movl	$2, %ecx
	movl	$3, %r8d
	callq	propagate
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rcx
	callq	rpoplpushHandlePush
	movq	shared+328(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	%r15, -48(%rbp)
	movq	server+912(%rip), %rdi
	movl	40(%r12), %esi
	leaq	-64(%rbp), %rdx
	movl	$3, %ecx
	movl	$3, %r8d
	callq	propagate
	movq	16(%r13), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.14, %esi
	movl	$16, %edi
	jmp	.LBB31_5
.LBB31_1:
	testl	%r9d, %r9d
	movl	$shared+320, %eax
	movl	$shared+312, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	%r14, -56(%rbp)
	movl	$server+920, %eax
	movl	$server+928, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rdi
	movl	40(%r12), %esi
	movl	$.L.str.13, %eax
	movl	$.L.str.14, %ebx
	cmoveq	%rax, %rbx
	leaq	-64(%rbp), %rdx
	movl	$2, %ecx
	movl	$3, %r8d
	callq	propagate
	movl	$2, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	addReplyBulk
	movq	16(%r13), %rax
	movl	40(%rax), %ecx
	movl	$16, %edi
	movq	%rbx, %rsi
.LBB31_5:
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	xorl	%eax, %eax
.LBB31_6:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	serveClientBlockedOnList, .Lfunc_end31-serveClientBlockedOnList
                                        # -- End function
	.globl	blockingPopGenericCommand # -- Begin function blockingPopGenericCommand
	.p2align	4, 0x90
	.type	blockingPopGenericCommand,@function
blockingPopGenericCommand:              # @blockingPopGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movslq	64(%rdi), %rcx
	movq	-8(%rax,%rcx,8), %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getTimeoutFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB32_24
# %bb.1:
	movl	64(%r15), %ecx
	cmpl	$3, %ecx
	jl	.LBB32_21
# %bb.2:
	movl	$1, %r13d
	jmp	.LBB32_3
	.p2align	4, 0x90
.LBB32_20:                              #   in Loop: Header=BB32_3 Depth=1
	addq	$1, %r13
	movslq	64(%r15), %rcx
	leaq	-1(%rcx), %rax
	cmpq	%rax, %r13
	jge	.LBB32_21
.LBB32_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%r13,8), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB32_20
# %bb.4:                                #   in Loop: Header=BB32_3 Depth=1
	movq	%rax, %rbx
	movl	(%rax), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$1, %ecx
	jne	.LBB32_5
# %bb.7:                                #   in Loop: Header=BB32_3 Depth=1
	andl	$240, %eax
	cmpl	$144, %eax
	jne	.LBB32_8
# %bb.10:                               #   in Loop: Header=BB32_3 Depth=1
	movq	8(%rbx), %rdi
	callq	quicklistCount
	testq	%rax, %rax
	je	.LBB32_20
# %bb.11:
	movq	$0, -48(%rbp)
	movl	$240, %eax
	andl	(%rbx), %eax
	cmpl	$144, %eax
	jne	.LBB32_25
# %bb.12:
	movl	%r14d, %eax
	negl	%eax
	sbbl	%esi, %esi
	movq	8(%rbx), %rdi
	leaq	-48(%rbp), %rdx
	leaq	-72(%rbp), %r8
	movl	$listPopSaver, %r9d
	xorl	%ecx, %ecx
	callq	quicklistPopCustom
	movq	-48(%rbp), %r12
	testl	%eax, %eax
	je	.LBB32_15
# %bb.13:
	testq	%r12, %r12
	jne	.LBB32_15
# %bb.14:
	movq	-72(%rbp), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %r12
	movq	%rax, -48(%rbp)
.LBB32_15:
	testq	%r12, %r12
	je	.LBB32_26
# %bb.16:
	testl	%r14d, %r14d
	movl	$.L.str.13, %eax
	movl	$.L.str.14, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$2, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movq	72(%r15), %rax
	movq	(%rax,%r13,8), %rsi
	movq	%r15, %rdi
	callq	addReplyBulk
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	addReplyBulk
	movq	%r12, %rdi
	callq	decrRefCount
	movq	16(%r15), %rax
	movq	72(%r15), %rcx
	movq	(%rcx,%r13,8), %rdx
	movl	40(%rax), %ecx
	movl	$16, %edi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	notifyKeyspaceEvent
	movl	$240, %eax
	andl	(%rbx), %eax
	cmpl	$144, %eax
	jne	.LBB32_8
# %bb.17:
	movq	8(%rbx), %rdi
	callq	quicklistCount
	testq	%rax, %rax
	jne	.LBB32_19
# %bb.18:
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%r13,8), %rsi
	callq	dbDelete
	movq	16(%r15), %rax
	movq	72(%r15), %rcx
	movq	(%rcx,%r13,8), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
.LBB32_19:
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%r13,8), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	testl	%r14d, %r14d
	movl	$shared+320, %eax
	movl	$shared+312, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rdx
	movq	72(%r15), %rax
	movq	(%rax,%r13,8), %rcx
	movq	%r15, %rdi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	rewriteClientCommandVector
	jmp	.LBB32_24
.LBB32_21:
	testb	$8, 160(%r15)
	jne	.LBB32_22
# %bb.23:
	movq	72(%r15), %rdx
	addq	$8, %rdx
	addl	$-2, %ecx
	movq	-64(%rbp), %r8
	movq	$0, (%rsp)
	movq	%r15, %rdi
	movl	$1, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r9d, %r9d
	callq	blockForKeys
	jmp	.LBB32_24
.LBB32_22:
	movq	shared+88(%rip), %rsi
	jmp	.LBB32_6
.LBB32_5:
	movq	shared+112(%rip), %rsi
.LBB32_6:
	movq	%r15, %rdi
	callq	addReply
.LBB32_24:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_8:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
.LBB32_9:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB32_25:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$69, %esi
	jmp	.LBB32_9
.LBB32_26:
	movl	$.L.str.19, %edi
	movl	$.L.str, %esi
	movl	$705, %edx              # imm = 0x2C1
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end32:
	.size	blockingPopGenericCommand, .Lfunc_end32-blockingPopGenericCommand
                                        # -- End function
	.globl	blpopCommand            # -- Begin function blpopCommand
	.p2align	4, 0x90
	.type	blpopCommand,@function
blpopCommand:                           # @blpopCommand
# %bb.0:
	xorl	%esi, %esi
	jmp	blockingPopGenericCommand # TAILCALL
.Lfunc_end33:
	.size	blpopCommand, .Lfunc_end33-blpopCommand
                                        # -- End function
	.globl	brpopCommand            # -- Begin function brpopCommand
	.p2align	4, 0x90
	.type	brpopCommand,@function
brpopCommand:                           # @brpopCommand
# %bb.0:
	movl	$1, %esi
	jmp	blockingPopGenericCommand # TAILCALL
.Lfunc_end34:
	.size	brpopCommand, .Lfunc_end34-brpopCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_list.c"
	.size	.L.str, 74

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Unknown list encoding"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"li->subject->encoding == li->encoding"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sdsEncodedObject(o)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"subject->type==OBJ_LIST"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"subject->encoding==OBJ_ENCODING_ZIPLIST"
	.size	.L.str.5, 40

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unsupported list conversion"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"lpush"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"rpush"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"after"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"before"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"linsert"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"lset"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"lpop"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"rpop"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"del"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"List encoding is not QUICKLIST!"
	.size	.L.str.16, 32

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ltrim"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"lrem"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"value != NULL"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"listTypeLength(key) > 0"
	.size	.L.str.20, 24

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
