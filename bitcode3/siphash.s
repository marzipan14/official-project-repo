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
	cmovael	%edi, %eax
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
	movq	8(%rdx), %rdx
	leaq	(%rdi,%rsi), %r11
	movl	%esi, %r9d
	andl	$7, %r9d
	subq	%r9, %r11
	movabsq	$8387220255154660723, %rcx # imm = 0x7465646279746573
	xorq	%rdx, %rcx
	movabsq	$7816392313619706465, %rax # imm = 0x6C7967656E657261
	xorq	%r10, %rax
	movabsq	$7237128888997146477, %r8 # imm = 0x646F72616E646F6D
	xorq	%rdx, %r8
	movabsq	$8317987319222330741, %rdx # imm = 0x736F6D6570736575
	xorq	%r10, %rdx
	cmpq	%rdi, %r11
	je	.LBB1_4
# %bb.1:
	movq	%rsi, %r10
	subq	%r9, %r10
	movq	%r10, %r9
	andq	$-8, %r9
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	addq	%r8, %rdx
	rolq	$13, %r8
	movq	(%rdi,%r11), %rbx
	xorq	%rdx, %r8
	rolq	$32, %rdx
	xorq	%rbx, %rcx
	addq	%rcx, %rax
	rolq	$16, %rcx
	xorq	%rax, %rcx
	addq	%rcx, %rdx
	rolq	$21, %rcx
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%rdx, %rcx
	xorq	%rbx, %rdx
	addq	$8, %r11
	cmpq	%r11, %r10
	jne	.LBB1_2
# %bb.3:
	addq	%r9, %rdi
.LBB1_4:
	movq	%rsi, %r9
	shlq	$56, %r9
	andb	$7, %sil
	addb	$-1, %sil
	cmpb	$6, %sil
	ja	.LBB1_13
# %bb.5:
	movzbl	%sil, %esi
	jmpq	*.LJTI1_0(,%rsi,8)
.LBB1_6:
	movzbl	6(%rdi), %esi
	shlq	$48, %rsi
	orq	%rsi, %r9
.LBB1_7:
	movzbl	5(%rdi), %esi
	shlq	$40, %rsi
	orq	%rsi, %r9
.LBB1_8:
	movzbl	4(%rdi), %esi
	shlq	$32, %rsi
	orq	%rsi, %r9
.LBB1_9:
	movzbl	3(%rdi), %esi
	shlq	$24, %rsi
	orq	%rsi, %r9
.LBB1_10:
	movzbl	2(%rdi), %esi
	shlq	$16, %rsi
	orq	%rsi, %r9
.LBB1_11:
	movzbl	1(%rdi), %esi
	shlq	$8, %rsi
	orq	%rsi, %r9
.LBB1_12:
	movzbl	(%rdi), %esi
	orq	%rsi, %r9
.LBB1_13:
	addq	%r8, %rdx
	rolq	$13, %r8
	xorq	%rdx, %r8
	rolq	$32, %rdx
	xorq	%r9, %rcx
	addq	%rcx, %rax
	rolq	$16, %rcx
	xorq	%rax, %rcx
	addq	%rcx, %rdx
	rolq	$21, %rcx
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rdx, %rcx
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r9, %rdx
	addq	%r8, %rdx
	rolq	$13, %r8
	xorq	%rdx, %r8
	rolq	$32, %rdx
	xorq	$255, %rax
	addq	%rcx, %rax
	rolq	$16, %rcx
	xorq	%rax, %rcx
	addq	%rcx, %rdx
	rolq	$21, %rcx
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%rdx, %rcx
	addq	%r8, %rdx
	rolq	$13, %r8
	addq	%rcx, %rax
	rolq	$16, %rcx
	xorq	%rdx, %r8
	xorq	%rax, %rcx
	rolq	$21, %rcx
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r8, %rax
	xorq	%rcx, %rax
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rbx
	movq	8(%rdx), %rdx
	leaq	(%rdi,%rsi), %r9
	movl	%esi, %ecx
	andl	$7, %ecx
	subq	%rcx, %r9
	movabsq	$8387220255154660723, %r14 # imm = 0x7465646279746573
	xorq	%rdx, %r14
	movabsq	$7816392313619706465, %rax # imm = 0x6C7967656E657261
	xorq	%rbx, %rax
	movabsq	$7237128888997146477, %r8 # imm = 0x646F72616E646F6D
	xorq	%rdx, %r8
	movabsq	$8317987319222330741, %r11 # imm = 0x736F6D6570736575
	xorq	%rbx, %r11
	cmpq	%rdi, %r9
	je	.LBB2_4
