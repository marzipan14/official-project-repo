	.text
	.file	"ziplist.c"
	.globl	zipIntSize              # -- Begin function zipIntSize
	.p2align	4, 0x90
	.type	zipIntSize,@function
zipIntSize:                             # @zipIntSize
# %bb.0:
	movl	%edi, %ecx
	cmpb	$-33, %cl
	jle	.LBB0_1
# %bb.4:
	cmpb	$-32, %cl
	je	.LBB0_10
# %bb.5:
	cmpb	$-16, %cl
	je	.LBB0_9
# %bb.6:
	movl	$1, %eax
	cmpb	$-2, %cl
	jne	.LBB0_7
.LBB0_12:
	retq
.LBB0_1:
	cmpb	$-64, %cl
	je	.LBB0_11
# %bb.2:
	cmpb	$-48, %cl
	jne	.LBB0_7
# %bb.3:
	movl	$4, %eax
	retq
.LBB0_10:
	movl	$8, %eax
	retq
.LBB0_9:
	movl	$3, %eax
	retq
.LBB0_11:
	movl	$2, %eax
	retq
.LBB0_7:
	leal	15(%rcx), %edx
	xorl	%eax, %eax
	cmpb	$13, %dl
	jb	.LBB0_12
# %bb.8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end0:
	.size	zipIntSize, .Lfunc_end0-zipIntSize
                                        # -- End function
	.globl	zipStoreEntryEncoding   # -- Begin function zipStoreEntryEncoding
	.p2align	4, 0x90
	.type	zipStoreEntryEncoding,@function
zipStoreEntryEncoding:                  # @zipStoreEntryEncoding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpb	$-65, %sil
	ja	.LBB1_4
# %bb.1:
	cmpl	$63, %edx
	ja	.LBB1_8
# %bb.2:
	testq	%rdi, %rdi
	je	.LBB1_14
# %bb.3:
	movb	%dl, -13(%rbp)
	jmp	.LBB1_6
.LBB1_4:
	testq	%rdi, %rdi
	je	.LBB1_14
# %bb.5:
	movb	%sil, -13(%rbp)
.LBB1_6:
	movb	$1, %al
