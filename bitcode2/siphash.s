	.text
	.file	"siphash.c"
	.globl	siptlw                  # -- Begin function siptlw
	.p2align	4, 0x90
	.type	siptlw,@function
siptlw:                                 # @siptlw
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	-65(%rdi), %ecx
	leal	32(%rdi), %eax
	cmpl	$26, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	siptlw, .Lfunc_end0-siptlw
                                        # -- End function
	.globl	siphash                 # -- Begin function siphash
	.p2align	4, 0x90
	.type	siphash,@function
siphash:                                # @siphash
# %bb.0:
	pushq	%rbx
	movq	(%rdx), %r10
	movq	8(%rdx), %r11
	leaq	(%rdi,%rsi), %r9
	movl	%esi, %edx
	andl	$7, %edx
	subq	%rdx, %r9
	movabsq	$8387220255154660723, %rcx # imm = 0x7465646279746573
	xorq	%r11, %rcx
	movabsq	$7816392313619706465, %rax # imm = 0x6C7967656E657261
	xorq	%r10, %rax
	movabsq	$7237128888997146477, %r8 # imm = 0x646F72616E646F6D
	xorq	%r11, %r8
	movabsq	$8317987319222330741, %r11 # imm = 0x736F6D6570736575
	xorq	%r10, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r9
	je	.LBB1_4
# %bb.1:                                # %.preheader
	movq	%rsi, %r10
	subq	%rdx, %r10
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	addq	%r8, %r11
	rolq	$13, %r8
	movq	(%rdi,%rdx), %rbx
	xorq	%r11, %r8
	rolq	$32, %r11
	xorq	%rbx, %rcx
	addq	%rcx, %rax
	rolq	$16, %rcx
	xorq	%rax, %rcx
	addq	%rcx, %r11
	rolq	$21, %rcx
	xorq	%r11, %rcx
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%rbx, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdx
	cmpq	%rdx, %r10
	jne	.LBB1_2
# %bb.3:
	movq	%r9, %rdi
.LBB1_4:
	movq	%rsi, %r9
	shlq	$56, %r9
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %sil
	addb	$-1, %sil
	cmpb	$6, %sil
	ja	.LBB1_13
# %bb.5:
	movzbl	%sil, %edx
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_6:
	movzbl	6(%rdi), %edx
	shlq	$48, %rdx
	orq	%rdx, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	movzbl	5(%rdi), %edx
	shlq	$40, %rdx
	orq	%rdx, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movzbl	4(%rdi), %edx
	shlq	$32, %rdx
	orq	%rdx, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB1_9:
	movzbl	3(%rdi), %edx
	shlq	$24, %rdx
	orq	%rdx, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	movzbl	2(%rdi), %edx
	shlq	$16, %rdx
	orq	%rdx, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB1_11:
	movzbl	1(%rdi), %edx
	shlq	$8, %rdx
	orq	%rdx, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB1_12:
	movzbl	(%rdi), %edx
	orq	%rdx, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
	addq	%r8, %r11
	rolq	$13, %r8
	xorq	%r11, %r8
	rolq	$32, %r11
	xorq	%r9, %rcx
	addq	%rcx, %rax
	rolq	$16, %rcx
	xorq	%rax, %rcx
	addq	%rcx, %r11
	rolq	$21, %rcx
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%r11, %rcx
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r9, %r11
	addq	%r8, %r11
	rolq	$13, %r8
	xorq	%r11, %r8
	rolq	$32, %r11
	xorq	$255, %rax
	addq	%rcx, %rax
	rolq	$16, %rcx
	xorq	%rax, %rcx
	addq	%rcx, %r11
	rolq	$21, %rcx
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r11, %rcx
	addq	%r8, %r11
	rolq	$13, %r8
	addq	%rcx, %rax
	rolq	$16, %rcx
	xorq	%rax, %rcx
	rolq	$21, %rcx
	xorq	%r11, %r8
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r8, %rax
	xorq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	siphash, .Lfunc_end1-siphash
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_12
	.quad	.LBB1_11
	.quad	.LBB1_10
	.quad	.LBB1_9
	.quad	.LBB1_8
	.quad	.LBB1_7
	.quad	.LBB1_6
                                        # -- End function
	.text
	.globl	siphash_nocase          # -- Begin function siphash_nocase
	.p2align	4, 0x90
	.type	siphash_nocase,@function
