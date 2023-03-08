	.text
	.file	"hiredis.c"
	.globl	freeReplyObject         # -- Begin function freeReplyObject
	.p2align	4, 0x90
	.type	freeReplyObject,@function
freeReplyObject:                        # @freeReplyObject
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	(%rdi), %eax
	leal	-5(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB0_10
# %bb.2:
	cmpl	$1, %eax
	je	.LBB0_10
# %bb.3:
	cmpl	$2, %eax
	jne	.LBB0_12
# %bb.4:
	movq	40(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.5:
	movq	32(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_11
# %bb.6:                                # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jae	.LBB0_11
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	%rax, %rdi
	callq	freeReplyObject
	movq	32(%r14), %rcx
	movq	40(%r14), %rdi
	jmp	.LBB0_9
.LBB0_13:
	retq
.LBB0_10:
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB0_12
.LBB0_11:
	callq	free
.LBB0_12:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	free                    # TAILCALL
.Lfunc_end0:
	.size	freeReplyObject, .Lfunc_end0-freeReplyObject
                                        # -- End function
	.globl	redisvFormatCommand     # -- Begin function redisvFormatCommand
	.p2align	4, 0x90
	.type	redisvFormatCommand,@function
redisvFormatCommand:                    # @redisvFormatCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	$-1, %r13d
	testq	%rdi, %rdi
	je	.LBB1_158
# %bb.1:
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	sdsempty
	testq	%rax, %rax
	je	.LBB1_158
# %bb.2:
	movq	%rax, %rdi
	xorl	%eax, %eax
	movl	$0, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	$0, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%r15, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_8 Depth=1
	testb	%cl, %cl
	je	.LBB1_84
.LBB1_4:                                #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rdi, %rbx
	callq	sdscatlen
	testq	%rax, %rax
	je	.LBB1_89
# %bb.5:                                #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %r13d
.LBB1_6:                                #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rdi
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=1
	addq	$1, %r12
	movl	%r13d, %eax
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_57 Depth 2
                                        #     Child Loop BB1_33 Depth 2
	movb	(%r12), %cl
	cmpb	$32, %cl
	je	.LBB1_16
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	cmpb	$37, %cl
	jne	.LBB1_3
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	movsbl	1(%r12), %eax
	testl	%eax, %eax
	je	.LBB1_4
# %bb.11:                               #   in Loop: Header=BB1_8 Depth=1
	leaq	1(%r12), %rbx
	cmpl	$37, %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB1_24
# %bb.12:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$98, %eax
	je	.LBB1_21
# %bb.13:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$115, %eax
	jne	.LBB1_25
# %bb.14:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	movq	%rbx, %r12
	cmpq	$40, %rcx
	ja	.LBB1_46
# %bb.15:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_47
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB1_7
# %bb.17:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r15
	movslq	%r14d, %rbx
	leaq	8(,%rbx,8), %rsi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	realloc
	testq	%rax, %rax
	je	.LBB1_92
# %bb.18:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%r15, %rdx
	movq	%r15, (%rax,%rbx,8)
	movzbl	-1(%r15), %r15d
	movl	%r15d, %ecx
	andb	$7, %cl
	movl	$1, %ebx
	cmpb	$4, %cl
	movq	%rax, -72(%rbp)         # 8-byte Spill
	ja	.LBB1_38
# %bb.19:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_20:                               #   in Loop: Header=BB1_8 Depth=1
	shrq	$3, %r15
	cmpq	$10, %r15
	jae	.LBB1_32
	jmp	.LBB1_51
.LBB1_21:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	cmpq	$41, %rax
	jae	.LBB1_42
# %bb.22:                               #   in Loop: Header=BB1_8 Depth=1
	movq	16(%r15), %rdx
	leal	8(%rax), %ecx
	movl	%ecx, (%r15)
	movq	(%rdx,%rax), %rsi
	cmpl	$40, %ecx
	ja	.LBB1_43
# %bb.23:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	%ecx, %rcx
	addq	16(%r15), %rcx
	addl	$16, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_44
.LBB1_24:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str, %esi
	callq	sdscat
	jmp	.LBB1_82
.LBB1_25:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, -76(%rbp)        # 4-byte Spill
	movq	%rbx, %r14
	leaq	2(%r12), %rbx
	movq	%r14, %r13
	.p2align	4, 0x90
.LBB1_26:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%al, %esi
	movl	$redisvFormatCommand.flags, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB1_39
# %bb.27:                               #   in Loop: Header=BB1_26 Depth=2
	movzbl	1(%r14), %eax
	addq	$1, %r14
	addq	$1, %rbx
	testb	%al, %al
	jne	.LBB1_26
	jmp	.LBB1_59
.LBB1_28:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-17(%rdx), %r15
	cmpq	$10, %r15
	jae	.LBB1_32
	jmp	.LBB1_51
.LBB1_29:                               #   in Loop: Header=BB1_8 Depth=1
	movzwl	-5(%rdx), %r15d
	cmpq	$10, %r15
	jae	.LBB1_32
	jmp	.LBB1_51
.LBB1_30:                               #   in Loop: Header=BB1_8 Depth=1
	movl	-9(%rdx), %r15d
	cmpq	$10, %r15
	jae	.LBB1_32
	jmp	.LBB1_51
.LBB1_31:                               #   in Loop: Header=BB1_8 Depth=1
	movzbl	-3(%rdx), %r15d
	cmpq	$10, %r15
	jb	.LBB1_51
.LBB1_32:                               # %.preheader10
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ebx
	movq	%r15, %rcx
	.p2align	4, 0x90
.LBB1_33:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$99, %rcx
	jbe	.LBB1_49
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=2
	cmpq	$999, %rcx              # imm = 0x3E7
	jbe	.LBB1_50
# %bb.35:                               #   in Loop: Header=BB1_33 Depth=2
	cmpq	$10000, %rcx            # imm = 0x2710
	jb	.LBB1_51
# %bb.36:                               #   in Loop: Header=BB1_33 Depth=2
	movq	%rcx, %rax
	movabsq	$3777893186295716171, %rdx # imm = 0x346DC5D63886594B
	mulq	%rdx
	shrq	$11, %rdx
	addl	$4, %ebx
	cmpq	$99999, %rcx            # imm = 0x1869F
	movq	%rdx, %rcx
	ja	.LBB1_33
# %bb.37:                               # %.loopexit11
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-3, %ebx
	jmp	.LBB1_51
.LBB1_38:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB1_51
.LBB1_39:                               #   in Loop: Header=BB1_8 Depth=1
	cmpb	$0, (%r14)
	je	.LBB1_59
	.p2align	4, 0x90
.LBB1_40:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movsbq	(%r14), %rcx
	testb	$4, 1(%rax,%rcx)
	je	.LBB1_56
# %bb.41:                               #   in Loop: Header=BB1_40 Depth=2
	addq	$1, %rbx
	cmpb	$0, 1(%r14)
	leaq	1(%r14), %r14
	jne	.LBB1_40
	jmp	.LBB1_59
.LBB1_42:                               #   in Loop: Header=BB1_8 Depth=1
	movq	8(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%r15)
	movq	(%rax), %rsi
.LBB1_43:                               #   in Loop: Header=BB1_8 Depth=1
	movq	8(%r15), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, 8(%r15)
.LBB1_44:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB1_53
# %bb.45:                               #   in Loop: Header=BB1_8 Depth=1
	callq	sdscatlen
	jmp	.LBB1_82
.LBB1_46:                               #   in Loop: Header=BB1_8 Depth=1
	movq	8(%r15), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%r15)
.LBB1_47:                               #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_54
# %bb.48:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	jmp	.LBB1_55
.LBB1_49:                               #   in Loop: Header=BB1_8 Depth=1
	addl	$-2, %ebx
	jmp	.LBB1_51
.LBB1_50:                               #   in Loop: Header=BB1_8 Depth=1
	addl	$-1, %ebx
.LBB1_51:                               #   in Loop: Header=BB1_8 Depth=1
	addl	$1, %r14d
	callq	sdsempty
	testq	%rax, %rax
	je	.LBB1_94
# %bb.52:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	addl	%r15d, %eax
	addl	%ebx, %eax
	addl	$5, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	-120(%rbp), %r15        # 8-byte Reload
	jmp	.LBB1_7
.LBB1_53:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %rax
	jmp	.LBB1_82
.LBB1_54:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB1_55:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, %rbx
	jmp	.LBB1_82
.LBB1_56:                               #   in Loop: Header=BB1_8 Depth=1
	cmpb	$46, %cl
	jne	.LBB1_59
	.p2align	4, 0x90
.LBB1_57:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %r14
	cmpb	$0, (%rbx)
	je	.LBB1_59
# %bb.58:                               #   in Loop: Header=BB1_57 Depth=2
	callq	__locale_ctype_ptr
	movsbq	(%r14), %rcx
	leaq	1(%r14), %rbx
	testb	$4, 1(%rax,%rcx)
	jne	.LBB1_57
.LBB1_59:                               #   in Loop: Header=BB1_8 Depth=1
	movq	16(%r15), %rax
	movq	%rax, -128(%rbp)
	movups	(%r15), %xmm0
	movaps	%xmm0, -144(%rbp)
	movsbl	(%r14), %esi
	movl	$redisvFormatCommand.intfmts, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB1_62
# %bb.60:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r15), %eax
	cmpl	$40, %eax
	ja	.LBB1_65
# %bb.61:                               #   in Loop: Header=BB1_8 Depth=1
	addl	$8, %eax
	movl	%eax, (%r15)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_79
.LBB1_62:                               #   in Loop: Header=BB1_8 Depth=1
	movsbl	(%r14), %esi
	movl	$.L.str.1, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB1_66
# %bb.63:                               #   in Loop: Header=BB1_8 Depth=1
	movl	4(%r15), %eax
	cmpl	$160, %eax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	ja	.LBB1_78
# %bb.64:                               #   in Loop: Header=BB1_8 Depth=1
	addl	$16, %eax
	movl	%eax, 4(%r15)
	jmp	.LBB1_79
.LBB1_65:                               #   in Loop: Header=BB1_8 Depth=1
	addq	$8, 8(%r15)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_79
.LBB1_66:                               #   in Loop: Header=BB1_8 Depth=1
	movb	(%r14), %al
	cmpb	$108, %al
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB1_72
# %bb.67:                               #   in Loop: Header=BB1_8 Depth=1
	cmpb	$104, %al
	jne	.LBB1_159
# %bb.68:                               #   in Loop: Header=BB1_8 Depth=1
	movsbl	1(%r14), %esi
	cmpl	$104, %esi
	jne	.LBB1_73
.LBB1_69:                               #   in Loop: Header=BB1_8 Depth=1
	movsbl	2(%r14), %esi
	testl	%esi, %esi
	je	.LBB1_159
# %bb.70:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$redisvFormatCommand.intfmts, %edi
	callq	strchr
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_159
# %bb.71:                               #   in Loop: Header=BB1_8 Depth=1
	addq	$2, %r14
	jmp	.LBB1_76
.LBB1_72:                               #   in Loop: Header=BB1_8 Depth=1
	movsbl	1(%r14), %esi
	cmpl	$108, %esi
	je	.LBB1_69
.LBB1_73:                               #   in Loop: Header=BB1_8 Depth=1
	testb	%sil, %sil
	je	.LBB1_159
# %bb.74:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$redisvFormatCommand.intfmts, %edi
	callq	strchr
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_159
# %bb.75:                               #   in Loop: Header=BB1_8 Depth=1
	addq	$1, %r14
.LBB1_76:                               #   in Loop: Header=BB1_8 Depth=1
	movl	(%r15), %eax
	cmpl	$40, %eax
	ja	.LBB1_78
# %bb.77:                               #   in Loop: Header=BB1_8 Depth=1
	addl	$8, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_79
.LBB1_78:                               #   in Loop: Header=BB1_8 Depth=1
	addq	$8, 8(%r15)
.LBB1_79:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%r14, %rbx
	subq	%r12, %rbx
	addq	$1, %rbx
	movq	%rdi, %rax
	cmpq	$13, %rbx
	ja	.LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_8 Depth=1
	leaq	-160(%rbp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, -160(%rbp,%rbx)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	leaq	-144(%rbp), %rdx
	callq	sdscatvprintf
	movq	%r14, %r13
.LBB1_81:                               #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %r14d        # 4-byte Reload
	movq	%r13, %rbx
.LBB1_82:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %r13d
	testq	%rax, %rax
	je	.LBB1_93
# %bb.83:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rbx, %r12
	jmp	.LBB1_6
.LBB1_84:
	testl	%eax, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB1_90
# %bb.85:
	movq	%rdi, %rbx
	movl	%r14d, %r12d
	movslq	%r14d, %r14
	leaq	8(,%r14,8), %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	realloc
	testq	%rax, %rax
	je	.LBB1_91
# %bb.86:
	movq	%rax, %rcx
	movq	%rbx, (%rax,%r14,8)
	movzbl	-1(%rbx), %edi
	movl	%edi, %eax
	andb	$7, %al
	movl	$1, %esi
	cmpb	$4, %al
	ja	.LBB1_107
# %bb.87:
	movq	%rbx, %rdx
	movl	%edi, %eax
	andl	$7, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_88:
	shrq	$3, %rdi
	jmp	.LBB1_100
.LBB1_89:
	movl	$-1, %r13d
	movq	%rbx, %rdi
	jmp	.LBB1_152
.LBB1_90:
	callq	sdsfree
	movl	%r14d, %eax
	movslq	%r14d, %r14
	movq	-72(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_112
.LBB1_91:
	movl	$-1, %r13d
	movl	%r12d, %r14d
	movq	%rbx, %rdi
	testq	%r15, %r15
	jne	.LBB1_153
	jmp	.LBB1_157
.LBB1_92:
	movq	%r15, %rdi
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_95
.LBB1_93:
	movl	$-1, %r13d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_152
.LBB1_94:
	xorl	%edi, %edi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %r15
.LBB1_95:
	movl	$-1, %r13d
	testq	%r15, %r15
	jne	.LBB1_153
	jmp	.LBB1_157
.LBB1_96:
	movq	-17(%rdx), %rdi
	jmp	.LBB1_100
.LBB1_97:
	movzwl	-5(%rdx), %edi
	jmp	.LBB1_100
.LBB1_98:
	movzbl	-3(%rdx), %edi
	jmp	.LBB1_100
.LBB1_99:
	movl	-9(%rdx), %edi
.LBB1_100:
	cmpq	$10, %rdi
	jb	.LBB1_111
# %bb.101:                              # %.preheader3
	movq	%rcx, %r8
	movl	$4, %esi
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB1_102:                              # =>This Inner Loop Header: Depth=1
	cmpq	$99, %rcx
	jbe	.LBB1_108
# %bb.103:                              #   in Loop: Header=BB1_102 Depth=1
	cmpq	$999, %rcx              # imm = 0x3E7
	jbe	.LBB1_109
# %bb.104:                              #   in Loop: Header=BB1_102 Depth=1
	cmpq	$10000, %rcx            # imm = 0x2710
	jb	.LBB1_110
# %bb.105:                              #   in Loop: Header=BB1_102 Depth=1
	movq	%rcx, %rax
	movabsq	$3777893186295716171, %rdx # imm = 0x346DC5D63886594B
	mulq	%rdx
	shrq	$11, %rdx
	addl	$4, %esi
	cmpq	$99999, %rcx            # imm = 0x1869F
	movq	%rdx, %rcx
	ja	.LBB1_102
# %bb.106:                              # %.loopexit4
	addl	$-3, %esi
	jmp	.LBB1_110
.LBB1_107:
	xorl	%edi, %edi
	jmp	.LBB1_111
.LBB1_108:
	addl	$-2, %esi
	jmp	.LBB1_110
.LBB1_109:
	addl	$-1, %esi
.LBB1_110:
	movq	%r8, %rcx
.LBB1_111:
	movl	%r12d, %eax
	addl	$1, %eax
	addq	$1, %r14
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addl	%edi, %edx
	addl	%esi, %edx
	addl	$5, %edx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %r15
.LBB1_112:
	movl	$1, %ebx
	movl	%eax, %r12d
	cmpl	$10, %eax
	jb	.LBB1_121
# %bb.113:                              # %.preheader
	movl	$4, %ebx
	.p2align	4, 0x90
.LBB1_114:                              # =>This Inner Loop Header: Depth=1
	cmpq	$99, %r14
	jbe	.LBB1_119
# %bb.115:                              #   in Loop: Header=BB1_114 Depth=1
	cmpq	$999, %r14              # imm = 0x3E7
	jbe	.LBB1_120
# %bb.116:                              #   in Loop: Header=BB1_114 Depth=1
	cmpq	$10000, %r14            # imm = 0x2710
	jb	.LBB1_121
# %bb.117:                              #   in Loop: Header=BB1_114 Depth=1
	movq	%r14, %rax
	movabsq	$3777893186295716171, %rdx # imm = 0x346DC5D63886594B
	mulq	%rdx
	shrq	$11, %rdx
	addl	$4, %ebx
	cmpq	$99999, %r14            # imm = 0x1869F
	movq	%rdx, %r14
	ja	.LBB1_114
# %bb.118:                              # %.loopexit2
	addl	$-3, %ebx
	jmp	.LBB1_121
.LBB1_119:
	addl	$-2, %ebx
	jmp	.LBB1_121
.LBB1_120:
	addl	$-1, %ebx
.LBB1_121:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r14         # 8-byte Reload
	leal	(%r14,%rbx), %eax
	addl	$4, %eax
	movslq	%eax, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_151
# %bb.122:
	movq	%rax, %r15
	leal	(%r14,%rbx), %eax
	addl	$3, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movl	%r12d, %r14d
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	sprintf
	movl	%eax, %ebx
	testl	%r12d, %r12d
	jle	.LBB1_149
# %bb.123:
	movl	%r14d, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB1_126
.LBB1_124:                              #   in Loop: Header=BB1_126 Depth=1
	movq	-17(%rdi), %rbx
	.p2align	4, 0x90
.LBB1_125:                              #   in Loop: Header=BB1_126 Depth=1
	leal	(%r12,%rbx), %r14d
	callq	sdsfree
	movslq	%r14d, %rax
	movw	$2573, (%r15,%rax)      # imm = 0xA0D
	addl	%r12d, %ebx
	addl	$2, %ebx
	addq	$1, %r13
	cmpq	%r13, -64(%rbp)         # 8-byte Folded Reload
	je	.LBB1_149
.LBB1_126:                              # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rdi
	addq	%r15, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r13,8), %rax
	movzbl	-1(%rax), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB1_133
# %bb.127:                              #   in Loop: Header=BB1_126 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI1_2(,%rcx,8)
.LBB1_128:                              #   in Loop: Header=BB1_126 Depth=1
	shrq	$3, %rdx
	jmp	.LBB1_134
.LBB1_129:                              #   in Loop: Header=BB1_126 Depth=1
	movq	-17(%rax), %rdx
	jmp	.LBB1_134
.LBB1_130:                              #   in Loop: Header=BB1_126 Depth=1
	movzwl	-5(%rax), %edx
	jmp	.LBB1_134
.LBB1_131:                              #   in Loop: Header=BB1_126 Depth=1
	movl	-9(%rax), %edx
	jmp	.LBB1_134
.LBB1_132:                              #   in Loop: Header=BB1_126 Depth=1
	movzbl	-3(%rax), %edx
	jmp	.LBB1_134
.LBB1_133:                              #   in Loop: Header=BB1_126 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_134:                              #   in Loop: Header=BB1_126 Depth=1
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	sprintf
	movl	%eax, %r12d
	addl	%ebx, %r12d
	movslq	%r12d, %rdi
	addq	%r15, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r13,8), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB1_141
# %bb.135:                              #   in Loop: Header=BB1_126 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI1_3(,%rax,8)
.LBB1_136:                              #   in Loop: Header=BB1_126 Depth=1
	shrq	$3, %rdx
	jmp	.LBB1_142
.LBB1_137:                              #   in Loop: Header=BB1_126 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB1_142
.LBB1_138:                              #   in Loop: Header=BB1_126 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB1_142
.LBB1_139:                              #   in Loop: Header=BB1_126 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB1_142
.LBB1_140:                              #   in Loop: Header=BB1_126 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB1_142
.LBB1_141:                              #   in Loop: Header=BB1_126 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_142:                              #   in Loop: Header=BB1_126 Depth=1
	callq	memcpy
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r13,8), %rdi
	movzbl	-1(%rdi), %ebx
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB1_148
# %bb.143:                              #   in Loop: Header=BB1_126 Depth=1
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI1_4(,%rax,8)
.LBB1_144:                              #   in Loop: Header=BB1_126 Depth=1
	shrq	$3, %rbx
	jmp	.LBB1_125
.LBB1_145:                              #   in Loop: Header=BB1_126 Depth=1
	movzwl	-5(%rdi), %ebx
	jmp	.LBB1_125
.LBB1_146:                              #   in Loop: Header=BB1_126 Depth=1
	movl	-9(%rdi), %ebx
	jmp	.LBB1_125
.LBB1_147:                              #   in Loop: Header=BB1_126 Depth=1
	movzbl	-3(%rdi), %ebx
	jmp	.LBB1_125
.LBB1_148:                              #   in Loop: Header=BB1_126 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB1_125
.LBB1_149:
	movl	-96(%rbp), %r13d        # 4-byte Reload
	cmpl	%r13d, %ebx
	jne	.LBB1_160
# %bb.150:
	movslq	%r13d, %rax
	movb	$0, (%r15,%rax)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%r15, (%rax)
	jmp	.LBB1_158
.LBB1_151:
	movl	$-1, %r13d
	xorl	%edi, %edi
	movl	%r12d, %r14d
.LBB1_152:
	movq	-56(%rbp), %r15         # 8-byte Reload
	testq	%r15, %r15
	je	.LBB1_157
.LBB1_153:
	movq	%rdi, %r12
	testl	%r14d, %r14d
	je	.LBB1_156
# %bb.154:
	movslq	%r14d, %rbx
	.p2align	4, 0x90
.LBB1_155:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%r15,%rbx,8), %rdi
	callq	sdsfree
	addq	$-1, %rbx
	jne	.LBB1_155
