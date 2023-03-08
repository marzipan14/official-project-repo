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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$80, %eax
	jne	.LBB0_22
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edx
	jg	.LBB0_21
# %bb.2:
	movq	server+2808(%rip), %r9
	movslq	%edx, %rdx
	movslq	%ecx, %r10
	addq	$-1, %rdx
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-17(%r11), %rax
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rax
	ja	.LBB0_13
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%r10, %rdx
	jge	.LBB0_21
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rsi,%rdx,8), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB0_20
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	8(%rax), %r11
	movzbl	-1(%r11), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB0_19
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	shrq	$3, %rax
	jmp	.LBB0_12
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movzwl	-5(%r11), %eax
	jmp	.LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-9(%r11), %eax
	jmp	.LBB0_12
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movzbl	-3(%r11), %eax
	jmp	.LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_20
.LBB0_13:
	shrl	$4, %r8d
	andl	$15, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %r8d
	jne	.LBB0_14
# %bb.18:
	movl	$2, %esi
	callq	hashTypeConvertZiplist
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %edi
	cmpl	$2, %r8d
	jne	.LBB0_17
# %bb.15:
	movl	$.L.str.11, %edx
	movl	$504, %esi              # imm = 0x1F8
	jmp	.LBB0_16
.LBB0_17:
	movl	$.L.str.5, %edx
	movl	$506, %esi              # imm = 0x1FA
.LBB0_16:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end0:
	.size	hashTypeTryConversion, .Lfunc_end0-hashTypeTryConversion
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_11
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
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB1_1
# %bb.5:
	callq	hashTypeConvertZiplist
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB1_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %edi
	cmpl	$2, %eax
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
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$80, %eax
	jne	.LBB2_1
