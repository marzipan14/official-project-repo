	.text
	.file	"hyperloglog.c"
	.globl	MurmurHash64A           # -- Begin function MurmurHash64A
	.p2align	4, 0x90
	.type	MurmurHash64A,@function
MurmurHash64A:                          # @MurmurHash64A
# %bb.0:
	pushq	%rbx
	movabsq	$-4132994306676758123, %r11 # imm = 0xC6A4A7935BD1E995
	movl	%edx, %r8d
	movslq	%esi, %rdx
	movq	%rdx, %rcx
	imulq	%r11, %rcx
	xorq	%r8, %rcx
	andl	$-8, %edx
	je	.LBB0_6
# %bb.1:
	movslq	%edx, %r8
	leaq	-8(%r8), %r9
	testb	$8, %r9b
	jne	.LBB0_2
# %bb.3:
	movq	(%rdi), %rdx
	imulq	%r11, %rdx
	movq	%rdx, %r10
	shrq	$47, %r10
	xorq	%rdx, %r10
	imulq	%r11, %r10
	xorq	%rcx, %r10
	imulq	%r11, %r10
	leaq	8(%rdi), %rbx
	movq	%r10, %rcx
	jmp	.LBB0_4
.LBB0_2:
	movq	%rdi, %rbx
.LBB0_4:
	addq	%r8, %rdi
	testq	%r9, %r9
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	imulq	%r11, %rdx
	movq	%rdx, %rax
	shrq	$47, %rax
	xorq	%rdx, %rax
	imulq	%r11, %rax
	xorq	%rcx, %rax
	imulq	%r11, %rax
	movq	8(%rbx), %rdx
	imulq	%r11, %rdx
	movq	%rdx, %rcx
	shrq	$47, %rcx
	xorq	%rdx, %rcx
	imulq	%r11, %rcx
	xorq	%rax, %rcx
	imulq	%r11, %rcx
	addq	$16, %rbx
	cmpq	%rdi, %rbx
	jne	.LBB0_5
.LBB0_6:
	andb	$7, %sil
	addb	$-1, %sil
	cmpb	$6, %sil
	ja	.LBB0_15
# %bb.7:
	movzbl	%sil, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_8:
	movzbl	6(%rdi), %eax
	shlq	$48, %rax
	xorq	%rax, %rcx
.LBB0_9:
	movzbl	5(%rdi), %eax
	shlq	$40, %rax
	xorq	%rax, %rcx
.LBB0_10:
	movzbl	4(%rdi), %eax
	shlq	$32, %rax
	xorq	%rax, %rcx
.LBB0_11:
	movzbl	3(%rdi), %eax
	shlq	$24, %rax
	xorq	%rax, %rcx
.LBB0_12:
	movzbl	2(%rdi), %eax
	shlq	$16, %rax
	xorq	%rax, %rcx
.LBB0_13:
	movzbl	1(%rdi), %eax
	shlq	$8, %rax
	xorq	%rax, %rcx
.LBB0_14:
	movzbl	(%rdi), %eax
	xorq	%rcx, %rax
	imulq	%r11, %rax
	movq	%rax, %rcx
.LBB0_15:
	movq	%rcx, %rdx
	shrq	$47, %rdx
	xorq	%rcx, %rdx
	imulq	%r11, %rdx
	movq	%rdx, %rax
	shrq	$47, %rax
	xorq	%rdx, %rax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	MurmurHash64A, .Lfunc_end0-MurmurHash64A
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_14
	.quad	.LBB0_13
	.quad	.LBB0_12
	.quad	.LBB0_11
	.quad	.LBB0_10
	.quad	.LBB0_9
	.quad	.LBB0_8
                                        # -- End function
	.text
	.globl	hllPatLen               # -- Begin function hllPatLen
	.p2align	4, 0x90
	.type	hllPatLen,@function
hllPatLen:                              # @hllPatLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
                                        # kill: def $esi killed $esi killed $rsi
	movl	$-1379386599, %edx      # imm = 0xADC83B19
	callq	MurmurHash64A
	movl	$1, %ecx
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB1_3
# %bb.1:                                # %.preheader
	movq	%rax, %rcx
	shrq	$14, %rcx
	movabsq	$1125899906842624, %rdx # imm = 0x4000000000000
	orq	%rcx, %rdx
	movl	$1, %esi
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %ecx
	addq	%rsi, %rsi
	testq	%rdx, %rsi
	je	.LBB1_2
.LBB1_3:
	andl	$16383, %eax            # imm = 0x3FFF
	movq	%rax, (%rbx)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	hllPatLen, .Lfunc_end1-hllPatLen
                                        # -- End function
	.globl	hllDenseSet             # -- Begin function hllDenseSet
	.p2align	4, 0x90
	.type	hllDenseSet,@function
hllDenseSet:                            # @hllDenseSet
# %bb.0:
	pushq	%rbx
	addq	%rsi, %rsi
	leaq	(%rsi,%rsi,2), %r9
	leaq	(%rsi,%rsi,2), %rsi
	addq	$7, %rsi
	testq	%r9, %r9
	cmovnsq	%r9, %rsi
	sarq	$3, %rsi
	andl	$6, %r9d
	movl	$8, %r8d
	subq	%r9, %r8
	movzbl	(%rdi,%rsi), %r11d
	movq	%r11, %rbx
	movl	%r9d, %ecx
	shrq	%cl, %rbx
	movzbl	1(%rdi,%rsi), %r10d
	movl	%r10d, %eax
	movl	%r8d, %ecx
	shll	%cl, %eax
	orl	%eax, %ebx
	andl	$63, %ebx
	xorl	%eax, %eax
	cmpl	%edx, %ebx
	jae	.LBB2_2
# %bb.1:
	movl	$63, %eax
	movl	%r9d, %ecx
	shll	%cl, %eax
	movzbl	%dl, %ebx
	notb	%al
	andb	%r11b, %al
	movq	%rbx, %rdx
	shlq	%cl, %rdx
	orb	%al, %dl
	movl	$-64, %eax
	movl	%r8d, %ecx
	sarl	%cl, %eax
	movb	%dl, (%rdi,%rsi)
	shrq	%cl, %rbx
	andb	%r10b, %al
	orb	%al, %bl
	movb	%bl, 1(%rdi,%rsi)
	movl	$1, %eax
.LBB2_2:
	popq	%rbx
	retq
.Lfunc_end2:
	.size	hllDenseSet, .Lfunc_end2-hllDenseSet
                                        # -- End function
	.globl	hllDenseAdd             # -- Begin function hllDenseAdd
	.p2align	4, 0x90
	.type	hllDenseAdd,@function
hllDenseAdd:                            # @hllDenseAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	$-1379386599, %edx      # imm = 0xADC83B19
	callq	MurmurHash64A
	movl	$1, %r9d
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB3_4
# %bb.1:                                # %.preheader
	movq	%rax, %rdx
	shrq	$14, %rdx
	movabsq	$1125899906842624, %rcx # imm = 0x4000000000000
	orq	%rdx, %rcx
	movl	$1, %esi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %edx
	addq	%rsi, %rsi
	testq	%rcx, %rsi
	je	.LBB3_2
# %bb.3:
	movzbl	%dl, %r9d
.LBB3_4:
	andl	$16383, %eax            # imm = 0x3FFF
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	andl	$6, %edx
	movl	$8, %r11d
	subq	%rdx, %r11
	movzbl	(%r14,%rdi), %r10d
	movq	%r10, %rbx
	movl	%edx, %ecx
	shrq	%cl, %rbx
	movzbl	1(%r14,%rdi), %r8d
	movl	%r8d, %eax
	movl	%r11d, %ecx
	shll	%cl, %eax
	orl	%eax, %ebx
	andl	$63, %ebx
	xorl	%eax, %eax
	cmpl	%r9d, %ebx
	jae	.LBB3_6
# %bb.5:
	movl	$63, %eax
	movl	%edx, %ecx
	shll	%cl, %eax
	movl	%r9d, %esi
	notb	%al
	andb	%r10b, %al
	movq	%rsi, %rbx
	shlq	%cl, %rbx
	orb	%al, %bl
	movl	$-64, %eax
	movl	%r11d, %ecx
	sarl	%cl, %eax
	movb	%bl, (%r14,%rdi)
	shrq	%cl, %rsi
	andb	%r8b, %al
	orb	%al, %sil
	movb	%sil, 1(%r14,%rdi)
	movl	$1, %eax
.LBB3_6:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	hllDenseAdd, .Lfunc_end3-hllDenseAdd
                                        # -- End function
	.globl	hllDenseRegHisto        # -- Begin function hllDenseRegHisto
	.p2align	4, 0x90
	.type	hllDenseRegHisto,@function
hllDenseRegHisto:                       # @hllDenseRegHisto
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r14), %ebx
	movl	%ebx, %r10d
	andl	$63, %r10d
	shrq	$6, %rbx
	movzbl	1(%rdi,%r14), %eax
	movzbl	2(%rdi,%r14), %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movzbl	3(%rdi,%r14), %ebp
	movzbl	4(%rdi,%r14), %r15d
	movzbl	5(%rdi,%r14), %r12d
	movzbl	6(%rdi,%r14), %r13d
	movzbl	7(%rdi,%r14), %r9d
	movzbl	8(%rdi,%r14), %r8d
	movzbl	9(%rdi,%r14), %edx
	movzbl	10(%rdi,%r14), %r11d
	movzbl	11(%rdi,%r14), %ecx
	addl	$1, (%rsi,%r10,4)
	movl	%eax, %r10d
	andl	$15, %r10d
	leaq	(%rbx,%r10,4), %rbx
	addl	$1, (%rsi,%rbx,4)
	shrq	$4, %rax
	movq	(%rsp), %r10            # 8-byte Reload
	movl	%r10d, %ebx
	shll	$4, %ebx
	andl	$48, %ebx
	orq	%rax, %rbx
	addl	$1, (%rsi,%rbx,4)
	andl	$-4, %r10d
	addl	$1, (%rsi,%r10)
	movl	%ebp, %ebx
	andl	$63, %ebx
	shrq	$6, %rbp
	addl	$1, (%rsi,%rbx,4)
	movl	%r15d, %ebx
	andl	$15, %ebx
	leaq	(,%rbx,4), %rbx
	addq	%rbp, %rbx
	addl	$1, (%rsi,%rbx,4)
	shrq	$4, %r15
	movl	%r12d, %ebx
	shll	$4, %ebx
	andl	$48, %ebx
	orq	%r15, %rbx
	addl	$1, (%rsi,%rbx,4)
	andl	$-4, %r12d
	addl	$1, (%rsi,%r12)
	movl	%r13d, %ebx
	andl	$63, %ebx
	shrq	$6, %r13
	addl	$1, (%rsi,%rbx,4)
	movl	%r9d, %ebx
	andl	$15, %ebx
	leaq	(,%rbx,4), %rbx
	addq	%r13, %rbx
	addl	$1, (%rsi,%rbx,4)
	shrq	$4, %r9
	movl	%r8d, %ebx
	shll	$4, %ebx
	andl	$48, %ebx
	orq	%r9, %rbx
	addl	$1, (%rsi,%rbx,4)
	andl	$-4, %r8d
	addl	$1, (%rsi,%r8)
	movl	%edx, %ebx
	andl	$63, %ebx
	shrq	$6, %rdx
	addl	$1, (%rsi,%rbx,4)
	movl	%r11d, %ebp
	andl	$15, %ebp
	leaq	(%rdx,%rbp,4), %rdx
	addl	$1, (%rsi,%rdx,4)
	shrq	$4, %r11
	movl	%ecx, %edx
	shll	$4, %edx
	andl	$48, %edx
	orq	%r11, %rdx
	addl	$1, (%rsi,%rdx,4)
	andl	$-4, %ecx
	addl	$1, (%rsi,%rcx)
	addq	$12, %r14
	cmpl	$12288, %r14d           # imm = 0x3000
	jne	.LBB4_1