.LBB1_156:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	%r12, %rdi
.LBB1_157:
	callq	sdsfree
.LBB1_158:
	movl	%r13d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_159:
	movl	$-2, %r13d
	movl	-76(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB1_152
.LBB1_160:
	movl	$.L.str.4, %edi
	movl	$.L__func__.redisvFormatCommand, %edx
	movl	$.L.str.5, %ecx
	movl	$412, %esi              # imm = 0x19C
	callq	__assert_func
.Lfunc_end1:
	.size	redisvFormatCommand, .Lfunc_end1-redisvFormatCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_20
	.quad	.LBB1_31
	.quad	.LBB1_29
	.quad	.LBB1_30
	.quad	.LBB1_28
.LJTI1_1:
	.quad	.LBB1_88
	.quad	.LBB1_98
	.quad	.LBB1_97
	.quad	.LBB1_99
	.quad	.LBB1_96
.LJTI1_2:
	.quad	.LBB1_128
	.quad	.LBB1_132
	.quad	.LBB1_130
	.quad	.LBB1_131
	.quad	.LBB1_129
.LJTI1_3:
	.quad	.LBB1_136
	.quad	.LBB1_140
	.quad	.LBB1_138
	.quad	.LBB1_139
	.quad	.LBB1_137
.LJTI1_4:
	.quad	.LBB1_144
	.quad	.LBB1_147
	.quad	.LBB1_145
	.quad	.LBB1_146
	.quad	.LBB1_124
                                        # -- End function
	.text
	.globl	redisFormatCommand      # -- Begin function redisFormatCommand
	.p2align	4, 0x90
	.type	redisFormatCommand,@function
redisFormatCommand:                     # @redisFormatCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB2_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB2_2:
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	callq	redisvFormatCommand
	cmpl	$-2, %eax
	movl	$-1, %ecx
	cmovlel	%ecx, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	redisFormatCommand, .Lfunc_end2-redisFormatCommand
                                        # -- End function
	.globl	redisFormatSdsCommandArgv # -- Begin function redisFormatSdsCommandArgv
	.p2align	4, 0x90
	.type	redisFormatSdsCommandArgv,@function
redisFormatSdsCommandArgv:              # @redisFormatSdsCommandArgv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	$-1, %edx
	testq	%rdi, %rdi
	je	.LBB3_44
# %bb.1:
	movl	$1, %r14d
	movabsq	$3777893186295716171, %r15 # imm = 0x346DC5D63886594B
	cmpl	$10, %esi
	jb	.LBB3_10
# %bb.2:
	movslq	%esi, %rbx
	movl	$4, %r14d
	.p2align	4, 0x90
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	cmpq	$99, %rbx
	jbe	.LBB3_4
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	cmpq	$999, %rbx              # imm = 0x3E7
	jbe	.LBB3_6
# %bb.7:                                #   in Loop: Header=BB3_3 Depth=1
	cmpq	$10000, %rbx            # imm = 0x2710
	jb	.LBB3_10
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%rbx, %rax
	mulq	%r15
	shrq	$11, %rdx
	addl	$4, %r14d
	cmpq	$99999, %rbx            # imm = 0x1869F
	movq	%rdx, %rbx
	ja	.LBB3_3
# %bb.9:                                # %.loopexit3
	addl	$-3, %r14d
	jmp	.LBB3_10
.LBB3_4:
	addl	$-2, %r14d
	jmp	.LBB3_10
.LBB3_6:
	addl	$-1, %r14d
.LBB3_10:
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	addl	$3, %r14d
	testl	%esi, %esi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%esi, -48(%rbp)         # 4-byte Spill
	jle	.LBB3_25
# %bb.11:
	movl	%esi, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB3_12
.LBB3_18:                               #   in Loop: Header=BB3_12 Depth=1
	addl	$-2, %edi
	.p2align	4, 0x90
.LBB3_24:                               #   in Loop: Header=BB3_12 Depth=1
	addl	$3, %edi
	addq	%rbx, %r14
	addq	%rdi, %r14
	addq	$2, %r14
	addq	$1, %r12
	cmpq	%r13, %r12
	je	.LBB3_25
.LBB3_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
	testq	%rcx, %rcx
	je	.LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=1
	movq	(%rcx,%r12,8), %rbx
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_12 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r12,8), %rdi
	callq	strlen
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %rbx
.LBB3_15:                               #   in Loop: Header=BB3_12 Depth=1
	movl	$1, %edi
	cmpq	$10, %rbx
	jb	.LBB3_24
