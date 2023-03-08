	.text
	.file	"listpack.c"
	.globl	lpStringToInt64         # -- Begin function lpStringToInt64
	.p2align	4, 0x90
	.type	lpStringToInt64,@function
lpStringToInt64:                        # @lpStringToInt64
# %bb.0:
	pushq	%r14
	pushq	%rbx
	testq	%rsi, %rsi
	je	.LBB0_5
# %bb.1:
	movb	(%rdi), %cl
	cmpq	$1, %rsi
	jne	.LBB0_7
# %bb.2:
	cmpb	$48, %cl
	jne	.LBB0_7
# %bb.3:
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB0_6
# %bb.4:
	movq	$0, (%rdx)
	jmp	.LBB0_6
.LBB0_7:
	cmpb	$45, %cl
	jne	.LBB0_10
# %bb.8:
	xorl	%eax, %eax
	cmpq	$1, %rsi
	je	.LBB0_6
# %bb.9:
	addq	$1, %rdi
	movb	(%rdi), %cl
	movl	$1, %r8d
	movl	$2, %r9d
	jmp	.LBB0_11
.LBB0_10:
	xorl	%r8d, %r8d
	movl	$1, %r9d
.LBB0_11:
	leal	-49(%rcx), %eax
	cmpb	$8, %al
	ja	.LBB0_22
# %bb.12:
	movsbq	%cl, %r11
	addq	$-48, %r11
	cmpq	%rsi, %r9
	jae	.LBB0_18
# %bb.13:                               # %.preheader
	addq	$1, %rdi
	movabsq	$1844674407370955161, %r10 # imm = 0x1999999999999999
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %r11
	ja	.LBB0_6
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movsbq	(%rdi), %r14
	leal	-48(%r14), %ecx
	cmpb	$9, %cl
	ja	.LBB0_6
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	addq	%r11, %r11
	leaq	(%r11,%r11,4), %rcx
	movl	$47, %ebx
	subq	%r14, %rbx
	cmpq	%rbx, %rcx
	ja	.LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=1
	leaq	(%rcx,%r14), %r11
	addq	$-48, %r11
	addq	$1, %r9
	addq	$1, %rdi
	cmpq	%rsi, %r9
	jb	.LBB0_14
.LBB0_18:
	testl	%r8d, %r8d
	je	.LBB0_25
# %bb.19:
	xorl	%eax, %eax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	cmpq	%rcx, %r11
	ja	.LBB0_6
# %bb.20:
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB0_6
# %bb.21:
	negq	%r11
	jmp	.LBB0_27
.LBB0_22:
	xorl	%eax, %eax
	cmpq	$1, %rsi
	jne	.LBB0_6
# %bb.23:
	cmpb	$48, %cl
	jne	.LBB0_6
# %bb.24:
	movq	$0, (%rdx)
	movl	$1, %eax
	jmp	.LBB0_6
.LBB0_25:
	testq	%r11, %r11
	js	.LBB0_5
# %bb.26:
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB0_6
.LBB0_27:
	movq	%r11, (%rdx)
	jmp	.LBB0_6
.LBB0_5:
	xorl	%eax, %eax
.LBB0_6:
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	lpStringToInt64, .Lfunc_end0-lpStringToInt64
                                        # -- End function
	.globl	lpNew                   # -- Begin function lpNew
	.p2align	4, 0x90
	.type	lpNew,@function
lpNew:                                  # @lpNew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$7, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB1_2
# %bb.1:
	movl	$7, (%rax)
	movw	$0, 4(%rax)
	movb	$-1, 6(%rax)
.LBB1_2:
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lpNew, .Lfunc_end1-lpNew
                                        # -- End function
	.globl	lpFree                  # -- Begin function lpFree
	.p2align	4, 0x90
	.type	lpFree,@function
lpFree:                                 # @lpFree
# %bb.0:
	jmp	zfree                   # TAILCALL
.Lfunc_end2:
	.size	lpFree, .Lfunc_end2-lpFree
                                        # -- End function
	.globl	lpEncodeGetType         # -- Begin function lpEncodeGetType
	.p2align	4, 0x90
	.type	lpEncodeGetType,@function
lpEncodeGetType:                        # @lpEncodeGetType
# %bb.0:
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	movq	%rcx, %r11
	testl	%esi, %esi
	je	.LBB3_25
# %bb.1:
	xorl	%r8d, %r8d
	movb	(%rdi), %bl
	cmpl	$1, %esi
	jne	.LBB3_5
# %bb.2:
	cmpb	$48, %bl
	jne	.LBB3_5
.LBB3_3:
	xorl	%ecx, %ecx
.LBB3_4:
	movb	%cl, (%rdx)
	xorl	%eax, %eax
	movl	$1, %esi
	jmp	.LBB3_27
.LBB3_5:
	movl	$1, %eax
	cmpb	$45, %bl
	jne	.LBB3_8
# %bb.6:
	cmpl	$1, %esi
	je	.LBB3_25
# %bb.7:
	addq	$1, %rdi
	movb	(%rdi), %bl
	movl	$1, %r8d
	movl	$2, %eax
.LBB3_8:
	leal	-49(%rbx), %ecx
	cmpb	$8, %cl
	ja	.LBB3_18
# %bb.9:
	movl	%esi, %r9d
	movsbq	%bl, %rcx
	addq	$-48, %rcx
	movq	%rdx, %r14
	cmpq	%r9, %rax
	jae	.LBB3_15
# %bb.10:                               # %.preheader
	addq	$1, %rdi
	movabsq	$1844674407370955161, %r10 # imm = 0x1999999999999999
	.p2align	4, 0x90
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rcx
	ja	.LBB3_24
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	movsbq	(%rdi), %rbx
	leal	-48(%rbx), %ebp
	cmpb	$9, %bpl
	ja	.LBB3_24
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=1
	addq	%rcx, %rcx
	leaq	(%rcx,%rcx,4), %rdx
	movl	$47, %ebp
	subq	%rbx, %rbp
	cmpq	%rbp, %rdx
	ja	.LBB3_24
# %bb.14:                               #   in Loop: Header=BB3_11 Depth=1
	leaq	(%rdx,%rbx), %rcx
	addq	$-48, %rcx
	addq	$1, %rax
	addq	$1, %rdi
	cmpq	%r9, %rax
	jb	.LBB3_11