# %bb.2:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	hllDenseRegHisto, .Lfunc_end4-hllDenseRegHisto
                                        # -- End function
	.globl	hllSparseToDense        # -- Begin function hllSparseToDense
	.p2align	4, 0x90
	.type	hllSparseToDense,@function
hllSparseToDense:                       # @hllSparseToDense
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	8(%rdi), %r13
	movzbl	-1(%r13), %r12d
	movl	%r12d, %ecx
	andb	$7, %cl
	xorl	%eax, %eax
	cmpb	$4, %cl
	ja	.LBB5_1
# %bb.2:
	movl	%r12d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_3:
	shrq	$3, %r12
	cmpb	$0, 4(%r13)
	jne	.LBB5_9
	jmp	.LBB5_24
.LBB5_1:
	xorl	%r12d, %r12d
	cmpb	$0, 4(%r13)
	jne	.LBB5_9
	jmp	.LBB5_24
.LBB5_4:
	movzbl	-3(%r13), %r12d
	cmpb	$0, 4(%r13)
	jne	.LBB5_9
	jmp	.LBB5_24
.LBB5_5:
	movzwl	-5(%r13), %r12d
	cmpb	$0, 4(%r13)
	jne	.LBB5_9
	jmp	.LBB5_24
.LBB5_6:
	movl	-9(%r13), %r12d
	cmpb	$0, 4(%r13)
	jne	.LBB5_9
	jmp	.LBB5_24
.LBB5_7:
	movq	-17(%r13), %r12
	cmpb	$0, 4(%r13)
	je	.LBB5_24
.LBB5_9:
	xorl	%r14d, %r14d
	movl	$12304, %esi            # imm = 0x3010
	xorl	%edi, %edi
	callq	sdsnewlen
	movq	%rax, %r15
	movups	(%r13), %xmm0
	movups	%xmm0, (%rax)
	movb	$0, 4(%rax)
	cmpq	$17, %r12
	jl	.LBB5_22
# %bb.10:
	movq	%rbx, %r11
	addq	%r13, %r12
	addq	$16, %r13
	jmp	.LBB5_11
	.p2align	4, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_11 Depth=1
	andl	$63, %ebx
	shll	$8, %ebx
	movzbl	1(%r13), %eax
	orl	%ebx, %eax
	leal	(%r14,%rax), %r8d
	addl	$1, %r8d
	movl	$2, %eax
.LBB5_20:                               #   in Loop: Header=BB5_11 Depth=1
	addq	%rax, %r13
	movl	%r8d, %r14d
	cmpq	%r12, %r13
	jae	.LBB5_21
.LBB5_11:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %ebx
	movl	%ebx, %eax
	andb	$-64, %al
	cmpb	$64, %al
	je	.LBB5_14
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=1
	testb	%al, %al
	jne	.LBB5_15
# %bb.13:                               #   in Loop: Header=BB5_11 Depth=1
	andl	$63, %ebx
	leal	(%r14,%rbx), %r8d
	addl	$1, %r8d
	jmp	.LBB5_19
	.p2align	4, 0x90
.LBB5_15:                               #   in Loop: Header=BB5_11 Depth=1
	movl	%ebx, %r9d
	andl	$3, %r9d
	leal	(%r9,%r14), %eax
	addl	$1, %eax
	cmpl	$16384, %eax            # imm = 0x4000
	jg	.LBB5_16
# %bb.17:                               #   in Loop: Header=BB5_11 Depth=1
	shrl	$2, %ebx
	andl	$31, %ebx
	addq	$1, %rbx
	leal	1(%r14), %r8d
	addl	%r14d, %r14d
	leal	(%r14,%r14,2), %ecx
	leal	(%r14,%r14,2), %eax
	addl	$7, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$3, %eax
	movslq	%eax, %r10
	andb	$6, %cl
	movl	$63, %edi
	shll	%cl, %edi
	notb	%dil
	movq	%rbx, %rdx
	shlq	%cl, %rdx
	andb	16(%r15,%r10), %dil
	movb	$8, %al
	subb	%cl, %al
	movl	$-64, %esi
	movl	%eax, %ecx
	sarl	%cl, %esi
	orb	%dil, %dl
	movb	%dl, 16(%r15,%r10)
	andb	17(%r15,%r10), %sil
	movq	%rbx, %rdx
	shrq	%cl, %rdx
	orb	%sil, %dl
	movb	%dl, 17(%r15,%r10)
	testl	%r9d, %r9d
	je	.LBB5_18
# %bb.25:                               #   in Loop: Header=BB5_11 Depth=1
	leal	(%r14,%r14,2), %ecx
	addl	$6, %ecx
	leal	(%r14,%r14,2), %eax
	addl	$13, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$3, %eax
	movslq	%eax, %r10
	andb	$6, %cl
	movl	$63, %edx
	shll	%cl, %edx
	notb	%dl
	movq	%rbx, %rdi
	shlq	%cl, %rdi
	andb	16(%r15,%r10), %dl
	movb	$8, %al
	subb	%cl, %al
	movl	$-64, %esi
	movl	%eax, %ecx
	sarl	%cl, %esi
	orb	%dl, %dil
	movb	%dil, 16(%r15,%r10)
	andb	17(%r15,%r10), %sil
	movq	%rbx, %rdx
	shrq	%cl, %rdx
	orb	%sil, %dl
	movb	%dl, 17(%r15,%r10)
	cmpl	$1, %r9d
	je	.LBB5_18
# %bb.26:                               #   in Loop: Header=BB5_11 Depth=1
	leal	(%r14,%r14,2), %ecx
	addl	$12, %ecx
	leal	(%r14,%r14,2), %eax
	addl	$19, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$3, %eax
	movslq	%eax, %r10
	andb	$6, %cl
	movl	$63, %edx
	shll	%cl, %edx
	notb	%dl
	movq	%rbx, %rdi
	shlq	%cl, %rdi
	andb	16(%r15,%r10), %dl
	movb	$8, %al
	subb	%cl, %al
	movl	$-64, %esi
	movl	%eax, %ecx
	sarl	%cl, %esi
	orb	%dl, %dil
	movb	%dil, 16(%r15,%r10)
	andb	17(%r15,%r10), %sil
	movq	%rbx, %rdx
	shrq	%cl, %rdx
	orb	%sil, %dl
	movb	%dl, 17(%r15,%r10)
	cmpl	$2, %r9d
	je	.LBB5_18
# %bb.27:                               #   in Loop: Header=BB5_11 Depth=1
	leal	(%r14,%r14,2), %eax
	leal	18(%rax), %ecx
	addl	$25, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$3, %eax
	andb	$6, %cl
	movl	$63, %edx
	shll	%cl, %edx
	movslq	%eax, %rsi
	notb	%dl
	andb	16(%r15,%rsi), %dl
	movq	%rbx, %rdi
	shlq	%cl, %rdi
	orb	%dl, %dil
	movb	$8, %al
	subb	%cl, %al
	movl	$-64, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movb	%dil, 16(%r15,%rsi)
	shrq	%cl, %rbx
	andb	17(%r15,%rsi), %dl
	orb	%dl, %bl
	movb	%bl, 17(%r15,%rsi)
	.p2align	4, 0x90
.LBB5_18:                               #   in Loop: Header=BB5_11 Depth=1
	addl	%r9d, %r8d
.LBB5_19:                               #   in Loop: Header=BB5_11 Depth=1
	movl	$1, %eax
	jmp	.LBB5_20
.LBB5_16:
	movl	%r14d, %r8d
.LBB5_21:
	cmpl	$16384, %r8d            # imm = 0x4000
	jne	.LBB5_22
# %bb.23:
	movq	%r11, %rbx
	movq	8(%r11), %rdi
	callq	sdsfree
	movq	%r15, 8(%rbx)
	xorl	%eax, %eax
	jmp	.LBB5_24
.LBB5_22:
	movq	%r15, %rdi
	callq	sdsfree
	movl	$-1, %eax
.LBB5_24:
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	hllSparseToDense, .Lfunc_end5-hllSparseToDense
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_6
	.quad	.LBB5_7
                                        # -- End function
	.text
	.globl	hllSparseSet            # -- Begin function hllSparseSet
	.p2align	4, 0x90
	.type	hllSparseSet,@function
hllSparseSet:                           # @hllSparseSet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	%rdx, %rax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cmpb	$32, %dl
	jbe	.LBB6_5
.LBB6_1:
	movq	%rbx, %rdi
	callq	hllSparseToDense
	cmpl	$-1, %eax
	je	.LBB6_8
# %bb.2:
	movq	8(%rbx), %r9
	addq	%r13, %r13
	leaq	(,%r13,2), %rdx
	addq	%r13, %rdx
	leaq	7(,%r13,2), %rdi
	addq	%r13, %rdi
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rdi
	sarq	$3, %rdi
	andl	$6, %edx
	movl	$8, %r11d
	subq	%rdx, %r11
	movzbl	16(%r9,%rdi), %r10d
	movq	%r10, %rsi
	movl	%edx, %ecx
	shrq	%cl, %rsi
	movzbl	17(%r9,%rdi), %r8d
	movl	%r8d, %ebx
	movl	%r11d, %ecx
	shll	%cl, %ebx
	orl	%ebx, %esi
	andl	$63, %esi
	movzbl	-64(%rbp), %eax         # 1-byte Folded Reload
	cmpl	%eax, %esi
	jae	.LBB6_81
# %bb.3:
	movl	$63, %esi
	movl	%edx, %ecx
	shll	%cl, %esi
	notb	%sil
	andb	%r10b, %sil
	movq	%rax, %rbx
	shlq	%cl, %rbx
	orb	%sil, %bl
	movl	$-64, %edx
	movl	%r11d, %ecx
	sarl	%cl, %edx
	movb	%bl, 16(%r9,%rdi)
	shrq	%cl, %rax
	andb	%r8b, %dl
	orb	%dl, %al
	movb	%al, 17(%r9,%rdi)
.LBB6_4:
	movl	$1, %ecx
	jmp	.LBB6_35
.LBB6_5:
	movq	8(%rbx), %rdi
	movl	$3, %esi
	callq	sdsMakeRoomFor
	movq	%rax, 8(%rbx)
	movzbl	-1(%rax), %r15d
	movl	%r15d, %edx
	andb	$7, %dl
	movl	$-1, %ecx
	cmpb	$4, %dl
	ja	.LBB6_35
# %bb.6:
	movl	%r15d, %edx
	andl	$7, %edx
	jmpq	*.LJTI6_0(,%rdx,8)