# %bb.16:                               # %.preheader
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$4, %edi
	movq	%rbx, %rsi
	.p2align	4, 0x90
.LBB3_17:                               #   Parent Loop BB3_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$99, %rsi
	jbe	.LBB3_18
# %bb.19:                               #   in Loop: Header=BB3_17 Depth=2
	cmpq	$999, %rsi              # imm = 0x3E7
	jbe	.LBB3_20
# %bb.21:                               #   in Loop: Header=BB3_17 Depth=2
	cmpq	$10000, %rsi            # imm = 0x2710
	jb	.LBB3_24
# %bb.22:                               #   in Loop: Header=BB3_17 Depth=2
	movq	%rsi, %rax
	mulq	%r15
	shrq	$11, %rdx
	addl	$4, %edi
	cmpq	$99999, %rsi            # imm = 0x1869F
	movq	%rdx, %rsi
	ja	.LBB3_17
# %bb.23:                               # %.loopexit1
                                        #   in Loop: Header=BB3_12 Depth=1
	addl	$-3, %edi
	jmp	.LBB3_24
.LBB3_20:                               #   in Loop: Header=BB3_12 Depth=1
	addl	$-1, %edi
	jmp	.LBB3_24
.LBB3_25:
	callq	sdsempty
	testq	%rax, %rax
	je	.LBB3_26
# %bb.27:
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	sdsMakeRoomFor
	testq	%rax, %rax
	movl	$-1, %edx
	je	.LBB3_44