# %bb.3:
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	8(%rdi), %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_17
# %bb.4:
	movzbl	-1(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movq	-17(%rbx), %rdx
	jmp	.LBB2_12
.LBB2_9:
	movzwl	-5(%rbx), %edx
	jmp	.LBB2_12
.LBB2_10:
	movl	-9(%rbx), %edx
	jmp	.LBB2_12
.LBB2_8:
	movzbl	-3(%rbx), %edx
	jmp	.LBB2_12
.LBB2_5:
	xorl	%edx, %edx
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_17
# %bb.13:
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_14
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	ziplistGet
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB2_18
# %bb.16:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$80, %edx
	jmp	.LBB2_2
.LBB2_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB2_18:
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
.LBB2_1:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$65, %edx
	jmp	.LBB2_2
.LBB2_14:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$74, %edx
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB3_5
# %bb.1:
	movq	8(%rdi), %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_2
# %bb.3:
	movq	8(%rax), %rax
	jmp	.LBB3_4
.LBB3_2:
	xorl	%eax, %eax
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB4_3
# %bb.1:
	movq	$0, (%rbx)
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	hashTypeGetFromZiplist
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB4_8
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB4_19
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB4_20
# %bb.4:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB4_21
# %bb.5:
	movq	8(%rdi), %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_6
# %bb.9:
	movq	8(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB4_7
# %bb.10:
	movq	%rdx, (%rbx)
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
	andb	$7, %bl
	xorl	%eax, %eax
	cmpb	$4, %bl
	ja	.LBB4_11
# %bb.12:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI4_0(,%rsi,8)
.LBB4_13:
	shrq	$3, %rcx
	jmp	.LBB4_18
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_8:
	movl	$-1, %eax
	jmp	.LBB4_19
.LBB4_17:
	movq	-17(%rdx), %rcx
	jmp	.LBB4_18
.LBB4_15:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB4_18
.LBB4_14:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB4_18
.LBB4_16:
	movl	-9(%rdx), %ecx
	jmp	.LBB4_18
.LBB4_11:
	xorl	%ecx, %ecx
.LBB4_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_20:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$122, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB4_21:
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
	.quad	.LBB4_13
	.quad	.LBB4_14
	.quad	.LBB4_15
	.quad	.LBB4_16
	.quad	.LBB4_17
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB5_1
# %bb.2:
	movq	-24(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB6_3
# %bb.1:
	movq	$0, -24(%rbp)
	movl	$-1, -4(%rbp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	leaq	-16(%rbp), %r8
	callq	hashTypeGetFromZiplist
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_2
# %bb.10:
	cmpq	$0, -24(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_15
# %bb.11:
	movl	-4(%rbp), %eax
	jmp	.LBB6_16
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB6_24
# %bb.4:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB6_25
# %bb.5:
	movq	8(%rdi), %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_12
# %bb.6:
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB6_2
# %bb.7:
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB6_12
# %bb.8:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI6_0(,%rdx,8)
.LBB6_9:
	shrq	$3, %rax
	jmp	.LBB6_13
.LBB6_2:
	xorl	%eax, %eax
	jmp	.LBB6_18
.LBB6_12:
	xorl	%eax, %eax
.LBB6_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_17
.LBB6_15:
	movq	-16(%rbp), %rdi
	callq	sdigits10
.LBB6_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %eax
.LBB6_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB6_19:
	movq	-17(%rcx), %rax
	jmp	.LBB6_13
.LBB6_20:
	movzwl	-5(%rcx), %eax
	jmp	.LBB6_13
.LBB6_21:
	movzbl	-3(%rcx), %eax
	jmp	.LBB6_13
.LBB6_22:
	movl	-9(%rcx), %eax
	jmp	.LBB6_13
.LBB6_24:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$159, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB6_25:
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
	.quad	.LBB6_21
	.quad	.LBB6_20
	.quad	.LBB6_22
	.quad	.LBB6_19
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
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB7_3
# %bb.1:
	movq	$0, -24(%rbp)
	movl	$-1, -4(%rbp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	leaq	-16(%rbp), %r8
	callq	hashTypeGetFromZiplist
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_9
# %bb.2:
	movl	$1, %eax
	jmp	.LBB7_11
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB7_7
# %bb.4:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB7_12
# %bb.5:
	movq	8(%rdi), %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_6
# %bb.8:
	cmpq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jne	.LBB7_10
	jmp	.LBB7_9
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_9:
	xorl	%eax, %eax
.LBB7_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB7_7:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$176, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB7_12:
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
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB8_50
# %bb.1:
	movq	8(%r14), %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_21
# %bb.2:
	movzbl	-1(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB8_3
# %bb.4:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_5:
	shrq	$3, %rdx
	jmp	.LBB8_10
.LBB8_50:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB8_71
# %bb.51:
	movl	%r15d, %r13d
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_56
# %bb.52:
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r13b
	jne	.LBB8_53
# %bb.54:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	sdsdup
	jmp	.LBB8_55
.LBB8_56:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ebx
	testb	$1, %bl
	jne	.LBB8_57
# %bb.58:
	movq	%r12, %rdi
	callq	sdsdup
	movq	%r12, %r15
	movq	%rax, %r12
	jmp	.LBB8_59
.LBB8_53:
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB8_55:
	movq	%rax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %r15d
	movl	$1, %r13d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB8_63
.LBB8_57:
	xorl	%r15d, %r15d
.LBB8_59:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %bl
	jne	.LBB8_60
# %bb.61:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	sdsdup
	movq	%rax, %rdx
	jmp	.LBB8_62
.LBB8_60:
	xorl	%ebx, %ebx
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB8_62:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r12
	movl	%r13d, %r15d
	xorl	%r13d, %r13d
	jmp	.LBB8_63
.LBB8_9:
	movq	-17(%r12), %rdx
	jmp	.LBB8_10
.LBB8_7:
	movzwl	-5(%r12), %edx
	jmp	.LBB8_10
.LBB8_8:
	movl	-9(%r12), %edx
	jmp	.LBB8_10
.LBB8_6:
	movzbl	-3(%r12), %edx
	jmp	.LBB8_10
.LBB8_3:
	xorl	%edx, %edx
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_21
# %bb.11:
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_70
# %bb.12:
	leaq	-56(%rbp), %rsi
	movq	%r13, %rdi
	callq	ziplistDelete
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movzbl	-1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB8_13
# %bb.14:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI8_1(,%rdx,8)
.LBB8_15:
	shrq	$3, %rcx
	jmp	.LBB8_20
.LBB8_21:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB8_22
# %bb.23:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_2(,%rax,8)
.LBB8_24:
	shrq	$3, %rdx
	jmp	.LBB8_29
.LBB8_28:
	movq	-17(%r12), %rdx
	jmp	.LBB8_29
.LBB8_26:
	movzwl	-5(%r12), %edx
	jmp	.LBB8_29
.LBB8_27:
	movl	-9(%r12), %edx
	jmp	.LBB8_29
.LBB8_25:
	movzbl	-3(%r12), %edx
	jmp	.LBB8_29
.LBB8_22:
	xorl	%edx, %edx
.LBB8_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movzbl	-1(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	xorl	%r13d, %r13d
	cmpb	$4, %cl
	ja	.LBB8_30
# %bb.31:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_3(,%rcx,8)
.LBB8_32:
	shrq	$3, %rdx
	jmp	.LBB8_37
.LBB8_36:
	movq	-17(%rbx), %rdx
	jmp	.LBB8_37
.LBB8_34:
	movzwl	-5(%rbx), %edx
	jmp	.LBB8_37
.LBB8_35:
	movl	-9(%rbx), %edx
	jmp	.LBB8_37
.LBB8_33:
	movzbl	-3(%rbx), %edx
	jmp	.LBB8_37
.LBB8_30:
	xorl	%edx, %edx
.LBB8_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	jmp	.LBB8_38
.LBB8_19:
	movq	-17(%rbx), %rcx
	jmp	.LBB8_20
.LBB8_17:
	movzwl	-5(%rbx), %ecx
	jmp	.LBB8_20
.LBB8_18:
	movl	-9(%rbx), %ecx
	jmp	.LBB8_20
.LBB8_16:
	movzbl	-3(%rbx), %ecx
	jmp	.LBB8_20
.LBB8_13:
	xorl	%ecx, %ecx
.LBB8_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%rbx, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	ziplistInsert
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
.LBB8_38:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 8(%r14)
	movl	(%r14), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB8_40
# %bb.39:
	movq	%rax, %rdi
	callq	ziplistLen
	movl	%eax, %ecx
	shrl	%ecx
	jmp	.LBB8_42
.LBB8_40:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB8_46
# %bb.41:
	movq	72(%rax), %rcx
	addq	40(%rax), %rcx
.LBB8_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	server+2800(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB8_63
# %bb.43:
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB8_44
# %bb.49:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	hashTypeConvertZiplist
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	je	.LBB8_66
# %bb.64:
	testq	%r12, %r12
	je	.LBB8_66
# %bb.65:
	movq	%r12, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB8_66:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	je	.LBB8_69
# %bb.67:
	testq	%rbx, %rbx
	je	.LBB8_69
# %bb.68:
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB8_69:
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB8_47
.LBB8_46:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$319, %esi              # imm = 0x13F
	jmp	.LBB8_47
.LBB8_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %edi
	cmpl	$2, %eax
	jne	.LBB8_48
# %bb.45:
	movl	$.L.str.11, %edx
	movl	$504, %esi              # imm = 0x1F8
	jmp	.LBB8_47
.LBB8_70:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$215, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB8_48:
	movl	$.L.str.5, %edx
	movl	$506, %esi              # imm = 0x1FA
.LBB8_47:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end8:
	.size	hashTypeSet, .Lfunc_end8-hashTypeSet
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_5
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_8
	.quad	.LBB8_9
.LJTI8_1:
	.quad	.LBB8_15
	.quad	.LBB8_16
	.quad	.LBB8_17
	.quad	.LBB8_18
	.quad	.LBB8_19
.LJTI8_2:
	.quad	.LBB8_24
	.quad	.LBB8_25
	.quad	.LBB8_26
	.quad	.LBB8_27
	.quad	.LBB8_28
.LJTI8_3:
	.quad	.LBB8_32
	.quad	.LBB8_33
	.quad	.LBB8_34
	.quad	.LBB8_35
	.quad	.LBB8_36
                                        # -- End function
	.text
	.globl	hashTypeLength          # -- Begin function hashTypeLength
	.p2align	4, 0x90
	.type	hashTypeLength,@function
hashTypeLength:                         # @hashTypeLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB9_2
# %bb.1:
	movq	8(%rdi), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	jmp	.LBB9_4
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB9_5
# %bb.3:
	movq	8(%rdi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB9_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB9_5:
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
	movq	%rdi, %r14
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB10_12
# %bb.1:
	movq	8(%r14), %r12
	xorl	%ebx, %ebx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_16
# %bb.2:
	movzbl	-1(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	xorl	%ebx, %ebx
	cmpb	$4, %cl
	ja	.LBB10_3
# %bb.4:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_5:
	shrq	$3, %rdx
	jmp	.LBB10_10
.LBB10_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB10_18
# %bb.13:
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	callq	dictDelete
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_17
# %bb.14:
	movq	8(%r14), %rdi
	callq	htNeedsResize
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testl	%eax, %eax
	je	.LBB10_17
# %bb.15:
	movq	8(%r14), %rdi
	callq	dictResize
	jmp	.LBB10_16
.LBB10_9:
	movq	-17(%r15), %rdx
	jmp	.LBB10_10
.LBB10_7:
	movzwl	-5(%r15), %edx
	jmp	.LBB10_10
.LBB10_6:
	movzbl	-3(%r15), %edx
	jmp	.LBB10_10
.LBB10_8:
	movl	-9(%r15), %edx
	jmp	.LBB10_10
.LBB10_3:
	xorl	%edx, %edx
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%r15, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistFind
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_16
# %bb.11:
	leaq	-40(%rbp), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ziplistDelete
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	ziplistDelete
	movq	%rax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB10_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_18:
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
	.quad	.LBB10_5
	.quad	.LBB10_6
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_9
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
	andl	$15, %eax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB11_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.LBB11_4
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB11_5
# %bb.3:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 32(%rbx)
.LBB11_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB11_5:
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_2
# %bb.1:
	movq	32(%rbx), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB12_2:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB13_4
# %bb.1:
	movq	(%rbx), %rax
	movq	24(%rbx), %rsi
	movq	8(%rax), %r14
	cmpq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_7
# %bb.2:
	testq	%rsi, %rsi
	je	.LBB13_17
# %bb.3:
	movq	%r14, %rdi
	callq	ziplistNext
	jmp	.LBB13_9
.LBB13_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB13_16
# %bb.5:
	movq	32(%rbx), %rdi
	callq	dictNext
	movq	%rax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB13_12
	jmp	.LBB13_14
.LBB13_7:
	testq	%rsi, %rsi
	jne	.LBB13_19
# %bb.8:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
.LBB13_9:
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_13
# %bb.10:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_18
# %bb.11:
	movq	%r15, 16(%rbx)
	movq	%rax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_12:
	xorl	%eax, %eax
	jmp	.LBB13_15
.LBB13_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_14:
	movl	$-1, %eax
.LBB13_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_16:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$378, %esi              # imm = 0x17A
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB13_17:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$363, %edx              # imm = 0x16B
	jmp	.LBB13_20
.LBB13_18:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$370, %edx              # imm = 0x172
	jmp	.LBB13_20
.LBB13_19:
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$359, %edx              # imm = 0x167
.LBB13_20:
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	jne	.LBB14_4
# %bb.6:
	movq	24(%rdi), %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_5
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_2
# %bb.1:
	xorl	%eax, %eax
	testb	$1, %sil
	sete	%al
	movq	40(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB16_2
# %bb.1:
	movq	$0, (%rdx)
	callq	hashTypeCurrentFromZiplist
	jmp	.LBB16_12
.LBB16_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB16_13
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testb	$1, %sil
	sete	%al
	movq	40(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, (%rdx)
	movzbl	-1(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
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
.LBB16_9:
	movl	-9(%rsi), %eax
	jmp	.LBB16_11
.LBB16_7:
	movzbl	-3(%rsi), %eax
	jmp	.LBB16_11
.LBB16_4:
	xorl	%eax, %eax
.LBB16_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rcx)
.LBB16_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB16_13:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_1
# %bb.2:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB18_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$80, %eax
	jne	.LBB19_24
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %esi
	je	.LBB19_23
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jne	.LBB19_25
# %bb.3:
	movq	%rdi, %r14
	movl	$48, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	movq	%r14, -56(%rbp)         # 8-byte Spill
	jne	.LBB19_5
# %bb.4:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.LBB19_7
.LBB19_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB19_11
# %bb.6:
	movq	8(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, 32(%rbx)
.LBB19_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$hashDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	hashTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB19_20
# %bb.8:
	leaq	-80(%rbp), %r12
	leaq	-44(%rbp), %r13
	leaq	-72(%rbp), %r14
	.p2align	4, 0x90
.LBB19_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	hashTypeCurrentObject
	movq	-80(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.10:                               #   in Loop: Header=BB19_9 Depth=1
	movl	-44(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB19_14
	.p2align	4, 0x90
.LBB19_13:                              #   in Loop: Header=BB19_9 Depth=1
	movq	-72(%rbp), %rdi
	callq	sdsfromlonglong
.LBB19_14:                              #   in Loop: Header=BB19_9 Depth=1
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	hashTypeCurrentObject
	movq	-80(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_16
# %bb.15:                               #   in Loop: Header=BB19_9 Depth=1
	movl	-44(%rbp), %esi
	callq	sdsnewlen
	jmp	.LBB19_17
	.p2align	4, 0x90
.LBB19_16:                              #   in Loop: Header=BB19_9 Depth=1
	movq	-72(%rbp), %rdi
	callq	sdsfromlonglong
.LBB19_17:                              #   in Loop: Header=BB19_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_18
# %bb.19:                               #   in Loop: Header=BB19_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	hashTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB19_9
.LBB19_20:
	cmpl	$2, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_22
# %bb.21:
	movq	32(%rbx), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB19_22:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	8(%rbx), %rdi
	callq	zfree
	movl	$-241, %eax
	andl	(%rbx), %eax
	orl	$32, %eax
	movl	%eax, (%rbx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_23:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB19_12:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB19_24:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$466, %edx              # imm = 0x1D2
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB19_25:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$496, %esi              # imm = 0x1F0
	jmp	.LBB19_12
.LBB19_11:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$335, %esi              # imm = 0x14F
	jmp	.LBB19_12
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_4
# %bb.1:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB20_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_5
.LBB20_4:
	callq	createHashObject
	movq	%rax, %rbx
	movq	16(%r14), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB20_9
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB20_7
# %bb.6:
	movq	shared+32(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB20_8
.LBB20_3:
	movq	shared+112(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_8
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
	movl	$42, __A_VARIABLE(%rip)
.LBB20_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB21_2
# %bb.1:
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB21_16
.LBB21_2:
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rbx
	movq	%rbx, %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_6
# %bb.3:
	movq	%rax, %r14
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB21_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_7
.LBB21_6:
	callq	createHashObject
	movq	%rax, %r14
	movq	16(%r15), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB21_16
.LBB21_7:
	movq	72(%r15), %rsi
	movl	64(%r15), %ecx
	addl	$-1, %ecx
	movq	%r14, %rdi
	movl	$2, %edx
	callq	hashTypeTryConversion
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpl	$3, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r15), %rax
	jl	.LBB21_11
# %bb.8:                                # %.preheader
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB21_9:                               # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r15), %rax
	cmpl	%ebx, %ecx
	jg	.LBB21_9
# %bb.10:
	movl	%r12d, %r12d
.LBB21_11:
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movb	1(%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$115, %al
	je	.LBB21_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$83, %al
	jne	.LBB21_14
.LBB21_13:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	addReplyLongLong
	jmp	.LBB21_15
.LBB21_5:
	movq	shared+112(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_16
.LBB21_14:
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB21_15:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB21_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_1
.LBB22_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_1:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %r15
	movq	%r15, %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_5
# %bb.2:
	movq	%rax, %r14
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB22_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_6
.LBB22_5:
	callq	createHashObject
	movq	%rax, %r14
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB22_19
.LBB22_6:
	movq	72(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	%r14, %rdi
	callq	hashTypeGetValue
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_7
# %bb.11:
	movq	$0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_12:
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rdi
	jns	.LBB22_14
# %bb.13:
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	subq	%rax, %rcx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	jl	.LBB22_17
.LBB22_14:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB22_18
# %bb.15:
	testq	%rdi, %rdi
	jle	.LBB22_18
# %bb.16:
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	jle	.LBB22_18
.LBB22_17:
	movl	$.L.str.15, %esi
	jmp	.LBB22_10
.LBB22_4:
	movq	shared+112(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_19
.LBB22_18:
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
	jmp	.LBB22_19
.LBB22_7:
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB22_12
# %bb.8:
	movl	-36(%rbp), %esi
	leaq	-32(%rbp), %rdx
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB22_12
# %bb.9:
	movl	$.L.str.14, %esi
.LBB22_10:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB22_19
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_1
.LBB23_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_5
# %bb.2:
	movq	%rax, %r14
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB23_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_6
.LBB23_5:
	callq	createHashObject
	movq	%rax, %r14
	movq	16(%r13), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB23_19
.LBB23_6:
	movq	72(%r13), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	%r14, %rdi
	callq	hashTypeGetValue
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_7
# %bb.13:
	fldz
.LBB23_14:
	fld	%st(0)
	fstpt	-64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_15:
	fldt	-128(%rbp)
	faddp	%st, %st(1)
	fld	%st(0)
	fstpt	-64(%rbp)
	fstpl	-80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_17
# %bb.16:
	fldt	-64(%rbp)
	fstpl	-72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB23_18
.LBB23_17:
	movl	$.L.str.18, %esi
.LBB23_11:
	movq	%r13, %rdi
	callq	addReplyError
	jmp	.LBB23_19
.LBB23_4:
	movq	shared+112(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_19
.LBB23_7:
	movq	-96(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB23_12
# %bb.8:
	movl	-44(%rbp), %esi
	leaq	-64(%rbp), %rdx
	callq	string2ld
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_10
# %bb.9:
	fldt	-64(%rbp)
	jmp	.LBB23_15
.LBB23_18:
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
	jmp	.LBB23_19
.LBB23_12:
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	fildll	-88(%rbp)
	jmp	.LBB23_14
.LBB23_10:
	movl	$.L.str.17, %esi
	jmp	.LBB23_11
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_3
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB24_3
# %bb.2:
	movq	72(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addHashFieldToReply
.LBB24_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB25_1
# %bb.2:
	movl	(%rsi), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB25_8
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB25_4
# %bb.5:
	movq	-32(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB25_23
# %bb.6:
	movl	-12(%rbp), %edx
	jmp	.LBB25_7
.LBB25_1:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB25_25
.LBB25_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB25_22
# %bb.9:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB25_26
# %bb.10:
	movq	8(%rsi), %rdi
	movq	%rdx, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_11
# %bb.12:
	movq	8(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB25_4
# %bb.13:
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB25_14
# %bb.15:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI25_0(,%rax,8)
.LBB25_16:
	shrq	$3, %rdx
	jmp	.LBB25_21
.LBB25_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_4:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB25_24
.LBB25_23:
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	jmp	.LBB25_24
.LBB25_20:
	movq	-17(%rsi), %rdx
	jmp	.LBB25_21
.LBB25_18:
	movzwl	-5(%rsi), %edx
	jmp	.LBB25_21
.LBB25_14:
	xorl	%edx, %edx
	jmp	.LBB25_21
.LBB25_17:
	movzbl	-3(%rsi), %edx
	jmp	.LBB25_21
.LBB25_19:
	movl	-9(%rsi), %edx
.LBB25_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_7:
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
.LBB25_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB25_22:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$675, %esi              # imm = 0x2A3
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB25_26:
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
	.quad	.LBB25_16
	.quad	.LBB25_17
	.quad	.LBB25_18
	.quad	.LBB25_19
	.quad	.LBB25_20
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_3
# %bb.1:
	movl	(%r14), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB26_2
.LBB26_3:
	movslq	64(%r15), %rsi
	addq	$-2, %rsi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB26_6
# %bb.4:                                # %.preheader
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB26_5:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addHashFieldToReply
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB26_5
	jmp	.LBB26_6
.LBB26_2:
	movq	shared+112(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB26_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_20
# %bb.1:
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB27_20
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$3, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB27_18
# %bb.3:
	movl	$2, %ebx
	jmp	.LBB27_4
	.p2align	4, 0x90
.LBB27_6:                               #   in Loop: Header=BB27_4 Depth=1
	movq	8(%r12), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
.LBB27_9:                               #   in Loop: Header=BB27_4 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_10
.LBB27_11:                              #   in Loop: Header=BB27_4 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB27_12
.LBB27_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdi
	callq	hashTypeDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_11
# %bb.5:                                #   in Loop: Header=BB27_4 Depth=1
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB27_6
# %bb.7:                                #   in Loop: Header=BB27_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB27_21
# %bb.8:                                #   in Loop: Header=BB27_4 Depth=1
	movq	8(%r12), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB27_9
.LBB27_12:
	xorl	%ebx, %ebx
	jmp	.LBB27_13
.LBB27_10:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB27_13:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB27_14
# %bb.15:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB27_17
# %bb.16:
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.22, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB27_17:
	movslq	%r15d, %r15
	addq	%r15, server+2080(%rip)
.LBB27_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_19:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	addReplyLongLong
.LBB27_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_14:
	xorl	%r15d, %r15d
	jmp	.LBB27_19
.LBB27_21:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_7
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB28_7
# %bb.2:
	movl	(%rbx), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB28_4
# %bb.3:
	movq	8(%rbx), %rdi
	callq	ziplistLen
	movl	%eax, %esi
	shrl	%esi
	jmp	.LBB28_6
.LBB28_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB28_8
# %bb.5:
	movq	8(%rbx), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
.LBB28_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	addReplyLongLong
.LBB28_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB28_8:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_3
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB29_3
# %bb.2:
	movq	72(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	hashTypeGetValueLength
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
.LBB29_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
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
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+104(%rip), %rdx
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_26
# %bb.1:
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB30_26
# %bb.2:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	je	.LBB30_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB30_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	je	.LBB30_6
# %bb.5:
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB30_6:
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB30_8
# %bb.7:
	movq	8(%r12), %rdi
	callq	ziplistLen
                                        # kill: def $eax killed $eax def $rax
	shrl	%eax
	jmp	.LBB30_10
.LBB30_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB30_12
# %bb.9:
	movq	8(%r12), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB30_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imull	%eax, %ebx
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	movl	$48, %edi
	callq	zmalloc
	movq	%rax, %r13
	movq	%r12, (%rax)
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	%eax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB30_14
# %bb.11:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r13)
	jmp	.LBB30_16
.LBB30_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB30_27
# %bb.15:
	movq	8(%r12), %rdi
	callq	dictGetIterator
	movq	%rax, 32(%r13)
.LBB30_16:
	movl	%ebx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	hashTypeNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB30_17
	.p2align	4, 0x90
.LBB30_22:                              #   in Loop: Header=BB30_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	hashTypeNext
	movl	$42, __A_VARIABLE(%rip)
.LBB30_17:                              # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %eax
	je	.LBB30_23
# %bb.18:                               #   in Loop: Header=BB30_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	je	.LBB30_20
# %bb.19:                               #   in Loop: Header=BB30_17 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	addHashIteratorCursorToReply
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB30_20:                              #   in Loop: Header=BB30_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	je	.LBB30_22
# %bb.21:                               #   in Loop: Header=BB30_17 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	$2, %edx
	callq	addHashIteratorCursorToReply
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_22
.LBB30_23:
	cmpl	$2, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_25
# %bb.24:
	movq	32(%r13), %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB30_25:
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jne	.LBB30_28
.LBB30_26:
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
.LBB30_28:
	movl	$.L.str.23, %edi
	movl	$.L.str.1, %esi
	movl	$798, %edx              # imm = 0x31E
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB30_12:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$319, %esi              # imm = 0x13F
	jmp	.LBB30_13
.LBB30_27:
	movl	$.L.str.1, %edi
	movl	$.L.str.5, %edx
	movl	$335, %esi              # imm = 0x14F
.LBB30_13:
	xorl	%eax, %eax
	callq	_serverPanic
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB31_3
# %bb.1:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB31_14
# %bb.2:
	movl	-12(%rbp), %edx
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB31_15
.LBB31_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB31_13
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testb	$1, %dl
	sete	%al
	movq	40(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx,%rax,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB31_5
# %bb.6:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI31_0(,%rax,8)
.LBB31_7:
	shrq	$3, %rdx
	jmp	.LBB31_12
.LBB31_14:
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
.LBB31_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_16
.LBB31_11:
	movq	-17(%rsi), %rdx
	jmp	.LBB31_12
.LBB31_9:
	movzwl	-5(%rsi), %edx
	jmp	.LBB31_12
.LBB31_10:
	movl	-9(%rsi), %edx
	jmp	.LBB31_12
.LBB31_8:
	movzbl	-3(%rsi), %edx
	jmp	.LBB31_12
.LBB31_5:
	xorl	%edx, %edx
.LBB31_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
.LBB31_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB31_13:
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
	.quad	.LBB31_7
	.quad	.LBB31_8
	.quad	.LBB31_9
	.quad	.LBB31_10
	.quad	.LBB31_11
                                        # -- End function
	.text
	.globl	hkeysCommand            # -- Begin function hkeysCommand
	.p2align	4, 0x90
	.type	hkeysCommand,@function
hkeysCommand:                           # @hkeysCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	genericHgetallCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	hkeysCommand, .Lfunc_end32-hkeysCommand
                                        # -- End function
	.globl	hvalsCommand            # -- Begin function hvalsCommand
	.p2align	4, 0x90
	.type	hvalsCommand,@function
hvalsCommand:                           # @hvalsCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %esi
	callq	genericHgetallCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	hvalsCommand, .Lfunc_end33-hvalsCommand
                                        # -- End function
	.globl	hgetallCommand          # -- Begin function hgetallCommand
	.p2align	4, 0x90
	.type	hgetallCommand,@function
hgetallCommand:                         # @hgetallCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %esi
	callq	genericHgetallCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB35_3
# %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB35_3
# %bb.2:
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
	callq	addReply
.LBB35_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB36_4
# %bb.1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+360(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB36_4
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$4, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB36_4
# %bb.3:
	movq	-24(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	scanGenericCommand
.LBB36_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