# %bb.1:
	movq	%rsi, %r10
	subq	%rcx, %r10
	andq	$-8, %r10
	movq	%rdi, %r12
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %ecx
	leal	-65(%rcx), %ebx
	leal	32(%rcx), %ebp
	cmpl	$26, %ebx
	cmovael	%ecx, %ebp
	movzbl	1(%r12), %ecx
	leal	-65(%rcx), %r15d
	shll	$8, %ecx
	leal	8192(%rcx), %ebx
	cmpl	$26, %r15d
	cmovael	%ecx, %ebx
	orl	%ebp, %ebx
	movzbl	2(%r12), %ecx
	leal	-65(%rcx), %r15d
	shll	$16, %ecx
	leal	2097152(%rcx), %ebp
	cmpl	$26, %r15d
	cmovael	%ecx, %ebp
	orl	%ebx, %ebp
	movzbl	3(%r12), %ecx
	leal	-65(%rcx), %ebx
	leal	32(%rcx), %edx
	cmpl	$26, %ebx
	cmovael	%ecx, %edx
	shlq	$24, %rdx
	movzbl	4(%r12), %ecx
	leal	-65(%rcx), %r15d
	leal	32(%rcx), %ebx
	cmpl	$26, %r15d
	cmovael	%ecx, %ebx
	shlq	$32, %rbx
	orq	%rdx, %rbx
	orq	%rbp, %rbx
	movzbl	5(%r12), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %ebp
	cmpl	$26, %edx
	cmovael	%ecx, %ebp
	shlq	$40, %rbp
	movzbl	6(%r12), %ecx
	leal	-65(%rcx), %r15d
	leal	32(%rcx), %edx
	cmpl	$26, %r15d
	cmovael	%ecx, %edx
	shlq	$48, %rdx
	orq	%rbp, %rdx
	movzbl	7(%r12), %ebp
	leal	-65(%rbp), %r15d
	leal	32(%rbp), %ecx
	cmpl	$26, %r15d
	cmovael	%ebp, %ecx
	shlq	$56, %rcx
	orq	%rdx, %rcx
	addq	%r8, %r11
	rolq	$13, %r8
	orq	%rbx, %rcx
	xorq	%r11, %r8
	rolq	$32, %r11
	xorq	%rcx, %r14
	addq	%r14, %rax
	rolq	$16, %r14
	xorq	%rax, %r14
	addq	%r14, %r11
	rolq	$21, %r14
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r11, %r14
	xorq	%rcx, %r11
	addq	$8, %r12
	cmpq	%r9, %r12
	jne	.LBB2_2
# %bb.3:
	addq	%r10, %rdi
.LBB2_4:
	movq	%rsi, %r9
	shlq	$56, %r9
	andb	$7, %sil
	addb	$-1, %sil
	cmpb	$6, %sil
	ja	.LBB2_13
# %bb.5:
	movzbl	%sil, %ecx
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_6:
	movzbl	6(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	cmovael	%ecx, %esi
	shlq	$48, %rsi
	orq	%rsi, %r9
.LBB2_7:
	movzbl	5(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	cmovael	%ecx, %esi
	shlq	$40, %rsi
	orq	%rsi, %r9
.LBB2_8:
	movzbl	4(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	cmovael	%ecx, %esi
	shlq	$32, %rsi
	orq	%rsi, %r9
.LBB2_9:
	movzbl	3(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	cmovael	%ecx, %esi
	shlq	$24, %rsi
	orq	%rsi, %r9
.LBB2_10:
	movzbl	2(%rdi), %ecx
	leal	-65(%rcx), %edx
	shll	$16, %ecx
	leal	2097152(%rcx), %esi
	cmpl	$26, %edx
	cmovael	%ecx, %esi
	orq	%rsi, %r9
.LBB2_11:
	movzbl	1(%rdi), %ecx
	leal	-65(%rcx), %edx
	shll	$8, %ecx
	leal	8192(%rcx), %esi
	cmpl	$26, %edx
	cmovael	%ecx, %esi
	orq	%rsi, %r9
.LBB2_12:
	movzbl	(%rdi), %ecx
	leal	-65(%rcx), %edx
	leal	32(%rcx), %esi
	cmpl	$26, %edx
	cmovael	%ecx, %esi
	orq	%rsi, %r9
.LBB2_13:
	addq	%r8, %r11
	rolq	$13, %r8
	xorq	%r11, %r8
	rolq	$32, %r11
	xorq	%r9, %r14
	addq	%r14, %rax
	rolq	$16, %r14
	xorq	%rax, %r14
	addq	%r14, %r11
	rolq	$21, %r14
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%r11, %r14
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r9, %r11
	addq	%r8, %r11
	rolq	$13, %r8
	xorq	%r11, %r8
	rolq	$32, %r11
	xorq	$255, %rax
	addq	%r14, %rax
	rolq	$16, %r14
	xorq	%rax, %r14
	addq	%r14, %r11
	rolq	$21, %r14
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r11, %r14
	addq	%r8, %r11
	rolq	$13, %r8
	addq	%r14, %rax
	rolq	$16, %r14
	xorq	%r11, %r8
	xorq	%rax, %r14
	rolq	$21, %r14
	addq	%r8, %rax
	rolq	$17, %r8
	xorq	%rax, %r8
	rolq	$32, %rax
	xorq	%r8, %rax
	xorq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	siphash_nocase, .Lfunc_end2-siphash_nocase
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_12
	.quad	.LBB2_11
	.quad	.LBB2_10
	.quad	.LBB2_9
	.quad	.LBB2_8
	.quad	.LBB2_7
	.quad	.LBB2_6
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
