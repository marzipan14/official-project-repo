	.text
	.file	"listpack.c"
	.globl	lpStringToInt64         # -- Begin function lpStringToInt64
	.p2align	4, 0x90
	.type	lpStringToInt64,@function
lpStringToInt64:                        # @lpStringToInt64
# %bb.0:
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_28
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %cl
	cmpq	$1, %rsi
	jne	.LBB0_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %cl
	jne	.LBB0_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB0_29
# %bb.4:
	movq	$0, (%rdx)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %cl
	jne	.LBB0_10
# %bb.7:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	je	.LBB0_29
# %bb.8:
	addq	$1, %rdi
	movb	(%rdi), %cl
	movl	$1, %r8d
	movl	$2, %r11d
	jmp	.LBB0_11
.LBB0_10:
	xorl	%r8d, %r8d
	movl	$1, %r11d
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$49, %cl
	jl	.LBB0_24
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %cl
	jge	.LBB0_27
# %bb.13:
	movsbq	%cl, %r9
	addq	$-48, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r11
	jae	.LBB0_20
# %bb.14:                               # %.preheader
	addq	$1, %rdi
	movabsq	$1844674407370955161, %r10 # imm = 0x1999999999999999
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movsbq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$48, %rbx
	jl	.LBB0_27
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %bl
	jg	.LBB0_27
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r9
	ja	.LBB0_29
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=1
	addq	%r9, %r9
	leaq	(%r9,%r9,4), %rcx
	movl	$47, %r9d
	subq	%rbx, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rcx
	ja	.LBB0_29
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=1
	leaq	(%rcx,%rbx), %r9
	addq	$-48, %r9
	addq	$1, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	cmpq	%rsi, %r11
	jb	.LBB0_15
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_30
# %bb.21:
	xorl	%eax, %eax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r9
	ja	.LBB0_29
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB0_29
# %bb.23:
	negq	%r9
	jmp	.LBB0_32
.LBB0_24:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	jne	.LBB0_29
# %bb.25:
	cmpb	$48, %cl
	jne	.LBB0_29
# %bb.26:
	movq	$0, (%rdx)
	movl	$1, %eax
	jmp	.LBB0_29
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:
	xorl	%eax, %eax
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	retq
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	js	.LBB0_28
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB0_29
.LBB0_32:
	movq	%r9, (%rdx)
	jmp	.LBB0_5
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_2
# %bb.1:
	movl	$7, (%rax)
	movw	$0, 4(%rax)
	movb	$-1, 6(%rax)
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %ebx
	movl	%esi, %esi
	leaq	-32(%rbp), %rdx
	callq	lpStringToInt64
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_20
# %bb.1:
	movq	-32(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rax
	ja	.LBB3_3
# %bb.2:
	movb	%al, (%r15)
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB3_23
.LBB3_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	$1, %ecx
	cmpl	$64, %ebx
	jb	.LBB3_22
# %bb.21:
	xorl	%ecx, %ecx
	cmpl	$4095, %ebx             # imm = 0xFFF
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx,2), %ecx
	addl	$2, %ecx
.LBB3_22:
	addl	%ebx, %ecx
	jmp	.LBB3_23