.LBB3_15:
	testl	%r8d, %r8d
	je	.LBB3_21
# %bb.16:
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	cmpq	%rax, %rcx
	ja	.LBB3_24
# %bb.17:
	negq	%rcx
	jmp	.LBB3_22
.LBB3_18:
	cmpl	$1, %esi
	jne	.LBB3_24
# %bb.19:
	cmpb	$48, %bl
	je	.LBB3_3
	jmp	.LBB3_24
.LBB3_21:
	testq	%rcx, %rcx
	js	.LBB3_24
.LBB3_22:
	cmpq	$127, %rcx
	ja	.LBB3_31
# %bb.23:
	movq	%r14, %rdx
	jmp	.LBB3_4
.LBB3_24:
	cmpl	$63, %esi
	ja	.LBB3_28
.LBB3_25:
	addl	$1, %esi
.LBB3_26:
	movl	$1, %eax
.LBB3_27:
	movl	%esi, %edx
	movq	%rdx, (%r11)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB3_28:
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB3_30
# %bb.29:
	addl	$2, %esi
	jmp	.LBB3_26
.LBB3_30:
	addl	$5, %esi
	jmp	.LBB3_26
.LBB3_31:
	leaq	4096(%rcx), %rax
	cmpq	$8191, %rax             # imm = 0x1FFF
	ja	.LBB3_33
# %bb.32:
	leaq	8192(%rcx), %rax
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orb	$-64, %dl
	movb	%dl, (%r14)
	movb	%al, 1(%r14)
	xorl	%eax, %eax
	movl	$2, %esi
	jmp	.LBB3_27
.LBB3_33:
	movswq	%cx, %rax
	cmpq	%rcx, %rax
	jne	.LBB3_35
# %bb.34:
	leaq	65536(%rcx), %rax
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rax
	movq	%r14, %rcx
	movb	$-15, (%r14)
	movb	%al, 1(%r14)
	movb	%ah, 2(%rcx)
	xorl	%eax, %eax
	movl	$3, %esi
	jmp	.LBB3_27
.LBB3_35:
	leaq	8388608(%rcx), %rax
	cmpq	$16777215, %rax         # imm = 0xFFFFFF
	ja	.LBB3_37
# %bb.36:
	leaq	16777216(%rcx), %rax
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rax
	movq	%r14, %rcx
	movb	$-14, (%r14)
	movb	%al, 1(%r14)
	movb	%ah, 2(%rcx)
	shrq	$16, %rax
	movb	%al, 3(%r14)
	xorl	%eax, %eax
	movl	$4, %esi
	jmp	.LBB3_27
.LBB3_37:
	movslq	%ecx, %rax
	cmpq	%rcx, %rax
	movq	%r14, %rsi
	jne	.LBB3_39
# %bb.38:
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rcx, %rax
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rax
	movb	$-13, (%rsi)
	movb	%al, 1(%rsi)
	movb	%ah, 2(%rsi)
	movq	%rax, %rdx
	shrq	$16, %rdx
	movb	%dl, 3(%rsi)
	shrq	$24, %rax
	movb	%al, 4(%rsi)
	xorl	%eax, %eax
	movl	$5, %esi
	jmp	.LBB3_27
.LBB3_39:
	movb	$-12, (%rsi)
	movb	%cl, 1(%rsi)
	movb	%ch, 2(%rsi)
	movq	%rcx, %rax
	shrq	$16, %rax
	movb	%al, 3(%rsi)
	movq	%rcx, %rax
	shrq	$24, %rax
	movb	%al, 4(%rsi)
	movq	%rcx, %rax
	shrq	$32, %rax
	movb	%al, 5(%rsi)
	movq	%rcx, %rax
	shrq	$40, %rax
	movb	%al, 6(%rsi)
	movq	%rcx, %rax
	shrq	$48, %rax
	movb	%al, 7(%rsi)
	shrq	$56, %rcx
	movb	%cl, 8(%rsi)
	xorl	%eax, %eax
	movl	$9, %esi
	jmp	.LBB3_27
.Lfunc_end3:
	.size	lpEncodeGetType, .Lfunc_end3-lpEncodeGetType
                                        # -- End function
	.globl	lpEncodeBacklen         # -- Begin function lpEncodeBacklen
	.p2align	4, 0x90
	.type	lpEncodeBacklen,@function
lpEncodeBacklen:                        # @lpEncodeBacklen
# %bb.0:
	cmpq	$127, %rsi
	ja	.LBB4_3
# %bb.1:
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.LBB4_14
# %bb.2:
	movb	%sil, (%rdi)
	retq
.LBB4_3:
	cmpq	$16382, %rsi            # imm = 0x3FFE
	ja	.LBB4_6
# %bb.4:
	movl	$2, %eax
	testq	%rdi, %rdi
	je	.LBB4_14
# %bb.5:
	movq	%rsi, %rcx
	shrq	$7, %rcx
	movb	%cl, (%rdi)
	orb	$-128, %sil
	movb	%sil, 1(%rdi)
	retq
.LBB4_6:
	cmpq	$2097150, %rsi          # imm = 0x1FFFFE
	ja	.LBB4_9
# %bb.7:
	movl	$3, %eax
	testq	%rdi, %rdi
	je	.LBB4_14
# %bb.8:
	movq	%rsi, %rcx
	shrq	$14, %rcx
	movb	%cl, (%rdi)
	movq	%rsi, %rcx
	shrq	$7, %rcx
	orb	$-128, %cl
	movb	%cl, 1(%rdi)
	orb	$-128, %sil
	movb	%sil, 2(%rdi)
	retq
.LBB4_9:
	cmpq	$268435454, %rsi        # imm = 0xFFFFFFE
	ja	.LBB4_12
# %bb.10:
	movl	$4, %eax
	testq	%rdi, %rdi
	je	.LBB4_14
# %bb.11:
	movq	%rsi, %rcx
	shrq	$21, %rcx
	movb	%cl, (%rdi)
	movq	%rsi, %rcx
	shrq	$14, %rcx
	orb	$-128, %cl
	movb	%cl, 1(%rdi)
	movq	%rsi, %rcx
	shrq	$7, %rcx
	orb	$-128, %cl
	movb	%cl, 2(%rdi)
	orb	$-128, %sil
	movb	%sil, 3(%rdi)
	retq