siphash_nocase:                         # @siphash_nocase
# %bb.0:
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rdx
	leaq	(%rdi,%rsi), %r9
	movl	%esi, %eax
	andl	$7, %eax
	subq	%rax, %r9
	movabsq	$8387220255154660723, %r11 # imm = 0x7465646279746573
	xorq	%rdx, %r11
	movabsq	$7816392313619706465, %rax # imm = 0x6C7967656E657261
	xorq	%rcx, %rax
	movabsq	$7237128888997146477, %r8 # imm = 0x646F72616E646F6D
	xorq	%rdx, %r8
	movabsq	$8317987319222330741, %r10 # imm = 0x736F6D6570736575
	xorq	%rcx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r9
	je	.LBB2_3
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %ebx
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdi), %ecx
	leal	-65(%rcx), %edx
	shll	$8, %ecx
	leal	8192(%rcx), %ebp
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %ebp
	orl	%ebx, %ebp
	movzbl	2(%rdi), %edx
	leal	-65(%rdx), %ebx
	shll	$16, %edx
	leal	2097152(%rdx), %ecx
	cmpl	$26, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%edx, %ecx
	orl	%ebp, %ecx
	movzbl	3(%rdi), %edx
	leal	-65(%rdx), %ebx
	leal	32(%rdx), %ebp
	cmpl	$26, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%edx, %ebp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$24, %rbp
	movzbl	4(%rdi), %ebx
	leal	-65(%rbx), %r14d
	leal	32(%rbx), %edx
	cmpl	$26, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ebx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$32, %rdx
	orq	%rbp, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rdi), %ecx
	leal	-65(%rcx), %ebx
	leal	32(%rcx), %ebp
	cmpl	$26, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %ebp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$40, %rbp
	movzbl	6(%rdi), %ecx
	leal	-65(%rcx), %r14d
	leal	32(%rcx), %ebx
	cmpl	$26, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$48, %rbx
	orq	%rbp, %rbx
	movzbl	7(%rdi), %ebp
	leal	-65(%rbp), %r14d
	leal	32(%rbp), %ecx
	cmpl	$26, %r14d
	cmovael	%ebp, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$56, %rcx
	orq	%rbx, %rcx
	addq	%r8, %r10
	rolq	$13, %r8
	orq	%rdx, %rcx
	xorq	%r10, %r8
	rolq	$32, %r10
	xorq	%rcx, %r11
	addq	%r11, %rax
	rolq	$16, %r11
	xorq	%rax, %r11
	addq	%r11, %r10
	rolq	$21, %r11
	xorq	%r10, %r11
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%rcx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	cmpq	%r9, %rdi
	jne	.LBB2_1
# %bb.2:
	movq	%r9, %rdi
.LBB2_3:
	movq	%rsi, %r9
	shlq	$56, %r9
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %sil
	addb	$-1, %sil
	cmpb	$6, %sil
	ja	.LBB2_12
# %bb.4:
	movzbl	%sil, %ecx
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_5:
	movzbl	6(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$48, %rsi
	orq	%rsi, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB2_6:
	movzbl	5(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$40, %rsi
	orq	%rsi, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB2_7:
	movzbl	4(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$32, %rsi
	orq	%rsi, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:
	movzbl	3(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$24, %rsi
	orq	%rsi, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB2_9:
	movzbl	2(%rdi), %ecx
	leal	-65(%rcx), %edx
	shll	$16, %ecx
	leal	2097152(%rcx), %esi
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %esi
	orq	%rsi, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB2_10:
	movzbl	1(%rdi), %ecx
	leal	-65(%rcx), %edx
	shll	$8, %ecx
	leal	8192(%rcx), %esi
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %esi
	orq	%rsi, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB2_11:
	movzbl	(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovael	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orq	%rsi, %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB2_12:
	addq	%r8, %r10
	rolq	$13, %r8
	xorq	%r10, %r8
	rolq	$32, %r10
	xorq	%r9, %r11
	addq	%r11, %rax
	rolq	$16, %r11
	xorq	%rax, %r11
	addq	%r11, %r10
	rolq	$21, %r11
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%r10, %r11
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r9, %r10
	addq	%r8, %r10
	rolq	$13, %r8
	xorq	%r10, %r8
	rolq	$32, %r10
	xorq	$255, %rax
	addq	%r11, %rax
	rolq	$16, %r11
	xorq	%rax, %r11
	addq	%r11, %r10
	rolq	$21, %r11
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r10, %r11
	addq	%r8, %r10
	rolq	$13, %r8
	addq	%r11, %rax
	rolq	$16, %r11
	xorq	%rax, %r11
	rolq	$21, %r11
	xorq	%r10, %r8
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r8, %rax
	xorq	%r11, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	siphash_nocase, .Lfunc_end2-siphash_nocase
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_11
	.quad	.LBB2_10
	.quad	.LBB2_9
	.quad	.LBB2_8
	.quad	.LBB2_7
	.quad	.LBB2_6
	.quad	.LBB2_5
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