.LBB6_7:
	shrq	$3, %r15
	cmpq	$17, %r15
	jge	.LBB6_13
	jmp	.LBB6_35
.LBB6_8:
	movl	$-1, %ecx
	jmp	.LBB6_35
.LBB6_9:
	movq	-17(%rax), %r15
	cmpq	$17, %r15
	jge	.LBB6_13
	jmp	.LBB6_35
.LBB6_10:
	movzwl	-5(%rax), %r15d
	cmpq	$17, %r15
	jge	.LBB6_13
	jmp	.LBB6_35
.LBB6_11:
	movl	-9(%rax), %r15d
	cmpq	$17, %r15
	jge	.LBB6_13
	jmp	.LBB6_35
.LBB6_12:
	movzbl	-3(%rax), %r15d
	cmpq	$17, %r15
	jl	.LBB6_35
.LBB6_13:                               # %.preheader3
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	addq	%rax, %r15
	leaq	16(%rax), %r12
	xorl	%r14d, %r14d
	movq	%r12, %r11
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rbx
	movzbl	(%r12), %edi
	testb	$-64, %dil
	je	.LBB6_17
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=1
	testb	%dil, %dil
	js	.LBB6_18
# %bb.16:                               #   in Loop: Header=BB6_14 Depth=1
	andl	$63, %edi
	shll	$8, %edi
	movzbl	1(%rbx), %edx
	orl	%edx, %edi
	movl	$2, %r12d
	jmp	.LBB6_20
	.p2align	4, 0x90
.LBB6_17:                               #   in Loop: Header=BB6_14 Depth=1
	andl	$63, %edi
	jmp	.LBB6_19
	.p2align	4, 0x90
.LBB6_18:                               #   in Loop: Header=BB6_14 Depth=1
	andl	$3, %edi
.LBB6_19:                               #   in Loop: Header=BB6_14 Depth=1
	movl	$1, %r12d
.LBB6_20:                               #   in Loop: Header=BB6_14 Depth=1
	movl	%edi, %edx
	addq	%rsi, %rdx
	addq	$1, %rdx
	cmpq	%r13, %rdx
	jg	.LBB6_23
# %bb.21:                               #   in Loop: Header=BB6_14 Depth=1
	addq	%rbx, %r12
	movq	%rbx, %r14
	movq	%rdx, %rsi
	cmpq	%r15, %r12
	jb	.LBB6_14
# %bb.22:
	cmpq	%r15, %r12
	jb	.LBB6_24
	jmp	.LBB6_35
.LBB6_23:
	movq	%rsi, %rdx
	movq	%rbx, %r12
	cmpq	%r15, %r12
	jae	.LBB6_35
.LBB6_24:
	movzbl	(%r12), %r10d
	movl	%r10d, %ecx
	andl	$192, %ecx
	xorl	%esi, %esi
	cmpl	$64, %ecx
	sete	%sil
	leaq	(%rsi,%r12), %r9
	addq	$1, %r9
	xorl	%esi, %esi
	cmpq	%r15, %r9
	cmovbq	%r9, %rsi
	movl	%r10d, %ebx
	andl	$192, %ebx
	je	.LBB6_27
# %bb.25:
	xorl	%ecx, %ecx
	cmpl	$64, %ebx
	jne	.LBB6_29
# %bb.26:
	movl	$1, %r8d
	jmp	.LBB6_32
.LBB6_27:
	testb	$63, %r10b
	je	.LBB6_40
# %bb.28:
	movl	$1, %ecx
	xorl	%r8d, %r8d
	jmp	.LBB6_32
.LBB6_29:
	movl	%r10d, %ebx
	shrb	$2, %bl
	andb	$31, %bl
	addb	$1, %bl
	cmpb	-64(%rbp), %bl          # 1-byte Folded Reload
	jae	.LBB6_35
# %bb.30:
	testb	$3, %r10b
	je	.LBB6_40
# %bb.31:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
.LBB6_32:
	addl	%edx, %edi
	orq	%r8, %rcx
	je	.LBB6_36
# %bb.33:
	cmpq	%r13, %rdx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB6_38
# %bb.34:
	leaq	-45(%rbp), %rdx
	jmp	.LBB6_46
.LBB6_35:
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_36:
	shrb	$2, %r10b
	andb	$31, %r10b
	cmpq	%r13, %rdx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB6_41
# %bb.37:
	leaq	-45(%rbp), %rdx
	jmp	.LBB6_42
.LBB6_38:
	movq	%r13, %rcx
	subq	%rdx, %rcx
	cmpl	$65, %ecx
	jl	.LBB6_45
# %bb.39:
	addl	$-1, %ecx
	movl	%ecx, %edx
	shrl	$8, %edx
	orb	$64, %dl
	movb	%dl, -45(%rbp)
	movb	%cl, -44(%rbp)
	leaq	-43(%rbp), %rdx
	jmp	.LBB6_46
.LBB6_40:
	movq	-64(%rbp), %rax         # 8-byte Reload
	shlb	$2, %al
	addb	$124, %al
	orb	$-128, %al
	movb	%al, (%r12)
	movq	%r11, %r13
	jmp	.LBB6_67
.LBB6_41:
	movl	%r13d, %ecx
	subl	%edx, %ecx
	leal	(,%r10,4), %edx
	addb	$-1, %cl
	orb	%dl, %cl
	orb	$-128, %cl
	movb	%cl, -45(%rbp)
	leaq	-44(%rbp), %rdx
.LBB6_42:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leal	(,%rcx,4), %ecx
	addb	$124, %cl
	orb	$-128, %cl
	movb	%cl, (%rdx)
	movslq	%edi, %rcx
	cmpq	%r13, %rcx
	je	.LBB6_47
# %bb.44:
	shlb	$2, %r10b
	movl	%r13d, %ecx
	notl	%ecx
	addl	%ecx, %edi
	orb	%r10b, %dil
	orb	$-128, %dil
	jmp	.LBB6_51
.LBB6_45:
	addb	$-1, %cl
	movb	%cl, -45(%rbp)
	leaq	-44(%rbp), %rdx
.LBB6_46:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leal	(,%rcx,4), %ecx
	addb	$124, %cl
	orb	$-128, %cl
	movb	%cl, (%rdx)
	movslq	%edi, %rcx
	cmpq	%r13, %rcx
	jne	.LBB6_48
.LBB6_47:
	addq	$1, %rdx
	jmp	.LBB6_52
.LBB6_48:
	subl	%r13d, %edi
	cmpl	$65, %edi
	jl	.LBB6_50
# %bb.49:
	addl	$-1, %edi
	movl	%edi, %ecx
	shrl	$8, %ecx
	orb	$64, %cl
	movb	%cl, 1(%rdx)
	movb	%dil, 2(%rdx)
	addq	$3, %rdx
	jmp	.LBB6_52
.LBB6_50:
	addb	$-1, %dil
.LBB6_51:
	movb	%dil, 1(%rdx)
	addq	$2, %rdx
.LBB6_52:
	leaq	-45(%rbp), %rcx
	subq	%rcx, %rdx
	cmpq	$1, %r8
	movl	%edx, %ecx
	adcl	$0, %ecx
	addl	$-2, %ecx
	movslq	%ecx, %r10
	testl	%ecx, %ecx
	jle	.LBB6_62
# %bb.53:
	movq	%rdx, %r8
	movzbl	-1(%rax), %edx
	movl	%edx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB6_57
# %bb.54:
	movl	%edx, %edi
	andl	$7, %edi
	jmpq	*.LJTI6_1(,%rdi,8)
.LBB6_55:
	shrq	$3, %rdx
	jmp	.LBB6_61
.LBB6_56:
	movq	-17(%rax), %rdx
	jmp	.LBB6_61
.LBB6_57:
	xorl	%edx, %edx
	jmp	.LBB6_61
.LBB6_58:
	movzbl	-3(%rax), %edx
	jmp	.LBB6_61
.LBB6_59:
	movzwl	-5(%rax), %edx
	jmp	.LBB6_61
.LBB6_60:
	movl	-9(%rax), %edx
.LBB6_61:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	%r10, %rdx
	cmpq	server+2840(%rip), %rdx
	movq	%r8, %rdx
	ja	.LBB6_1
.LBB6_62:
	cmpq	%r15, %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	jae	.LBB6_65
# %bb.63:
	testl	%ecx, %ecx
	movq	%r11, %r13
	je	.LBB6_66
# %bb.64:
	leaq	(%rsi,%r10), %rdi
	movq	%r15, %rdx
	subq	%rsi, %rdx
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	memmove
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	8(%rbx), %rax
	jmp	.LBB6_66
.LBB6_65:
	movq	%r11, %r13
.LBB6_66:
	movq	%rax, %rdi
	movq	%r10, %rsi
	movq	%r10, %rbx
	callq	sdsIncrLen
	movslq	-72(%rbp), %rdx         # 4-byte Folded Reload
	leaq	-45(%rbp), %rsi
	movq	%r12, %rdi
	callq	memcpy
	addq	%rbx, %r15
.LBB6_67:
	testq	%r14, %r14
	cmovneq	%r14, %r13
	cmpq	%r15, %r13
	jae	.LBB6_80
# %bb.68:                               # %.preheader
	movl	$5, %ebx
	jmp	.LBB6_71
.LBB6_69:                               #   in Loop: Header=BB6_71 Depth=1
	addq	$2, %r13
	movq	%r13, %r14
.LBB6_70:                               #   in Loop: Header=BB6_71 Depth=1
	negl	%ebx
	movq	%r14, %r13
	cmpq	%r15, %r14
	jae	.LBB6_80
.LBB6_71:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_72 Depth 2
	movl	$1, %eax
	subl	%ebx, %eax
	leaq	1(%r13), %r14
	movl	%eax, %ebx
	.p2align	4, 0x90
.LBB6_72:                               #   Parent Loop BB6_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, %ebx
	je	.LBB6_80
# %bb.73:                               #   in Loop: Header=BB6_72 Depth=2
	movzbl	(%r13), %eax
	movl	%eax, %ecx
	andb	$-64, %cl
	je	.LBB6_70
# %bb.74:                               #   in Loop: Header=BB6_72 Depth=2
	cmpb	$64, %cl
	je	.LBB6_69
# %bb.75:                               #   in Loop: Header=BB6_72 Depth=2
	cmpq	%r15, %r14
	jae	.LBB6_70
# %bb.76:                               #   in Loop: Header=BB6_72 Depth=2
	movzbl	(%r14), %ecx
	testb	%cl, %cl
	jns	.LBB6_70
# %bb.77:                               #   in Loop: Header=BB6_72 Depth=2
	movl	%ecx, %edx
	xorl	%eax, %edx
	testb	$124, %dl
	jne	.LBB6_70
# %bb.78:                               #   in Loop: Header=BB6_72 Depth=2
	movl	%eax, %edx
	andl	$3, %edx
	andl	$3, %ecx
	leal	(%rdx,%rcx), %esi
	addl	$2, %esi
	cmpl	$4, %esi
	ja	.LBB6_70
