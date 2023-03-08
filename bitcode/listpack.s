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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lpFree, .Lfunc_end2-lpFree
                                        # -- End function
	.globl	lpEncodeGetType         # -- Begin function lpEncodeGetType
	.p2align	4, 0x90
	.type	lpEncodeGetType,@function
lpEncodeGetType:                        # @lpEncodeGetType
# %bb.0:
	pushq	%rbp
	pushq	%rbx
	testl	%esi, %esi
	je	.LBB3_7
# %bb.1:
	movq	%rdx, %r11
	movb	(%rdi), %bl
	cmpl	$1, %esi
	jne	.LBB3_5
# %bb.2:
	cmpb	$48, %bl
	jne	.LBB3_5
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
.LBB3_4:
	movb	%dl, (%r11)
	xorl	%eax, %eax
	movl	$1, %esi
	jmp	.LBB3_10
.LBB3_5:
	cmpb	$45, %bl
	jne	.LBB3_11
# %bb.6:
	cmpl	$1, %esi
	jne	.LBB3_12
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_8:
	addl	$1, %esi
.LBB3_9:
	movl	$1, %eax
.LBB3_10:
	movl	%esi, %edx
	movq	%rdx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%rbp
	retq
.LBB3_11:
	xorl	%r8d, %r8d
	movl	$1, %eax
	jmp	.LBB3_13
.LBB3_12:
	addq	$1, %rdi
	movb	(%rdi), %bl
	movl	$1, %r8d
	movl	$2, %eax
.LBB3_13:
	leal	-49(%rbx), %edx
	cmpb	$8, %dl
	ja	.LBB3_23
# %bb.14:
	movl	%esi, %r9d
	movsbq	%bl, %rdx
	addq	$-48, %rdx
	cmpq	%r9, %rax
	jae	.LBB3_20
# %bb.15:                               # %.preheader
	addq	$1, %rdi
	movabsq	$1844674407370955161, %r10 # imm = 0x1999999999999999
	.p2align	4, 0x90
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rdx
	ja	.LBB3_29
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=1
	movsbq	(%rdi), %rbx
	leal	-48(%rbx), %ebp
	cmpb	$9, %bpl
	ja	.LBB3_29
# %bb.18:                               #   in Loop: Header=BB3_16 Depth=1
	addq	%rdx, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	movl	$47, %ebp
	subq	%rbx, %rbp
	cmpq	%rbp, %rdx
	ja	.LBB3_29
# %bb.19:                               #   in Loop: Header=BB3_16 Depth=1
	addq	%rbx, %rdx
	addq	$-48, %rdx
	addq	$1, %rax
	addq	$1, %rdi
	cmpq	%r9, %rax
	jb	.LBB3_16
.LBB3_20:
	testl	%r8d, %r8d
	je	.LBB3_25
# %bb.21:
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	cmpq	%rax, %rdx
	ja	.LBB3_29
# %bb.22:
	negq	%rdx
	jmp	.LBB3_26
.LBB3_23:
	cmpl	$1, %esi
	jne	.LBB3_29
# %bb.24:
	cmpb	$48, %bl
	je	.LBB3_3
	jmp	.LBB3_29
.LBB3_25:
	testq	%rdx, %rdx
	js	.LBB3_29
.LBB3_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rdx
	jbe	.LBB3_4
# %bb.27:
	leaq	4096(%rdx), %rax
	cmpq	$8191, %rax             # imm = 0x1FFF
	ja	.LBB3_34
# %bb.28:
	leaq	8192(%rdx), %rax
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$8, %rdx
	orb	$-64, %dl
	movb	%dl, (%r11)
	movb	%al, 1(%r11)
	xorl	%eax, %eax
	movl	$2, %esi
	jmp	.LBB3_10
.LBB3_29:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %esi
	jbe	.LBB3_8
# %bb.31:
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB3_33
# %bb.32:
	addl	$2, %esi
	jmp	.LBB3_9
.LBB3_33:
	addl	$5, %esi
	jmp	.LBB3_9
.LBB3_34:
	movswq	%dx, %rax
	cmpq	%rdx, %rax
	jne	.LBB3_36