.LBB4_12:
	movl	$5, %eax
	testq	%rdi, %rdi
	je	.LBB4_14
# %bb.13:
	movq	%rsi, %rcx
	shrq	$28, %rcx
	movb	%cl, (%rdi)
	movq	%rsi, %rcx
	shrq	$21, %rcx
	orb	$-128, %cl
	movb	%cl, 1(%rdi)
	movq	%rsi, %rcx
	shrq	$14, %rcx
	orb	$-128, %cl
	movb	%cl, 2(%rdi)
	movq	%rsi, %rcx
	shrq	$7, %rcx
	orb	$-128, %cl
	movb	%cl, 3(%rdi)
	orb	$-128, %sil
	movb	%sil, 4(%rdi)
.LBB4_14:
	retq
.Lfunc_end4:
	.size	lpEncodeBacklen, .Lfunc_end4-lpEncodeBacklen
                                        # -- End function
	.globl	lpDecodeBacklen         # -- Begin function lpDecodeBacklen
	.p2align	4, 0x90
	.type	lpDecodeBacklen,@function
lpDecodeBacklen:                        # @lpDecodeBacklen
# %bb.0:
	movzbl	(%rdi), %ecx
	movl	%ecx, %eax
	andl	$127, %eax
	testb	%cl, %cl
	js	.LBB5_1
.LBB5_5:
	retq
.LBB5_1:
	movzbl	-1(%rdi), %ecx
	movl	%ecx, %edx
	andl	$127, %edx
	shlq	$7, %rdx
	orq	%rdx, %rax
	testb	%cl, %cl
	jns	.LBB5_5
# %bb.2:
	movzbl	-2(%rdi), %ecx
	movl	%ecx, %edx
	andl	$127, %edx
	shlq	$14, %rdx
	orq	%rdx, %rax
	testb	%cl, %cl
	jns	.LBB5_5
# %bb.3:
	movzbl	-3(%rdi), %ecx
	movl	%ecx, %edx
	andl	$127, %edx
	shlq	$21, %rdx
	orq	%rdx, %rax
	testb	%cl, %cl
	jns	.LBB5_5
# %bb.4:
	movzbl	-4(%rdi), %ecx
	movl	%ecx, %edx
	andl	$127, %edx
	shlq	$28, %rdx
	orq	%rax, %rdx
	testb	%cl, %cl
	movq	$-1, %rax
	cmovnsq	%rdx, %rax
	retq
.Lfunc_end5:
	.size	lpDecodeBacklen, .Lfunc_end5-lpDecodeBacklen
                                        # -- End function
	.globl	lpEncodeString          # -- Begin function lpEncodeString
	.p2align	4, 0x90
	.type	lpEncodeString,@function
lpEncodeString:                         # @lpEncodeString
# %bb.0:
	cmpl	$63, %edx
	ja	.LBB6_1
# %bb.3:
	movl	%edx, %eax
	orb	$-128, %al
	movb	%al, (%rdi)
	addq	$1, %rdi
	movl	%edx, %edx
	jmp	memcpy                  # TAILCALL
.LBB6_1:
	cmpl	$4095, %edx             # imm = 0xFFF
	ja	.LBB6_2
# %bb.4:
	movl	%edx, %eax
	shrl	$8, %eax
	orb	$-32, %al
	movb	%al, (%rdi)
	movb	%dl, 1(%rdi)
	addq	$2, %rdi
	movl	%edx, %edx
	jmp	memcpy                  # TAILCALL
.LBB6_2:
	movb	$-16, (%rdi)
	movb	%dl, 1(%rdi)
	movb	%dh, 2(%rdi)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 3(%rdi)
	movl	%edx, %eax
	shrl	$24, %edx
	movb	%dl, 4(%rdi)
	addq	$5, %rdi
	movq	%rax, %rdx
	jmp	memcpy                  # TAILCALL
.Lfunc_end6:
	.size	lpEncodeString, .Lfunc_end6-lpEncodeString
                                        # -- End function
	.globl	lpCurrentEncodedSize    # -- Begin function lpCurrentEncodedSize
	.p2align	4, 0x90
	.type	lpCurrentEncodedSize,@function
lpCurrentEncodedSize:                   # @lpCurrentEncodedSize
# %bb.0:
	movzbl	(%rdi), %ecx
	movl	$1, %eax
	testb	%cl, %cl
	js	.LBB7_1
.LBB7_12:
	retq
.LBB7_1:
	movl	%ecx, %eax
	andl	$-64, %eax
	cmpl	$128, %eax
	jne	.LBB7_3
# %bb.2:
	andl	$63, %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	retq
.LBB7_3:
	movl	%ecx, %edx
	andl	$-32, %edx
	movl	$2, %eax
	cmpl	$192, %edx
	je	.LBB7_12
# %bb.4:
	leal	15(%rcx), %eax
	cmpb	$4, %al
	jae	.LBB7_5
# %bb.11:
	movsbq	%al, %rax
	movl	.Lswitch.table.lpCurrentEncodedSize(,%rax,4), %eax
	retq
.LBB7_5:
	movl	%ecx, %eax
	andl	$-16, %eax
	cmpl	$224, %eax
	jne	.LBB7_7
# %bb.6:
	andl	$15, %ecx
	shll	$8, %ecx
	movzbl	1(%rdi), %eax
	addl	%ecx, %eax
	addl	$2, %eax
	retq
.LBB7_7:
	movl	$1, %eax
	cmpb	$-1, %cl
	je	.LBB7_12
# %bb.8:
	cmpb	$-16, %cl
	jne	.LBB7_10
# %bb.9:
	movl	1(%rdi), %eax
	addl	$5, %eax
	retq
.LBB7_10:
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	lpCurrentEncodedSize, .Lfunc_end7-lpCurrentEncodedSize
                                        # -- End function
	.globl	lpSkip                  # -- Begin function lpSkip
	.p2align	4, 0x90
	.type	lpSkip,@function
