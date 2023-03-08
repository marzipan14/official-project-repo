	.text
	.file	"ziplist.c"
	.globl	zipIntSize              # -- Begin function zipIntSize
	.p2align	4, 0x90
	.type	zipIntSize,@function
zipIntSize:                             # @zipIntSize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
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
	je	.LBB0_12
	jmp	.LBB0_7
.LBB0_1:
	cmpb	$-64, %cl
	je	.LBB0_11
# %bb.2:
	cmpb	$-48, %cl
	jne	.LBB0_7
# %bb.3:
	movl	$4, %eax
	jmp	.LBB0_12
.LBB0_10:
	movl	$8, %eax
	jmp	.LBB0_12
.LBB0_9:
	movl	$3, %eax
	jmp	.LBB0_12
.LBB0_11:
	movl	$2, %eax
	jmp	.LBB0_12
.LBB0_7:
	leal	15(%rcx), %edx
	xorl	%eax, %eax
	cmpb	$13, %dl
	jae	.LBB0_8
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB0_8:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	ja	.LBB5_9
# %bb.1:
	cmpb	$-128, %cl
	je	.LBB5_6
# %bb.2:
	cmpb	$64, %cl
	je	.LBB5_5
# %bb.3:
	testb	%cl, %cl
	jne	.LBB5_7
# %bb.4:
	andl	$63, %edx
	jmp	.LBB5_22
.LBB5_9:
	cmpb	$-33, %cl
	jle	.LBB5_10
# %bb.13:
	cmpb	$-32, %cl
	je	.LBB5_19
# %bb.14:
	cmpb	$-16, %cl
	je	.LBB5_18
# %bb.15:
	movl	$1, %edx
	cmpb	$-2, %cl
	je	.LBB5_21
	jmp	.LBB5_16
.LBB5_10:
	cmpb	$-64, %cl
	je	.LBB5_20
# %bb.11:
	cmpb	$-48, %cl
	jne	.LBB5_16
# %bb.12:
	movl	$4, %edx
	jmp	.LBB5_21
.LBB5_5:
	andl	$63, %edx
	shll	$8, %edx
	movzbl	1(%rdi,%rax), %ecx
	orl	%ecx, %edx
	movl	$2, %ecx
	jmp	.LBB5_23
.LBB5_6:
	movl	1(%rdi,%rax), %edx
	bswapl	%edx
	movl	$5, %ecx
	jmp	.LBB5_23
.LBB5_19:
	movl	$8, %edx
	jmp	.LBB5_21
.LBB5_18:
	movl	$3, %edx
	jmp	.LBB5_21
.LBB5_20:
	movl	$2, %edx
	jmp	.LBB5_21
.LBB5_16:
	leal	15(%rcx), %esi
	xorl	%edx, %edx
	cmpb	$13, %sil
	jae	.LBB5_17
.LBB5_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_22:
	movl	$1, %ecx
.LBB5_23:
	addl	%ecx, %eax
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.LBB5_7:
	movl	$.L.str, %edi
	movl	$.L.str.2, %edx
	movl	$474, %esi              # imm = 0x1DA
.LBB5_8:
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB5_17:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
	jmp	.LBB5_8
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movzbl	%dl, %edx
	cmovael	%ecx, %edx
	movb	%dl, 20(%rbx)
	movzbl	%dl, %ecx
	cmpb	$-65, %cl
	ja	.LBB9_12
# %bb.4:
	cmpb	$-128, %dl
	je	.LBB9_9
# %bb.5:
	cmpb	$64, %dl
	je	.LBB9_8
# %bb.6:
	testb	%dl, %dl
	jne	.LBB9_10
# %bb.7:
	movl	$1, 8(%rbx)
	movzbl	(%r14,%rax), %esi
	andl	$63, %esi
	jmp	.LBB9_25
.LBB9_12:
	movl	$1, 8(%rbx)
	cmpb	$-33, %dl
	jle	.LBB9_13