# %bb.28:
	movl	$.L.str.6, %esi
	movq	%rax, %rdi
	movl	-48(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%rax, %rdi
	testl	%ebx, %ebx
	jle	.LBB3_34
# %bb.29:
	movl	%ebx, %eax
	shlq	$3, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_32:                               #   in Loop: Header=BB3_30 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r12), %rbx
	movq	%rdi, %r13
	movq	(%rax,%r12), %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rax, %r13
.LBB3_33:                               #   in Loop: Header=BB3_30 Depth=1
	movl	$.L.str.7, %esi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	(%rbx), %rsi
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	sdscatlen
	movl	$.L.str.8, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rdi
	addq	$1, %r15
	addq	$8, %r12
	cmpq	%r12, -48(%rbp)         # 8-byte Folded Reload
	je	.LBB3_34
.LBB3_30:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB3_32
# %bb.31:                               #   in Loop: Header=BB3_30 Depth=1
	movq	(%rax,%r12), %r13
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15,8), %rbx
	jmp	.LBB3_33
.LBB3_34:
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB3_35
# %bb.36:
	movl	%eax, %ecx
	andl	$7, %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jmpq	*.LJTI3_0(,%rcx,8)
.LBB3_37:
	shrq	$3, %rax
	jmp	.LBB3_42
.LBB3_26:
	movl	$-1, %edx
	jmp	.LBB3_44
.LBB3_41:
	movq	-17(%rdi), %rax
	jmp	.LBB3_42
.LBB3_39:
	movzwl	-5(%rdi), %eax
	jmp	.LBB3_42
.LBB3_40:
	movl	-9(%rdi), %eax
	jmp	.LBB3_42
.LBB3_38:
	movzbl	-3(%rdi), %eax
	jmp	.LBB3_42
.LBB3_35:
	xorl	%eax, %eax
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB3_42:
	cmpq	%r14, %rax
	jne	.LBB3_45
# %bb.43:
	movq	%rdi, (%rdx)
	movl	%r14d, %edx
.LBB3_44:
	movl	%edx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_45:
	movl	$.L.str.4, %edi
	movl	$.L__func__.redisFormatSdsCommandArgv, %edx
	movl	$.L.str.9, %ecx
	movl	$515, %esi              # imm = 0x203
	callq	__assert_func
.Lfunc_end3:
	.size	redisFormatSdsCommandArgv, .Lfunc_end3-redisFormatSdsCommandArgv
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_37
	.quad	.LBB3_38
	.quad	.LBB3_39
	.quad	.LBB3_40
	.quad	.LBB3_41
                                        # -- End function
	.text
	.globl	redisFreeSdsCommand     # -- Begin function redisFreeSdsCommand
	.p2align	4, 0x90
	.type	redisFreeSdsCommand,@function
redisFreeSdsCommand:                    # @redisFreeSdsCommand
# %bb.0:
	jmp	sdsfree                 # TAILCALL
.Lfunc_end4:
	.size	redisFreeSdsCommand, .Lfunc_end4-redisFreeSdsCommand
                                        # -- End function
	.globl	redisFormatCommandArgv  # -- Begin function redisFormatCommandArgv
	.p2align	4, 0x90
	.type	redisFormatCommandArgv,@function
redisFormatCommandArgv:                 # @redisFormatCommandArgv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	$-1, %r12d
	testq	%rdi, %rdi
	je	.LBB5_34
# %bb.1:
	movq	%rdi, %r13
	movl	$1, %r15d
	movabsq	$3777893186295716171, %r14 # imm = 0x346DC5D63886594B
	cmpl	$10, %esi
	jb	.LBB5_10
# %bb.2:
	movslq	%esi, %rdi
	movl	$4, %r15d
	.p2align	4, 0x90
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	cmpq	$99, %rdi
	jbe	.LBB5_4
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	cmpq	$999, %rdi              # imm = 0x3E7
	jbe	.LBB5_6
# %bb.7:                                #   in Loop: Header=BB5_3 Depth=1
	cmpq	$10000, %rdi            # imm = 0x2710
	jb	.LBB5_10
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%rdi, %rax
	mulq	%r14
	shrq	$11, %rdx
	addl	$4, %r15d
	cmpq	$99999, %rdi            # imm = 0x1869F
	movq	%rdx, %rdi
	ja	.LBB5_3
# %bb.9:                                # %.loopexit3
	addl	$-3, %r15d
	jmp	.LBB5_10
.LBB5_4:
	addl	$-2, %r15d
	jmp	.LBB5_10
.LBB5_6:
	addl	$-1, %r15d
.LBB5_10:
	addl	$3, %r15d
	movl	%esi, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testl	%esi, %esi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%esi, -56(%rbp)         # 4-byte Spill
	jle	.LBB5_25
# %bb.11:
	xorl	%ebx, %ebx
	jmp	.LBB5_12
.LBB5_18:                               #   in Loop: Header=BB5_12 Depth=1
	addl	$-2, %edi
	.p2align	4, 0x90
.LBB5_24:                               #   in Loop: Header=BB5_12 Depth=1
	addl	%r8d, %r15d
	addl	%edi, %r15d
	addl	$5, %r15d
	addq	$1, %rbx
	cmpq	-64(%rbp), %rbx         # 8-byte Folded Reload
	je	.LBB5_25
.LBB5_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_17 Depth 2
	testq	%rcx, %rcx
	je	.LBB5_14
# %bb.13:                               #   in Loop: Header=BB5_12 Depth=1
	movq	(%rcx,%rbx,8), %r8
	jmp	.LBB5_15
	.p2align	4, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_12 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	callq	strlen
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
.LBB5_15:                               #   in Loop: Header=BB5_12 Depth=1
	movl	$1, %edi
	cmpq	$10, %r8
	jb	.LBB5_24
# %bb.16:                               # %.preheader
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	$4, %edi
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB5_17:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$99, %rsi
	jbe	.LBB5_18
# %bb.19:                               #   in Loop: Header=BB5_17 Depth=2
	cmpq	$999, %rsi              # imm = 0x3E7
	jbe	.LBB5_20
# %bb.21:                               #   in Loop: Header=BB5_17 Depth=2
	cmpq	$10000, %rsi            # imm = 0x2710
	jb	.LBB5_24
# %bb.22:                               #   in Loop: Header=BB5_17 Depth=2
	movq	%rsi, %rax
	mulq	%r14
	shrq	$11, %rdx
	addl	$4, %edi
	cmpq	$99999, %rsi            # imm = 0x1869F
	movq	%rdx, %rsi
	ja	.LBB5_17
# %bb.23:                               # %.loopexit1
                                        #   in Loop: Header=BB5_12 Depth=1
	addl	$-3, %edi
	jmp	.LBB5_24
.LBB5_20:                               #   in Loop: Header=BB5_12 Depth=1
	addl	$-1, %edi
	jmp	.LBB5_24
.LBB5_25:
	leal	1(%r15), %eax
	movslq	%eax, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB5_34
# %bb.26:
	movq	%r13, -96(%rbp)         # 8-byte Spill
	movl	$.L.str.2, %esi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	-56(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, %edx
	xorl	%eax, %eax
	callq	sprintf
	movl	%eax, %ebx
	testl	%r14d, %r14d
	jle	.LBB5_32
# %bb.27:
	shlq	$3, -64(%rbp)           # 8-byte Folded Spill
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	movq	-72(%rbp), %r14         # 8-byte Reload
	jmp	.LBB5_28
	.p2align	4, 0x90
.LBB5_30:                               #   in Loop: Header=BB5_28 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	(%rax,%r13), %rdi
	callq	strlen
	movq	%rax, %r12
.LBB5_31:                               #   in Loop: Header=BB5_28 Depth=1
	movslq	%ebx, %rbx
	leaq	(%r14,%rbx), %rdi
	movl	$.L.str.3, %esi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sprintf
	addl	%eax, %ebx
	movslq	%ebx, %rbx
	leaq	(%r14,%rbx), %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	%r12, %rdx
	callq	memcpy
	leal	(%rbx,%r12), %eax
	cltq
	movw	$2573, (%r14,%rax)      # imm = 0xA0D
	addl	%r12d, %ebx
	addl	$2, %ebx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	addq	$8, %r13
	cmpq	%r13, -64(%rbp)         # 8-byte Folded Reload
	je	.LBB5_32
.LBB5_28:                               # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	je	.LBB5_30
# %bb.29:                               #   in Loop: Header=BB5_28 Depth=1
	movq	(%rax,%r13), %r12
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_31
.LBB5_32:
	cmpl	%r15d, %ebx
	jne	.LBB5_35
# %bb.33:
	movslq	%r15d, %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movb	$0, (%rcx,%rax)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	movl	%r15d, %r12d
.LBB5_34:
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_35:
	movl	$.L.str.4, %edi
	movl	$.L__func__.redisFormatCommandArgv, %edx
	movl	$.L.str.5, %ecx
	movl	$561, %esi              # imm = 0x231
	callq	__assert_func
.Lfunc_end5:
	.size	redisFormatCommandArgv, .Lfunc_end5-redisFormatCommandArgv
                                        # -- End function
	.globl	redisFreeCommand        # -- Begin function redisFreeCommand
	.p2align	4, 0x90
	.type	redisFreeCommand,@function
redisFreeCommand:                       # @redisFreeCommand
# %bb.0:
	jmp	free                    # TAILCALL
.Lfunc_end6:
	.size	redisFreeCommand, .Lfunc_end6-redisFreeCommand
                                        # -- End function
	.globl	__redisSetError         # -- Begin function __redisSetError
	.p2align	4, 0x90
	.type	__redisSetError,@function
__redisSetError:                        # @__redisSetError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	%esi, (%rdi)
	testq	%rdx, %rdx
	je	.LBB7_1
# %bb.3:
	movq	%rdx, %r15
	movq	%rdx, %rdi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r14), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r14,%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_1:
	cmpl	$1, %esi
	jne	.LBB7_4