# %bb.35:
	leaq	65536(%rdx), %rax
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rax
	movq	%r11, %rdx
	movb	$-15, (%r11)
	movb	%al, 1(%r11)
	movb	%ah, 2(%rdx)
	xorl	%eax, %eax
	movl	$3, %esi
	jmp	.LBB3_10
.LBB3_36:
	leaq	8388608(%rdx), %rax
	cmpq	$16777215, %rax         # imm = 0xFFFFFF
	ja	.LBB3_38
# %bb.37:
	leaq	16777216(%rdx), %rax
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rax
	movq	%r11, %rdx
	movb	$-14, (%r11)
	movb	%al, 1(%r11)
	movb	%ah, 2(%rdx)
	shrq	$16, %rax
	movb	%al, 3(%r11)
	xorl	%eax, %eax
	movl	$4, %esi
	jmp	.LBB3_10
.LBB3_38:
	movslq	%edx, %rax
	cmpq	%rdx, %rax
	movq	%r11, %rsi
	jne	.LBB3_40
# %bb.39:
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rdx, %rax
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rax
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
	jmp	.LBB3_10
.LBB3_40:
	movb	$-12, (%rsi)
	movb	%dl, 1(%rsi)
	movb	%dh, 2(%rsi)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, 3(%rsi)
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, 4(%rsi)
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, 5(%rsi)
	movq	%rdx, %rax
	shrq	$40, %rax
	movb	%al, 6(%rsi)
	movq	%rdx, %rax
	shrq	$48, %rax
	movb	%al, 7(%rsi)
	shrq	$56, %rdx
	movb	%dl, 8(%rsi)
	xorl	%eax, %eax
	movl	$9, %esi
	jmp	.LBB3_10
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	lpDecodeBacklen, .Lfunc_end5-lpDecodeBacklen
                                        # -- End function
	.globl	lpEncodeString          # -- Begin function lpEncodeString
	.p2align	4, 0x90
	.type	lpEncodeString,@function
lpEncodeString:                         # @lpEncodeString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$63, %edx
	ja	.LBB6_3
# %bb.1:
	movl	%edx, %eax
	orb	$-128, %al
	movb	%al, (%rdi)
	addq	$1, %rdi
	movl	%edx, %edx
	jmp	.LBB6_6
.LBB6_3:
	cmpl	$4095, %edx             # imm = 0xFFF
	ja	.LBB6_5
# %bb.4:
	movl	%edx, %eax
	shrl	$8, %eax
	orb	$-32, %al
	movb	%al, (%rdi)
	movb	%dl, 1(%rdi)
	addq	$2, %rdi
	movl	%edx, %edx
	jmp	.LBB6_6
.LBB6_5:
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
.LBB6_6:
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB7_10:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$1, %edx
	testb	%sil, %sil
	js	.LBB8_1
.LBB8_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_17:
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB8_1:
	movl	%esi, %edx
	andl	$-64, %edx
	cmpl	$128, %edx
	jne	.LBB8_3
# %bb.2:
	andl	$63, %esi
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	movq	%rsi, %rdx
	jmp	.LBB8_17
.LBB8_3:
	movl	%esi, %edi
	andl	$-32, %edi
	movl	$2, %edx
	cmpl	$192, %edi
	je	.LBB8_16
# %bb.4:
	movl	%esi, %edx
	addb	$15, %dl
	cmpb	$4, %dl
	jae	.LBB8_5
# %bb.15:
	movsbq	%dl, %rdx
	movq	.Lswitch.table.lpInsert(,%rdx,8), %rdx
	jmp	.LBB8_16
.LBB8_5:
	movl	%esi, %edx
	andl	$-16, %edx
	cmpl	$224, %edx
	jne	.LBB8_7
# %bb.6:
	andl	$15, %esi
	shll	$8, %esi
	movzbl	1(%rax), %ecx
	orl	%esi, %ecx
	movl	$2, %edx
	jmp	.LBB8_10
.LBB8_7:
	movl	$1, %edx
	cmpb	$-1, %sil
	je	.LBB8_16
# %bb.8:
	cmpb	$-16, %sil
	jne	.LBB8_14
# %bb.9:
	movl	1(%rax), %ecx
	movl	$5, %edx
.LBB8_10:
	addl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	cmpl	$128, %edx
	jb	.LBB8_17
# %bb.11:
	movl	$2, %ecx
	cmpl	$16383, %edx            # imm = 0x3FFF
	jb	.LBB8_17
