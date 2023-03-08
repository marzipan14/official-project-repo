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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdx
	imulq	%r11, %rdx
	movq	%rdx, %rcx
	shrq	$47, %rcx
	xorq	%rdx, %rcx
	imulq	%r11, %rcx
	xorq	%rax, %rcx
	imulq	%r11, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rdi, %rbx
	jne	.LBB0_5
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movzbl	5(%rdi), %eax
	shlq	$40, %rax
	xorq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movzbl	4(%rdi), %eax
	shlq	$32, %rax
	xorq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movzbl	3(%rdi), %eax
	shlq	$24, %rax
	xorq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movzbl	2(%rdi), %eax
	shlq	$16, %rax
	xorq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movzbl	1(%rdi), %eax
	shlq	$8, %rax
	xorq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movzbl	(%rdi), %eax
	xorq	%rcx, %rax
	imulq	%r11, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
.LBB0_15:
	movq	%rcx, %rdx
	shrq	$47, %rdx
	xorq	%rcx, %rdx
	imulq	%r11, %rdx
	movq	%rdx, %rax
	shrq	$47, %rax
	xorq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rsi
	je	.LBB1_2
.LBB1_3:
	andl	$16383, %eax            # imm = 0x3FFF
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movzbl	1(%rdi,%rsi), %r10d
	movq	%r11, %rbx
	movl	%r9d, %ecx
	shrq	%cl, %rbx
	movl	%r10d, %eax
	movl	%r8d, %ecx
	shll	%cl, %eax
	orl	%eax, %ebx
	andl	$63, %ebx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rsi
	je	.LBB3_2
# %bb.3:
	movzbl	%dl, %r9d
.LBB3_4:
	andl	$16383, %eax            # imm = 0x3FFF
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	andl	$6, %edx
	movl	$8, %r11d
	subq	%rdx, %r11
	movzbl	(%r14,%rdi), %r10d
	movzbl	1(%r14,%rdi), %r8d
	movq	%r10, %rbx
	movl	%edx, %ecx
	shrq	%cl, %rbx
	movl	%r8d, %eax
	movl	%r11d, %ecx
	shll	%cl, %eax
	orl	%eax, %ebx
	andl	$63, %ebx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$12, %r14
	cmpl	$12288, %r14d           # imm = 0x3000
	jne	.LBB4_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	8(%rdi), %r13
	movzbl	-1(%r13), %r12d
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB5_8
.LBB5_1:
	xorl	%r12d, %r12d
	jmp	.LBB5_8
.LBB5_4:
	movzbl	-3(%r13), %r12d
	jmp	.LBB5_8
.LBB5_5:
	movzwl	-5(%r13), %r12d
	jmp	.LBB5_8
.LBB5_6:
	movl	-9(%r13), %r12d
	jmp	.LBB5_8
.LBB5_7:
	movq	-17(%r13), %r12
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_25
# %bb.9:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$12304, %esi            # imm = 0x3010
	xorl	%edi, %edi
	callq	sdsnewlen
	movq	%rax, %r15
	movups	(%r13), %xmm0
	movups	%xmm0, (%rax)
	movb	$0, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %r12
	jle	.LBB5_10
# %bb.11:
	addq	%r13, %r12
	addq	$16, %r13
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_15:                               #   in Loop: Header=BB5_12 Depth=1
	andl	$63, %ebx
	shll	$8, %ebx
	movzbl	1(%r13), %eax
	orl	%ebx, %eax
	leal	(%r14,%rax), %r8d
	addl	$1, %r8d
	movl	$2, %eax
.LBB5_21:                               #   in Loop: Header=BB5_12 Depth=1
	addq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %r14d
	cmpq	%r12, %r13
	jae	.LBB5_22
.LBB5_12:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %ebx
	movl	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$192, %eax
	je	.LBB5_13
# %bb.14:                               #   in Loop: Header=BB5_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %eax
	je	.LBB5_15
# %bb.16:                               #   in Loop: Header=BB5_12 Depth=1
	movl	%ebx, %r9d
	andl	$3, %r9d
	leal	(%r9,%r14), %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16384, %eax            # imm = 0x4000
	jg	.LBB5_17
# %bb.18:                               #   in Loop: Header=BB5_12 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB5_19
# %bb.26:                               #   in Loop: Header=BB5_12 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r9d
	je	.LBB5_19
# %bb.27:                               #   in Loop: Header=BB5_12 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r9d
	je	.LBB5_19
