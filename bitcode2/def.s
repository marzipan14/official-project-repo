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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_9
# %bb.1:
	movq	%rax, %r12
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_7
# %bb.2:
	addq	%rbx, %r14
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_7
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	leaq	(%rbx,%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	ja	.LBB2_7
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	cmpb	(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_6
	jmp	.LBB2_8
.LBB2_7:
	xorl	%ebx, %ebx
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_9:
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
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB3_9
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %r8d
	movzbl	(%rsi,%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %r8b
	je	.LBB3_8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	%r8d, %ecx
	orb	$32, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %cl
	jl	.LBB3_6
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$122, %cl
	jg	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	orb	$32, %dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %cl
	jne	.LBB3_5
# %bb.7:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_8
.LBB3_9:
	xorl	%eax, %eax
	jmp	.LBB3_10
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_5:
	movl	$1, %eax
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
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %r8d
	movzbl	(%rsi,%rcx), %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r9b, %r8b
	je	.LBB4_8
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movl	%r8d, %eax
	orb	$32, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %al
	jl	.LBB4_6
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$122, %al
	jg	.LBB4_6
# %bb.4:                                #   in Loop: Header=BB4_1 Depth=1
	orb	$32, %r9b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r9b, %al
	jne	.LBB4_5
# %bb.7:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_8:                                #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	je	.LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_1 Depth=1
	addq	$1, %rcx
	testb	%r8b, %r8b
	jne	.LBB4_1
	jmp	.LBB4_10
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB4_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB4_5:
	movl	$1, %eax
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
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	ja	.LBB5_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_14
# %bb.2:
	movb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_14
.LBB5_3:
	movq	%rsi, %r8
	addq	%rdi, %rsi
	addq	$-1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r9
	testl	%edx, %edx
	jns	.LBB5_5
# %bb.4:
	leaq	1(%rdi), %r9
	movb	$45, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_5:
	movb	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB5_11
# %bb.6:
	addq	%rdi, %r8
	.p2align	4, 0x90
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rsi
	jbe	.LBB5_12
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	leal	(%rcx,%rcx), %edx
	leal	(%rdx,%rdx,4), %r10d
	movl	%eax, %edx
	subl	%r10d, %edx
	addb	$48, %dl
	movb	%dl, -1(%rsi)
	addq	$-1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	addl	$9, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$19, %eax
	jae	.LBB5_7
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB5_13
# %bb.10:
	subq	%rsi, %r8
	movq	%r9, %rdi
	movq	%r8, %rdx
	callq	memmove
	jmp	.LBB5_14
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_13:
	movw	$48, (%r9)
	jmp	.LBB5_14
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, (%rdi)
.LBB5_14:
	movl	$42, __A_VARIABLE(%rip)
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