# %bb.79:                               #   in Loop: Header=BB6_72 Depth=2
	addl	%ecx, %edx
	andl	$124, %eax
	addl	$1, %edx
	orl	%eax, %edx
	orb	$-128, %dl
	movb	%dl, 1(%r13)
	movq	%r15, %rdx
	subq	%r13, %rdx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	memmove
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movq	$-1, %rsi
	callq	sdsIncrLen
	addq	$-1, %r15
	addl	$1, %ebx
	cmpq	%r15, %r13
	jb	.LBB6_72
.LBB6_80:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	orb	$-128, 15(%rax)
	jmp	.LBB6_4
.LBB6_81:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$893, %edx              # imm = 0x37D
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end6:
	.size	hllSparseSet, .Lfunc_end6-hllSparseSet
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_7
	.quad	.LBB6_12
	.quad	.LBB6_10
	.quad	.LBB6_11
	.quad	.LBB6_9
.LJTI6_1:
	.quad	.LBB6_55
	.quad	.LBB6_58
	.quad	.LBB6_59
	.quad	.LBB6_60
	.quad	.LBB6_56
                                        # -- End function
	.text
	.globl	hllSparseAdd            # -- Begin function hllSparseAdd
	.p2align	4, 0x90
	.type	hllSparseAdd,@function
hllSparseAdd:                           # @hllSparseAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	$-1379386599, %edx      # imm = 0xADC83B19
	callq	MurmurHash64A
	movb	$1, %cl
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB7_3
# %bb.1:                                # %.preheader
	movq	%rax, %rcx
	shrq	$14, %rcx
	movabsq	$1125899906842624, %rdx # imm = 0x4000000000000
	orq	%rcx, %rdx
	movl	$1, %esi
	movb	$1, %cl
	.p2align	4, 0x90
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	addq	%rsi, %rsi
	addb	$1, %cl
	testq	%rdx, %rsi
	je	.LBB7_2
.LBB7_3:
	andl	$16383, %eax            # imm = 0x3FFF
	movzbl	%cl, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	hllSparseSet            # TAILCALL
.Lfunc_end7:
	.size	hllSparseAdd, .Lfunc_end7-hllSparseAdd
                                        # -- End function
	.globl	hllSparseRegHisto       # -- Begin function hllSparseRegHisto
	.p2align	4, 0x90
	.type	hllSparseRegHisto,@function
hllSparseRegHisto:                      # @hllSparseRegHisto
# %bb.0:
	pushq	%rbx
	testl	%esi, %esi
	jle	.LBB8_1
# %bb.2:                                # %.preheader
	movslq	%esi, %r8
	addq	%rdi, %r8
	xorl	%r11d, %r11d
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=1
	movl	%eax, %esi
	andl	$3, %esi
	addl	$1, %esi
	andl	$124, %eax
	leaq	(%rax,%rcx), %rbx
	addq	$4, %rbx
	movl	4(%rax,%rcx), %r9d
	movl	$1, %r10d
	movl	%esi, %eax
.LBB8_8:                                #   in Loop: Header=BB8_3 Depth=1
	addl	%esi, %r11d
	addl	%r9d, %eax
	movl	%eax, (%rbx)
	addq	%r10, %rdi
	cmpq	%r8, %rdi
	jae	.LBB8_9
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	movl	%eax, %ebx
	andb	$-64, %bl
	cmpb	$64, %bl
	je	.LBB8_6
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	testb	%bl, %bl
	jne	.LBB8_7
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	andl	$63, %eax
	addl	$1, %eax
	movl	(%rcx), %r9d
	movl	$1, %r10d
	movq	%rcx, %rbx
	movl	%eax, %esi
	jmp	.LBB8_8
	.p2align	4, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	andl	$63, %eax
	shll	$8, %eax
	movzbl	1(%rdi), %esi
	leal	(%rax,%rsi), %r9d
	addl	$1, %r9d
	movl	(%rcx), %eax
	movl	$2, %r10d
	movq	%rcx, %rbx
	movl	%r9d, %esi
	jmp	.LBB8_8
.LBB8_9:
	cmpl	$16384, %r11d           # imm = 0x4000
	setne	%al
	testq	%rdx, %rdx
	jne	.LBB8_11
.LBB8_13:
	popq	%rbx
	retq
.LBB8_1:
	movb	$1, %al
	testq	%rdx, %rdx
	je	.LBB8_13
.LBB8_11:
	testb	%al, %al
	je	.LBB8_13
# %bb.12:
	movl	$1, (%rdx)
	popq	%rbx
	retq
.Lfunc_end8:
	.size	hllSparseRegHisto, .Lfunc_end8-hllSparseRegHisto
                                        # -- End function
	.globl	hllRawRegHisto          # -- Begin function hllRawRegHisto
	.p2align	4, 0x90
	.type	hllRawRegHisto,@function
hllRawRegHisto:                         # @hllRawRegHisto
# %bb.0:
	xorl	%eax, %eax
	jmp	.LBB9_1
	.p2align	4, 0x90
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	movzbl	%cl, %ecx
	addl	$1, (%rsi,%rcx,4)
	movzbl	1(%rdi,%rax,8), %ecx
	addl	$1, (%rsi,%rcx,4)
	movzbl	2(%rdi,%rax,8), %ecx
	addl	$1, (%rsi,%rcx,4)
	movzbl	3(%rdi,%rax,8), %ecx
	addl	$1, (%rsi,%rcx,4)
	movzbl	4(%rdi,%rax,8), %ecx
	addl	$1, (%rsi,%rcx,4)
	movzbl	5(%rdi,%rax,8), %ecx
	addl	$1, (%rsi,%rcx,4)
	movzbl	6(%rdi,%rax,8), %ecx
	addl	$1, (%rsi,%rcx,4)
	movzbl	7(%rdi,%rax,8), %ecx
	leaq	(%rsi,%rcx,4), %rcx
	movl	$1, %edx
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	addl	%edx, (%rcx)
	addq	$1, %rax
	cmpl	$2048, %eax             # imm = 0x800
	je	.LBB9_5
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	jne	.LBB9_3
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$8, %edx
	movq	%rsi, %rcx
	jmp	.LBB9_4
.LBB9_5:
	retq
.Lfunc_end9:
	.size	hllRawRegHisto, .Lfunc_end9-hllRawRegHisto
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function hllSigma
.LCPI10_0:
	.quad	9218868437227405312     # double +Inf
.LCPI10_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	hllSigma
	.p2align	4, 0x90
	.type	hllSigma,@function
hllSigma:                               # @hllSigma
# %bb.0:
	ucomisd	.LCPI10_1(%rip), %xmm0
	jne	.LBB10_2
	jp	.LBB10_2
# %bb.1:
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	retq
.LBB10_2:                               # %.preheader
	movsd	.LCPI10_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm3
	.p2align	4, 0x90
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	mulsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm3
	movapd	%xmm1, %xmm3
	jne	.LBB10_3
	jp	.LBB10_3
# %bb.4:
	movapd	%xmm1, %xmm0
	retq
.Lfunc_end10:
	.size	hllSigma, .Lfunc_end10-hllSigma
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function hllTau
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4602678819172646912     # double 0.5
.LCPI11_2:
	.quad	4611686018427387904     # double 2
.LCPI11_3:
	.quad	4613937818241073152     # double 3
	.text
	.globl	hllTau
	.p2align	4, 0x90
	.type	hllTau,@function
hllTau:                                 # @hllTau
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movapd	%xmm0, %xmm1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_1
	jnp	.LBB11_5
.LBB11_1:
	ucomisd	.LCPI11_0(%rip), %xmm1
	jne	.LBB11_2
	jnp	.LBB11_5