.LBB3_3:
	leaq	4096(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8191, %rcx             # imm = 0x1FFF
	ja	.LBB3_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB3_6
# %bb.5:
	addq	$8192, %rax             # imm = 0x2000
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_6:
	movq	%rax, %rcx
	shrq	$8, %rcx
	orb	$-64, %cl
	movb	%cl, (%r15)
	movb	%al, 1(%r15)
	xorl	%eax, %eax
	movl	$2, %ecx
	jmp	.LBB3_23
.LBB3_7:
	movswq	%ax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jne	.LBB3_11
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB3_10
# %bb.9:
	addq	$65536, %rax            # imm = 0x10000
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_10:
	movq	%r15, %rcx
	movb	$-15, (%r15)
	movb	%al, 1(%r15)
	movb	%ah, 2(%rcx)
	xorl	%eax, %eax
	movl	$3, %ecx
	jmp	.LBB3_23
.LBB3_11:
	leaq	8388608(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16777215, %rcx         # imm = 0xFFFFFF
	ja	.LBB3_15
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB3_14
# %bb.13:
	addq	$16777216, %rax         # imm = 0x1000000
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_14:
	movq	%r15, %rcx
	movb	$-14, (%r15)
	movb	%al, 1(%r15)
	movb	%ah, 2(%rcx)
	shrq	$16, %rax
	movb	%al, 3(%r15)
	xorl	%eax, %eax
	movl	$4, %ecx
	jmp	.LBB3_23
.LBB3_15:
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jne	.LBB3_19
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB3_18
# %bb.17:
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_18:
	movq	%r15, %rdx
	movb	$-13, (%r15)
	movb	%al, 1(%r15)
	movb	%ah, 2(%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 3(%r15)
	shrq	$24, %rax
	movb	%al, 4(%r15)
	xorl	%eax, %eax
	movl	$5, %ecx
	jmp	.LBB3_23
.LBB3_19:
	movq	%r15, %rdx
	movb	$-12, (%r15)
	movb	%al, 1(%r15)
	movb	%ah, 2(%rdx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 3(%r15)
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 4(%r15)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movb	%cl, 5(%r15)
	movq	%rax, %rcx
	shrq	$40, %rcx
	movb	%cl, 6(%r15)
	movq	%rax, %rcx
	shrq	$48, %rcx
	movb	%cl, 7(%r15)
	shrq	$56, %rax
	movb	%al, 8(%r15)
	xorl	%eax, %eax
	movl	$9, %ecx
.LBB3_23:
	movq	%rcx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lpEncodeGetType, .Lfunc_end3-lpEncodeGetType
                                        # -- End function
	.globl	lpEncodeBacklen         # -- Begin function lpEncodeBacklen
	.p2align	4, 0x90
	.type	lpEncodeBacklen,@function
lpEncodeBacklen:                        # @lpEncodeBacklen
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rsi
	ja	.LBB4_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.LBB4_15
# %bb.2:
	movb	%sil, (%rdi)
	jmp	.LBB4_14
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16382, %rsi            # imm = 0x3FFE
	ja	.LBB4_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	testq	%rdi, %rdi
	je	.LBB4_15
# %bb.5:
	movq	%rsi, %rcx
	shrq	$7, %rcx
	movb	%cl, (%rdi)
	orb	$-128, %sil
	movb	%sil, 1(%rdi)
	jmp	.LBB4_14
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2097150, %rsi          # imm = 0x1FFFFE
	ja	.LBB4_9
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	testq	%rdi, %rdi
	je	.LBB4_15
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
	jmp	.LBB4_14
.LBB4_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$268435454, %rsi        # imm = 0xFFFFFFE
	ja	.LBB4_12
# %bb.10:
	movl	$4, %eax
	testq	%rdi, %rdi
	je	.LBB4_15
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
	jmp	.LBB4_14
.LBB4_12:
	movl	$5, %eax
	testq	%rdi, %rdi
	je	.LBB4_15
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
.LBB4_15:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdi), %ecx
	movl	%ecx, %eax
	andl	$127, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jns	.LBB5_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rdi), %ecx
	movl	%ecx, %edx
	andl	$127, %edx
	shlq	$7, %rdx
	orq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jns	.LBB5_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%rdi), %ecx
	movl	%ecx, %edx
	andl	$127, %edx
	shlq	$14, %rdx
	orq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jns	.LBB5_7
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-3(%rdi), %ecx
	movl	%ecx, %edx
	andl	$127, %edx
	shlq	$21, %rdx
	orq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jns	.LBB5_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-4(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	js	.LBB5_6
# %bb.5:
	andl	$127, %ecx
	shlq	$28, %rcx
	orq	%rcx, %rax
	jmp	.LBB5_7
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movzbl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB7_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB7_2:
	movl	%eax, %ecx
	andl	$-64, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ecx
	jne	.LBB7_6
# %bb.3:
	andl	$63, %eax
	addl	$1, %eax
.LBB7_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB7_6:
	movl	%eax, %ecx
	andl	$-32, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$192, %ecx
	jne	.LBB7_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %al
	jne	.LBB7_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB7_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-14, %al
	jne	.LBB7_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB7_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %al
	jne	.LBB7_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB7_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-12, %al
	jne	.LBB7_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$9, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB7_16:
	movl	%eax, %ecx
	andl	$-16, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %ecx
	jne	.LBB7_18
# %bb.17:
	andl	$15, %eax
	shll	$8, %eax
	movzbl	1(%rdi), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	jmp	.LBB7_4
.LBB7_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-16, %al
	jne	.LBB7_20
# %bb.19:
	movl	1(%rdi), %eax
	addl	$5, %eax
	jmp	.LBB7_4
.LBB7_20:
	xorl	%ecx, %ecx
	cmpb	$-1, %al
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end7:
	.size	lpCurrentEncodedSize, .Lfunc_end7-lpCurrentEncodedSize
                                        # -- End function
	.globl	lpSkip                  # -- Begin function lpSkip
	.p2align	4, 0x90
	.type	lpSkip,@function
lpSkip:                                 # @lpSkip
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	lpCurrentEncodedSize
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %eax
	ja	.LBB8_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB8_7
.LBB8_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16382, %ecx            # imm = 0x3FFE
	ja	.LBB8_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB8_7
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2097150, %ecx          # imm = 0x1FFFFE
	ja	.LBB8_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	jmp	.LBB8_7
.LBB8_6:
	cmpl	$268435455, %ecx        # imm = 0xFFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	sbbq	$0, %rax
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rax
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
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
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rsi, %rdi
	callq	lpCurrentEncodedSize
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %eax
	ja	.LBB9_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	jmp	.LBB9_7
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16382, %ecx            # imm = 0x3FFE
	ja	.LBB9_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %edx
	jmp	.LBB9_7
.LBB9_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2097150, %ecx          # imm = 0x1FFFFE
	ja	.LBB9_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %edx
	jmp	.LBB9_7
.LBB9_6:
	cmpl	$268435455, %ecx        # imm = 0xFFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %edx
	sbbq	$0, %rdx
.LBB9_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rdx
	leaq	(%rbx,%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpb	$-1, (%rbx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$6, %rax
	jne	.LBB10_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB10_18
.LBB10_2:
	leaq	-1(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rsi), %ecx
	movl	%ecx, %edx
	andl	$127, %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	js	.LBB10_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
	jmp	.LBB10_10
.LBB10_4:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%rsi), %edi
	movl	%edi, %ecx
	andl	$127, %ecx
	shlq	$7, %rcx
	orq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	jns	.LBB10_9
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-3(%rsi), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shlq	$14, %rdi
	orq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jns	.LBB10_9
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-4(%rsi), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shlq	$21, %rdi
	orq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jns	.LBB10_9
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-5(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	js	.LBB10_19
# %bb.8:
	andl	$127, %edx
	shlq	$28, %rdx
	orq	%rdx, %rcx
.LBB10_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rcx
	ja	.LBB10_11
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
.LBB10_17:
	addq	%rdx, %rcx
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
.LBB10_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB10_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16382, %rcx            # imm = 0x3FFE
	ja	.LBB10_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %edx
	jmp	.LBB10_17
.LBB10_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2097150, %rcx          # imm = 0x1FFFFE
	ja	.LBB10_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %edx
	jmp	.LBB10_17
.LBB10_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %edx
	cmpq	$268435455, %rcx        # imm = 0xFFFFFFF
	jb	.LBB10_17
	jmp	.LBB10_16
.LBB10_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
.LBB10_16:
	movl	$5, %edx
	jmp	.LBB10_17
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rdi), %eax
	leaq	(%rdi,%rax), %rsi
	addq	$-1, %rsi
	callq	lpPrev
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movzwl	4(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %r15d           # imm = 0xFFFF
	jne	.LBB13_13
# %bb.1:
	movq	%rdi, %r14
	cmpb	$-1, 6(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_14
# %bb.2:                                # %.preheader
	leaq	6(%r14), %rbx
	xorl	%r15d, %r15d
	jmp	.LBB13_3
	.p2align	4, 0x90
.LBB13_4:                               #   in Loop: Header=BB13_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB13_10:                              #   in Loop: Header=BB13_3 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rax
	leaq	(%rbx,%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ebx
	cmovneq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB13_11
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	lpCurrentEncodedSize
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %eax
	jbe	.LBB13_4
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16382, %ecx            # imm = 0x3FFE
	ja	.LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB13_10
	.p2align	4, 0x90
.LBB13_7:                               #   in Loop: Header=BB13_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2097150, %ecx          # imm = 0x1FFFFE
	ja	.LBB13_9
# %bb.8:                                #   in Loop: Header=BB13_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	jmp	.LBB13_10
.LBB13_9:                               #   in Loop: Header=BB13_3 Depth=1
	cmpl	$268435455, %ecx        # imm = 0xFFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	sbbq	$0, %rax
	jmp	.LBB13_10
.LBB13_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65534, %r15d           # imm = 0xFFFE
	jbe	.LBB13_12
	jmp	.LBB13_13
.LBB13_14:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB13_12:
	movw	%r15w, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
	movzbl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	js	.LBB14_2
# %bb.1:
	andl	$127, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB14_23
# %bb.22:
	movl	$21, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	movq	%rax, (%r14)
	jmp	.LBB14_24
.LBB14_2:
	movl	%ecx, %eax
	andl	$-64, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %eax
	jne	.LBB14_4
# %bb.3:
	andl	$63, %ecx
	movq	%rcx, (%r14)
	addq	$1, %rdi
	movq	%rdi, %rbx
	jmp	.LBB14_24
.LBB14_23:
	movq	%rcx, (%r14)
	xorl	%ebx, %ebx
.LBB14_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB14_4:
	movl	%ecx, %eax
	andl	$-32, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$192, %eax
	jne	.LBB14_6
# %bb.5:
	andl	$31, %ecx
	shlq	$8, %rcx
	movzbl	1(%rdi), %eax
	orq	%rax, %rcx
	movq	$-8192, %rax            # imm = 0xE000
	movl	$4096, %edx             # imm = 0x1000
	jmp	.LBB14_19
.LBB14_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %cl
	jne	.LBB14_8
# %bb.7:
	movzwl	1(%rdi), %ecx
	movq	$-65536, %rax           # imm = 0xFFFF0000
	movl	$32768, %edx            # imm = 0x8000
	jmp	.LBB14_19
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-14, %cl
	jne	.LBB14_10
# %bb.9:
	movzwl	1(%rdi), %eax
	movzbl	3(%rdi), %ecx
	shlq	$16, %rcx
	orq	%rax, %rcx
	movq	$-16777216, %rax        # imm = 0xFF000000
	movl	$8388608, %edx          # imm = 0x800000
	jmp	.LBB14_19
.LBB14_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %cl
	jne	.LBB14_12
# %bb.11:
	movl	1(%rdi), %ecx
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	movl	$2147483648, %edx       # imm = 0x80000000
	jmp	.LBB14_19
.LBB14_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-12, %cl
	jne	.LBB14_14
# %bb.13:
	movq	1(%rdi), %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorl	%eax, %eax
	jmp	.LBB14_19
.LBB14_14:
	movl	%ecx, %eax
	andl	$-16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %eax
	jne	.LBB14_16
# %bb.15:
	andl	$15, %ecx
	shlq	$8, %rcx
	movzbl	1(%rdi), %eax
	orq	%rcx, %rax
	movq	%rax, (%r14)
	addq	$2, %rdi
	movq	%rdi, %rbx
	jmp	.LBB14_24
.LBB14_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-16, %cl
	jne	.LBB14_18
# %bb.17:
	movl	1(%rdi), %eax
	movq	%rax, (%r14)
	addq	$5, %rdi
	movq	%rdi, %rbx
	jmp	.LBB14_24
.LBB14_18:
	movl	%ecx, %eax
	movabsq	$12345678900000000, %rcx # imm = 0x2BDC545D587500
	orq	%rax, %rcx
	movq	$-1, %rdx
	movq	$-1, %rax
.LBB14_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jb	.LBB14_21
# %bb.20:
	addq	%rax, %rcx
	jmp	.LBB14_21
.Lfunc_end14:
	.size	lpGet, .Lfunc_end14-lpGet
                                        # -- End function
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
	movq	%r9, %rbx
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rsi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	movq	%r9, -120(%rbp)         # 8-byte Spill
	je	.LBB15_4
# %bb.1:
	movl	%r8d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r8d
	jne	.LBB15_5
# %bb.2:
	movq	%rdi, %r14
	movq	%rcx, %r15
	movq	%rcx, %rdi
	callq	lpCurrentEncodedSize
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %eax
	ja	.LBB15_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB15_11
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	subq	%rdi, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -128(%rbp)
	movl	$2, %r13d
	movl	$-1, -84(%rbp)          # 4-byte Folded Spill
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	.LBB15_18
.LBB15_5:
	movq	%rcx, %r15
	movq	%rdi, %r14
	jmp	.LBB15_12
.LBB15_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16382, %ecx            # imm = 0x3FFE
	ja	.LBB15_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB15_11
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2097150, %ecx          # imm = 0x1FFFFE
	ja	.LBB15_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	jmp	.LBB15_11
.LBB15_10:
	cmpl	$268435455, %ecx        # imm = 0xFFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	sbbq	$0, %rax
.LBB15_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rax
	movq	%r15, %rbx
	addq	%rax, %rbx
	movq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB15_12:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-137(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	%r12, %rdi
	movl	-80(%rbp), %esi         # 4-byte Reload
	callq	lpEncodeGetType
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rdx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	ja	.LBB15_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movb	%dl, -45(%rbp)
	movl	$1, %esi
	jmp	.LBB15_16
.LBB15_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16382, %rdx            # imm = 0x3FFE
	ja	.LBB15_24
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	shrq	$7, %rax
	movb	%al, -45(%rbp)
	movl	%edx, %eax
	orb	$-128, %al
	movb	%al, -44(%rbp)
	movl	$2, %esi
.LBB15_16:
	movq	%r14, %rdi
	movq	%r15, %rcx
.LBB15_17:
	movq	%rcx, %rax
	subq	%rdi, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
.LBB15_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r13d
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r12, -112(%rbp)        # 8-byte Spill
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	jne	.LBB15_21
# %bb.19:
	movq	%rdi, %r14
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	lpCurrentEncodedSize
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %eax
	ja	.LBB15_22
# %bb.20:
	movl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jmp	.LBB15_31
.LBB15_21:
	movl	%r13d, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB15_32
.LBB15_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ebx
	cmpl	$16382, %ecx            # imm = 0x3FFE
	ja	.LBB15_26
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r13d
	jmp	.LBB15_31
.LBB15_24:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2097150, %rdx          # imm = 0x1FFFFE
	movq	%r14, %rdi
	movq	%r15, %rcx
	ja	.LBB15_28
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	shrq	$14, %rax
	movb	%al, -45(%rbp)
	movq	%rdx, %rax
	shrq	$7, %rax
	orb	$-128, %al
	movb	%al, -44(%rbp)
	movl	%edx, %eax
	orb	$-128, %al
	movb	%al, -43(%rbp)
	movl	$3, %esi
	jmp	.LBB15_17
.LBB15_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2097150, %ecx          # imm = 0x1FFFFE
	ja	.LBB15_30
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %r13d
	jmp	.LBB15_31
.LBB15_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	cmpq	$268435454, %rdx        # imm = 0xFFFFFFE
	ja	.LBB15_59
# %bb.29:
	shrq	$21, %rax
	movb	%al, -45(%rbp)
	movq	%rdx, %rax
	shrq	$14, %rax
	orb	$-128, %al
	movb	%al, -44(%rbp)
	movq	%rdx, %rax
	shrq	$7, %rax
	orb	$-128, %al
	movb	%al, -43(%rbp)
	movl	%edx, %eax
	orb	$-128, %al
	movb	%al, -42(%rbp)
	movl	$4, %esi
	jmp	.LBB15_17
.LBB15_30:
	cmpl	$268435455, %ecx        # imm = 0xFFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %r13d
	sbbq	$0, %r13
.LBB15_31:
	movq	%r14, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rcx         # 8-byte Reload
.LBB15_32:
	leaq	(%rdx,%rsi), %r12
	leaq	(%r12,%r15), %r14
	subq	%r13, %r14
	movq	%r14, %rax
	shrq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_34
# %bb.33:
	xorl	%eax, %eax
	jmp	.LBB15_72
.LBB15_34:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jbe	.LBB15_37
# %bb.35:
	movq	%r14, %rsi
	callq	zrealloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_54
# %bb.36:
	movq	%rax, %rdi
	movq	%rax, %rcx
	addq	-72(%rbp), %rcx         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB15_37:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	je	.LBB15_39
# %bb.38:
	leaq	(%rcx,%r13), %rsi
	addq	%rcx, %r12
	movq	%r15, %rdx
	subq	-72(%rbp), %rdx         # 8-byte Folded Reload
	subq	%r13, %rdx
	movq	%rdi, %r13
	movq	%r12, %rdi
	callq	memmove
	movq	%r13, %rax
	jmp	.LBB15_40
.LBB15_39:
	movq	%rdi, %r12
	leaq	(%rcx,%rdx), %rdi
	addq	%rsi, %rdi
	movq	%r15, %rdx
	subq	-72(%rbp), %rdx         # 8-byte Folded Reload
	movq	%rcx, %rsi
	callq	memmove
	movq	%r12, %rax
.LBB15_40:
	movq	-112(%rbp), %r12        # 8-byte Reload
	movl	%ebx, %r13d
	movl	-80(%rbp), %ebx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB15_43
# %bb.41:
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	zrealloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	je	.LBB15_54
# %bb.42:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_44
.LBB15_43:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
.LBB15_44:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB15_47
# %bb.45:
	movq	%rdi, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -104(%rbp)          # 1-byte Folded Reload
	je	.LBB15_51
# %bb.46:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_48
.LBB15_54:
	xorl	%eax, %eax
	jmp	.LBB15_71
.LBB15_47:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -104(%rbp)          # 1-byte Folded Reload
	je	.LBB15_55
.LBB15_48:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB15_56
# %bb.49:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %ebx
	ja	.LBB15_57
# %bb.50:
	movl	%ebx, %eax
	orb	$-128, %al
	movb	%al, (%rdi)
	movl	%ebx, %eax
	movq	%rdi, %rbx
	addq	$1, %rdi
	movl	%eax, %edx
	jmp	.LBB15_62
.LBB15_51:
	cmpb	$-1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_60
# %bb.52:
	xorl	%edx, %edx
	jmp	.LBB15_64
.LBB15_55:
	xorl	%edx, %edx
	jmp	.LBB15_65
.LBB15_56:
	leaq	-137(%rbp), %rsi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdx
	movq	%rdi, %rbx
	callq	memcpy
	movq	%rbx, %rdi
	jmp	.LBB15_63
.LBB15_57:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4095, %ebx             # imm = 0xFFF
	ja	.LBB15_61
# %bb.58:
	movl	%ebx, %eax
	shrl	$8, %eax
	orb	$-32, %al
	movb	%al, (%rdi)
	movb	%bl, 1(%rdi)
	movl	%ebx, %eax
	movq	%rdi, %rbx
	addq	$2, %rdi
	movl	%eax, %edx
	jmp	.LBB15_62
.LBB15_59:
	shrq	$28, %rax
	movb	%al, -45(%rbp)
	movq	%rdx, %rax
	shrq	$21, %rax
	orb	$-128, %al
	movb	%al, -44(%rbp)
	movq	%rdx, %rax
	shrq	$14, %rax
	orb	$-128, %al
	movb	%al, -43(%rbp)
	movq	%rdx, %rax
	shrq	$7, %rax
	orb	$-128, %al
	movb	%al, -42(%rbp)
	movl	%edx, %eax
	orb	$-128, %al
	movb	%al, -41(%rbp)
	movl	$5, %esi
	jmp	.LBB15_17
.LBB15_60:
	movq	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	jmp	.LBB15_64
.LBB15_61:
	movb	$-16, (%rdi)
	movb	%bl, 1(%rdi)
	movb	%bh, 2(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 3(%rdi)
	movl	%ebx, %edx
	shrl	$24, %ebx
	movb	%bl, 4(%rdi)
	movq	%rdi, %rbx
	addq	$5, %rdi
.LBB15_62:
	movq	%r12, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB15_63:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addq	%r15, %rdi
	leaq	-45(%rbp), %rsi
	callq	memcpy
	movb	$1, %dl
	movq	-80(%rbp), %rax         # 8-byte Reload
.LBB15_64:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_65:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB15_67
# %bb.66:
	cmpl	$2, %r13d
	je	.LBB15_70
.LBB15_67:
	movzwl	4(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB15_69
# %bb.68:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%dl, %edx
	leal	(%rcx,%rdx,2), %ecx
	addl	$-1, %ecx
	movb	%cl, 4(%rax)
	movb	%ch, 5(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_69:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_70:
	movl	%r14d, (%rax)
.LBB15_71:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movzwl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %eax            # imm = 0xFFFF
	jne	.LBB19_2
# %bb.1:
	testq	%r14, %r14
	jns	.LBB19_12
	jmp	.LBB19_8
.LBB19_2:
	testq	%r14, %r14
	js	.LBB19_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	jmp	.LBB19_5
.LBB19_4:
	movl	%eax, %ecx
	addq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB19_25
.LBB19_5:
	movq	%r14, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rcx, %rdx
	jge	.LBB19_25
# %bb.6:
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jle	.LBB19_12
# %bb.7:
	movq	%rdx, %r14
.LBB19_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %eax
	leaq	(%r15,%rax), %rsi
	addq	$-1, %rsi
	movq	%r15, %rdi
	callq	lpPrev
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %r14
	jg	.LBB19_26
	.p2align	4, 0x90
# %bb.9:
	testq	%rbx, %rbx
	je	.LBB19_26
.LBB19_10:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	lpPrev
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-3, %r14
	jg	.LBB19_26
# %bb.11:                               #   in Loop: Header=BB19_10 Depth=1
	addq	$1, %r14
	testq	%rbx, %rbx
	jne	.LBB19_10
	jmp	.LBB19_26
.LBB19_12:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpb	$-1, 6(%r15)
	leaq	6(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jle	.LBB19_26
# %bb.13:
	testq	%rbx, %rbx
	je	.LBB19_26
# %bb.14:                               # %.preheader1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB19_15:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	lpCurrentEncodedSize
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %eax
	ja	.LBB19_17
# %bb.16:                               #   in Loop: Header=BB19_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB19_22
	.p2align	4, 0x90
.LBB19_17:                              #   in Loop: Header=BB19_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16382, %ecx            # imm = 0x3FFE
	ja	.LBB19_19
# %bb.18:                               #   in Loop: Header=BB19_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB19_22
	.p2align	4, 0x90
.LBB19_19:                              #   in Loop: Header=BB19_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2097150, %ecx          # imm = 0x1FFFFE
	ja	.LBB19_21
# %bb.20:                               #   in Loop: Header=BB19_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	jmp	.LBB19_22
.LBB19_21:                              #   in Loop: Header=BB19_15 Depth=1
	cmpl	$268435455, %ecx        # imm = 0xFFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	sbbq	$0, %rax
	.p2align	4, 0x90
.LBB19_22:                              #   in Loop: Header=BB19_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, (%rbx,%rax)
	leaq	(%rbx,%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r15, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %r14
	jl	.LBB19_26
# %bb.23:                               #   in Loop: Header=BB19_15 Depth=1
	addq	$-1, %r14
	testq	%rbx, %rbx
	jne	.LBB19_15
	jmp	.LBB19_26
.LBB19_25:
	xorl	%ebx, %ebx
.LBB19_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
