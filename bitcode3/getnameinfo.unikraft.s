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
	movl	%ecx, %ebx
	movq	%rdi, %r12
	movzbl	1(%rdi), %r14d
	movl	$204, %eax
	cmpl	$10, %r14d
	je	.LBB0_13
# %bb.1:
	cmpb	$2, %r14b
	jne	.LBB0_28
# %bb.2:
	cmpl	$16, %esi
	jne	.LBB0_28
# %bb.3:
	testq	%rdx, %rdx
	je	.LBB0_23
# %bb.4:
	testl	%ebx, %ebx
	je	.LBB0_23
# %bb.5:
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	leaq	4(%r12), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	ip4addr_ntoa
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB0_19
# %bb.6:
	movq	%rax, %r12
	movq	%r13, -80(%rbp)         # 8-byte Spill
	leaq	-864(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	movq	%rax, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_18
# %bb.7:                                # %.preheader
	leaq	-864(%rbp), %r13
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	movq	%r13, %rdi
	movl	$512, %esi              # imm = 0x200
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_18
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB0_17
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	callq	strtok
	testq	%rax, %rax
	je	.LBB0_17
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.2, %esi
	xorl	%edi, %edi
	callq	strtok
	testq	%rax, %rax
	je	.LBB0_17
# %bb.11:
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %rcx
	movl	%ebx, %edx
	movl	$-12, %eax
	cmpq	%rdx, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jae	.LBB0_28
# %bb.12:
	movq	%r15, %rsi
	callq	strcpy
	movq	%r12, %rdi
	callq	fclose
	jmp	.LBB0_27
.LBB0_13:
	cmpl	$28, %esi
	jne	.LBB0_28
# %bb.14:
	testq	%rdx, %rdx
	je	.LBB0_23
# %bb.15:
	testl	%ebx, %ebx
	je	.LBB0_23
# %bb.16:
	leaq	8(%r12), %rsi
	jmp	.LBB0_20
.LBB0_18:
	movq	%r12, %rdi
	callq	fclose
	movq	-80(%rbp), %r13         # 8-byte Reload
.LBB0_19:
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB0_20:
	movl	16(%rbp), %ecx
	movl	$200, %eax
	testb	$8, %cl
	jne	.LBB0_28
# %bb.21:
	leaq	-352(%rbp), %rax
	movl	%r14d, %edi
	movq	%rdx, %r14
	movq	%rax, %rdx
	movl	$256, %ecx              # imm = 0x100
	callq	inet_ntop
	leaq	-352(%rbp), %rdi
	callq	strlen
	movq	%rax, %rcx
	movl	%ebx, %edx
	movl	$-12, %eax
	cmpq	%rdx, %rcx
	jae	.LBB0_28
# %bb.22:
	movq	%r14, %rdi
	leaq	-352(%rbp), %rsi
	callq	strcpy
.LBB0_23:
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.LBB0_28
# %bb.24:
	testl	%r15d, %r15d
	je	.LBB0_28
# %bb.25:
	movzwl	2(%r12), %edi
	callq	lwip_htons
	movzwl	%ax, %ecx
	leaq	-352(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$getnameinfo.__str, %edx
	xorl	%eax, %eax
	callq	snprintf
	movl	%eax, %ecx
	movl	$-12, %eax
	cmpl	%r15d, %ecx
	jge	.LBB0_28
# %bb.26:
	leaq	-352(%rbp), %rsi
	movq	%r13, %rdi
	callq	strcpy
.LBB0_27:
	xorl	%eax, %eax
.LBB0_28:
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