.LBB11_2:
	movsd	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm2, -8(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	sqrt
	movapd	%xmm0, %xmm1
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI11_1(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	.LCPI11_2(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	-8(%rbp), %xmm0         # 8-byte Folded Reload
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB11_3
	jp	.LBB11_3
# %bb.4:
	divsd	.LCPI11_3(%rip), %xmm0
.LBB11_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	hllTau, .Lfunc_end11-hllTau
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function hllCount
.LCPI12_0:
	.quad	4670232813583204352     # double 16384
.LCPI12_1:
	.quad	4544132024016830464     # double 6.103515625E-5
.LCPI12_2:
	.quad	4607182418800017408     # double 1
.LCPI12_3:
	.quad	4602678819172646912     # double 0.5
.LCPI12_4:
	.quad	4611686018427387904     # double 2
.LCPI12_5:
	.quad	4613937818241073152     # double 3
.LCPI12_6:
	.quad	9218868437227405312     # double +Inf
.LCPI12_7:
	.quad	4730773329960207102     # double 193635250.58498377
.LCPI12_8:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	hllCount
	.p2align	4, 0x90
	.type	hllCount,@function
hllCount:                               # @hllCount
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp              # imm = 0x140
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -288(%rbp)
	movaps	%xmm0, -304(%rbp)
	movb	4(%rdi), %al
	cmpb	$-1, %al
	je	.LBB12_24
# %bb.1:
	cmpb	$1, %al
	je	.LBB12_4
# %bb.2:
	testb	%al, %al
	jne	.LBB12_42
# %bb.3:
	addq	$16, %rdi
	leaq	-304(%rbp), %rsi
	callq	hllDenseRegHisto
	jmp	.LBB12_29
.LBB12_4:
	movzbl	-1(%rdi), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	movb	$1, %al
	cmpb	$4, %dl
	ja	.LBB12_21
# %bb.5:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI12_0(,%rdx,8)
.LBB12_6:
	shrq	$3, %rcx
	jmp	.LBB12_11
.LBB12_24:
	xorl	%eax, %eax
	jmp	.LBB12_25
	.p2align	4, 0x90
.LBB12_26:                              #   in Loop: Header=BB12_25 Depth=1
	addl	$8, -304(%rbp)
.LBB12_28:                              #   in Loop: Header=BB12_25 Depth=1
	addq	$1, %rax
	cmpl	$2048, %eax             # imm = 0x800
	je	.LBB12_29
.LBB12_25:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB12_26
# %bb.27:                               #   in Loop: Header=BB12_25 Depth=1
	movzbl	%cl, %ecx
	addl	$1, -304(%rbp,%rcx,4)
	movzbl	17(%rdi,%rax,8), %ecx
	addl	$1, -304(%rbp,%rcx,4)
	movzbl	18(%rdi,%rax,8), %ecx
	addl	$1, -304(%rbp,%rcx,4)
	movzbl	19(%rdi,%rax,8), %ecx
	addl	$1, -304(%rbp,%rcx,4)
	movzbl	20(%rdi,%rax,8), %ecx
	addl	$1, -304(%rbp,%rcx,4)
	movzbl	21(%rdi,%rax,8), %ecx
	addl	$1, -304(%rbp,%rcx,4)
	movzbl	22(%rdi,%rax,8), %ecx
	addl	$1, -304(%rbp,%rcx,4)
	movzbl	23(%rdi,%rax,8), %ecx
	addl	$1, -304(%rbp,%rcx,4)
	jmp	.LBB12_28
.LBB12_10:
	movq	-17(%rdi), %rcx
	jmp	.LBB12_11
.LBB12_8:
	movzwl	-5(%rdi), %ecx
	jmp	.LBB12_11
.LBB12_7:
	movzbl	-3(%rdi), %ecx
	jmp	.LBB12_11
.LBB12_9:
	movl	-9(%rdi), %ecx
.LBB12_11:
	addl	$-16, %ecx
	testl	%ecx, %ecx
	jle	.LBB12_21
# %bb.12:                               # %.preheader1
	movslq	%ecx, %rax
	leaq	(%rdi,%rax), %r9
	addq	$16, %r9
	addq	$16, %rdi
	xorl	%r10d, %r10d
	leaq	-304(%rbp), %r8
	xorl	%edx, %edx
	jmp	.LBB12_13
	.p2align	4, 0x90
.LBB12_16:                              #   in Loop: Header=BB12_13 Depth=1
	andl	$63, %eax
	shll	$8, %eax
	movzbl	1(%rdi), %ecx
	leal	(%rax,%rcx), %r11d
	addl	%eax, %ecx
	addl	$1, %ecx
	addl	%r11d, %r10d
	addl	$1, %r10d
	movl	%r10d, -304(%rbp)
	movl	$2, %eax
.LBB12_19:                              #   in Loop: Header=BB12_13 Depth=1
	addl	%ecx, %edx
	addq	%rax, %rdi
	cmpq	%r9, %rdi
	jae	.LBB12_20
.LBB12_13:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	movl	%eax, %ecx
	andb	$-64, %cl
	cmpb	$64, %cl
	je	.LBB12_16
# %bb.14:                               #   in Loop: Header=BB12_13 Depth=1
	testb	%cl, %cl
	jne	.LBB12_17
# %bb.15:                               #   in Loop: Header=BB12_13 Depth=1
	andl	$63, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	addl	%eax, %r10d
	addl	$1, %r10d
	movl	%r10d, -304(%rbp)
	jmp	.LBB12_18
	.p2align	4, 0x90
.LBB12_17:                              #   in Loop: Header=BB12_13 Depth=1
	movl	%eax, %ecx
	andl	$3, %ecx
	addl	$1, %ecx
	andl	$124, %eax
	addl	%ecx, 4(%rax,%r8)
.LBB12_18:                              #   in Loop: Header=BB12_13 Depth=1
	movl	$1, %eax
	jmp	.LBB12_19
.LBB12_20:
	cmpl	$16384, %edx            # imm = 0x4000
	setne	%al
.LBB12_21:
	testq	%rsi, %rsi
	je	.LBB12_29
# %bb.22:
	testb	%al, %al
	je	.LBB12_29
# %bb.23:
	movl	$1, (%rsi)
.LBB12_29:
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm0
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI12_1(%rip), %xmm1
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm1
	jne	.LBB12_30
	jnp	.LBB12_34
.LBB12_30:
	ucomisd	.LCPI12_2(%rip), %xmm1
	jne	.LBB12_31
	jnp	.LBB12_34
.LBB12_31:
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm4
	subsd	%xmm1, %xmm4
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB12_32:                              # =>This Inner Loop Header: Depth=1
	movsd	%xmm4, -32(%rbp)        # 8-byte Spill
	movsd	%xmm4, -24(%rbp)        # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	sqrt
	movapd	%xmm0, %xmm1
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI12_3(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	.LCPI12_4(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	-8(%rbp), %xmm0         # 8-byte Folded Reload
	subsd	%xmm0, %xmm4
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB12_32
	jp	.LBB12_32
# %bb.33:
	divsd	.LCPI12_5(%rip), %xmm4
	mulsd	.LCPI12_0(%rip), %xmm4
.LBB12_34:
	movl	$51, %eax
	movsd	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB12_35:                              # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-308(%rbp,%rax,4), %xmm1
	addsd	%xmm4, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	-312(%rbp,%rax,4), %xmm2
	addsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-316(%rbp,%rax,4), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	-320(%rbp,%rax,4), %xmm2
	addsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm4, %xmm4
	cvtsi2sdl	-324(%rbp,%rax,4), %xmm4
	addsd	%xmm2, %xmm4
	mulsd	%xmm0, %xmm4
	addq	$-5, %rax
	cmpq	$1, %rax
	ja	.LBB12_35
# %bb.36:
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-304(%rbp), %xmm0
	mulsd	.LCPI12_1(%rip), %xmm0
	ucomisd	.LCPI12_2(%rip), %xmm0
	jne	.LBB12_38
	jp	.LBB12_38
# %bb.37:
	movsd	.LCPI12_6(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB12_41
.LBB12_38:                              # %.preheader
	movsd	.LCPI12_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	.p2align	4, 0x90
.LBB12_39:                              # =>This Inner Loop Header: Depth=1
	movapd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm3
	jne	.LBB12_39
	jp	.LBB12_39
# %bb.40:
	mulsd	.LCPI12_0(%rip), %xmm1
.LBB12_41:
	addsd	%xmm1, %xmm4
	movsd	.LCPI12_7(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm4, %xmm0
	movsd	%xmm0, -40(%rbp)
	fldl	-40(%rbp)
	fstpt	(%rsp)
	callq	llroundl
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movsd	.LCPI12_8(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rax
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.LBB12_42:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$1033, %esi             # imm = 0x409
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end12:
	.size	hllCount, .Lfunc_end12-hllCount
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_6
	.quad	.LBB12_7
	.quad	.LBB12_8
	.quad	.LBB12_9
	.quad	.LBB12_10
                                        # -- End function
	.text
	.globl	hllAdd                  # -- Begin function hllAdd
	.p2align	4, 0x90
	.type	hllAdd,@function
hllAdd:                                 # @hllAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	8(%rdi), %r14
	movb	4(%r14), %cl
	cmpb	$1, %cl
	je	.LBB13_9
# %bb.1:
	movl	$-1, %eax
	testb	%cl, %cl
	jne	.LBB13_8
# %bb.2:
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	$-1379386599, %edx      # imm = 0xADC83B19
	callq	MurmurHash64A
	movl	$1, %r9d
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB13_6
# %bb.3:                                # %.preheader
	movq	%rax, %rdx
	shrq	$14, %rdx
	movabsq	$1125899906842624, %rcx # imm = 0x4000000000000
	orq	%rdx, %rcx
	movl	$1, %esi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %edx
	addq	%rsi, %rsi
	testq	%rcx, %rsi
	je	.LBB13_4
# %bb.5:
	movzbl	%dl, %r9d
.LBB13_6:
	andl	$16383, %eax            # imm = 0x3FFF
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	andl	$6, %edx
	movl	$8, %r11d
	subq	%rdx, %r11
	movzbl	16(%r14,%rdi), %r10d
	movq	%r10, %rbx
	movl	%edx, %ecx
	shrq	%cl, %rbx
	movzbl	17(%r14,%rdi), %r8d
	movl	%r8d, %eax
	movl	%r11d, %ecx
	shll	%cl, %eax
	orl	%eax, %ebx
	andl	$63, %ebx
	xorl	%eax, %eax
	cmpl	%r9d, %ebx
	jae	.LBB13_8
# %bb.7:
	movl	$63, %eax
	movl	%edx, %ecx
	shll	%cl, %eax
	movl	%r9d, %esi
	notb	%al
	andb	%r10b, %al
	movq	%rsi, %rbx
	shlq	%cl, %rbx
	orb	%al, %bl
	movl	$-64, %eax
	movl	%r11d, %ecx
	sarl	%cl, %eax
	movb	%bl, 16(%r14,%rdi)
	shrq	%cl, %rsi
	andb	%r8b, %al
	orb	%al, %sil
	movb	%sil, 17(%r14,%rdi)
	movl	$1, %eax
.LBB13_8:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB13_9:
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	$-1379386599, %edx      # imm = 0xADC83B19
	callq	MurmurHash64A
	movb	$1, %cl
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB13_12
# %bb.10:                               # %.preheader1
	movq	%rax, %rcx
	shrq	$14, %rcx
	movabsq	$1125899906842624, %rdx # imm = 0x4000000000000
	orq	%rcx, %rdx
	movl	$1, %esi
	movb	$1, %cl
	.p2align	4, 0x90
.LBB13_11:                              # =>This Inner Loop Header: Depth=1
	addq	%rsi, %rsi
	addb	$1, %cl
	testq	%rdx, %rsi
	je	.LBB13_11
.LBB13_12:
	andl	$16383, %eax            # imm = 0x3FFF
	movzbl	%cl, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	hllSparseSet            # TAILCALL
.Lfunc_end13:
	.size	hllAdd, .Lfunc_end13-hllAdd
                                        # -- End function
	.globl	hllMerge                # -- Begin function hllMerge
	.p2align	4, 0x90
	.type	hllMerge,@function
hllMerge:                               # @hllMerge
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	8(%rsi), %r14
	cmpb	$0, 4(%r14)
	je	.LBB14_1
# %bb.5:
	movzbl	-1(%r14), %r8d
	movl	%r8d, %ecx
	andb	$7, %cl
	movl	$-1, %eax
	cmpb	$4, %cl
	ja	.LBB14_27
# %bb.6:
	movl	%r8d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI14_0(,%rcx,8)
.LBB14_7:
	shrq	$3, %r8
	cmpq	$17, %r8
	jge	.LBB14_13
	jmp	.LBB14_27
.LBB14_1:
	xorl	%esi, %esi
	jmp	.LBB14_2
	.p2align	4, 0x90
.LBB14_4:                               #   in Loop: Header=BB14_2 Depth=1
	addq	$6, %rsi
	addq	$1, %rdi
	cmpq	$98304, %rsi            # imm = 0x18000
	je	.LBB14_26
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	shrq	$3, %rax
	movzbl	16(%r14,%rax), %edx
	movzbl	17(%r14,%rax), %ebx
	movl	%esi, %ecx
	andb	$6, %cl
	shrq	%cl, %rdx
	movb	$8, %al
	subb	%cl, %al
	movl	%eax, %ecx
	shll	%cl, %ebx
	orl	%ebx, %edx
	andb	$63, %dl
	cmpb	(%rdi), %dl
	jbe	.LBB14_4
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=1
	movb	%dl, (%rdi)
	jmp	.LBB14_4
.LBB14_8:
	movzbl	-3(%r14), %r8d
	cmpq	$17, %r8
	jge	.LBB14_13
	jmp	.LBB14_27
.LBB14_9:
	movzwl	-5(%r14), %r8d
	cmpq	$17, %r8
	jge	.LBB14_13
	jmp	.LBB14_27
.LBB14_10:
	movl	-9(%r14), %r8d
	cmpq	$17, %r8
	jge	.LBB14_13
	jmp	.LBB14_27
.LBB14_11:
	movq	-17(%r14), %r8
	cmpq	$17, %r8
	jl	.LBB14_27
.LBB14_13:
	addq	%r14, %r8
	addq	$16, %r14
	xorl	%r9d, %r9d
	jmp	.LBB14_14
	.p2align	4, 0x90
.LBB14_17:                              #   in Loop: Header=BB14_14 Depth=1
	andl	$63, %esi
	shll	$8, %esi
	movzbl	1(%r14), %ecx
	orl	%esi, %ecx
	addl	%ecx, %r9d
	addl	$1, %r9d
	movl	$2, %ecx
.LBB14_24:                              #   in Loop: Header=BB14_14 Depth=1
	addq	%rcx, %r14
	cmpq	%r8, %r14
	jae	.LBB14_25
.LBB14_14:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %esi
	movl	%esi, %ecx
	andb	$-64, %cl
	cmpb	$64, %cl
	je	.LBB14_17
# %bb.15:                               #   in Loop: Header=BB14_14 Depth=1
	testb	%cl, %cl
	jne	.LBB14_18
# %bb.16:                               #   in Loop: Header=BB14_14 Depth=1
	andl	$63, %esi
	addl	%esi, %r9d
	addl	$1, %r9d
	jmp	.LBB14_23
	.p2align	4, 0x90
.LBB14_18:                              #   in Loop: Header=BB14_14 Depth=1
	movl	%esi, %ecx
	andl	$3, %ecx
	movslq	%r9d, %r11
	leaq	(%rcx,%r11), %rdx
	addq	$1, %rdx
	cmpq	$16384, %rdx            # imm = 0x4000
	jg	.LBB14_25
# %bb.19:                               #   in Loop: Header=BB14_14 Depth=1
	movq	%rcx, %r10
	addq	$1, %r10
	shrl	$2, %esi
	andl	$31, %esi
	addq	$1, %rsi
	movzbl	(%rdi,%r11), %edx
	cmpq	%rdx, %rsi
	jbe	.LBB14_21
# %bb.20:                               #   in Loop: Header=BB14_14 Depth=1
	movb	%sil, (%rdi,%r11)
.LBB14_21:                              #   in Loop: Header=BB14_14 Depth=1
	testl	%ecx, %ecx
	je	.LBB14_22
# %bb.28:                               #   in Loop: Header=BB14_14 Depth=1
	movzbl	1(%r11,%rdi), %ecx
	cmpq	%rcx, %rsi
	jbe	.LBB14_30
# %bb.29:                               #   in Loop: Header=BB14_14 Depth=1
	movb	%sil, 1(%rdi,%r11)
.LBB14_30:                              #   in Loop: Header=BB14_14 Depth=1
	cmpl	$2, %r10d
	je	.LBB14_22
# %bb.31:                               #   in Loop: Header=BB14_14 Depth=1
	movzbl	2(%r11,%rdi), %ecx
	cmpq	%rcx, %rsi
	jbe	.LBB14_33
# %bb.32:                               #   in Loop: Header=BB14_14 Depth=1
	movb	%sil, 2(%rdi,%r11)
.LBB14_33:                              #   in Loop: Header=BB14_14 Depth=1
	cmpl	$3, %r10d
	je	.LBB14_22
# %bb.34:                               #   in Loop: Header=BB14_14 Depth=1
	movzbl	3(%r11,%rdi), %ecx
	cmpq	%rcx, %rsi
	jbe	.LBB14_22
# %bb.35:                               #   in Loop: Header=BB14_14 Depth=1
	movb	%sil, 3(%rdi,%r11)
	.p2align	4, 0x90
.LBB14_22:                              #   in Loop: Header=BB14_14 Depth=1
	addl	%r10d, %r9d
.LBB14_23:                              #   in Loop: Header=BB14_14 Depth=1
	movl	$1, %ecx
	jmp	.LBB14_24
.LBB14_25:
	cmpl	$16384, %r9d            # imm = 0x4000
	jne	.LBB14_27
.LBB14_26:
	xorl	%eax, %eax
.LBB14_27:
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	hllMerge, .Lfunc_end14-hllMerge
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_7
	.quad	.LBB14_8
	.quad	.LBB14_9
	.quad	.LBB14_10
	.quad	.LBB14_11
                                        # -- End function
	.text
	.globl	createHLLObject         # -- Begin function createHLLObject
	.p2align	4, 0x90
	.type	createHLLObject,@function
createHLLObject:                        # @createHLLObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$18, %esi
	xorl	%edi, %edi
	callq	sdsnewlen
	movw	$-129, 16(%rax)
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r14
	movq	8(%rax), %rbx
	movl	$.L.str.4, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movb	$1, 4(%rbx)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	createHLLObject, .Lfunc_end15-createHLLObject
                                        # -- End function
	.globl	isHLLObjectOrReply      # -- Begin function isHLLObjectOrReply
	.p2align	4, 0x90
	.type	isHLLObjectOrReply,@function
isHLLObjectOrReply:                     # @isHLLObjectOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorl	%edx, %edx
	callq	checkType
	movl	$-1, %ebx
	testl	%eax, %eax
	jne	.LBB16_11
# %bb.1:
	movb	(%r15), %al
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB16_10
# %bb.2:
	movq	%r15, %rdi
	callq	stringObjectLen
	cmpq	$16, %rax
	jb	.LBB16_10
# %bb.3:
	movq	8(%r15), %rax
	cmpb	$72, (%rax)
	jne	.LBB16_10
# %bb.4:
	cmpb	$89, 1(%rax)
	jne	.LBB16_10
# %bb.5:
	cmpb	$76, 2(%rax)
	jne	.LBB16_10
# %bb.6:
	cmpb	$76, 3(%rax)
	jne	.LBB16_10
# %bb.7:
	movb	4(%rax), %al
	cmpb	$1, %al
	jbe	.LBB16_8
.LBB16_10:
	movl	$.L.str.5, %edi
	callq	sdsnew
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$-1, %ebx
.LBB16_11:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_8:
	xorl	%ebx, %ebx
	testb	%al, %al
	jne	.LBB16_11
# %bb.9:
	movq	%r15, %rdi
	callq	stringObjectLen
	cmpq	$12304, %rax            # imm = 0x3010
	jne	.LBB16_10
	jmp	.LBB16_11
.Lfunc_end16:
	.size	isHLLObjectOrReply, .Lfunc_end16-isHLLObjectOrReply
                                        # -- End function
	.globl	pfaddCommand            # -- Begin function pfaddCommand
	.p2align	4, 0x90
	.type	pfaddCommand,@function
pfaddCommand:                           # @pfaddCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r12
	movq	16(%rdi), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB17_1
# %bb.2:
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	testl	%eax, %eax
	je	.LBB17_3
# %bb.22:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_1:
	movl	$18, %esi
	xorl	%edi, %edi
	callq	sdsnewlen
	movw	$-129, 16(%rax)
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r14
	movq	8(%rax), %r15
	movl	$.L.str.4, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcpy
	movb	$1, 4(%r15)
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movl	$1, %r15d
	cmpl	$3, 64(%r12)
	jge	.LBB17_5
	jmp	.LBB17_19
.LBB17_3:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r14
	xorl	%r15d, %r15d
	cmpl	$3, 64(%r12)
	jl	.LBB17_19
.LBB17_5:                               # %.preheader
	movl	$2, %ebx
	jmp	.LBB17_6
	.p2align	4, 0x90
.LBB17_17:                              #   in Loop: Header=BB17_6 Depth=1
	addl	$1, %r15d
.LBB17_18:                              #   in Loop: Header=BB17_6 Depth=1
	addq	$1, %rbx
	movslq	64(%r12), %rax
	cmpq	%rax, %rbx
	jge	.LBB17_19
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB17_7
# %bb.8:                                #   in Loop: Header=BB17_6 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_9:                               #   in Loop: Header=BB17_6 Depth=1
	shrq	$3, %rdx
	jmp	.LBB17_14
.LBB17_7:                               #   in Loop: Header=BB17_6 Depth=1
	xorl	%edx, %edx
	jmp	.LBB17_14
.LBB17_10:                              #   in Loop: Header=BB17_6 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB17_14
.LBB17_11:                              #   in Loop: Header=BB17_6 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB17_14
.LBB17_12:                              #   in Loop: Header=BB17_6 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB17_14
.LBB17_13:                              #   in Loop: Header=BB17_6 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB17_14:                              #   in Loop: Header=BB17_6 Depth=1
	movq	%r14, %rdi
	callq	hllAdd
	cmpl	$1, %eax
	je	.LBB17_17
# %bb.15:                               #   in Loop: Header=BB17_6 Depth=1
	cmpl	$-1, %eax
	jne	.LBB17_18
# %bb.16:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r12, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplySds             # TAILCALL
.LBB17_19:
	testl	%r15d, %r15d
	je	.LBB17_21
# %bb.20:
	movq	8(%r14), %rbx
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r12), %rax
	movq	72(%r12), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.6, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	orb	$-128, 15(%rbx)
.LBB17_21:
	testl	%r15d, %r15d
	movl	$shared+40, %eax
	movl	$shared+32, %ecx
	cmovneq	%rax, %rcx
	movq	(%rcx), %rsi
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.Lfunc_end17:
	.size	pfaddCommand, .Lfunc_end17-pfaddCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI17_0:
	.quad	.LBB17_9
	.quad	.LBB17_10
	.quad	.LBB17_11
	.quad	.LBB17_12
	.quad	.LBB17_13
                                        # -- End function
	.text
	.globl	pfcountCommand          # -- Begin function pfcountCommand
	.p2align	4, 0x90
	.type	pfcountCommand,@function
pfcountCommand:                         # @pfcountCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16400, %rsp            # imm = 0x4010
	movq	%rdi, %r12
	cmpl	$3, 64(%rdi)
	jl	.LBB18_9
# %bb.1:
	leaq	-16432(%rbp), %rdi
	movl	$16400, %edx            # imm = 0x4010
	xorl	%esi, %esi
	callq	memset
	movb	$-1, -16428(%rbp)
	cmpl	$2, 64(%r12)
	jl	.LBB18_8
# %bb.2:
	leaq	-16416(%rbp), %r14
	movl	$1, %ebx
	jmp	.LBB18_3
	.p2align	4, 0x90
.LBB18_7:                               #   in Loop: Header=BB18_3 Depth=1
	addq	$1, %rbx
	movslq	64(%r12), %rax
	cmpq	%rax, %rbx
	jge	.LBB18_8
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB18_7
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	movq	%rax, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	testl	%eax, %eax
	jne	.LBB18_17
# %bb.5:                                #   in Loop: Header=BB18_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	hllMerge
	cmpl	$-1, %eax
	jne	.LBB18_7
	jmp	.LBB18_6
.LBB18_9:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB18_18
# %bb.10:
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	testl	%eax, %eax
	jne	.LBB18_17
# %bb.11:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbUnshareStringValue
	movq	8(%rax), %r15
	movzbl	15(%r15), %r14d
	testb	%r14b, %r14b
	js	.LBB18_13
# %bb.12:
	movzbl	8(%r15), %r8d
	movzbl	9(%r15), %ecx
	shlq	$8, %rcx
	movzbl	10(%r15), %edx
	shlq	$16, %rdx
	movzbl	11(%r15), %esi
	shlq	$24, %rsi
	movzbl	12(%r15), %edi
	shlq	$32, %rdi
	movzbl	13(%r15), %ebx
	shlq	$40, %rbx
	movzbl	14(%r15), %eax
	shlq	$48, %rax
	shlq	$56, %r14
	orq	%r8, %r14
	orq	%rcx, %r14
	orq	%rdx, %r14
	orq	%rsi, %r14
	orq	%rdi, %r14
	orq	%rbx, %r14
	orq	%rax, %r14
.LBB18_15:
	movq	%r12, %rdi
	movq	%r14, %rsi
	jmp	.LBB18_16
.LBB18_8:
	leaq	-16432(%rbp), %rdi
	xorl	%esi, %esi
	callq	hllCount
	movq	%r12, %rdi
	movq	%rax, %rsi
.LBB18_16:
	callq	addReplyLongLong
.LBB18_17:
	addq	$16400, %rsp            # imm = 0x4010
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_18:
	movq	shared+32(%rip), %rsi
	movq	%r12, %rdi
	addq	$16400, %rsp            # imm = 0x4010
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB18_13:
	movl	$0, -16432(%rbp)
	leaq	-16432(%rbp), %rsi
	movq	%r15, %rdi
	callq	hllCount
	cmpl	$0, -16432(%rbp)
	je	.LBB18_14
.LBB18_6:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB18_17
.LBB18_14:
	movq	%rax, %r14
	movq	%rax, 8(%r15)
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	jmp	.LBB18_15
.Lfunc_end18:
	.size	pfcountCommand, .Lfunc_end18-pfcountCommand
                                        # -- End function
	.globl	pfmergeCommand          # -- Begin function pfmergeCommand
	.p2align	4, 0x90
	.type	pfmergeCommand,@function
pfmergeCommand:                         # @pfmergeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16392, %rsp            # imm = 0x4008
	movq	%rdi, %r15
	leaq	-16432(%rbp), %rdi
	xorl	%r12d, %r12d
	movl	$16384, %edx            # imm = 0x4000
	xorl	%esi, %esi
	callq	memset
	cmpl	$2, 64(%r15)
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	jl	.LBB19_7
# %bb.1:                                # %.preheader
	xorl	%r12d, %r12d
	movl	$1, %ebx
	leaq	-16432(%rbp), %r14
	jmp	.LBB19_2
	.p2align	4, 0x90
.LBB19_6:                               #   in Loop: Header=BB19_2 Depth=1
	addq	$1, %rbx
	movslq	64(%r15), %rcx
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	cmpq	%rcx, %rbx
	jge	.LBB19_7
.LBB19_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB19_6
# %bb.3:                                #   in Loop: Header=BB19_2 Depth=1
	movq	%rax, %r13
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	testl	%eax, %eax
	jne	.LBB19_21
# %bb.4:                                #   in Loop: Header=BB19_2 Depth=1
	movq	8(%r13), %rax
	cmpb	$0, 4(%rax)
	movl	$1, %eax
	cmovel	%eax, %r12d
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	hllMerge
	cmpl	$-1, %eax
	jne	.LBB19_6
	jmp	.LBB19_5
.LBB19_7:
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB19_8
# %bb.9:
	movq	16(%r15), %rdi
	movq	72(%r15), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r14
	testl	%r12d, %r12d
	jne	.LBB19_11
	jmp	.LBB19_12
.LBB19_8:
	movl	$18, %esi
	xorl	%edi, %edi
	callq	sdsnewlen
	movw	$-129, 16(%rax)
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r14
	movq	8(%rax), %rbx
	movl	$.L.str.4, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movb	$1, 4(%rbx)
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	testl	%r12d, %r12d
	je	.LBB19_12
.LBB19_11:
	movq	%r14, %rdi
	callq	hllSparseToDense
	cmpl	$-1, %eax
	je	.LBB19_5
.LBB19_12:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB19_13
	.p2align	4, 0x90
.LBB19_18:                              #   in Loop: Header=BB19_13 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	hllSparseSet
.LBB19_19:                              #   in Loop: Header=BB19_13 Depth=1
	addq	$1, %rbx
	addq	$6, %r12
	cmpq	$16384, %rbx            # imm = 0x4000
	je	.LBB19_20
.LBB19_13:                              # =>This Inner Loop Header: Depth=1
	movzbl	-16432(%rbp,%rbx), %edx
	testl	%edx, %edx
	je	.LBB19_19
# %bb.14:                               #   in Loop: Header=BB19_13 Depth=1
	movq	8(%r14), %r13
	movzbl	4(%r13), %eax
	cmpb	$1, %al
	je	.LBB19_18
# %bb.15:                               #   in Loop: Header=BB19_13 Depth=1
	testb	%al, %al
	jne	.LBB19_19
# %bb.16:                               #   in Loop: Header=BB19_13 Depth=1
	movq	%r12, %r11
	shrq	$3, %r11
	movl	%r12d, %esi
	andl	$6, %esi
	movl	$8, %r8d
	subq	%rsi, %r8
	movzbl	16(%r13,%r11), %r10d
	movq	%r10, %rax
	movl	%esi, %ecx
	shrq	%cl, %rax
	movzbl	17(%r13,%r11), %r9d
	movl	%r9d, %edi
	movl	%r8d, %ecx
	shll	%cl, %edi
	orl	%edi, %eax
	andl	$63, %eax
	cmpl	%edx, %eax
	jae	.LBB19_19
# %bb.17:                               #   in Loop: Header=BB19_13 Depth=1
	movl	$63, %eax
	movl	%esi, %ecx
	shll	%cl, %eax
	notb	%al
	andb	%r10b, %al
	movq	%rdx, %rdi
	shlq	%cl, %rdi
	movl	$-64, %esi
	movl	%r8d, %ecx
	sarl	%cl, %esi
	orb	%al, %dil
	shrq	%cl, %rdx
	movb	%dil, 16(%r13,%r11)
	andb	%r9b, %sil
	orb	%sil, %dl
	movb	%dl, 17(%r13,%r11)
	jmp	.LBB19_19
.LBB19_20:
	movq	8(%r14), %rax
	orb	$-128, 15(%rax)
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r15), %rax
	movq	72(%r15), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.6, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB19_21
.LBB19_5:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplySds
.LBB19_21:
	addq	$16392, %rsp            # imm = 0x4008
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pfmergeCommand, .Lfunc_end19-pfmergeCommand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function pfselftestCommand
.LCPI20_0:
	.quad	4670232813583204352     # double 16384
.LCPI20_1:
	.quad	4607362562785112228     # double 1.04
.LCPI20_2:
	.quad	4618441417868443648     # double 6
.LCPI20_3:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	pfselftestCommand
	.p2align	4, 0x90
	.type	pfselftestCommand,@function
pfselftestCommand:                      # @pfselftestCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16440, %rsp            # imm = 0x4038
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movl	$12304, %esi            # imm = 0x3010
	xorl	%edi, %edi
	callq	sdsnewlen
	movq	%rax, %r14
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$16, %r14
	leaq	-16480(%rbp), %r13
.LBB20_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_2 Depth 2
                                        #     Child Loop BB20_4 Depth 2
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB20_2:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	andl	$63, %eax
	movb	%al, (%r13)
	movl	%r15d, %r8d
	shrq	$3, %r8
	movl	%r15d, %ecx
	andb	$6, %cl
	movl	$63, %edi
	shll	%cl, %edi
	notb	%dil
	movq	%rax, %rbx
	shlq	%cl, %rbx
	andb	(%r14,%r8), %dil
	movb	$8, %dl
	subb	%cl, %dl
	movl	$-64, %esi
	movl	%edx, %ecx
	sarl	%cl, %esi
	orb	%dil, %bl
	movb	%bl, (%r14,%r8)
	andb	1(%r14,%r8), %sil
	shrq	%cl, %rax
	orb	%sil, %al
	movb	%al, 1(%r14,%r8)
	addq	$6, %r15
	addq	$1, %r13
	cmpq	$98304, %r15            # imm = 0x18000
	jne	.LBB20_2
# %bb.3:                                # %.preheader1
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_4:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %eax
	shrq	$3, %rax
	movzbl	(%r14,%rax), %r8d
	movzbl	1(%r14,%rax), %edi
	movl	%esi, %ecx
	andb	$6, %cl
	shrq	%cl, %r8
	movb	$8, %al
	subb	%cl, %al
	movl	%eax, %ecx
	shll	%cl, %edi
	orl	%edi, %r8d
	andl	$63, %r8d
	movzbl	-16480(%rbp,%rdx), %ecx
	cmpl	%ecx, %r8d
	jne	.LBB20_5
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=2
	addq	$1, %rdx
	addl	$6, %esi
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB20_4
# %bb.7:                                #   in Loop: Header=BB20_1 Depth=1
	addl	$1, %r12d
	cmpl	$1000, %r12d            # imm = 0x3E8
	leaq	-16480(%rbp), %r13
	jb	.LBB20_1
# %bb.8:
	movl	$12288, %edx            # imm = 0x3000
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$18, %esi
	xorl	%edi, %edi
	callq	sdsnewlen
	movw	$-129, 16(%rax)
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r15
	movq	8(%rax), %r13
	movl	$.L.str.4, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	movb	$1, 4(%r13)
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	sqrt
	movsd	.LCPI20_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	rand
	movslq	%eax, %rbx
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	shlq	$32, %rax
	orq	%rbx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI20_2(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$1, %r13d
	movl	$1, %r12d
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jmp	.LBB20_9
.LBB20_5:
	movl	$.L.str.7, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
                                        # kill: def $r8d killed $r8d killed $r8
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
.LBB20_28:
	addq	$16440, %rsp            # imm = 0x4038
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB20_23:                              #   in Loop: Header=BB20_9 Depth=1
	addq	$1, %r13
	cmpq	$10000001, %r13         # imm = 0x989681
	jae	.LBB20_24
.LBB20_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_11 Depth 2
	movq	-80(%rbp), %rax         # 8-byte Reload
	xorq	%r13, %rax
	movq	%rax, -88(%rbp)
	movabsq	$-4132994306676758123, %rsi # imm = 0xC6A4A7935BD1E995
	imulq	%rsi, %rax
	movq	%rax, %rcx
	shrq	$47, %rcx
	xorq	%rax, %rcx
	imulq	%rsi, %rcx
	movabsq	$3829533692205168561, %rax # imm = 0x35253C9A734777B1
	xorq	%rax, %rcx
	imulq	%rsi, %rcx
	movq	%rcx, %rdx
	shrq	$47, %rdx
	xorq	%rcx, %rdx
	imulq	%rsi, %rdx
	movq	%rdx, %rax
	shrq	$47, %rax
	xorq	%rdx, %rax
	movl	$1, %r9d
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB20_13
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB20_9 Depth=1
	movq	%rax, %rcx
	shrq	$14, %rcx
	movabsq	$1125899906842624, %rdx # imm = 0x4000000000000
	orq	%rdx, %rcx
	movl	$1, %esi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB20_11:                              #   Parent Loop BB20_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$1, %edx
	addq	%rsi, %rsi
	testq	%rcx, %rsi
	je	.LBB20_11
# %bb.12:                               #   in Loop: Header=BB20_9 Depth=1
	movzbl	%dl, %r9d
.LBB20_13:                              #   in Loop: Header=BB20_9 Depth=1
	andl	$16383, %eax            # imm = 0x3FFF
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rdx, %rsi
	shrq	$3, %rsi
	andl	$6, %edx
	movl	$8, %eax
	subq	%rdx, %rax
	movzbl	(%r14,%rsi), %r10d
	movq	%r10, %rdi
	movl	%edx, %ecx
	shrq	%cl, %rdi
	movzbl	1(%r14,%rsi), %r8d
	movl	%r8d, %ebx
	movl	%eax, %ecx
	shll	%cl, %ebx
	orl	%ebx, %edi
	andl	$63, %edi
	cmpl	%r9d, %edi
	jae	.LBB20_15
# %bb.14:                               #   in Loop: Header=BB20_9 Depth=1
	movl	%r9d, %r9d
	movl	$63, %ebx
	movl	%edx, %ecx
	shll	%cl, %ebx
	notb	%bl
	andb	%r10b, %bl
	movq	%r9, %rdi
	shlq	%cl, %rdi
	movl	$-64, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	orb	%bl, %dil
	shrq	%cl, %r9
	movb	%dil, (%r14,%rsi)
	andb	%r8b, %dl
	orb	%dl, %r9b
	movb	%r9b, 1(%r14,%rsi)
.LBB20_15:                              #   in Loop: Header=BB20_9 Depth=1
	movl	$8, %edx
	movq	%r15, %rdi
	leaq	-88(%rbp), %rsi
	callq	hllAdd
	cmpq	%r13, %r12
	jne	.LBB20_23
# %bb.16:                               #   in Loop: Header=BB20_9 Depth=1
	movq	server+2840(%rip), %rax
	shrq	%rax
	cmpq	%r13, %rax
	jbe	.LBB20_19
# %bb.17:                               #   in Loop: Header=BB20_9 Depth=1
	movq	8(%r15), %rax
	cmpb	$1, 4(%rax)
	jne	.LBB20_18
.LBB20_19:                              #   in Loop: Header=BB20_9 Depth=1
	movq	%r15, %rbx
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	hllCount
	movq	%rax, %r12
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	hllCount
	cmpq	%rax, %r12
	jne	.LBB20_20
# %bb.21:                               #   in Loop: Header=BB20_9 Depth=1
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	hllCount
	movq	%r13, %rbx
	subq	%rax, %rbx
	cvtsi2sd	%r13, %xmm0
	mulsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	callq	ceil
	movapd	%xmm0, %xmm1
	movsd	.LCPI20_3(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rdx
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rax, %rdx
	cmpq	$10, %r13
	movl	$1, %eax
	cmoveq	%rax, %rdx
	movq	%rbx, %rcx
	negq	%rcx
	cmovlq	%rbx, %rcx
	cmpq	%rdx, %rcx
	jg	.LBB20_25
# %bb.22:                               #   in Loop: Header=BB20_9 Depth=1
	movq	%r13, %rax
	addq	%r13, %rax
	leaq	(%rax,%rax,4), %r12
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB20_23
.LBB20_24:
	movq	shared+8(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
	testq	%r15, %r15
	jne	.LBB20_27
	jmp	.LBB20_28
.LBB20_20:
	movl	$.L.str.9, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	jmp	.LBB20_26
.LBB20_25:
	movl	$.L.str.10, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB20_26
.LBB20_18:
	movl	$.L.str.8, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB20_26:
	movq	%r15, %rdi
	callq	sdsfree
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB20_27:
	movq	%r15, %rdi
	callq	decrRefCount
	jmp	.LBB20_28
.Lfunc_end20:
	.size	pfselftestCommand, .Lfunc_end20-pfselftestCommand
                                        # -- End function
	.globl	pfdebugCommand          # -- Begin function pfdebugCommand
	.p2align	4, 0x90
	.type	pfdebugCommand,@function
pfdebugCommand:                         # @pfdebugCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	movq	16(%rdi), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %rsi
	movq	8(%rcx), %r14
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB21_1
# %bb.3:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	testl	%eax, %eax
	je	.LBB21_4
.LBB21_11:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_1:
	movl	$.L.str.11, %esi
.LBB21_2:
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyError           # TAILCALL
.LBB21_4:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	16(%rax), %rsi
	movq	%rbx, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r15
	movq	8(%rax), %r13
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB21_5
# %bb.12:
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB21_13
# %bb.42:
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB21_43
# %bb.45:
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB21_46
# %bb.51:
	movl	$.L.str.23, %esi
	jmp	.LBB21_52
.LBB21_5:
	cmpl	$3, 64(%r12)
	jne	.LBB21_53
# %bb.6:
	cmpb	$1, 4(%r13)
	jne	.LBB21_9
# %bb.7:
	movq	%r15, %rdi
	callq	hllSparseToDense
	cmpl	$-1, %eax
	je	.LBB21_54
# %bb.8:
	addq	$1, server+2080(%rip)
	movq	8(%r15), %r13
.LBB21_9:
	movl	$16384, %esi            # imm = 0x4000
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB21_10:                              # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	shrq	$3, %rax
	movzbl	16(%r13,%rax), %esi
	movzbl	17(%r13,%rax), %edx
	movl	%ebx, %ecx
	andb	$6, %cl
	shrq	%cl, %rsi
	movb	$8, %al
	subb	%cl, %al
	movl	%eax, %ecx
	shll	%cl, %edx
	orl	%edx, %esi
	andl	$63, %esi
	movq	%r12, %rdi
	callq	addReplyLongLong
	addl	$6, %ebx
	cmpl	$98304, %ebx            # imm = 0x18000
	jne	.LBB21_10
	jmp	.LBB21_11
.LBB21_13:
	cmpl	$3, 64(%r12)
	jne	.LBB21_53
# %bb.14:
	movzbl	-1(%r13), %r14d
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB21_15
# %bb.16:
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_17:
	shrq	$3, %r14
	jmp	.LBB21_22
.LBB21_43:
	cmpl	$3, 64(%r12)
	jne	.LBB21_53
# %bb.44:
	movzbl	4(%r13), %eax
	movq	.LpfdebugCommand.encodingstr(,%rax,8), %rsi
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyStatus          # TAILCALL
.LBB21_46:
	cmpl	$3, 64(%r12)
	jne	.LBB21_53
# %bb.47:
	movl	$shared+32, %eax
	cmpb	$1, 4(%r13)
	jne	.LBB21_50
# %bb.48:
	movq	%r15, %rdi
	callq	hllSparseToDense
	cmpl	$-1, %eax
	je	.LBB21_54
# %bb.49:
	addq	$1, server+2080(%rip)
	movl	$shared+40, %eax
.LBB21_50:
	movq	(%rax), %rsi
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB21_53:
	movl	$.L.str.24, %esi
.LBB21_52:
	movq	%r12, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyErrorFormat     # TAILCALL
.LBB21_54:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r12, %rdi
	movq	%rax, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplySds             # TAILCALL
.LBB21_18:
	movzbl	-3(%r13), %r14d
	jmp	.LBB21_22
.LBB21_19:
	movzwl	-5(%r13), %r14d
	jmp	.LBB21_22
.LBB21_20:
	movl	-9(%r13), %r14d
	jmp	.LBB21_22
.LBB21_21:
	movq	-17(%r13), %r14
	jmp	.LBB21_22
.LBB21_15:
	xorl	%r14d, %r14d
.LBB21_22:
	callq	sdsempty
	cmpb	$1, 4(%r13)
	jne	.LBB21_23
# %bb.24:
	cmpq	$17, %r14
	jl	.LBB21_33
# %bb.25:
	addq	%r13, %r14
	addq	$16, %r13
	jmp	.LBB21_26
.LBB21_30:                              #   in Loop: Header=BB21_26 Depth=1
	andl	$63, %edx
	shll	$8, %edx
	movzbl	1(%r13), %ecx
	addl	%ecx, %edx
	addl	$1, %edx
	addq	$2, %r13
	movl	$.L.str.16, %esi
	movq	%rax, %rdi
.LBB21_29:                              #   in Loop: Header=BB21_26 Depth=1
	xorl	%eax, %eax
	callq	sdscatprintf
	cmpq	%r14, %r13
	jae	.LBB21_33
.LBB21_26:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %edx
	movl	%edx, %ecx
	andb	$-64, %cl
	cmpb	$64, %cl
	je	.LBB21_30
# %bb.27:                               #   in Loop: Header=BB21_26 Depth=1
	testb	%cl, %cl
	jne	.LBB21_31
# %bb.28:                               #   in Loop: Header=BB21_26 Depth=1
	andl	$63, %edx
	addl	$1, %edx
	addq	$1, %r13
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	jmp	.LBB21_29
.LBB21_31:                              #   in Loop: Header=BB21_26 Depth=1
	movl	%edx, %ecx
	andl	$3, %ecx
	addl	$1, %ecx
	shrl	$2, %edx
	andl	$31, %edx
	addl	$1, %edx
	addq	$1, %r13
	movl	$.L.str.17, %esi
	movq	%rax, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	cmpq	%r14, %r13
	jb	.LBB21_26
.LBB21_33:
	movl	$.L.str.18, %esi
	movq	%rax, %rdi
	callq	sdstrim
	movq	%rax, %r14
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB21_34
# %bb.35:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI21_1(,%rax,8)
.LBB21_36:
	shrq	$3, %rdx
	jmp	.LBB21_41
.LBB21_23:
	movl	$.L.str.14, %esi
	jmp	.LBB21_2
.LBB21_37:
	movzbl	-3(%r14), %edx
	jmp	.LBB21_41
.LBB21_38:
	movzwl	-5(%r14), %edx
	jmp	.LBB21_41
.LBB21_39:
	movl	-9(%r14), %edx
	jmp	.LBB21_41
.LBB21_40:
	movq	-17(%r14), %rdx
	jmp	.LBB21_41
.LBB21_34:
	xorl	%edx, %edx
.LBB21_41:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	addReplyBulkCBuffer
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.Lfunc_end21:
	.size	pfdebugCommand, .Lfunc_end21-pfdebugCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_17
	.quad	.LBB21_18
	.quad	.LBB21_19
	.quad	.LBB21_20
	.quad	.LBB21_21
.LJTI21_1:
	.quad	.LBB21_36
	.quad	.LBB21_37
	.quad	.LBB21_38
	.quad	.LBB21_39
	.quad	.LBB21_40
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dense_retval == 1"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/hyperloglog.c"
	.size	.L.str.1, 79

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Unknown HyperLogLog encoding in hllCount()"
	.size	.L.str.2, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"HYLL"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-WRONGTYPE Key is not a valid HyperLogLog string value.\r\n"
	.size	.L.str.5, 58

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pfadd"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"TESTFAILED Register %d should be %d but is %d"
	.size	.L.str.7, 46

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"TESTFAILED sparse encoding not used"
	.size	.L.str.8, 36

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"TESTFAILED dense/sparse disagree"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"TESTFAILED Too big error. card:%llu abserr:%llu"
	.size	.L.str.10, 48

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The specified key does not exist"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"getreg"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"decode"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"HLL encoding is not sparse"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"z:%d "
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Z:%d "
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"v:%d,%d "
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" "
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"encoding"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"dense"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"sparse"
	.size	.L.str.21, 7

	.type	.LpfdebugCommand.encodingstr,@object # @pfdebugCommand.encodingstr
	.section	.rodata,"a",@progbits
	.p2align	4
.LpfdebugCommand.encodingstr:
	.quad	.L.str.20
	.quad	.L.str.21
	.size	.LpfdebugCommand.encodingstr, 16

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"todense"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Unknown PFDEBUG subcommand '%s'"
	.size	.L.str.23, 32

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Wrong number of arguments for the '%s' subcommand"
	.size	.L.str.24, 50

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"-INVALIDOBJ Corrupted HLL object detected\r\n"
	.size	.L.str.25, 44

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