# %bb.2:
	callq	__errno
	movl	(%rax), %edi
	addq	$4, %r14
	movl	$128, %edx
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__xpg_strerror_r        # TAILCALL
.LBB7_4:
	movl	$.L.str.4, %edi
	movl	$.L__func__.__redisSetError, %edx
	movl	$.L.str.10, %ecx
	movl	$583, %esi              # imm = 0x247
	callq	__assert_func
.Lfunc_end7:
	.size	__redisSetError, .Lfunc_end7-__redisSetError
                                        # -- End function
	.globl	redisReaderCreate       # -- Begin function redisReaderCreate
	.p2align	4, 0x90
	.type	redisReaderCreate,@function
redisReaderCreate:                      # @redisReaderCreate
# %bb.0:
	movl	$defaultFunctions, %edi
	jmp	redisReaderCreateWithFunctions # TAILCALL
.Lfunc_end8:
	.size	redisReaderCreate, .Lfunc_end8-redisReaderCreate
                                        # -- End function
	.globl	redisFree               # -- Begin function redisFree
	.p2align	4, 0x90
	.type	redisFree,@function
redisFree:                              # @redisFree
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB9_16
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	132(%rdi), %edi
	testl	%edi, %edi
	jle	.LBB9_3
# %bb.2:
	callq	close
.LBB9_3:
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_5
# %bb.4:
	callq	sdsfree