lpSkip:                                 # @lpSkip
# %bb.0:
	movq	%rdi, %rax
	movzbl	(%rdi), %esi
	movl	$1, %ecx
	testb	%sil, %sil
	js	.LBB8_2
.LBB8_1:
	movl	$1, %edx
	jmp	.LBB8_18
.LBB8_2:
	movl	%esi, %edx
	andl	$-64, %edx
	cmpl	$128, %edx
	jne	.LBB8_4
# %bb.3:
	andl	$63, %esi
	addq	$1, %rsi
	movq	%rsi, %rdx
	jmp	.LBB8_18
.LBB8_4:
	movl	%esi, %edi
	andl	$-32, %edi
	movl	$2, %edx
	cmpl	$192, %edi
	je	.LBB8_18
# %bb.5:
	movl	%esi, %edx
	addb	$15, %dl
	cmpb	$4, %dl
	jae	.LBB8_7
# %bb.6:
	movsbq	%dl, %rdx
	movq	.Lswitch.table.lpInsert(,%rdx,8), %rdx
	jmp	.LBB8_18
.LBB8_7:
	movl	%esi, %edx
	andl	$-16, %edx
	cmpl	$224, %edx
	jne	.LBB8_9
# %bb.8:
	andl	$15, %esi
	shll	$8, %esi
	movzbl	1(%rax), %edi
	orl	%esi, %edi
	movl	$2, %edx
	jmp	.LBB8_12
.LBB8_9:
	cmpb	$-1, %sil
	je	.LBB8_1
# %bb.10:
	cmpb	$-16, %sil
	jne	.LBB8_17
# %bb.11:
	movl	1(%rax), %edi
	movl	$5, %edx
.LBB8_12:
	addl	%edi, %edx
	cmpl	$128, %edx
	jb	.LBB8_18
# %bb.13:
	movl	$2, %ecx
	cmpl	$16383, %edx            # imm = 0x3FFF
	jb	.LBB8_18
# %bb.14:
	movl	$3, %ecx
	cmpl	$2097151, %edx          # imm = 0x1FFFFF
	jb	.LBB8_18
# %bb.15:
	cmpl	$268435455, %edx        # imm = 0xFFFFFFF
	movl	$5, %ecx
	sbbq	$0, %rcx
	jmp	.LBB8_18
.LBB8_17:
	xorl	%edx, %edx
.LBB8_18:
	addq	%rcx, %rdx
	addq	%rdx, %rax
	retq
.Lfunc_end8:
	.size	lpSkip, .Lfunc_end8-lpSkip
                                        # -- End function
	.globl	lpNext                  # -- Begin function lpNext
	.p2align	4, 0x90
	.type	lpNext,@function
lpNext:                                 # @lpNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	callq	lpSkip
	xorl	%ecx, %ecx
	cmpb	$-1, (%rax)
	cmoveq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	lpNext, .Lfunc_end9-lpNext
                                        # -- End function
	.globl	lpPrev                  # -- Begin function lpPrev
	.p2align	4, 0x90
	.type	lpPrev,@function
lpPrev:                                 # @lpPrev
# %bb.0:
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$6, %rax
	jne	.LBB10_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB10_2:
	leaq	-1(%rsi), %rax
	movzbl	-1(%rsi), %ecx
	movl	%ecx, %edi
	andl	$127, %edi
	movl	$1, %r8d
	testb	%cl, %cl
	js	.LBB10_4
# %bb.3:
	movq	%rdi, %rcx
	jmp	.LBB10_14
.LBB10_4:
	movzbl	-2(%rsi), %edx
	movl	%edx, %ecx
	andl	$127, %ecx
	shlq	$7, %rcx
	orq	%rdi, %rcx
	testb	%dl, %dl
	jns	.LBB10_9
# %bb.5:
	movzbl	-3(%rsi), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shlq	$14, %rdi
	orq	%rdi, %rcx
	testb	%dl, %dl
	jns	.LBB10_9
# %bb.6:
	movzbl	-4(%rsi), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shlq	$21, %rdi
	orq	%rdi, %rcx
	testb	%dl, %dl
	jns	.LBB10_9
# %bb.7:
	movzbl	-5(%rsi), %esi
	testb	%sil, %sil
	js	.LBB10_16
# %bb.8:
	andl	$127, %esi
	shlq	$28, %rsi
	orq	%rsi, %rcx
.LBB10_9:
	cmpq	$128, %rcx
	jb	.LBB10_14
# %bb.10:
	movl	$2, %r8d
	cmpq	$16383, %rcx            # imm = 0x3FFF
	jb	.LBB10_14
# %bb.11:
	movl	$3, %r8d
	cmpq	$2097151, %rcx          # imm = 0x1FFFFF
	jb	.LBB10_14
# %bb.12:
	movl	$4, %r8d
	cmpq	$268435455, %rcx        # imm = 0xFFFFFFF
	jae	.LBB10_13
	jmp	.LBB10_14
.LBB10_16:
	movq	$-1, %rcx
.LBB10_13:
	movl	$5, %r8d
.LBB10_14:
	addq	%r8, %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	retq
.Lfunc_end10:
	.size	lpPrev, .Lfunc_end10-lpPrev
                                        # -- End function
	.globl	lpFirst                 # -- Begin function lpFirst
	.p2align	4, 0x90
	.type	lpFirst,@function
lpFirst:                                # @lpFirst
# %bb.0:
	xorl	%ecx, %ecx
	cmpb	$-1, 6(%rdi)
	leaq	6(%rdi), %rax
	cmoveq	%rcx, %rax
	retq
.Lfunc_end11:
	.size	lpFirst, .Lfunc_end11-lpFirst
                                        # -- End function
	.globl	lpLast                  # -- Begin function lpLast
	.p2align	4, 0x90
	.type	lpLast,@function
lpLast:                                 # @lpLast
# %bb.0:
	movl	(%rdi), %eax
	leaq	(%rdi,%rax), %rsi
	addq	$-1, %rsi
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$6, %rax
	jne	.LBB12_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB12_2:
	leaq	-1(%rsi), %rax
	movzbl	-1(%rsi), %ecx
	movl	%ecx, %edi
	andl	$127, %edi
	movl	$1, %r8d
	testb	%cl, %cl
	js	.LBB12_4
