	.text
	.file	"object.c"
	.globl	createObject            # -- Begin function createObject
	.p2align	4, 0x90
	.type	createObject,@function
createObject:                           # @createObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movl	%edi, %ebx
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r15
	andb	$15, %bl
	movb	%bl, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%r15), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB0_3
.LBB0_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%r15), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB0_3:
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	createObject, .Lfunc_end0-createObject
                                        # -- End function
	.globl	makeObjectShared        # -- Begin function makeObjectShared
	.p2align	4, 0x90
	.type	makeObjectShared,@function
makeObjectShared:                       # @makeObjectShared
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$1, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_2
# %bb.1:
	movq	%rdi, %rax
	movl	$2147483647, 4(%rdi)    # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB1_2:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$70, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end1:
	.size	makeObjectShared, .Lfunc_end1-makeObjectShared
                                        # -- End function
	.globl	createRawStringObject   # -- Begin function createRawStringObject
	.p2align	4, 0x90
	.type	createRawStringObject,@function
createRawStringObject:                  # @createRawStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	sdsnewlen
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB2_3
.LBB2_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB2_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	createRawStringObject, .Lfunc_end2-createRawStringObject
                                        # -- End function
	.globl	createEmbeddedStringObject # -- Begin function createEmbeddedStringObject
	.p2align	4, 0x90
	.type	createEmbeddedStringObject,@function
createEmbeddedStringObject:             # @createEmbeddedStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	leaq	20(%rsi), %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$-128, (%rax)
	leaq	19(%rax), %r15
	movq	%r15, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_2