.LBB9_5:
	movq	152(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_7
# %bb.6:
	callq	redisReaderFree
.LBB9_7:
	movq	176(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_9
# %bb.8:
	callq	free
.LBB9_9:
	movq	184(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_11
# %bb.10:
	callq	free
.LBB9_11:
	movq	200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_13
# %bb.12:
	callq	free
.LBB9_13:
	movq	168(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_15
# %bb.14:
	callq	free
.LBB9_15:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	free                    # TAILCALL
.LBB9_16:
	retq
.Lfunc_end9:
	.size	redisFree, .Lfunc_end9-redisFree
                                        # -- End function
	.globl	redisFreeKeepFd         # -- Begin function redisFreeKeepFd
	.p2align	4, 0x90
	.type	redisFreeKeepFd,@function
redisFreeKeepFd:                        # @redisFreeKeepFd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	132(%rdi), %ebx
	movl	$-1, 132(%rdi)
	callq	redisFree
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	redisFreeKeepFd, .Lfunc_end10-redisFreeKeepFd
                                        # -- End function
	.globl	redisReconnect          # -- Begin function redisReconnect
	.p2align	4, 0x90
	.type	redisReconnect,@function
redisReconnect:                         # @redisReconnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$0, (%rdi)
	leaq	4(%rdi), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	memset
	movl	132(%rbx), %edi
	testl	%edi, %edi
	jle	.LBB11_2
# %bb.1:
	callq	close
.LBB11_2:
	movq	144(%rbx), %rdi
	callq	sdsfree
	movq	152(%rbx), %rdi
	callq	redisReaderFree
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	movl	160(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB11_5
# %bb.3:
	testl	%eax, %eax
	jne	.LBB11_6
# %bb.4:
	movq	168(%rbx), %rcx
	movq	176(%rbx), %rsi
	movl	192(%rbx), %edx
	movq	184(%rbx), %r8
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	redisContextConnectBindTcp # TAILCALL
.LBB11_5:
	movq	168(%rbx), %rdx
	movq	200(%rbx), %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	redisContextConnectUnix # TAILCALL
.LBB11_6:
	movl	$2, (%rbx)
	movl	$.L.str.11, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r15d
	cmovbq	%rax, %r15
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, 4(%rbx,%r15)
	movl	$-1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	redisReconnect, .Lfunc_end11-redisReconnect
                                        # -- End function
	.globl	redisConnect            # -- Begin function redisConnect
	.p2align	4, 0x90
	.type	redisConnect,@function
redisConnect:                           # @redisConnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB12_6
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB12_5
# %bb.2:
	cmpq	$0, 144(%rbx)
	je	.LBB12_5
# %bb.3:
	orb	$1, 136(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	xorl	%ecx, %ecx
	callq	redisContextConnectTcp
	jmp	.LBB12_7
.LBB12_5:
	movq	%rbx, %rdi
	callq	redisFree
.LBB12_6:
	xorl	%ebx, %ebx
.LBB12_7:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	redisConnect, .Lfunc_end12-redisConnect
                                        # -- End function
	.globl	redisConnectWithTimeout # -- Begin function redisConnectWithTimeout
	.p2align	4, 0x90
	.type	redisConnectWithTimeout,@function
redisConnectWithTimeout:                # @redisConnectWithTimeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	%rdx, -40(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB13_6
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB13_5
# %bb.2:
	cmpq	$0, 144(%rbx)
	je	.LBB13_5
# %bb.3:
	orb	$1, 136(%rbx)
	leaq	-40(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	redisContextConnectTcp
	jmp	.LBB13_7
.LBB13_5:
	movq	%rbx, %rdi
	callq	redisFree
.LBB13_6:
	xorl	%ebx, %ebx
.LBB13_7:
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	redisConnectWithTimeout, .Lfunc_end13-redisConnectWithTimeout
                                        # -- End function
	.globl	redisConnectNonBlock    # -- Begin function redisConnectNonBlock
	.p2align	4, 0x90
	.type	redisConnectNonBlock,@function
redisConnectNonBlock:                   # @redisConnectNonBlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB14_6
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB14_5
# %bb.2:
	cmpq	$0, 144(%rbx)
	je	.LBB14_5
# %bb.3:
	andb	$-2, 136(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	xorl	%ecx, %ecx
	callq	redisContextConnectTcp
	jmp	.LBB14_7
.LBB14_5:
	movq	%rbx, %rdi
	callq	redisFree
.LBB14_6:
	xorl	%ebx, %ebx
.LBB14_7:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	redisConnectNonBlock, .Lfunc_end14-redisConnectNonBlock
                                        # -- End function
	.globl	redisConnectBindNonBlock # -- Begin function redisConnectBindNonBlock
	.p2align	4, 0x90
	.type	redisConnectBindNonBlock,@function
redisConnectBindNonBlock:               # @redisConnectBindNonBlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB15_4
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB15_3
# %bb.2:
	cmpq	$0, 144(%rbx)
	jne	.LBB15_5
.LBB15_3:
	movq	%rbx, %rdi
	callq	redisFree
.LBB15_4:
	xorl	%ebx, %ebx
.LBB15_5:
	andb	$-2, 136(%rbx)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	xorl	%ecx, %ecx
	movq	%r14, %r8
	callq	redisContextConnectBindTcp
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	redisConnectBindNonBlock, .Lfunc_end15-redisConnectBindNonBlock
                                        # -- End function
	.globl	redisConnectBindNonBlockWithReuse # -- Begin function redisConnectBindNonBlockWithReuse
	.p2align	4, 0x90
	.type	redisConnectBindNonBlockWithReuse,@function
redisConnectBindNonBlockWithReuse:      # @redisConnectBindNonBlockWithReuse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB16_4
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB16_3
# %bb.2:
	cmpq	$0, 144(%rbx)
	jne	.LBB16_5
.LBB16_3:
	movq	%rbx, %rdi
	callq	redisFree
.LBB16_4:
	xorl	%ebx, %ebx
.LBB16_5:
	movl	$-130, %eax
	andl	136(%rbx), %eax
	orl	$128, %eax
	movl	%eax, 136(%rbx)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	xorl	%ecx, %ecx
	movq	%r14, %r8
	callq	redisContextConnectBindTcp
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	redisConnectBindNonBlockWithReuse, .Lfunc_end16-redisConnectBindNonBlockWithReuse
                                        # -- End function
	.globl	redisConnectUnix        # -- Begin function redisConnectUnix
	.p2align	4, 0x90
	.type	redisConnectUnix,@function
redisConnectUnix:                       # @redisConnectUnix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB17_6
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB17_5
# %bb.2:
	cmpq	$0, 144(%rbx)
	je	.LBB17_5
# %bb.3:
	orb	$1, 136(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	redisContextConnectUnix
	jmp	.LBB17_7
.LBB17_5:
	movq	%rbx, %rdi
	callq	redisFree
.LBB17_6:
	xorl	%ebx, %ebx
.LBB17_7:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	redisConnectUnix, .Lfunc_end17-redisConnectUnix
                                        # -- End function
	.globl	redisConnectUnixWithTimeout # -- Begin function redisConnectUnixWithTimeout
	.p2align	4, 0x90
	.type	redisConnectUnixWithTimeout,@function
redisConnectUnixWithTimeout:            # @redisConnectUnixWithTimeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB18_6
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB18_5
# %bb.2:
	cmpq	$0, 144(%rbx)
	je	.LBB18_5
# %bb.3:
	orb	$1, 136(%rbx)
	leaq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	redisContextConnectUnix
	jmp	.LBB18_7
.LBB18_5:
	movq	%rbx, %rdi
	callq	redisFree
.LBB18_6:
	xorl	%ebx, %ebx
.LBB18_7:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	redisConnectUnixWithTimeout, .Lfunc_end18-redisConnectUnixWithTimeout
                                        # -- End function
	.globl	redisConnectUnixNonBlock # -- Begin function redisConnectUnixNonBlock
	.p2align	4, 0x90
	.type	redisConnectUnixNonBlock,@function
redisConnectUnixNonBlock:               # @redisConnectUnixNonBlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB19_6
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB19_5
# %bb.2:
	cmpq	$0, 144(%rbx)
	je	.LBB19_5
# %bb.3:
	andb	$-2, 136(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	redisContextConnectUnix
	jmp	.LBB19_7
.LBB19_5:
	movq	%rbx, %rdi
	callq	redisFree
.LBB19_6:
	xorl	%ebx, %ebx
.LBB19_7:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	redisConnectUnixNonBlock, .Lfunc_end19-redisConnectUnixNonBlock
                                        # -- End function
	.globl	redisConnectFd          # -- Begin function redisConnectFd
	.p2align	4, 0x90
	.type	redisConnectFd,@function
redisConnectFd:                         # @redisConnectFd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movl	$1, %edi
	movl	$208, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB20_6
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	callq	sdsempty
	movq	%rax, 144(%rbx)
	movl	$defaultFunctions, %edi
	callq	redisReaderCreateWithFunctions
	movq	%rax, 152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 176(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 168(%rbx)
	testq	%rax, %rax
	je	.LBB20_5
# %bb.2:
	cmpq	$0, 144(%rbx)
	je	.LBB20_5
# %bb.3:
	movl	%r14d, 132(%rbx)
	orb	$3, 136(%rbx)
	jmp	.LBB20_7
.LBB20_5:
	movq	%rbx, %rdi
	callq	redisFree
.LBB20_6:
	xorl	%ebx, %ebx
.LBB20_7:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	redisConnectFd, .Lfunc_end20-redisConnectFd
                                        # -- End function
	.globl	redisSetTimeout         # -- Begin function redisSetTimeout
	.p2align	4, 0x90
	.type	redisSetTimeout,@function
redisSetTimeout:                        # @redisSetTimeout
# %bb.0:
	testb	$1, 136(%rdi)
	jne	.LBB21_2
# %bb.1:
	movl	$-1, %eax
	retq
.LBB21_2:
	jmp	redisContextSetTimeout  # TAILCALL
.Lfunc_end21:
	.size	redisSetTimeout, .Lfunc_end21-redisSetTimeout
                                        # -- End function
	.globl	redisEnableKeepAlive    # -- Begin function redisEnableKeepAlive
	.p2align	4, 0x90
	.type	redisEnableKeepAlive,@function
redisEnableKeepAlive:                   # @redisEnableKeepAlive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$15, %esi
	callq	redisKeepAlive
	negl	%eax
	sbbl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	redisEnableKeepAlive, .Lfunc_end22-redisEnableKeepAlive
                                        # -- End function
	.globl	redisBufferRead         # -- Begin function redisBufferRead
	.p2align	4, 0x90
	.type	redisBufferRead,@function
redisBufferRead:                        # @redisBufferRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16384, %rsp            # imm = 0x4000
	movl	$-1, %r14d
	cmpl	$0, (%rdi)
	je	.LBB23_1
.LBB23_11:
	movl	%r14d, %eax
	addq	$16384, %rsp            # imm = 0x4000
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_1:
	movq	%rdi, %rbx
	movl	132(%rdi), %edi
	leaq	-16416(%rbp), %rsi
	movl	$16384, %edx            # imm = 0x4000
	callq	read
	testl	%eax, %eax
	je	.LBB23_7
# %bb.2:
	cmpl	$-1, %eax
	jne	.LBB23_8
# %bb.3:
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB23_5
# %bb.4:
	xorl	%r14d, %r14d
	testb	$1, 136(%rbx)
	je	.LBB23_11
.LBB23_5:
	callq	__errno
	xorl	%r14d, %r14d
	cmpl	$4, (%rax)
	je	.LBB23_11
# %bb.6:
	movl	$1, (%rbx)
	callq	__errno
	movl	(%rax), %edi
	addq	$4, %rbx
	movl	$128, %edx
	movq	%rbx, %rsi
	callq	__xpg_strerror_r
	movl	$-1, %r14d
	jmp	.LBB23_11
.LBB23_7:
	movl	$3, (%rbx)
	movl	$.L.str.12, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r15d
	cmovbq	%rax, %r15
	leaq	4(%rbx), %rdi
	movl	$.L.str.12, %esi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, 4(%rbx,%r15)
	jmp	.LBB23_11
.LBB23_8:
	movq	152(%rbx), %rdi
	movslq	%eax, %rdx
	leaq	-16416(%rbp), %rsi
	callq	redisReaderFeed
	testl	%eax, %eax
	je	.LBB23_9
# %bb.10:
	movq	152(%rbx), %r15
	movl	(%r15), %eax
	addq	$4, %r15
	movl	%eax, (%rbx)
	movq	%r15, %rdi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r12d
	cmovbq	%rax, %r12
	leaq	4(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movb	$0, 4(%rbx,%r12)
	jmp	.LBB23_11
.LBB23_9:
	xorl	%r14d, %r14d
	jmp	.LBB23_11
.Lfunc_end23:
	.size	redisBufferRead, .Lfunc_end23-redisBufferRead
                                        # -- End function
	.globl	redisBufferWrite        # -- Begin function redisBufferWrite
	.p2align	4, 0x90
	.type	redisBufferWrite,@function
redisBufferWrite:                       # @redisBufferWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$-1, %r15d
	cmpl	$0, (%rdi)
	jne	.LBB24_45
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	144(%rdi), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB24_34
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI24_0(,%rax,8)
.LBB24_3:
	movq	%rdx, %rax
	shrq	$3, %rax
	testq	%rax, %rax
	jne	.LBB24_9
	jmp	.LBB24_34
.LBB24_4:
	movzbl	-3(%rsi), %eax
	testq	%rax, %rax
	jne	.LBB24_9
	jmp	.LBB24_34
.LBB24_5:
	movzwl	-5(%rsi), %eax
	testq	%rax, %rax
	jne	.LBB24_9
	jmp	.LBB24_34
.LBB24_6:
	movl	-9(%rsi), %eax
	testq	%rax, %rax
	jne	.LBB24_9
	jmp	.LBB24_34
.LBB24_7:
	movq	-17(%rsi), %rax
	testq	%rax, %rax
	je	.LBB24_34
.LBB24_9:
	movl	%edx, %eax
	andb	$7, %al
	movl	132(%rbx), %edi
	cmpb	$4, %al
	ja	.LBB24_10
# %bb.11:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI24_1(,%rax,8)
.LBB24_12:
	shrq	$3, %rdx
	jmp	.LBB24_17
.LBB24_10:
	xorl	%edx, %edx
	jmp	.LBB24_17
.LBB24_13:
	movzbl	-3(%rsi), %edx
	jmp	.LBB24_17
.LBB24_14:
	movzwl	-5(%rsi), %edx
	jmp	.LBB24_17
.LBB24_15:
	movl	-9(%rsi), %edx
	jmp	.LBB24_17
.LBB24_16:
	movq	-17(%rsi), %rdx
.LBB24_17:
	callq	write
	cmpl	$-1, %eax
	je	.LBB24_18
# %bb.22:
	testl	%eax, %eax
	jle	.LBB24_34
# %bb.23:
	movq	144(%rbx), %rdi
	movzbl	-1(%rdi), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB24_24
# %bb.25:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI24_2(,%rdx,8)
.LBB24_26:
	shrq	$3, %rcx
	jmp	.LBB24_31
.LBB24_18:
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB24_20
# %bb.19:
	testb	$1, 136(%rbx)
	je	.LBB24_34
.LBB24_20:
	callq	__errno
	cmpl	$4, (%rax)
	je	.LBB24_34
# %bb.21:
	movl	$1, (%rbx)
	callq	__errno
	movl	(%rax), %edi
	addq	$4, %rbx
	movl	$128, %edx
	movq	%rbx, %rsi
	callq	__xpg_strerror_r
	jmp	.LBB24_45
.LBB24_24:
	xorl	%ecx, %ecx
	jmp	.LBB24_31
.LBB24_27:
	movzbl	-3(%rdi), %ecx
	jmp	.LBB24_31
.LBB24_28:
	movzwl	-5(%rdi), %ecx
	jmp	.LBB24_31
.LBB24_29:
	movl	-9(%rdi), %ecx
	jmp	.LBB24_31
.LBB24_30:
	movq	-17(%rdi), %rcx
.LBB24_31:
	cmpl	%ecx, %eax
	jne	.LBB24_33
# %bb.32:
	callq	sdsfree
	callq	sdsempty
	movq	%rax, 144(%rbx)
.LBB24_34:
	testq	%r14, %r14
	je	.LBB24_35
.LBB24_36:
	movq	144(%rbx), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	xorl	%r15d, %r15d
	cmpb	$4, %dl
	ja	.LBB24_37
# %bb.38:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI24_3(,%rdx,8)
.LBB24_39:
	shrq	$3, %rax
	jmp	.LBB24_44
.LBB24_33:
	movl	%eax, %esi
	movl	$-1, %edx
	callq	sdsrange
	testq	%r14, %r14
	jne	.LBB24_36
.LBB24_35:
	xorl	%r15d, %r15d
	jmp	.LBB24_45
.LBB24_37:
	xorl	%eax, %eax
	jmp	.LBB24_44
.LBB24_40:
	movzbl	-3(%rcx), %eax
	jmp	.LBB24_44
.LBB24_41:
	movzwl	-5(%rcx), %eax
	jmp	.LBB24_44
.LBB24_42:
	movl	-9(%rcx), %eax
	jmp	.LBB24_44
.LBB24_43:
	movq	-17(%rcx), %rax
.LBB24_44:
	xorl	%ecx, %ecx
	testq	%rax, %rax
	sete	%cl
	movl	%ecx, (%r14)
.LBB24_45:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	redisBufferWrite, .Lfunc_end24-redisBufferWrite
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI24_0:
	.quad	.LBB24_3
	.quad	.LBB24_4
	.quad	.LBB24_5
	.quad	.LBB24_6
	.quad	.LBB24_7
.LJTI24_1:
	.quad	.LBB24_12
	.quad	.LBB24_13
	.quad	.LBB24_14
	.quad	.LBB24_15
	.quad	.LBB24_16
.LJTI24_2:
	.quad	.LBB24_26
	.quad	.LBB24_27
	.quad	.LBB24_28
	.quad	.LBB24_29
	.quad	.LBB24_30
.LJTI24_3:
	.quad	.LBB24_39
	.quad	.LBB24_40
	.quad	.LBB24_41
	.quad	.LBB24_42
	.quad	.LBB24_43
                                        # -- End function
	.text
	.globl	redisGetReplyFromReader # -- Begin function redisGetReplyFromReader
	.p2align	4, 0x90
	.type	redisGetReplyFromReader,@function
redisGetReplyFromReader:                # @redisGetReplyFromReader
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	152(%rdi), %rdi
	callq	redisReaderGetReply
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$-1, %ecx
	jne	.LBB25_2
# %bb.1:
	movq	152(%rbx), %r14
	movl	(%r14), %eax
	addq	$4, %r14
	movl	%eax, (%rbx)
	movq	%r14, %rdi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r15d
	cmovbq	%rax, %r15
	leaq	4(%rbx), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, 4(%rbx,%r15)
	movl	$-1, %eax
.LBB25_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	redisGetReplyFromReader, .Lfunc_end25-redisGetReplyFromReader
                                        # -- End function
	.globl	redisGetReply           # -- Begin function redisGetReply
	.p2align	4, 0x90
	.type	redisGetReply,@function
redisGetReply:                          # @redisGetReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	152(%rdi), %rdi
	leaq	-48(%rbp), %rsi
	callq	redisReaderGetReply
	cmpl	$-1, %eax
	je	.LBB26_1
# %bb.2:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB26_12
# %bb.3:
	testb	$1, 136(%r15)
	jne	.LBB26_4
.LBB26_12:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB26_14
# %bb.13:
	movq	%rax, (%r14)
	jmp	.LBB26_14
.LBB26_1:
	movq	152(%r15), %rbx
	movl	(%rbx), %eax
	addq	$4, %rbx
	movl	%eax, (%r15)
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r14d
	cmovbq	%rax, %r14
	leaq	4(%r15), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 4(%r15,%r14)
	movl	$-1, %ebx
.LBB26_14:
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_4:                               # %.preheader1
	leaq	-36(%rbp), %r12
	movl	$-1, %ebx
	.p2align	4, 0x90
.LBB26_5:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	redisBufferWrite
	cmpl	$-1, %eax
	je	.LBB26_14
# %bb.6:                                #   in Loop: Header=BB26_5 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB26_5
# %bb.7:                                # %.preheader
	leaq	-48(%rbp), %r12
	.p2align	4, 0x90
.LBB26_8:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	redisBufferRead
	cmpl	$-1, %eax
	je	.LBB26_14
# %bb.9:                                #   in Loop: Header=BB26_8 Depth=1
	movq	152(%r15), %rdi
	movq	%r12, %rsi
	callq	redisReaderGetReply
	cmpl	$-1, %eax
	je	.LBB26_10
# %bb.11:                               #   in Loop: Header=BB26_8 Depth=1
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB26_8
	jmp	.LBB26_12
.LBB26_10:
	movq	152(%r15), %r14
	movl	(%r14), %eax
	addq	$4, %r14
	movl	%eax, (%r15)
	movq	%r14, %rdi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r12d
	cmovbq	%rax, %r12
	leaq	4(%r15), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movb	$0, 4(%r15,%r12)
	jmp	.LBB26_14
.Lfunc_end26:
	.size	redisGetReply, .Lfunc_end26-redisGetReply
                                        # -- End function
	.globl	__redisAppendCommand    # -- Begin function __redisAppendCommand
	.p2align	4, 0x90
	.type	__redisAppendCommand,@function
__redisAppendCommand:                   # @__redisAppendCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	144(%rdi), %rdi
	callq	sdscatlen
	testq	%rax, %rax
	je	.LBB27_1
# %bb.2:
	movq	%rax, 144(%rbx)
	xorl	%eax, %eax
	jmp	.LBB27_3
.LBB27_1:
	movl	$5, (%rbx)
	movl	$.L.str.13, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r14d
	cmovbq	%rax, %r14
	leaq	4(%rbx), %rdi
	movl	$.L.str.13, %esi
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 4(%rbx,%r14)
	movl	$-1, %eax
.LBB27_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end27:
	.size	__redisAppendCommand, .Lfunc_end27-__redisAppendCommand
                                        # -- End function
	.globl	redisAppendFormattedCommand # -- Begin function redisAppendFormattedCommand
	.p2align	4, 0x90
	.type	redisAppendFormattedCommand,@function
redisAppendFormattedCommand:            # @redisAppendFormattedCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	144(%rdi), %rdi
	callq	sdscatlen
	testq	%rax, %rax
	je	.LBB28_1
# %bb.2:
	movq	%rax, 144(%rbx)
	xorl	%eax, %eax
	jmp	.LBB28_3
.LBB28_1:
	movl	$5, (%rbx)
	movl	$.L.str.13, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r14d
	cmovbq	%rax, %r14
	leaq	4(%rbx), %rdi
	movl	$.L.str.13, %esi
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 4(%rbx,%r14)
	movl	$-1, %eax
.LBB28_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	redisAppendFormattedCommand, .Lfunc_end28-redisAppendFormattedCommand
                                        # -- End function
	.globl	redisvAppendCommand     # -- Begin function redisvAppendCommand
	.p2align	4, 0x90
	.type	redisvAppendCommand,@function
redisvAppendCommand:                    # @redisvAppendCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	leaq	-24(%rbp), %rdi
	callq	redisvFormatCommand
	cmpl	$-2, %eax
	je	.LBB29_3
# %bb.1:
	cmpl	$-1, %eax
	jne	.LBB29_5
# %bb.2:
	movl	$5, (%r14)
	movl	$.L.str.13, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r14), %rdi
	movl	$.L.str.13, %esi
	jmp	.LBB29_4
.LBB29_3:
	movl	$2, (%r14)
	movl	$.L.str.14, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r14), %rdi
	movl	$.L.str.14, %esi
.LBB29_4:
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r14,%rbx)
.LBB29_8:
	movl	$-1, %eax
	jmp	.LBB29_9
.LBB29_5:
	movq	-24(%rbp), %rsi
	movslq	%eax, %rdx
	movq	144(%r14), %rdi
	callq	sdscatlen
	testq	%rax, %rax
	je	.LBB29_7
# %bb.6:
	movq	%rax, 144(%r14)
	movq	-24(%rbp), %rdi
	callq	free
	xorl	%eax, %eax
.LBB29_9:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB29_7:
	movl	$5, (%r14)
	movl	$.L.str.13, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r14), %rdi
	movl	$.L.str.13, %esi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r14,%rbx)
	movq	-24(%rbp), %rdi
	callq	free
	jmp	.LBB29_8
.Lfunc_end29:
	.size	redisvAppendCommand, .Lfunc_end29-redisvAppendCommand
                                        # -- End function
	.globl	redisAppendCommand      # -- Begin function redisAppendCommand
	.p2align	4, 0x90
	.type	redisAppendCommand,@function
redisAppendCommand:                     # @redisAppendCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB30_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB30_2:
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	callq	redisvAppendCommand
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	redisAppendCommand, .Lfunc_end30-redisAppendCommand
                                        # -- End function
	.globl	redisAppendCommandArgv  # -- Begin function redisAppendCommandArgv
	.p2align	4, 0x90
	.type	redisAppendCommandArgv,@function
redisAppendCommandArgv:                 # @redisAppendCommandArgv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	leaq	-24(%rbp), %rdi
	callq	redisFormatSdsCommandArgv
	cmpl	$-1, %eax
	je	.LBB31_3
# %bb.1:
	movq	-24(%rbp), %rsi
	movslq	%eax, %rdx
	movq	144(%r14), %rdi
	callq	sdscatlen
	testq	%rax, %rax
	je	.LBB31_4
# %bb.2:
	movq	%rax, 144(%r14)
	movq	-24(%rbp), %rdi
	callq	sdsfree
	xorl	%eax, %eax
	jmp	.LBB31_6
.LBB31_3:
	movl	$5, (%r14)
	movl	$.L.str.13, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r14), %rdi
	movl	$.L.str.13, %esi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r14,%rbx)
	jmp	.LBB31_5
.LBB31_4:
	movl	$5, (%r14)
	movl	$.L.str.13, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r14), %rdi
	movl	$.L.str.13, %esi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r14,%rbx)
	movq	-24(%rbp), %rdi
	callq	sdsfree
.LBB31_5:
	movl	$-1, %eax
.LBB31_6:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	redisAppendCommandArgv, .Lfunc_end31-redisAppendCommandArgv
                                        # -- End function
	.globl	redisvCommand           # -- Begin function redisvCommand
	.p2align	4, 0x90
	.type	redisvCommand,@function
redisvCommand:                          # @redisvCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	redisvAppendCommand
	testl	%eax, %eax
	jne	.LBB32_6
# %bb.2:
	testb	$1, 136(%rbx)
	je	.LBB32_6
# %bb.4:
	leaq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	redisGetReply
	testl	%eax, %eax
	jne	.LBB32_6
# %bb.5:
	movq	-16(%rbp), %rax
	jmp	.LBB32_7
.LBB32_6:
	xorl	%eax, %eax
.LBB32_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end32:
	.size	redisvCommand, .Lfunc_end32-redisvCommand
                                        # -- End function
	.globl	redisCommand            # -- Begin function redisCommand
	.p2align	4, 0x90
	.type	redisCommand,@function
redisCommand:                           # @redisCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB33_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB33_2:
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	callq	redisvAppendCommand
	testl	%eax, %eax
	jne	.LBB33_8
# %bb.4:
	testb	$1, 136(%rbx)
	je	.LBB33_8
# %bb.6:
	leaq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	redisGetReply
	testl	%eax, %eax
	jne	.LBB33_8
# %bb.7:
	movq	-16(%rbp), %rax
	jmp	.LBB33_9
.LBB33_8:
	xorl	%eax, %eax
.LBB33_9:
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end33:
	.size	redisCommand, .Lfunc_end33-redisCommand
                                        # -- End function
	.globl	redisCommandArgv        # -- Begin function redisCommandArgv
	.p2align	4, 0x90
	.type	redisCommandArgv,@function
redisCommandArgv:                       # @redisCommandArgv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	redisAppendCommandArgv
	testl	%eax, %eax
	jne	.LBB34_6
# %bb.2:
	testb	$1, 136(%rbx)
	je	.LBB34_6
# %bb.4:
	leaq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	redisGetReply
	testl	%eax, %eax
	jne	.LBB34_6
# %bb.5:
	movq	-16(%rbp), %rax
	jmp	.LBB34_7
.LBB34_6:
	xorl	%eax, %eax
.LBB34_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	redisCommandArgv, .Lfunc_end34-redisCommandArgv
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function createStringObject
	.type	createStringObject,@function
createStringObject:                     # @createStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	(%rdi), %r13d
	movl	$1, %edi
	movl	$48, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB35_9
# %bb.1:
	movq	%rax, %rbx
	movl	%r13d, (%rax)
	leaq	1(%r15), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB35_8
# %bb.2:
	movq	%rax, %r13
	movl	(%r14), %eax
	leal	-5(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB35_4
# %bb.3:
	cmpl	$1, %eax
	jne	.LBB35_11
.LBB35_4:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%r13,%r15)
	movq	%r13, 24(%rbx)
	movq	%r15, 16(%rbx)
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB35_10
# %bb.5:
	movq	16(%rax), %rax
	cmpl	$2, (%rax)
	jne	.LBB35_12
# %bb.6:
	movq	40(%rax), %rax
	movslq	8(%r14), %rcx
	movq	%rbx, (%rax,%rcx,8)
	jmp	.LBB35_10
.LBB35_8:
	movq	%rbx, %rdi
	callq	freeReplyObject
.LBB35_9:
	xorl	%ebx, %ebx
.LBB35_10:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB35_11:
	movl	$.L.str.4, %edi
	movl	$.L__func__.createStringObject, %edx
	movl	$.L.str.15, %ecx
	movl	$118, %esi
	callq	__assert_func
.LBB35_12:
	movl	$.L.str.4, %edi
	movl	$.L__func__.createStringObject, %edx
	movl	$.L.str.16, %ecx
	movl	$128, %esi
	callq	__assert_func
.Lfunc_end35:
	.size	createStringObject, .Lfunc_end35-createStringObject
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function createArrayObject
	.type	createArrayObject,@function
createArrayObject:                      # @createArrayObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$48, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB36_8
# %bb.1:
	movq	%rax, %rbx
	movl	$2, (%rax)
	movslq	%r15d, %r12
	testl	%r15d, %r15d
	jle	.LBB36_3
# %bb.2:
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc
	movq	%rax, 40(%rbx)
	testq	%rax, %rax
	je	.LBB36_7
.LBB36_3:
	movq	%r12, 32(%rbx)
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	.LBB36_9
# %bb.4:
	movq	16(%rax), %rax
	cmpl	$2, (%rax)
	jne	.LBB36_10
# %bb.5:
	movq	40(%rax), %rax
	movslq	8(%r14), %rcx
	movq	%rbx, (%rax,%rcx,8)
	jmp	.LBB36_9
.LBB36_7:
	movq	%rbx, %rdi
	callq	freeReplyObject
.LBB36_8:
	xorl	%ebx, %ebx
.LBB36_9:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_10:
	movl	$.L.str.4, %edi
	movl	$.L__func__.createArrayObject, %edx
	movl	$.L.str.16, %ecx
	movl	$153, %esi
	callq	__assert_func
.Lfunc_end36:
	.size	createArrayObject, .Lfunc_end36-createArrayObject
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function createIntegerObject
	.type	createIntegerObject,@function
createIntegerObject:                    # @createIntegerObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$48, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB37_4
# %bb.1:
	movl	$3, (%rax)
	movq	%rbx, 8(%rax)
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB37_4
# %bb.2:
	movq	16(%rcx), %rcx
	cmpl	$2, (%rcx)
	jne	.LBB37_5
# %bb.3:
	movq	40(%rcx), %rcx
	movslq	8(%r14), %rdx
	movq	%rax, (%rcx,%rdx,8)
.LBB37_4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB37_5:
	movl	$.L.str.4, %edi
	movl	$.L__func__.createIntegerObject, %edx
	movl	$.L.str.16, %ecx
	movl	$170, %esi
	callq	__assert_func
.Lfunc_end37:
	.size	createIntegerObject, .Lfunc_end37-createIntegerObject
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function createNilObject
	.type	createNilObject,@function
createNilObject:                        # @createNilObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %edi
	movl	$48, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB38_4
# %bb.1:
	movl	$4, (%rax)
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB38_4
# %bb.2:
	movq	16(%rcx), %rcx
	cmpl	$2, (%rcx)
	jne	.LBB38_5
# %bb.3:
	movq	40(%rcx), %rcx
	movslq	8(%rbx), %rdx
	movq	%rax, (%rcx,%rdx,8)
.LBB38_4:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB38_5:
	movl	$.L.str.4, %edi
	movl	$.L__func__.createNilObject, %edx
	movl	$.L.str.16, %ecx
	movl	$185, %esi
	callq	__assert_func
.Lfunc_end38:
	.size	createNilObject, .Lfunc_end38-createNilObject
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%"
	.size	.L.str, 2

	.type	redisvFormatCommand.intfmts,@object # @redisvFormatCommand.intfmts
	.section	.rodata,"a",@progbits
redisvFormatCommand.intfmts:
	.asciz	"diouxX"
	.size	redisvFormatCommand.intfmts, 7

	.type	redisvFormatCommand.flags,@object # @redisvFormatCommand.flags
redisvFormatCommand.flags:
	.asciz	"#0-+ "
	.size	redisvFormatCommand.flags, 6

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"eEfFgGaA"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"*%d\r\n"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"$%zu\r\n"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/hiredis.c"
	.size	.L.str.4, 84

	.type	.L__func__.redisvFormatCommand,@object # @__func__.redisvFormatCommand
.L__func__.redisvFormatCommand:
	.asciz	"redisvFormatCommand"
	.size	.L__func__.redisvFormatCommand, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pos == totlen"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"*%i\r\n"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"$%u\r\n"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\r\n"
	.size	.L.str.8, 3

	.type	.L__func__.redisFormatSdsCommandArgv,@object # @__func__.redisFormatSdsCommandArgv
.L__func__.redisFormatSdsCommandArgv:
	.asciz	"redisFormatSdsCommandArgv"
	.size	.L__func__.redisFormatSdsCommandArgv, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sdslen(cmd)==totlen"
	.size	.L.str.9, 20

	.type	.L__func__.redisFormatCommandArgv,@object # @__func__.redisFormatCommandArgv
.L__func__.redisFormatCommandArgv:
	.asciz	"redisFormatCommandArgv"
	.size	.L__func__.redisFormatCommandArgv, 23

	.type	.L__func__.__redisSetError,@object # @__func__.__redisSetError
.L__func__.__redisSetError:
	.asciz	"__redisSetError"
	.size	.L__func__.__redisSetError, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"type == REDIS_ERR_IO"
	.size	.L.str.10, 21

	.type	defaultFunctions,@object # @defaultFunctions
	.data
	.p2align	3
defaultFunctions:
	.quad	createStringObject
	.quad	createArrayObject
	.quad	createIntegerObject
	.quad	createNilObject
	.quad	freeReplyObject
	.size	defaultFunctions, 40

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"Not enough information to reconnect"
	.size	.L.str.11, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Server closed the connection"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Out of memory"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Invalid format string"
	.size	.L.str.14, 22

	.type	.L__func__.createStringObject,@object # @__func__.createStringObject
.L__func__.createStringObject:
	.asciz	"createStringObject"
	.size	.L__func__.createStringObject, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"task->type == REDIS_REPLY_ERROR || task->type == REDIS_REPLY_STATUS || task->type == REDIS_REPLY_STRING"
	.size	.L.str.15, 104

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"parent->type == REDIS_REPLY_ARRAY"
	.size	.L.str.16, 34

	.type	.L__func__.createArrayObject,@object # @__func__.createArrayObject
.L__func__.createArrayObject:
	.asciz	"createArrayObject"
	.size	.L__func__.createArrayObject, 18

	.type	.L__func__.createIntegerObject,@object # @__func__.createIntegerObject
.L__func__.createIntegerObject:
	.asciz	"createIntegerObject"
	.size	.L__func__.createIntegerObject, 20

	.type	.L__func__.createNilObject,@object # @__func__.createNilObject
.L__func__.createNilObject:
	.asciz	"createNilObject"
	.size	.L__func__.createNilObject, 16

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