# %bb.3:
	movq	%rdi, %rcx
	jmp	.LBB12_14
.LBB12_4:
	movzbl	-2(%rsi), %edx
	movl	%edx, %ecx
	andl	$127, %ecx
	shlq	$7, %rcx
	orq	%rdi, %rcx
	testb	%dl, %dl
	jns	.LBB12_9
# %bb.5:
	movzbl	-3(%rsi), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shlq	$14, %rdi
	orq	%rdi, %rcx
	testb	%dl, %dl
	jns	.LBB12_9
# %bb.6:
	movzbl	-4(%rsi), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shlq	$21, %rdi
	orq	%rdi, %rcx
	testb	%dl, %dl
	jns	.LBB12_9
# %bb.7:
	movzbl	-5(%rsi), %esi
	testb	%sil, %sil
	js	.LBB12_16
# %bb.8:
	andl	$127, %esi
	shlq	$28, %rsi
	orq	%rsi, %rcx
.LBB12_9:
	cmpq	$128, %rcx
	jb	.LBB12_14
# %bb.10:
	movl	$2, %r8d
	cmpq	$16383, %rcx            # imm = 0x3FFF
	jb	.LBB12_14
# %bb.11:
	movl	$3, %r8d
	cmpq	$2097151, %rcx          # imm = 0x1FFFFF
	jb	.LBB12_14
# %bb.12:
	movl	$4, %r8d
	cmpq	$268435455, %rcx        # imm = 0xFFFFFFF
	jae	.LBB12_13
	jmp	.LBB12_14
.LBB12_16:
	movq	$-1, %rcx
.LBB12_13:
	movl	$5, %r8d
.LBB12_14:
	addq	%r8, %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	retq
.Lfunc_end12:
	.size	lpLast, .Lfunc_end12-lpLast
                                        # -- End function
	.globl	lpLength                # -- Begin function lpLength
	.p2align	4, 0x90
	.type	lpLength,@function
lpLength:                               # @lpLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movzwl	4(%rdi), %ebx
	cmpl	$65535, %ebx            # imm = 0xFFFF
	jne	.LBB13_7
# %bb.1:
	movq	%rdi, %r14
	cmpb	$-1, 6(%rdi)
	je	.LBB13_2
# %bb.3:                                # %.preheader
	leaq	6(%r14), %rax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %ebx
	movq	%rax, %rdi
	callq	lpSkip
	cmpb	$-1, (%rax)
	jne	.LBB13_4
# %bb.5:
	cmpl	$65534, %ebx            # imm = 0xFFFE
	jbe	.LBB13_6
	jmp	.LBB13_7
.LBB13_2:
	xorl	%ebx, %ebx
.LBB13_6:
	movw	%bx, 4(%r14)
.LBB13_7:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	lpLength, .Lfunc_end13-lpLength
                                        # -- End function
	.globl	lpGet                   # -- Begin function lpGet
	.p2align	4, 0x90
	.type	lpGet,@function
lpGet:                                  # @lpGet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movzbl	(%rdi), %eax
	testb	%al, %al
	js	.LBB14_2
# %bb.1:
	andl	$127, %eax
.LBB14_17:
	movq	$-1, %rdx
	movq	$-1, %rsi
.LBB14_18:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	cmovaeq	%rsi, %rcx
	addq	%rax, %rcx
	testq	%rbx, %rbx
	je	.LBB14_20
# %bb.19:
	movl	$21, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	movq	%rax, (%r14)
	jmp	.LBB14_21
.LBB14_2:
	movl	%eax, %ecx
	andl	$-64, %ecx
	cmpl	$128, %ecx
	jne	.LBB14_4
# %bb.3:
	andl	$63, %eax
	movq	%rax, (%r14)
	addq	$1, %rdi
	movq	%rdi, %rbx
	jmp	.LBB14_21
.LBB14_20:
	movq	%rcx, (%r14)
	xorl	%ebx, %ebx
.LBB14_21:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB14_4:
	movl	%eax, %ecx
	andl	$-32, %ecx
	cmpl	$192, %ecx
	jne	.LBB14_6
# %bb.5:
	andl	$31, %eax
	shlq	$8, %rax
	movzbl	1(%rdi), %ecx
	orq	%rcx, %rax
	movq	$-8192, %rsi            # imm = 0xE000
	movl	$4096, %edx             # imm = 0x1000
	jmp	.LBB14_18
.LBB14_6:
	leal	15(%rax), %ecx
	cmpb	$3, %cl
	ja	.LBB14_12
# %bb.7:
	movzbl	%cl, %eax
	jmpq	*.LJTI14_0(,%rax,8)
.LBB14_8:
	movzwl	1(%rdi), %eax
	movq	$-65536, %rsi           # imm = 0xFFFF0000
	movl	$32768, %edx            # imm = 0x8000
	jmp	.LBB14_18
.LBB14_9:
	movzwl	1(%rdi), %ecx
	movzbl	3(%rdi), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movq	$-16777216, %rsi        # imm = 0xFF000000
	movl	$8388608, %edx          # imm = 0x800000
	jmp	.LBB14_18
.LBB14_10:
	movl	1(%rdi), %eax
	movabsq	$-4294967296, %rsi      # imm = 0xFFFFFFFF00000000
	movl	$2147483648, %edx       # imm = 0x80000000
	jmp	.LBB14_18
.LBB14_11:
	movq	1(%rdi), %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorl	%esi, %esi
	jmp	.LBB14_18
.LBB14_12:
	movl	%eax, %ecx
	andl	$-16, %ecx
	cmpl	$224, %ecx
	jne	.LBB14_14
# %bb.13:
	andl	$15, %eax
	shlq	$8, %rax
	movzbl	1(%rdi), %ecx
	orq	%rax, %rcx
	movq	%rcx, (%r14)
	addq	$2, %rdi
	movq	%rdi, %rbx
	jmp	.LBB14_21
.LBB14_14:
	cmpb	$-16, %al
	jne	.LBB14_16
# %bb.15:
	movl	1(%rdi), %eax
	movq	%rax, (%r14)
	addq	$5, %rdi
	movq	%rdi, %rbx
	jmp	.LBB14_21