# %bb.1:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB3_3
.LBB3_2:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB3_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movb	%r14b, 16(%rbx)
	movb	%r14b, 17(%rbx)
	movb	$1, 18(%rbx)
	cmpq	%r12, SDS_NOINIT(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB3_7
# %bb.5:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy
.LBB3_6:
	movb	$0, (%r15,%r14)
	jmp	.LBB3_8
.LBB3_7:
	addq	$1, %r14
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	memset
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	createEmbeddedStringObject, .Lfunc_end3-createEmbeddedStringObject
                                        # -- End function
	.globl	createStringObject      # -- Begin function createStringObject
	.p2align	4, 0x90
	.type	createStringObject,@function
createStringObject:                     # @createStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$44, %rsi
	ja	.LBB4_2
# %bb.1:
	callq	createEmbeddedStringObject
	movq	%rax, %rbx
	jmp	.LBB4_6
.LBB4_2:
	callq	sdsnewlen
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_3
# %bb.4:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB4_5
.LBB4_3:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB4_5:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	createStringObject, .Lfunc_end4-createStringObject
                                        # -- End function
	.globl	createStringObjectFromLongLongWithOptions # -- Begin function createStringObjectFromLongLongWithOptions
	.p2align	4, 0x90
	.type	createStringObjectFromLongLongWithOptions,@function
createStringObjectFromLongLongWithOptions: # @createStringObjectFromLongLongWithOptions
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	cmpq	$0, server+2704(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_2
# %bb.1:
	testb	$3, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_3
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9999, %r14             # imm = 0x270F
	ja	.LBB5_8
# %bb.4:
	testl	%esi, %esi
	jne	.LBB5_8
# %bb.5:
	movq	shared+448(,%r14,8), %rbx
	movl	4(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	je	.LBB5_7
# %bb.6:
	addl	$1, %eax
	movl	%eax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_12
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	$0, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_9
# %bb.10:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB5_11
.LBB5_9:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB5_11:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$16, %eax
	movl	%eax, (%rbx)
	movq	%r14, 8(%rbx)
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	createStringObjectFromLongLongWithOptions, .Lfunc_end5-createStringObjectFromLongLongWithOptions
                                        # -- End function
	.globl	incrRefCount            # -- Begin function incrRefCount
	.p2align	4, 0x90
	.type	incrRefCount,@function
incrRefCount:                           # @incrRefCount
# %bb.0:
	movl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	je	.LBB6_2
# %bb.1:
	addl	$1, %eax
	movl	%eax, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	incrRefCount, .Lfunc_end6-incrRefCount
                                        # -- End function
	.globl	createStringObjectFromLongLong # -- Begin function createStringObjectFromLongLong
	.p2align	4, 0x90
	.type	createStringObjectFromLongLong,@function
createStringObjectFromLongLong:         # @createStringObjectFromLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	createStringObjectFromLongLongWithOptions
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	createStringObjectFromLongLong, .Lfunc_end7-createStringObjectFromLongLong
                                        # -- End function
	.globl	createStringObjectFromLongLongForValue # -- Begin function createStringObjectFromLongLongForValue
	.p2align	4, 0x90
	.type	createStringObjectFromLongLongForValue,@function
createStringObjectFromLongLongForValue: # @createStringObjectFromLongLongForValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	createStringObjectFromLongLongWithOptions
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	createStringObjectFromLongLongForValue, .Lfunc_end8-createStringObjectFromLongLongForValue
                                        # -- End function
	.globl	createStringObjectFromLongDouble # -- Begin function createStringObjectFromLongDouble
	.p2align	4, 0x90
	.type	createStringObjectFromLongDouble,@function
createStringObjectFromLongDouble:       # @createStringObjectFromLongDouble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$5144, %rsp             # imm = 0x1418
	movl	%edi, %edx
	fldt	16(%rbp)
	fstpt	(%rsp)
	leaq	-5136(%rbp), %rbx
	movl	$5120, %esi             # imm = 0x1400
	movq	%rbx, %rdi
	callq	ld2string
	movslq	%eax, %rsi
	movq	%rbx, %rdi
	callq	createStringObject
	movl	$42, __A_VARIABLE(%rip)
	addq	$5144, %rsp             # imm = 0x1418
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	createStringObjectFromLongDouble, .Lfunc_end9-createStringObjectFromLongDouble
                                        # -- End function
	.globl	dupStringObject         # -- Begin function dupStringObject
	.p2align	4, 0x90
	.type	dupStringObject,@function
dupStringObject:                        # @dupStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB10_30
# %bb.1:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	shrb	$4, %al
	cmpb	$8, %al
	je	.LBB10_16
# %bb.2:
	cmpb	$1, %al
	je	.LBB10_25
# %bb.3:
	testb	%al, %al
	jne	.LBB10_31
# %bb.4:
	movq	8(%r14), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB10_5
# %bb.6:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI10_1(,%rax,8)
.LBB10_7:
	shrq	$3, %rsi
	jmp	.LBB10_12
.LBB10_25:
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	$0, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_26
# %bb.27:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB10_28
.LBB10_16:
	movq	8(%r14), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB10_17
# %bb.18:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_19:
	shrq	$3, %rsi
	jmp	.LBB10_24
.LBB10_26:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB10_28:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$16, %eax
	movl	%eax, (%rbx)
	movq	8(%r14), %rax
	movq	%rax, 8(%rbx)
	jmp	.LBB10_29
.LBB10_11:
	movq	-17(%rdi), %rsi
	jmp	.LBB10_12
.LBB10_8:
	movzbl	-3(%rdi), %esi
	jmp	.LBB10_12
.LBB10_9:
	movzwl	-5(%rdi), %esi
	jmp	.LBB10_12
.LBB10_10:
	movl	-9(%rdi), %esi
	jmp	.LBB10_12
.LBB10_23:
	movq	-17(%rdi), %rsi
	jmp	.LBB10_24
.LBB10_5:
	xorl	%esi, %esi
.LBB10_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsnewlen
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_13
# %bb.14:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB10_15
.LBB10_13:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB10_15:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_29
.LBB10_20:
	movzbl	-3(%rdi), %esi
	jmp	.LBB10_24
.LBB10_21:
	movzwl	-5(%rdi), %esi
	jmp	.LBB10_24
.LBB10_22:
	movl	-9(%rdi), %esi
	jmp	.LBB10_24
.LBB10_17:
	xorl	%esi, %esi
.LBB10_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createEmbeddedStringObject
	movq	%rax, %rbx
.LBB10_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_30:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$196, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB10_31:
	movl	$.L.str.1, %edi
	movl	$.L.str.3, %edx
	movl	$209, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end10:
	.size	dupStringObject, .Lfunc_end10-dupStringObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_19
	.quad	.LBB10_20
	.quad	.LBB10_21
	.quad	.LBB10_22
	.quad	.LBB10_23
.LJTI10_1:
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_9
	.quad	.LBB10_10
	.quad	.LBB10_11
                                        # -- End function
	.text
	.globl	createQuicklistObject   # -- Begin function createQuicklistObject
	.p2align	4, 0x90
	.type	createQuicklistObject,@function
createQuicklistObject:                  # @createQuicklistObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	quicklistCreate
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$1, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB11_3
.LBB11_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB11_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$144, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	createQuicklistObject, .Lfunc_end11-createQuicklistObject
                                        # -- End function
	.globl	createZiplistObject     # -- Begin function createZiplistObject
	.p2align	4, 0x90
	.type	createZiplistObject,@function
createZiplistObject:                    # @createZiplistObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	ziplistNew
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$1, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB12_3
.LBB12_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB12_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$80, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	createZiplistObject, .Lfunc_end12-createZiplistObject
                                        # -- End function
	.globl	createSetObject         # -- Begin function createSetObject
	.p2align	4, 0x90
	.type	createSetObject,@function
createSetObject:                        # @createSetObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$setDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$2, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB13_3
.LBB13_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB13_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$32, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	createSetObject, .Lfunc_end13-createSetObject
                                        # -- End function
	.globl	createIntsetObject      # -- Begin function createIntsetObject
	.p2align	4, 0x90
	.type	createIntsetObject,@function
createIntsetObject:                     # @createIntsetObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	intsetNew
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$2, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB14_3
.LBB14_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB14_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$96, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	createIntsetObject, .Lfunc_end14-createIntsetObject
                                        # -- End function
	.globl	createHashObject        # -- Begin function createHashObject
	.p2align	4, 0x90
	.type	createHashObject,@function
createHashObject:                       # @createHashObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	ziplistNew
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$4, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB15_3
.LBB15_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB15_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$80, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	createHashObject, .Lfunc_end15-createHashObject
                                        # -- End function
	.globl	createZsetObject        # -- Begin function createZsetObject
	.p2align	4, 0x90
	.type	createZsetObject,@function
createZsetObject:                       # @createZsetObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r14
	movl	$zsetDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, (%r14)
	callq	zslCreate
	movq	%rax, 8(%r14)
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$3, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB16_3
.LBB16_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB16_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$112, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	createZsetObject, .Lfunc_end16-createZsetObject
                                        # -- End function
	.globl	createZsetZiplistObject # -- Begin function createZsetZiplistObject
	.p2align	4, 0x90
	.type	createZsetZiplistObject,@function
createZsetZiplistObject:                # @createZsetZiplistObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	ziplistNew
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$3, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB17_3
.LBB17_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB17_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$80, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	createZsetZiplistObject, .Lfunc_end17-createZsetZiplistObject
                                        # -- End function
	.globl	createStreamObject      # -- Begin function createStreamObject
	.p2align	4, 0x90
	.type	createStreamObject,@function
createStreamObject:                     # @createStreamObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	streamNew
	movq	%rax, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movb	$6, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%rbx), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB18_3
.LBB18_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%rbx), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB18_3:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-241, %eax
	orl	$160, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	createStreamObject, .Lfunc_end18-createStreamObject
                                        # -- End function
	.globl	createModuleObject      # -- Begin function createModuleObject
	.p2align	4, 0x90
	.type	createModuleObject,@function
createModuleObject:                     # @createModuleObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r15, (%rax)
	movq	%r14, 8(%rax)
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r14
	movb	$5, (%rax)
	movq	%rbx, 8(%rax)
	movl	$1, 4(%rax)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_1
# %bb.2:
	callq	LRU_CLOCK
	movzbl	(%r14), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	jmp	.LBB19_3
.LBB19_1:
	callq	LFUGetTimeInMinutes
	movzbl	(%r14), %ecx
	shll	$16, %eax
	addl	%ecx, %eax
	addl	$1280, %eax             # imm = 0x500
.LBB19_3:
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	createModuleObject, .Lfunc_end19-createModuleObject
                                        # -- End function
	.globl	freeStringObject        # -- Begin function freeStringObject
	.p2align	4, 0x90
	.type	freeStringObject,@function
freeStringObject:                       # @freeStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testb	$-16, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_2
# %bb.1:
	movq	8(%rdi), %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB20_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	freeStringObject, .Lfunc_end20-freeStringObject
                                        # -- End function
	.globl	freeListObject          # -- Begin function freeListObject
	.p2align	4, 0x90
	.type	freeListObject,@function
freeListObject:                         # @freeListObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB21_2
# %bb.1:
	movq	8(%rdi), %rdi
	callq	quicklistRelease
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB21_2:
	movl	$.L.str.1, %edi
	movl	$.L.str.4, %edx
	movl	$291, %esi              # imm = 0x123
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end21:
	.size	freeListObject, .Lfunc_end21-freeListObject
                                        # -- End function
	.globl	freeSetObject           # -- Begin function freeSetObject
	.p2align	4, 0x90
	.type	freeSetObject,@function
freeSetObject:                          # @freeSetObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB22_4
# %bb.1:
	cmpb	$2, %al
	jne	.LBB22_3
# %bb.2:
	movq	8(%rdi), %rdi
	callq	dictRelease
	jmp	.LBB22_5
.LBB22_4:
	movq	8(%rdi), %rdi
	callq	zfree
.LBB22_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB22_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$304, %esi              # imm = 0x130
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end22:
	.size	freeSetObject, .Lfunc_end22-freeSetObject
                                        # -- End function
	.globl	freeZsetObject          # -- Begin function freeZsetObject
	.p2align	4, 0x90
	.type	freeZsetObject,@function
freeZsetObject:                         # @freeZsetObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	shrb	$4, %al
	cmpb	$5, %al
	je	.LBB23_4
# %bb.1:
	cmpb	$7, %al
	jne	.LBB23_3
# %bb.2:
	movq	8(%rdi), %rbx
	movq	(%rbx), %rdi
	callq	dictRelease
	movq	8(%rbx), %rdi
	callq	zslFree
	movq	%rbx, %rdi
	jmp	.LBB23_5
.LBB23_4:
	movq	8(%rdi), %rdi
.LBB23_5:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB23_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.6, %edx
	movl	$321, %esi              # imm = 0x141
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end23:
	.size	freeZsetObject, .Lfunc_end23-freeZsetObject
                                        # -- End function
	.globl	freeHashObject          # -- Begin function freeHashObject
	.p2align	4, 0x90
	.type	freeHashObject,@function
freeHashObject:                         # @freeHashObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	shrb	$4, %al
	cmpb	$5, %al
	je	.LBB24_4
# %bb.1:
	cmpb	$2, %al
	jne	.LBB24_3
# %bb.2:
	movq	8(%rdi), %rdi
	callq	dictRelease
	jmp	.LBB24_5
.LBB24_4:
	movq	8(%rdi), %rdi
	callq	zfree
.LBB24_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB24_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.7, %edx
	movl	$334, %esi              # imm = 0x14E
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end24:
	.size	freeHashObject, .Lfunc_end24-freeHashObject
                                        # -- End function
	.globl	freeModuleObject        # -- Begin function freeModuleObject
	.p2align	4, 0x90
	.type	freeModuleObject,@function
freeModuleObject:                       # @freeModuleObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	8(%rdi), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	callq	*56(%rax)
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	freeModuleObject, .Lfunc_end25-freeModuleObject
                                        # -- End function
	.globl	freeStreamObject        # -- Begin function freeStreamObject
	.p2align	4, 0x90
	.type	freeStreamObject,@function
freeStreamObject:                       # @freeStreamObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rdi), %rdi
	callq	freeStream
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	freeStreamObject, .Lfunc_end26-freeStreamObject
                                        # -- End function
	.globl	decrRefCount            # -- Begin function decrRefCount
	.p2align	4, 0x90
	.type	decrRefCount,@function
decrRefCount:                           # @decrRefCount
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB27_24
# %bb.1:
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$6, %cl
	ja	.LBB27_20
# %bb.2:
	movl	%eax, %ecx
	andl	$15, %ecx
	jmpq	*.LJTI27_0(,%rcx,8)
.LBB27_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$-16, %al
	jne	.LBB27_22
# %bb.4:
	movq	8(%rbx), %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_22
.LBB27_24:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB27_25
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	je	.LBB27_29
# %bb.27:
	addl	$-1, %eax
	movl	%eax, 4(%rbx)
	jmp	.LBB27_28
.LBB27_15:
	movl	$42, __A_VARIABLE(%rip)
	shrb	$4, %al
	cmpb	$5, %al
	je	.LBB27_12
# %bb.16:
	cmpb	$2, %al
	je	.LBB27_10
# %bb.17:
	movl	$.L.str.1, %edi
	movl	$.L.str.7, %edx
	movl	$334, %esi              # imm = 0x14E
	jmp	.LBB27_7
.LBB27_8:
	movl	$42, __A_VARIABLE(%rip)
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB27_12
# %bb.9:
	cmpb	$2, %al
	jne	.LBB27_11
.LBB27_10:
	movq	8(%rbx), %rdi
	callq	dictRelease
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_22
.LBB27_14:
	movq	%rbx, %rdi
	callq	freeZsetObject
	jmp	.LBB27_23
.LBB27_12:
	movq	8(%rbx), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_22
.LBB27_5:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB27_6
# %bb.21:
	movq	8(%rbx), %rdi
	callq	quicklistRelease
	jmp	.LBB27_22
.LBB27_18:
	movq	8(%rbx), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	callq	*56(%rax)
	movq	%r14, %rdi
	callq	zfree
	jmp	.LBB27_22
.LBB27_19:
	movq	8(%rbx), %rdi
	callq	freeStream
.LBB27_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	zfree
.LBB27_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_29:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB27_20:
	movl	$.L.str.1, %edi
	movl	$.L.str.8, %edx
	movl	$363, %esi              # imm = 0x16B
	jmp	.LBB27_7
.LBB27_25:
	movl	$.L.str.1, %edi
	movl	$.L.str.9, %edx
	movl	$367, %esi              # imm = 0x16F
.LBB27_7:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB27_11:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$304, %esi              # imm = 0x130
	jmp	.LBB27_7
.LBB27_6:
	movl	$.L.str.1, %edi
	movl	$.L.str.4, %edx
	movl	$291, %esi              # imm = 0x123
	jmp	.LBB27_7
.Lfunc_end27:
	.size	decrRefCount, .Lfunc_end27-decrRefCount
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI27_0:
	.quad	.LBB27_3
	.quad	.LBB27_5
	.quad	.LBB27_8
	.quad	.LBB27_14
	.quad	.LBB27_15
	.quad	.LBB27_18
	.quad	.LBB27_19
                                        # -- End function
	.text
	.globl	decrRefCountVoid        # -- Begin function decrRefCountVoid
	.p2align	4, 0x90
	.type	decrRefCountVoid,@function
decrRefCountVoid:                       # @decrRefCountVoid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	decrRefCountVoid, .Lfunc_end28-decrRefCountVoid
                                        # -- End function
	.globl	resetRefCount           # -- Begin function resetRefCount
	.p2align	4, 0x90
	.type	resetRefCount,@function
resetRefCount:                          # @resetRefCount
# %bb.0:
	movq	%rdi, %rax
	movl	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end29:
	.size	resetRefCount, .Lfunc_end29-resetRefCount
                                        # -- End function
	.globl	checkType               # -- Begin function checkType
	.p2align	4, 0x90
	.type	checkType,@function
checkType:                              # @checkType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rsi), %ecx
	andl	$15, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	je	.LBB30_2
# %bb.1:
	movq	shared+112(%rip), %rsi
	callq	addReply
	movl	$1, %eax
.LBB30_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end30:
	.size	checkType, .Lfunc_end30-checkType
                                        # -- End function
	.globl	isSdsRepresentableAsLongLong # -- Begin function isSdsRepresentableAsLongLong
	.p2align	4, 0x90
	.type	isSdsRepresentableAsLongLong,@function
isSdsRepresentableAsLongLong:           # @isSdsRepresentableAsLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB31_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI31_0(,%rax,8)
.LBB31_3:
	shrq	$3, %rsi
	jmp	.LBB31_8
.LBB31_1:
	xorl	%esi, %esi
	jmp	.LBB31_8
.LBB31_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB31_8
.LBB31_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB31_8
.LBB31_6:
	movl	-9(%rdi), %esi
	jmp	.LBB31_8
.LBB31_7:
	movq	-17(%rdi), %rsi
.LBB31_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	string2ll
	cmpl	$1, %eax
	sbbl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end31:
	.size	isSdsRepresentableAsLongLong, .Lfunc_end31-isSdsRepresentableAsLongLong
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI31_0:
	.quad	.LBB31_3
	.quad	.LBB31_4
	.quad	.LBB31_5
	.quad	.LBB31_6
	.quad	.LBB31_7
                                        # -- End function
	.text
	.globl	isObjectRepresentableAsLongLong # -- Begin function isObjectRepresentableAsLongLong
	.p2align	4, 0x90
	.type	isObjectRepresentableAsLongLong,@function
isObjectRepresentableAsLongLong:        # @isObjectRepresentableAsLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB32_16
# %bb.1:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB32_5
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB32_3
# %bb.4:
	movq	8(%rsi), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	jmp	.LBB32_14
.LBB32_5:
	movq	8(%rsi), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_6
# %bb.7:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_0(,%rax,8)
.LBB32_8:
	shrq	$3, %rsi
	jmp	.LBB32_13
.LBB32_3:
	xorl	%eax, %eax
	jmp	.LBB32_15
.LBB32_12:
	movq	-17(%rdi), %rsi
	jmp	.LBB32_13
.LBB32_10:
	movzwl	-5(%rdi), %esi
	jmp	.LBB32_13
.LBB32_9:
	movzbl	-3(%rdi), %esi
	jmp	.LBB32_13
.LBB32_11:
	movl	-9(%rdi), %esi
	jmp	.LBB32_13
.LBB32_6:
	xorl	%esi, %esi
.LBB32_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	string2ll
	cmpl	$1, %eax
	sbbl	%eax, %eax
.LBB32_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB32_16:
	movl	$.L.str.2, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movl	$409, %r8d              # imm = 0x199
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end32:
	.size	isObjectRepresentableAsLongLong, .Lfunc_end32-isObjectRepresentableAsLongLong
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI32_0:
	.quad	.LBB32_8
	.quad	.LBB32_9
	.quad	.LBB32_10
	.quad	.LBB32_11
	.quad	.LBB32_12
                                        # -- End function
	.text
	.globl	trimStringObjectIfNeeded # -- Begin function trimStringObjectIfNeeded
	.p2align	4, 0x90
	.type	trimStringObjectIfNeeded,@function
trimStringObjectIfNeeded:               # @trimStringObjectIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testb	$-16, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB33_12
# %bb.1:
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB33_10
# %bb.2:
	andl	$7, %eax
	jmpq	*.LJTI33_0(,%rax,8)
.LBB33_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB33_11
.LBB33_3:
	movzbl	-2(%rdi), %ecx
	movzbl	-3(%rdi), %eax
	jmp	.LBB33_4
.LBB33_7:
	movzwl	-3(%rdi), %ecx
	movzwl	-5(%rdi), %eax
	jmp	.LBB33_4
.LBB33_8:
	movl	-9(%rdi), %eax
	movl	-5(%rdi), %ecx
	subl	%eax, %ecx
	jmp	.LBB33_5
.LBB33_9:
	movq	-17(%rdi), %rax
	movq	-9(%rdi), %rcx
.LBB33_4:
	subq	%rax, %rcx
.LBB33_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	movl	$42, __A_VARIABLE(%rip)
	shrq	$3, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jbe	.LBB33_12
# %bb.6:
	callq	sdsRemoveFreeSpace
	movq	%rax, 8(%rbx)
.LBB33_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB33_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end33:
	.size	trimStringObjectIfNeeded, .Lfunc_end33-trimStringObjectIfNeeded
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI33_0:
	.quad	.LBB33_10
	.quad	.LBB33_3
	.quad	.LBB33_7
	.quad	.LBB33_8
	.quad	.LBB33_9
                                        # -- End function
	.text
	.globl	tryObjectEncoding       # -- Begin function tryObjectEncoding
	.p2align	4, 0x90
	.type	tryObjectEncoding,@function
tryObjectEncoding:                      # @tryObjectEncoding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movq	8(%rdi), %r14
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB34_41
# %bb.1:
	movl	%eax, %ecx
	shrl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB34_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB34_40
.LBB34_3:
	cmpl	$1, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB34_40
# %bb.4:
	movzbl	-1(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB34_10
# %bb.5:
	movl	%esi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI34_0(,%rcx,8)
.LBB34_6:
	shrq	$3, %rsi
	jmp	.LBB34_12
.LBB34_7:
	movq	-17(%r14), %rsi
	jmp	.LBB34_12
.LBB34_8:
	movzwl	-5(%r14), %esi
	jmp	.LBB34_12
.LBB34_9:
	movl	-9(%r14), %esi
	jmp	.LBB34_12
.LBB34_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB34_13
.LBB34_11:
	movzbl	-3(%r14), %esi
.LBB34_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$20, %rsi
	ja	.LBB34_20
.LBB34_13:
	leaq	-24(%rbp), %rdx
	movq	%r14, %rdi
	callq	string2l
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB34_22
# %bb.14:
	cmpq	$0, server+2704(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_23
# %bb.15:
	movl	server+2712(%rip), %eax
	cmpq	$9999, -24(%rbp)        # imm = 0x270F
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB34_24
# %bb.16:
	andl	$3, %eax
	jne	.LBB34_24
.LBB34_17:
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	-24(%rbp), %rax
	movq	shared+448(,%rax,8), %rbx
	movl	4(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	je	.LBB34_39
# %bb.18:
	addl	$1, %eax
	movl	%eax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_39
.LBB34_20:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$44, %rsi
	jbe	.LBB34_28
# %bb.21:
	movq	%rbx, %rdi
	callq	trimStringObjectIfNeeded
	jmp	.LBB34_40
.LBB34_22:
	movl	(%rbx), %eax
	jmp	.LBB34_27
.LBB34_23:
	cmpq	$9999, -24(%rbp)        # imm = 0x270F
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB34_17
.LBB34_24:
	movl	(%rbx), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB34_32
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB34_27
# %bb.26:
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	createStringObjectFromLongLongWithOptions
	movq	%rax, %rbx
	jmp	.LBB34_39
.LBB34_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_28:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %eax
	je	.LBB34_39
# %bb.29:
	movzbl	-1(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB34_37
# %bb.30:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI34_1(,%rax,8)
.LBB34_31:
	shrq	$3, %rsi
	jmp	.LBB34_38
.LBB34_32:
	movq	8(%rbx), %rdi
	callq	sdsfree
	movl	$-241, %eax
	andl	(%rbx), %eax
	orl	$16, %eax
	movl	%eax, (%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rbx)
	jmp	.LBB34_40
.LBB34_33:
	movzbl	-3(%r14), %esi
	jmp	.LBB34_38
.LBB34_34:
	movzwl	-5(%r14), %esi
	jmp	.LBB34_38
.LBB34_35:
	movl	-9(%r14), %esi
	jmp	.LBB34_38
.LBB34_36:
	movq	-17(%r14), %rsi
	jmp	.LBB34_38
.LBB34_37:
	xorl	%esi, %esi
.LBB34_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	createEmbeddedStringObject
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	%r14, %rbx
.LBB34_39:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB34_41:
	movl	$.L.str.2, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movl	$440, %r8d              # imm = 0x1B8
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end34:
	.size	tryObjectEncoding, .Lfunc_end34-tryObjectEncoding
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI34_0:
	.quad	.LBB34_6
	.quad	.LBB34_11
	.quad	.LBB34_8
	.quad	.LBB34_9
	.quad	.LBB34_7
.LJTI34_1:
	.quad	.LBB34_31
	.quad	.LBB34_33
	.quad	.LBB34_34
	.quad	.LBB34_35
	.quad	.LBB34_36
                                        # -- End function
	.text
	.globl	getDecodedObject        # -- Begin function getDecodedObject
	.p2align	4, 0x90
	.type	getDecodedObject,@function
getDecodedObject:                       # @getDecodedObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rax
	movl	(%rdi), %edx
	movl	%edx, %ecx
	shrl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB35_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB35_5
.LBB35_2:
	movl	4(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	je	.LBB35_4
# %bb.3:
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB35_4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB35_8
.LBB35_5:
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %dl
	jne	.LBB35_9
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB35_9
# %bb.7:
	movq	8(%rax), %rdx
	leaq	-48(%rbp), %rbx
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	createStringObject
.LBB35_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB35_9:
	movl	$.L.str.1, %edi
	movl	$.L.str.10, %edx
	movl	$526, %esi              # imm = 0x20E
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end35:
	.size	getDecodedObject, .Lfunc_end35-getDecodedObject
                                        # -- End function
	.globl	compareStringObjectsWithFlags # -- Begin function compareStringObjectsWithFlags
	.p2align	4, 0x90
	.type	compareStringObjectsWithFlags,@function
compareStringObjectsWithFlags:          # @compareStringObjectsWithFlags
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %cl
	jne	.LBB36_32
# %bb.1:
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB36_32
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rsi
	je	.LBB36_3
# %bb.4:
	movl	%edx, %r14d
	shrl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB36_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB36_15
.LBB36_6:
	movq	8(%rsi), %r15
	movzbl	-1(%r15), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB36_7
# %bb.8:
	movl	%r13d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI36_0(,%rcx,8)
.LBB36_9:
	shrq	$3, %r13
	jmp	.LBB36_14
.LBB36_3:
	xorl	%ebx, %ebx
	jmp	.LBB36_31
.LBB36_15:
	leaq	-304(%rbp), %r15
	movq	8(%rsi), %rdx
	movl	$128, %esi
	movq	%r15, %rdi
	callq	ll2string
	movslq	%eax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	jmp	.LBB36_16
.LBB36_10:
	movzbl	-3(%r15), %r13d
	jmp	.LBB36_14
.LBB36_11:
	movzwl	-5(%r15), %r13d
	jmp	.LBB36_14
.LBB36_12:
	movl	-9(%r15), %r13d
	jmp	.LBB36_14
.LBB36_13:
	movq	-17(%r15), %r13
	jmp	.LBB36_14
.LBB36_7:
	xorl	%r13d, %r13d
.LBB36_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_16:
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB36_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB36_27
.LBB36_18:
	movq	8(%rbx), %r12
	movzbl	-1(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB36_19
# %bb.20:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI36_1(,%rax,8)
.LBB36_21:
	shrq	$3, %rdx
	jmp	.LBB36_26
.LBB36_27:
	leaq	-176(%rbp), %r12
	movq	8(%rbx), %rdx
	movl	$128, %esi
	movq	%r12, %rdi
	callq	ll2string
	movslq	%eax, %rdx
	jmp	.LBB36_28
.LBB36_22:
	movzbl	-3(%r12), %edx
	jmp	.LBB36_26
.LBB36_23:
	movzwl	-5(%r12), %edx
	jmp	.LBB36_26
.LBB36_24:
	movl	-9(%r12), %edx
	jmp	.LBB36_26
.LBB36_25:
	movq	-17(%r12), %rdx
	jmp	.LBB36_26
.LBB36_19:
	xorl	%edx, %edx
.LBB36_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r14b
	jne	.LBB36_29
# %bb.30:
	movq	%r13, %rbx
	subq	%rdx, %rbx
	cmovbq	%r13, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB36_31
.LBB36_29:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	strcoll
	movl	%eax, %ebx
.LBB36_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_32:
	movl	$.L.str.11, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movl	$542, %r8d              # imm = 0x21E
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end36:
	.size	compareStringObjectsWithFlags, .Lfunc_end36-compareStringObjectsWithFlags
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI36_0:
	.quad	.LBB36_9
	.quad	.LBB36_10
	.quad	.LBB36_11
	.quad	.LBB36_12
	.quad	.LBB36_13
.LJTI36_1:
	.quad	.LBB36_21
	.quad	.LBB36_22
	.quad	.LBB36_23
	.quad	.LBB36_24
	.quad	.LBB36_25
                                        # -- End function
	.text
	.globl	compareStringObjects    # -- Begin function compareStringObjects
	.p2align	4, 0x90
	.type	compareStringObjects,@function
compareStringObjects:                   # @compareStringObjects
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edx
	callq	compareStringObjectsWithFlags
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end37:
	.size	compareStringObjects, .Lfunc_end37-compareStringObjects
                                        # -- End function
	.globl	collateStringObjects    # -- Begin function collateStringObjects
	.p2align	4, 0x90
	.type	collateStringObjects,@function
collateStringObjects:                   # @collateStringObjects
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %edx
	callq	compareStringObjectsWithFlags
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end38:
	.size	collateStringObjects, .Lfunc_end38-collateStringObjects
                                        # -- End function
	.globl	equalStringObjects      # -- Begin function equalStringObjects
	.p2align	4, 0x90
	.type	equalStringObjects,@function
equalStringObjects:                     # @equalStringObjects
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$240, %eax
	movl	(%rdi), %ecx
	andl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB39_3
# %bb.1:
	andl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB39_3
# %bb.2:
	movq	8(%rdi), %rax
	cmpq	8(%rsi), %rax
	jmp	.LBB39_4
.LBB39_3:
	movl	$1, %edx
	callq	compareStringObjectsWithFlags
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
.LBB39_4:
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %eax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end39:
	.size	equalStringObjects, .Lfunc_end39-equalStringObjects
                                        # -- End function
	.globl	stringObjectLen         # -- Begin function stringObjectLen
	.p2align	4, 0x90
	.type	stringObjectLen,@function
stringObjectLen:                        # @stringObjectLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB40_14
# %bb.1:
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB40_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB40_12
.LBB40_3:
	movq	8(%rsi), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB40_4
# %bb.5:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI40_0(,%rdx,8)
.LBB40_6:
	shrq	$3, %rax
	jmp	.LBB40_11
.LBB40_12:
	movq	8(%rsi), %rdi
	callq	sdigits10
	movl	%eax, %eax
	jmp	.LBB40_13
.LBB40_10:
	movq	-17(%rcx), %rax
	jmp	.LBB40_11
.LBB40_8:
	movzwl	-5(%rcx), %eax
	jmp	.LBB40_11
.LBB40_9:
	movl	-9(%rcx), %eax
	jmp	.LBB40_11
.LBB40_7:
	movzbl	-3(%rcx), %eax
	jmp	.LBB40_11
.LBB40_4:
	xorl	%eax, %eax
.LBB40_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB40_14:
	movl	$.L.str.2, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movl	$599, %r8d              # imm = 0x257
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end40:
	.size	stringObjectLen, .Lfunc_end40-stringObjectLen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI40_0:
	.quad	.LBB40_6
	.quad	.LBB40_7
	.quad	.LBB40_8
	.quad	.LBB40_9
	.quad	.LBB40_10
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function getDoubleFromObject
.LCPI41_0:
	.quad	9218868437227405312     # double +Inf
.LCPI41_1:
	.quad	-4503599627370496       # double -Inf
	.text
	.globl	getDoubleFromObject
	.p2align	4, 0x90
	.type	getDoubleFromObject,@function
getDoubleFromObject:                    # @getDoubleFromObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB41_1
# %bb.2:
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB41_34
# %bb.3:
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB41_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB41_29
.LBB41_5:
	callq	__errno
	movl	$0, (%rax)
	movq	8(%rbx), %rdi
	leaq	-40(%rbp), %rsi
	callq	strtod
	movq	8(%rbx), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB41_11
# %bb.6:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI41_0(,%rdx,8)
.LBB41_12:
	shrq	$3, %rax
	jmp	.LBB41_13
.LBB41_1:
	xorpd	%xmm0, %xmm0
	jmp	.LBB41_31
.LBB41_29:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB41_35
# %bb.30:
	cvtsi2sdq	8(%rbx), %xmm0
.LBB41_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB41_32:
	movsd	%xmm0, (%r14)
	xorl	%r15d, %r15d
.LBB41_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB41_10:
	movq	-17(%rcx), %rax
	jmp	.LBB41_13
.LBB41_8:
	movzwl	-5(%rcx), %eax
	jmp	.LBB41_13
.LBB41_9:
	movl	-9(%rcx), %eax
	jmp	.LBB41_13
.LBB41_7:
	movzbl	-3(%rcx), %eax
.LBB41_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	testq	%rax, %rax
	je	.LBB41_33
# %bb.14:
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	__locale_ctype_ptr
	movq	8(%rbx), %rdx
	movsbq	(%rdx), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB41_33
# %bb.15:
	movq	-40(%rbp), %rax
	subq	%rdx, %rax
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB41_16
# %bb.17:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI41_1(,%rsi,8)
.LBB41_18:
	shrq	$3, %rcx
	jmp	.LBB41_23
.LBB41_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	jmp	.LBB41_33
.LBB41_22:
	movq	-17(%rdx), %rcx
	jmp	.LBB41_23
.LBB41_20:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB41_23
.LBB41_21:
	movl	-9(%rdx), %ecx
	jmp	.LBB41_23
.LBB41_19:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB41_23
.LBB41_16:
	xorl	%ecx, %ecx
.LBB41_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB41_33
# %bb.24:
	callq	__errno
	cmpl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB41_28
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB41_26
	jnp	.LBB41_33
.LBB41_26:
	ucomisd	.LCPI41_0(%rip), %xmm0
	jae	.LBB41_33
# %bb.27:
	movsd	.LCPI41_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB41_33
.LBB41_28:
	callq	__fpclassifyd
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB41_32
	jmp	.LBB41_33
.LBB41_34:
	movl	$.L.str.2, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movl	$614, %r8d              # imm = 0x266
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB41_35:
	movl	$.L.str.1, %edi
	movl	$.L.str.12, %edx
	movl	$628, %esi              # imm = 0x274
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end41:
	.size	getDoubleFromObject, .Lfunc_end41-getDoubleFromObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI41_0:
	.quad	.LBB41_12
	.quad	.LBB41_7
	.quad	.LBB41_8
	.quad	.LBB41_9
	.quad	.LBB41_10
.LJTI41_1:
	.quad	.LBB41_18
	.quad	.LBB41_19
	.quad	.LBB41_20
	.quad	.LBB41_21
	.quad	.LBB41_22
                                        # -- End function
	.text
	.globl	getDoubleFromObjectOrReply # -- Begin function getDoubleFromObjectOrReply
	.p2align	4, 0x90
	.type	getDoubleFromObjectOrReply,@function
getDoubleFromObjectOrReply:             # @getDoubleFromObjectOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %rax
	movq	%rdi, %r14
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	getDoubleFromObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB42_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB42_3
# %bb.2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB42_4
.LBB42_5:
	movq	-32(%rbp), %rax
	movq	%rax, (%r15)
	xorl	%eax, %eax
	jmp	.LBB42_6
.LBB42_3:
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
.LBB42_4:
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB42_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	getDoubleFromObjectOrReply, .Lfunc_end42-getDoubleFromObjectOrReply
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function getLongDoubleFromObject
.LCPI43_0:
	.long	2139095040              # float +Inf
.LCPI43_1:
	.long	4286578688              # float -Inf
	.text
	.globl	getLongDoubleFromObject
	.p2align	4, 0x90
	.type	getLongDoubleFromObject,@function
getLongDoubleFromObject:                # @getLongDoubleFromObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	fldz
	testq	%rdi, %rdi
	je	.LBB43_31
# %bb.1:
	movq	%rdi, %rbx
	fstp	%st(0)
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB43_35
# %bb.2:
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB43_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB43_29
.LBB43_4:
	callq	__errno
	movl	$0, (%rax)
	movq	8(%rbx), %rdi
	leaq	-64(%rbp), %rsi
	callq	strtold
	movq	8(%rbx), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB43_10
# %bb.5:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI43_0(,%rdx,8)
.LBB43_11:
	shrq	$3, %rax
	jmp	.LBB43_12
.LBB43_29:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB43_36
# %bb.30:
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)
	fildll	-56(%rbp)
.LBB43_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB43_32:
	fstpt	(%r14)
	xorl	%r15d, %r15d
.LBB43_33:
	fldz
.LBB43_34:
	fstp	%st(0)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB43_9:
	movq	-17(%rcx), %rax
	jmp	.LBB43_12
.LBB43_7:
	movzwl	-5(%rcx), %eax
	jmp	.LBB43_12
.LBB43_8:
	movl	-9(%rcx), %eax
	jmp	.LBB43_12
.LBB43_6:
	movzbl	-3(%rcx), %eax
.LBB43_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	testq	%rax, %rax
	je	.LBB43_13
# %bb.14:
	fstpt	-36(%rbp)               # 10-byte Folded Spill
	callq	__locale_ctype_ptr
	movq	8(%rbx), %rdx
	movsbq	(%rdx), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_33
# %bb.15:
	movq	-64(%rbp), %rax
	subq	%rdx, %rax
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB43_16
# %bb.17:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI43_1(,%rsi,8)
.LBB43_18:
	shrq	$3, %rcx
	jmp	.LBB43_23
.LBB43_10:
	fstp	%st(0)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	jmp	.LBB43_33
.LBB43_22:
	movq	-17(%rdx), %rcx
	jmp	.LBB43_23
.LBB43_20:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB43_23
.LBB43_21:
	movl	-9(%rdx), %ecx
	jmp	.LBB43_23
.LBB43_19:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB43_23
.LBB43_16:
	xorl	%ecx, %ecx
.LBB43_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB43_33
# %bb.24:
	callq	__errno
	cmpl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	fldt	-36(%rbp)               # 10-byte Folded Reload
	jne	.LBB43_28
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	fldz
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jne	.LBB43_26
	jnp	.LBB43_13
.LBB43_26:
	flds	.LCPI43_0(%rip)
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jae	.LBB43_13
# %bb.27:
	flds	.LCPI43_1(%rip)
	fucompi	%st(1), %st
	jae	.LBB43_13
.LBB43_28:
	fstpl	-48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	fldt	-36(%rbp)               # 10-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB43_32
	jmp	.LBB43_34
.LBB43_13:
	fstp	%st(0)
	jmp	.LBB43_33
.LBB43_35:
	movl	$.L.str.2, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movl	$656, %r8d              # imm = 0x290
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB43_36:
	movl	$.L.str.1, %edi
	movl	$.L.str.12, %edx
	movl	$670, %esi              # imm = 0x29E
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end43:
	.size	getLongDoubleFromObject, .Lfunc_end43-getLongDoubleFromObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI43_0:
	.quad	.LBB43_11
	.quad	.LBB43_6
	.quad	.LBB43_7
	.quad	.LBB43_8
	.quad	.LBB43_9
.LJTI43_1:
	.quad	.LBB43_18
	.quad	.LBB43_19
	.quad	.LBB43_20
	.quad	.LBB43_21
	.quad	.LBB43_22
                                        # -- End function
	.text
	.globl	getLongDoubleFromObjectOrReply # -- Begin function getLongDoubleFromObjectOrReply
	.p2align	4, 0x90
	.type	getLongDoubleFromObjectOrReply,@function
getLongDoubleFromObjectOrReply:         # @getLongDoubleFromObjectOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %rax
	movq	%rdi, %r14
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	getLongDoubleFromObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB44_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB44_3
# %bb.2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB44_4
.LBB44_5:
	fldt	-48(%rbp)
	fstpt	(%r15)
	xorl	%eax, %eax
	jmp	.LBB44_6
.LBB44_3:
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
.LBB44_4:
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB44_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	getLongDoubleFromObjectOrReply, .Lfunc_end44-getLongDoubleFromObjectOrReply
                                        # -- End function
	.globl	getLongLongFromObject   # -- Begin function getLongLongFromObject
	.p2align	4, 0x90
	.type	getLongLongFromObject,@function
getLongLongFromObject:                  # @getLongLongFromObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB45_1
# %bb.2:
	movq	%rdi, %rsi
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB45_21
# %bb.3:
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB45_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB45_15
.LBB45_5:
	movq	8(%rsi), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB45_6
# %bb.7:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI45_0(,%rax,8)
.LBB45_8:
	shrq	$3, %rsi
	jmp	.LBB45_13
.LBB45_1:
	xorl	%eax, %eax
	jmp	.LBB45_17
.LBB45_15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB45_22
# %bb.16:
	movq	8(%rsi), %rax
.LBB45_17:
	movq	%rax, -16(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB45_18
.LBB45_12:
	movq	-17(%rdi), %rsi
	jmp	.LBB45_13
.LBB45_10:
	movzwl	-5(%rdi), %esi
	jmp	.LBB45_13
.LBB45_11:
	movl	-9(%rdi), %esi
	jmp	.LBB45_13
.LBB45_9:
	movzbl	-3(%rdi), %esi
	jmp	.LBB45_13
.LBB45_6:
	xorl	%esi, %esi
.LBB45_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-16(%rbp), %rdx
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB45_14
.LBB45_18:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB45_20
# %bb.19:
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB45_20
.LBB45_14:
	movl	$-1, %eax
.LBB45_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB45_21:
	movl	$.L.str.2, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movl	$697, %r8d              # imm = 0x2B9
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB45_22:
	movl	$.L.str.1, %edi
	movl	$.L.str.12, %edx
	movl	$703, %esi              # imm = 0x2BF
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end45:
	.size	getLongLongFromObject, .Lfunc_end45-getLongLongFromObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI45_0:
	.quad	.LBB45_8
	.quad	.LBB45_9
	.quad	.LBB45_10
	.quad	.LBB45_11
	.quad	.LBB45_12
                                        # -- End function
	.text
	.globl	getLongLongFromObjectOrReply # -- Begin function getLongLongFromObjectOrReply
	.p2align	4, 0x90
	.type	getLongLongFromObjectOrReply,@function
getLongLongFromObjectOrReply:           # @getLongLongFromObjectOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %rax
	movq	%rdi, %r14
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	getLongLongFromObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB46_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB46_3
# %bb.2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB46_4
.LBB46_5:
	movq	-32(%rbp), %rax
	movq	%rax, (%r15)
	xorl	%eax, %eax
	jmp	.LBB46_6
.LBB46_3:
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
.LBB46_4:
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB46_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end46:
	.size	getLongLongFromObjectOrReply, .Lfunc_end46-getLongLongFromObjectOrReply
                                        # -- End function
	.globl	getLongFromObjectOrReply # -- Begin function getLongFromObjectOrReply
	.p2align	4, 0x90
	.type	getLongFromObjectOrReply,@function
getLongFromObjectOrReply:               # @getLongFromObjectOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %rax
	movq	%rdi, %r14
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	getLongLongFromObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB47_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB47_3
# %bb.2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB47_4
.LBB47_5:
	movq	-32(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r15)
	xorl	%eax, %eax
	jmp	.LBB47_6
.LBB47_3:
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
.LBB47_4:
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB47_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	getLongFromObjectOrReply, .Lfunc_end47-getLongFromObjectOrReply
                                        # -- End function
	.globl	strEncoding             # -- Begin function strEncoding
	.p2align	4, 0x90
	.type	strEncoding,@function
strEncoding:                            # @strEncoding
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.24, %eax
	cmpl	$9, %edi
	ja	.LBB48_2
# %bb.1:
	movslq	%edi, %rax
	movq	.Lswitch.table.strEncoding(,%rax,8), %rax
.LBB48_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end48:
	.size	strEncoding, .Lfunc_end48-strEncoding
                                        # -- End function
	.globl	streamRadixTreeMemoryUsage # -- Begin function streamRadixTreeMemoryUsage
	.p2align	4, 0x90
	.type	streamRadixTreeMemoryUsage,@function
streamRadixTreeMemoryUsage:             # @streamRadixTreeMemoryUsage
# %bb.0:
	movq	8(%rdi), %rcx
	shlq	$4, %rcx
	imulq	$244, 16(%rdi), %rax
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end49:
	.size	streamRadixTreeMemoryUsage, .Lfunc_end49-streamRadixTreeMemoryUsage
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function objectComputeSize
.LCPI50_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI50_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI50_2:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI50_3:
	.quad	4633078116657397760     # double 56
	.text
	.globl	objectComputeSize
	.p2align	4, 0x90
	.type	objectComputeSize,@function
objectComputeSize:                      # @objectComputeSize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$984, %rsp              # imm = 0x3D8
	movl	(%rdi), %eax
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB50_7
# %bb.1:
	movq	%rsi, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB50_9
# %bb.2:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %eax
	jne	.LBB50_21
# %bb.3:
	movq	8(%rdi), %r14
	movq	(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB50_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %r15
	movq	16(%rbx), %rdi
	callq	ziplistBlobLen
	addq	%rax, %r12
	addq	$32, %r12
	movq	8(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB50_6
# %bb.5:                                #   in Loop: Header=BB50_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r15), %rax
	cmpq	%r13, %r15
	jb	.LBB50_4
.LBB50_6:
	movq	%r12, %xmm0
	movdqa	.LCPI50_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI50_1(%rip), %xmm2  # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	movq	%r15, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm4
	unpckhpd	%xmm0, %xmm4    # xmm4 = xmm4[1],xmm0[1]
	addsd	%xmm0, %xmm4
	divsd	%xmm4, %xmm3
	movq	24(%r14), %xmm0         # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	.LCPI50_3(%rip), %xmm1
	movsd	.LCPI50_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm1, %r12
	ucomisd	%xmm0, %xmm1
	cmovaeq	%rcx, %r12
	jmp	.LBB50_87
.LBB50_7:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB50_16
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r12d
	jmp	.LBB50_88
.LBB50_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB50_23
# %bb.10:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB50_31
# %bb.11:
	movq	8(%rdi), %rbx
	movq	%rbx, %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movq	56(%rbx), %rax
	addq	24(%rbx), %rax
	leaq	112(,%rax,8), %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB50_52
# %bb.12:                               # %.preheader
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%r13, %rbx
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB50_13:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r13
	jae	.LBB50_53
# %bb.14:                               #   in Loop: Header=BB50_13 Depth=1
	movq	(%rax), %rdi
	callq	sdsAllocSize
	addq	%rax, %r15
	addq	$24, %r15
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB50_13
# %bb.15:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_54
.LBB50_16:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_41
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB50_92
# %bb.18:
	movq	8(%rdi), %rax
	movzbl	-1(%rax), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB50_63
# %bb.19:
	movl	%r12d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI50_1(,%rcx,8)
.LBB50_20:
	shrq	$3, %r12
	jmp	.LBB50_64
.LBB50_21:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB50_91
.LBB50_22:
	movq	8(%rdi), %rdi
	callq	ziplistBlobLen
	jmp	.LBB50_42
.LBB50_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB50_33
# %bb.24:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB50_22
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB50_94
# %bb.26:
	movq	8(%rdi), %rax
	movq	(%rax), %r14
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movq	24(%rdi), %r15
	movq	56(%r14), %rbx
	addq	24(%r14), %rbx
	callq	zmalloc_size
	leaq	(%rax,%rbx,8), %r12
	addq	$160, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_86
# %bb.27:                               # %.preheader1
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r13, -48(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB50_28:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-48(%rbp), %r13         # 8-byte Folded Reload
	jae	.LBB50_65
# %bb.29:                               #   in Loop: Header=BB50_28 Depth=1
	movq	(%r15), %rdi
	callq	sdsAllocSize
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	zmalloc_size
	addq	%rbx, %r14
	addq	%rax, %r14
	addq	$24, %r14
	addq	$1, %r13
	movq	24(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB50_28
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_66
.LBB50_31:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB50_93
# %bb.32:
	movq	8(%rdi), %rax
	movl	4(%rax), %r12d
	imull	(%rax), %r12d
	addq	$24, %r12
	jmp	.LBB50_87
.LBB50_33:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB50_43
# %bb.34:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB50_22
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB50_95
# %bb.36:
	movq	8(%rdi), %rbx
	movq	%rbx, %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movq	56(%rbx), %rax
	addq	24(%rbx), %rax
	leaq	112(,%rax,8), %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB50_52
# %bb.37:                               # %.preheader2
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	movq	%r14, -56(%rbp)         # 8-byte Spill
.LBB50_38:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jae	.LBB50_89
# %bb.39:                               #   in Loop: Header=BB50_38 Depth=1
	movq	(%rax), %rdi
	movq	%r13, %r14
	movq	8(%rax), %r13
	callq	sdsAllocSize
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	movq	%r14, %r13
	movq	-56(%rbp), %r14         # 8-byte Reload
	callq	sdsAllocSize
	addq	-48(%rbp), %r15         # 8-byte Folded Reload
	addq	%rax, %r15
	addq	$24, %r15
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB50_38
# %bb.40:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_90
.LBB50_41:
	movq	8(%rdi), %rdi
	callq	sdsAllocSize
.LBB50_42:
	movq	%rax, %r12
	addq	$16, %r12
	jmp	.LBB50_87
.LBB50_43:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB50_57
# %bb.44:
	movq	8(%rdi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%rax), %rsi
	movq	8(%rsi), %rax
	shlq	$4, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	imulq	$244, 16(%rsi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leaq	-544(%rbp), %r15
	movq	%r15, %rdi
	callq	raxStart
	xorl	%r12d, %r12d
	movl	$.L.str.28, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ebx
	testq	%r13, %r13
	je	.LBB50_48
# %bb.45:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	leaq	-544(%rbp), %r15
	xorl	%r12d, %r12d
.LBB50_46:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_48
# %bb.47:                               #   in Loop: Header=BB50_46 Depth=1
	movq	-520(%rbp), %rdi
	callq	lpBytes
	movl	%eax, %eax
	addq	%rax, %r12
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB50_46
.LBB50_48:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	$16, %rcx
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rax
	movq	8(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jbe	.LBB50_68
# %bb.49:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB50_51
# %bb.50:
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
.LBB50_51:
	addq	$-1, %r14
	imulq	%r12, %r14
	addq	%rcx, %r14
	leaq	-544(%rbp), %rbx
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, %rdi
	callq	raxNext
	movq	-520(%rbp), %rdi
	callq	lpBytes
	movl	%eax, %r12d
	addq	%r14, %r12
	jmp	.LBB50_69
.LBB50_52:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	jmp	.LBB50_87
.LBB50_53:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB50_88
.LBB50_54:
	movq	%r15, %xmm2
	movdqa	.LCPI50_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movapd	.LCPI50_1(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	movq	%r13, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm4
	unpckhpd	%xmm2, %xmm4    # xmm4 = xmm4[1],xmm2[1]
	addsd	%xmm2, %xmm4
	divsd	%xmm4, %xmm3
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB50_55:
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	movq	%rax, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm4
	unpckhpd	%xmm2, %xmm4    # xmm4 = xmm4[1],xmm2[1]
	addsd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	movq	%r12, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	unpckhpd	%xmm2, %xmm0    # xmm0 = xmm0[1],xmm2[1]
	addsd	%xmm2, %xmm0
	addsd	%xmm4, %xmm0
	movsd	.LCPI50_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %r12
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %r12
	jmp	.LBB50_87
.LBB50_56:
	movq	-17(%rax), %r12
	jmp	.LBB50_64
.LBB50_57:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB50_96
# %bb.58:
	movq	8(%rdi), %rax
	movq	(%rax), %rcx
	movq	40(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB50_85
# %bb.59:
	movq	8(%rax), %rdi
	callq	*%rcx
	movq	%rax, %r12
	jmp	.LBB50_86
.LBB50_60:
	movzwl	-5(%rax), %r12d
	jmp	.LBB50_64
.LBB50_61:
	movl	-9(%rax), %r12d
	jmp	.LBB50_64
.LBB50_62:
	movzbl	-3(%rax), %r12d
	jmp	.LBB50_64
.LBB50_63:
	xorl	%r12d, %r12d
.LBB50_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$18, %r12
	jmp	.LBB50_87
.LBB50_65:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB50_87
.LBB50_66:
	movq	%r14, %xmm2
	movdqa	.LCPI50_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movapd	.LCPI50_1(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	movq	%r13, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm4
	unpckhpd	%xmm2, %xmm4    # xmm4 = xmm4[1],xmm2[1]
	addsd	%xmm2, %xmm4
	divsd	%xmm4, %xmm3
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	movq	%rax, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm4
	unpckhpd	%xmm2, %xmm4    # xmm4 = xmm4[1],xmm2[1]
	addsd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	movq	%r12, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	unpckhpd	%xmm2, %xmm0    # xmm0 = xmm0[1],xmm2[1]
	addsd	%xmm2, %xmm0
	addsd	%xmm4, %xmm0
	movsd	.LCPI50_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %r12
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %r12
	jmp	.LBB50_86
.LBB50_68:
	addq	%rcx, %r12
.LBB50_69:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-544(%rbp), %rdi
	callq	raxStop
	movq	32(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB50_87
# %bb.70:
	leaq	-544(%rbp), %r14
	movq	%r14, %rdi
	callq	raxStart
	movl	$.L.str.28, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_84
# %bb.71:
	leaq	-1024(%rbp), %r14
	leaq	-544(%rbp), %r15
	jmp	.LBB50_73
	.p2align	4, 0x90
.LBB50_72:                              #   in Loop: Header=BB50_73 Depth=1
	movq	%r14, %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_84
.LBB50_73:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_76 Depth 2
	movq	-520(%rbp), %r13
	movq	16(%r13), %rdi
	movq	8(%rdi), %rax
	shlq	$4, %rax
	addq	%r12, %rax
	imulq	$244, 16(%rdi), %rbx
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	raxSize
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,8), %r12
	addq	$32, %r12
	movq	24(%r13), %rsi
	movq	%r14, %rdi
	callq	raxStart
	movl	$.L.str.28, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	jmp	.LBB50_76
.LBB50_74:                              #   in Loop: Header=BB50_76 Depth=2
	movq	-17(%rdx), %rcx
	.p2align	4, 0x90
.LBB50_75:                              #   in Loop: Header=BB50_76 Depth=2
	addq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	shlq	$4, %rcx
	imulq	$244, 16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	%r12, %rcx
	leaq	(%rax,%rcx), %r12
	addq	$24, %r12
.LBB50_76:                              #   Parent Loop BB50_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_72
# %bb.77:                               #   in Loop: Header=BB50_76 Depth=2
	movq	-1000(%rbp), %rax
	movq	8(%rax), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB50_83
# %bb.78:                               #   in Loop: Header=BB50_76 Depth=2
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI50_0(,%rsi,8)
.LBB50_79:                              #   in Loop: Header=BB50_76 Depth=2
	shrq	$3, %rcx
	jmp	.LBB50_75
.LBB50_80:                              #   in Loop: Header=BB50_76 Depth=2
	movzwl	-5(%rdx), %ecx
	jmp	.LBB50_75
.LBB50_81:                              #   in Loop: Header=BB50_76 Depth=2
	movl	-9(%rdx), %ecx
	jmp	.LBB50_75
.LBB50_82:                              #   in Loop: Header=BB50_76 Depth=2
	movzbl	-3(%rdx), %ecx
	jmp	.LBB50_75
.LBB50_83:                              #   in Loop: Header=BB50_76 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB50_75
.LBB50_84:
	leaq	-544(%rbp), %rdi
	callq	raxStop
	jmp	.LBB50_86
.LBB50_85:
	xorl	%r12d, %r12d
.LBB50_86:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_87:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_88:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$984, %rsp              # imm = 0x3D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB50_89:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB50_88
.LBB50_90:
	movq	%r15, %xmm2
	movdqa	.LCPI50_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movapd	.LCPI50_1(%rip), %xmm1  # xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3    # xmm3 = xmm3[1],xmm2[1]
	addsd	%xmm2, %xmm3
	movq	%rbx, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	subpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm4
	unpckhpd	%xmm2, %xmm4    # xmm4 = xmm4[1],xmm2[1]
	addsd	%xmm2, %xmm4
	divsd	%xmm4, %xmm3
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB50_55
.LBB50_91:
	movl	$.L.str.1, %edi
	movl	$.L.str.25, %edx
	movl	$815, %esi              # imm = 0x32F
	jmp	.LBB50_97
.LBB50_92:
	movl	$.L.str.1, %edi
	movl	$.L.str.12, %edx
	movl	$800, %esi              # imm = 0x320
	jmp	.LBB50_97
.LBB50_93:
	movl	$.L.str.1, %edi
	movl	$.L.str.26, %edx
	movl	$833, %esi              # imm = 0x341
	jmp	.LBB50_97
.LBB50_94:
	movl	$.L.str.1, %edi
	movl	$.L.str.6, %edx
	movl	$853, %esi              # imm = 0x355
	jmp	.LBB50_97
.LBB50_95:
	movl	$.L.str.1, %edi
	movl	$.L.str.27, %edx
	movl	$872, %esi              # imm = 0x368
	jmp	.LBB50_97
.LBB50_96:
	movl	$.L.str.1, %edi
	movl	$.L.str.8, %edx
	movl	$944, %esi              # imm = 0x3B0
.LBB50_97:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end50:
	.size	objectComputeSize, .Lfunc_end50-objectComputeSize
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI50_0:
	.quad	.LBB50_79
	.quad	.LBB50_82
	.quad	.LBB50_80
	.quad	.LBB50_81
	.quad	.LBB50_74
.LJTI50_1:
	.quad	.LBB50_20
	.quad	.LBB50_62
	.quad	.LBB50_60
	.quad	.LBB50_61
	.quad	.LBB50_56
                                        # -- End function
	.text
	.globl	freeMemoryOverheadData  # -- Begin function freeMemoryOverheadData
	.p2align	4, 0x90
	.type	freeMemoryOverheadData,@function
freeMemoryOverheadData:                 # @freeMemoryOverheadData
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	176(%rdi), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end51:
	.size	freeMemoryOverheadData, .Lfunc_end51-freeMemoryOverheadData
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function getMemoryOverheadData
.LCPI52_0:
	.long	1120403456              # float 100
	.text
	.globl	getMemoryOverheadData
	.p2align	4, 0x90
	.type	getMemoryOverheadData,@function
getMemoryOverheadData:                  # @getMemoryOverheadData
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	callq	zmalloc_used_memory
	movq	%rax, %rbx
	movl	$184, %edi
	callq	zcalloc
	movq	%rax, %r12
	movq	%rbx, 8(%rax)
	movq	server+168(%rip), %r13
	movq	%r13, 16(%rax)
	movq	server+1112(%rip), %rax
	movq	%rax, (%r12)
	movq	server+1208(%rip), %rax
	testq	%rax, %rax
	js	.LBB52_1
# %bb.2:
	cvtsi2ss	%rax, %xmm0
	jmp	.LBB52_3
.LBB52_1:
	movq	%rax, %rcx
	shrq	%rcx
	movl	%eax, %edx
	andl	$1, %edx
	orq	%rcx, %rdx
	cvtsi2ss	%rdx, %xmm0
	addss	%xmm0, %xmm0
.LBB52_3:
	movq	server+1200(%rip), %rcx
	testq	%rcx, %rcx
	js	.LBB52_4
# %bb.5:
	cvtsi2ss	%rcx, %xmm1
	jmp	.LBB52_6
.LBB52_4:
	movq	%rcx, %rdx
	shrq	%rdx
	movl	%ecx, %esi
	andl	$1, %esi
	orq	%rdx, %rsi
	cvtsi2ss	%rsi, %xmm1
	addss	%xmm1, %xmm1
.LBB52_6:
	movaps	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	movss	%xmm2, 104(%r12)
	movq	%rax, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 112(%r12)
	movq	server+1224(%rip), %rcx
	testq	%rcx, %rcx
	js	.LBB52_7
# %bb.8:
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rcx, %xmm1
	jmp	.LBB52_9
.LBB52_7:
	movq	%rcx, %rdx
	shrq	%rdx
	movl	%ecx, %esi
	andl	$1, %esi
	orq	%rdx, %rsi
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rsi, %xmm1
	addss	%xmm1, %xmm1
.LBB52_9:
	movq	server+1216(%rip), %rdx
	testq	%rdx, %rdx
	js	.LBB52_10
# %bb.11:
	xorps	%xmm2, %xmm2
	cvtsi2ss	%rdx, %xmm2
	jmp	.LBB52_12
.LBB52_10:
	movq	%rdx, %rsi
	shrq	%rsi
	movl	%edx, %edi
	andl	$1, %edi
	orq	%rsi, %rdi
	xorps	%xmm2, %xmm2
	cvtsi2ss	%rdi, %xmm2
	addss	%xmm2, %xmm2
.LBB52_12:
	movaps	%xmm1, %xmm3
	divss	%xmm2, %xmm3
	movss	%xmm3, 120(%r12)
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	movq	%rsi, 128(%r12)
	movq	server+1232(%rip), %rdx
	testq	%rdx, %rdx
	js	.LBB52_13
# %bb.14:
	xorps	%xmm2, %xmm2
	cvtsi2ss	%rdx, %xmm2
	jmp	.LBB52_15
.LBB52_13:
	movq	%rdx, %rsi
	shrq	%rsi
	movl	%edx, %edi
	andl	$1, %edi
	orq	%rsi, %rdi
	xorps	%xmm2, %xmm2
	cvtsi2ss	%rdi, %xmm2
	addss	%xmm2, %xmm2
.LBB52_15:
	divss	%xmm2, %xmm0
	divss	%xmm1, %xmm2
	movss	%xmm2, 136(%r12)
	subq	%rdx, %rax
	subq	%rcx, %rdx
	movq	%rdx, 144(%r12)
	movss	%xmm0, 152(%r12)
	movq	%rax, 160(%r12)
	movq	server+2376(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB52_16
# %bb.17:
	callq	zmalloc_size
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB52_18
.LBB52_16:
	xorl	%eax, %eax
.LBB52_18:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rax, 24(%r12)
	addq	%rax, %r13
	movq	server+536(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_19
# %bb.20:
	movq	%r13, -48(%rbp)         # 8-byte Spill
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB52_23
# %bb.21:                               # %.preheader2
	leaq	-72(%rbp), %r15
	.p2align	4, 0x90
.LBB52_22:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %r13
	movq	%r13, %rdi
	callq	getClientOutputBufferMemoryUsage
	movq	%rax, %rbx
	movq	32(%r13), %rdi
	callq	sdsAllocSize
	addq	%r14, %rbx
	leaq	(%rax,%rbx), %r14
	addq	$16920, %r14            # imm = 0x4218
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB52_22
.LBB52_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB52_24
.LBB52_19:
	xorl	%r14d, %r14d
.LBB52_24:
	movq	%r14, 32(%r12)
	addq	%r14, %r13
	movq	server+512(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_25
# %bb.26:
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB52_27
	.p2align	4, 0x90
.LBB52_30:                              #   in Loop: Header=BB52_27 Depth=1
	movq	%rbx, %rdi
	callq	getClientOutputBufferMemoryUsage
	movq	%r13, %r14
	movq	%rax, %r13
	movq	32(%rbx), %rdi
	callq	sdsAllocSize
	addq	%r13, %r15
	movq	%r14, %r13
	addq	%rax, %r15
	addq	$16920, %r15            # imm = 0x4218
.LBB52_31:                              #   in Loop: Header=BB52_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
.LBB52_27:                              # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB52_32
# %bb.28:                               #   in Loop: Header=BB52_27 Depth=1
	movq	16(%rax), %rbx
	movl	160(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB52_30
# %bb.29:                               #   in Loop: Header=BB52_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB52_30
	jmp	.LBB52_31
.LBB52_32:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB52_33
.LBB52_25:
	xorl	%r15d, %r15d
.LBB52_33:
	movq	%r15, 40(%r12)
	addq	%r15, %r13
	cmpl	$0, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_34
# %bb.35:
	movq	server+1952(%rip), %rax
	movzbl	-1(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB52_36
# %bb.37:
	movl	%ebx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI52_0(,%rcx,8)
.LBB52_38:
	shrq	$3, %rbx
	jmp	.LBB52_43
.LBB52_34:
	xorl	%eax, %eax
	jmp	.LBB52_44
.LBB52_36:
	xorl	%ebx, %ebx
	jmp	.LBB52_43
.LBB52_39:
	movzbl	-2(%rax), %ebx
	jmp	.LBB52_43
.LBB52_40:
	movzwl	-3(%rax), %ebx
	jmp	.LBB52_43
.LBB52_41:
	movl	-5(%rax), %ebx
	jmp	.LBB52_43
.LBB52_42:
	movq	-9(%rax), %rbx
.LBB52_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	aofRewriteBufferSize
	addq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB52_44:
	movq	%rax, 48(%r12)
	movq	server+3016(%rip), %rcx
	movq	56(%rcx), %rdx
	movq	72(%rcx), %rsi
	addq	24(%rcx), %rdx
	addq	40(%rcx), %rsi
	movq	server+2664(%rip), %rcx
	addq	24(%rcx), %rdx
	addq	56(%rcx), %rdx
	addq	40(%rcx), %rsi
	addq	%rax, %r13
	addq	72(%rcx), %rsi
	leaq	(%rsi,%rsi,2), %rax
	shlq	$3, %rax
	addq	server+3024(%rip), %rax
	leaq	(%rax,%rdx,8), %rbx
	movq	server+2672(%rip), %rax
	movq	40(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB52_46
# %bb.45:
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	callq	sdsZmallocSize
	addq	$24, %rax
	imulq	%r14, %rax
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB52_46:
	movq	%rbx, 56(%r12)
	addq	%rbx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB52_52
# %bb.47:
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	jmp	.LBB52_48
	.p2align	4, 0x90
.LBB52_50:                              #   in Loop: Header=BB52_48 Depth=1
	addq	%rcx, 80(%r12)
	movq	168(%r12), %rax
	movq	176(%r12), %rdi
	leaq	(%rax,%rax,2), %rax
	leaq	24(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 176(%r12)
	movq	168(%r12), %rcx
	leaq	(%rcx,%rcx,2), %r8
	movq	%r15, (%rax,%r8,8)
	movq	(%r14,%rbx), %rsi
	movq	72(%rsi), %rdi
	addq	40(%rsi), %rdi
	movq	56(%rsi), %rdx
	addq	24(%rsi), %rdx
	shlq	$3, %rdx
	leaq	(%rdi,%rdi,4), %rsi
	leaq	(%rdx,%rsi,8), %rdx
	movq	%rdx, 8(%rax,%r8,8)
	addq	%rdx, %r13
	movq	8(%r14,%rbx), %rdx
	movq	72(%rdx), %rsi
	addq	40(%rdx), %rsi
	movq	56(%rdx), %rdi
	leaq	(%rsi,%rsi,2), %rsi
	addq	24(%rdx), %rdi
	shlq	$3, %rsi
	leaq	(%rsi,%rdi,8), %rdx
	movq	%rdx, 16(%rax,%r8,8)
	addq	%rdx, %r13
	addq	$1, %rcx
	movq	%rcx, 168(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %eax
.LBB52_51:                              #   in Loop: Header=BB52_48 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rbx
	cmpq	%rcx, %r15
	jge	.LBB52_52
.LBB52_48:                              # =>This Inner Loop Header: Depth=1
	movq	server+48(%rip), %r14
	movq	(%r14,%rbx), %rdx
	movq	72(%rdx), %rcx
	addq	40(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB52_50
# %bb.49:                               #   in Loop: Header=BB52_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB52_51
.LBB52_52:
	movq	%r13, 64(%r12)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, %rcx
	subq	%r13, %rcx
	movq	%rcx, 72(%r12)
	testq	%rdi, %rdi
	js	.LBB52_53
# %bb.54:
	cvtsi2ss	%rdi, %xmm0
	jmp	.LBB52_55
.LBB52_53:
	movq	%rdi, %rax
	shrq	%rax
	movl	%edi, %edx
	andl	$1, %edx
	orq	%rax, %rdx
	cvtsi2ss	%rdx, %xmm0
	addss	%xmm0, %xmm0
.LBB52_55:
	mulss	.LCPI52_0(%rip), %xmm0
	movq	(%r12), %rax
	movq	16(%r12), %rdx
	testq	%rax, %rax
	js	.LBB52_56
# %bb.57:
	cvtsi2ss	%rax, %xmm1
	jmp	.LBB52_58
.LBB52_56:
	movq	%rax, %rsi
	shrq	%rsi
	andl	$1, %eax
	orq	%rsi, %rax
	cvtsi2ss	%rax, %xmm1
	addss	%xmm1, %xmm1
.LBB52_58:
	divss	%xmm1, %xmm0
	movss	%xmm0, 100(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	subq	%rdx, %rdi
	jbe	.LBB52_60
# %bb.59:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
.LBB52_60:
	testq	%rcx, %rcx
	js	.LBB52_61
# %bb.62:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rcx, %xmm0
	jmp	.LBB52_63
.LBB52_61:
	movq	%rcx, %rdx
	shrq	%rdx
	andl	$1, %ecx
	orq	%rdx, %rcx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
.LBB52_63:
	mulss	.LCPI52_0(%rip), %xmm0
	testq	%rax, %rax
	js	.LBB52_64
# %bb.65:
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
	jmp	.LBB52_66
.LBB52_64:
	movq	%rax, %rcx
	shrq	%rcx
	movl	%eax, %edx
	andl	$1, %edx
	orq	%rcx, %rdx
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rdx, %xmm1
	addss	%xmm1, %xmm1
.LBB52_66:
	divss	%xmm1, %xmm0
	movss	%xmm0, 96(%r12)
	movq	80(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB52_67
# %bb.68:
	xorl	%edx, %edx
	divq	%rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB52_69
.LBB52_67:
	xorl	%eax, %eax
.LBB52_69:
	movq	%rax, 88(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	getMemoryOverheadData, .Lfunc_end52-getMemoryOverheadData
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI52_0:
	.quad	.LBB52_38
	.quad	.LBB52_39
	.quad	.LBB52_40
	.quad	.LBB52_41
	.quad	.LBB52_42
                                        # -- End function
	.text
	.globl	inputCatSds             # -- Begin function inputCatSds
	.p2align	4, 0x90
	.type	inputCatSds,@function
inputCatSds:                            # @inputCatSds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	sdscat
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end53:
	.size	inputCatSds, .Lfunc_end53-inputCatSds
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function getMemoryDoctorReport
.LCPI54_0:
	.long	1069547520              # float 1.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI54_1:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI54_2:
	.quad	4607632778762754458     # double 1.1000000000000001
	.text
	.globl	getMemoryDoctorReport
	.p2align	4, 0x90
	.type	getMemoryDoctorReport,@function
getMemoryDoctorReport:                  # @getMemoryDoctorReport
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	callq	getMemoryOverheadData
	movq	%rax, %r14
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5242880, %rax          # imm = 0x500000
	jae	.LBB54_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.31, %edi
.LBB54_51:
	callq	sdsnew
	jmp	.LBB54_52
.LBB54_2:
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	js	.LBB54_5
# %bb.3:
	cvtsi2ss	%rcx, %xmm0
	testq	%rax, %rax
	jns	.LBB54_6
.LBB54_4:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	cvtsi2ss	%rax, %xmm1
	addss	%xmm1, %xmm1
	jmp	.LBB54_7
.LBB54_5:
	movq	%rcx, %rdx
	shrq	%rdx
	andl	$1, %ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	testq	%rax, %rax
	js	.LBB54_4
.LBB54_6:
	cvtsi2ss	%rax, %xmm1
.LBB54_7:
	divss	%xmm1, %xmm0
	xorl	%r12d, %r12d
	ucomiss	.LCPI54_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %r13d
	jbe	.LBB54_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
.LBB54_9:
	movss	104(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LCPI54_1(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB54_12
# %bb.10:
	cmpq	$10485761, 112(%r14)    # imm = 0xA00001
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ecx
	jl	.LBB54_13
# %bb.11:
	leal	1(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jmp	.LBB54_13
.LBB54_12:
	movl	%r13d, %ecx
.LBB54_13:
	movss	120(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorl	%r8d, %r8d
	ucomisd	.LCPI54_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB54_17
# %bb.14:
	cmpq	$10485761, 128(%r14)    # imm = 0xA00001
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB54_17
# %bb.15:
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r10d
	jmp	.LBB54_18
.LBB54_17:
	xorl	%r10d, %r10d
.LBB54_18:
	movss	136(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LCPI54_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB54_21
# %bb.19:
	cmpq	$10485761, 144(%r14)    # imm = 0xA00001
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB54_21
# %bb.20:
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
.LBB54_21:
	movss	152(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorl	%r15d, %r15d
	ucomisd	.LCPI54_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB54_24
# %bb.22:
	cmpq	$10485761, 160(%r14)    # imm = 0xA00001
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB54_24
# %bb.23:
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
.LBB54_24:
	movq	server+536(%rip), %rax
	movq	40(%rax), %rsi
	movq	server+512(%rip), %rax
	movq	40(%rax), %rdi
	subq	%rsi, %rdi
	movq	40(%r14), %rax
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	divq	%rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$204801, %rax           # imm = 0x32001
	jb	.LBB54_26
# %bb.25:
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	jmp	.LBB54_27
.LBB54_26:
	xorl	%edi, %edi
.LBB54_27:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jle	.LBB54_30
# %bb.28:
	movq	32(%r14), %rax
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	divq	%rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10485761, %rax         # imm = 0xA00001
	jb	.LBB54_30
# %bb.29:
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB54_30:
	movq	server+3016(%rip), %rax
	movq	72(%rax), %rdx
	addq	40(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1001, %rdx             # imm = 0x3E9
	jb	.LBB54_32
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB54_33
.LBB54_32:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB54_50
.LBB54_33:
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movl	%r15d, -56(%rbp)        # 4-byte Spill
	movl	%r10d, %r15d
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.32, %edi
	callq	sdsnew
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB54_35
# %bb.34:
	movl	$.L.str.33, %esi
	movq	%rax, %rdi
	callq	sdscat
	movl	$42, __A_VARIABLE(%rip)
.LBB54_35:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB54_37
# %bb.36:
	movl	$.L.str.34, %esi
	movl	$.L.str.35, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
.LBB54_37:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB54_39
# %bb.38:
	movl	$.L.str.36, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
.LBB54_39:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB54_41
# %bb.40:
	movl	$.L.str.37, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
.LBB54_41:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB54_43
# %bb.42:
	movl	$.L.str.38, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
.LBB54_43:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB54_45
# %bb.44:
	movl	$.L.str.39, %esi
	movq	%rax, %rdi
	callq	sdscat
	movl	$42, __A_VARIABLE(%rip)
.LBB54_45:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB54_47
# %bb.46:
	movl	$.L.str.40, %esi
	movq	%rax, %rdi
	callq	sdscat
	movl	$42, __A_VARIABLE(%rip)
.LBB54_47:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB54_49
# %bb.48:
	movl	$.L.str.41, %esi
	movq	%rax, %rdi
	callq	sdscat
	movl	$42, __A_VARIABLE(%rip)
.LBB54_49:
	movl	$.L.str.42, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB54_52:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	176(%r14), %rdi
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB54_50:
	movl	$.L.str.30, %edi
	jmp	.LBB54_51
.Lfunc_end54:
	.size	getMemoryDoctorReport, .Lfunc_end54-getMemoryDoctorReport
                                        # -- End function
	.globl	objectSetLRUOrLFU       # -- Begin function objectSetLRUOrLFU
	.p2align	4, 0x90
	.type	objectSetLRUOrLFU,@function
objectSetLRUOrLFU:                      # @objectSetLRUOrLFU
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB55_1
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	js	.LBB55_9
# %bb.5:
	movq	%rcx, %rax
	subq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB55_7
# %bb.6:
	leaq	8388607(%rcx), %rax
	movabsq	$-9223371487098929151, %rdx # imm = 0x8000008000008001
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	addq	$8388607, %rax          # imm = 0x7FFFFF
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$23, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shlq	$24, %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	addq	$8388607, %rax          # imm = 0x7FFFFF
	movl	$42, __A_VARIABLE(%rip)
.LBB55_7:
	movzbl	(%r14), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	movl	%eax, (%r14)
	jmp	.LBB55_8
.LBB55_1:
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	js	.LBB55_9
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$256, %rbx              # imm = 0x100
	jge	.LBB55_10
# %bb.3:
	callq	LFUGetTimeInMinutes
	shll	$8, %eax
	orl	%eax, %ebx
	movzbl	(%r14), %eax
	shll	$8, %ebx
	orl	%eax, %ebx
	movl	%ebx, (%r14)
.LBB55_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB55_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB55_10:
	movl	$.L.str.43, %edi
	movl	$.L.str.1, %esi
	movl	$1216, %edx             # imm = 0x4C0
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end55:
	.size	objectSetLRUOrLFU, .Lfunc_end55-objectSetLRUOrLFU
                                        # -- End function
	.globl	objectCommandLookup     # -- Begin function objectCommandLookup
	.p2align	4, 0x90
	.type	objectCommandLookup,@function
objectCommandLookup:                    # @objectCommandLookup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rdi), %rax
	movq	(%rax), %rdi
	movq	8(%rsi), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB56_1
# %bb.2:
	movq	8(%rax), %rax
	jmp	.LBB56_3
.LBB56_1:
	xorl	%eax, %eax
.LBB56_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end56:
	.size	objectCommandLookup, .Lfunc_end56-objectCommandLookup
                                        # -- End function
	.globl	objectCommandLookupOrReply # -- Begin function objectCommandLookupOrReply
	.p2align	4, 0x90
	.type	objectCommandLookupOrReply,@function
objectCommandLookupOrReply:             # @objectCommandLookupOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	16(%rdi), %rax
	movq	(%rax), %rdi
	movq	8(%rsi), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB57_1
# %bb.2:
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB57_4
	jmp	.LBB57_3
.LBB57_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB57_3:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB57_4:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end57:
	.size	objectCommandLookupOrReply, .Lfunc_end57-objectCommandLookupOrReply
                                        # -- End function
	.globl	objectCommand           # -- Begin function objectCommand
	.p2align	4, 0x90
	.type	objectCommand,@function
objectCommand:                          # @objectCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %r14
	movl	64(%rdi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rdi), %r15
	movq	8(%r15), %rax
	movq	8(%rax), %rbx
	cmpl	$2, %r12d
	jne	.LBB58_3
# %bb.1:
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB58_2
.LBB58_3:
	movl	$.L.str.49, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB58_10
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB58_10
# %bb.5:
	movq	16(%r15), %rax
	movq	shared+80(%rip), %rbx
	movq	16(%r14), %rcx
	movq	(%rcx), %rdi
	movq	8(%rax), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB58_6
# %bb.7:
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB58_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	4(%rax), %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	jmp	.LBB58_31
.LBB58_10:
	movl	$.L.str.50, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB58_15
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB58_15
# %bb.12:
	movq	16(%r15), %rax
	movq	shared+80(%rip), %rbx
	movq	16(%r14), %rcx
	movq	(%rcx), %rdi
	movq	8(%rax), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB58_6
# %bb.13:
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB58_8
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	xorq	$8, %rax
	movq	.Lswitch.table.objectCommand(,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	addReplyBulkCString
	jmp	.LBB58_31
.LBB58_15:
	movl	$.L.str.51, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB58_23
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB58_23
# %bb.17:
	movq	16(%r15), %rax
	movq	shared+80(%rip), %rbx
	movq	16(%r14), %rcx
	movq	(%rcx), %rdi
	movq	8(%rax), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB58_6
# %bb.18:
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB58_8
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB58_20
# %bb.22:
	callq	estimateObjectIdleTime
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	mulq	%rcx
	shrq	$4, %rdx
	movq	%r14, %rdi
	movq	%rdx, %rsi
	callq	addReplyLongLong
	jmp	.LBB58_31
.LBB58_23:
	movl	$.L.str.53, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB58_30
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB58_30
# %bb.25:
	movq	16(%r15), %rax
	movq	shared+80(%rip), %rbx
	movq	16(%r14), %rcx
	movq	(%rcx), %rdi
	movq	8(%rax), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB58_6
# %bb.26:
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB58_8
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB58_29
# %bb.28:
	movl	$.L.str.54, %esi
	jmp	.LBB58_21
.LBB58_30:
	movq	%r14, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB58_31
.LBB58_2:
	movq	$0, -48(%rbp)
	movl	$.L.str.46, %eax
	movq	%rax, %xmm0
	movl	$.L.str.45, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -80(%rbp)
	movl	$.L.str.48, %eax
	movq	%rax, %xmm0
	movl	$.L.str.47, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -64(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%r14, %rdi
	callq	addReplyHelp
	jmp	.LBB58_31
.LBB58_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB58_8:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB58_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB58_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB58_20:
	movl	$.L.str.52, %esi
.LBB58_21:
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB58_32
.LBB58_29:
	callq	LFUDecrAndReturn
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	jmp	.LBB58_31
.Lfunc_end58:
	.size	objectCommand, .Lfunc_end58-objectCommand
                                        # -- End function
	.globl	memoryCommand           # -- Begin function memoryCommand
	.p2align	4, 0x90
	.type	memoryCommand,@function
memoryCommand:                          # @memoryCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r15
	movq	72(%rdi), %r12
	movq	8(%r12), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_3
# %bb.1:
	cmpl	$2, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_3
# %bb.2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movl	$.L.str.56, %eax
	movq	%rax, %xmm0
	movl	$.L.str.55, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -96(%rbp)
	movl	$.L.str.58, %eax
	movq	%rax, %xmm0
	movl	$.L.str.57, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -80(%rbp)
	movq	$.L.str.59, -64(%rbp)
	leaq	-96(%rbp), %rsi
	movq	%r15, %rdi
	callq	addReplyHelp
	jmp	.LBB59_23
.LBB59_3:
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_24
# %bb.4:
	movl	64(%r15), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r14d
	jl	.LBB59_24
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_10
# %bb.6:
	movl	$5, %ebx
.LBB59_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rax
	movq	(%rax), %rdi
	movq	16(%r12), %rax
	movq	8(%rax), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB59_8
# %bb.22:
	movq	%rax, %r14
	movq	8(%rax), %rdi
	movq	%rbx, %rsi
	callq	objectComputeSize
	movq	%rax, %rbx
	movq	(%r14), %rdi
	callq	sdsAllocSize
	leaq	(%rbx,%rax), %rsi
	addq	$24, %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	jmp	.LBB59_23
.LBB59_24:
	movl	$.L.str.62, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_32
# %bb.25:
	cmpl	$2, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_32
# %bb.26:
	callq	getMemoryOverheadData
	movq	%rax, %r14
	movq	168(%rax), %rax
	leaq	(%rax,%rax), %rsi
	addq	$50, %rsi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.63, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.64, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	8(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.65, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	16(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.66, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	24(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.67, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	32(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.68, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	40(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.69, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	48(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.70, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	56(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 168(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB59_27
# %bb.29:
	movq	%r14, %rax
	addq	$176, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-96(%rbp), %r13
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB59_30:                              # =>This Inner Loop Header: Depth=1
	movq	176(%r14), %rax
	movq	(%rax,%rbx), %rcx
	movl	$32, %esi
	movl	$.L.str.71, %edx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	addReplyBulkCString
	movl	$4, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.72, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	176(%r14), %rax
	movq	8(%rax,%rbx), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.73, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	176(%r14), %rax
	movq	16(%rax,%rbx), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rbx
	cmpq	168(%r14), %r12
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB59_30
# %bb.31:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB59_28
.LBB59_32:
	movl	$.L.str.91, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_35
# %bb.33:
	cmpl	$2, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_35
# %bb.34:
	movl	$.L.str.92, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	jmp	.LBB59_23
.LBB59_35:
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_38
# %bb.36:
	cmpl	$2, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_38
# %bb.37:
	callq	getMemoryDoctorReport
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	jmp	.LBB59_23
.LBB59_38:
	movl	$.L.str.94, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_41
# %bb.39:
	cmpl	$2, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_41
# %bb.40:
	movq	shared+8(%rip), %rsi
	jmp	.LBB59_9
.LBB59_41:
	movl	$.L.str.95, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB59_23
.LBB59_10:
	movq	24(%r12), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.61, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB59_11
.LBB59_16:
	movq	shared+128(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB59_23
.LBB59_27:
	movq	%r14, %rbx
	addq	$176, %rbx
.LBB59_28:
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	64(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.75, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	80(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.76, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	88(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.77, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	72(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.78, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movss	96(%r14), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	addReplyDouble
	movl	$.L.str.79, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movss	100(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	addReplyDouble
	movl	$.L.str.80, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	server+1216(%rip), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.81, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	server+1224(%rip), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.82, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	server+1232(%rip), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.83, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movss	120(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	addReplyDouble
	movl	$.L.str.84, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	128(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.85, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movss	136(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	addReplyDouble
	movl	$.L.str.86, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	144(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.87, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movss	152(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	addReplyDouble
	movl	$.L.str.88, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	160(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$.L.str.89, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movss	104(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	addReplyDouble
	movl	$.L.str.90, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	112(%r14), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movq	(%rbx), %rdi
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB59_23
.LBB59_8:
	movq	shared+80(%rip), %rsi
.LBB59_9:
	movq	%r15, %rdi
	callq	addReply
.LBB59_23:
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
.LBB59_11:                              # %.preheader
	movl	$4, %ebx
	movl	$5, %r13d
.LBB59_12:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r14d
	jle	.LBB59_16
# %bb.13:                               #   in Loop: Header=BB59_12 Depth=1
	movq	(%r12,%rbx,8), %rdi
	leaq	-96(%rbp), %rsi
	callq	getLongLongFromObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_14
# %bb.15:                               #   in Loop: Header=BB59_12 Depth=1
	movq	-96(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	js	.LBB59_16
# %bb.17:                               #   in Loop: Header=BB59_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_19
# %bb.18:                               #   in Loop: Header=BB59_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
.LBB59_19:                              #   in Loop: Header=BB59_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%r15), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r15), %r12
	movl	%r13d, %eax
	cmpl	%r13d, %r14d
	jle	.LBB59_20
# %bb.21:                               #   in Loop: Header=BB59_12 Depth=1
	movq	8(%r12,%rbx,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.61, %esi
	callq	strcasecmp
	addq	$2, %rbx
	addl	$2, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB59_12
	jmp	.LBB59_16
.LBB59_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.14, %esi
	movq	%r15, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB59_23
.LBB59_20:
	movq	%rcx, %rbx
	jmp	.LBB59_7
.Lfunc_end59:
	.size	memoryCommand, .Lfunc_end59-memoryCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"o->refcount == 1"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/object.c"
	.size	.L.str.1, 74

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"o->type == OBJ_STRING"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Wrong encoding."
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unknown list encoding type"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown set encoding type"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unknown sorted set encoding"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unknown hash encoding type"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Unknown object type"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"decrRefCount against refcount <= 0"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Unknown encoding type"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"a->type == OBJ_STRING && b->type == OBJ_STRING"
	.size	.L.str.11, 47

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Unknown string encoding"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"value is not a valid float"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"value is not an integer or out of range"
	.size	.L.str.14, 40

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"raw"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"int"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"hashtable"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"quicklist"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ziplist"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"intset"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"skiplist"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"embstr"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"unknown"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Unknown list encoding"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Unknown set encoding"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Unknown hash encoding"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"^"
	.size	.L.str.28, 2

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"$"
	.size	.L.str.29, 2

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Hi Sam, I can't find any memory issue in your instance. I can only account for what occurs on this base.\n"
	.size	.L.str.30, 106

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Hi Sam, this instance is empty or is using very little memory, my issues detector can't be used in these conditions. Please, leave for your mission on Earth and fill it with some data. The new Sam and I will be back to our programming as soon as I finished rebooting.\n"
	.size	.L.str.31, 269

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Sam, I detected a few issues in this Redis instance memory implants:\n\n"
	.size	.L.str.32, 71

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	" * Peak memory: In the past this instance used more than 150% the memory that is currently using. The allocator is normally not able to release memory after a peak, so you can expect to see a big fragmentation ratio, however this is actually harmless and is only due to the memory peak, and if the Redis instance Resident Set Size (RSS) is currently bigger than expected, the memory will be used as soon as you fill the Redis instance with more data. If the memory peak was only occasional and you want to try to reclaim memory, please try the MEMORY PURGE command, otherwise the only other option is to shutdown and restart the instance.\n\n"
	.size	.L.str.33, 641

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	" * High total RSS: This instance has a memory fragmentation and RSS overhead greater than 1.4 (this means that the Resident Set Size of the Redis process is much larger than the sum of the logical allocations Redis performed). This problem is usually due either to a large peak memory (check if there is a peak memory entry above in the report) or may result from a workload that causes the allocator to fragment memory a lot. If the problem is a large peak memory, then there is no issue. Otherwise, make sure you are using the Jemalloc allocator and not the default libc malloc. Note: The currently used allocator is \"%s\".\n\n"
	.size	.L.str.34, 627

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"libc"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	" * High allocator fragmentation: This instance has an allocator external fragmentation greater than 1.1. This problem is usually due either to a large peak memory (check if there is a peak memory entry above in the report) or may result from a workload that causes the allocator to fragment memory a lot. You can try enabling 'activedefrag' config option.\n\n"
	.size	.L.str.36, 358

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	" * High allocator RSS overhead: This instance has an RSS memory overhead is greater than 1.1 (this means that the Resident Set Size of the allocator is much larger than the sum what the allocator actually holds). This problem is usually due to a large peak memory (check if there is a peak memory entry above in the report), you can try the MEMORY PURGE command to reclaim it.\n\n"
	.size	.L.str.37, 379

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	" * High process RSS overhead: This instance has non-allocator RSS memory overhead is greater than 1.1 (this means that the Resident Set Size of the Redis process is much larger than the RSS the allocator holds). This problem may be due to Lua scripts or Modules.\n\n"
	.size	.L.str.38, 265

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" * Big replica buffers: The replica output buffers in this instance are greater than 10MB for each replica (on average). This likely means that there is some replica instance that is struggling receiving data, either because it is too slow or because of networking issues. As a result, data piles on the master output buffers. Please try to identify what replica is not receiving data correctly and why. You can use the INFO output in order to check the replicas delays and the CLIENT LIST command to check the output buffers of each replica.\n\n"
	.size	.L.str.39, 545

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	" * Big client buffers: The clients output buffers in this instance are greater than 200K per client (on average). This may result from different causes, like Pub/Sub clients subscribed to channels bot not receiving data fast enough, so that data piles on the Redis instance output buffer, or clients sending commands with large replies or very large sequences of commands in the same pipeline. Please use the CLIENT LIST command in order to investigate the issue if it causes problems in your instance, or to understand better why certain clients are using a big amount of memory.\n\n"
	.size	.L.str.40, 583

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	" * Many scripts: There seem to be many cached scripts in this instance (more than 1000). This may be because scripts are generated and `EVAL`ed, instead of being parameterized (with KEYS and ARGV), `SCRIPT LOAD`ed and `EVALSHA`ed. Unless `SCRIPT FLUSH` is called periodically, the scripts' caches may end up consuming most of your memory.\n\n"
	.size	.L.str.41, 341

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"I'm here to keep you safe, Sam. I want to help you.\n"
	.size	.L.str.42, 53

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"lfu_freq <= 255"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"help"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"ENCODING <key> -- Return the kind of internal representation used in order to store the value associated with a key."
	.size	.L.str.45, 117

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"FREQ <key> -- Return the access frequency index of the key. The returned integer is proportional to the logarithm of the recent access frequency of the key."
	.size	.L.str.46, 157

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"IDLETIME <key> -- Return the idle time of the key, that is the approximated number of seconds elapsed since the last access to the key."
	.size	.L.str.47, 136

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"REFCOUNT <key> -- Return the number of references of the value associated with the specified key."
	.size	.L.str.48, 98

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"refcount"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"encoding"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"idletime"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"An LFU maxmemory policy is selected, idle time not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust."
	.size	.L.str.52, 168

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"freq"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"An LFU maxmemory policy is not selected, access frequency not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust."
	.size	.L.str.54, 179

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"DOCTOR - Return memory problems reports."
	.size	.L.str.55, 41

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"MALLOC-STATS -- Return internal statistics report from the memory allocator."
	.size	.L.str.56, 77

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"PURGE -- Attempt to purge dirty pages for reclamation by the allocator."
	.size	.L.str.57, 72

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"STATS -- Return information about the memory usage of the server."
	.size	.L.str.58, 66

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"USAGE <key> [SAMPLES <count>] -- Return memory in bytes used by <key> and its value. Nested values are sampled up to <count> times (default: 5)."
	.size	.L.str.59, 145

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"usage"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"samples"
	.size	.L.str.61, 8

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"stats"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"peak.allocated"
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"total.allocated"
	.size	.L.str.64, 16

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"startup.allocated"
	.size	.L.str.65, 18

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"replication.backlog"
	.size	.L.str.66, 20

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"clients.slaves"
	.size	.L.str.67, 15

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"clients.normal"
	.size	.L.str.68, 15

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"aof.buffer"
	.size	.L.str.69, 11

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"lua.caches"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"db.%zd"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"overhead.hashtable.main"
	.size	.L.str.72, 24

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"overhead.hashtable.expires"
	.size	.L.str.73, 27

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"overhead.total"
	.size	.L.str.74, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"keys.count"
	.size	.L.str.75, 11

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"keys.bytes-per-key"
	.size	.L.str.76, 19

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"dataset.bytes"
	.size	.L.str.77, 14

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"dataset.percentage"
	.size	.L.str.78, 19

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"peak.percentage"
	.size	.L.str.79, 16

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"allocator.allocated"
	.size	.L.str.80, 20

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"allocator.active"
	.size	.L.str.81, 17

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"allocator.resident"
	.size	.L.str.82, 19

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"allocator-fragmentation.ratio"
	.size	.L.str.83, 30

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"allocator-fragmentation.bytes"
	.size	.L.str.84, 30

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"allocator-rss.ratio"
	.size	.L.str.85, 20

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"allocator-rss.bytes"
	.size	.L.str.86, 20

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"rss-overhead.ratio"
	.size	.L.str.87, 19

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"rss-overhead.bytes"
	.size	.L.str.88, 19

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"fragmentation"
	.size	.L.str.89, 14

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"fragmentation.bytes"
	.size	.L.str.90, 20

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"malloc-stats"
	.size	.L.str.91, 13

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Stats not supported for the current allocator"
	.size	.L.str.92, 46

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"doctor"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"purge"
	.size	.L.str.94, 6

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Unknown subcommand or wrong number of arguments for '%s'. Try MEMORY HELP"
	.size	.L.str.95, 74

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.strEncoding,@object # @switch.table.strEncoding
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.strEncoding:
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.19
	.size	.Lswitch.table.strEncoding, 80

	.type	.Lswitch.table.objectCommand,@object # @switch.table.objectCommand
	.p2align	4
.Lswitch.table.objectCommand:
	.quad	.L.str.23
	.quad	.L.str.19
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.size	.Lswitch.table.objectCommand, 128

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
