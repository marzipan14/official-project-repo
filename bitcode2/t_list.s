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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %rdi
	movl	%r14d, %ecx
	callq	quicklistPush
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%esi, %esi
	callq	createStringObject
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB2_4
# %bb.2:
	testq	%rax, %rax
	jne	.LBB2_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, -8(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_4:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB3_2
# %bb.1:
	movq	8(%rdi), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jne	.LBB6_3
# %bb.1:
	movq	%rdi, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %al
	jne	.LBB6_2
# %bb.4:
	movq	16(%rdi), %rdi
	addq	$8, %rsi
	callq	quicklistNext
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_3
# %bb.1:
	movq	32(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_4
# %bb.2:
	movl	48(%rdi), %esi
	movq	%rax, %rdi
	callq	createStringObject
	jmp	.LBB7_5
.LBB7_4:
	movq	40(%rdi), %rdi
	callq	createStringObjectFromLongLong
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_15
# %bb.1:
	movl	%edx, %r15d
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	getDecodedObject
	movq	%rax, %r14
	movq	8(%rax), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB8_9
.LBB8_8:
	movq	-17(%rdx), %rcx
	jmp	.LBB8_9
.LBB8_6:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB8_9
.LBB8_7:
	movl	-9(%rdx), %ecx
	jmp	.LBB8_9
.LBB8_5:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB8_9
.LBB8_2:
	xorl	%ecx, %ecx
.LBB8_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r15d
	jne	.LBB8_11
# %bb.10:
	movq	8(%rbx), %rdi
	addq	$8, %rbx
	movq	%rbx, %rsi
	callq	quicklistInsertAfter
	jmp	.LBB8_13
.LBB8_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB8_14
# %bb.12:
	movq	8(%rbx), %rdi
	addq	$8, %rbx
	movq	%rbx, %rsi
	callq	quicklistInsertBefore
.LBB8_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_14:
	movq	%r14, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_15:
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_12
# %bb.1:
	movl	(%rsi), %eax
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB9_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB9_13
.LBB9_3:
	movq	24(%rdi), %rdi
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB9_4
# %bb.5:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_6:
	shrq	$3, %rdx
	jmp	.LBB9_11
.LBB9_10:
	movq	-17(%rsi), %rdx
	jmp	.LBB9_11
.LBB9_8:
	movzwl	-5(%rsi), %edx
	jmp	.LBB9_11
.LBB9_9:
	movl	-9(%rsi), %edx
	jmp	.LBB9_11
.LBB9_7:
	movzbl	-3(%rsi), %edx
	jmp	.LBB9_11
.LBB9_4:
	xorl	%edx, %edx
.LBB9_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $edx killed $edx killed $rdx
	callq	quicklistCompare
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB9_12:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$165, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB9_13:
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
	.quad	.LBB9_6
	.quad	.LBB9_7
	.quad	.LBB9_8
	.quad	.LBB9_9
	.quad	.LBB9_10
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_2
# %bb.1:
	movq	16(%rdi), %rdi
	addq	$8, %rsi
	callq	quicklistDelEntry
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB11_1
# %bb.3:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$80, %eax
	jne	.LBB11_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	sete	%al
	je	.LBB12_3
# %bb.1:
	movl	(%r12), %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB12_2
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$3, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB12_9
# %bb.4:                                # %.preheader
	movl	$2, %ebx
	jmp	.LBB12_5
	.p2align	4, 0x90
.LBB12_7:                               #   in Loop: Header=BB12_5 Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	listTypePush
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jge	.LBB12_8
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	je	.LBB12_7
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_7
.LBB12_8:                               # %.loopexit
	addl	$-2, %ebx
.LBB12_9:
	testb	%al, %al
	je	.LBB12_11
# %bb.10:
	xorl	%esi, %esi
	jmp	.LBB12_13
.LBB12_11:
	movl	$240, %eax
	andl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB12_17
# %bb.12:
	movq	8(%r12), %rdi
	callq	quicklistCount
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_13:
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB12_15
# %bb.14:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB12_15:
	movl	%ebx, %eax
	addq	%rax, server+2080(%rip)
	jmp	.LBB12_16
.LBB12_2:
	movq	shared+112(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB12_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_17:
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
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	pushGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	lpushCommand, .Lfunc_end13-lpushCommand
                                        # -- End function
	.globl	rpushCommand            # -- Begin function rpushCommand
	.p2align	4, 0x90
	.type	rpushCommand,@function
rpushCommand:                           # @rpushCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	pushGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_10
# %bb.1:
	movq	%rax, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_10
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$3, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB15_4
# %bb.5:                                # %.loopexit
	addl	$-2, %ebx
.LBB15_6:
	movl	$240, %eax
	andl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB15_11
# %bb.7:
	movq	8(%r15), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB15_9:
	movl	%ebx, %eax
	addq	%rax, server+2080(%rip)
.LBB15_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	pushxGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	lpushxCommand, .Lfunc_end16-lpushxCommand
                                        # -- End function
	.globl	rpushxCommand           # -- Begin function rpushxCommand
	.p2align	4, 0x90
	.type	rpushxCommand,@function
rpushxCommand:                          # @rpushxCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	pushxGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	subq	$56, %rsp
	movq	%rdi, %r12
	movq	72(%rdi), %r14
	movq	16(%r14), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_1
# %bb.2:
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_3
# %bb.18:
	movq	shared+128(%rip), %rsi
.LBB18_16:
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB18_17
.LBB18_1:
	movl	$1, %r15d
	jmp	.LBB18_4
.LBB18_3:
	xorl	%r15d, %r15d
.LBB18_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rsi
	movq	shared+32(%rip), %rdx
	movq	%r12, %rdi
	callq	lookupKeyWriteOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_17
# %bb.5:
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_17
# %bb.6:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	%r14, (%rax)
	movb	(%r14), %al
	shrb	$4, %al
	movb	%al, 8(%r13)
	movb	$1, 9(%r13)
	movq	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %al
	jne	.LBB18_7
# %bb.9:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	quicklistGetIteratorAtIdx
	movq	%rax, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %rbx
	.p2align	4, 0x90
.LBB18_10:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	listTypeNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_15
# %bb.11:                               #   in Loop: Header=BB18_10 Depth=1
	movq	72(%r12), %rax
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	listTypeEqual
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_10
# %bb.12:
	movq	72(%r12), %rax
	movq	32(%rax), %rsi
	leaq	-96(%rbp), %rdi
	movl	%r15d, %edx
	callq	listTypeInsert
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdi
	callq	zfree
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB18_13
# %bb.14:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
.LBB18_17:
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
.LBB18_15:
	movq	16(%r13), %rdi
	callq	zfree
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+48(%rip), %rsi
	jmp	.LBB18_16
.LBB18_7:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$98, %esi
	jmp	.LBB18_8
.LBB18_13:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
.LBB18_8:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_4
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_4
# %bb.2:
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB19_5
# %bb.3:
	movq	8(%rbx), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
.LBB19_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_13
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB20_13
# %bb.2:
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	leaq	-24(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB20_12
# %bb.3:
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB20_9
# %bb.4:
	movq	8(%rbx), %rdi
	movq	-24(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	callq	quicklistIndex
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB20_10
# %bb.5:
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB20_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_18
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB21_18
# %bb.2:
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	movq	24(%rax), %r15
	leaq	-32(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB21_17
# %bb.3:
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB21_14
# %bb.4:
	movq	8(%rbx), %rdi
	movq	-32(%rbp), %rsi
	movq	8(%r15), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	quicklistReplaceAtIndex
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB21_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB21_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyWriteOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_9
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB22_9
# %bb.2:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	listTypePop
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_3
# %bb.4:
	movq	%rax, %r12
	testl	%r15d, %r15d
	movl	$.L.str.13, %eax
	movl	$.L.str.14, %r15d
	cmoveq	%rax, %r15
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	addReplyBulk
	movq	%r12, %rdi
	callq	decrRefCount
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$16, %edi
	movq	%r15, %rsi
	callq	notifyKeyspaceEvent
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB22_10
# %bb.5:
	movq	8(%rbx), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB22_7
# %bb.6:
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB22_7:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	jmp	.LBB22_8
.LBB22_3:
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB22_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_10:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
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
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	popGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	lpopCommand, .Lfunc_end23-lpopCommand
                                        # -- End function
	.globl	rpopCommand             # -- Begin function rpopCommand
	.p2align	4, 0x90
	.type	rpopCommand,@function
rpopCommand:                            # @rpopCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	popGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB25_29
# %bb.1:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_2
.LBB25_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_29
# %bb.3:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB25_29
# %bb.4:
	movl	$240, %eax
	andl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB25_5
# %bb.7:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jns	.LBB25_9
# %bb.8:
	addq	%rax, %r13
	movq	%r13, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_9:
	movq	-56(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jns	.LBB25_11
# %bb.10:
	addq	%rax, %r12
	movq	%r12, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jns	.LBB25_13
# %bb.12:
	movq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB25_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r13
	jg	.LBB25_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r13
	jge	.LBB25_15
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	jl	.LBB25_18
# %bb.17:
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB25_30
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
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %al
	jne	.LBB25_20
# %bb.21:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	quicklistGetIteratorAtIdx
	movq	%rax, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB25_28
# %bb.22:
	notq	%r12
	addq	%r13, %r12
	leaq	-128(%rbp), %r14
	jmp	.LBB25_23
.LBB25_25:                              #   in Loop: Header=BB25_23 Depth=1
	movq	-88(%rbp), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
.LBB25_26:                              #   in Loop: Header=BB25_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%r12
	je	.LBB25_27
.LBB25_23:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	listTypeNext
	movq	-96(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB25_25
# %bb.24:                               #   in Loop: Header=BB25_23 Depth=1
	movl	-80(%rbp), %edx
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB25_26
.LBB25_15:
	movq	shared+104(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB25_29
.LBB25_27:
	movq	16(%r15), %rax
.LBB25_28:
	movq	%rax, %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_29
.LBB25_5:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	jmp	.LBB25_6
.LBB25_30:
	movl	$.L.str, %edi
	movl	$.L.str.16, %edx
	movl	$440, %esi              # imm = 0x1B8
	jmp	.LBB25_6
.LBB25_20:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$98, %esi
.LBB25_6:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB26_24
# %bb.1:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_2
.LBB26_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_24
# %bb.3:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB26_24
# %bb.4:
	movl	$240, %eax
	andl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB26_5
# %bb.7:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jns	.LBB26_9
# %bb.8:
	addq	%r15, %rdx
	movq	%rdx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_9:
	movq	-40(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB26_11
# %bb.10:
	addq	%r15, %rax
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jns	.LBB26_13
# %bb.12:
	movq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
.LBB26_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jg	.LBB26_14
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdx
	jge	.LBB26_14
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jl	.LBB26_18
# %bb.17:
	leaq	-1(%r15), %rax
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_18:
	notq	%rax
	addq	%rax, %r15
	jmp	.LBB26_19
.LBB26_14:
	movq	%r15, %rdx
	xorl	%r15d, %r15d
.LBB26_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %r12d
	movl	(%r14), %eax
	andl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB26_25
# %bb.20:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %r12d
	jne	.LBB26_5
# %bb.21:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB26_23
# %bb.22:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB26_23:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB26_24
.LBB26_5:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	jmp	.LBB26_6
.LBB26_25:
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
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	24(%rax), %r15
	movq	16(%rax), %rsi
	leaq	-56(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_1
.LBB27_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyWriteOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_27
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB27_27
# %bb.3:
	movq	-56(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB27_4
# %bb.8:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	%r14, (%rax)
	movb	(%r14), %al
	shrb	$4, %al
	movb	%al, 8(%r12)
	movb	$1, 9(%r12)
	movq	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %al
	jne	.LBB27_5
# %bb.9:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	.LBB27_10
.LBB27_4:
	negq	%rax
	movq	%rax, -56(%rbp)
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r12
	movq	%r14, (%rax)
	movb	(%r14), %al
	shrb	$4, %al
	movb	%al, 8(%r12)
	movb	$0, 9(%r12)
	movq	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %al
	jne	.LBB27_5
# %bb.7:
	movq	8(%r14), %rdi
	movl	$1, %esi
	movq	$-1, %rdx
.LBB27_10:
	callq	quicklistGetIteratorAtIdx
	movq	%rax, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-120(%rbp), %rsi
	movq	%r12, %rdi
	callq	listTypeNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_11
# %bb.12:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	leaq	16(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	-120(%rbp), %r14
	jmp	.LBB27_13
	.p2align	4, 0x90
.LBB27_18:                              #   in Loop: Header=BB27_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	listTypeNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_19
.LBB27_13:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	listTypeEqual
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_18
# %bb.14:                               #   in Loop: Header=BB27_13 Depth=1
	movq	-120(%rbp), %rax
	cmpb	$9, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_15
# %bb.16:                               #   in Loop: Header=BB27_13 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	leaq	-112(%rbp), %rsi
	callq	quicklistDelEntry
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, server+2080(%rip)
	addq	$1, %r13
	movq	-56(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_18
# %bb.17:                               #   in Loop: Header=BB27_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r13
	jne	.LBB27_18
.LBB27_19:
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	jmp	.LBB27_20
.LBB27_11:
	leaq	16(%r12), %rax
	xorl	%r13d, %r13d
.LBB27_20:
	movq	(%rax), %rdi
	callq	zfree
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB27_22
# %bb.21:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.18, %esi
	movl	$16, %edi
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB27_22:
	movl	$240, %eax
	andl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB27_23
# %bb.24:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB27_26
# %bb.25:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB27_26:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	addReplyLongLong
	jmp	.LBB27_27
.LBB27_15:
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
.LBB27_23:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	callq	addReplyBulk
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	pushq	%rax
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyWriteOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_14
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB29_14
# %bb.2:
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB29_15
# %bb.3:
	movq	8(%rbx), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_4
# %bb.5:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	callq	lookupKeyWrite
	movq	%rax, %r12
	movq	72(%r14), %rax
	movq	8(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB29_7
# %bb.6:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB29_13
.LBB29_7:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	listTypePop
	movq	%rax, %r13
	movq	%r15, %rdi
	callq	incrRefCount
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	rpoplpushHandlePush
	movq	%r13, %rdi
	callq	decrRefCount
	movq	16(%r14), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.14, %esi
	movl	$16, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB29_15
# %bb.8:
	movq	8(%rbx), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB29_10
# %bb.9:
	movq	16(%r14), %rdi
	movq	%r15, %rsi
	callq	dbDelete
	movq	16(%r14), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$4, %edi
	movq	%r15, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB29_10:
	movq	16(%r14), %rdi
	movq	%r15, %rsi
	callq	signalModifiedKey
	movq	%r15, %rdi
	callq	decrRefCount
	addq	$1, server+2080(%rip)
	movq	80(%r14), %rax
	movl	$brpoplpushCommand, %ecx
	cmpq	%rcx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_12
# %bb.11:
	movq	shared+336(%rip), %rdx
	movq	72(%r14), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %r8
	movq	%r14, %rdi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	rewriteClientCommandVector
	movl	$42, __A_VARIABLE(%rip)
.LBB29_12:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_13
.LBB29_4:
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB29_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_15:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB30_12
# %bb.1:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_2
# %bb.6:
	movq	%rax, %r14
	movl	(%rax), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB30_7
# %bb.8:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB30_13
# %bb.9:
	movq	8(%r14), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_14
# %bb.10:
	movq	%rbx, %rdi
	callq	rpoplpushCommand
	jmp	.LBB30_11
.LBB30_2:
	testb	$8, 160(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB30_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB30_13:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB30_14:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB31_1
# %bb.2:
	movq	%rdx, %rbx
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	16(%r13), %rdi
	movq	%rdx, %rsi
	callq	lookupKeyWrite
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB31_4
# %bb.3:
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	callq	checkType
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
.LBB31_5:
	xorl	%eax, %eax
.LBB31_6:
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$24, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movslq	64(%rdi), %rcx
	movq	-8(%rax,%rcx,8), %rsi
	leaq	-56(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getTimeoutFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB32_19
# %bb.1:
	movl	64(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jl	.LBB32_15
# %bb.2:
	movl	$1, %r13d
	jmp	.LBB32_3
	.p2align	4, 0x90
.LBB32_14:                              #   in Loop: Header=BB32_3 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r15), %rcx
	leaq	-1(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r13
	jge	.LBB32_15
.LBB32_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%r13,8), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_14
# %bb.4:                                #   in Loop: Header=BB32_3 Depth=1
	movq	%rax, %rbx
	movl	(%rax), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB32_5
# %bb.7:                                #   in Loop: Header=BB32_3 Depth=1
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB32_20
# %bb.8:                                #   in Loop: Header=BB32_3 Depth=1
	movq	8(%rbx), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_14
# %bb.9:
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	listTypePop
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_21
# %bb.10:
	movq	%rax, %r12
	testl	%r14d, %r14d
	movl	$.L.str.13, %eax
	movl	$.L.str.14, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
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
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	notifyKeyspaceEvent
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB32_20
# %bb.11:
	movq	8(%rbx), %rdi
	callq	quicklistCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB32_13
# %bb.12:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB32_13:
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
	jmp	.LBB32_18
.LBB32_15:
	testb	$8, 160(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB32_16
# %bb.17:
	movq	72(%r15), %rdx
	addq	$8, %rdx
	addl	$-2, %ecx
	movq	-56(%rbp), %r8
	movq	$0, (%rsp)
	movq	%r15, %rdi
	movl	$1, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r9d, %r9d
	callq	blockForKeys
	jmp	.LBB32_18
.LBB32_16:
	movq	shared+88(%rip), %rsi
	jmp	.LBB32_6
.LBB32_5:
	movq	shared+112(%rip), %rsi
.LBB32_6:
	movq	%r15, %rdi
	callq	addReply
.LBB32_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_19:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_20:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$78, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB32_21:
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
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	blockingPopGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	blpopCommand, .Lfunc_end33-blpopCommand
                                        # -- End function
	.globl	brpopCommand            # -- Begin function brpopCommand
	.p2align	4, 0x90
	.type	brpopCommand,@function
brpopCommand:                           # @brpopCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	blockingPopGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
