	.text
	.file	"t_hash.c"
	.globl	hashTypeTryConversion   # -- Begin function hashTypeTryConversion
	.p2align	4, 0x90
	.type	hashTypeTryConversion,@function
hashTypeTryConversion:                  # @hashTypeTryConversion
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rdi), %r8d
	movl	%r8d, %eax
	andl	$240, %eax
	cmpl	$80, %eax
	jne	.LBB0_19
# %bb.1:
	cmpl	%ecx, %edx
	jg	.LBB0_19
# %bb.2:
	movq	server+2808(%rip), %r9
	movslq	%edx, %rdx
	movslq	%ecx, %r10
	addq	$-1, %rdx
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-17(%r11), %rax
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	cmpq	%r9, %rax
	ja	.LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rdx
	cmpq	%r10, %rdx
	jge	.LBB0_19
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rsi,%rdx,8), %rax
	movzbl	(%rax), %ecx
	shrb	$4, %cl
	orb	$8, %cl
	cmpb	$8, %cl
	jne	.LBB0_18
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	8(%rax), %r11
	movzbl	-1(%r11), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB0_18
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	shrq	$3, %rax
	jmp	.LBB0_11
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movzwl	-5(%r11), %eax
	jmp	.LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-9(%r11), %eax
	jmp	.LBB0_11
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movzbl	-3(%r11), %eax
	jmp	.LBB0_11
.LBB0_19:
	popq	%rbp
	retq
.LBB0_12:
	shrb	$4, %r8b
	cmpb	$5, %r8b
	jne	.LBB0_13
# %bb.17:
	movl	$2, %esi
	popq	%rbp
	jmp	hashTypeConvertZiplist  # TAILCALL
.LBB0_13:
	movl	$.L.str.1, %edi
	cmpb	$2, %r8b
	jne	.LBB0_16
# %bb.14:
	movl	$.L.str.11, %edx
	movl	$504, %esi              # imm = 0x1F8
	jmp	.LBB0_15
.LBB0_16:
	movl	$.L.str.5, %edx
	movl	$506, %esi              # imm = 0x1FA
.LBB0_15:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end0:
	.size	hashTypeTryConversion, .Lfunc_end0-hashTypeTryConversion
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10
                                        # -- End function
	.text
	.globl	hashTypeConvert         # -- Begin function hashTypeConvert
	.p2align	4, 0x90
	.type	hashTypeConvert,@function
hashTypeConvert:                        # @hashTypeConvert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$5, %al
	jne	.LBB1_1
# %bb.5:
	popq	%rbp
	jmp	hashTypeConvertZiplist  # TAILCALL
.LBB1_1:
	movl	$.L.str.1, %edi
	cmpb	$2, %al
	jne	.LBB1_4
# %bb.2:
	movl	$.L.str.11, %edx
	movl	$504, %esi              # imm = 0x1F8
	jmp	.LBB1_3
.LBB1_4:
	movl	$.L.str.5, %edx
	movl	$506, %esi              # imm = 0x1FA
.LBB1_3:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end1:
	.size	hashTypeConvert, .Lfunc_end1-hashTypeConvert
                                        # -- End function
	.globl	hashTypeGetFromZiplist  # -- Begin function hashTypeGetFromZiplist
	.p2align	4, 0x90
	.type	hashTypeGetFromZiplist,@function
hashTypeGetFromZiplist:                 # @hashTypeGetFromZiplist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$80, %eax
	jne	.LBB2_1
# %bb.3:
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	8(%rdi), %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB2_17
# %bb.4:
	movzbl	-1(%r14), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB2_5
# %bb.6:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_7:
	shrq	$3, %rdx
	jmp	.LBB2_12
.LBB2_11:
	movq	-17(%r14), %rdx
	jmp	.LBB2_12
.LBB2_9:
	movzwl	-5(%r14), %edx
	jmp	.LBB2_12
.LBB2_10:
	movl	-9(%r14), %edx
	jmp	.LBB2_12
.LBB2_8:
	movzbl	-3(%r14), %edx
	jmp	.LBB2_12
.LBB2_5:
	xorl	%edx, %edx
.LBB2_12:
	movq	%rax, %rdi
	movq	%r14, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistFind
	testq	%rax, %rax
	je	.LBB2_17
# %bb.13:
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB2_14
# %bb.15:
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	ziplistGet
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB2_16
.LBB2_17:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_1:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$65, %edx
	jmp	.LBB2_2
.LBB2_14:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$74, %edx
	jmp	.LBB2_2
.LBB2_16:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$80, %edx
.LBB2_2:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end2:
	.size	hashTypeGetFromZiplist, .Lfunc_end2-hashTypeGetFromZiplist
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_7
	.quad	.LBB2_8
	.quad	.LBB2_9
	.quad	.LBB2_10
	.quad	.LBB2_11
                                        # -- End function
	.text
	.globl	hashTypeGetFromHashTable # -- Begin function hashTypeGetFromHashTable
	.p2align	4, 0x90
	.type	hashTypeGetFromHashTable,@function
hashTypeGetFromHashTable:               # @hashTypeGetFromHashTable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$32, %eax
	jne	.LBB3_5
# %bb.1:
	movq	8(%rdi), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB3_2
# %bb.3:
	movq	8(%rax), %rax
	popq	%rbp
	retq
.LBB3_2:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB3_5:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$93, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end3:
	.size	hashTypeGetFromHashTable, .Lfunc_end3-hashTypeGetFromHashTable
                                        # -- End function
	.globl	hashTypeGetValue        # -- Begin function hashTypeGetValue
	.p2align	4, 0x90
	.type	hashTypeGetValue,@function
hashTypeGetValue:                       # @hashTypeGetValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	(%rdi), %eax
	movl	%eax, %ecx
	shrb	$4, %cl
	cmpb	$2, %cl
	je	.LBB4_4
# %bb.1:
	cmpb	$5, %cl
	jne	.LBB4_16
# %bb.2:
	movq	$0, (%rbx)
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	hashTypeGetFromZiplist
	testl	%eax, %eax
	jne	.LBB4_17
# %bb.3:
	xorl	%eax, %eax
	jmp	.LBB4_18
.LBB4_4:
	andl	$240, %eax
	cmpl	$32, %eax
	jne	.LBB4_19
# %bb.5:
	movq	8(%rdi), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB4_17