# %bb.12:
	movl	$3, %ecx
	cmpl	$2097151, %edx          # imm = 0x1FFFFF
	jb	.LBB8_17
# %bb.13:
	cmpl	$268435455, %edx        # imm = 0xFFFFFFF
	movl	$5, %ecx
	sbbq	$0, %rcx
	jmp	.LBB8_17
.LBB8_14:
	xorl	%edx, %edx
	jmp	.LBB8_16
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB10_2:
	leaq	-1(%rsi), %rax
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andl	$127, %ecx
	testb	%dl, %dl
	js	.LBB10_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	jmp	.LBB10_14
.LBB10_4:
	movzbl	-2(%rsi), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shlq	$7, %rdi
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
	movzbl	-5(%rsi), %edx
	testb	%dl, %dl
	js	.LBB10_16
# %bb.8:
	andl	$127, %edx
	shlq	$28, %rdx
	orq	%rdx, %rcx
.LBB10_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	cmpq	$128, %rcx
	jb	.LBB10_14
# %bb.10:
	movl	$2, %edx
	cmpq	$16383, %rcx            # imm = 0x3FFF
	jb	.LBB10_14
# %bb.11:
	movl	$3, %edx
	cmpq	$2097151, %rcx          # imm = 0x1FFFFF
	jb	.LBB10_14
# %bb.12:
	movl	$4, %edx
	cmpq	$268435455, %rcx        # imm = 0xFFFFFFF
	jae	.LBB10_13
	jmp	.LBB10_14
.LBB10_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
.LBB10_13:
	movl	$5, %edx
.LBB10_14:
	addq	%rdx, %rcx
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	leaq	(%rdi,%rax), %rdx
	addq	$-1, %rdx
	movq	%rdx, %rax
	subq	%rdi, %rax
	cmpq	$6, %rax
	jne	.LBB12_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB12_15
.LBB12_2:
	leaq	-1(%rdx), %rax
	movzbl	-1(%rdx), %esi
	movl	%esi, %ecx
	andl	$127, %ecx
	testb	%sil, %sil
	js	.LBB12_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	jmp	.LBB12_14
.LBB12_4:
	movzbl	-2(%rdx), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shlq	$7, %rdi
	orq	%rdi, %rcx
	testb	%sil, %sil
	jns	.LBB12_9
# %bb.5:
	movzbl	-3(%rdx), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shlq	$14, %rdi
	orq	%rdi, %rcx
	testb	%sil, %sil
	jns	.LBB12_9
# %bb.6:
	movzbl	-4(%rdx), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shlq	$21, %rdi
	orq	%rdi, %rcx
	testb	%sil, %sil
	jns	.LBB12_9
# %bb.7:
	movzbl	-5(%rdx), %edx
	testb	%dl, %dl
	js	.LBB12_16
# %bb.8:
	andl	$127, %edx
	shlq	$28, %rdx
	orq	%rdx, %rcx
.LBB12_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	cmpq	$128, %rcx
	jb	.LBB12_14
# %bb.10:
	movl	$2, %edx
	cmpq	$16383, %rcx            # imm = 0x3FFF
	jb	.LBB12_14
# %bb.11:
	movl	$3, %edx
	cmpq	$2097151, %rcx          # imm = 0x1FFFFF
	jb	.LBB12_14
# %bb.12:
	movl	$4, %edx
	cmpq	$268435455, %rcx        # imm = 0xFFFFFFF
	jae	.LBB12_13
	jmp	.LBB12_14
.LBB12_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
.LBB12_13:
	movl	$5, %edx
.LBB12_14:
	addq	%rdx, %rcx
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
.LBB12_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%r9, %r15
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
	movq	%r15, -96(%rbp)         # 8-byte Spill
	je	.LBB15_5