.LBB14_16:
	movl	%eax, %ecx
	movabsq	$12345678900000000, %rax # imm = 0x2BDC545D587500
	orq	%rcx, %rax
	jmp	.LBB14_17
.Lfunc_end14:
	.size	lpGet, .Lfunc_end14-lpGet
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_8
	.quad	.LBB14_9
	.quad	.LBB14_10
	.quad	.LBB14_11
                                        # -- End function
	.text
	.globl	lpInsert                # -- Begin function lpInsert
	.p2align	4, 0x90
	.type	lpInsert,@function
lpInsert:                               # @lpInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%r9, %r12
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rsi, %rsi
	movl	$2, %r13d
	cmovnel	%r8d, %r13d
	cmpl	$1, %r13d
	jne	.LBB15_2
# %bb.1:
	movq	%rcx, %rdi
	callq	lpSkip
	movq	%rax, %rcx
	xorl	%r13d, %r13d
.LBB15_2:
	testq	%rbx, %rbx
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	je	.LBB15_5
# %bb.3:
	movq	%rcx, %r15
	leaq	-137(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	movq	%rbx, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	callq	lpEncodeGetType
	movl	%eax, %r8d
	movq	-120(%rbp), %rsi
	cmpq	$127, %rsi
	ja	.LBB15_6
# %bb.4:
	movb	%sil, -45(%rbp)
	movl	$1, %r9d
	jmp	.LBB15_13
.LBB15_5:
	movq	$0, -120(%rbp)
	movl	$-1, %r8d
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	jmp	.LBB15_14
.LBB15_6:
	movq	%rsi, %rax
	cmpq	$16382, %rsi            # imm = 0x3FFE
	ja	.LBB15_8
# %bb.7:
	shrq	$7, %rax
	movb	%al, -45(%rbp)
	movl	%esi, %eax
	orb	$-128, %al
	movb	%al, -44(%rbp)
	movl	$2, %r9d
	jmp	.LBB15_13
.LBB15_8:
	cmpq	$2097150, %rsi          # imm = 0x1FFFFE
	ja	.LBB15_10
# %bb.9:
	shrq	$14, %rax
	movb	%al, -45(%rbp)
	movq	%rsi, %rax
	shrq	$7, %rax
	orb	$-128, %al
	movb	%al, -44(%rbp)
	movl	%esi, %eax
	orb	$-128, %al
	movb	%al, -43(%rbp)
	movl	$3, %r9d
	jmp	.LBB15_13
.LBB15_10:
	cmpq	$268435454, %rsi        # imm = 0xFFFFFFE
	ja	.LBB15_12
# %bb.11:
	shrq	$21, %rax
	movb	%al, -45(%rbp)
	movq	%rsi, %rax
	shrq	$14, %rax
	orb	$-128, %al
	movb	%al, -44(%rbp)
	movq	%rsi, %rax
	shrq	$7, %rax
	orb	$-128, %al
	movb	%al, -43(%rbp)
	movl	%esi, %eax
	orb	$-128, %al
	movb	%al, -42(%rbp)
	movl	$4, %r9d
	jmp	.LBB15_13
.LBB15_12:
	shrq	$28, %rax
	movb	%al, -45(%rbp)
	movq	%rsi, %rax
	shrq	$21, %rax
	orb	$-128, %al
	movb	%al, -44(%rbp)
	movq	%rsi, %rax
	shrq	$14, %rax
	orb	$-128, %al
	movb	%al, -43(%rbp)
	movq	%rsi, %rax
	shrq	$7, %rax
	orb	$-128, %al
	movb	%al, -42(%rbp)
	movl	%esi, %eax
	orb	$-128, %al
	movb	%al, -41(%rbp)
	movl	$5, %r9d
.LBB15_13:
	movq	%r15, %rcx
.LBB15_14:
	movl	(%r14), %r15d
	cmpl	$2, %r13d
	movl	%r13d, -68(%rbp)        # 4-byte Spill
	movq	%r12, -112(%rbp)        # 8-byte Spill
	jne	.LBB15_17
# %bb.15:
	movq	%rcx, %rbx
	movzbl	(%rcx), %ecx
	movl	$1, %r12d
	testb	%cl, %cl
	js	.LBB15_18
.LBB15_16:
	movq	%r14, %rdi
	movl	$1, %eax
	jmp	.LBB15_24
.LBB15_17:
	movq	%r14, %rdi
	xorl	%r12d, %r12d
	jmp	.LBB15_26
.LBB15_18:
	movl	%ecx, %eax
	andl	$-64, %eax
	cmpl	$128, %eax
	jne	.LBB15_20
# %bb.19:
	movq	%r14, %rdi
	andl	$63, %ecx
	addq	$1, %rcx
	movq	%rcx, %rax
	jmp	.LBB15_24
.LBB15_20:
	movl	%ecx, %edx
	andl	$-32, %edx
	movl	$2, %eax
	cmpl	$192, %edx
	jne	.LBB15_22
# %bb.21:
	movq	%r14, %rdi
	jmp	.LBB15_24
.LBB15_22:
	movl	%ecx, %eax
	addb	$15, %al
	cmpb	$4, %al
	jae	.LBB15_64
# %bb.23:
	movq	%r14, %rdi
	movsbq	%al, %rax
	movq	.Lswitch.table.lpInsert(,%rax,8), %rax
.LBB15_24:
	movq	%rbx, %rcx
.LBB15_25:
	addl	%eax, %r12d
.LBB15_26:
	leaq	(%rsi,%r9), %r14
	leaq	(%r14,%r15), %r13
	subq	%r12, %r13
	movq	%r13, %rax
	shrq	$32, %rax
	je	.LBB15_28
.LBB15_27:
	xorl	%r14d, %r14d
	jmp	.LBB15_63
.LBB15_28:
	movq	%rcx, %rbx
	subq	%rdi, %rbx
	cmpq	%r15, %r13
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	jbe	.LBB15_31
# %bb.29:
	movq	%r13, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB15_27
# %bb.30:
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	addq	%rbx, %rcx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	jmp	.LBB15_32
.LBB15_31:
	movq	%rdi, -80(%rbp)         # 8-byte Spill
.LBB15_32:
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	je	.LBB15_34
# %bb.33:
	leaq	(%rcx,%r12), %rsi
	addq	%rcx, %r14
	movq	%r15, %rdx
	subq	%rbx, %rdx
	subq	%r12, %rdx
	movq	%r14, %rdi
	jmp	.LBB15_35
.LBB15_34:
	leaq	(%rcx,%rsi), %rdi
	addq	%r9, %rdi
	movq	%r15, %rdx
	subq	%rbx, %rdx
	movq	%rcx, %rsi
.LBB15_35:
	callq	memmove
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	-112(%rbp), %r12        # 8-byte Reload
	cmpq	%r15, %r13
	jae	.LBB15_39
# %bb.36:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB15_27
# %bb.37:
	movq	%rax, %r14
	addq	%rax, %rbx
	movq	%rbx, %rcx
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	testq	%r12, %r12
	jne	.LBB15_40
.LBB15_38:
	testq	%r15, %r15
	jne	.LBB15_41
	jmp	.LBB15_55
.LBB15_39:
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	-52(%rbp), %ebx         # 4-byte Reload
	testq	%r12, %r12
	je	.LBB15_38
.LBB15_40:
	movq	%rcx, (%r12)
	testq	%r15, %r15
	je	.LBB15_45
.LBB15_41:
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	je	.LBB15_47
# %bb.42:
	cmpl	$63, %ebx
	ja	.LBB15_50
# %bb.43:
	movl	%ebx, %eax
	orb	$-128, %al
	movb	%al, (%rcx)
	leaq	1(%rcx), %rdi
	movl	%ebx, %edx
	movq	%r15, %rsi
	jmp	.LBB15_48
.LBB15_45:
	cmpb	$-1, (%rcx)
	jne	.LBB15_55
# %bb.46:
	movq	$0, (%r12)
	jmp	.LBB15_55
.LBB15_47:
	leaq	-137(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%r8, %rdx
.LBB15_48:
	movq	%rcx, %rbx
	movq	%r8, %r12
	callq	memcpy
	jmp	.LBB15_54
.LBB15_50:
	cmpl	$4095, %ebx             # imm = 0xFFF
	ja	.LBB15_52
# %bb.51:
	movl	%ebx, %eax
	shrl	$8, %eax
	orb	$-32, %al
	movb	%al, (%rcx)
	movb	%bl, 1(%rcx)
	leaq	2(%rcx), %rdi
	movl	%ebx, %edx
	jmp	.LBB15_53
.LBB15_52:
	movb	$-16, (%rcx)
	movb	%bl, 1(%rcx)
	movb	%bh, 2(%rcx)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 3(%rcx)
	movl	%ebx, %edx
	shrl	$24, %ebx
	movb	%bl, 4(%rcx)
	leaq	5(%rcx), %rdi
.LBB15_53:
	movq	%r15, %rsi
	movq	%rcx, %rbx
	callq	memcpy
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB15_54:
	addq	%r12, %rbx
	leaq	-45(%rbp), %rsi
	movq	%rbx, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
.LBB15_55:
	testq	%r15, %r15
	je	.LBB15_57
# %bb.56:
	cmpl	$2, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB15_62
.LBB15_57:
	movzwl	4(%r14), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB15_62
# %bb.58:
	testq	%r15, %r15
	je	.LBB15_60
# %bb.59:
	addl	$1, %eax
	jmp	.LBB15_61
.LBB15_60:
	addl	$-1, %eax
.LBB15_61:
	movw	%ax, 4(%r14)
.LBB15_62:
	movl	%r13d, (%r14)
.LBB15_63:
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_64:
	movl	%ecx, %eax
	andl	$-16, %eax
	cmpl	$224, %eax
	jne	.LBB15_66
# %bb.65:
	andl	$15, %ecx
	shll	$8, %ecx
	movzbl	1(%rbx), %edx
	orl	%ecx, %edx
	movq	%rbx, %rcx
	movl	$2, %eax
	jmp	.LBB15_69
.LBB15_66:
	cmpb	$-1, %cl
	je	.LBB15_16
# %bb.67:
	cmpb	$-16, %cl
	jne	.LBB15_74
# %bb.68:
	movq	%rbx, %rcx
	movl	1(%rbx), %edx
	movl	$5, %eax
.LBB15_69:
	addl	%edx, %eax
	cmpl	$128, %eax
	jae	.LBB15_71
# %bb.70:
	movq	%r14, %rdi
	jmp	.LBB15_25
.LBB15_71:
	movl	$2, %r12d
	movq	%r14, %rdi
	cmpl	$16383, %eax            # imm = 0x3FFF
	jb	.LBB15_25
# %bb.72:
	movl	$3, %r12d
	cmpl	$2097151, %eax          # imm = 0x1FFFFF
	jb	.LBB15_25
# %bb.73:
	cmpl	$268435455, %eax        # imm = 0xFFFFFFF
	movl	$5, %r12d
	sbbq	$0, %r12
	jmp	.LBB15_25
.LBB15_74:
	movq	%r14, %rdi
	xorl	%eax, %eax
	jmp	.LBB15_24
.Lfunc_end15:
	.size	lpInsert, .Lfunc_end15-lpInsert
                                        # -- End function
	.globl	lpAppend                # -- Begin function lpAppend
	.p2align	4, 0x90
	.type	lpAppend,@function
lpAppend:                               # @lpAppend
# %bb.0:
	movl	(%rdi), %eax
	leaq	(%rdi,%rax), %rcx
	addq	$-1, %rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	lpInsert                # TAILCALL
.Lfunc_end16:
	.size	lpAppend, .Lfunc_end16-lpAppend
                                        # -- End function
	.globl	lpDelete                # -- Begin function lpDelete
	.p2align	4, 0x90
	.type	lpDelete,@function
lpDelete:                               # @lpDelete
# %bb.0:
	movq	%rdx, %r9
	movq	%rsi, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %r8d
	jmp	lpInsert                # TAILCALL
.Lfunc_end17:
	.size	lpDelete, .Lfunc_end17-lpDelete
                                        # -- End function
	.globl	lpBytes                 # -- Begin function lpBytes
	.p2align	4, 0x90
	.type	lpBytes,@function
lpBytes:                                # @lpBytes
# %bb.0:
	movl	(%rdi), %eax
	retq
.Lfunc_end18:
	.size	lpBytes, .Lfunc_end18-lpBytes
                                        # -- End function
	.globl	lpSeek                  # -- Begin function lpSeek
	.p2align	4, 0x90
	.type	lpSeek,@function
lpSeek:                                 # @lpSeek
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movzwl	4(%rdi), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jne	.LBB19_1
# %bb.4:
	testq	%rbx, %rbx
	js	.LBB19_12
.LBB19_5:
	xorl	%ecx, %ecx
	cmpb	$-1, 6(%r14)
	leaq	6(%r14), %rax
	cmoveq	%rcx, %rax
	testq	%rbx, %rbx
	jle	.LBB19_3
	.p2align	4, 0x90
# %bb.6:
	testq	%rax, %rax
	je	.LBB19_3
.LBB19_7:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	callq	lpSkip
	cmpb	$-1, (%rax)
	jne	.LBB19_9
# %bb.8:                                #   in Loop: Header=BB19_7 Depth=1
	xorl	%eax, %eax
.LBB19_9:                               #   in Loop: Header=BB19_7 Depth=1
	cmpq	$2, %rbx
	jl	.LBB19_3
# %bb.10:                               #   in Loop: Header=BB19_7 Depth=1
	addq	$-1, %rbx
	testq	%rax, %rax
	jne	.LBB19_7
	jmp	.LBB19_3
.LBB19_1:
	movq	%rbx, %rcx
	sarq	$63, %rcx
	andl	%eax, %ecx
	addq	%rbx, %rcx
	cmpq	%rax, %rcx
	jae	.LBB19_2
# %bb.11:
	movl	%eax, %edx
	shrl	%edx
	xorl	%esi, %esi
	cmpq	%rdx, %rcx
	cmovgq	%rax, %rsi
	movq	%rcx, %rbx
	subq	%rsi, %rbx
	cmpq	%rdx, %rcx
	jle	.LBB19_5
.LBB19_12:
	movq	%r14, %rdi
	callq	lpLast
	cmpq	$-2, %rbx
	jg	.LBB19_3
	.p2align	4, 0x90
# %bb.13:
	testq	%rax, %rax
	je	.LBB19_3
.LBB19_14:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	subq	%r14, %rcx
	cmpq	$6, %rcx
	je	.LBB19_2
# %bb.15:                               #   in Loop: Header=BB19_14 Depth=1
	movzbl	-1(%rax), %ecx
	movl	%ecx, %esi
	andl	$127, %esi
	movl	$1, %edx
	testb	%cl, %cl
	js	.LBB19_17
# %bb.16:                               #   in Loop: Header=BB19_14 Depth=1
	movq	%rsi, %rcx
	jmp	.LBB19_27
	.p2align	4, 0x90
.LBB19_17:                              #   in Loop: Header=BB19_14 Depth=1
	movzbl	-2(%rax), %edi
	movl	%edi, %ecx
	andl	$127, %ecx
	shlq	$7, %rcx
	orq	%rsi, %rcx
	testb	%dil, %dil
	jns	.LBB19_22
# %bb.18:                               #   in Loop: Header=BB19_14 Depth=1
	movzbl	-3(%rax), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shlq	$14, %rdi
	orq	%rdi, %rcx
	testb	%sil, %sil
	jns	.LBB19_22
# %bb.19:                               #   in Loop: Header=BB19_14 Depth=1
	movzbl	-4(%rax), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shlq	$21, %rdi
	orq	%rdi, %rcx
	testb	%sil, %sil
	jns	.LBB19_22
# %bb.20:                               #   in Loop: Header=BB19_14 Depth=1
	movzbl	-5(%rax), %esi
	testb	%sil, %sil
	js	.LBB19_29
# %bb.21:                               #   in Loop: Header=BB19_14 Depth=1
	andl	$127, %esi
	shlq	$28, %rsi
	orq	%rsi, %rcx
	.p2align	4, 0x90
.LBB19_22:                              #   in Loop: Header=BB19_14 Depth=1
	cmpq	$128, %rcx
	jb	.LBB19_27
# %bb.23:                               #   in Loop: Header=BB19_14 Depth=1
	movl	$2, %edx
	cmpq	$16383, %rcx            # imm = 0x3FFF
	jb	.LBB19_27
# %bb.24:                               #   in Loop: Header=BB19_14 Depth=1
	movl	$3, %edx
	cmpq	$2097151, %rcx          # imm = 0x1FFFFF
	jb	.LBB19_27
# %bb.25:                               #   in Loop: Header=BB19_14 Depth=1
	movl	$4, %edx
	cmpq	$268435455, %rcx        # imm = 0xFFFFFFF
	jae	.LBB19_26
	jmp	.LBB19_27
.LBB19_29:                              #   in Loop: Header=BB19_14 Depth=1
	movq	$-1, %rcx
.LBB19_26:                              #   in Loop: Header=BB19_14 Depth=1
	movl	$5, %edx
	.p2align	4, 0x90
.LBB19_27:                              #   in Loop: Header=BB19_14 Depth=1
	addq	%rdx, %rcx
	subq	%rcx, %rax
	cmpq	$-3, %rbx
	jg	.LBB19_3
# %bb.28:                               #   in Loop: Header=BB19_14 Depth=1
	addq	$1, %rbx
	testq	%rax, %rax
	jne	.LBB19_14
	jmp	.LBB19_3
.LBB19_2:
	xorl	%eax, %eax
.LBB19_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	lpSeek, .Lfunc_end19-lpSeek
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lld"
	.size	.L.str, 5

	.type	.Lswitch.table.lpCurrentEncodedSize,@object # @switch.table.lpCurrentEncodedSize
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2
.Lswitch.table.lpCurrentEncodedSize:
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	9                       # 0x9
	.size	.Lswitch.table.lpCurrentEncodedSize, 16

	.type	.Lswitch.table.lpInsert,@object # @switch.table.lpInsert
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.Lswitch.table.lpInsert:
	.quad	3                       # 0x3
	.quad	4                       # 0x4
	.quad	5                       # 0x5
	.quad	9                       # 0x9
	.size	.Lswitch.table.lpInsert, 32

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
