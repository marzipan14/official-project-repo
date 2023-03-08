	.text
	.file	"getnameinfo.c"
	.globl	getnameinfo             # -- Begin function getnameinfo
	.p2align	4, 0x90
	.type	getnameinfo,@function
getnameinfo:                            # @getnameinfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$824, %rsp              # imm = 0x338
	movl	%r9d, %r15d
	movq	%r8, %r13
	movl	%ecx, %r8d
	movq	%rdx, %rbx
	movq	%rdi, %r12
	movzbl	1(%rdi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$204, %eax
	cmpl	$10, %r14d
	je	.LBB0_14
# %bb.1:
	cmpb	$2, %r14b
	jne	.LBB0_29
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %esi
	jne	.LBB0_29
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_24
# %bb.4:
	testl	%r8d, %r8d
	je	.LBB0_24
# %bb.5:
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r15d, -48(%rbp)        # 4-byte Spill
	leaq	4(%r12), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	ip4addr_ntoa
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	callq	fopen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_20
# %bb.6:
	movq	%rax, %r15
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	leaq	-864(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	movq	%rax, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r15, %rbx
	je	.LBB0_19
# %bb.7:                                # %.preheader
	leaq	-864(%rbp), %r13
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	$512, %esi              # imm = 0x200
	movq	%rbx, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_19
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_18
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	callq	strtok
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_18
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.2, %esi
	xorl	%edi, %edi
	callq	strtok
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_18
# %bb.11:
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %rcx
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$-12, %eax
	cmpq	%rdx, %rcx
	jae	.LBB0_13
# %bb.12:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	fclose
	xorl	%eax, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$28, %esi
	jne	.LBB0_29
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_25
# %bb.16:
	testl	%r8d, %r8d
	je	.LBB0_25
# %bb.17:
	leaq	8(%r12), %rsi
	jmp	.LBB0_21
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	fclose
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r15d        # 4-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB0_21:
	movl	16(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$200, %eax
	testb	$8, %cl
	jne	.LBB0_29
# %bb.22:
	leaq	-352(%rbp), %rdx
	movl	%r14d, %edi
	movl	$256, %ecx              # imm = 0x100
	movl	%r8d, %r14d
	callq	inet_ntop
	leaq	-352(%rbp), %rdi
	callq	strlen
	movq	%rax, %rcx
	movl	%r14d, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-12, %eax
	cmpq	%rdx, %rcx
	jae	.LBB0_29
# %bb.23:
	leaq	-352(%rbp), %rsi
	movq	%rbx, %rdi
	callq	strcpy
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_25:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_29
# %bb.26:
	testl	%r15d, %r15d
	je	.LBB0_29
# %bb.27:
	movzwl	2(%r12), %edi
	callq	lwip_htons
	movzwl	%ax, %ecx
	leaq	-352(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$getnameinfo.__str, %edx
	xorl	%eax, %eax
	callq	snprintf
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-12, %eax
	cmpl	%r15d, %ecx
	jge	.LBB0_29
# %bb.28:
	leaq	-352(%rbp), %rsi
	movq	%r13, %rdi
	callq	strcpy
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$824, %rsp              # imm = 0x338
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	getnameinfo, .Lfunc_end0-getnameinfo
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/etc/hosts"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	getnameinfo.__str,@object # @getnameinfo.__str
	.section	.data_shared,"aw",@progbits
getnameinfo.__str:
	.asciz	"%d"
	.size	getnameinfo.__str, 3

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