# %bb.6:
	movq	8(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB4_17
# %bb.7:
	movq	%rdx, (%rbx)
	movzbl	-1(%rdx), %ecx
	movl	%ecx, %ebx
	andb	$7, %bl
	xorl	%eax, %eax
	cmpb	$4, %bl
	ja	.LBB4_8
# %bb.9:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI4_0(,%rsi,8)
.LBB4_10:
	shrq	$3, %rcx
	movl	%ecx, (%r14)
	jmp	.LBB4_18
.LBB4_17:
	movl	$-1, %eax
.LBB4_18:
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_14:
	movq	-17(%rdx), %rcx
	movl	%ecx, (%r14)
	jmp	.LBB4_18
.LBB4_12:
	movzwl	-5(%rdx), %ecx
	movl	%ecx, (%r14)
	jmp	.LBB4_18
.LBB4_11:
	movzbl	-3(%rdx), %ecx
	movl	%ecx, (%r14)
	jmp	.LBB4_18
.LBB4_13:
	movl	-9(%rdx), %ecx
	movl	%ecx, (%r14)
	jmp	.LBB4_18
.LBB4_8:
	xorl	%ecx, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB4_18
.LBB4_16:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$122, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB4_19:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$93, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end4:
	.size	hashTypeGetValue, .Lfunc_end4-hashTypeGetValue
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_10
	.quad	.LBB4_11
	.quad	.LBB4_12
	.quad	.LBB4_13
	.quad	.LBB4_14
                                        # -- End function
	.text
	.globl	hashTypeGetValueObject  # -- Begin function hashTypeGetValueObject
	.p2align	4, 0x90
	.type	hashTypeGetValueObject,@function
hashTypeGetValueObject:                 # @hashTypeGetValueObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	leaq	-16(%rbp), %r8
	callq	hashTypeGetValue
	cmpl	$-1, %eax
	je	.LBB5_1
# %bb.2:
	movq	-24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_4
# %bb.3:
	movl	-4(%rbp), %esi
	callq	createStringObject
	jmp	.LBB5_5
.LBB5_1:
	xorl	%eax, %eax
	jmp	.LBB5_5
.LBB5_4:
	movq	-16(%rbp), %rdi
	callq	createStringObjectFromLongLong
.LBB5_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	hashTypeGetValueObject, .Lfunc_end5-hashTypeGetValueObject
                                        # -- End function
	.globl	hashTypeGetValueLength  # -- Begin function hashTypeGetValueLength
	.p2align	4, 0x90
	.type	hashTypeGetValueLength,@function
hashTypeGetValueLength:                 # @hashTypeGetValueLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	(%rdi), %eax
	movl	%eax, %ecx
	shrb	$4, %cl
	cmpb	$2, %cl
	je	.LBB6_4
# %bb.1:
	cmpb	$5, %cl
	jne	.LBB6_21
# %bb.2:
	movq	$0, -24(%rbp)
	movl	$-1, -4(%rbp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	leaq	-16(%rbp), %r8
	callq	hashTypeGetFromZiplist
	testl	%eax, %eax
	jne	.LBB6_19
# %bb.10:
	cmpq	$0, -24(%rbp)
	je	.LBB6_14
# %bb.11:
	movl	-4(%rbp), %eax
	movl	%eax, %eax
	jmp	.LBB6_20
.LBB6_4:
	andl	$240, %eax
	cmpl	$32, %eax
	jne	.LBB6_22
# %bb.5:
	movq	8(%rdi), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB6_19
# %bb.6:
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB6_19
# %bb.7:
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB6_19
# %bb.8:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI6_0(,%rdx,8)
.LBB6_9:
	shrq	$3, %rax
	jmp	.LBB6_20
.LBB6_19:
	xorl	%eax, %eax
.LBB6_20:
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB6_14:
	movq	-16(%rbp), %rdi
	callq	sdigits10
	movl	%eax, %eax
	jmp	.LBB6_20
.LBB6_15:
	movq	-17(%rcx), %rax
	jmp	.LBB6_20
.LBB6_16:
	movzwl	-5(%rcx), %eax
	jmp	.LBB6_20
.LBB6_17:
	movzbl	-3(%rcx), %eax
	jmp	.LBB6_20
.LBB6_18:
	movl	-9(%rcx), %eax
	jmp	.LBB6_20
.LBB6_21:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$159, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB6_22:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$93, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end6:
	.size	hashTypeGetValueLength, .Lfunc_end6-hashTypeGetValueLength
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_9
	.quad	.LBB6_17
	.quad	.LBB6_16
	.quad	.LBB6_18
	.quad	.LBB6_15
                                        # -- End function
	.text
	.globl	hashTypeExists          # -- Begin function hashTypeExists
	.p2align	4, 0x90
	.type	hashTypeExists,@function
hashTypeExists:                         # @hashTypeExists
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	(%rdi), %eax
	movl	%eax, %ecx
	shrb	$4, %cl
	cmpb	$2, %cl
	je	.LBB7_4
# %bb.1:
	cmpb	$5, %cl
	jne	.LBB7_10
# %bb.2:
	movq	$0, -24(%rbp)
	movl	$-1, -4(%rbp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	leaq	-16(%rbp), %r8
	callq	hashTypeGetFromZiplist
	testl	%eax, %eax
	jne	.LBB7_7
# %bb.3:
	movl	$1, %eax
	jmp	.LBB7_8
.LBB7_4:
	andl	$240, %eax
	cmpl	$32, %eax
	jne	.LBB7_9
# %bb.5:
	movq	8(%rdi), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB7_7
# %bb.6:
	movq	%rax, %rcx
	movl	$1, %eax
	cmpq	$0, 8(%rcx)
	jne	.LBB7_8
.LBB7_7:
	xorl	%eax, %eax
.LBB7_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB7_10:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$176, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB7_9:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$93, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end7:
	.size	hashTypeExists, .Lfunc_end7-hashTypeExists
                                        # -- End function
	.globl	hashTypeSet             # -- Begin function hashTypeSet
	.p2align	4, 0x90
	.type	hashTypeSet,@function
hashTypeSet:                            # @hashTypeSet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%ecx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB8_51
# %bb.1:
	cmpb	$5, %al
	jne	.LBB8_71
# %bb.2:
	movq	%rdx, %rbx
	movq	8(%r14), %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB8_22
# %bb.3:
	movzbl	-1(%r12), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB8_4
# %bb.5:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_6:
	shrq	$3, %rdx
	jmp	.LBB8_11
.LBB8_51:
	movl	%r15d, %r13d
	movq	%rdx, %r15
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB8_56
# %bb.52:
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	callq	sdsfree
	testb	$2, %r13b
	jne	.LBB8_53
# %bb.54:
	movq	%r15, %rdi
	callq	sdsdup
	jmp	.LBB8_55
.LBB8_56:
	movl	%r13d, %ebx
	testb	$1, %bl
	jne	.LBB8_57
# %bb.58:
	movq	%r12, %rdi
	callq	sdsdup
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movq	%rax, %r12
	testb	$2, %bl
	je	.LBB8_61
.LBB8_60:
	xorl	%ebx, %ebx
	movq	%r15, %rdx
	jmp	.LBB8_62
.LBB8_53:
	movq	%r15, %rax
	xorl	%r15d, %r15d
.LBB8_55:
	movq	%rax, 8(%rbx)
	movl	%r13d, %eax
	movl	$1, %r13d
	movq	%r15, %rbx
	movl	%eax, %r15d
	jmp	.LBB8_63
.LBB8_57:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testb	$2, %bl
	jne	.LBB8_60
.LBB8_61:
	movq	%r15, %rdi
	callq	sdsdup
	movq	%r15, %rbx
	movq	%rax, %rdx
.LBB8_62:
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	callq	dictAdd
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	%r13d, %r15d
	xorl	%r13d, %r13d
	jmp	.LBB8_63
.LBB8_10:
	movq	-17(%r12), %rdx
	jmp	.LBB8_11
.LBB8_8:
	movzwl	-5(%r12), %edx
	jmp	.LBB8_11
.LBB8_9:
	movl	-9(%r12), %edx
	jmp	.LBB8_11
.LBB8_7:
	movzbl	-3(%r12), %edx
	jmp	.LBB8_11
.LBB8_4:
	xorl	%edx, %edx
.LBB8_11:
	movq	%rax, %rdi
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistFind
	testq	%rax, %rax
	je	.LBB8_22
# %bb.12:
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	je	.LBB8_70
# %bb.13:
	leaq	-56(%rbp), %rsi
	movq	%r13, %rdi
	callq	ziplistDelete
	movq	-56(%rbp), %rsi
	movzbl	-1(%rbx), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB8_14
# %bb.15:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI8_1(,%rdx,8)
.LBB8_16:
	shrq	$3, %rcx
	jmp	.LBB8_21
.LBB8_22:
	movzbl	-1(%r12), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB8_23
# %bb.24:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_2(,%rax,8)
.LBB8_25:
	shrq	$3, %rdx
	jmp	.LBB8_30
.LBB8_29:
	movq	-17(%r12), %rdx
	jmp	.LBB8_30
.LBB8_27:
	movzwl	-5(%r12), %edx
	jmp	.LBB8_30
.LBB8_28:
	movl	-9(%r12), %edx
	jmp	.LBB8_30
.LBB8_26:
	movzbl	-3(%r12), %edx
	jmp	.LBB8_30
.LBB8_23:
	xorl	%edx, %edx
.LBB8_30:
	movq	%r13, %rdi
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	movzbl	-1(%rbx), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	xorl	%r13d, %r13d
	cmpb	$4, %cl
	ja	.LBB8_31
# %bb.32:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_3(,%rcx,8)
.LBB8_33:
	shrq	$3, %rdx
	jmp	.LBB8_38
.LBB8_37:
	movq	-17(%rbx), %rdx
	jmp	.LBB8_38
.LBB8_35:
	movzwl	-5(%rbx), %edx
	jmp	.LBB8_38
.LBB8_36:
	movl	-9(%rbx), %edx
	jmp	.LBB8_38
.LBB8_34:
	movzbl	-3(%rbx), %edx
	jmp	.LBB8_38
.LBB8_31:
	xorl	%edx, %edx
.LBB8_38:
	movq	%rax, %rdi
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	jmp	.LBB8_39
.LBB8_20:
	movq	-17(%rbx), %rcx
	jmp	.LBB8_21
.LBB8_18:
	movzwl	-5(%rbx), %ecx
	jmp	.LBB8_21
.LBB8_19:
	movl	-9(%rbx), %ecx
	jmp	.LBB8_21
.LBB8_17:
	movzbl	-3(%rbx), %ecx
	jmp	.LBB8_21
.LBB8_14:
	xorl	%ecx, %ecx
.LBB8_21:
	movq	%rax, %rdi
	movq	%rbx, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	ziplistInsert
	movl	$1, %r13d
.LBB8_39:
	movq	%rax, 8(%r14)
	movb	(%r14), %cl
	shrb	$4, %cl
	cmpb	$2, %cl
	je	.LBB8_44
# %bb.40:
	cmpb	$5, %cl
	jne	.LBB8_42
# %bb.41:
	movq	%rax, %rdi
	callq	ziplistLen
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	server+2800(%rip), %rcx
	ja	.LBB8_46
	jmp	.LBB8_63
.LBB8_44:
	movq	72(%rax), %rcx
	addq	40(%rax), %rcx
	cmpq	server+2800(%rip), %rcx
	jbe	.LBB8_63
.LBB8_46:
	movb	(%r14), %al
	shrb	$4, %al
	cmpb	$5, %al
	jne	.LBB8_47
# %bb.50:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	hashTypeConvertZiplist
.LBB8_63:
	testb	$1, %r15b
	je	.LBB8_66
# %bb.64:
	testq	%r12, %r12
	je	.LBB8_66
# %bb.65:
	movq	%r12, %rdi
	callq	sdsfree
.LBB8_66:
	testb	$2, %r15b
	je	.LBB8_69
# %bb.67:
	testq	%rbx, %rbx
	je	.LBB8_69
# %bb.68:
	movq	%rbx, %rdi
	callq	sdsfree
.LBB8_69:
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_71:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$267, %esi              # imm = 0x10B
	jmp	.LBB8_43
.LBB8_42:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$319, %esi              # imm = 0x13F
	jmp	.LBB8_43
.LBB8_47:
	movl	$.L.str.1, %edi
	cmpb	$2, %al
	jne	.LBB8_49
# %bb.48:
	movl	$.L.str.11, %edx
	movl	$504, %esi              # imm = 0x1F8
	jmp	.LBB8_43
.LBB8_49:
	movl	$.L.str.5, %edx
	movl	$506, %esi              # imm = 0x1FA
.LBB8_43:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB8_70:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$215, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end8:
	.size	hashTypeSet, .Lfunc_end8-hashTypeSet
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_8
	.quad	.LBB8_9
	.quad	.LBB8_10
.LJTI8_1:
	.quad	.LBB8_16
	.quad	.LBB8_17
	.quad	.LBB8_18
	.quad	.LBB8_19
	.quad	.LBB8_20
.LJTI8_2:
	.quad	.LBB8_25
	.quad	.LBB8_26
	.quad	.LBB8_27
	.quad	.LBB8_28
	.quad	.LBB8_29
.LJTI8_3:
	.quad	.LBB8_33
	.quad	.LBB8_34
	.quad	.LBB8_35
	.quad	.LBB8_36
	.quad	.LBB8_37
                                        # -- End function
	.text
	.globl	hashTypeLength          # -- Begin function hashTypeLength
	.p2align	4, 0x90
	.type	hashTypeLength,@function
hashTypeLength:                         # @hashTypeLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB9_4
# %bb.1:
	cmpb	$5, %al
	jne	.LBB9_3
# %bb.2:
	movq	8(%rdi), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	popq	%rbp
	retq
.LBB9_4:
	movq	8(%rdi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	popq	%rbp
	retq
.LBB9_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$319, %esi              # imm = 0x13F
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end9:
	.size	hashTypeLength, .Lfunc_end9-hashTypeLength
                                        # -- End function
	.globl	hashTypeDelete          # -- Begin function hashTypeDelete
	.p2align	4, 0x90
	.type	hashTypeDelete,@function
hashTypeDelete:                         # @hashTypeDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB10_13
# %bb.1:
	cmpb	$5, %al
	jne	.LBB10_17
# %bb.2:
	movq	8(%rbx), %r12
	xorl	%r14d, %r14d
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	.LBB10_16
# %bb.3:
	movzbl	-1(%r15), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	xorl	%r14d, %r14d
	cmpb	$4, %cl
	ja	.LBB10_4
# %bb.5:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_6:
	shrq	$3, %rdx
	jmp	.LBB10_11
.LBB10_13:
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	dictDelete
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB10_16
# %bb.14:
	movq	8(%rbx), %rdi
	callq	htNeedsResize
	movl	$1, %r14d
	testl	%eax, %eax
	je	.LBB10_16
# %bb.15:
	movq	8(%rbx), %rdi
	callq	dictResize
	jmp	.LBB10_16
.LBB10_10:
	movq	-17(%r15), %rdx
	jmp	.LBB10_11
.LBB10_7:
	movzbl	-3(%r15), %edx
	jmp	.LBB10_11
.LBB10_8:
	movzwl	-5(%r15), %edx
	jmp	.LBB10_11
.LBB10_9:
	movl	-9(%r15), %edx
	jmp	.LBB10_11
.LBB10_4:
	xorl	%edx, %edx
.LBB10_11:
	movq	%rax, %rdi
	movq	%r15, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistFind
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	je	.LBB10_16
# %bb.12:
	leaq	-40(%rbp), %r14
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	ziplistDelete
	movq	%rax, 8(%rbx)
	movl	$1, %r14d
.LBB10_16:
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_17:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$305, %esi              # imm = 0x131
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end10:
	.size	hashTypeDelete, .Lfunc_end10-hashTypeDelete
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_6
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_9
	.quad	.LBB10_10
                                        # -- End function
	.text
	.globl	hashTypeInitIterator    # -- Begin function hashTypeInitIterator
	.p2align	4, 0x90
	.type	hashTypeInitIterator,@function
hashTypeInitIterator:                   # @hashTypeInitIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$48, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movl	(%r14), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%rbx)
	andb	$15, %al
	cmpb	$2, %al
	je	.LBB11_4
# %bb.1:
	cmpb	$5, %al
	jne	.LBB11_3
# %bb.2:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.LBB11_5
.LBB11_4:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 32(%rbx)
.LBB11_5:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB11_3:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$335, %esi              # imm = 0x14F
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end11:
	.size	hashTypeInitIterator, .Lfunc_end11-hashTypeInitIterator
                                        # -- End function
	.globl	hashTypeReleaseIterator # -- Begin function hashTypeReleaseIterator
	.p2align	4, 0x90
	.type	hashTypeReleaseIterator,@function
hashTypeReleaseIterator:                # @hashTypeReleaseIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$2, 8(%rdi)
	jne	.LBB12_2
# %bb.1:
	movq	32(%rbx), %rdi
	callq	dictReleaseIterator
.LBB12_2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.Lfunc_end12:
	.size	hashTypeReleaseIterator, .Lfunc_end12-hashTypeReleaseIterator
                                        # -- End function
	.globl	hashTypeNext            # -- Begin function hashTypeNext
	.p2align	4, 0x90
	.type	hashTypeNext,@function
hashTypeNext:                           # @hashTypeNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	8(%rdi), %eax
	cmpl	$2, %eax
	je	.LBB13_5
# %bb.1:
	cmpl	$5, %eax
	jne	.LBB13_15
# %bb.2:
	movq	(%rbx), %rax
	movq	24(%rbx), %rsi
	movq	8(%rax), %r14
	cmpq	$0, 16(%rbx)
	je	.LBB13_7
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB13_16
# %bb.4:
	movq	%r14, %rdi
	callq	ziplistNext
	jmp	.LBB13_9
.LBB13_5:
	movq	32(%rbx), %rdi
	callq	dictNext
	movq	%rax, 40(%rbx)
	testq	%rax, %rax
	jne	.LBB13_12
	jmp	.LBB13_13
.LBB13_7:
	testq	%rsi, %rsi
	jne	.LBB13_18
# %bb.8:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
.LBB13_9:
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB13_13
# %bb.10:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	ziplistNext
	testq	%rax, %rax
	je	.LBB13_17
# %bb.11:
	movq	%r15, 16(%rbx)
	movq	%rax, 24(%rbx)
.LBB13_12:
	xorl	%eax, %eax
	jmp	.LBB13_14
.LBB13_13:
	movl	$-1, %eax
.LBB13_14:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_15:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$378, %esi              # imm = 0x17A
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB13_16:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$363, %edx              # imm = 0x16B
	jmp	.LBB13_19
.LBB13_17:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$370, %edx              # imm = 0x172
	jmp	.LBB13_19
.LBB13_18:
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$359, %edx              # imm = 0x167
.LBB13_19:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end13:
	.size	hashTypeNext, .Lfunc_end13-hashTypeNext
                                        # -- End function
	.globl	hashTypeCurrentFromZiplist # -- Begin function hashTypeCurrentFromZiplist
	.p2align	4, 0x90
	.type	hashTypeCurrentFromZiplist,@function
hashTypeCurrentFromZiplist:             # @hashTypeCurrentFromZiplist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$5, 8(%rdi)
	jne	.LBB14_1
# %bb.3:
	testb	$1, %sil
	jne	.LBB14_4
# %bb.6:
	movq	24(%rdi), %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	ziplistGet
	testl	%eax, %eax
	jne	.LBB14_8
# %bb.7:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$399, %edx              # imm = 0x18F
	jmp	.LBB14_2
.LBB14_4:
	movq	16(%rdi), %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	ziplistGet
	testl	%eax, %eax
	je	.LBB14_5
.LBB14_8:
	popq	%rbp
	retq
.LBB14_1:
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$392, %edx              # imm = 0x188
	jmp	.LBB14_2
.LBB14_5:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$396, %edx              # imm = 0x18C
.LBB14_2:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end14:
	.size	hashTypeCurrentFromZiplist, .Lfunc_end14-hashTypeCurrentFromZiplist
                                        # -- End function
	.globl	hashTypeCurrentFromHashTable # -- Begin function hashTypeCurrentFromHashTable
	.p2align	4, 0x90
	.type	hashTypeCurrentFromHashTable,@function
hashTypeCurrentFromHashTable:           # @hashTypeCurrentFromHashTable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$2, 8(%rdi)
	jne	.LBB15_2
# %bb.1:
	xorl	%eax, %eax
	testb	$1, %sil
	sete	%al
	movq	40(%rdi), %rcx
	movq	(%rcx,%rax,8), %rax
	popq	%rbp
	retq
.LBB15_2:
	movl	$.L.str.8, %edi
	movl	$.L.str.1, %esi
	movl	$407, %edx              # imm = 0x197
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end15:
	.size	hashTypeCurrentFromHashTable, .Lfunc_end15-hashTypeCurrentFromHashTable
                                        # -- End function
	.globl	hashTypeCurrentObject   # -- Begin function hashTypeCurrentObject
	.p2align	4, 0x90
	.type	hashTypeCurrentObject,@function
hashTypeCurrentObject:                  # @hashTypeCurrentObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	8(%rdi), %eax
	cmpl	$2, %eax
	je	.LBB16_3
# %bb.1:
	cmpl	$5, %eax
	jne	.LBB16_12
# %bb.2:
	movq	$0, (%rdx)
	popq	%rbp
	jmp	hashTypeCurrentFromZiplist # TAILCALL
.LBB16_3:
	xorl	%eax, %eax
	testb	$1, %sil
	sete	%al
	movq	40(%rdi), %rsi
	movq	(%rsi,%rax,8), %rsi
	movq	%rsi, (%rdx)
	movzbl	-1(%rsi), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB16_4
# %bb.5:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI16_0(,%rdx,8)
.LBB16_6:
	shrq	$3, %rax
	jmp	.LBB16_11
.LBB16_10:
	movq	-17(%rsi), %rax
	jmp	.LBB16_11
.LBB16_8:
	movzwl	-5(%rsi), %eax
	jmp	.LBB16_11
.LBB16_7:
	movzbl	-3(%rsi), %eax
	jmp	.LBB16_11
.LBB16_9:
	movl	-9(%rsi), %eax
	jmp	.LBB16_11
.LBB16_4:
	xorl	%eax, %eax
.LBB16_11:
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.LBB16_12:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$435, %esi              # imm = 0x1B3
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end16:
	.size	hashTypeCurrentObject, .Lfunc_end16-hashTypeCurrentObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI16_0:
	.quad	.LBB16_6
	.quad	.LBB16_7
	.quad	.LBB16_8
	.quad	.LBB16_9
	.quad	.LBB16_10
                                        # -- End function
	.text
	.globl	hashTypeCurrentObjectNewSds # -- Begin function hashTypeCurrentObjectNewSds
	.p2align	4, 0x90
	.type	hashTypeCurrentObjectNewSds,@function
hashTypeCurrentObjectNewSds:            # @hashTypeCurrentObjectNewSds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	leaq	-16(%rbp), %r8
	callq	hashTypeCurrentObject
	movq	-24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB17_2
# %bb.1:
	movl	-4(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB17_3
.LBB17_2:
	movq	-16(%rbp), %rdi
	callq	sdsfromlonglong
.LBB17_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	hashTypeCurrentObjectNewSds, .Lfunc_end17-hashTypeCurrentObjectNewSds
                                        # -- End function
	.globl	hashTypeLookupWriteOrCreate # -- Begin function hashTypeLookupWriteOrCreate
	.p2align	4, 0x90
	.type	hashTypeLookupWriteOrCreate,@function
hashTypeLookupWriteOrCreate:            # @hashTypeLookupWriteOrCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB18_1
# %bb.2:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$4, %eax
	je	.LBB18_4
# %bb.3:
	movq	shared+112(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	xorl	%ebx, %ebx
	jmp	.LBB18_4
.LBB18_1:
	callq	createHashObject
	movq	%rax, %rbx
	movq	16(%r14), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dbAdd
.LBB18_4:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	hashTypeLookupWriteOrCreate, .Lfunc_end18-hashTypeLookupWriteOrCreate
                                        # -- End function
	.globl	hashTypeConvertZiplist  # -- Begin function hashTypeConvertZiplist
	.p2align	4, 0x90
	.type	hashTypeConvertZiplist,@function
hashTypeConvertZiplist:                 # @hashTypeConvertZiplist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$80, %eax
	jne	.LBB19_23
# %bb.1:
	cmpl	$5, %esi
	je	.LBB19_22
# %bb.2:
	cmpl	$2, %esi
	jne	.LBB19_24
# %bb.3:
	movq	%rdi, %r14
	movl	$48, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movl	(%r14), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%rbx)
	andb	$15, %al
	cmpb	$2, %al
	movq	%r14, -56(%rbp)         # 8-byte Spill
	je	.LBB19_8
# %bb.4:
	cmpb	$5, %al
	jne	.LBB19_6
# %bb.5:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.LBB19_9
.LBB19_8:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 32(%rbx)
.LBB19_9:
	movl	$hashDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	-80(%rbp), %r12
	leaq	-44(%rbp), %r13
	leaq	-72(%rbp), %r14
	jmp	.LBB19_10
	.p2align	4, 0x90
.LBB19_16:                              #   in Loop: Header=BB19_10 Depth=1
	movq	-72(%rbp), %rdi
	callq	sdsfromlonglong
.LBB19_17:                              #   in Loop: Header=BB19_10 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB19_18
.LBB19_10:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	hashTypeNext
	cmpl	$-1, %eax
	je	.LBB19_19
# %bb.11:                               #   in Loop: Header=BB19_10 Depth=1
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	hashTypeCurrentObject
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.12:                               #   in Loop: Header=BB19_10 Depth=1
	movl	-44(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB19_14
	.p2align	4, 0x90
.LBB19_13:                              #   in Loop: Header=BB19_10 Depth=1
	movq	-72(%rbp), %rdi
	callq	sdsfromlonglong
.LBB19_14:                              #   in Loop: Header=BB19_10 Depth=1
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	hashTypeCurrentObject
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_16
# %bb.15:                               #   in Loop: Header=BB19_10 Depth=1
	movl	-44(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB19_17
.LBB19_19:
	cmpl	$2, 8(%rbx)
	jne	.LBB19_21
# %bb.20:
	movq	32(%rbx), %rdi
	callq	dictReleaseIterator
.LBB19_21:
	movq	%rbx, %rdi
	callq	zfree
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	8(%rbx), %rdi
	callq	zfree
	movl	$-241, %eax
	andl	(%rbx), %eax
	orl	$32, %eax
	movl	%eax, (%rbx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rbx)
.LBB19_22:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_18:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rbx
	movq	%rbx, %rdi
	callq	ziplistBlobLen
	movl	$.L.str.9, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	serverLogHexDump
	movl	$.L.str.1, %edi
	movl	$.L.str.10, %edx
	movl	$488, %esi              # imm = 0x1E8
.LBB19_7:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB19_24:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$496, %esi              # imm = 0x1F0
	jmp	.LBB19_7
.LBB19_23:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$466, %edx              # imm = 0x1D2
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB19_6:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$335, %esi              # imm = 0x14F
	jmp	.LBB19_7
.Lfunc_end19:
	.size	hashTypeConvertZiplist, .Lfunc_end19-hashTypeConvertZiplist
                                        # -- End function
	.globl	hsetnxCommand           # -- Begin function hsetnxCommand
	.p2align	4, 0x90
	.type	hsetnxCommand,@function
hsetnxCommand:                          # @hsetnxCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %r15
	movq	%r15, %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB20_4
# %bb.1:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$4, %eax
	je	.LBB20_5
# %bb.2:
	movq	shared+112(%rip), %rsi
	jmp	.LBB20_3
.LBB20_4:
	callq	createHashObject
	movq	%rax, %rbx
	movq	16(%r14), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	testq	%rbx, %rbx
	je	.LBB20_8
.LBB20_5:
	movq	72(%r14), %rsi
	movq	%rbx, %rdi
	movl	$2, %edx
	movl	$3, %ecx
	callq	hashTypeTryConversion
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	hashTypeExists
	testl	%eax, %eax
	je	.LBB20_7
# %bb.6:
	movq	shared+32(%rip), %rsi
.LBB20_3:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB20_7:
	movq	72(%r14), %rax
	movq	16(%rax), %rcx
	movq	24(%rax), %rax
	movq	8(%rcx), %rsi
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	hashTypeSet
	movq	shared+40(%rip), %rsi
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
	movl	$64, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
.LBB20_8:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	hsetnxCommand, .Lfunc_end20-hsetnxCommand
                                        # -- End function
	.globl	hsetCommand             # -- Begin function hsetCommand
	.p2align	4, 0x90
	.type	hsetCommand,@function
hsetCommand:                            # @hsetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	movl	64(%rdi), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	cmpl	$1, %eax
	jne	.LBB21_1
# %bb.14:
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyError           # TAILCALL
.LBB21_1:
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rbx
	movq	%rbx, %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB21_4
# %bb.2:
	movq	%rax, %r14
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$4, %eax
	je	.LBB21_5
# %bb.3:
	movq	shared+112(%rip), %rsi
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB21_4:
	callq	createHashObject
	movq	%rax, %r14
	movq	16(%r15), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	testq	%r14, %r14
	je	.LBB21_13
.LBB21_5:
	movq	72(%r15), %rsi
	movl	64(%r15), %ecx
	addl	$-1, %ecx
	movq	%r14, %rdi
	movl	$2, %edx
	callq	hashTypeTryConversion
	xorl	%r12d, %r12d
	cmpl	$3, 64(%r15)
	movq	72(%r15), %rax
	jl	.LBB21_9
# %bb.6:                                # %.preheader
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB21_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rbx,8), %rcx
	movq	8(%rax,%rbx,8), %rax
	movq	8(%rcx), %rsi
	movq	8(%rax), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	hashTypeSet
	cmpl	$1, %eax
	adcl	$0, %r12d
	addq	$2, %rbx
	movq	72(%r15), %rax
	cmpl	%ebx, 64(%r15)
	jg	.LBB21_7
# %bb.8:
	movl	%r12d, %r12d
.LBB21_9:
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movb	1(%rax), %al
	orb	$32, %al
	cmpb	$115, %al
	jne	.LBB21_11
# %bb.10:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	addReplyLongLong
	jmp	.LBB21_12
.LBB21_11:
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB21_12:
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r15), %rax
	movq	72(%r15), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.12, %esi
	movl	$64, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
.LBB21_13:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	hsetCommand, .Lfunc_end21-hsetCommand
                                        # -- End function
	.globl	hincrbyCommand          # -- Begin function hincrbyCommand
	.p2align	4, 0x90
	.type	hincrbyCommand,@function
hincrbyCommand:                         # @hincrbyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	24(%rax), %rsi
	leaq	-56(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB22_18
# %bb.1:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %r15
	movq	%r15, %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB22_4
# %bb.2:
	movq	%rax, %r14
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$4, %eax
	je	.LBB22_5
# %bb.3:
	movq	shared+112(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB22_18
.LBB22_4:
	callq	createHashObject
	movq	%rax, %r14
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	testq	%r14, %r14
	je	.LBB22_18
.LBB22_5:
	movq	72(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	%r14, %rdi
	callq	hashTypeGetValue
	testl	%eax, %eax
	je	.LBB22_6
# %bb.10:
	movq	$0, -32(%rbp)
.LBB22_11:
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdi
	subq	%rax, %rcx
	leaq	1(%rcx), %rdx
	cmpq	%rdx, %rdi
	jge	.LBB22_13
# %bb.12:
	movq	%rdi, %rdx
	andq	%rax, %rdx
	js	.LBB22_16
.LBB22_13:
	cmpq	%rcx, %rdi
	jle	.LBB22_17
# %bb.14:
	testq	%rax, %rax
	jle	.LBB22_17
# %bb.15:
	testq	%rdi, %rdi
	jle	.LBB22_17
.LBB22_16:
	movl	$.L.str.15, %esi
.LBB22_9:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB22_18
.LBB22_6:
	movq	-48(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_11
# %bb.7:
	movl	-36(%rbp), %esi
	leaq	-32(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	jne	.LBB22_11
# %bb.8:
	movl	$.L.str.14, %esi
	jmp	.LBB22_9
.LBB22_17:
	addq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	callq	sdsfromlonglong
	movq	72(%rbx), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	movl	$2, %ecx
	callq	hashTypeSet
	movq	-32(%rbp), %rsi
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.16, %esi
	movl	$64, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
.LBB22_18:
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	hincrbyCommand, .Lfunc_end22-hincrbyCommand
                                        # -- End function
	.globl	hincrbyfloatCommand     # -- Begin function hincrbyfloatCommand
	.p2align	4, 0x90
	.type	hincrbyfloatCommand,@function
hincrbyfloatCommand:                    # @hincrbyfloatCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$5224, %rsp             # imm = 0x1468
	movq	%rdi, %r13
	movq	72(%rdi), %rax
	movq	24(%rax), %rsi
	leaq	-128(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongDoubleFromObjectOrReply
	testl	%eax, %eax
	je	.LBB23_1
.LBB23_18:
	addq	$5224, %rsp             # imm = 0x1468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_1:
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rbx
	movq	%rbx, %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB23_4
# %bb.2:
	movq	%rax, %r14
	movl	(%rax), %eax
	andl	$15, %eax
	cmpl	$4, %eax
	je	.LBB23_5
# %bb.3:
	movq	shared+112(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	jmp	.LBB23_18
.LBB23_4:
	callq	createHashObject
	movq	%rax, %r14
	movq	16(%r13), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	testq	%r14, %r14
	je	.LBB23_18
.LBB23_5:
	movq	72(%r13), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	%r14, %rdi
	callq	hashTypeGetValue
	testl	%eax, %eax
	je	.LBB23_6
# %bb.12:
	fldz
.LBB23_13:
	fld	%st(0)
	fstpt	-64(%rbp)
.LBB23_14:
	fldt	-128(%rbp)
	faddp	%st, %st(1)
	fld	%st(0)
	fstpt	-64(%rbp)
	fstpl	-80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB23_16
# %bb.15:
	fldt	-64(%rbp)
	fstpl	-72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	cmpl	$1, %eax
	jne	.LBB23_17
.LBB23_16:
	movl	$.L.str.18, %esi
.LBB23_10:
	movq	%r13, %rdi
	callq	addReplyError
	jmp	.LBB23_18
.LBB23_6:
	movq	-96(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB23_11
# %bb.7:
	movl	-44(%rbp), %esi
	leaq	-64(%rbp), %rdx
	callq	string2ld
	testl	%eax, %eax
	je	.LBB23_9
# %bb.8:
	fldt	-64(%rbp)
	jmp	.LBB23_14
.LBB23_17:
	fldt	-64(%rbp)
	fstpt	(%rsp)
	leaq	-5248(%rbp), %r15
	movl	$5120, %esi             # imm = 0x1400
	movq	%r15, %rdi
	movl	$1, %edx
	callq	ld2string
	movslq	%eax, %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	sdsnewlen
	movq	72(%r13), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	movl	$2, %ecx
	callq	hashTypeSet
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	addReplyBulkCBuffer
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r13), %rax
	movq	72(%r13), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.19, %esi
	movl	$64, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movl	$.L.str.20, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	createRawStringObject
	movq	%rax, %r14
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	rewriteClientCommandArgument
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	%r13, %rdi
	movl	$3, %esi
	movq	%r14, %rdx
	callq	rewriteClientCommandArgument
	movq	%r14, %rdi
	callq	decrRefCount
	jmp	.LBB23_18
.LBB23_11:
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	fildll	-88(%rbp)
	jmp	.LBB23_13
.LBB23_9:
	movl	$.L.str.17, %esi
	jmp	.LBB23_10
.Lfunc_end23:
	.size	hincrbyfloatCommand, .Lfunc_end23-hincrbyfloatCommand
                                        # -- End function
	.globl	hgetCommand             # -- Begin function hgetCommand
	.p2align	4, 0x90
	.type	hgetCommand,@function
hgetCommand:                            # @hgetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB24_2
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB24_3
.LBB24_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB24_3:
	movq	72(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addHashFieldToReply     # TAILCALL
.Lfunc_end24:
	.size	hgetCommand, .Lfunc_end24-hgetCommand
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function addHashFieldToReply
	.type	addHashFieldToReply,@function
addHashFieldToReply:                    # @addHashFieldToReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB25_22
# %bb.1:
	movl	(%rsi), %eax
	movl	%eax, %ecx
	shrb	$4, %cl
	cmpb	$2, %cl
	je	.LBB25_9
# %bb.2:
	cmpb	$5, %cl
	jne	.LBB25_21
# %bb.3:
	movq	$0, -32(%rbp)
	movl	$-1, -12(%rbp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rax
	leaq	-12(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	hashTypeGetFromZiplist
	testl	%eax, %eax
	js	.LBB25_4
# %bb.5:
	movq	-32(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB25_7
# %bb.6:
	movl	-12(%rbp), %edx
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB25_8
.LBB25_9:
	andl	$240, %eax
	cmpl	$32, %eax
	jne	.LBB25_23
# %bb.10:
	movq	8(%rsi), %rdi
	movq	%rdx, %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB25_22
# %bb.11:
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB25_22
# %bb.12:
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB25_13
# %bb.14:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI25_0(,%rax,8)
.LBB25_15:
	shrq	$3, %rdx
	jmp	.LBB25_20
.LBB25_22:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB25_4:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB25_8
.LBB25_7:
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
.LBB25_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB25_19:
	movq	-17(%rsi), %rdx
	jmp	.LBB25_20
.LBB25_17:
	movzwl	-5(%rsi), %edx
	jmp	.LBB25_20
.LBB25_16:
	movzbl	-3(%rsi), %edx
	jmp	.LBB25_20
.LBB25_18:
	movl	-9(%rsi), %edx
	jmp	.LBB25_20
.LBB25_13:
	xorl	%edx, %edx
.LBB25_20:
	movq	%rbx, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	jmp	addReplyBulkCBuffer     # TAILCALL
.LBB25_21:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$675, %esi              # imm = 0x2A3
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB25_23:
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$93, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end25:
	.size	addHashFieldToReply, .Lfunc_end25-addHashFieldToReply
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI25_0:
	.quad	.LBB25_15
	.quad	.LBB25_16
	.quad	.LBB25_17
	.quad	.LBB25_18
	.quad	.LBB25_19
                                        # -- End function
	.text
	.globl	hmgetCommand            # -- Begin function hmgetCommand
	.p2align	4, 0x90
	.type	hmgetCommand,@function
hmgetCommand:                           # @hmgetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB26_2
# %bb.1:
	movl	(%r14), %eax
	andl	$15, %eax
	cmpl	$4, %eax
	jne	.LBB26_6
.LBB26_2:
	movslq	64(%r15), %rsi
	addq	$-2, %rsi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	cmpl	$3, 64(%r15)
	jl	.LBB26_5
# %bb.3:                                # %.preheader
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB26_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addHashFieldToReply
	addq	$1, %rbx
	movslq	64(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB26_4
.LBB26_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_6:
	movq	shared+112(%rip), %rsi
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.Lfunc_end26:
	.size	hmgetCommand, .Lfunc_end26-hmgetCommand
                                        # -- End function
	.globl	hdelCommand             # -- Begin function hdelCommand
	.p2align	4, 0x90
	.type	hdelCommand,@function
hdelCommand:                            # @hdelCommand
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
	je	.LBB27_20
# %bb.1:
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB27_2
.LBB27_20:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_2:
	xorl	%r15d, %r15d
	cmpl	$3, 64(%r14)
	jl	.LBB27_19
# %bb.3:
	movl	$2, %ebx
	jmp	.LBB27_4
	.p2align	4, 0x90
.LBB27_9:                               #   in Loop: Header=BB27_4 Depth=1
	movq	8(%r12), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB27_10:                              #   in Loop: Header=BB27_4 Depth=1
	addl	$1, %r15d
	testq	%rax, %rax
	je	.LBB27_11
.LBB27_12:                              #   in Loop: Header=BB27_4 Depth=1
	addq	$1, %rbx
	movslq	64(%r14), %rax
	cmpq	%rax, %rbx
	jge	.LBB27_13
.LBB27_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdi
	callq	hashTypeDelete
	testl	%eax, %eax
	je	.LBB27_12
# %bb.5:                                #   in Loop: Header=BB27_4 Depth=1
	movzbl	(%r12), %eax
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB27_9
# %bb.6:                                #   in Loop: Header=BB27_4 Depth=1
	cmpb	$5, %al
	jne	.LBB27_8
# %bb.7:                                #   in Loop: Header=BB27_4 Depth=1
	movq	8(%r12), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	jmp	.LBB27_10
.LBB27_13:
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	je	.LBB27_15
.LBB27_16:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.21, %esi
	movl	$64, %edi
	callq	notifyKeyspaceEvent
	testl	%ebx, %ebx
	je	.LBB27_18
# %bb.17:
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.22, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
.LBB27_18:
	movslq	%r15d, %r15
	addq	%r15, server+2080(%rip)
	jmp	.LBB27_19
.LBB27_11:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movl	$1, %ebx
	testl	%r15d, %r15d
	jne	.LBB27_16
.LBB27_15:
	xorl	%r15d, %r15d
.LBB27_19:
	movq	%r14, %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.LBB27_8:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$319, %esi              # imm = 0x13F
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end27:
	.size	hdelCommand, .Lfunc_end27-hdelCommand
                                        # -- End function
	.globl	hlenCommand             # -- Begin function hlenCommand
	.p2align	4, 0x90
	.type	hlenCommand,@function
hlenCommand:                            # @hlenCommand
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
	je	.LBB28_8
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB28_2
.LBB28_8:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB28_2:
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB28_6
# %bb.3:
	cmpb	$5, %al
	jne	.LBB28_5
# %bb.4:
	movq	8(%rbx), %rdi
	callq	ziplistLen
	movl	%eax, %esi
	shrl	%esi
	jmp	.LBB28_7
.LBB28_6:
	movq	8(%rbx), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
.LBB28_7:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.LBB28_5:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$319, %esi              # imm = 0x13F
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end28:
	.size	hlenCommand, .Lfunc_end28-hlenCommand
                                        # -- End function
	.globl	hstrlenCommand          # -- Begin function hstrlenCommand
	.p2align	4, 0x90
	.type	hstrlenCommand,@function
hstrlenCommand:                         # @hstrlenCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB29_2
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB29_3
.LBB29_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB29_3:
	movq	72(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	hashTypeGetValueLength
	movq	%rbx, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.Lfunc_end29:
	.size	hstrlenCommand, .Lfunc_end29-hstrlenCommand
                                        # -- End function
	.globl	genericHgetallCommand   # -- Begin function genericHgetallCommand
	.p2align	4, 0x90
	.type	genericHgetallCommand,@function
genericHgetallCommand:                  # @genericHgetallCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r15d
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB30_23
# %bb.1:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB30_23
# %bb.2:
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB30_7
# %bb.3:
	cmpb	$5, %al
	jne	.LBB30_5
# %bb.4:
	movq	8(%rbx), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	jmp	.LBB30_8
.LBB30_7:
	movq	8(%rbx), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB30_8:
	movl	%r15d, %r14d
	andl	$1, %r14d
	andl	$2, %r15d
	movl	%r15d, %ecx
	shrl	%ecx
	addl	%r14d, %ecx
	imull	%ecx, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movslq	%eax, %rsi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movl	$48, %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	%rbx, (%rax)
	movl	(%rbx), %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	%ecx, 8(%r13)
	andb	$15, %al
	cmpb	$2, %al
	je	.LBB30_12
# %bb.9:
	cmpb	$5, %al
	jne	.LBB30_11
# %bb.10:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r13)
	jmp	.LBB30_13
.LBB30_12:
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, 32(%r13)
.LBB30_13:
	movq	%r13, %rdi
	callq	hashTypeNext
	xorl	%ebx, %ebx
	jmp	.LBB30_14
	.p2align	4, 0x90
.LBB30_19:                              #   in Loop: Header=BB30_14 Depth=1
	movq	%r13, %rdi
	callq	hashTypeNext
.LBB30_14:                              # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %eax
	je	.LBB30_20
# %bb.15:                               #   in Loop: Header=BB30_14 Depth=1
	testl	%r14d, %r14d
	je	.LBB30_17
# %bb.16:                               #   in Loop: Header=BB30_14 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	addHashIteratorCursorToReply
	addl	$1, %ebx
.LBB30_17:                              #   in Loop: Header=BB30_14 Depth=1
	testl	%r15d, %r15d
	je	.LBB30_19
# %bb.18:                               #   in Loop: Header=BB30_14 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$2, %edx
	callq	addHashIteratorCursorToReply
	addl	$1, %ebx
	jmp	.LBB30_19
.LBB30_20:
	cmpl	$2, 8(%r13)
	jne	.LBB30_22
# %bb.21:
	movq	32(%r13), %rdi
	callq	dictReleaseIterator
.LBB30_22:
	movq	%r13, %rdi
	callq	zfree
	cmpl	-48(%rbp), %ebx         # 4-byte Folded Reload
	jne	.LBB30_24
.LBB30_23:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_5:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$319, %esi              # imm = 0x13F
	jmp	.LBB30_6
.LBB30_11:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$335, %esi              # imm = 0x14F
.LBB30_6:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB30_24:
	movl	$.L.str.23, %edi
	movl	$.L.str.1, %esi
	movl	$798, %edx              # imm = 0x31E
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end30:
	.size	genericHgetallCommand, .Lfunc_end30-genericHgetallCommand
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function addHashIteratorCursorToReply
	.type	addHashIteratorCursorToReply,@function
addHashIteratorCursorToReply:           # @addHashIteratorCursorToReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movl	8(%rsi), %eax
	cmpl	$2, %eax
	je	.LBB31_6
# %bb.1:
	cmpl	$5, %eax
	jne	.LBB31_15
# %bb.2:
	movq	$0, -32(%rbp)
	movl	$-1, -12(%rbp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rax
	leaq	-12(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	%rsi, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	hashTypeCurrentFromZiplist
	movq	-32(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB31_4
# %bb.3:
	movl	-12(%rbp), %edx
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB31_5
.LBB31_6:
	xorl	%eax, %eax
	testb	$1, %dl
	sete	%al
	movq	40(%rsi), %rcx
	movq	(%rcx,%rax,8), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB31_7
# %bb.8:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI31_0(,%rax,8)
.LBB31_9:
	shrq	$3, %rdx
	jmp	.LBB31_14
.LBB31_4:
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
.LBB31_5:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB31_13:
	movq	-17(%rsi), %rdx
	jmp	.LBB31_14
.LBB31_11:
	movzwl	-5(%rsi), %edx
	jmp	.LBB31_14
.LBB31_10:
	movzbl	-3(%rsi), %edx
	jmp	.LBB31_14
.LBB31_12:
	movl	-9(%rsi), %edx
	jmp	.LBB31_14
.LBB31_7:
	xorl	%edx, %edx
.LBB31_14:
	movq	%rbx, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	jmp	addReplyBulkCBuffer     # TAILCALL
.LBB31_15:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$766, %esi              # imm = 0x2FE
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end31:
	.size	addHashIteratorCursorToReply, .Lfunc_end31-addHashIteratorCursorToReply
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI31_0:
	.quad	.LBB31_9
	.quad	.LBB31_10
	.quad	.LBB31_11
	.quad	.LBB31_12
	.quad	.LBB31_13
                                        # -- End function
	.text
	.globl	hkeysCommand            # -- Begin function hkeysCommand
	.p2align	4, 0x90
	.type	hkeysCommand,@function
hkeysCommand:                           # @hkeysCommand
# %bb.0:
	movl	$1, %esi
	jmp	genericHgetallCommand   # TAILCALL
.Lfunc_end32:
	.size	hkeysCommand, .Lfunc_end32-hkeysCommand
                                        # -- End function
	.globl	hvalsCommand            # -- Begin function hvalsCommand
	.p2align	4, 0x90
	.type	hvalsCommand,@function
hvalsCommand:                           # @hvalsCommand
# %bb.0:
	movl	$2, %esi
	jmp	genericHgetallCommand   # TAILCALL
.Lfunc_end33:
	.size	hvalsCommand, .Lfunc_end33-hvalsCommand
                                        # -- End function
	.globl	hgetallCommand          # -- Begin function hgetallCommand
	.p2align	4, 0x90
	.type	hgetallCommand,@function
hgetallCommand:                         # @hgetallCommand
# %bb.0:
	movl	$3, %esi
	jmp	genericHgetallCommand   # TAILCALL
.Lfunc_end34:
	.size	hgetallCommand, .Lfunc_end34-hgetallCommand
                                        # -- End function
	.globl	hexistsCommand          # -- Begin function hexistsCommand
	.p2align	4, 0x90
	.type	hexistsCommand,@function
hexistsCommand:                         # @hexistsCommand
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
	je	.LBB35_2
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	testl	%eax, %eax
	je	.LBB35_3
.LBB35_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB35_3:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	hashTypeExists
	testl	%eax, %eax
	movl	$shared+32, %eax
	movl	$shared+40, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rsi
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReply                # TAILCALL
.Lfunc_end35:
	.size	hexistsCommand, .Lfunc_end35-hexistsCommand
                                        # -- End function
	.globl	hscanCommand            # -- Begin function hscanCommand
	.p2align	4, 0x90
	.type	hscanCommand,@function
hscanCommand:                           # @hscanCommand
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
	je	.LBB36_4
# %bb.1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+360(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB36_4
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB36_4
# %bb.3:
	movq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	scanGenericCommand
.LBB36_4:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end36:
	.size	hscanCommand, .Lfunc_end36-hscanCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"o->encoding == OBJ_ENCODING_ZIPLIST"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_hash.c"
	.size	.L.str.1, 74

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"vptr != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ret"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"o->encoding == OBJ_ENCODING_HT"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown hash encoding"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"vptr == NULL"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"hi->encoding == OBJ_ENCODING_ZIPLIST"
	.size	.L.str.7, 37

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"hi->encoding == OBJ_ENCODING_HT"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ziplist with dup elements dump"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Ziplist corruption detected"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Not implemented"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"hset"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"wrong number of arguments for HMSET"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"hash value is not an integer"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"increment or decrement would overflow"
	.size	.L.str.15, 38

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hincrby"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"hash value is not a float"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"increment would produce NaN or Infinity"
	.size	.L.str.18, 40

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"hincrbyfloat"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"HSET"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"hdel"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"del"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"count == length"
	.size	.L.str.23, 16

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