# %bb.16:
	cmpb	$-32, %dl
	je	.LBB9_22
# %bb.17:
	cmpb	$-16, %dl
	je	.LBB9_21
# %bb.18:
	movl	$1, %esi
	cmpb	$-2, %dl
	je	.LBB9_24
	jmp	.LBB9_19
.LBB9_13:
	cmpb	$-64, %dl
	je	.LBB9_23
# %bb.14:
	cmpb	$-48, %dl
	jne	.LBB9_19
# %bb.15:
	movl	$4, %esi
	jmp	.LBB9_24
.LBB9_8:
	movl	$2, 8(%rbx)
	movzbl	(%r14,%rax), %ecx
	andl	$63, %ecx
	shll	$8, %ecx
	movzbl	1(%r14,%rax), %esi
	orl	%ecx, %esi
	movl	$2, %ecx
	jmp	.LBB9_26
.LBB9_9:
	movl	$5, 8(%rbx)
	movl	1(%r14,%rax), %esi
	bswapl	%esi
	movl	$5, %ecx
	jmp	.LBB9_26
.LBB9_22:
	movl	$8, %esi
	jmp	.LBB9_24
.LBB9_21:
	movl	$3, %esi
	jmp	.LBB9_24
.LBB9_23:
	movl	$2, %esi
	jmp	.LBB9_24
.LBB9_19:
	addb	$15, %dl
	xorl	%esi, %esi
	cmpb	$13, %dl
	jae	.LBB9_20
.LBB9_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_25:
	movl	$1, %ecx
.LBB9_26:
	movl	%esi, 12(%rbx)
	addl	%ecx, %eax
	movl	%eax, 16(%rbx)
	movq	%r14, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB9_10:
	movl	$.L.str, %edi
	movl	$.L.str.2, %edx
	movl	$572, %esi              # imm = 0x23C
.LBB9_11:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB9_20:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
	jmp	.LBB9_11
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$104, %rsp
	cmpb	$-1, (%rsi)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	je	.LBB12_20
# %bb.1:
	movq	%rsi, %r15
	movl	(%rdi), %r13d
	jmp	.LBB12_2
	.p2align	4, 0x90
.LBB12_10:                              #   in Loop: Header=BB12_2 Depth=1
	movl	%r14d, -44(%rbp)
	movb	$-2, (%r15)
	leaq	1(%r15), %rdi
	movl	$4, %edx
	leaq	-44(%rbp), %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB12_11:                              #   in Loop: Header=BB12_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%r15)
	je	.LBB12_20
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	leaq	-136(%rbp), %rsi
	callq	zipEntry
	movl	-124(%rbp), %r14d
	addl	-120(%rbp), %r14d
	xorl	%ebx, %ebx
	cmpl	$253, %r14d
	seta	%r12b
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%r15,%r14)
	je	.LBB12_20
# %bb.3:                                #   in Loop: Header=BB12_2 Depth=1
	leaq	(%r15,%r14), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	leaq	-104(%rbp), %rsi
	callq	zipEntry
	cmpl	%r14d, -100(%rbp)
	je	.LBB12_20
# %bb.4:                                #   in Loop: Header=BB12_2 Depth=1
	movb	%r12b, %bl
	leal	1(,%rbx,4), %r12d
	movl	-104(%rbp), %eax
	cmpl	%eax, %r12d
	jbe	.LBB12_12
# %bb.5:                                #   in Loop: Header=BB12_2 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	subq	%rdi, %r15
	movq	%r12, -72(%rbp)         # 8-byte Spill
	subq	%rax, %r12
	leaq	(%r12,%r13), %rbx
	movl	%ebx, %esi
	callq	zrealloc
	movl	%ebx, (%rax)
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	leal	-1(%rbx), %ecx
	movb	$-1, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r15
	addq	%r14, %r15
	movl	4(%rax), %edx
	leaq	(%rax,%rdx), %rcx
	cmpq	%r15, %rcx
	je	.LBB12_7
