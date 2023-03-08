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
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-33, %cl
	jle	.LBB0_1
# %bb.4:
	cmpb	$-32, %cl
	je	.LBB0_11
# %bb.5:
	cmpb	$-16, %cl
	je	.LBB0_10
# %bb.6:
	movl	$1, %eax
	cmpb	$-2, %cl
	je	.LBB0_13
	jmp	.LBB0_7
.LBB0_1:
	cmpb	$-64, %cl
	je	.LBB0_12
# %bb.2:
	cmpb	$-48, %cl
	jne	.LBB0_7
# %bb.3:
	movl	$4, %eax
	jmp	.LBB0_13
.LBB0_11:
	movl	$8, %eax
	jmp	.LBB0_13
.LBB0_10:
	movl	$3, %eax
	jmp	.LBB0_13
.LBB0_12:
	movl	$2, %eax
	jmp	.LBB0_13
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %cl
	jb	.LBB0_9
# %bb.8:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %cl
	jae	.LBB0_9
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB0_9:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
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
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-65, %sil
	ja	.LBB1_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edx
	ja	.LBB1_8
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_14
# %bb.3:
	movb	%dl, -13(%rbp)
	jmp	.LBB1_6
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_14
# %bb.5:
	movb	%sil, -13(%rbp)
.LBB1_6:
	movb	$1, %al
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %ebx
	leaq	-13(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB1_17
.LBB1_14:
	movl	$1, %ebx
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_2
# %bb.1:
	movb	$-2, (%rdi)
	addq	$1, %rdi
	leaq	-4(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, (%rdi)
	addq	$1, %rdi
	leaq	-4(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	xorl	%eax, %eax
	cmpl	$253, %esi
	seta	%al
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(,%rax,4), %eax
	movzbl	(%rdi,%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	cmpl	$191, %edx
	ja	.LBB5_2
# %bb.1:
	movl	%edx, %ecx
	andl	$-64, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$191, %ecx
	ja	.LBB5_11
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB5_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %ecx
	jne	.LBB5_7
# %bb.6:
	andl	$63, %edx
	shll	$8, %edx
	movzbl	1(%rdi,%rax), %ecx
	orl	%ecx, %edx
	movl	$2, %ecx
	jmp	.LBB5_26
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-33, %cl
	jle	.LBB5_12
# %bb.15:
	cmpb	$-32, %cl
	je	.LBB5_22
# %bb.16:
	cmpb	$-16, %cl
	je	.LBB5_21
# %bb.17:
	movl	$1, %edx
	cmpb	$-2, %cl
	je	.LBB5_24
	jmp	.LBB5_18
.LBB5_12:
	cmpb	$-64, %cl
	je	.LBB5_23
# %bb.13:
	cmpb	$-48, %cl
	jne	.LBB5_18
# %bb.14:
	movl	$4, %edx
	jmp	.LBB5_24
.LBB5_4:
	andl	$63, %edx
	jmp	.LBB5_25
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ecx
	jne	.LBB5_9
# %bb.8:
	movl	1(%rdi,%rax), %edx
	bswapl	%edx
	movl	$5, %ecx
	jmp	.LBB5_26
.LBB5_22:
	movl	$8, %edx
	jmp	.LBB5_24
.LBB5_21:
	movl	$3, %edx
	jmp	.LBB5_24
.LBB5_23:
	movl	$2, %edx
	jmp	.LBB5_24
.LBB5_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %cl
	jb	.LBB5_20
# %bb.19:
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %cl
	jae	.LBB5_20
.LBB5_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_25:
	movl	$1, %ecx
.LBB5_26:
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %eax
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.LBB5_9:
	movl	$.L.str, %edi
	movl	$.L.str.2, %edx
	movl	$474, %esi              # imm = 0x1DA
	jmp	.LBB5_10
.LBB5_20:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
.LBB5_10:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$30, %eax
	ja	.LBB6_9
# %bb.1:
	movq	%rcx, %r15
	movq	%rdx, %r14
	movl	%esi, %esi
	leaq	-32(%rbp), %rdx
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_9
# %bb.2:
	movq	-32(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$12, %rax
	ja	.LBB6_4
# %bb.3:
	leal	-15(%rax), %ecx
	jmp	.LBB6_8
.LBB6_4:
	movsbq	%al, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, %cl
	cmpq	%rax, %rdx
	je	.LBB6_8
# %bb.5:
	movswq	%ax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-64, %cl
	cmpq	%rax, %rdx
	je	.LBB6_8
# %bb.6:
	leaq	8388608(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-16, %cl
	cmpq	$16777216, %rdx         # imm = 0x1000000
	jb	.LBB6_8
# %bb.7:
	movslq	%eax, %rcx
	cmpq	%rax, %rcx
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	shlb	$4, %cl
	addb	$-48, %cl
.LBB6_8:
	movb	%cl, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r14)
	movl	$1, %ebx
.LBB6_9:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %dl
	jne	.LBB7_2
# %bb.1:
	movb	%sil, (%rdi)
	jmp	.LBB7_11
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-64, %dl
	jne	.LBB7_4
# %bb.3:
	movw	%si, -6(%rbp)
	leaq	-6(%rbp), %rsi
	movl	$2, %edx
	jmp	.LBB7_10
.LBB7_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-16, %dl
	jne	.LBB7_6
# %bb.5:
	shll	$8, %esi
	movl	%esi, -4(%rbp)
	leaq	-3(%rbp), %rsi
	movl	$3, %edx
	jmp	.LBB7_10
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-48, %dl
	jne	.LBB7_8
# %bb.7:
	movl	%esi, -4(%rbp)
	leaq	-4(%rbp), %rsi
	movl	$4, %edx
	jmp	.LBB7_10
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-32, %dl
	jne	.LBB7_13
# %bb.9:
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rsi
	movl	$8, %edx
.LBB7_10:
	callq	memcpy
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB7_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %dl
	jb	.LBB7_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %dl
	jb	.LBB7_12
.LBB7_15:
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
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %sil
	jne	.LBB8_2
# %bb.1:
	movsbq	(%rax), %rax
	jmp	.LBB8_13
.LBB8_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-64, %sil
	jne	.LBB8_4
# %bb.3:
	leaq	-6(%rbp), %rdi
	movl	$2, %edx
	movq	%rax, %rsi
	callq	memcpy
	movswq	-6(%rbp), %rax
	jmp	.LBB8_13
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-48, %sil
	jne	.LBB8_6
# %bb.5:
	leaq	-4(%rbp), %rdi
	movl	$4, %edx
	movq	%rax, %rsi
	callq	memcpy
	movslq	-4(%rbp), %rax
	jmp	.LBB8_13
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-16, %sil
	jne	.LBB8_8
# %bb.7:
	movl	$0, -4(%rbp)
	leaq	-3(%rbp), %rdi
	movl	$3, %edx
	movq	%rax, %rsi
	callq	memcpy
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	cltq
	jmp	.LBB8_13
.LBB8_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-32, %sil
	jne	.LBB8_10
# %bb.9:
	leaq	-16(%rbp), %rdi
	movl	$8, %edx
	movq	%rax, %rsi
	callq	memcpy
	movq	-16(%rbp), %rax
	jmp	.LBB8_13
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %sil
	jb	.LBB8_14
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-3, %sil
	ja	.LBB8_14
# %bb.12:
	andb	$15, %sil
	movzbl	%sil, %eax
	addq	$-1, %rax
.LBB8_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB8_14:
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
	cmpb	$-3, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB9_2
# %bb.1:
	movl	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r14), %eax
	movl	%eax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB9_3
.LBB9_2:
	movl	$5, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	4(%rbx), %rdi
	leaq	1(%r14), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
.LBB9_3:
	movl	%eax, %eax
	movzbl	(%r14,%rax), %ecx
	movb	%cl, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$191, %ecx
	ja	.LBB9_12
# %bb.4:
	andl	$-64, %ecx
	movb	%cl, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB9_5
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %cl
	jne	.LBB9_8
# %bb.7:
	movl	$2, 8(%rbx)
	movzbl	(%r14,%rax), %ecx
	andl	$63, %ecx
	shll	$8, %ecx
	movzbl	1(%r14,%rax), %edx
	orl	%ecx, %edx
	movl	$2, %ecx
	jmp	.LBB9_27
.LBB9_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-33, %cl
	jle	.LBB9_13
# %bb.16:
	cmpb	$-32, %cl
	je	.LBB9_23
# %bb.17:
	cmpb	$-16, %cl
	je	.LBB9_22
# %bb.18:
	movl	$1, %edx
	cmpb	$-2, %cl
	je	.LBB9_25
	jmp	.LBB9_19
.LBB9_13:
	cmpb	$-64, %cl
	je	.LBB9_24
# %bb.14:
	cmpb	$-48, %cl
	jne	.LBB9_19
# %bb.15:
	movl	$4, %edx
	jmp	.LBB9_25
.LBB9_5:
	movl	$1, 8(%rbx)
	movzbl	(%r14,%rax), %edx
	andl	$63, %edx
	jmp	.LBB9_26
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-128, %cl
	jne	.LBB9_10
# %bb.9:
	movl	$5, 8(%rbx)
	movl	1(%r14,%rax), %edx
	bswapl	%edx
	movl	$5, %ecx
	jmp	.LBB9_27
.LBB9_23:
	movl	$8, %edx
	jmp	.LBB9_25
.LBB9_22:
	movl	$3, %edx
	jmp	.LBB9_25
.LBB9_24:
	movl	$2, %edx
	jmp	.LBB9_25
.LBB9_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %cl
	jb	.LBB9_21
# %bb.20:
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %cl
	jae	.LBB9_21
.LBB9_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_26:
	movl	$1, %ecx
.LBB9_27:
	movl	%edx, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB9_11
.LBB9_21:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
.LBB9_11:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
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
	subq	$88, %rsp
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_24
# %bb.1:
	movq	%rsi, %r13
	jmp	.LBB12_5
	.p2align	4, 0x90
.LBB12_2:                               #   in Loop: Header=BB12_5 Depth=1
	movl	%r14d, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, (%r13)
	leaq	1(%r13), %rdi
	movl	$4, %edx
	leaq	-44(%rbp), %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_3:                               #   in Loop: Header=BB12_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB12_4:                               #   in Loop: Header=BB12_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB12_24
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r12
	movq	%r13, %rdi
	leaq	-128(%rbp), %rsi
	callq	zipEntry
	movl	-116(%rbp), %r14d
	addl	-112(%rbp), %r14d
	xorl	%ebx, %ebx
	cmpl	$253, %r14d
	seta	%r15b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%r13,%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_14
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	leaq	(%r14,%r13), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	leaq	-96(%rbp), %rsi
	callq	zipEntry
	cmpl	%r14d, -92(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_14
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=1
	movb	%r15b, %bl
	leal	1(,%rbx,4), %r15d
	movl	-96(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	jbe	.LBB12_15
# %bb.8:                                #   in Loop: Header=BB12_5 Depth=1
	movq	%r12, %rdi
	subq	%r12, %r13
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
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r13
	addq	%r14, %r13
	movl	4(%rax), %eax
	leaq	(%rbx,%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	je	.LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_5 Depth=1
	addl	%eax, %r12d
	movl	%r12d, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB12_4
# %bb.11:                               #   in Loop: Header=BB12_5 Depth=1
	cmpl	$253, %r14d
	ja	.LBB12_2
# %bb.12:                               #   in Loop: Header=BB12_5 Depth=1
	movb	%r14b, (%r13)
	jmp	.LBB12_3
.LBB12_14:
	movq	%r12, %rbx
	jmp	.LBB12_24
.LBB12_15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	movq	%r12, %rbx
	jae	.LBB12_18
# %bb.16:
	movl	%r14d, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB12_23
# %bb.17:
	movb	$-2, (%rdi)
	addq	$1, %rdi
	leaq	-44(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	jmp	.LBB12_22
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB12_23
# %bb.19:
	cmpl	$253, %r14d
	ja	.LBB12_21
# %bb.20:
	movb	%r14b, (%rdi)
	jmp	.LBB12_22
.LBB12_21:
	movl	%r14d, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, (%rdi)
	addq	$1, %rdi
	leaq	-44(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_24:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$88, %rsp
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
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB13_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	testl	%r15d, %r15d
	je	.LBB13_7
	.p2align	4, 0x90
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rbx
	movq	%r12, %rdi
	callq	zipRawEntryLength
	movl	%eax, %eax
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r13d
	cmpb	$-1, %al
	je	.LBB13_6
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %r13d
	jb	.LBB13_2
.LBB13_7:
	xorl	%ecx, %ecx
	jmp	.LBB13_8
.LBB13_5:
	xorl	%r13d, %r13d
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %cl
	movb	$-1, %al
.LBB13_8:
	movq	-56(%rbp), %r15
	movl	%r12d, %esi
	movl	$42, __A_VARIABLE(%rip)
	subl	%r15d, %esi
	je	.LBB13_24
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB13_11
# %bb.10:
	subq	%r14, %r15
	movl	-76(%rbp), %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	xorl	%r14d, %r14d
	jmp	.LBB13_19
.LBB13_11:
	movl	-76(%rbp), %ecx
	xorl	%edx, %edx
	cmpb	$-2, %al
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %edx
	xorl	%ebx, %ebx
	cmpl	$253, %ecx
	seta	%bl
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ebx
	subl	%edx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ebx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r12
	je	.LBB13_16
# %bb.12:
	cmpl	$253, %ecx
	ja	.LBB13_14
# %bb.13:
	movb	%cl, (%r12)
	jmp	.LBB13_15
.LBB13_14:
	movl	%ecx, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, (%r12)
	leaq	1(%r12), %rdi
	movl	%esi, %r15d
	leaq	-112(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	%r15d, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, -44(%rbp)         # 4-byte Spill
	subl	%esi, 4(%r14)
	leaq	-112(%rbp), %rsi
	movq	%r12, %rdi
	callq	zipEntry
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	cmpb	$-1, (%r12,%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_18
# %bb.17:
	addl	%ebx, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_18:
	movq	-56(%rbp), %rdi
	movl	(%r14), %eax
	movq	%r12, %rdx
	notq	%rdx
	addq	%r14, %rdx
	addq	%rax, %rdx
	movq	%r12, %rsi
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15
	subq	%r14, %r15
	movq	%r14, %rdi
	movq	%rbx, %r14
	movl	-44(%rbp), %esi         # 4-byte Reload
.LBB13_19:
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
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$-1, %cx
	je	.LBB13_21
# %bb.20:
	subl	%r13d, %ecx
	movw	%cx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_21:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB13_23
# %bb.22:
	movq	%rax, %rdi
	movq	%rax, %rsi
	addq	%r15, %rsi
	callq	__ziplistCascadeUpdate
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_24
.LBB13_23:
	movq	%rax, %r14
.LBB13_24:
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	(%rdi), %r13d
	movl	$0, -44(%rbp)
	movzbl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	je	.LBB14_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %al
	jne	.LBB14_5
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r12), %rsi
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	jmp	.LBB14_6
.LBB14_3:
	movl	4(%r14), %edi
	cmpb	$-1, (%r14,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_6
# %bb.4:
	addq	%r14, %rdi
	callq	zipRawEntryLength
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_6
.LBB14_5:
	movl	%eax, -44(%rbp)
.LBB14_6:
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$30, %eax
	ja	.LBB14_13
# %bb.7:
	movl	%ebx, %esi
	leaq	-120(%rbp), %rdx
	movq	%r15, %rdi
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_13
# %bb.8:
	movq	-120(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$13, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jae	.LBB14_30
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-18, %cl
	jle	.LBB14_53
# %bb.10:
	cmpb	$-17, %cl
	je	.LBB14_62
# %bb.11:
	cmpb	$-1, %cl
	je	.LBB14_59
# %bb.12:
	cmpb	$13, %cl
	je	.LBB14_32
	jmp	.LBB14_55
.LBB14_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$123456789, %eax        # imm = 0x75BCD15
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	movl	%ebx, %eax
.LBB14_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %eax
	xorl	%ecx, %ecx
	cmpl	$253, -44(%rbp)
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%rcx,4), %rdi
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-65, %sil
	ja	.LBB14_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %ebx
	ja	.LBB14_17
.LBB14_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB14_18
.LBB14_17:
	xorl	%eax, %eax
	cmpl	$16383, %ebx            # imm = 0x3FFF
	seta	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%rax,2), %rax
	addq	$2, %rax
.LBB14_18:
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rdi
	movq	%r12, %rdx
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	movq	%r15, -128(%rbp)        # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	je	.LBB14_22
# %bb.19:
	xorl	%ecx, %ecx
	cmpb	$-2, %al
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	xorl	%r12d, %r12d
	cmpl	$253, %edi
	seta	%r12b
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %r12d
	subl	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rdi
	ja	.LBB14_23
# %bb.20:
	cmpl	$-4, %r12d
	jne	.LBB14_23
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -48(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	jmp	.LBB14_24
.LBB14_22:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB14_23:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
.LBB14_24:
	movq	%r13, %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %r13
	subq	%r14, %r13
	leal	(%rax,%rdi), %r15d
	leal	(%r15,%r12), %ebx
	movq	%r14, %rdi
	movq	%rax, %r14
	movq	%rbx, %rsi
	callq	zrealloc
	movl	%ebx, (%rax)
	leal	(%r12,%r15), %ecx
	addl	$-1, %ecx
	movb	$-1, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%rax,%r13)
	leaq	(%rax,%r13), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -136(%rbp)        # 8-byte Spill
	je	.LBB14_27
# %bb.25:
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movslq	%r12d, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%r15,%rcx), %rbx
	movq	%r15, %rsi
	subq	%rax, %rsi
	notq	%r13
	addq	%r13, %r14
	addq	%rax, %r14
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB14_28
# %bb.26:
	movq	-56(%rbp), %r13         # 8-byte Reload
	movl	%r13d, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, (%rbx)
	leaq	1(%rbx), %rdi
	leaq	-120(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r14         # 8-byte Reload
	jmp	.LBB14_35
.LBB14_27:
	movl	%r13d, 4(%rax)
	movq	%rax, %r14
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB14_37
.LBB14_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r13         # 8-byte Reload
	cmpl	$253, %r13d
	movq	-72(%rbp), %r14         # 8-byte Reload
	ja	.LBB14_33
# %bb.29:
	movb	%r13b, (%rbx)
	jmp	.LBB14_34
.LBB14_30:
	movsbq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB14_51
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_32:
	movl	$1, %eax
	movb	$-2, %sil
	jmp	.LBB14_14
.LBB14_33:
	movl	%r13d, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, (%rbx)
	leaq	1(%rbx), %rdi
	leaq	-120(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movq	-56(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_35:
	movl	$42, __A_VARIABLE(%rip)
	addl	%r13d, 4(%r14)
	leaq	-120(%rbp), %rsi
	movq	%rbx, %rdi
	callq	zipEntry
	movq	-56(%rbp), %r13         # 8-byte Reload
	movl	-108(%rbp), %eax
	movl	-104(%rbp), %ecx
	addq	%r13, %rcx
	addq	%rcx, %rax
	cmpb	$-1, (%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_38
# %bb.36:
	addl	%r12d, 4(%r14)
.LBB14_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_38:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB14_42
# %bb.39:
	addq	%r13, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__ziplistCascadeUpdate
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %r15        # 8-byte Reload
	addq	%r14, %r15
	movq	-88(%rbp), %r12         # 8-byte Reload
	je	.LBB14_44
# %bb.40:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %eax
	ja	.LBB14_43
.LBB14_41:
	movb	%al, (%r15)
	movl	$1, %eax
	jmp	.LBB14_45
.LBB14_42:
	movl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	movq	-88(%rbp), %r12         # 8-byte Reload
	jb	.LBB14_41
.LBB14_43:
	movl	%eax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, (%r15)
	leaq	1(%r15), %rdi
	leaq	-64(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	jmp	.LBB14_45
.LBB14_44:
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	leaq	1(,%rcx,4), %rax
	xorl	%r15d, %r15d
.LBB14_45:
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %ebx         # 4-byte Reload
	movzbl	%bl, %r13d
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	callq	zipStoreEntryEncoding
	movl	%eax, %edi
	addq	%r15, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-65, %bl
	ja	.LBB14_47
# %bb.46:
	movl	%r12d, %edx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	jmp	.LBB14_48
.LBB14_47:
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	%r13d, %edx
	callq	zipSaveInteger
.LBB14_48:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	8(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$-1, %ax
	je	.LBB14_50
# %bb.49:
	addl	$1, %eax
	movw	%ax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_50:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_51:
	movswq	%cx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB14_57
# %bb.52:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_56
.LBB14_53:
	cmpb	$-49, %cl
	je	.LBB14_56
# %bb.54:
	cmpb	$-33, %cl
	je	.LBB14_61
.LBB14_55:
	leal	-15(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB14_14
.LBB14_56:
	movl	$2, %eax
	movb	$-64, %sil
	jmp	.LBB14_14
.LBB14_57:
	leaq	8388608(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16777215, %rax         # imm = 0xFFFFFF
	ja	.LBB14_60
# %bb.58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_59:
	movl	$3, %eax
	movb	$-16, %sil
	jmp	.LBB14_14
.LBB14_60:
	movslq	%ecx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB14_62
.LBB14_61:
	movl	$4, %eax
	movb	$-48, %sil
	jmp	.LBB14_14
.LBB14_62:
	movl	$8, %eax
	movb	$-32, %sil
	jmp	.LBB14_14
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB15_7
# %bb.1:
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	(%rdi), %r12
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB15_15
# %bb.2:
	testq	%r12, %r12
	je	.LBB15_15
# %bb.3:
	movq	(%r13), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB15_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	je	.LBB15_7
# %bb.5:
	movl	(%r12), %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movzwl	8(%r12), %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	(%r15), %esi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movzwl	8(%r15), %edx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	cmpw	%dx, %cx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	cmovbq	%r15, %rdi
	addq	%rax, %rsi
	addq	$-11, %rsi
	movq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbq	%rax, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	4(%r12), %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	4(%r15), %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	zrealloc
	movq	%rax, %rbx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpw	-56(%rbp), %si          # 2-byte Folded Reload
	cmovbq	%rax, %rdx
	cmovbq	%rcx, %rax
	cmovbq	%r12, %r15
	jae	.LBB15_10
# %bb.6:
	leaq	(%rbx,%rax), %rdi
	addq	$-1, %rdi
	leaq	10(%rbx), %rsi
	addq	$-10, %rdx
	movq	%rax, %r12
	callq	memmove
	addq	$-1, %r12
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	jmp	.LBB15_11
.LBB15_7:
	xorl	%ebx, %ebx
.LBB15_15:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB15_10:
	leaq	(%rbx,%rdx), %rdi
	addq	$-1, %rdi
	addq	$10, %r15
	addq	$-10, %rax
	movq	%r15, %rsi
	movq	%rax, %rdx
.LBB15_11:
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%eax, (%rbx)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movw	%ax, 8(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	addl	$-11, %eax
	movl	%eax, 4(%rbx)
	movq	%rbx, %rsi
	addq	-104(%rbp), %rsi        # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	__ziplistCascadeUpdate
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpw	%ax, -64(%rbp)          # 2-byte Folded Reload
	jae	.LBB15_13
# %bb.12:
	movq	(%r14), %rdi
	callq	zfree
	movq	%r14, %rax
	movq	%r13, %r14
	jmp	.LBB15_14
.LBB15_13:
	movq	(%r13), %rdi
	callq	zfree
	movq	%r13, %rax
.LBB15_14:
	movq	$0, (%rax)
	movq	%rbx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_15
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB17_1
# %bb.13:
	leaq	10(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_14
	.p2align	4, 0x90
.LBB17_15:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB17_16
# %bb.17:                               #   in Loop: Header=BB17_15 Depth=1
	addl	$-1, %r12d
	movq	%rbx, %rdi
	callq	zipRawEntryLength
	movl	%eax, %eax
	leaq	(%rbx,%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	jne	.LBB17_15
	jmp	.LBB17_18
.LBB17_1:
	notl	%r12d
	movl	4(%rdi), %eax
	leaq	(%rdi,%rax), %r14
	movzbl	(%rdi,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	je	.LBB17_18
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %al
	jne	.LBB17_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r14), %rsi
	leaq	-36(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	-36(%rbp), %eax
	jmp	.LBB17_5
.LBB17_14:
	movq	%rbx, %r14
	jmp	.LBB17_18
.LBB17_16:
	movl	$-1, %r12d
	movq	%rbx, %r14
	jmp	.LBB17_18
.LBB17_3:
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_18
# %bb.6:                                # %.preheader
	leaq	-36(%rbp), %r15
	jmp	.LBB17_7
	.p2align	4, 0x90
.LBB17_11:                              #   in Loop: Header=BB17_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r14), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	-36(%rbp), %eax
.LBB17_12:                              #   in Loop: Header=BB17_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_18
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	$1, %r12d
	jb	.LBB17_8
# %bb.9:                                #   in Loop: Header=BB17_7 Depth=1
	movl	%eax, %eax
	subq	%rax, %r14
	movzbl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %eax
	ja	.LBB17_11
# %bb.10:                               #   in Loop: Header=BB17_7 Depth=1
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_1
# %bb.2:
	movq	%rsi, %rbx
	movq	%rsi, %rdi
	callq	zipRawEntryLength
	movl	%eax, %ecx
	leaq	(%rbx,%rcx), %rdx
	xorl	%eax, %eax
	cmpb	$-1, (%rbx,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%rdx, %rax
	jmp	.LBB18_3
.LBB18_1:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	je	.LBB19_1
# %bb.2:
	movq	%rsi, %rbx
	addq	$10, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	je	.LBB19_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-3, %al
	ja	.LBB19_6
# %bb.5:
	movl	%eax, -12(%rbp)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rbx), %rsi
	leaq	-12(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	-12(%rbp), %eax
.LBB19_7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB19_10
# %bb.8:
	movl	%eax, %eax
	subq	%rax, %rbx
.LBB19_9:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB20_10
# %bb.1:
	movq	%rdi, %rbx
	cmpb	$-1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_10
# %bb.2:
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rsi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB20_4
# %bb.3:
	movq	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_4:
	leaq	-72(%rbp), %rsi
	movq	%rbx, %rdi
	callq	zipEntry
	movb	-52(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-65, %al
	ja	.LBB20_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testq	%r12, %r12
	je	.LBB20_10
# %bb.6:
	movl	-60(%rbp), %eax
	movl	%eax, (%r13)
	movl	-56(%rbp), %eax
	addq	%rax, %rbx
	movq	%rbx, (%r12)
	jmp	.LBB20_9
.LBB20_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testq	%r15, %r15
	je	.LBB20_10
# %bb.8:
	movl	-56(%rbp), %ecx
	addq	%rcx, %rbx
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	zipLoadInteger
	movq	%rax, (%r15)
.LBB20_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_10:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	%r14d, %edx
	callq	__ziplistDelete
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_13
# %bb.1:
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	-64(%rbp), %rsi
	callq	zipEntry
	cmpb	$-65, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB24_4
# %bb.2:
	cmpl	%ebx, -52(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB24_13
# %bb.3:
	movl	-48(%rbp), %eax
	addq	%rax, %r15
	movl	%ebx, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB24_14
.LBB24_4:
	leal	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$30, %eax
	ja	.LBB24_12
# %bb.5:
	movl	%ebx, %esi
	leaq	-32(%rbp), %rdx
	movq	%r14, %rdi
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_12
# %bb.6:
	movq	-32(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$13, %rbx
	jb	.LBB24_10
# %bb.7:
	movsbq	%bl, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB24_10
# %bb.8:
	movswq	%bx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB24_10
# %bb.9:
	leaq	8388608(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16777216, %rax         # imm = 0x1000000
	jb	.LBB24_11
.LBB24_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	addq	%rax, %r15
	movzbl	-44(%rbp), %esi
	movq	%r15, %rdi
	callq	zipLoadInteger
	cmpq	%rbx, %rax
	sete	%al
	jmp	.LBB24_14
.LBB24_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_13:
	xorl	%eax, %eax
.LBB24_14:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB25_53
# %bb.1:
	movq	%rdi, %rbx
	movl	%edx, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	leal	-1(%rdx), %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB25_2
	.p2align	4, 0x90
.LBB25_51:                              #   in Loop: Header=BB25_2 Depth=1
	addl	$-1, %ecx
.LBB25_52:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	leaq	(%r12,%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB25_53
.LBB25_2:                               # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	cmpb	$-2, %al
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx,%rdx,4), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r13d
	cmpl	$191, %r15d
	ja	.LBB25_4
# %bb.3:                                #   in Loop: Header=BB25_2 Depth=1
	movl	%r15d, %r13d
	andl	$-64, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB25_4:                               #   in Loop: Header=BB25_2 Depth=1
	leaq	(%rbx,%rdx,4), %r12
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$191, %r13d
	ja	.LBB25_13
# %bb.5:                                #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB25_6
# %bb.7:                                #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %r13d
	jne	.LBB25_9
# %bb.8:                                #   in Loop: Header=BB25_2 Depth=1
	andl	$63, %r15d
	shll	$8, %r15d
	movzbl	1(%r12), %eax
	orl	%eax, %r15d
	movl	$2, %eax
	jmp	.LBB25_28
	.p2align	4, 0x90
.LBB25_13:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-33, %r13b
	jle	.LBB25_14
# %bb.17:                               #   in Loop: Header=BB25_2 Depth=1
	cmpb	$-32, %r13b
	je	.LBB25_24
# %bb.18:                               #   in Loop: Header=BB25_2 Depth=1
	cmpb	$-16, %r13b
	je	.LBB25_23
# %bb.19:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$1, %r15d
	cmpb	$-2, %r13b
	je	.LBB25_26
	jmp	.LBB25_20
	.p2align	4, 0x90
.LBB25_14:                              #   in Loop: Header=BB25_2 Depth=1
	cmpb	$-64, %r13b
	je	.LBB25_25
# %bb.15:                               #   in Loop: Header=BB25_2 Depth=1
	cmpb	$-48, %r13b
	jne	.LBB25_20
# %bb.16:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$4, %r15d
	jmp	.LBB25_26
.LBB25_6:                               #   in Loop: Header=BB25_2 Depth=1
	andl	$63, %r15d
	jmp	.LBB25_27
.LBB25_9:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r13d
	jne	.LBB25_11
# %bb.10:                               #   in Loop: Header=BB25_2 Depth=1
	movl	1(%r12), %r15d
	bswapl	%r15d
	movl	$5, %eax
	jmp	.LBB25_28
.LBB25_24:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$8, %r15d
	jmp	.LBB25_26
.LBB25_23:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$3, %r15d
	jmp	.LBB25_26
.LBB25_25:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$2, %r15d
	jmp	.LBB25_26
.LBB25_20:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %r13b
	jb	.LBB25_22
# %bb.21:                               #   in Loop: Header=BB25_2 Depth=1
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %r13b
	jae	.LBB25_22
	.p2align	4, 0x90
.LBB25_26:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_27:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$1, %eax
.LBB25_28:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB25_51
# %bb.29:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$191, %r13d
	ja	.LBB25_34
# %bb.30:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-80(%rbp), %r15d        # 4-byte Folded Reload
	jne	.LBB25_31
# %bb.32:                               #   in Loop: Header=BB25_2 Depth=1
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ecx         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB25_52
	jmp	.LBB25_33
.LBB25_34:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	jne	.LBB25_48
# %bb.35:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$30, -48(%rbp)          # 4-byte Folded Reload
	ja	.LBB25_46
# %bb.36:                               #   in Loop: Header=BB25_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	-88(%rbp), %rdx
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_46
# %bb.37:                               #   in Loop: Header=BB25_2 Depth=1
	movq	-88(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$12, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	ja	.LBB25_39
# %bb.38:                               #   in Loop: Header=BB25_2 Depth=1
	leal	-15(%rcx), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_47
.LBB25_31:                              #   in Loop: Header=BB25_2 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB25_52
.LBB25_46:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %r14b
.LBB25_47:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_48:                              #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %r14b
	je	.LBB25_49
# %bb.50:                               #   in Loop: Header=BB25_2 Depth=1
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	zipLoadInteger
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpq	-64(%rbp), %rax         # 8-byte Folded Reload
	jne	.LBB25_52
	jmp	.LBB25_54
.LBB25_49:                              #   in Loop: Header=BB25_2 Depth=1
	movb	$-1, %r14b
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB25_52
.LBB25_39:                              #   in Loop: Header=BB25_2 Depth=1
	movsbq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB25_41
# %bb.40:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, %r14b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_47
.LBB25_41:                              #   in Loop: Header=BB25_2 Depth=1
	movswq	%cx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB25_43
# %bb.42:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-64, %r14b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_47
.LBB25_43:                              #   in Loop: Header=BB25_2 Depth=1
	leaq	8388608(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16777215, %rax         # imm = 0xFFFFFF
	ja	.LBB25_45
# %bb.44:                               #   in Loop: Header=BB25_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-16, %r14b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_47
.LBB25_45:                              #   in Loop: Header=BB25_2 Depth=1
	movslq	%ecx, %rax
	cmpq	%rcx, %rax
	setne	%r14b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlb	$4, %r14b
	addb	$-48, %r14b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_47
.LBB25_53:
	xorl	%ebx, %ebx
.LBB25_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_33:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_54
.LBB25_11:
	movl	$.L.str, %edi
	movl	$.L.str.2, %edx
	movl	$1118, %esi             # imm = 0x45E
	jmp	.LBB25_12
.LBB25_22:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$316, %esi              # imm = 0x13C
.LBB25_12:
	movl	%r13d, %ecx
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %r15d           # imm = 0xFFFF
	jne	.LBB26_6
# %bb.1:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB26_7
# %bb.2:                                # %.preheader
	leaq	10(%r14), %rbx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB26_3:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	zipRawEntryLength
	movl	%eax, %eax
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%rbx,%rax)
	leaq	(%rbx,%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB26_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65534, %r15d           # imm = 0xFFFE
	jbe	.LBB26_5
	jmp	.LBB26_6
.LBB26_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB26_5:
	movw	%r15w, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_6:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, 10(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB28_16
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
	movl	$42, __A_VARIABLE(%rip)
.LBB28_15:                              #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-60(%rbp), %eax
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%r14,%rax)
	leaq	(%r14,%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB28_16
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jb	.LBB28_4
.LBB28_5:                               #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-56(%rbp), %eax
	addq	%rax, %r14
	movb	-52(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-64, %al
	jae	.LBB28_13
# %bb.6:                                #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-60(%rbp), %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$41, %r13
	jb	.LBB28_10
# %bb.7:                                #   in Loop: Header=BB28_2 Depth=1
	callq	__getreent
	movq	16(%rax), %rcx
	movl	$40, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	fwrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB28_9
# %bb.8:                                #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.12, %edi
	callq	perror
	movl	$42, __A_VARIABLE(%rip)
.LBB28_9:                               #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB28_14
	.p2align	4, 0x90
.LBB28_10:                              #   in Loop: Header=BB28_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB28_15
# %bb.11:                               #   in Loop: Header=BB28_2 Depth=1
	callq	__getreent
	movq	16(%rax), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	fwrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB28_15
# %bb.12:                               #   in Loop: Header=BB28_2 Depth=1
	movl	$.L.str.12, %edi
	callq	perror
	jmp	.LBB28_14
.LBB28_16:
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