# %bb.3:
	movq	%rcx, %r15
	leaq	-129(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	%rbx, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	callq	lpEncodeGetType
	movl	%eax, %r8d
	movq	-112(%rbp), %rsi
	cmpq	$127, %rsi
	ja	.LBB15_6
# %bb.4:
	movb	%sil, -45(%rbp)
	movl	$1, %r9d
	jmp	.LBB15_13
.LBB15_5:
	movq	$0, -112(%rbp)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB15_14:
	movl	(%r14), %r15d
	cmpl	$2, %r13d
	movl	%r13d, -72(%rbp)        # 4-byte Spill
	jne	.LBB15_19
# %bb.15:
	movq	%rcx, %rbx
	movzbl	(%rcx), %ecx
	movl	$1, %r12d
	movl	$1, %eax
	testb	%cl, %cl
	js	.LBB15_28
.LBB15_16:
	movq	%r14, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB15_17:
	movq	%rbx, %rcx
.LBB15_18:
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r12d
	jmp	.LBB15_20
.LBB15_19:
	movq	%r14, %rdi
	xorl	%r12d, %r12d
.LBB15_20:
	leaq	(%rsi,%r9), %r14
	leaq	(%r14,%r15), %r13
	subq	%r12, %r13
	movq	%r13, %rax
	shrq	$32, %rax
	je	.LBB15_22
.LBB15_21:
	xorl	%r14d, %r14d
	jmp	.LBB15_62
.LBB15_22:
	movq	%rcx, %rbx
	subq	%rdi, %rbx
	cmpq	%r15, %r13
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	jbe	.LBB15_25
# %bb.23:
	movq	%r13, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB15_21
# %bb.24:
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	addq	%rbx, %rcx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	jmp	.LBB15_26
.LBB15_25:
	movq	%rdi, -80(%rbp)         # 8-byte Spill
.LBB15_26:
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	je	.LBB15_30
# %bb.27:
	leaq	(%rcx,%r12), %rsi
	addq	%rcx, %r14
	movq	%r15, %rdx
	subq	%rbx, %rdx
	subq	%r12, %rdx
	movq	%r14, %rdi
	jmp	.LBB15_31
.LBB15_28:
	movl	%ecx, %eax
	andl	$-64, %eax
	cmpl	$128, %eax
	jne	.LBB15_44
# %bb.29:
	movq	%r14, %rdi
	andl	$63, %ecx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	movq	%rcx, %rax
	jmp	.LBB15_17
.LBB15_30:
	leaq	(%rcx,%rsi), %rdi
	addq	%r9, %rdi
	movq	%r15, %rdx
	subq	%rbx, %rdx
	movq	%rcx, %rsi
.LBB15_31:
	callq	memmove
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpq	%r15, %r13
	jae	.LBB15_34
# %bb.32:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB15_21
# %bb.33:
	movq	%rax, %r14
	addq	%rax, %rbx
	movq	%rbx, %rdi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB15_35
.LBB15_34:
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
.LBB15_35:
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	testq	%rax, %rax
	je	.LBB15_39
# %bb.36:
	movq	%rdi, (%rax)
	testq	%rbx, %rbx
	jne	.LBB15_40
# %bb.37:
	cmpb	$-1, (%rdi)
	jne	.LBB15_54
# %bb.38:
	movq	$0, (%rax)
	jmp	.LBB15_54
.LBB15_39:
	testq	%rbx, %rbx
	je	.LBB15_54
.LBB15_40:
	testl	%esi, %esi
	je	.LBB15_47
# %bb.41:
	cmpl	$63, %ecx
	ja	.LBB15_49
# %bb.42:
	movl	%ecx, %eax
	orb	$-128, %al
	movb	%al, (%rdi)
	movq	%rdi, %r15
	addq	$1, %rdi
	movl	%ecx, %edx
	jmp	.LBB15_52
.LBB15_44:
	movl	%ecx, %edx
	andl	$-32, %edx
	movl	$2, %eax
	cmpl	$192, %edx
	je	.LBB15_16
# %bb.45:
	movl	%ecx, %eax
	addb	$15, %al
	cmpb	$4, %al
	jae	.LBB15_63
# %bb.46:
	movsbq	%al, %rax
	movq	.Lswitch.table.lpInsert(,%rax,8), %rax
	jmp	.LBB15_16
.LBB15_47:
	leaq	-129(%rbp), %rsi
	movq	%rdi, %r15
	callq	memcpy
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r15, %rdi
	jmp	.LBB15_53
.LBB15_49:
	cmpl	$4095, %ecx             # imm = 0xFFF
	ja	.LBB15_51
# %bb.50:
	movl	%ecx, %eax
	shrl	$8, %eax
	orb	$-32, %al
	movb	%al, (%rdi)
	movb	%cl, 1(%rdi)
	movq	%rdi, %r15
	addq	$2, %rdi
	movl	%ecx, %edx
	jmp	.LBB15_52
.LBB15_51:
	movb	$-16, (%rdi)
	movb	%cl, 1(%rdi)
	movb	%ch, 2(%rdi)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 3(%rdi)
	movl	%ecx, %edx
	shrl	$24, %ecx
	movb	%cl, 4(%rdi)
	movq	%rdi, %r15
	addq	$5, %rdi
.LBB15_52:
	movq	%rbx, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
.LBB15_53:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdi
	leaq	-45(%rbp), %rsi
	callq	memcpy
.LBB15_54:
	testq	%rbx, %rbx
	je	.LBB15_56
# %bb.55:
	cmpl	$2, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB15_61
.LBB15_56:
	movzwl	4(%r14), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB15_61
# %bb.57:
	testq	%rbx, %rbx
	je	.LBB15_59
# %bb.58:
	addl	$1, %eax
	jmp	.LBB15_60
.LBB15_59:
	addl	$-1, %eax
.LBB15_60:
	movw	%ax, 4(%r14)
.LBB15_61:
	movl	%r13d, (%r14)
.LBB15_62:
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
.LBB15_63:
	movl	%ecx, %eax
	andl	$-16, %eax
	cmpl	$224, %eax
	jne	.LBB15_65
# %bb.64:
	andl	$15, %ecx
	shll	$8, %ecx
	movzbl	1(%rbx), %edx
	orl	%ecx, %edx
	movq	%rbx, %rcx
	movl	$2, %eax
	jmp	.LBB15_68
.LBB15_65:
	movl	$1, %eax
	cmpb	$-1, %cl
	je	.LBB15_16
# %bb.66:
	cmpb	$-16, %cl
	jne	.LBB15_73
# %bb.67:
	movq	%rbx, %rcx
	movl	1(%rbx), %edx
	movl	$5, %eax
.LBB15_68:
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	cmpl	$128, %eax
	jae	.LBB15_70
# %bb.69:
	movq	%r14, %rdi
	jmp	.LBB15_18
.LBB15_70:
	movl	$2, %r12d
	movq	%r14, %rdi
	cmpl	$16383, %eax            # imm = 0x3FFF
	jb	.LBB15_18
# %bb.71:
	movl	$3, %r12d
	cmpl	$2097151, %eax          # imm = 0x1FFFFF
	jb	.LBB15_18
# %bb.72:
	cmpl	$268435455, %eax        # imm = 0xFFFFFFF
	movl	$5, %r12d
	sbbq	$0, %r12
	jmp	.LBB15_18
.LBB15_73:
	xorl	%eax, %eax
	jmp	.LBB15_16
.Lfunc_end15:
	.size	lpInsert, .Lfunc_end15-lpInsert
                                        # -- End function
	.globl	lpAppend                # -- Begin function lpAppend
	.p2align	4, 0x90
	.type	lpAppend,@function
lpAppend:                               # @lpAppend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rdi), %eax
	leaq	(%rdi,%rax), %rcx
	addq	$-1, %rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	lpInsert
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	lpAppend, .Lfunc_end16-lpAppend
                                        # -- End function
	.globl	lpDelete                # -- Begin function lpDelete
	.p2align	4, 0x90
	.type	lpDelete,@function
lpDelete:                               # @lpDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %r9
	movq	%rsi, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %r8d
	callq	lpInsert
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	lpDelete, .Lfunc_end17-lpDelete
                                        # -- End function
	.globl	lpBytes                 # -- Begin function lpBytes
	.p2align	4, 0x90
	.type	lpBytes,@function
lpBytes:                                # @lpBytes
# %bb.0:
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
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
# %bb.9:
	testq	%rbx, %rbx
	js	.LBB19_3
.LBB19_10:
	xorl	%ecx, %ecx
	cmpb	$-1, 6(%r14)
	leaq	6(%r14), %rax
	cmoveq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jle	.LBB19_8
	.p2align	4, 0x90
# %bb.11:
	testq	%rax, %rax
	je	.LBB19_8
.LBB19_12:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	callq	lpSkip
	cmpb	$-1, (%rax)
	jne	.LBB19_14
# %bb.13:                               #   in Loop: Header=BB19_12 Depth=1
	xorl	%eax, %eax
.LBB19_14:                              #   in Loop: Header=BB19_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rbx
	jl	.LBB19_8
# %bb.15:                               #   in Loop: Header=BB19_12 Depth=1
	addq	$-1, %rbx
	testq	%rax, %rax
	jne	.LBB19_12
	jmp	.LBB19_8
.LBB19_1:
	movq	%rbx, %rcx
	sarq	$63, %rcx
	andl	%eax, %ecx
	addq	%rbx, %rcx
	cmpq	%rax, %rcx
	jae	.LBB19_7
# %bb.2:
	movl	%eax, %edx
	shrl	%edx
	xorl	%esi, %esi
	cmpq	%rdx, %rcx
	cmovgq	%rax, %rsi
	movq	%rcx, %rbx
	subq	%rsi, %rbx
	cmpq	%rdx, %rcx
	jle	.LBB19_10
.LBB19_3:
	movq	%r14, %rdi
	callq	lpLast
	cmpq	$-2, %rbx
	jg	.LBB19_8
	.p2align	4, 0x90
# %bb.4:
	testq	%rax, %rax
	je	.LBB19_8
.LBB19_5:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	subq	%r14, %rcx
	cmpq	$6, %rcx
	je	.LBB19_6
# %bb.16:                               #   in Loop: Header=BB19_5 Depth=1
	movzbl	-1(%rax), %edx
	movl	%edx, %ecx
	andl	$127, %ecx
	testb	%dl, %dl
	js	.LBB19_18
# %bb.17:                               #   in Loop: Header=BB19_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	jmp	.LBB19_28
	.p2align	4, 0x90
.LBB19_18:                              #   in Loop: Header=BB19_5 Depth=1
	movzbl	-2(%rax), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shlq	$7, %rsi
	orq	%rsi, %rcx
	testb	%dl, %dl
	jns	.LBB19_23
# %bb.19:                               #   in Loop: Header=BB19_5 Depth=1
	movzbl	-3(%rax), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shlq	$14, %rsi
	orq	%rsi, %rcx
	testb	%dl, %dl
	jns	.LBB19_23
# %bb.20:                               #   in Loop: Header=BB19_5 Depth=1
	movzbl	-4(%rax), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shlq	$21, %rsi
	orq	%rsi, %rcx
	testb	%dl, %dl
	jns	.LBB19_23
# %bb.21:                               #   in Loop: Header=BB19_5 Depth=1
	movzbl	-5(%rax), %edx
	testb	%dl, %dl
	js	.LBB19_30
# %bb.22:                               #   in Loop: Header=BB19_5 Depth=1
	andl	$127, %edx
	shlq	$28, %rdx
	orq	%rdx, %rcx
	.p2align	4, 0x90
.LBB19_23:                              #   in Loop: Header=BB19_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	cmpq	$128, %rcx
	jb	.LBB19_28
# %bb.24:                               #   in Loop: Header=BB19_5 Depth=1
	movl	$2, %edx
	cmpq	$16383, %rcx            # imm = 0x3FFF
	jb	.LBB19_28
# %bb.25:                               #   in Loop: Header=BB19_5 Depth=1
	movl	$3, %edx
	cmpq	$2097151, %rcx          # imm = 0x1FFFFF
	jb	.LBB19_28
# %bb.26:                               #   in Loop: Header=BB19_5 Depth=1
	movl	$4, %edx
	cmpq	$268435455, %rcx        # imm = 0xFFFFFFF
	jae	.LBB19_27
	jmp	.LBB19_28
.LBB19_30:                              #   in Loop: Header=BB19_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
.LBB19_27:                              #   in Loop: Header=BB19_5 Depth=1
	movl	$5, %edx
	.p2align	4, 0x90
.LBB19_28:                              #   in Loop: Header=BB19_5 Depth=1
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-3, %rbx
	jg	.LBB19_8
# %bb.29:                               #   in Loop: Header=BB19_5 Depth=1
	addq	$1, %rbx
	testq	%rax, %rax
	jne	.LBB19_5
	jmp	.LBB19_8
.LBB19_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB19_7:
	xorl	%eax, %eax
.LBB19_8:
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
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