# %bb.6:                                #   in Loop: Header=BB12_2 Depth=1
	addl	%edx, %r12d
	movl	%r12d, 4(%rax)
.LBB12_7:                               #   in Loop: Header=BB12_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	%r15, %rdi
	movl	-104(%rbp), %ecx
	leaq	(%r15,%rcx), %rsi
	notq	%rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	%rax, %r13
	subq	%r15, %r13
	addq	%rcx, %r13
	movq	%r13, %rdx
	callq	memmove
	testq	%r15, %r15
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB12_11
# %bb.8:                                #   in Loop: Header=BB12_2 Depth=1
	cmpl	$253, %r14d
	ja	.LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_2 Depth=1
	movb	%r14b, (%r15)
	jmp	.LBB12_11
.LBB12_12:
	cmpl	%eax, %r12d
	jae	.LBB12_15
# %bb.13:
	movl	%r14d, -44(%rbp)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB12_19
# %bb.14:
	movb	$-2, (%rdi)
	addq	$1, %rdi
	leaq	-44(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	jmp	.LBB12_19
.LBB12_15:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB12_19
# %bb.16:
	cmpl	$253, %r14d
	ja	.LBB12_18
# %bb.17:
	movb	%r14b, (%rdi)
	jmp	.LBB12_19
.LBB12_18:
	movl	%r14d, -44(%rbp)
	movb	$-2, (%rdi)
	addq	$1, %rdi
	leaq	-44(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB12_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_20:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB13_11:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$104, %rsp
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	(%rdi), %r15d
	movl	$0, -56(%rbp)
	movzbl	(%rsi), %eax
	cmpl	$254, %eax
	je	.LBB14_62
# %bb.1:
	cmpb	$-1, %al
	jne	.LBB14_4
# %bb.2:
	movl	4(%r12), %edi
	cmpb	$-1, (%r12,%rdi)
	je	.LBB14_5
# %bb.3:
	addq	%r12, %rdi
	callq	zipRawEntryLength
.LBB14_4:
	movl	%eax, -56(%rbp)
	jmp	.LBB14_5
.LBB14_62:
	leaq	1(%r13), %rsi
	leaq	-56(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
.LBB14_5:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	leal	-1(%rbx), %eax
	cmpl	$30, %eax
	ja	.LBB14_16
# %bb.6:
	movl	%ebx, %esi
	leaq	-128(%rbp), %rdx
	movq	%r14, %rdi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB14_16
# %bb.7:
	movq	-128(%rbp), %rcx
	cmpq	$13, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jae	.LBB14_8
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-18, %cl
	jle	.LBB14_18
# %bb.21:
	cmpb	$-17, %cl
	je	.LBB14_27
# %bb.22:
	cmpb	$-1, %cl
	je	.LBB14_15
# %bb.23:
	cmpb	$13, %cl
	je	.LBB14_24
	jmp	.LBB14_20
.LBB14_16:
	movl	$123456789, %eax        # imm = 0x75BCD15
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	movl	%ebx, %eax
	jmp	.LBB14_29
.LBB14_8:
	movsbq	%cl, %rax
	cmpq	%rcx, %rax
	jne	.LBB14_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_24:
	movl	$1, %eax
	movb	$-2, %sil
	jmp	.LBB14_28
.LBB14_10:
	movswq	%cx, %rax
	cmpq	%rcx, %rax
	jne	.LBB14_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_12
.LBB14_18:
	cmpb	$-49, %cl
	je	.LBB14_12
# %bb.19:
	cmpb	$-33, %cl
	je	.LBB14_26
.LBB14_20:
	leal	-15(%rcx), %esi
	xorl	%eax, %eax
	jmp	.LBB14_28
.LBB14_12:
	movl	$2, %eax
	movb	$-64, %sil
	jmp	.LBB14_28
.LBB14_13:
	leaq	8388608(%rcx), %rax
	cmpq	$16777215, %rax         # imm = 0xFFFFFF
	ja	.LBB14_25
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_15:
	movl	$3, %eax
	movb	$-16, %sil
	jmp	.LBB14_28
.LBB14_25:
	movslq	%ecx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB14_27
.LBB14_26:
	movl	$4, %eax
	movb	$-48, %sil
	jmp	.LBB14_28
.LBB14_27:
	movl	$8, %eax
	movb	$-32, %sil
.LBB14_28:
	movq	-64(%rbp), %rbx         # 8-byte Reload
.LBB14_29:
	movq	%r12, %rdi
	movq	%r14, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %eax
	xorl	%ecx, %ecx
	cmpl	$253, -56(%rbp)
	seta	%cl
	xorl	%edx, %edx
	cmpl	$16383, %ebx            # imm = 0x3FFF
	seta	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, -68(%rbp)         # 4-byte Spill
	cmpb	$-64, %sil
	leaq	2(%rdx,%rdx,2), %rdx
	movl	$1, %esi
	cmovaeq	%rsi, %rdx
	cmpl	$64, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%rsi, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rcx,4), %r12
	addq	$1, %r12
	movb	(%r13), %cl
	xorl	%esi, %esi
	movl	$0, %eax
	cmpb	$-1, %cl
	je	.LBB14_31
# %bb.30:
	xorl	%edx, %edx
	cmpb	$-2, %cl
	sete	%dl
	shll	$2, %edx
	xorl	%eax, %eax
	cmpl	$253, %r12d
	seta	%al
	shll	$2, %eax
	subl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_31:
	cmpl	$-4, %eax
	sete	%cl
	cmpq	$4, %r12
	setb	%dl
	andb	%cl, %dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
	cmovel	%eax, %esi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	subq	%rdi, %r13
	leal	(%r15,%r12), %r14d
	leal	(%r14,%rsi), %ebx
	movq	%rbx, %rsi
	callq	zrealloc
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movl	%ebx, (%rax)
	leal	(%rdx,%r14), %ecx
	addl	$-1, %ecx
	movb	$-1, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%rax,%r13)
	leaq	(%rax,%r13), %r14
	movq	%r13, -144(%rbp)        # 8-byte Spill
	je	.LBB14_40
# %bb.32:
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movslq	%edx, %rax
	leaq	(%r14,%r12), %rbx
	movq	%r14, %rsi
	subq	%rax, %rsi
	notq	%r13
	addq	%r13, %r15
	addq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memmove
	cmpb	$0, -49(%rbp)           # 1-byte Folded Reload
	movq	%r12, %r15
	je	.LBB14_34
# %bb.33:
	movl	%r12d, -128(%rbp)
	movb	$-2, (%rbx)
	leaq	1(%rbx), %rdi
	leaq	-128(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r13         # 8-byte Reload
	jmp	.LBB14_38
.LBB14_40:
	movl	%r13d, 4(%rax)
	movq	%rax, %r13
	movq	%r12, %r15
	jmp	.LBB14_41
.LBB14_34:
	cmpl	$253, %r12d
	movq	-80(%rbp), %r13         # 8-byte Reload
	ja	.LBB14_36
# %bb.35:
	movb	%r12b, (%rbx)
	jmp	.LBB14_37
.LBB14_36:
	movl	%r12d, -128(%rbp)
	movb	$-2, (%rbx)
	leaq	1(%rbx), %rdi
	leaq	-128(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movq	%r15, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB14_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_38:
	addl	%r12d, 4(%r13)
	leaq	-128(%rbp), %rsi
	movq	%rbx, %rdi
	callq	zipEntry
	movl	-116(%rbp), %eax
	movl	-112(%rbp), %ecx
	addq	%r15, %rcx
	addq	%rcx, %rax
	cmpb	$-1, (%r14,%rax)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	je	.LBB14_41
# %bb.39:
	addl	%edx, 4(%r13)
.LBB14_41:
	testl	%edx, %edx
	je	.LBB14_42
# %bb.44:
	addq	%r15, %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ziplistCascadeUpdate
	movq	%rax, %r13
	movl	-56(%rbp), %eax
	movq	-144(%rbp), %r14        # 8-byte Reload
	addq	%r13, %r14
	movl	-68(%rbp), %r15d        # 4-byte Reload
	je	.LBB14_45
# %bb.46:
	cmpl	$253, %eax
	ja	.LBB14_43
.LBB14_47:
	movb	%al, (%r14)
	movl	$1, %eax
	jmp	.LBB14_48
.LBB14_42:
	movl	-56(%rbp), %eax
	cmpl	$254, %eax
	movl	-68(%rbp), %r15d        # 4-byte Reload
	jb	.LBB14_47
.LBB14_43:
	movl	%eax, -48(%rbp)
	movb	$-2, (%r14)
	leaq	1(%r14), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	jmp	.LBB14_48
.LBB14_45:
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	leaq	1(,%rcx,4), %rax
	xorl	%r14d, %r14d
.LBB14_48:
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-65, %r15b
	ja	.LBB14_54
# %bb.49:
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$63, %eax
	ja	.LBB14_51
# %bb.50:
	movb	%al, -48(%rbp)
	jmp	.LBB14_55
.LBB14_54:
	movb	%r15b, -48(%rbp)
.LBB14_55:
	movl	$1, %ebx
.LBB14_56:
	leaq	-48(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-65, %r15b
	ja	.LBB14_58
# %bb.57:
	movl	-64(%rbp), %edx         # 4-byte Reload
	movq	%r14, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	jmp	.LBB14_59
.LBB14_58:
	movzbl	%r15b, %edx
	movq	%r14, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	zipSaveInteger
.LBB14_59:
	movzwl	8(%r13), %eax
	cmpw	$-1, %ax
	je	.LBB14_61
# %bb.60:
	addl	$1, %eax
	movw	%ax, 8(%r13)
.LBB14_61:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_51:
	cmpl	$16383, %eax            # imm = 0x3FFF
	ja	.LBB14_53
# %bb.52:
	movq	%rax, %rcx
	shrl	$8, %eax
	andb	$63, %al
	orb	$64, %al
	movb	%al, -48(%rbp)
	movb	%cl, -47(%rbp)
	movl	$2, %ebx
	jmp	.LBB14_56
.LBB14_53:
	movb	$-128, -48(%rbp)
	movq	%rax, %rcx
	shrl	$24, %eax
	movb	%al, -47(%rbp)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, -46(%rbp)
	movb	%ch, -45(%rbp)
	movb	%cl, -44(%rbp)
	movl	$5, %ebx
	jmp	.LBB14_56
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
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%ecx, %eax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	testl	%eax, %eax
	je	.LBB16_1
# %bb.2:
	movl	(%rdi), %eax
	leaq	(%rdi,%rax), %rsi
	addq	$-1, %rsi
	jmp	.LBB16_3
.LBB16_1:
	leaq	10(%rdi), %rsi
.LBB16_3:
	callq	__ziplistInsert
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__ziplistInsert
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	je	.LBB23_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	%r14d, %edx
	callq	__ziplistDelete
	movq	%rax, %rbx
.LBB23_2:
	movl	$42, __A_VARIABLE(%rip)
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
	je	.LBB24_8
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
	jne	.LBB24_8
# %bb.3:
	movl	-48(%rbp), %eax
	addq	%rax, %rbx
	movl	%r15d, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB24_9
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	addq	%rax, %rbx
	movzbl	-44(%rbp), %esi
	movq	%rbx, %rdi
	callq	zipLoadInteger
	cmpq	%r14, %rax
	sete	%al
	jmp	.LBB24_9
.LBB24_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_8:
	xorl	%eax, %eax
.LBB24_9:
	movzbl	%al, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB25_3
	.p2align	4, 0x90
.LBB25_1:                               #   in Loop: Header=BB25_3 Depth=1
	addl	$-1, %ecx
.LBB25_2:                               #   in Loop: Header=BB25_3 Depth=1
	movl	%ebx, %eax
	addq	%rax, %r13
	movq	%r13, %r15
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %edx
	cmpb	$-2, %dl
	je	.LBB25_5
# %bb.4:                                #   in Loop: Header=BB25_3 Depth=1
	movl	$1, %eax
	cmpb	$-1, %dl
	jne	.LBB25_6
	jmp	.LBB25_45
	.p2align	4, 0x90
.LBB25_5:                               #   in Loop: Header=BB25_3 Depth=1
	movl	$5, %eax
.LBB25_6:                               #   in Loop: Header=BB25_3 Depth=1
	leaq	(%r15,%rax), %r13
	movzbl	(%r15,%rax), %ebx
	movl	%ebx, %r12d
	andl	$-64, %r12d
	cmpl	$192, %ebx
	cmovael	%ebx, %r12d
	cmpl	$191, %r12d
	ja	.LBB25_11
# %bb.7:                                #   in Loop: Header=BB25_3 Depth=1
	cmpb	$-128, %r12b
	je	.LBB25_19
# %bb.8:                                #   in Loop: Header=BB25_3 Depth=1
	cmpb	$64, %r12b
	je	.LBB25_18
# %bb.9:                                #   in Loop: Header=BB25_3 Depth=1
	testb	%r12b, %r12b
	jne	.LBB25_47
# %bb.10:                               #   in Loop: Header=BB25_3 Depth=1
	andl	$63, %ebx
	jmp	.LBB25_25
	.p2align	4, 0x90
.LBB25_11:                              #   in Loop: Header=BB25_3 Depth=1
	cmpb	$-33, %r12b
	jle	.LBB25_15
# %bb.12:                               #   in Loop: Header=BB25_3 Depth=1
	cmpb	$-32, %r12b
	je	.LBB25_20
# %bb.13:                               #   in Loop: Header=BB25_3 Depth=1
	cmpb	$-16, %r12b
	je	.LBB25_21
# %bb.14:                               #   in Loop: Header=BB25_3 Depth=1
	movl	$1, %ebx
	cmpb	$-2, %r12b
	je	.LBB25_24
	jmp	.LBB25_23
	.p2align	4, 0x90
.LBB25_15:                              #   in Loop: Header=BB25_3 Depth=1
	cmpb	$-64, %r12b
	je	.LBB25_22
# %bb.16:                               #   in Loop: Header=BB25_3 Depth=1
	cmpb	$-48, %r12b
	jne	.LBB25_23
# %bb.17:                               #   in Loop: Header=BB25_3 Depth=1
	movl	$4, %ebx
	jmp	.LBB25_24
.LBB25_18:                              #   in Loop: Header=BB25_3 Depth=1
	andl	$63, %ebx
	shll	$8, %ebx
	movzbl	1(%r13), %eax
	orl	%eax, %ebx
	movl	$2, %eax
	jmp	.LBB25_26
.LBB25_19:                              #   in Loop: Header=BB25_3 Depth=1
	movl	1(%r13), %ebx
	bswapl	%ebx
	movl	$5, %eax
	jmp	.LBB25_26
.LBB25_20:                              #   in Loop: Header=BB25_3 Depth=1
	movl	$8, %ebx
	jmp	.LBB25_24
.LBB25_21:                              #   in Loop: Header=BB25_3 Depth=1
	movl	$3, %ebx
	jmp	.LBB25_24
.LBB25_22:                              #   in Loop: Header=BB25_3 Depth=1
	movl	$2, %ebx
	jmp	.LBB25_24
.LBB25_23:                              #   in Loop: Header=BB25_3 Depth=1
	leal	15(%r12), %eax
	xorl	%ebx, %ebx
	cmpb	$13, %al
	jae	.LBB25_49
	.p2align	4, 0x90
.LBB25_24:                              #   in Loop: Header=BB25_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB25_25:                              #   in Loop: Header=BB25_3 Depth=1
	movl	$1, %eax
.LBB25_26:                              #   in Loop: Header=BB25_3 Depth=1
	addq	%rax, %r13
	testl	%ecx, %ecx
	jne	.LBB25_1
# %bb.27:                               #   in Loop: Header=BB25_3 Depth=1
	cmpl	$191, %r12d
	ja	.LBB25_30
# %bb.28:                               #   in Loop: Header=BB25_3 Depth=1
	cmpl	-80(%rbp), %ebx         # 4-byte Folded Reload
	jne	.LBB25_37
# %bb.29:                               #   in Loop: Header=BB25_3 Depth=1
	movq	%r13, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	movl	-44(%rbp), %ecx         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB25_2
	jmp	.LBB25_46
.LBB25_30:                              #   in Loop: Header=BB25_3 Depth=1
	cmpb	$-1, %r14b
	je	.LBB25_37
# %bb.31:                               #   in Loop: Header=BB25_3 Depth=1
	testb	%r14b, %r14b
	jne	.LBB25_44
# %bb.32:                               #   in Loop: Header=BB25_3 Depth=1
	cmpl	$30, -48(%rbp)          # 4-byte Folded Reload
	ja	.LBB25_38
# %bb.33:                               #   in Loop: Header=BB25_3 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-88(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB25_38
# %bb.34:                               #   in Loop: Header=BB25_3 Depth=1
	movq	-88(%rbp), %rcx
	cmpq	$12, %rcx
	ja	.LBB25_39
# %bb.35:                               #   in Loop: Header=BB25_3 Depth=1
	leal	-15(%rcx), %r14d
	jmp	.LBB25_43
.LBB25_37:                              #   in Loop: Header=BB25_3 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB25_2
.LBB25_38:                              #   in Loop: Header=BB25_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %r14b
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB25_2
.LBB25_39:                              #   in Loop: Header=BB25_3 Depth=1
	movsbq	%cl, %rax
	movb	$-2, %r14b
	cmpq	%rcx, %rax
	je	.LBB25_43
# %bb.40:                               #   in Loop: Header=BB25_3 Depth=1
	movswq	%cx, %rax
	movb	$-64, %r14b
	cmpq	%rcx, %rax
	je	.LBB25_43
# %bb.41:                               #   in Loop: Header=BB25_3 Depth=1
	leaq	8388608(%rcx), %rax
	movb	$-16, %r14b
	cmpq	$16777216, %rax         # imm = 0x1000000
	jb	.LBB25_43
# %bb.42:                               #   in Loop: Header=BB25_3 Depth=1
	movslq	%ecx, %rax
	cmpq	%rcx, %rax
	setne	%r14b
	shlb	$4, %r14b
	addb	$-48, %r14b
.LBB25_43:                              #   in Loop: Header=BB25_3 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB25_44:                              #   in Loop: Header=BB25_3 Depth=1
	movzbl	%r12b, %esi
	movq	%r13, %rdi
	callq	zipLoadInteger
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpq	-56(%rbp), %rax         # 8-byte Folded Reload
	jne	.LBB25_2
	jmp	.LBB25_46
.LBB25_45:
	xorl	%r15d, %r15d
.LBB25_46:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_47:
	movl	$.L.str, %edi
	movl	$.L.str.2, %edx
	movl	$1118, %esi             # imm = 0x45E
.LBB25_48:
	movl	%r12d, %ecx
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB25_49:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
	jmp	.LBB25_48
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