.LBB1_7:
	movzbl	%al, %ebx
	leaq	-13(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB1_17
.LBB1_14:
	movl	$1, %ebx
.LBB1_17:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB1_8:
	cmpl	$16383, %edx            # imm = 0x3FFF
	ja	.LBB1_12
# %bb.9:
	testq	%rdi, %rdi
	je	.LBB1_15
# %bb.10:
	movl	%edx, %eax
	shrl	$8, %eax
	andb	$63, %al
	orb	$64, %al
	movb	%al, -13(%rbp)
	movb	%dl, -12(%rbp)
	movb	$2, %al
	jmp	.LBB1_7
.LBB1_12:
	testq	%rdi, %rdi
	je	.LBB1_16
# %bb.13:
	movb	$-128, -13(%rbp)
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, -12(%rbp)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, -11(%rbp)
	movb	%dh, -10(%rbp)
	movb	%dl, -9(%rbp)
	movb	$5, %al
	jmp	.LBB1_7
.LBB1_15:
	movl	$2, %ebx
	jmp	.LBB1_17
.LBB1_16:
	movl	$5, %ebx
	jmp	.LBB1_17
.Lfunc_end1:
	.size	zipStoreEntryEncoding, .Lfunc_end1-zipStoreEntryEncoding
                                        # -- End function
	.globl	zipStorePrevEntryLengthLarge # -- Begin function zipStorePrevEntryLengthLarge
	.p2align	4, 0x90
	.type	zipStorePrevEntryLengthLarge,@function
zipStorePrevEntryLengthLarge:           # @zipStorePrevEntryLengthLarge
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%esi, -4(%rbp)
	testq	%rdi, %rdi
	je	.LBB2_2
# %bb.1:
	movb	$-2, (%rdi)
	addq	$1, %rdi
	leaq	-4(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
.LBB2_2:
	movl	$5, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zipStorePrevEntryLengthLarge, .Lfunc_end2-zipStorePrevEntryLengthLarge
                                        # -- End function
	.globl	zipStorePrevEntryLength # -- Begin function zipStorePrevEntryLength
	.p2align	4, 0x90
	.type	zipStorePrevEntryLength,@function
zipStorePrevEntryLength:                # @zipStorePrevEntryLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.2:
	cmpl	$253, %esi
	ja	.LBB3_4
# %bb.3:
	movb	%sil, (%rdi)
	movl	$1, %eax
	jmp	.LBB3_5
.LBB3_1:
	xorl	%eax, %eax
	cmpl	$253, %esi
	seta	%al
	leal	1(,%rax,4), %eax
	jmp	.LBB3_5
.LBB3_4:
	movl	%esi, -4(%rbp)
	movb	$-2, (%rdi)
	addq	$1, %rdi
	leaq	-4(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$5, %eax
.LBB3_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zipStorePrevEntryLength, .Lfunc_end3-zipStorePrevEntryLength
                                        # -- End function
	.globl	zipPrevLenByteDiff      # -- Begin function zipPrevLenByteDiff
	.p2align	4, 0x90
	.type	zipPrevLenByteDiff,@function
zipPrevLenByteDiff:                     # @zipPrevLenByteDiff
# %bb.0:
	xorl	%ecx, %ecx
	cmpb	$-3, (%rdi)
	seta	%cl
	shll	$2, %ecx
	xorl	%eax, %eax
	cmpl	$253, %esi
	seta	%al
	shll	$2, %eax
	subl	%ecx, %eax
	retq
.Lfunc_end4:
	.size	zipPrevLenByteDiff, .Lfunc_end4-zipPrevLenByteDiff
                                        # -- End function
	.globl	zipRawEntryLength       # -- Begin function zipRawEntryLength
	.p2align	4, 0x90
	.type	zipRawEntryLength,@function
zipRawEntryLength:                      # @zipRawEntryLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	cmpb	$-3, (%rdi)
	seta	%al
	leal	1(,%rax,4), %eax
	movzbl	(%rdi,%rax), %edx
	movl	%edx, %ecx
	andl	$-64, %ecx
	cmpl	$192, %edx
	cmovael	%edx, %ecx
	cmpl	$191, %ecx
	ja	.LBB5_8
# %bb.1:
	cmpb	$-128, %cl
	je	.LBB5_5
# %bb.2:
	cmpb	$64, %cl
	je	.LBB5_21
# %bb.3:
	testb	%cl, %cl
	jne	.LBB5_6
# %bb.4:
	andl	$63, %edx
	movl	$1, %esi
	jmp	.LBB5_22
.LBB5_8:
	movl	$1, %esi
	cmpb	$-33, %cl
	jle	.LBB5_9
# %bb.12:
	cmpb	$-32, %cl
	je	.LBB5_18
# %bb.13:
	cmpb	$-16, %cl
	je	.LBB5_17
# %bb.14:
	cmpb	$-2, %cl
	jne	.LBB5_19
# %bb.15:
	movl	$1, %edx
	jmp	.LBB5_22
.LBB5_9:
	cmpb	$-64, %cl
	je	.LBB5_16
# %bb.10:
	cmpb	$-48, %cl
	jne	.LBB5_19
# %bb.11:
	movl	$4, %edx
	jmp	.LBB5_22
.LBB5_21:
	andl	$63, %edx
	shll	$8, %edx
	movzbl	1(%rdi,%rax), %ecx
	orl	%ecx, %edx
	movl	$2, %esi
	jmp	.LBB5_22
.LBB5_5:
	movl	1(%rdi,%rax), %edx
	bswapl	%edx
	movl	$5, %esi
	jmp	.LBB5_22
.LBB5_18:
	movl	$8, %edx
	jmp	.LBB5_22
.LBB5_17:
	movl	$3, %edx
	jmp	.LBB5_22
.LBB5_16:
	movl	$2, %edx
	jmp	.LBB5_22
.LBB5_19:
	leal	15(%rcx), %edi
	xorl	%edx, %edx
	cmpb	$13, %dil
	jae	.LBB5_20
.LBB5_22:
	addl	%esi, %eax
	addl	%edx, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.LBB5_6:
	movl	$.L.str, %edi
	movl	$.L.str.2, %edx
	movl	$474, %esi              # imm = 0x1DA
.LBB5_7:
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB5_20:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
	jmp	.LBB5_7
.Lfunc_end5:
	.size	zipRawEntryLength, .Lfunc_end5-zipRawEntryLength
                                        # -- End function
	.globl	zipTryEncoding          # -- Begin function zipTryEncoding
	.p2align	4, 0x90
	.type	zipTryEncoding,@function
zipTryEncoding:                         # @zipTryEncoding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
                                        # kill: def $esi killed $esi def $rsi
	leal	-1(%rsi), %eax
	xorl	%ebx, %ebx
	cmpl	$30, %eax
	ja	.LBB6_9
# %bb.1:
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %esi
	leaq	-32(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB6_9
# %bb.2:
	movq	-32(%rbp), %rax
	cmpq	$12, %rax
	ja	.LBB6_4
# %bb.3:
	leal	-15(%rax), %ecx
	jmp	.LBB6_8
.LBB6_4:
	movsbq	%al, %rdx
	movb	$-2, %cl
	cmpq	%rax, %rdx
	je	.LBB6_8
# %bb.5:
	movswq	%ax, %rdx
	movb	$-64, %cl
	cmpq	%rax, %rdx
	je	.LBB6_8
# %bb.6:
	leaq	8388608(%rax), %rdx
	movb	$-16, %cl
	cmpq	$16777216, %rdx         # imm = 0x1000000
	jb	.LBB6_8
# %bb.7:
	movslq	%eax, %rcx
	cmpq	%rax, %rcx
	setne	%cl
	shlb	$4, %cl
	addb	$-48, %cl
.LBB6_8:
	movb	%cl, (%r14)
	movq	%rax, (%r15)
	movl	$1, %ebx
.LBB6_9:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	zipTryEncoding, .Lfunc_end6-zipTryEncoding
                                        # -- End function
	.globl	zipSaveInteger          # -- Begin function zipSaveInteger
	.p2align	4, 0x90
	.type	zipSaveInteger,@function
zipSaveInteger:                         # @zipSaveInteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	cmpb	$-33, %dl
	jle	.LBB7_1
# %bb.4:
	cmpb	$-32, %dl
	je	.LBB7_9
# %bb.5:
	cmpb	$-16, %dl
	je	.LBB7_8
# %bb.6:
	cmpb	$-2, %dl
	jne	.LBB7_10
# %bb.7:
	movb	%sil, (%rdi)
	jmp	.LBB7_14
.LBB7_1:
	cmpb	$-64, %dl
	je	.LBB7_12
# %bb.2:
	cmpb	$-48, %dl
	jne	.LBB7_10
# %bb.3:
	movl	%esi, -4(%rbp)
	leaq	-4(%rbp), %rsi
	movl	$4, %edx
	jmp	.LBB7_13
.LBB7_9:
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rsi
	movl	$8, %edx
	jmp	.LBB7_13
.LBB7_8:
	shll	$8, %esi
	movl	%esi, -4(%rbp)
	leaq	-3(%rbp), %rsi
	movl	$3, %edx
	jmp	.LBB7_13
.LBB7_12:
	movw	%si, -6(%rbp)
	leaq	-6(%rbp), %rsi
	movl	$2, %edx
.LBB7_13:
	callq	memcpy
.LBB7_14:
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB7_10:
	addb	$15, %dl
	cmpb	$13, %dl
	jb	.LBB7_14
# %bb.11:
	movl	$.L.str.3, %edi
	movl	$.L.str, %esi
	movl	$532, %edx              # imm = 0x214
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end7:
	.size	zipSaveInteger, .Lfunc_end7-zipSaveInteger
                                        # -- End function
	.globl	zipLoadInteger          # -- Begin function zipLoadInteger
	.p2align	4, 0x90
	.type	zipLoadInteger,@function
zipLoadInteger:                         # @zipLoadInteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rax
	cmpb	$-33, %sil
	jle	.LBB8_1
# %bb.4:
	cmpb	$-32, %sil
	je	.LBB8_9
# %bb.5:
	cmpb	$-16, %sil
	je	.LBB8_8
# %bb.6:
	cmpb	$-2, %sil
	jne	.LBB8_10
# %bb.7:
	movsbq	(%rax), %rax
	jmp	.LBB8_14
.LBB8_1:
	cmpb	$-64, %sil
	je	.LBB8_13
# %bb.2:
	cmpb	$-48, %sil
	jne	.LBB8_10
# %bb.3:
	leaq	-4(%rbp), %rdi
	movl	$4, %edx
	movq	%rax, %rsi
	callq	memcpy
	movslq	-4(%rbp), %rax
	jmp	.LBB8_14
.LBB8_9:
	leaq	-16(%rbp), %rdi
	movl	$8, %edx
	movq	%rax, %rsi
	callq	memcpy
	movq	-16(%rbp), %rax
	jmp	.LBB8_14
.LBB8_8:
	movl	$0, -4(%rbp)
	leaq	-3(%rbp), %rdi
	movl	$3, %edx
	movq	%rax, %rsi
	callq	memcpy
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	cltq
	jmp	.LBB8_14
.LBB8_13:
	leaq	-6(%rbp), %rdi
	movl	$2, %edx
	movq	%rax, %rsi
	callq	memcpy
	movswq	-6(%rbp), %rax
	jmp	.LBB8_14
.LBB8_10:
	leal	15(%rsi), %eax
	cmpb	$12, %al
	ja	.LBB8_12
# %bb.11:
	andb	$15, %sil
	movzbl	%sil, %eax
	addq	$-1, %rax
.LBB8_14:
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB8_12:
	movl	$.L.str.3, %edi
	movl	$.L.str, %esi
	movl	$563, %edx              # imm = 0x233
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end8:
	.size	zipLoadInteger, .Lfunc_end8-zipLoadInteger
                                        # -- End function
	.globl	zipEntry                # -- Begin function zipEntry
	.p2align	4, 0x90
	.type	zipEntry,@function
zipEntry:                               # @zipEntry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%eax, %eax
	cmpb	$-3, (%rdi)
	seta	%al
	leal	1(,%rax,4), %eax
	movl	%eax, (%rsi)
	ja	.LBB9_2
# %bb.1:
	movzbl	(%r14), %eax
	movl	%eax, 4(%rbx)
	movl	$1, %eax
	jmp	.LBB9_3
.LBB9_2:
	leaq	4(%rbx), %rdi
	leaq	1(%r14), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	(%rbx), %eax
.LBB9_3:
	movl	%eax, %eax
	movzbl	(%r14,%rax), %ecx
	movl	%ecx, %edx
	andb	$-64, %dl
	cmpb	$-64, %cl
	movzbl	%dl, %esi
	cmovael	%ecx, %esi
	movb	%sil, 20(%rbx)
	movzbl	%sil, %ecx
	cmpb	$-65, %cl
	ja	.LBB9_11
# %bb.4:
	cmpb	$-128, %sil
	je	.LBB9_8
# %bb.5:
	cmpb	$64, %sil
	je	.LBB9_24
# %bb.6:
	testb	%sil, %sil
	jne	.LBB9_9
# %bb.7:
	movl	$1, 8(%rbx)
	movzbl	(%r14,%rax), %edi
	andl	$63, %edi
	movl	$1, %edx
	jmp	.LBB9_25
.LBB9_11:
	movl	$1, 8(%rbx)
	movl	$1, %edx
	cmpb	$-33, %sil
	jle	.LBB9_12
# %bb.15:
	cmpb	$-32, %sil
	je	.LBB9_21
# %bb.16:
	cmpb	$-16, %sil
	je	.LBB9_20
# %bb.17:
	cmpb	$-2, %sil
	jne	.LBB9_22
# %bb.18:
	movl	$1, %edi
	jmp	.LBB9_25
.LBB9_12:
	cmpb	$-64, %sil
	je	.LBB9_19
# %bb.13:
	cmpb	$-48, %sil
	jne	.LBB9_22
# %bb.14:
	movl	$4, %edi
	jmp	.LBB9_25
.LBB9_24:
	movl	$2, 8(%rbx)
	movzbl	(%r14,%rax), %ecx
	andl	$63, %ecx
	shll	$8, %ecx
	movzbl	1(%r14,%rax), %edi
	orl	%ecx, %edi
	movl	$2, %edx
	jmp	.LBB9_25
.LBB9_8:
	movl	$5, 8(%rbx)
	movl	1(%r14,%rax), %edi
	bswapl	%edi
	movl	$5, %edx
	jmp	.LBB9_25
.LBB9_21:
	movl	$8, %edi
	jmp	.LBB9_25
.LBB9_20:
	movl	$3, %edi
	jmp	.LBB9_25
.LBB9_19:
	movl	$2, %edi
	jmp	.LBB9_25
.LBB9_22:
	addb	$15, %sil
	xorl	%edi, %edi
	cmpb	$13, %sil
	jae	.LBB9_23
.LBB9_25:
	movl	%edi, 12(%rbx)
	addl	%edx, %eax
	movl	%eax, 16(%rbx)
	movq	%r14, 24(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB9_9:
	movl	$.L.str, %edi
	movl	$.L.str.2, %edx
	movl	$572, %esi              # imm = 0x23C
.LBB9_10:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB9_23:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
	jmp	.LBB9_10
.Lfunc_end9:
	.size	zipEntry, .Lfunc_end9-zipEntry
                                        # -- End function
	.globl	ziplistNew              # -- Begin function ziplistNew
	.p2align	4, 0x90
	.type	ziplistNew,@function
ziplistNew:                             # @ziplistNew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$11, %edi
	callq	zmalloc
	movabsq	$42949672971, %rcx      # imm = 0xA0000000B
	movq	%rcx, (%rax)
	movw	$0, 8(%rax)
	movb	$-1, 10(%rax)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ziplistNew, .Lfunc_end10-ziplistNew
                                        # -- End function
	.globl	ziplistResize           # -- Begin function ziplistResize
	.p2align	4, 0x90
	.type	ziplistResize,@function
ziplistResize:                          # @ziplistResize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	movl	%esi, %esi
	callq	zrealloc
	movl	%ebx, (%rax)
	addl	$-1, %ebx
	movb	$-1, (%rax,%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ziplistResize, .Lfunc_end11-ziplistResize
                                        # -- End function
	.globl	__ziplistCascadeUpdate  # -- Begin function __ziplistCascadeUpdate
	.p2align	4, 0x90
	.type	__ziplistCascadeUpdate,@function
__ziplistCascadeUpdate:                 # @__ziplistCascadeUpdate
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
	cmpb	$-1, (%rsi)
	je	.LBB12_22
# %bb.1:
	movq	%rsi, %r13
	movl	(%rbx), %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB12_5
	.p2align	4, 0x90
.LBB12_2:                               #   in Loop: Header=BB12_5 Depth=1
	movl	%r14d, -44(%rbp)
	movb	$-2, (%r13)
	leaq	1(%r13), %rdi
	movl	$4, %edx
	leaq	-44(%rbp), %rsi
	callq	memcpy
.LBB12_3:                               #   in Loop: Header=BB12_5 Depth=1
	movzbl	(%r13), %r14d
.LBB12_4:                               #   in Loop: Header=BB12_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	cmpb	$-1, %r14b
	je	.LBB12_22
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	leaq	-128(%rbp), %rsi
	callq	zipEntry
	movl	-116(%rbp), %r14d
	addl	-112(%rbp), %r14d
	xorl	%ebx, %ebx
	cmpl	$253, %r14d
	seta	%r15b
	cmpb	$-1, (%r13,%r14)
	je	.LBB12_14
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	leaq	(%r14,%r13), %rdi
	movq	%rdi, %r12
	leaq	-96(%rbp), %rsi
	callq	zipEntry
	cmpl	%r14d, -92(%rbp)
	je	.LBB12_14
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=1
	movb	%r15b, %bl
	leal	1(,%rbx,4), %r15d
	movl	-96(%rbp), %eax
	cmpl	%eax, %r15d
	jbe	.LBB12_15
# %bb.8:                                #   in Loop: Header=BB12_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	subq	%rdi, %r13
	movq	%r15, %r12
	subq	%rax, %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	(%r12,%rax), %rbx
	movl	%ebx, %esi
	callq	zrealloc
	movl	%ebx, (%rax)
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	leal	-1(%rbx), %ecx
	movq	%rax, %rbx
	movb	$-1, (%rax,%rcx)
	addq	%rax, %r13
	addq	%r14, %r13
	movl	4(%rax), %eax
	leaq	(%rbx,%rax), %rcx
	cmpq	%r13, %rcx
	je	.LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_5 Depth=1
	addl	%eax, %r12d
	movl	%r12d, 4(%rbx)
.LBB12_10:                              #   in Loop: Header=BB12_5 Depth=1
	addq	%r13, %r15
	movl	-96(%rbp), %eax
	leaq	(%rax,%r13), %rsi
	notq	%rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	%rbx, %rdx
	subq	%r13, %rdx
	addq	%rax, %rdx
	movq	%r15, %rdi
	callq	memmove
	testq	%r13, %r13
	je	.LBB12_3
# %bb.11:                               #   in Loop: Header=BB12_5 Depth=1
	cmpl	$253, %r14d
	ja	.LBB12_2
# %bb.12:                               #   in Loop: Header=BB12_5 Depth=1
	movb	%r14b, (%r13)
	jmp	.LBB12_4
.LBB12_14:
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB12_22:
	movq	%rbx, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_15:
	cmpl	%eax, %r15d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jae	.LBB12_17
# %bb.16:
	movl	%r14d, -44(%rbp)
	testq	%r12, %r12
	jne	.LBB12_21
	jmp	.LBB12_22
.LBB12_17:
	testq	%r12, %r12
	je	.LBB12_22
# %bb.18:
	cmpl	$253, %r14d
	ja	.LBB12_20
# %bb.19:
	movb	%r14b, (%r12)
	jmp	.LBB12_22
.LBB12_20:
	movl	%r14d, -44(%rbp)
.LBB12_21:
	movb	$-2, (%r12)
	addq	$1, %r12
	leaq	-44(%rbp), %rsi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	memcpy
	jmp	.LBB12_22
.Lfunc_end12:
	.size	__ziplistCascadeUpdate, .Lfunc_end12-__ziplistCascadeUpdate
                                        # -- End function
	.globl	__ziplistDelete         # -- Begin function __ziplistDelete
	.p2align	4, 0x90
	.type	__ziplistDelete,@function
__ziplistDelete:                        # @__ziplistDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	leaq	-80(%rbp), %rsi
	movq	%r12, %rdi
	callq	zipEntry
	movb	(%r12), %al
	cmpb	$-1, %al
	sete	%cl
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	je	.LBB13_5
# %bb.1:
	cmpb	$-1, %al
	je	.LBB13_5
# %bb.2:                                # %.preheader
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rbx
	movq	%r12, %rdi
	callq	zipRawEntryLength
	movl	%eax, %eax
	addq	%rax, %r12
	addl	$1, %r13d
	movzbl	(%rbx,%rax), %eax
	cmpb	$-1, %al
	sete	%cl
	cmpl	%r15d, %r13d
	jae	.LBB13_5
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	cmpb	$-1, %al
	jne	.LBB13_3
.LBB13_5:
	movq	-56(%rbp), %r15
	movl	%r12d, %esi
	subl	%r15d, %esi
	je	.LBB13_20
# %bb.6:
	testb	%cl, %cl
	je	.LBB13_7
# %bb.14:
	subq	%r14, %r15
	movl	-76(%rbp), %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 4(%r14)
	movq	%r14, %rdi
	xorl	%r14d, %r14d
	jmp	.LBB13_15
.LBB13_7:
	movl	-76(%rbp), %ecx
	xorl	%edx, %edx
	cmpb	$-2, %al
	sete	%dl
	shll	$2, %edx
	xorl	%ebx, %ebx
	cmpl	$253, %ecx
	seta	%bl
	shll	$2, %ebx
	subl	%edx, %ebx
	movslq	%ebx, %rax
	subq	%rax, %r12
	je	.LBB13_11
# %bb.8:
	cmpl	$253, %ecx
	ja	.LBB13_10
# %bb.9:
	movb	%cl, (%r12)
	jmp	.LBB13_11
.LBB13_10:
	movl	%ecx, -112(%rbp)
	movb	$-2, (%r12)
	leaq	1(%r12), %rdi
	movl	%esi, %r15d
	leaq	-112(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	%r15d, %esi
.LBB13_11:
	movl	%esi, -44(%rbp)         # 4-byte Spill
	subl	%esi, 4(%r14)
	leaq	-112(%rbp), %rsi
	movq	%r12, %rdi
	callq	zipEntry
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	cmpb	$-1, (%r12,%rax)
	je	.LBB13_13
# %bb.12:
	addl	%ebx, 4(%r14)
.LBB13_13:
	movq	-56(%rbp), %rdi
	movl	(%r14), %eax
	movq	%r12, %rdx
	notq	%rdx
	addq	%r14, %rdx
	addq	%rax, %rdx
	movq	%r12, %rsi
	callq	memmove
	movq	-56(%rbp), %r15
	subq	%r14, %r15
	movq	%r14, %rdi
	movq	%rbx, %r14
	movl	-44(%rbp), %esi         # 4-byte Reload
.LBB13_15:
	movl	(%rdi), %ebx
	subl	%esi, %ebx
	leal	(%rbx,%r14), %r12d
	movq	%r12, %rsi
	callq	zrealloc
	movl	%r12d, (%rax)
	leal	(%rbx,%r14), %ecx
	addl	$-1, %ecx
	movb	$-1, (%rax,%rcx)
	movzwl	8(%rax), %ecx
	cmpw	$-1, %cx
	je	.LBB13_17
# %bb.16:
	subl	%r13d, %ecx
	movw	%cx, 8(%rax)
.LBB13_17:
	testl	%r14d, %r14d
	je	.LBB13_19
# %bb.18:
	movq	%rax, %rdi
	movq	%rax, %rsi
	addq	%r15, %rsi
	callq	__ziplistCascadeUpdate
.LBB13_19:
	movq	%rax, %r14
.LBB13_20:
	movq	%r14, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	__ziplistDelete, .Lfunc_end13-__ziplistDelete
                                        # -- End function
	.globl	__ziplistInsert         # -- Begin function __ziplistInsert
	.p2align	4, 0x90
	.type	__ziplistInsert,@function
__ziplistInsert:                        # @__ziplistInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	(%rdi), %r12d
	movl	$0, -52(%rbp)
	movzbl	(%rsi), %eax
	cmpl	$254, %eax
	je	.LBB14_57
# %bb.1:
	cmpb	$-1, %al
	jne	.LBB14_4
# %bb.2:
	movl	4(%r13), %edi
	cmpb	$-1, (%r13,%rdi)
	je	.LBB14_5
# %bb.3:
	addq	%r13, %rdi
	callq	zipRawEntryLength
.LBB14_4:
	movl	%eax, -52(%rbp)
	jmp	.LBB14_5
.LBB14_57:
	leaq	1(%rbx), %rsi
	leaq	-52(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
.LBB14_5:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leal	-1(%rcx), %eax
	movl	%ecx, %r15d
	cmpl	$30, %eax
	ja	.LBB14_14
# %bb.6:
	leaq	-136(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_14
# %bb.7:
	movq	-136(%rbp), %rcx
	cmpq	$13, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jae	.LBB14_8
# %bb.15:
	cmpb	$-18, %cl
	jle	.LBB14_16
# %bb.18:
	cmpb	$-17, %cl
	je	.LBB14_24
# %bb.19:
	cmpb	$-1, %cl
	je	.LBB14_23
# %bb.20:
	cmpb	$13, %cl
	je	.LBB14_9
	jmp	.LBB14_21
.LBB14_14:
	movl	$123456789, %eax        # imm = 0x75BCD15
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rax
.LBB14_25:
	movq	%r15, -144(%rbp)        # 8-byte Spill
	movq	%r14, -152(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	cmpl	$253, -52(%rbp)
	seta	%cl
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpl	$16383, %edi            # imm = 0x3FFF
	seta	%dl
	movl	%esi, -76(%rbp)         # 4-byte Spill
	cmpb	$-64, %sil
	leaq	2(%rdx,%rdx,2), %rdx
	movl	$1, %esi
	cmovaeq	%rsi, %rdx
	cmpl	$64, %edi
	cmovbq	%rsi, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rcx,4), %rsi
	addq	$1, %rsi
	movb	(%rbx), %cl
	xorl	%edi, %edi
	movl	$0, %eax
	cmpb	$-1, %cl
	je	.LBB14_27
# %bb.26:
	xorl	%edx, %edx
	cmpb	$-2, %cl
	sete	%dl
	shll	$2, %edx
	xorl	%eax, %eax
	cmpl	$253, %esi
	seta	%al
	shll	$2, %eax
	subl	%edx, %eax
.LBB14_27:
	cmpl	$-4, %eax
	sete	%cl
	cmpq	$4, %rsi
	setb	%r14b
	andb	%cl, %r14b
	cmovel	%eax, %edi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	subq	%r13, %rbx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	leal	(%r12,%rsi), %r15d
	movq	%r13, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	leal	(%r15,%rax), %r13d
	movq	%r13, %rsi
	callq	zrealloc
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	%r13d, (%rax)
	movq	%rax, %rdx
	leal	(%rcx,%r15), %eax
	addl	$-1, %eax
	movb	$-1, (%rdx,%rax)
	cmpb	$-1, (%rdx,%rbx)
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	leaq	(%rdx,%rbx), %r15
	movq	%rbx, -160(%rbp)        # 8-byte Spill
	je	.LBB14_35
# %bb.28:
	movslq	%ecx, %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	leaq	(%r15,%rcx), %r13
	movq	%r15, %rsi
	subq	%rax, %rsi
	notq	%rbx
	addq	%rbx, %r12
	addq	%rax, %r12
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	memmove
	testb	%r14b, %r14b
	je	.LBB14_31
# %bb.29:
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB14_30
.LBB14_35:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%ebx, 4(%rax)
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB14_36
.LBB14_31:
	movq	-88(%rbp), %rbx         # 8-byte Reload
	cmpl	$253, %ebx
	ja	.LBB14_30
# %bb.32:
	movb	%bl, (%r13)
	jmp	.LBB14_33
.LBB14_30:
	movl	%ebx, -136(%rbp)
	movb	$-2, (%r13)
	leaq	1(%r13), %rdi
	leaq	-136(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
.LBB14_33:
	movq	-64(%rbp), %rax         # 8-byte Reload
	addl	%ebx, 4(%rax)
	leaq	-136(%rbp), %rsi
	movq	%r13, %rdi
	callq	zipEntry
	movl	-124(%rbp), %eax
	movl	-120(%rbp), %ecx
	addq	%rbx, %rcx
	addq	%rcx, %rax
	cmpb	$-1, (%r15,%rax)
	movq	-96(%rbp), %rcx         # 8-byte Reload
	je	.LBB14_36
# %bb.34:
	movq	-64(%rbp), %rax         # 8-byte Reload
	addl	%ecx, 4(%rax)
.LBB14_36:
	testl	%ecx, %ecx
	je	.LBB14_37
# %bb.39:
	addq	%rbx, %r15
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ziplistCascadeUpdate
	movl	-52(%rbp), %edx
	movq	-160(%rbp), %r15        # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	%rax, %r15
	movl	-76(%rbp), %r14d        # 4-byte Reload
	je	.LBB14_40
# %bb.41:
	cmpl	$253, %edx
	ja	.LBB14_38
.LBB14_42:
	movb	%dl, (%r15)
	movl	$1, %eax
	jmp	.LBB14_43
.LBB14_37:
	movl	-52(%rbp), %edx
	cmpl	$254, %edx
	movl	-76(%rbp), %r14d        # 4-byte Reload
	jb	.LBB14_42
.LBB14_38:
	movl	%edx, -48(%rbp)
	movb	$-2, (%r15)
	leaq	1(%r15), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$5, %eax
	jmp	.LBB14_43
.LBB14_40:
	xorl	%ecx, %ecx
	cmpl	$253, %edx
	seta	%cl
	leaq	1(,%rcx,4), %rax
	xorl	%r15d, %r15d
.LBB14_43:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %r15
	cmpb	$-65, %r14b
	ja	.LBB14_49
# %bb.44:
	cmpl	$63, %ecx
	ja	.LBB14_46
# %bb.45:
	movb	%cl, -48(%rbp)
	jmp	.LBB14_50
.LBB14_49:
	movb	%r14b, -48(%rbp)
.LBB14_50:
	movl	$1, %ebx
.LBB14_51:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %r15
	cmpb	$-65, %r14b
	ja	.LBB14_53
# %bb.52:
	movq	%r15, %rdi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	jmp	.LBB14_54
.LBB14_53:
	movzbl	%r14b, %edx
	movq	%r15, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	zipSaveInteger
.LBB14_54:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzwl	8(%rax), %eax
	cmpw	$-1, %ax
	je	.LBB14_56
# %bb.55:
	addl	$1, %eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movw	%ax, 8(%rcx)
.LBB14_56:
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_46:
	cmpl	$16383, %ecx            # imm = 0x3FFF
	ja	.LBB14_48
# %bb.47:
	movl	%ecx, %eax
	shrl	$8, %eax
	andb	$63, %al
	orb	$64, %al
	movb	%al, -48(%rbp)
	movb	%cl, -47(%rbp)
	movl	$2, %ebx
	jmp	.LBB14_51
.LBB14_8:
	movsbq	%cl, %rax
	cmpq	%rcx, %rax
	jne	.LBB14_10
.LBB14_9:
	movl	$1, %eax
	movb	$-2, %sil
	jmp	.LBB14_25
.LBB14_48:
	movb	$-128, -48(%rbp)
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, -47(%rbp)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, -46(%rbp)
	movb	%ch, -45(%rbp)
	movb	%cl, -44(%rbp)
	movl	$5, %ebx
	jmp	.LBB14_51
.LBB14_10:
	movswq	%cx, %rax
	cmpq	%rcx, %rax
	je	.LBB14_22
# %bb.11:
	leaq	8388608(%rcx), %rax
	cmpq	$16777215, %rax         # imm = 0xFFFFFF
	ja	.LBB14_12
.LBB14_23:
	movl	$3, %eax
	movb	$-16, %sil
	jmp	.LBB14_25
.LBB14_16:
	cmpb	$-49, %cl
	je	.LBB14_22
# %bb.17:
	cmpb	$-33, %cl
	je	.LBB14_13
.LBB14_21:
	leal	-15(%rcx), %esi
	xorl	%eax, %eax
	jmp	.LBB14_25
.LBB14_22:
	movl	$2, %eax
	movb	$-64, %sil
	jmp	.LBB14_25
.LBB14_12:
	movslq	%ecx, %rax
	cmpq	%rcx, %rax
	jne	.LBB14_24
.LBB14_13:
	movl	$4, %eax
	movb	$-48, %sil
	jmp	.LBB14_25
.LBB14_24:
	movl	$8, %eax
	movb	$-32, %sil
	jmp	.LBB14_25
.Lfunc_end14:
	.size	__ziplistInsert, .Lfunc_end14-__ziplistInsert
                                        # -- End function
	.globl	ziplistMerge            # -- Begin function ziplistMerge
	.p2align	4, 0x90
	.type	ziplistMerge,@function
ziplistMerge:                           # @ziplistMerge
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	.LBB15_11
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB15_11
# %bb.2:
	movq	%rdi, %r15
	movq	(%rdi), %r13
	testq	%r13, %r13
	je	.LBB15_11
# %bb.3:
	movq	(%rsi), %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB15_11
# %bb.4:
	cmpq	%r14, %r13
	je	.LBB15_11
# %bb.5:
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	(%r13), %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	4(%r13), %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movzwl	8(%r13), %edx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	(%r14), %r12d
	movl	4(%r14), %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movzwl	8(%r14), %ebx
	cmpw	%bx, %dx
	movq	%r13, %rdi
	cmovbq	%r14, %rdi
	leaq	(%rcx,%r12), %rsi
	addq	$-11, %rsi
	movq	%rbx, %rax
	addq	%rdx, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbq	%rax, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	zrealloc
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	cmpw	%bx, -56(%rbp)          # 2-byte Folded Reload
	cmovbq	%r12, %rdx
	cmovbq	%rcx, %r12
	cmovbq	%r13, %r14
	movq	%rax, %rbx
	jae	.LBB15_6
# %bb.7:
	leaq	(%rax,%r12), %rdi
	addq	$-1, %rdi
	leaq	10(%rax), %rsi
	addq	$-10, %rdx
	callq	memmove
	addq	$-1, %r12
	movq	%rbx, %rdi
	jmp	.LBB15_8
.LBB15_6:
	leaq	(%rax,%rdx), %rdi
	addq	$-1, %rdi
	addq	$10, %r14
	addq	$-10, %r12
.LBB15_8:
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%eax, (%rbx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movw	%ax, 8(%rbx)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	addl	$-11, %eax
	movl	%eax, 4(%rbx)
	movq	%rbx, %rsi
	addq	-96(%rbp), %rsi         # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	__ziplistCascadeUpdate
	movq	%rax, %rbx
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpw	%ax, -56(%rbp)          # 2-byte Folded Reload
	movq	-104(%rbp), %r14        # 8-byte Reload
	jae	.LBB15_9
# %bb.10:
	movq	(%r15), %rdi
	callq	zfree
	movq	$0, (%r15)
	movq	%rbx, (%r14)
	jmp	.LBB15_11
.LBB15_9:
	movq	(%r14), %rdi
	callq	zfree
	movq	$0, (%r14)
	movq	%rbx, (%r15)
.LBB15_11:
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ziplistMerge, .Lfunc_end15-ziplistMerge
                                        # -- End function
	.globl	ziplistPush             # -- Begin function ziplistPush
	.p2align	4, 0x90
	.type	ziplistPush,@function
ziplistPush:                            # @ziplistPush
# %bb.0:
	movl	%ecx, %eax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	testl	%eax, %eax
	je	.LBB16_1
# %bb.2:
	movl	(%rdi), %eax
	leaq	(%rdi,%rax), %rsi
	addq	$-1, %rsi
	jmp	__ziplistInsert         # TAILCALL
.LBB16_1:
	leaq	10(%rdi), %rsi
	jmp	__ziplistInsert         # TAILCALL
.Lfunc_end16:
	.size	ziplistPush, .Lfunc_end16-ziplistPush
                                        # -- End function
	.globl	ziplistIndex            # -- Begin function ziplistIndex
	.p2align	4, 0x90
	.type	ziplistIndex,@function
ziplistIndex:                           # @ziplistIndex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%esi, %r12d
	movl	$0, -36(%rbp)
	testl	%esi, %esi
	js	.LBB17_1
# %bb.13:
	leaq	10(%rdi), %rbx
	cmpb	$-1, 10(%rdi)
	je	.LBB17_14
	.p2align	4, 0x90
.LBB17_15:                              # =>This Inner Loop Header: Depth=1
	testl	%r12d, %r12d
	je	.LBB17_16
# %bb.17:                               #   in Loop: Header=BB17_15 Depth=1
	addl	$-1, %r12d
	movq	%rbx, %rdi
	callq	zipRawEntryLength
	movl	%eax, %eax
	leaq	(%rbx,%rax), %r14
	cmpb	$-1, (%rbx,%rax)
	movq	%r14, %rbx
	jne	.LBB17_15
	jmp	.LBB17_18
.LBB17_1:
	notl	%r12d
	movl	4(%rdi), %eax
	leaq	(%rdi,%rax), %r14
	movzbl	(%rdi,%rax), %eax
	cmpl	$254, %eax
	je	.LBB17_4
# %bb.2:
	cmpb	$-1, %al
	je	.LBB17_18
# %bb.3:
	movl	%eax, -36(%rbp)
	testl	%eax, %eax
	jne	.LBB17_6
	jmp	.LBB17_18
.LBB17_14:
	movq	%rbx, %r14
	jmp	.LBB17_18
.LBB17_16:
	movl	$-1, %r12d
	movq	%rbx, %r14
	jmp	.LBB17_18
.LBB17_4:
	leaq	1(%r14), %rsi
	leaq	-36(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.LBB17_18
.LBB17_6:                               # %.preheader
	leaq	-36(%rbp), %r15
	jmp	.LBB17_7
	.p2align	4, 0x90
.LBB17_11:                              #   in Loop: Header=BB17_7 Depth=1
	leaq	1(%r14), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcpy
	movl	-36(%rbp), %eax
.LBB17_12:                              #   in Loop: Header=BB17_7 Depth=1
	testl	%eax, %eax
	je	.LBB17_18
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	subl	$1, %r12d
	jb	.LBB17_8
# %bb.9:                                #   in Loop: Header=BB17_7 Depth=1
	movl	%eax, %eax
	subq	%rax, %r14
	movzbl	(%r14), %eax
	cmpl	$253, %eax
	ja	.LBB17_11
# %bb.10:                               #   in Loop: Header=BB17_7 Depth=1
	movl	%eax, -36(%rbp)
	jmp	.LBB17_12
.LBB17_8:
	movl	$-1, %r12d
.LBB17_18:
	xorl	%eax, %eax
	cmpb	$-1, (%r14)
	cmoveq	%rax, %r14
	testl	%r12d, %r12d
	cmovgq	%rax, %r14
	movq	%r14, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ziplistIndex, .Lfunc_end17-ziplistIndex
                                        # -- End function
	.globl	ziplistNext             # -- Begin function ziplistNext
	.p2align	4, 0x90
	.type	ziplistNext,@function
ziplistNext:                            # @ziplistNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpb	$-1, (%rsi)
	je	.LBB18_1
# %bb.2:
	movq	%rsi, %rbx
	movq	%rsi, %rdi
	callq	zipRawEntryLength
	movl	%eax, %ecx
	leaq	(%rbx,%rcx), %rdx
	xorl	%eax, %eax
	cmpb	$-1, (%rbx,%rcx)
	cmovneq	%rdx, %rax
	jmp	.LBB18_3
.LBB18_1:
	xorl	%eax, %eax
.LBB18_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	ziplistNext, .Lfunc_end18-ziplistNext
                                        # -- End function
	.globl	ziplistPrev             # -- Begin function ziplistPrev
	.p2align	4, 0x90
	.type	ziplistPrev,@function
ziplistPrev:                            # @ziplistPrev
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$0, -12(%rbp)
	movzbl	(%rsi), %eax
	cmpl	$255, %eax
	je	.LBB19_1
# %bb.2:
	movq	%rsi, %rbx
	addq	$10, %rdi
	cmpq	%rsi, %rdi
	je	.LBB19_3
# %bb.4:
	cmpb	$-3, %al
	ja	.LBB19_6
# %bb.5:
	movl	%eax, -12(%rbp)
	jmp	.LBB19_7
.LBB19_1:
	movl	4(%rdi), %eax
	leaq	(%rdi,%rax), %rcx
	xorl	%ebx, %ebx
	cmpb	$-1, (%rdi,%rax)
	cmovneq	%rcx, %rbx
	jmp	.LBB19_9
.LBB19_3:
	xorl	%ebx, %ebx
	jmp	.LBB19_9
.LBB19_6:
	leaq	1(%rbx), %rsi
	leaq	-12(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-12(%rbp), %eax
.LBB19_7:
	testl	%eax, %eax
	je	.LBB19_10
# %bb.8:
	movl	%eax, %eax
	subq	%rax, %rbx
.LBB19_9:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB19_10:
	movl	$.L.str.4, %edi
	movl	$.L.str, %esi
	movl	$1025, %edx             # imm = 0x401
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end19:
	.size	ziplistPrev, .Lfunc_end19-ziplistPrev
                                        # -- End function
	.globl	ziplistGet              # -- Begin function ziplistGet
	.p2align	4, 0x90
	.type	ziplistGet,@function
ziplistGet:                             # @ziplistGet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	xorl	%r14d, %r14d
	testq	%rdi, %rdi
	je	.LBB20_9
# %bb.1:
	movq	%rdi, %rbx
	cmpb	$-1, (%rdi)
	je	.LBB20_9
# %bb.2:
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rsi, %r12
	testq	%rsi, %rsi
	je	.LBB20_4
# %bb.3:
	movq	$0, (%r12)
.LBB20_4:
	leaq	-72(%rbp), %rsi
	movq	%rbx, %rdi
	callq	zipEntry
	movb	-52(%rbp), %al
	movl	$1, %r14d
	cmpb	$-65, %al
	ja	.LBB20_7
# %bb.5:
	testq	%r12, %r12
	je	.LBB20_9
# %bb.6:
	movl	-60(%rbp), %eax
	movl	%eax, (%r13)
	movl	-56(%rbp), %eax
	addq	%rax, %rbx
	movq	%rbx, (%r12)
	jmp	.LBB20_9
.LBB20_7:
	testq	%r15, %r15
	je	.LBB20_9
# %bb.8:
	movl	-56(%rbp), %ecx
	addq	%rcx, %rbx
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	zipLoadInteger
	movq	%rax, (%r15)
.LBB20_9:
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ziplistGet, .Lfunc_end20-ziplistGet
                                        # -- End function
	.globl	ziplistInsert           # -- Begin function ziplistInsert
	.p2align	4, 0x90
	.type	ziplistInsert,@function
ziplistInsert:                          # @ziplistInsert
# %bb.0:
	jmp	__ziplistInsert         # TAILCALL
.Lfunc_end21:
	.size	ziplistInsert, .Lfunc_end21-ziplistInsert
                                        # -- End function
	.globl	ziplistDelete           # -- Begin function ziplistDelete
	.p2align	4, 0x90
	.type	ziplistDelete,@function
ziplistDelete:                          # @ziplistDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	(%rsi), %rsi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movl	$1, %edx
	callq	__ziplistDelete
	addq	%rax, %rbx
	movq	%rbx, (%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end22:
	.size	ziplistDelete, .Lfunc_end22-ziplistDelete
                                        # -- End function
	.globl	ziplistDeleteRange      # -- Begin function ziplistDeleteRange
	.p2align	4, 0x90
	.type	ziplistDeleteRange,@function
ziplistDeleteRange:                     # @ziplistDeleteRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rdi, %rbx
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB23_1
# %bb.2:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ziplistDelete         # TAILCALL
.LBB23_1:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	ziplistDeleteRange, .Lfunc_end23-ziplistDeleteRange
                                        # -- End function
	.globl	ziplistCompare          # -- Begin function ziplistCompare
	.p2align	4, 0x90
	.type	ziplistCompare,@function
ziplistCompare:                         # @ziplistCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	cmpb	$-1, (%rdi)
	je	.LBB24_7
# %bb.1:
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	-64(%rbp), %rsi
	callq	zipEntry
	cmpb	$-65, -44(%rbp)
	ja	.LBB24_4
# %bb.2:
	cmpl	%r15d, -52(%rbp)
	jne	.LBB24_7
# %bb.3:
	movl	-48(%rbp), %eax
	addq	%rax, %rbx
	movl	%r15d, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB24_8
.LBB24_4:
	leal	-1(%r15), %eax
	cmpl	$30, %eax
	ja	.LBB24_7
# %bb.5:
	movl	%r15d, %esi
	leaq	-32(%rbp), %rdx
	movq	%r14, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB24_7
# %bb.6:
	movq	-32(%rbp), %r14
	movl	-48(%rbp), %eax
	addq	%rax, %rbx
	movzbl	-44(%rbp), %esi
	movq	%rbx, %rdi
	callq	zipLoadInteger
	cmpq	%r14, %rax
	sete	%al
	jmp	.LBB24_8
.LBB24_7:
	xorl	%eax, %eax
.LBB24_8:
	movzbl	%al, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	ziplistCompare, .Lfunc_end24-ziplistCompare
                                        # -- End function
	.globl	ziplistFind             # -- Begin function ziplistFind
	.p2align	4, 0x90
	.type	ziplistFind,@function
ziplistFind:                            # @ziplistFind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%ecx, -44(%rbp)         # 4-byte Spill
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movl	%edx, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	leal	-1(%rdx), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB25_5
.LBB25_1:                               #   in Loop: Header=BB25_5 Depth=1
	andl	$63, %ebx
	shll	$8, %ebx
	movzbl	1(%r13), %eax
	orl	%eax, %ebx
	movl	$2, %eax
	.p2align	4, 0x90
.LBB25_2:                               #   in Loop: Header=BB25_5 Depth=1
	addq	%rax, %r13
	testl	%ecx, %ecx
	je	.LBB25_17
# %bb.3:                                #   in Loop: Header=BB25_5 Depth=1
	addl	$-1, %ecx
.LBB25_4:                               #   in Loop: Header=BB25_5 Depth=1
	movl	%ebx, %eax
	addq	%rax, %r13
	movq	%r13, %r15
.LBB25_5:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %edx
	cmpb	$-2, %dl
	je	.LBB25_7
# %bb.6:                                #   in Loop: Header=BB25_5 Depth=1
	movl	$1, %eax
	cmpb	$-1, %dl
	jne	.LBB25_8
	jmp	.LBB25_43
	.p2align	4, 0x90
.LBB25_7:                               #   in Loop: Header=BB25_5 Depth=1
	movl	$5, %eax
.LBB25_8:                               #   in Loop: Header=BB25_5 Depth=1
	leaq	(%r15,%rax), %r13
	movzbl	(%r15,%rax), %ebx
	movl	%ebx, %r12d
	andl	$-64, %r12d
	cmpl	$192, %ebx
	cmovael	%ebx, %r12d
	cmpl	$191, %r12d
	ja	.LBB25_13
# %bb.9:                                #   in Loop: Header=BB25_5 Depth=1
	cmpb	$-128, %r12b
	je	.LBB25_29
# %bb.10:                               #   in Loop: Header=BB25_5 Depth=1
	cmpb	$64, %r12b
	je	.LBB25_1
# %bb.11:                               #   in Loop: Header=BB25_5 Depth=1
	testb	%r12b, %r12b
	jne	.LBB25_45
# %bb.12:                               #   in Loop: Header=BB25_5 Depth=1
	andl	$63, %ebx
	movl	$1, %eax
	jmp	.LBB25_2
	.p2align	4, 0x90
.LBB25_13:                              #   in Loop: Header=BB25_5 Depth=1
	movl	$1, %eax
	cmpb	$-33, %r12b
	jle	.LBB25_20
# %bb.14:                               #   in Loop: Header=BB25_5 Depth=1
	cmpb	$-32, %r12b
	je	.LBB25_31
# %bb.15:                               #   in Loop: Header=BB25_5 Depth=1
	cmpb	$-16, %r12b
	je	.LBB25_32
# %bb.16:                               #   in Loop: Header=BB25_5 Depth=1
	movl	$1, %ebx
	cmpb	$-2, %r12b
	je	.LBB25_2
	jmp	.LBB25_34
	.p2align	4, 0x90
.LBB25_17:                              #   in Loop: Header=BB25_5 Depth=1
	cmpl	$191, %r12d
	ja	.LBB25_23
# %bb.18:                               #   in Loop: Header=BB25_5 Depth=1
	cmpl	-80(%rbp), %ebx         # 4-byte Folded Reload
	jne	.LBB25_30
# %bb.19:                               #   in Loop: Header=BB25_5 Depth=1
	movq	%r13, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	movl	-44(%rbp), %ecx         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB25_4
	jmp	.LBB25_44
	.p2align	4, 0x90
.LBB25_20:                              #   in Loop: Header=BB25_5 Depth=1
	cmpb	$-64, %r12b
	je	.LBB25_33
# %bb.21:                               #   in Loop: Header=BB25_5 Depth=1
	cmpb	$-48, %r12b
	jne	.LBB25_34
# %bb.22:                               #   in Loop: Header=BB25_5 Depth=1
	movl	$4, %ebx
	jmp	.LBB25_2
.LBB25_23:                              #   in Loop: Header=BB25_5 Depth=1
	cmpb	$-1, %r14b
	je	.LBB25_30
# %bb.24:                               #   in Loop: Header=BB25_5 Depth=1
	testb	%r14b, %r14b
	jne	.LBB25_42
# %bb.25:                               #   in Loop: Header=BB25_5 Depth=1
	cmpl	$30, -48(%rbp)          # 4-byte Folded Reload
	ja	.LBB25_36
# %bb.26:                               #   in Loop: Header=BB25_5 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-88(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB25_36
# %bb.27:                               #   in Loop: Header=BB25_5 Depth=1
	movq	-88(%rbp), %rcx
	cmpq	$12, %rcx
	ja	.LBB25_37
# %bb.28:                               #   in Loop: Header=BB25_5 Depth=1
	leal	-15(%rcx), %r14d
	jmp	.LBB25_41
.LBB25_29:                              #   in Loop: Header=BB25_5 Depth=1
	movl	1(%r13), %ebx
	bswapl	%ebx
	movl	$5, %eax
	jmp	.LBB25_2
.LBB25_30:                              #   in Loop: Header=BB25_5 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB25_4
.LBB25_31:                              #   in Loop: Header=BB25_5 Depth=1
	movl	$8, %ebx
	jmp	.LBB25_2
.LBB25_32:                              #   in Loop: Header=BB25_5 Depth=1
	movl	$3, %ebx
	jmp	.LBB25_2
.LBB25_33:                              #   in Loop: Header=BB25_5 Depth=1
	movl	$2, %ebx
	jmp	.LBB25_2
.LBB25_34:                              #   in Loop: Header=BB25_5 Depth=1
	leal	15(%r12), %edx
	xorl	%ebx, %ebx
	cmpb	$13, %dl
	jb	.LBB25_2
	jmp	.LBB25_47
.LBB25_36:                              #   in Loop: Header=BB25_5 Depth=1
	movb	$-1, %r14b
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB25_4
.LBB25_37:                              #   in Loop: Header=BB25_5 Depth=1
	movsbq	%cl, %rax
	movb	$-2, %r14b
	cmpq	%rcx, %rax
	je	.LBB25_41
# %bb.38:                               #   in Loop: Header=BB25_5 Depth=1
	movswq	%cx, %rax
	movb	$-64, %r14b
	cmpq	%rcx, %rax
	je	.LBB25_41
# %bb.39:                               #   in Loop: Header=BB25_5 Depth=1
	leaq	8388608(%rcx), %rax
	movb	$-16, %r14b
	cmpq	$16777216, %rax         # imm = 0x1000000
	jb	.LBB25_41
# %bb.40:                               #   in Loop: Header=BB25_5 Depth=1
	movslq	%ecx, %rax
	cmpq	%rcx, %rax
	setne	%r14b
	shlb	$4, %r14b
	addb	$-48, %r14b
.LBB25_41:                              #   in Loop: Header=BB25_5 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB25_42:                              #   in Loop: Header=BB25_5 Depth=1
	movzbl	%r12b, %esi
	movq	%r13, %rdi
	callq	zipLoadInteger
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpq	-56(%rbp), %rax         # 8-byte Folded Reload
	jne	.LBB25_4
	jmp	.LBB25_44
.LBB25_43:
	xorl	%r15d, %r15d
.LBB25_44:
	movq	%r15, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_45:
	movl	$.L.str, %edi
	movl	$.L.str.2, %edx
	movl	$1118, %esi             # imm = 0x45E
.LBB25_46:
	movl	%r12d, %ecx
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB25_47:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
	jmp	.LBB25_46
.Lfunc_end25:
	.size	ziplistFind, .Lfunc_end25-ziplistFind
                                        # -- End function
	.globl	ziplistLen              # -- Begin function ziplistLen
	.p2align	4, 0x90
	.type	ziplistLen,@function
ziplistLen:                             # @ziplistLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movzwl	8(%rdi), %r15d
	cmpl	$65535, %r15d           # imm = 0xFFFF
	jne	.LBB26_7
# %bb.1:
	movq	%rdi, %r14
	cmpb	$-1, 10(%rdi)
	je	.LBB26_2
# %bb.3:                                # %.preheader
	leaq	10(%r14), %rbx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB26_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	zipRawEntryLength
	movl	%eax, %eax
	addl	$1, %r15d
	cmpb	$-1, (%rbx,%rax)
	leaq	(%rbx,%rax), %rbx
	jne	.LBB26_4
# %bb.5:
	cmpl	$65534, %r15d           # imm = 0xFFFE
	jbe	.LBB26_6
	jmp	.LBB26_7
.LBB26_2:
	xorl	%r15d, %r15d
.LBB26_6:
	movw	%r15w, 8(%r14)
.LBB26_7:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	ziplistLen, .Lfunc_end26-ziplistLen
                                        # -- End function
	.globl	ziplistBlobLen          # -- Begin function ziplistBlobLen
	.p2align	4, 0x90
	.type	ziplistBlobLen,@function
ziplistBlobLen:                         # @ziplistBlobLen
# %bb.0:
	movl	(%rdi), %eax
	retq
.Lfunc_end27:
	.size	ziplistBlobLen, .Lfunc_end27-ziplistBlobLen
                                        # -- End function
	.globl	ziplistRepr             # -- Begin function ziplistRepr
	.p2align	4, 0x90
	.type	ziplistRepr,@function
ziplistRepr:                            # @ziplistRepr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r15
	movzwl	8(%rdi), %edx
	movl	(%rdi), %esi
	movl	4(%rdi), %ecx
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	cmpb	$-1, 10(%r15)
	je	.LBB28_15
# %bb.1:
	leaq	10(%r15), %r14
	xorl	%r12d, %r12d
	jmp	.LBB28_2
	.p2align	4, 0x90
.LBB28_13:                              #   in Loop: Header=BB28_2 Depth=1
	movzbl	%al, %esi
	movq	%r14, %rdi
	callq	zipLoadInteger
	movl	$.L.str.14, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf
.LBB28_14:                              #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-60(%rbp), %eax
	addl	$1, %r12d
	cmpb	$-1, (%r14,%rax)
	leaq	(%r14,%rax), %r14
	je	.LBB28_15
.LBB28_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_4 Depth 2
	movq	%r14, %rdi
	leaq	-72(%rbp), %rsi
	callq	zipEntry
	movq	%r14, %rcx
	subq	%r15, %rcx
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leal	(%rbx,%r9), %r8d
	movl	-72(%rbp), %r10d
	movl	-68(%rbp), %r11d
	subq	$8, %rsp
	movl	$.L.str.7, %edi
	movq	%r14, %rsi
	movl	%r12d, %edx
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	pushq	%rbx
	pushq	%r10
	pushq	%r11
	callq	printf
	addq	$32, %rsp
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-60(%rbp), %eax
	addl	-56(%rbp), %eax
	je	.LBB28_5
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB28_2 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB28_4:                               #   Parent Loop BB28_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rbx), %esi
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %rbx
	movl	-60(%rbp), %eax
	addl	-56(%rbp), %eax
	cmpq	%rax, %rbx
	jb	.LBB28_4
.LBB28_5:                               #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-56(%rbp), %eax
	addq	%rax, %r14
	movb	-52(%rbp), %al
	cmpb	$-64, %al
	jae	.LBB28_13
# %bb.6:                                #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-60(%rbp), %r13d
	cmpq	$41, %r13
	jb	.LBB28_10
# %bb.7:                                #   in Loop: Header=BB28_2 Depth=1
	callq	__getreent
	movq	16(%rax), %rcx
	movl	$40, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	fwrite
	testq	%rax, %rax
	jne	.LBB28_9
# %bb.8:                                #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.12, %edi
	callq	perror
.LBB28_9:                               #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB28_14
	.p2align	4, 0x90
.LBB28_10:                              #   in Loop: Header=BB28_2 Depth=1
	testl	%r13d, %r13d
	je	.LBB28_14
# %bb.11:                               #   in Loop: Header=BB28_2 Depth=1
	callq	__getreent
	movq	16(%rax), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	fwrite
	testq	%rax, %rax
	jne	.LBB28_14
# %bb.12:                               #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.12, %edi
	callq	perror
	jmp	.LBB28_14
.LBB28_15:
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	ziplistRepr, .Lfunc_end28-ziplistRepr
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ziplist.c"
	.size	.L.str, 75

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid integer encoding 0x%02X"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Invalid string encoding 0x%02X"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"NULL"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"prevlen > 0"
	.size	.L.str.4, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"{total bytes %d} {num entries %u}\n{tail offset %u}\n"
	.size	.L.str.6, 52

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"{\n\taddr 0x%08lx,\n\tindex %2d,\n\toffset %5ld,\n\thdr+entry len: %5u,\n\thdr len%2u,\n\tprevrawlen: %5u,\n\tprevrawlensize: %2u,\n\tpayload %5u\n"
	.size	.L.str.7, 131

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\tbytes: "
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%02x|"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\t[str]"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"fwrite"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"..."
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\t[int]%lld"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\n}\n"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"{end}\n\n"
	.size	.L.str.16, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