# %bb.28:                               #   in Loop: Header=BB5_12 Depth=1
	leal	(%r14,%r14,2), %eax
	leal	18(%rax), %ecx
	addl	$25, %eax
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
	shrq	%cl, %rbx
	orb	%sil, %bl
	movb	%bl, 17(%r15,%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB5_19:                               #   in Loop: Header=BB5_12 Depth=1
	addl	%r9d, %r8d
	jmp	.LBB5_20
	.p2align	4, 0x90
.LBB5_13:                               #   in Loop: Header=BB5_12 Depth=1
	andl	$63, %ebx
	leal	(%r14,%rbx), %r8d
	addl	$1, %r8d
.LBB5_20:                               #   in Loop: Header=BB5_12 Depth=1
	movl	$1, %eax
	jmp	.LBB5_21
.LBB5_10:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_23
.LBB5_17:
	movl	%r14d, %r8d
.LBB5_22:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16384, %r8d            # imm = 0x4000
	jne	.LBB5_23
# %bb.24:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	8(%rbx), %rdi
	callq	sdsfree
	movq	%r15, 8(%rbx)
	xorl	%eax, %eax
	jmp	.LBB5_25
.LBB5_23:
	movq	%r15, %rdi
	callq	sdsfree
	movl	$-1, %eax
.LBB5_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdi, %r11
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	cmpb	$32, %dl
	jbe	.LBB6_5
.LBB6_1:
	movq	%r11, %rdi
	movq	%r11, %rbx
	callq	hllSparseToDense
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB6_33
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
	movzbl	17(%r9,%rdi), %r8d
	movq	%r10, %rsi
	movl	%edx, %ecx
	shrq	%cl, %rsi
	movl	%r8d, %ebx
	movl	%r11d, %ecx
	shll	%cl, %ebx
	orl	%ebx, %esi
	andl	$63, %esi
	movzbl	-56(%rbp), %eax         # 1-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %esi
	jae	.LBB6_87
# %bb.3:
	movl	$63, %esi
	movl	%edx, %ecx
	shll	%cl, %esi
	notb	%sil
	andb	%r10b, %sil
	movq	%rax, %rbx
	shlq	%cl, %rbx
	movl	$-64, %edx
	movl	%r11d, %ecx
	sarl	%cl, %edx
	orb	%sil, %bl
	shrq	%cl, %rax
	movb	%bl, 16(%r9,%rdi)
	andb	%r8b, %dl
	orb	%dl, %al
	movb	%al, 17(%r9,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_4:
	movl	$1, %ecx
	jmp	.LBB6_34
.LBB6_5:
	movq	8(%r11), %rdi
	movl	$3, %esi
	movq	%r11, -64(%rbp)         # 8-byte Spill
	callq	sdsMakeRoomFor
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rax, 8(%r11)
	movzbl	-1(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB6_31
# %bb.6:
	movl	%r15d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_7:
	shrq	$3, %r15
	jmp	.LBB6_13
.LBB6_9:
	movq	-17(%rax), %r15
	jmp	.LBB6_13
.LBB6_10:
	movzwl	-5(%rax), %r15d
	jmp	.LBB6_13
.LBB6_11:
	movl	-9(%rax), %r15d
	jmp	.LBB6_13
.LBB6_12:
	movzbl	-3(%rax), %r15d
.LBB6_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$17, %r15
	jl	.LBB6_32
# %bb.14:                               # %.preheader4
	addq	%rax, %r15
	leaq	16(%rax), %r12
	xorl	%r14d, %r14d
	movq	%r12, %rbx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB6_15:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rcx
	movzbl	(%rbx), %edi
	movl	$42, __A_VARIABLE(%rip)
	testb	$-64, %dil
	je	.LBB6_18
# %bb.16:                               #   in Loop: Header=BB6_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	js	.LBB6_19
# %bb.17:                               #   in Loop: Header=BB6_15 Depth=1
	andl	$63, %edi
	shll	$8, %edi
	movzbl	1(%rcx), %edx
	orl	%edx, %edi
	movl	$2, %ebx
	jmp	.LBB6_21
	.p2align	4, 0x90
.LBB6_18:                               #   in Loop: Header=BB6_15 Depth=1
	andl	$63, %edi
	jmp	.LBB6_20
	.p2align	4, 0x90
.LBB6_19:                               #   in Loop: Header=BB6_15 Depth=1
	andl	$3, %edi
.LBB6_20:                               #   in Loop: Header=BB6_15 Depth=1
	movl	$1, %ebx
.LBB6_21:                               #   in Loop: Header=BB6_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %edx
	addq	%rsi, %rdx
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdx
	jg	.LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_15 Depth=1
	addq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r14
	movq	%rdx, %rsi
	cmpq	%r15, %rbx
	jb	.LBB6_15
	jmp	.LBB6_24
.LBB6_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdx
	movq	%rcx, %rbx
.LBB6_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
	cmpq	%r15, %rbx
	jae	.LBB6_34
# %bb.25:
	movzbl	(%rbx), %r9d
	movl	%r9d, %ecx
	andl	$192, %ecx
	xorl	%esi, %esi
	cmpl	$64, %ecx
	sete	%sil
	leaq	(%rsi,%rbx), %r8
	addq	$1, %r8
	xorl	%esi, %esi
	cmpq	%r15, %r8
	cmovbq	%r8, %rsi
	movl	%r9d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$192, %ecx
	je	.LBB6_35
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r10d
	cmpl	$64, %ecx
	je	.LBB6_30
# %bb.27:
	movl	%r9d, %r10d
	shrb	$2, %r10b
	andb	$31, %r10b
	addb	$1, %r10b
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	-56(%rbp), %r10b        # 1-byte Folded Reload
	jae	.LBB6_34
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r9b
	je	.LBB6_44
# %bb.29:
	xorl	%r10d, %r10d
.LBB6_30:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB6_37
.LBB6_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_32:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_33:
	movl	$-1, %ecx
.LBB6_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$63, %r9b
	je	.LBB6_44
# %bb.36:
	xorl	%r10d, %r10d
	movl	$1, %ecx
.LBB6_37:
	addl	%edx, %edi
	orq	%r10, %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_40
# %bb.38:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdx
	jne	.LBB6_42
# %bb.39:
	leaq	-45(%rbp), %rdx
	jmp	.LBB6_51
.LBB6_40:
	shrb	$2, %r9b
	andb	$31, %r9b
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdx
	jne	.LBB6_45
# %bb.41:
	leaq	-45(%rbp), %rdx
	jmp	.LBB6_46
.LBB6_42:
	movq	%r13, %rcx
	subq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65, %ecx
	jl	.LBB6_49
# %bb.43:
	addl	$-1, %ecx
	movl	%ecx, %edx
	shrl	$8, %edx
	orb	$64, %dl
	movb	%dl, -45(%rbp)
	movb	%cl, -44(%rbp)
	movl	$2, %ecx
	jmp	.LBB6_50
.LBB6_44:
	movq	-56(%rbp), %rax         # 8-byte Reload
	shlb	$2, %al
	addb	$124, %al
	orb	$-128, %al
	movb	%al, (%rbx)
	jmp	.LBB6_71
.LBB6_45:
	movl	%r13d, %ecx
	subl	%edx, %ecx
	leal	(,%r9,4), %edx
	addb	$-1, %cl
	orb	%dl, %cl
	orb	$-128, %cl
	movb	%cl, -45(%rbp)
	leaq	-44(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB6_46:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leal	(,%rcx,4), %ecx
	addb	$124, %cl
	orb	$-128, %cl
	movb	%cl, (%rdx)
	movslq	%edi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	jne	.LBB6_48
# %bb.47:
	addq	$1, %rdx
	jmp	.LBB6_56
.LBB6_48:
	shlb	$2, %r9b
	movl	%r13d, %ecx
	notl	%ecx
	addl	%ecx, %edi
	orb	%r9b, %dil
	orb	$-128, %dil
	movb	%dil, 1(%rdx)
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_56
.LBB6_49:
	addb	$-1, %cl
	movb	%cl, -45(%rbp)
	movl	$1, %ecx
.LBB6_50:
	leaq	(%rcx,%rbp), %rdx
	addq	$-45, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB6_51:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leal	(,%rcx,4), %ecx
	addb	$124, %cl
	orb	$-128, %cl
	movb	%cl, (%rdx)
	movslq	%edi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	jne	.LBB6_53
# %bb.52:
	addq	$1, %rdx
	jmp	.LBB6_57
.LBB6_53:
	subl	%r13d, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65, %edi
	jl	.LBB6_55
# %bb.54:
	addl	$-1, %edi
	movl	%edi, %ecx
	shrl	$8, %ecx
	orb	$64, %cl
	movb	%cl, 1(%rdx)
	movb	%dil, 2(%rdx)
	addq	$3, %rdx
	jmp	.LBB6_56
.LBB6_55:
	addb	$-1, %dil
	movb	%dil, 1(%rdx)
	addq	$2, %rdx
.LBB6_56:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_57:
	leaq	-45(%rbp), %rcx
	subq	%rcx, %rdx
	cmpq	$1, %r10
	movl	%edx, %ecx
	adcl	$0, %ecx
	addl	$-2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ecx, %r10
	testl	%ecx, %ecx
	jle	.LBB6_67
# %bb.58:
	movq	%rdx, %r9
	movzbl	-1(%rax), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB6_62
# %bb.59:
	movl	%edi, %edx
	andl	$7, %edx
	jmpq	*.LJTI6_1(,%rdx,8)
.LBB6_60:
	shrq	$3, %rdi
	jmp	.LBB6_66
.LBB6_61:
	movq	-17(%rax), %rdi
	jmp	.LBB6_66
.LBB6_62:
	xorl	%edi, %edi
	jmp	.LBB6_66
.LBB6_63:
	movzbl	-3(%rax), %edi
	jmp	.LBB6_66
.LBB6_64:
	movzwl	-5(%rax), %edi
	jmp	.LBB6_66
.LBB6_65:
	movl	-9(%rax), %edi
.LBB6_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r10, %rdi
	cmpq	server+2840(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rdx
	ja	.LBB6_1
.LBB6_67:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r8
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	jae	.LBB6_70
# %bb.68:
	testl	%ecx, %ecx
	je	.LBB6_70
# %bb.69:
	leaq	(%rsi,%r10), %rdi
	movq	%r15, %rdx
	subq	%rsi, %rdx
	movq	%r10, %r13
	callq	memmove
	movq	%r13, %r10
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
.LBB6_70:
	movq	%rax, %rdi
	movq	%r10, %rsi
	movq	%r10, %r13
	callq	sdsIncrLen
	movslq	-72(%rbp), %rdx         # 4-byte Folded Reload
	leaq	-45(%rbp), %rsi
	movq	%rbx, %rdi
	callq	memcpy
	addq	%r13, %r15
.LBB6_71:
	testq	%r14, %r14
	cmovneq	%r14, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	jae	.LBB6_86
# %bb.72:                               # %.preheader
	movl	$5, %ebx
	jmp	.LBB6_75
.LBB6_73:                               #   in Loop: Header=BB6_75 Depth=1
	addq	$2, %r12
	movq	%r12, %r14
.LBB6_74:                               #   in Loop: Header=BB6_75 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r12
	cmpq	%r15, %r14
	jae	.LBB6_86
.LBB6_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_76 Depth 2
	movl	$1, %eax
	subl	%ebx, %eax
	leaq	1(%r12), %r14
	movl	%eax, %ebx
.LBB6_76:                               #   Parent Loop BB6_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	je	.LBB6_86
# %bb.77:                               #   in Loop: Header=BB6_76 Depth=2
	movzbl	(%r12), %eax
	movl	%eax, %ecx
	andl	$-64, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %ecx
	je	.LBB6_73
# %bb.78:                               #   in Loop: Header=BB6_76 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB6_74
# %bb.79:                               #   in Loop: Header=BB6_76 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB6_74
# %bb.80:                               #   in Loop: Header=BB6_76 Depth=2
	movzbl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jns	.LBB6_74
# %bb.81:                               #   in Loop: Header=BB6_76 Depth=2
	movl	%ecx, %edx
	xorl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$124, %dl
	jne	.LBB6_85
# %bb.82:                               #   in Loop: Header=BB6_76 Depth=2
	movl	%eax, %edx
	andl	$3, %edx
	andl	$3, %ecx
	leal	(%rdx,%rcx), %esi
	addl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %esi
	jae	.LBB6_84
# %bb.83:                               #   in Loop: Header=BB6_76 Depth=2
	addl	%ecx, %edx
	andl	$124, %eax
	addl	$1, %edx
	orl	%eax, %edx
	orb	$-128, %dl
	movb	%dl, 1(%r12)
	movq	%r15, %rdx
	subq	%r12, %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	memmove
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movq	$-1, %rsi
	callq	sdsIncrLen
	addq	$-1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ebx
	cmpq	%r15, %r12
	jb	.LBB6_76
	jmp	.LBB6_86
.LBB6_84:                               #   in Loop: Header=BB6_75 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_85:                               #   in Loop: Header=BB6_75 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_74
.LBB6_86:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	orb	$-128, 15(%rax)
	jmp	.LBB6_4
.LBB6_87:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	.quad	.LBB6_60
	.quad	.LBB6_63
	.quad	.LBB6_64
	.quad	.LBB6_65
	.quad	.LBB6_61
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	addb	$1, %cl
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rsi
	je	.LBB7_2
.LBB7_3:
	andl	$16383, %eax            # imm = 0x3FFF
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%cl, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	hllSparseSet
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	hllSparseAdd, .Lfunc_end7-hllSparseAdd
                                        # -- End function
	.globl	hllSparseRegHisto       # -- Begin function hllSparseRegHisto
	.p2align	4, 0x90
	.type	hllSparseRegHisto,@function
hllSparseRegHisto:                      # @hllSparseRegHisto
# %bb.0:
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB8_1
# %bb.2:                                # %.preheader
	movslq	%esi, %r8
	addq	%rdi, %r8
	xorl	%r11d, %r11d
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_4:                                #   in Loop: Header=BB8_3 Depth=1
	andl	$63, %eax
	addl	$1, %eax
	movl	(%rcx), %r9d
	movl	$1, %r10d
	movq	%rcx, %rbx
	movl	%eax, %esi
.LBB8_8:                                #   in Loop: Header=BB8_3 Depth=1
	addl	%esi, %r11d
	addl	%r9d, %eax
	movl	%eax, (%rbx)
	addq	%r10, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rdi
	jae	.LBB8_9
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	movl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	andl	$192, %esi
	je	.LBB8_4
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %esi
	jne	.LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_3 Depth=1
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
	jmp	.LBB8_8
.LBB8_9:
	cmpl	$16384, %r11d           # imm = 0x4000
	setne	%al
	jmp	.LBB8_10
.LBB8_1:
	movb	$1, %al
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB8_13
# %bb.11:
	testb	%al, %al
	je	.LBB8_13
# %bb.12:
	movl	$1, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_13:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpl	$2048, %eax             # imm = 0x800
	je	.LBB9_5
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB9_3
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$8, %edx
	movq	%rsi, %rcx
	jmp	.LBB9_4
.LBB9_5:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	.LCPI10_1(%rip), %xmm0
	jne	.LBB10_2
	jp	.LBB10_2
# %bb.1:
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB10_5
.LBB10_2:                               # %.preheader
	movsd	.LCPI10_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	.p2align	4, 0x90
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm3
	jne	.LBB10_3
	jp	.LBB10_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB11_3
	jp	.LBB11_3
# %bb.4:
	divsd	.LCPI11_3(%rip), %xmm0
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB12_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB12_25
# %bb.3:
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB12_4
# %bb.5:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_6:
	shrq	$3, %rax
	jmp	.LBB12_11
.LBB12_1:
	addq	$16, %rdi
	leaq	-304(%rbp), %rsi
	callq	hllDenseRegHisto
	jmp	.LBB12_32
.LBB12_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	jne	.LBB12_46
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB12_27
	.p2align	4, 0x90
.LBB12_29:                              #   in Loop: Header=BB12_27 Depth=1
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
.LBB12_30:                              #   in Loop: Header=BB12_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpl	$2048, %eax             # imm = 0x800
	je	.LBB12_31
.LBB12_27:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rdi,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB12_29
# %bb.28:                               #   in Loop: Header=BB12_27 Depth=1
	addl	$8, -304(%rbp)
	jmp	.LBB12_30
.LBB12_10:
	movq	-17(%rdi), %rax
	jmp	.LBB12_11
.LBB12_8:
	movzwl	-5(%rdi), %eax
	jmp	.LBB12_11
.LBB12_9:
	movl	-9(%rdi), %eax
	jmp	.LBB12_11
.LBB12_7:
	movzbl	-3(%rdi), %eax
	jmp	.LBB12_11
.LBB12_4:
	xorl	%eax, %eax
.LBB12_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB12_12
# %bb.13:                               # %.preheader1
	cltq
	leaq	(%rdi,%rax), %r9
	addq	$16, %r9
	addq	$16, %rdi
	xorl	%r10d, %r10d
	leaq	-304(%rbp), %r8
	xorl	%edx, %edx
	jmp	.LBB12_14
	.p2align	4, 0x90
.LBB12_15:                              #   in Loop: Header=BB12_14 Depth=1
	andl	$63, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	addl	%eax, %r10d
	addl	$1, %r10d
	movl	%r10d, -304(%rbp)
.LBB12_19:                              #   in Loop: Header=BB12_14 Depth=1
	movl	$1, %eax
.LBB12_20:                              #   in Loop: Header=BB12_14 Depth=1
	addl	%ecx, %edx
	addq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rdi
	jae	.LBB12_21
.LBB12_14:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$192, %ecx
	je	.LBB12_15
# %bb.16:                               #   in Loop: Header=BB12_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %ecx
	jne	.LBB12_18
# %bb.17:                               #   in Loop: Header=BB12_14 Depth=1
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
	jmp	.LBB12_20
	.p2align	4, 0x90
.LBB12_18:                              #   in Loop: Header=BB12_14 Depth=1
	movl	%eax, %ecx
	andl	$3, %ecx
	addl	$1, %ecx
	andl	$124, %eax
	addl	%ecx, 4(%rax,%r8)
	jmp	.LBB12_19
.LBB12_21:
	cmpl	$16384, %edx            # imm = 0x4000
	setne	%al
	jmp	.LBB12_22
.LBB12_12:
	movb	$1, %al
.LBB12_22:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB12_31
# %bb.23:
	testb	%al, %al
	je	.LBB12_31
# %bb.24:
	movl	$1, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_32:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-100(%rbp), %xmm0
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI12_1(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm1
	jne	.LBB12_33
	jnp	.LBB12_34
.LBB12_33:
	ucomisd	.LCPI12_2(%rip), %xmm1
	jne	.LBB12_35
	jnp	.LBB12_34
.LBB12_35:
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm4
	subsd	%xmm1, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB12_36:                              # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB12_36
	jp	.LBB12_36
# %bb.37:
	divsd	.LCPI12_5(%rip), %xmm4
	movl	$42, __A_VARIABLE(%rip)
	mulsd	.LCPI12_0(%rip), %xmm4
	jmp	.LBB12_38
.LBB12_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$200, %eax
	movsd	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB12_39:                              # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-304(%rbp,%rax), %xmm1
	addsd	%xmm4, %xmm1
	mulsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm4, %xmm4
	cvtsi2sdl	-308(%rbp,%rax), %xmm4
	addsd	%xmm1, %xmm4
	mulsd	%xmm0, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-8, %rax
	jne	.LBB12_39
# %bb.40:
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-304(%rbp), %xmm0
	mulsd	.LCPI12_1(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	.LCPI12_2(%rip), %xmm0
	jne	.LBB12_42
	jp	.LBB12_42
# %bb.41:
	movsd	.LCPI12_6(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB12_45
.LBB12_42:                              # %.preheader
	movsd	.LCPI12_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	.p2align	4, 0x90
.LBB12_43:                              # =>This Inner Loop Header: Depth=1
	movapd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm3
	jne	.LBB12_43
	jp	.LBB12_43
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	mulsd	.LCPI12_0(%rip), %xmm1
.LBB12_45:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.LBB12_46:
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
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movb	4(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	je	.LBB13_3
# %bb.1:
	movl	$-1, %eax
	testb	%cl, %cl
	jne	.LBB13_7
# %bb.2:
	addq	$16, %rdi
	callq	hllDenseAdd
	jmp	.LBB13_7
.LBB13_3:
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	$-1379386599, %edx      # imm = 0xADC83B19
	callq	MurmurHash64A
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %cl
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB13_6
# %bb.4:                                # %.preheader
	movq	%rax, %rcx
	shrq	$14, %rcx
	movabsq	$1125899906842624, %rdx # imm = 0x4000000000000
	orq	%rcx, %rdx
	movl	$1, %esi
	movb	$1, %cl
	.p2align	4, 0x90
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	addq	%rsi, %rsi
	movl	$42, __A_VARIABLE(%rip)
	addb	$1, %cl
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rsi
	je	.LBB13_5
.LBB13_6:
	andl	$16383, %eax            # imm = 0x3FFF
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%cl, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	hllSparseSet
	movl	$42, __A_VARIABLE(%rip)
.LBB13_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	hllAdd, .Lfunc_end13-hllAdd
                                        # -- End function
	.globl	hllMerge                # -- Begin function hllMerge
	.p2align	4, 0x90
	.type	hllMerge,@function
hllMerge:                               # @hllMerge
# %bb.0:
	movq	8(%rsi), %r11
	cmpb	$0, 4(%r11)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_1
# %bb.6:
	movzbl	-1(%r11), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB14_27
# %bb.7:
	movl	%r8d, %eax
	andl	$7, %eax
	jmpq	*.LJTI14_0(,%rax,8)
.LBB14_12:
	shrq	$3, %r8
	jmp	.LBB14_13
.LBB14_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	jmp	.LBB14_2
	.p2align	4, 0x90
.LBB14_4:                               #   in Loop: Header=BB14_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$6, %r8
	addq	$1, %rdi
	cmpq	$98304, %r8             # imm = 0x18000
	je	.LBB14_5
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	movl	%r8d, %eax
	shrq	$3, %rax
	movzbl	16(%r11,%rax), %edx
	movl	%r8d, %ecx
	andb	$6, %cl
	shrq	%cl, %rdx
	movzbl	17(%r11,%rax), %esi
	movb	$8, %al
	subb	%cl, %al
	movl	%eax, %ecx
	shll	%cl, %esi
	orl	%esi, %edx
	andb	$63, %dl
	cmpb	(%rdi), %dl
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB14_4
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=1
	movb	%dl, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_4
.LBB14_5:
	xorl	%ecx, %ecx
	jmp	.LBB14_29
.LBB14_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_28
.LBB14_8:
	movzbl	-3(%r11), %r8d
	jmp	.LBB14_13
.LBB14_9:
	movzwl	-5(%r11), %r8d
	jmp	.LBB14_13
.LBB14_10:
	movl	-9(%r11), %r8d
	jmp	.LBB14_13
.LBB14_11:
	movq	-17(%r11), %r8
.LBB14_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$17, %r8
	jl	.LBB14_28
# %bb.14:
	addq	%r11, %r8
	addq	$16, %r11
	xorl	%r9d, %r9d
	jmp	.LBB14_15
	.p2align	4, 0x90
.LBB14_18:                              #   in Loop: Header=BB14_15 Depth=1
	andl	$63, %eax
	shll	$8, %eax
	movzbl	1(%r11), %ecx
	orl	%eax, %ecx
	addl	%ecx, %r9d
	addl	$1, %r9d
	movl	$2, %eax
.LBB14_25:                              #   in Loop: Header=BB14_15 Depth=1
	addq	%rax, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %r11
	jae	.LBB14_26
.LBB14_15:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r11), %eax
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$192, %ecx
	je	.LBB14_16
# %bb.17:                               #   in Loop: Header=BB14_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %ecx
	je	.LBB14_18
# %bb.19:                               #   in Loop: Header=BB14_15 Depth=1
	movl	%eax, %esi
	andl	$3, %esi
	movslq	%r9d, %rcx
	leaq	(%rsi,%rcx), %rdx
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rdx            # imm = 0x4000
	jg	.LBB14_26
# %bb.20:                               #   in Loop: Header=BB14_15 Depth=1
	movq	%rsi, %r10
	addq	$1, %r10
	shrl	$2, %eax
	andl	$31, %eax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdi,%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jbe	.LBB14_22
# %bb.21:                               #   in Loop: Header=BB14_15 Depth=1
	movb	%al, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_22:                              #   in Loop: Header=BB14_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB14_23
# %bb.32:                               #   in Loop: Header=BB14_15 Depth=1
	movzbl	1(%rcx,%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jbe	.LBB14_34
# %bb.33:                               #   in Loop: Header=BB14_15 Depth=1
	movb	%al, 1(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_34:                              #   in Loop: Header=BB14_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r10d
	je	.LBB14_23
# %bb.35:                               #   in Loop: Header=BB14_15 Depth=1
	movzbl	2(%rcx,%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jbe	.LBB14_37
# %bb.36:                               #   in Loop: Header=BB14_15 Depth=1
	movb	%al, 2(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_37:                              #   in Loop: Header=BB14_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r10d
	je	.LBB14_23
# %bb.38:                               #   in Loop: Header=BB14_15 Depth=1
	movzbl	3(%rcx,%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jbe	.LBB14_40
# %bb.39:                               #   in Loop: Header=BB14_15 Depth=1
	movb	%al, 3(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_40:                              #   in Loop: Header=BB14_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB14_23:                              #   in Loop: Header=BB14_15 Depth=1
	addl	%r10d, %r9d
	jmp	.LBB14_24
	.p2align	4, 0x90
.LBB14_16:                              #   in Loop: Header=BB14_15 Depth=1
	andl	$63, %eax
	addl	%eax, %r9d
	addl	$1, %r9d
.LBB14_24:                              #   in Loop: Header=BB14_15 Depth=1
	movl	$1, %eax
	jmp	.LBB14_25
.LBB14_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
.LBB14_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
.LBB14_31:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB14_26:
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpl	$16384, %r9d            # imm = 0x4000
	je	.LBB14_30
	jmp	.LBB14_31
.Lfunc_end14:
	.size	hllMerge, .Lfunc_end14-hllMerge
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_12
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-129, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testl	%eax, %eax
	jne	.LBB16_12
# %bb.1:
	movl	(%r15), %eax
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB16_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB16_11
.LBB16_3:
	movq	%r15, %rdi
	callq	stringObjectLen
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rax
	jb	.LBB16_11
# %bb.4:
	movq	8(%r15), %rax
	cmpb	$72, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_11
# %bb.5:
	cmpb	$89, 1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_11
# %bb.6:
	cmpb	$76, 2(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_11
# %bb.7:
	cmpb	$76, 3(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_11
# %bb.8:
	movb	4(%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jbe	.LBB16_9
.LBB16_11:
	movl	$.L.str.5, %edi
	callq	sdsnew
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$-1, %ebx
.LBB16_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_9:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB16_12
# %bb.10:
	movq	%r15, %rdi
	callq	stringObjectLen
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$12304, %rax            # imm = 0x3010
	jne	.LBB16_11
	jmp	.LBB16_12
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_1
# %bb.2:
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB17_22
# %bb.3:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r14
	xorl	%r15d, %r15d
	jmp	.LBB17_4
.LBB17_1:
	movl	$18, %esi
	xorl	%edi, %edi
	callq	sdsnewlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-129, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movl	$1, %r15d
.LBB17_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB17_19
# %bb.5:                                # %.preheader
	movl	$2, %ebx
	jmp	.LBB17_6
	.p2align	4, 0x90
.LBB17_17:                              #   in Loop: Header=BB17_6 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB17_18:                              #   in Loop: Header=BB17_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB17_19
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	hllAdd
	movl	$42, __A_VARIABLE(%rip)
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
	callq	addReplySds
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_22
.LBB17_19:
	movq	8(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB17_21
# %bb.20:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB17_21:
	testl	%r15d, %r15d
	movl	$shared+40, %eax
	movl	$shared+32, %ecx
	cmovneq	%rax, %rcx
	movq	(%rcx), %rsi
	movq	%r12, %rdi
	callq	addReply
.LBB17_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB18_10
# %bb.1:
	leaq	-16432(%rbp), %rdi
	movl	$16400, %edx            # imm = 0x4010
	xorl	%esi, %esi
	callq	memset
	movb	$-1, -16428(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB18_9
# %bb.2:
	leaq	-16416(%rbp), %r14
	movl	$1, %ebx
	jmp	.LBB18_3
	.p2align	4, 0x90
.LBB18_8:                               #   in Loop: Header=BB18_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB18_9
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_8
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	movq	%rax, %r15
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_7
# %bb.5:                                #   in Loop: Header=BB18_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	hllMerge
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB18_8
# %bb.6:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
.LBB18_7:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_20
.LBB18_10:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_11
# %bb.12:
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_21
# %bb.13:
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbUnshareStringValue
	movq	8(%rax), %r15
	movzbl	15(%r15), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	js	.LBB18_15
# %bb.14:
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
.LBB18_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	jmp	.LBB18_19
.LBB18_9:
	leaq	-16432(%rbp), %rdi
	xorl	%esi, %esi
	callq	hllCount
	movq	%r12, %rdi
	movq	%rax, %rsi
.LBB18_19:
	callq	addReplyLongLong
	jmp	.LBB18_20
.LBB18_11:
	movq	shared+32(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
.LBB18_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16400, %rsp            # imm = 0x4010
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_15:
	movl	$0, -16432(%rbp)
	leaq	-16432(%rbp), %rsi
	movq	%r15, %rdi
	callq	hllCount
	cmpl	$0, -16432(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_17
# %bb.16:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB18_20
.LBB18_17:
	movq	%rax, %r14
	movq	%rax, 8(%r15)
	movq	16(%r12), %rdi
	movq	72(%r12), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_18
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
	movq	%rdi, %r14
	leaq	-16432(%rbp), %rdi
	xorl	%r12d, %r12d
	movl	$16384, %edx            # imm = 0x4000
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	jl	.LBB19_9
# %bb.1:                                # %.preheader
	xorl	%r12d, %r12d
	movl	$1, %ebx
	leaq	-16432(%rbp), %r15
	jmp	.LBB19_2
	.p2align	4, 0x90
.LBB19_6:                               #   in Loop: Header=BB19_2 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	hllMerge
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB19_7
.LBB19_8:                               #   in Loop: Header=BB19_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	cmpq	%rcx, %rbx
	jge	.LBB19_9
.LBB19_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_8
# %bb.3:                                #   in Loop: Header=BB19_2 Depth=1
	movq	%rax, %r13
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_25
# %bb.4:                                #   in Loop: Header=BB19_2 Depth=1
	movq	8(%r13), %rax
	cmpb	$0, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_6
# %bb.5:                                #   in Loop: Header=BB19_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jmp	.LBB19_6
.LBB19_9:
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_10
# %bb.11:
	movq	16(%r14), %rdi
	movq	72(%r14), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r15
	jmp	.LBB19_12
.LBB19_10:
	movl	$18, %esi
	xorl	%edi, %edi
	callq	sdsnewlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-129, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r15
	movq	8(%rax), %rbx
	movl	$.L.str.4, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movb	$1, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdx
	callq	dbAdd
.LBB19_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB19_14
# %bb.13:
	movq	%r15, %rdi
	callq	hllSparseToDense
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB19_7
.LBB19_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB19_15
	.p2align	4, 0x90
.LBB19_21:                              #   in Loop: Header=BB19_15 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	hllSparseSet
.LBB19_22:                              #   in Loop: Header=BB19_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB19_23:                              #   in Loop: Header=BB19_15 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$6, %r12
	cmpq	$16384, %rbx            # imm = 0x4000
	je	.LBB19_24
.LBB19_15:                              # =>This Inner Loop Header: Depth=1
	movzbl	-16432(%rbp,%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB19_23
# %bb.16:                               #   in Loop: Header=BB19_15 Depth=1
	movq	8(%r15), %r13
	movzbl	4(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	je	.LBB19_21
# %bb.17:                               #   in Loop: Header=BB19_15 Depth=1
	testb	%al, %al
	jne	.LBB19_23
# %bb.18:                               #   in Loop: Header=BB19_15 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %eax
	jae	.LBB19_20
# %bb.19:                               #   in Loop: Header=BB19_15 Depth=1
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
.LBB19_20:                              #   in Loop: Header=BB19_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_22
.LBB19_24:
	movq	8(%r15), %rax
	orb	$-128, 15(%rax)
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.6, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB19_25
.LBB19_7:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
.LBB19_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movl	$12304, %esi            # imm = 0x3010
	xorl	%edi, %edi
	callq	sdsnewlen
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$16, %r15
	leaq	-16480(%rbp), %r14
.LBB20_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_2 Depth 2
                                        #     Child Loop BB20_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB20_2:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	andl	$63, %eax
	movb	%al, (%r14)
	movl	%r13d, %r8d
	shrq	$3, %r8
	movl	%r13d, %ecx
	andb	$6, %cl
	movl	$63, %edi
	shll	%cl, %edi
	notb	%dil
	movq	%rax, %rbx
	shlq	%cl, %rbx
	andb	(%r15,%r8), %dil
	movb	$8, %dl
	subb	%cl, %dl
	movl	$-64, %esi
	movl	%edx, %ecx
	sarl	%cl, %esi
	orb	%dil, %bl
	movb	%bl, (%r15,%r8)
	andb	1(%r15,%r8), %sil
	shrq	%cl, %rax
	orb	%sil, %al
	movb	%al, 1(%r15,%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$6, %r13
	addq	$1, %r14
	cmpq	$98304, %r13            # imm = 0x18000
	jne	.LBB20_2
# %bb.3:                                #   in Loop: Header=BB20_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_4:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %eax
	shrq	$3, %rax
	movzbl	(%r15,%rax), %r8d
	movl	%esi, %ecx
	andb	$6, %cl
	shrq	%cl, %r8
	movzbl	1(%r15,%rax), %edi
	movb	$8, %al
	subb	%cl, %al
	movl	%eax, %ecx
	shll	%cl, %edi
	orl	%edi, %r8d
	andl	$63, %r8d
	movzbl	-16480(%rbp,%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r8d
	jne	.LBB20_5
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	addl	$6, %esi
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB20_4
# %bb.7:                                #   in Loop: Header=BB20_1 Depth=1
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1000, %r12d            # imm = 0x3E8
	leaq	-16480(%rbp), %r14
	jb	.LBB20_1
# %bb.8:
	movl	$12288, %edx            # imm = 0x3000
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$18, %esi
	xorl	%edi, %edi
	callq	sdsnewlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-129, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	8(%rax), %r12
	movl	$.L.str.4, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	memcpy
	movb	$1, 4(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	sqrt
	movsd	.LCPI20_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	callq	rand
	movslq	%eax, %rbx
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	shlq	$32, %rax
	orq	%rbx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI20_2(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$10, %r14d
	movl	$1, %r12d
	movl	$1, %ebx
	jmp	.LBB20_9
.LBB20_5:
	movl	$.L.str.7, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
                                        # kill: def $r8d killed $r8d killed $r8
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
.LBB20_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_25:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16440, %rsp            # imm = 0x4038
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB20_17:                              #   in Loop: Header=BB20_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	cmpq	%rax, %rcx
	jg	.LBB20_18
.LBB20_21:                              #   in Loop: Header=BB20_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$10, %r14
	cmpq	$10000001, %r12         # imm = 0x989681
	jae	.LBB20_22
.LBB20_9:                               # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	xorq	%r12, %rax
	movq	%rax, -88(%rbp)
	movl	$8, %edx
	movq	%r15, %rdi
	leaq	-88(%rbp), %r13
	movq	%r13, %rsi
	callq	hllDenseAdd
	movl	$8, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	hllAdd
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	jne	.LBB20_21
# %bb.10:                               #   in Loop: Header=BB20_9 Depth=1
	movq	server+2840(%rip), %rax
	shrq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	movq	-48(%rbp), %r13         # 8-byte Reload
	jbe	.LBB20_13
# %bb.11:                               #   in Loop: Header=BB20_9 Depth=1
	movq	8(%r13), %rax
	cmpb	$1, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_12
.LBB20_13:                              #   in Loop: Header=BB20_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	hllCount
	movq	%r13, %rcx
	movq	%rax, %r13
	movq	8(%rcx), %rdi
	xorl	%esi, %esi
	callq	hllCount
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r13
	jne	.LBB20_14
# %bb.15:                               #   in Loop: Header=BB20_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	hllCount
	movq	%rax, %r13
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12, %xmm0
	mulsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	callq	ceil
	movapd	%xmm0, %xmm1
	movsd	.LCPI20_3(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rax
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rcx, %rax
	cmpq	$10, %r12
	movl	$1, %ecx
	cmoveq	%rcx, %rax
	movq	%r12, %rcx
	subq	%r13, %rcx
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB20_17
# %bb.16:                               #   in Loop: Header=BB20_9 Depth=1
	negq	%rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_17
.LBB20_22:
	movq	shared+8(%rip), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r13         # 8-byte Reload
	testq	%r13, %r13
	jne	.LBB20_23
	jmp	.LBB20_25
.LBB20_18:
	movl	$.L.str.10, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB20_19
.LBB20_14:
	movl	$.L.str.9, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	movq	%rbx, %rdi
.LBB20_19:
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB20_20
.LBB20_12:
	movl	$.L.str.8, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB20_20:
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB20_23:
	movq	%r13, %rdi
	callq	decrRefCount
	jmp	.LBB20_24
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_7
# %bb.1:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	isHLLObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB21_55
# %bb.2:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB21_8
# %bb.3:
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB21_14
# %bb.4:
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB21_18
# %bb.5:
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB21_20
# %bb.6:
	movl	$.L.str.23, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB21_54
.LBB21_7:
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	callq	addReplyError
	jmp	.LBB21_55
.LBB21_8:
	cmpl	$3, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_26
# %bb.9:
	cmpb	$1, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_12
# %bb.10:
	movq	%r15, %rdi
	callq	hllSparseToDense
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB21_27
# %bb.11:
	addq	$1, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %r13
.LBB21_12:
	movl	$16384, %esi            # imm = 0x4000
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB21_13:                              # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$6, %ebx
	cmpl	$98304, %ebx            # imm = 0x18000
	jne	.LBB21_13
	jmp	.LBB21_55
.LBB21_14:
	cmpl	$3, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_26
# %bb.15:
	movzbl	-1(%r13), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB21_28
# %bb.16:
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_17:
	shrq	$3, %r14
	jmp	.LBB21_33
.LBB21_18:
	cmpl	$3, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_25
# %bb.19:
	movzbl	4(%r13), %eax
	movq	.LpfdebugCommand.encodingstr(,%rax,8), %rsi
	movq	%r12, %rdi
	callq	addReplyStatus
	jmp	.LBB21_53
.LBB21_20:
	cmpl	$3, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_25
# %bb.21:
	cmpb	$1, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$shared+32, %eax
	jne	.LBB21_24
# %bb.22:
	movq	%r15, %rdi
	callq	hllSparseToDense
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB21_56
# %bb.23:
	addq	$1, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$shared+40, %eax
.LBB21_24:
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB21_53
.LBB21_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_26:
	movl	$.L.str.24, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB21_55
.LBB21_27:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB21_55
.LBB21_28:
	xorl	%r14d, %r14d
	jmp	.LBB21_33
.LBB21_29:
	movzbl	-3(%r13), %r14d
	jmp	.LBB21_33
.LBB21_30:
	movzwl	-5(%r13), %r14d
	jmp	.LBB21_33
.LBB21_31:
	movl	-9(%r13), %r14d
	jmp	.LBB21_33
.LBB21_32:
	movq	-17(%r13), %r14
.LBB21_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsempty
	cmpb	$1, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB21_43
# %bb.34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$17, %r14
	jl	.LBB21_44
# %bb.35:
	addq	%r13, %r14
	addq	$16, %r13
	jmp	.LBB21_38
.LBB21_36:                              #   in Loop: Header=BB21_38 Depth=1
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
.LBB21_37:                              #   in Loop: Header=BB21_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r13
	jae	.LBB21_44
.LBB21_38:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %edx
	movl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$192, %ecx
	je	.LBB21_41
# %bb.39:                               #   in Loop: Header=BB21_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %ecx
	jne	.LBB21_36
# %bb.40:                               #   in Loop: Header=BB21_38 Depth=1
	andl	$63, %edx
	shll	$8, %edx
	movzbl	1(%r13), %ecx
	addl	%ecx, %edx
	addl	$1, %edx
	addq	$2, %r13
	movl	$.L.str.16, %esi
	movq	%rax, %rdi
	jmp	.LBB21_42
.LBB21_41:                              #   in Loop: Header=BB21_38 Depth=1
	andl	$63, %edx
	addl	$1, %edx
	addq	$1, %r13
	movl	$.L.str.15, %esi
	movq	%rax, %rdi
                                        # kill: def $edx killed $edx killed $rdx
.LBB21_42:                              #   in Loop: Header=BB21_38 Depth=1
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB21_37
.LBB21_43:
	movl	$.L.str.14, %esi
	movq	%r12, %rdi
	callq	addReplyError
	jmp	.LBB21_54
.LBB21_44:
	movl	$.L.str.18, %esi
	movq	%rax, %rdi
	callq	sdstrim
	movq	%rax, %r14
	movzbl	-1(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB21_47
# %bb.45:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI21_1(,%rax,8)
.LBB21_46:
	shrq	$3, %rdx
	jmp	.LBB21_52
.LBB21_47:
	xorl	%edx, %edx
	jmp	.LBB21_52
.LBB21_48:
	movzbl	-3(%r14), %edx
	jmp	.LBB21_52
.LBB21_49:
	movzwl	-5(%r14), %edx
	jmp	.LBB21_52
.LBB21_50:
	movl	-9(%r14), %edx
	jmp	.LBB21_52
.LBB21_51:
	movq	-17(%r14), %rdx
.LBB21_52:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	addReplyBulkCBuffer
	movq	%r14, %rdi
	callq	sdsfree
.LBB21_53:
	movl	$42, __A_VARIABLE(%rip)
.LBB21_54:
	movl	$42, __A_VARIABLE(%rip)
.LBB21_55:
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
.LBB21_56:
	movl	$.L.str.25, %edi
	callq	sdsnew
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB21_54
.Lfunc_end21:
	.size	pfdebugCommand, .Lfunc_end21-pfdebugCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_17
	.quad	.LBB21_29
	.quad	.LBB21_30
	.quad	.LBB21_31
	.quad	.LBB21_32
.LJTI21_1:
	.quad	.LBB21_46
	.quad	.LBB21_48
	.quad	.LBB21_49
	.quad	.LBB21_50
	.quad	.LBB21_51
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
