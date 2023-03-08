	.text
	.file	"def.c"
	.globl	lwip_htons              # -- Begin function lwip_htons
	.p2align	4, 0x90
	.type	lwip_htons,@function
lwip_htons:                             # @lwip_htons
# %bb.0:
	movl	%edi, %eax
	rolw	$8, %ax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end0:
	.size	lwip_htons, .Lfunc_end0-lwip_htons
                                        # -- End function
	.globl	lwip_htonl              # -- Begin function lwip_htonl
	.p2align	4, 0x90
	.type	lwip_htonl,@function
lwip_htonl:                             # @lwip_htonl
# %bb.0:
	movl	%edi, %eax
	bswapl	%eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	lwip_htonl, .Lfunc_end1-lwip_htonl
                                        # -- End function
	.globl	lwip_strnstr            # -- Begin function lwip_strnstr
	.p2align	4, 0x90
	.type	lwip_strnstr,@function
lwip_strnstr:                           # @lwip_strnstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB2_8
# %bb.1:
	movq	%rax, %r12
	movb	(%rbx), %al
	testb	%al, %al
	je	.LBB2_7
# %bb.2:
	addq	%rbx, %r14
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
	testb	%al, %al
	je	.LBB2_7
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	leaq	(%rbx,%r12), %rcx
	cmpq	%r14, %rcx
	ja	.LBB2_7
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	cmpb	(%r15), %al
	jne	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB2_6
	jmp	.LBB2_8
.LBB2_7:
	xorl	%ebx, %ebx
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lwip_strnstr, .Lfunc_end2-lwip_strnstr
                                        # -- End function
	.globl	lwip_stricmp            # -- Begin function lwip_stricmp
	.p2align	4, 0x90
	.type	lwip_stricmp,@function
lwip_stricmp:                           # @lwip_stricmp
# %bb.0:
	xorl	%ecx, %ecx
	movl	$1, %eax
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	addq	$1, %rcx
	testb	%r8b, %r8b
	je	.LBB3_5
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %r8d
	movzbl	(%rsi,%rcx), %r9d
	cmpb	%r9b, %r8b
	je	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	%r8d, %edx
	orb	$32, %dl
	leal	-97(%rdx), %r10d
	cmpb	$25, %r10b
	ja	.LBB3_6
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	orb	$32, %r9b
	cmpb	%r9b, %dl
	je	.LBB3_4
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_5:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	lwip_stricmp, .Lfunc_end3-lwip_stricmp
                                        # -- End function
	.globl	lwip_strnicmp           # -- Begin function lwip_strnicmp
	.p2align	4, 0x90
	.type	lwip_strnicmp,@function
lwip_strnicmp:                          # @lwip_strnicmp
# %bb.0:
	addq	$-1, %rdx
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r10), %r8d
	movzbl	(%rsi,%r10), %r9d
	cmpb	%r9b, %r8b
	je	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movl	%r8d, %ecx
	orb	$32, %cl
	leal	-97(%rcx), %r11d
	movl	$1, %eax
	cmpb	$25, %r11b
	ja	.LBB4_6
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	orb	$32, %r9b
	cmpb	%r9b, %cl
	jne	.LBB4_6
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	cmpq	%r10, %rdx
	je	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	addq	$1, %r10
	testb	%r8b, %r8b
	jne	.LBB4_1
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	lwip_strnicmp, .Lfunc_end4-lwip_strnicmp
                                        # -- End function
	.globl	lwip_itoa               # -- Begin function lwip_itoa
	.p2align	4, 0x90
	.type	lwip_itoa,@function
lwip_itoa:                              # @lwip_itoa
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %r8
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpq	$1, %rsi
	ja	.LBB5_3
# %bb.1:
	jne	.LBB5_16
	jmp	.LBB5_2
.LBB5_3:
	leaq	(%r8,%rsi), %r9
	addq	$-1, %r9
	movq	%r8, %rdi
	testl	%edx, %edx
	jns	.LBB5_5
# %bb.4:
	leaq	1(%r8), %rdi
	movb	$45, (%r8)
.LBB5_5:
	movb	$0, (%r9)
	testl	%edx, %edx
	setne	%r10b
	xorl	%eax, %eax
	cmpq	%rdi, %r9
	jbe	.LBB5_11
# %bb.6:
	testl	%edx, %edx
	je	.LBB5_11
# %bb.7:                                # %.preheader
	leaq	(%rsi,%r8), %r9
	addq	$-2, %r9
	.p2align	4, 0x90
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rdx
	imulq	$1717986919, %rdx, %rcx # imm = 0x66666667
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$34, %rcx
	addl	%eax, %ecx
	leal	(%rcx,%rcx), %eax
	leal	(%rax,%rax,4), %r10d
	movl	%edx, %eax
	subl	%r10d, %eax
	addb	$48, %al
	movb	%al, (%r9)
	addl	$9, %edx
	cmpl	$18, %edx
	seta	%r10b
	cmpq	%rdi, %r9
	leaq	-1(%r9), %r9
	jbe	.LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
	cmpl	$18, %edx
	ja	.LBB5_8
.LBB5_10:                               # %.loopexit
	addq	$1, %r9
.LBB5_11:
	testb	%r10b, %r10b
	je	.LBB5_13
.LBB5_2:
	movb	$0, (%r8)
	jmp	.LBB5_16
.LBB5_13:
	testb	%al, %al
	je	.LBB5_15
# %bb.14:
	addq	%rsi, %r8
	subq	%r9, %r8
	movq	%r9, %rsi
	movq	%r8, %rdx
	callq	memmove
	jmp	.LBB5_16
.LBB5_15:
	movw	$48, (%rdi)
.LBB5_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lwip_itoa, .Lfunc_end5-lwip_itoa
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
