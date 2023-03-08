	.text
	.file	"read.c"
	.globl	redisReaderCreateWithFunctions # -- Begin function redisReaderCreateWithFunctions
	.p2align	4, 0x90
	.type	redisReaderCreateWithFunctions,@function
redisReaderCreateWithFunctions:         # @redisReaderCreateWithFunctions
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$560, %edi              # imm = 0x230
	movl	$1, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB0_5
# %bb.1:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movb	$0, 4(%rax)
	movq	%r14, 544(%rax)
	callq	sdsempty
	movq	%rax, 136(%rbx)
	movq	$16384, 160(%rbx)       # imm = 0x4000
	testq	%rax, %rax
	je	.LBB0_4
# %bb.2:
	movl	$-1, 528(%rbx)
	jmp	.LBB0_6
.LBB0_4:
	movq	%rbx, %rdi
	callq	free
.LBB0_5:
	xorl	%ebx, %ebx
.LBB0_6:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	redisReaderCreateWithFunctions, .Lfunc_end0-redisReaderCreateWithFunctions
                                        # -- End function
	.globl	redisReaderFree         # -- Begin function redisReaderFree
	.p2align	4, 0x90
	.type	redisReaderFree,@function
redisReaderFree:                        # @redisReaderFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	536(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.1:
	movq	544(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_4
# %bb.2:
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_4
# %bb.3:
	callq	*%rax
.LBB1_4:
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_6
# %bb.5:
	callq	sdsfree
.LBB1_6:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	free                    # TAILCALL
.Lfunc_end1:
	.size	redisReaderFree, .Lfunc_end1-redisReaderFree
                                        # -- End function
	.globl	redisReaderFeed         # -- Begin function redisReaderFeed
	.p2align	4, 0x90
	.type	redisReaderFeed,@function
redisReaderFeed:                        # @redisReaderFeed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$-1, %eax
	cmpl	$0, (%rdi)
	je	.LBB2_2
.LBB2_1:
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_2:
	movq	%rsi, %r15
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB2_1
# %bb.3:
	movq	%rdx, %r14
	testq	%rdx, %rdx
	je	.LBB2_1
# %bb.4:
	movq	%rdi, %rbx
	cmpq	$0, 152(%rdi)
	je	.LBB2_9
.LBB2_5:
	movq	136(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	sdscatlen
	testq	%rax, %rax
	je	.LBB2_13
# %bb.6:
	movq	%rax, %rcx
	movq	%rax, 136(%rbx)
	movzbl	-1(%rax), %esi
	movl	%esi, %edx
	andb	$7, %dl
	xorl	%eax, %eax
	cmpb	$4, %dl
	ja	.LBB2_24
# %bb.7:
	movl	%esi, %edx
	andl	$7, %edx
	jmpq	*.LJTI2_1(,%rdx,8)
.LBB2_8:
	shrq	$3, %rsi
	jmp	.LBB2_25
.LBB2_9:
	movq	160(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_5
# %bb.10:
	movq	136(%rbx), %rdi
	movb	-1(%rdi), %cl
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB2_5
# %bb.11:
	movzbl	%cl, %ecx
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_12:
	movzbl	-2(%rdi), %ecx
	movzbl	-3(%rdi), %edx
	jmp	.LBB2_29
.LBB2_13:
	movq	536(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_17
# %bb.14:
	movq	544(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_17
# %bb.15:
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_17
# %bb.16:
	callq	*%rax
	movq	$0, 536(%rbx)
.LBB2_17:
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_19
# %bb.18:
	callq	sdsfree
	movq	$0, 136(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%rbx)
.LBB2_19:
	movl	$-1, 528(%rbx)
	movl	$5, (%rbx)
	movl	$.L.str.2, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r14d
	cmovbq	%rax, %r14
	leaq	4(%rbx), %rdi
	movl	$.L.str.2, %esi
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 4(%rbx,%r14)
	movl	$-1, %eax
	jmp	.LBB2_1
.LBB2_20:
	movq	-17(%rcx), %rsi
	jmp	.LBB2_25
.LBB2_21:
	movzwl	-5(%rcx), %esi
	jmp	.LBB2_25
.LBB2_22:
	movl	-9(%rcx), %esi
	jmp	.LBB2_25
.LBB2_23:
	movzbl	-3(%rcx), %esi
	jmp	.LBB2_25
.LBB2_24:
	xorl	%esi, %esi
.LBB2_25:
	movq	%rsi, 152(%rbx)
	jmp	.LBB2_1
.LBB2_26:
	movl	-5(%rdi), %ecx
	subl	-9(%rdi), %ecx
	jmp	.LBB2_30
.LBB2_27:
	movq	-9(%rdi), %rcx
	subq	-17(%rdi), %rcx
	jmp	.LBB2_30
.LBB2_28:
	movzwl	-3(%rdi), %ecx
	movzwl	-5(%rdi), %edx
.LBB2_29:
	subq	%rdx, %rcx
.LBB2_30:
	cmpq	%rax, %rcx
	jbe	.LBB2_5
# %bb.31:
	callq	sdsfree
	callq	sdsempty
	movq	%rax, 136(%rbx)
	movq	$0, 144(%rbx)
	testq	%rax, %rax
	jne	.LBB2_5
# %bb.32:
	movl	$.L.str, %edi
	movl	$.L__func__.redisReaderFeed, %edx
	movl	$.L.str.1, %ecx
	movl	$461, %esi              # imm = 0x1CD
	callq	__assert_func
.Lfunc_end2:
	.size	redisReaderFeed, .Lfunc_end2-redisReaderFeed
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_12
	.quad	.LBB2_28
	.quad	.LBB2_26
	.quad	.LBB2_27
.LJTI2_1:
	.quad	.LBB2_8
	.quad	.LBB2_23
	.quad	.LBB2_21
	.quad	.LBB2_22
	.quad	.LBB2_20
                                        # -- End function
	.text
	.globl	redisReaderGetReply     # -- Begin function redisReaderGetReply
	.p2align	4, 0x90
	.type	redisReaderGetReply,@function
redisReaderGetReply:                    # @redisReaderGetReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r13
	testq	%rsi, %rsi
	je	.LBB3_2
# %bb.1:
	movq	$0, (%r14)
.LBB3_2:
	movl	$-1, %r11d
	cmpl	$0, (%r13)
	jne	.LBB3_171
# %bb.3:
	cmpq	$0, 152(%r13)
	je	.LBB3_170
# %bb.4:
	movl	528(%r13), %r12d
	cmpl	$-1, %r12d
	je	.LBB3_11
# %bb.5:
	testl	%r12d, %r12d
	jns	.LBB3_12
	jmp	.LBB3_6
.LBB3_11:
	movq	$-1, 168(%r13)
	movl	$-1, 176(%r13)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 184(%r13)
	movq	552(%r13), %rax
	movq	%rax, 200(%r13)
	movl	$0, 528(%r13)
	xorl	%r12d, %r12d
.LBB3_12:
	leaq	176(%r13), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB3_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
                                        #       Child Loop BB3_19 Depth 3
                                        #     Child Loop BB3_116 Depth 2
                                        #     Child Loop BB3_134 Depth 2
                                        #     Child Loop BB3_53 Depth 2
                                        #       Child Loop BB3_55 Depth 3
                                        #     Child Loop BB3_97 Depth 2
                                        #     Child Loop BB3_121 Depth 2
                                        #     Child Loop BB3_144 Depth 2
                                        #     Child Loop BB3_37 Depth 2
                                        #       Child Loop BB3_39 Depth 3
                                        #     Child Loop BB3_72 Depth 2
                                        #     Child Loop BB3_88 Depth 2
	movslq	%r12d, %rax
	leaq	(%rax,%rax,4), %r15
	leaq	168(,%r15,8), %rax
	addq	%r13, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	168(%r13,%r15,8), %r9d
	testl	%r9d, %r9d
	js	.LBB3_30
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	leal	-1(%r9), %eax
	cmpl	$5, %eax
	ja	.LBB3_210
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=1
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=1
	movq	144(%r13), %r8
	movq	136(%r13), %rsi
	addq	%r8, %rsi
	movl	%r8d, %edi
	notl	%edi
	addl	152(%r13), %edi
	movslq	%edi, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_17:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_19 Depth 3
	cmpl	%edi, %eax
	jge	.LBB3_6
# %bb.18:                               #   in Loop: Header=BB3_17 Depth=2
	movslq	%eax, %rcx
	.p2align	4, 0x90
.LBB3_19:                               #   Parent Loop BB3_13 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rsi,%rcx)
	je	.LBB3_21
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=3
	addq	$1, %rcx
	cmpq	%rbx, %rcx
	jl	.LBB3_19
.LBB3_21:                               #   in Loop: Header=BB3_17 Depth=2
	cmpl	%edi, %ecx
	je	.LBB3_6
# %bb.22:                               #   in Loop: Header=BB3_17 Depth=2
	movslq	%ecx, %rdx
	leaq	1(%rdx), %rax
	cmpb	$10, 1(%rsi,%rdx)
	jne	.LBB3_17
# %bb.23:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rsi, %rax
	addq	%rdx, %rax
	je	.LBB3_6
# %bb.24:                               #   in Loop: Header=BB3_13 Depth=1
	addl	$2, %ecx
	movslq	%ecx, %rax
	addq	%r8, %rax
	movq	%rax, 144(%r13)
	movq	544(%r13), %rcx
	cmpl	$3, %r9d
	jne	.LBB3_47
# %bb.25:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$3, %eax
	testq	%rcx, %rcx
	je	.LBB3_130
# %bb.26:                               #   in Loop: Header=BB3_13 Depth=1
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_130
# %bb.27:                               #   in Loop: Header=BB3_13 Depth=1
	movb	(%rsi), %dil
	cmpb	$45, %dil
	je	.LBB3_111
# %bb.28:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$1, %edx
	cmpb	$43, %dil
	jne	.LBB3_113
# %bb.29:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$1, %edx
	jmp	.LBB3_112
.LBB3_30:                               #   in Loop: Header=BB3_13 Depth=1
	movq	144(%r13), %rcx
	movq	152(%r13), %r10
	cmpq	%rcx, %r10
	je	.LBB3_6
# %bb.31:                               #   in Loop: Header=BB3_13 Depth=1
	movq	136(%r13), %rdi
	movq	%rdi, %rdx
	leaq	1(%rcx), %r9
	movq	%r9, 144(%r13)
	addq	%rcx, %rdx
	je	.LBB3_6
# %bb.32:                               #   in Loop: Header=BB3_13 Depth=1
	movsbl	(%rdx), %ebx
	leal	-36(%rbx), %ecx
	cmpl	$22, %ecx
	ja	.LBB3_173
# %bb.33:                               #   in Loop: Header=BB3_13 Depth=1
	jmpq	*.LJTI3_1(,%rcx,8)
.LBB3_34:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$1, (%rax)
	jmp	.LBB3_36
.LBB3_35:                               #   in Loop: Header=BB3_13 Depth=1
	movq	136(%r13), %rdi
	movq	144(%r13), %r9
	movq	152(%r13), %r10
.LBB3_36:                               #   in Loop: Header=BB3_13 Depth=1
	addq	%r9, %rdi
	movl	%r9d, %ecx
	notl	%ecx
	addl	%r10d, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_37:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_39 Depth 3
	cmpl	%ecx, %esi
	jge	.LBB3_6
# %bb.38:                               #   in Loop: Header=BB3_37 Depth=2
	movslq	%esi, %rsi
	.p2align	4, 0x90
.LBB3_39:                               #   Parent Loop BB3_13 Depth=1
                                        #     Parent Loop BB3_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rdi,%rsi)
	je	.LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_39 Depth=3
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jl	.LBB3_39
.LBB3_41:                               #   in Loop: Header=BB3_37 Depth=2
	cmpl	%ecx, %esi
	je	.LBB3_6
# %bb.42:                               #   in Loop: Header=BB3_37 Depth=2
	movslq	%esi, %rbx
	leaq	1(%rbx), %rsi
	cmpb	$10, 1(%rdi,%rbx)
	jne	.LBB3_37
# %bb.43:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rdi, %rsi
	addq	%rbx, %rsi
	je	.LBB3_6
# %bb.44:                               #   in Loop: Header=BB3_13 Depth=1
	movb	(%rdi), %cl
	cmpb	$45, %cl
	je	.LBB3_67
# %bb.45:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$1, %r8d
	cmpb	$43, %cl
	jne	.LBB3_69
# %bb.46:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$1, %r8d
	jmp	.LBB3_68
.LBB3_47:                               #   in Loop: Header=BB3_13 Depth=1
	testq	%rcx, %rcx
	je	.LBB3_66
# %bb.48:                               #   in Loop: Header=BB3_13 Depth=1
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.LBB3_66
# %bb.49:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*%rax
	jmp	.LBB3_127
.LBB3_50:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$2, (%rax)
.LBB3_51:                               #   in Loop: Header=BB3_13 Depth=1
	cmpl	$8, %r12d
	je	.LBB3_176
# %bb.52:                               #   in Loop: Header=BB3_13 Depth=1
	movq	144(%r13), %r8
	movq	136(%r13), %rax
	addq	%r8, %rax
	movl	%r8d, %edx
	notl	%edx
	addl	152(%r13), %edx
	movslq	%edx, %rsi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_53:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_55 Depth 3
	cmpl	%edx, %ebx
	jge	.LBB3_6
# %bb.54:                               #   in Loop: Header=BB3_53 Depth=2
	movslq	%ebx, %rdi
	.p2align	4, 0x90
.LBB3_55:                               #   Parent Loop BB3_13 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rax,%rdi)
	je	.LBB3_57
# %bb.56:                               #   in Loop: Header=BB3_55 Depth=3
	addq	$1, %rdi
	cmpq	%rsi, %rdi
	jl	.LBB3_55
.LBB3_57:                               #   in Loop: Header=BB3_53 Depth=2
	cmpl	%edx, %edi
	je	.LBB3_6
# %bb.58:                               #   in Loop: Header=BB3_53 Depth=2
	movslq	%edi, %rcx
	leaq	1(%rcx), %rbx
	cmpb	$10, 1(%rax,%rcx)
	jne	.LBB3_53
# %bb.59:                               #   in Loop: Header=BB3_13 Depth=1
	addq	%rax, %rcx
	je	.LBB3_6
# %bb.60:                               #   in Loop: Header=BB3_13 Depth=1
	addl	$2, %edi
	movslq	%edi, %rcx
	addq	%r8, %rcx
	movq	%rcx, 144(%r13)
	movb	(%rax), %dl
	cmpb	$45, %dl
	je	.LBB3_92
# %bb.61:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$1, %ecx
	cmpb	$43, %dl
	jne	.LBB3_94
# %bb.62:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$1, %ecx
	jmp	.LBB3_93
.LBB3_63:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$5, (%rax)
	movl	$5, %r9d
	jmp	.LBB3_16
.LBB3_64:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$6, (%rax)
	movl	$6, %r9d
	jmp	.LBB3_16
.LBB3_65:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$3, (%rax)
	movl	$3, %r9d
	jmp	.LBB3_16
.LBB3_66:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	%r9d, %rax
	jmp	.LBB3_128
.LBB3_67:                               #   in Loop: Header=BB3_13 Depth=1
	movq	$-1, %r8
.LBB3_68:                               #   in Loop: Header=BB3_13 Depth=1
	movb	1(%rdi), %cl
	addq	$1, %rdi
.LBB3_69:                               #   in Loop: Header=BB3_13 Depth=1
	cmpb	$13, %cl
	jne	.LBB3_71
# %bb.70:                               #   in Loop: Header=BB3_13 Depth=1
	xorl	%edx, %edx
	jmp	.LBB3_74
.LBB3_71:                               # %.preheader6
                                        #   in Loop: Header=BB3_13 Depth=1
	addq	$1, %rdi
	xorl	%edx, %edx
.LBB3_72:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rcx), %eax
	cmpb	$9, %al
	ja	.LBB3_79
# %bb.73:                               #   in Loop: Header=BB3_72 Depth=2
	movsbq	%cl, %rax
	leaq	(%rdx,%rdx,4), %rcx
	leaq	(%rax,%rcx,2), %rdx
	addq	$-48, %rdx
	movzbl	(%rdi), %ecx
	addq	$1, %rdi
	cmpb	$13, %cl
	jne	.LBB3_72
.LBB3_74:                               #   in Loop: Header=BB3_13 Depth=1
	imulq	%r8, %rdx
	testq	%rdx, %rdx
	js	.LBB3_79
# %bb.75:                               #   in Loop: Header=BB3_13 Depth=1
	leaq	(%rbx,%rdx), %rax
	addq	%r9, %rax
	addq	$4, %rax
	cmpq	%r10, %rax
	ja	.LBB3_6
# %bb.76:                               #   in Loop: Header=BB3_13 Depth=1
	addq	%rdx, %rbx
	addq	$4, %rbx
	movq	544(%r13), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB3_84
# %bb.77:                               #   in Loop: Header=BB3_13 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_84
# %bb.78:                               #   in Loop: Header=BB3_13 Depth=1
	addq	$2, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*%rcx
	jmp	.LBB3_82
.LBB3_79:                               #   in Loop: Header=BB3_13 Depth=1
	addq	$2, %rbx
	movq	544(%r13), %rcx
	movl	$4, %eax
	testq	%rcx, %rcx
	je	.LBB3_84
# %bb.80:                               #   in Loop: Header=BB3_13 Depth=1
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_84
# %bb.81:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*%rcx
.LBB3_82:                               #   in Loop: Header=BB3_13 Depth=1
	testq	%rax, %rax
	je	.LBB3_183
# %bb.83:                               #   in Loop: Header=BB3_13 Depth=1
	movq	144(%r13), %r9
	movl	528(%r13), %r12d
	movl	$-1, %r11d
.LBB3_84:                               #   in Loop: Header=BB3_13 Depth=1
	addq	%rbx, %r9
	movq	%r9, 144(%r13)
	testl	%r12d, %r12d
	je	.LBB3_86
# %bb.85:                               #   in Loop: Header=BB3_13 Depth=1
	jns	.LBB3_87
	jmp	.LBB3_155
.LBB3_86:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rax, 536(%r13)
.LBB3_87:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	%r12d, %rcx
	leaq	(%rcx,%rcx,4), %rax
	movq	-72(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	addq	$1, %rcx
.LBB3_88:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rcx
	je	.LBB3_159
# %bb.89:                               #   in Loop: Header=BB3_88 Depth=2
	cmpl	$2, -48(%rax)
	jne	.LBB3_209
# %bb.90:                               #   in Loop: Header=BB3_88 Depth=2
	movl	-44(%rax), %esi
	movl	(%rax), %edx
	leal	-1(%rsi), %edi
	cmpl	%edi, %edx
	jne	.LBB3_138
# %bb.91:                               #   in Loop: Header=BB3_88 Depth=2
	addl	$-1, %r12d
	movl	%r12d, 528(%r13)
	addq	$-40, %rax
	addq	$-1, %rcx
	jg	.LBB3_88
	jmp	.LBB3_155
.LBB3_92:                               #   in Loop: Header=BB3_13 Depth=1
	movq	$-1, %rcx
.LBB3_93:                               #   in Loop: Header=BB3_13 Depth=1
	movb	1(%rax), %dl
	addq	$1, %rax
.LBB3_94:                               #   in Loop: Header=BB3_13 Depth=1
	cmpb	$13, %dl
	jne	.LBB3_96
# %bb.95:                               #   in Loop: Header=BB3_13 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB3_99
.LBB3_96:                               # %.preheader10
                                        #   in Loop: Header=BB3_13 Depth=1
	addq	$1, %rax
	xorl	%ebx, %ebx
.LBB3_97:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rdx), %esi
	cmpb	$10, %sil
	jae	.LBB3_107
# %bb.98:                               #   in Loop: Header=BB3_97 Depth=2
	movsbq	%dl, %rdx
	leaq	(%rbx,%rbx,4), %rsi
	leaq	(%rdx,%rsi,2), %rbx
	addq	$-48, %rbx
	movzbl	(%rax), %edx
	addq	$1, %rax
	cmpb	$13, %dl
	jne	.LBB3_97
.LBB3_99:                               #   in Loop: Header=BB3_13 Depth=1
	imulq	%rcx, %rbx
	testl	%r12d, %r12d
	sete	%r9b
	movq	544(%r13), %rcx
	cmpq	$-1, %rbx
	je	.LBB3_105
# %bb.100:                              #   in Loop: Header=BB3_13 Depth=1
	movl	$2, %eax
	testq	%rcx, %rcx
	je	.LBB3_103
# %bb.101:                              #   in Loop: Header=BB3_13 Depth=1
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_103
# %bb.102:                              #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movb	%r9b, -41(%rbp)         # 1-byte Spill
	callq	*%rcx
	movb	-41(%rbp), %r9b         # 1-byte Reload
	movl	$-1, %r11d
	testq	%rax, %rax
	je	.LBB3_183
.LBB3_103:                              #   in Loop: Header=BB3_13 Depth=1
	testq	%rbx, %rbx
	jle	.LBB3_119
# %bb.104:                              #   in Loop: Header=BB3_13 Depth=1
	movl	%ebx, 172(%r13,%r15,8)
	movq	%rax, 184(%r13,%r15,8)
	movslq	528(%r13), %rcx
	addq	$1, %rcx
	movl	%ecx, 528(%r13)
	leaq	(%rcx,%rcx,4), %rdx
	movq	$-1, 168(%r13,%rdx,8)
	movl	$0, 176(%r13,%rdx,8)
	movq	$0, 184(%r13,%rdx,8)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 192(%r13,%rdx,8)
	movq	552(%r13), %rsi
	movq	%rsi, 200(%r13,%rdx,8)
	testl	%r12d, %r12d
	movl	%ecx, %r12d
	jne	.LBB3_155
	jmp	.LBB3_154
.LBB3_105:                              #   in Loop: Header=BB3_13 Depth=1
	testq	%rcx, %rcx
	jne	.LBB3_108
	jmp	.LBB3_141
.LBB3_107:                              #   in Loop: Header=BB3_13 Depth=1
	testl	%r12d, %r12d
	sete	%r9b
	movq	544(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB3_141
.LBB3_108:                              #   in Loop: Header=BB3_13 Depth=1
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_141
# %bb.109:                              #   in Loop: Header=BB3_13 Depth=1
	movl	%r9d, %ebx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*%rcx
	testq	%rax, %rax
	je	.LBB3_183
# %bb.110:                              #   in Loop: Header=BB3_13 Depth=1
	movl	528(%r13), %r12d
	movl	$-1, %r11d
	movl	%ebx, %r9d
	jmp	.LBB3_142
.LBB3_141:                              #   in Loop: Header=BB3_13 Depth=1
	movl	$4, %eax
.LBB3_142:                              #   in Loop: Header=BB3_13 Depth=1
	testl	%r12d, %r12d
	js	.LBB3_148
# %bb.143:                              #   in Loop: Header=BB3_13 Depth=1
	movslq	%r12d, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx,8), %rcx
	addq	$1, %rdx
.LBB3_144:                              #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rdx
	je	.LBB3_150
# %bb.145:                              #   in Loop: Header=BB3_144 Depth=2
	cmpl	$2, -48(%rcx)
	jne	.LBB3_209
# %bb.146:                              #   in Loop: Header=BB3_144 Depth=2
	movl	-44(%rcx), %edi
	movl	(%rcx), %esi
	leal	-1(%rdi), %ebx
	cmpl	%ebx, %esi
	jne	.LBB3_151
# %bb.147:                              #   in Loop: Header=BB3_144 Depth=2
	addl	$-1, %r12d
	movl	%r12d, 528(%r13)
	addq	$-40, %rcx
	addq	$-1, %rdx
	jg	.LBB3_144
.LBB3_148:                              #   in Loop: Header=BB3_13 Depth=1
	movl	%r12d, %r8d
.LBB3_149:                              #   in Loop: Header=BB3_13 Depth=1
	movl	%r8d, %r12d
	jmp	.LBB3_153
.LBB3_111:                              #   in Loop: Header=BB3_13 Depth=1
	movq	$-1, %rdx
.LBB3_112:                              #   in Loop: Header=BB3_13 Depth=1
	movb	1(%rsi), %dil
	addq	$1, %rsi
.LBB3_113:                              #   in Loop: Header=BB3_13 Depth=1
	cmpb	$13, %dil
	jne	.LBB3_115
# %bb.114:                              #   in Loop: Header=BB3_13 Depth=1
	xorl	%eax, %eax
	jmp	.LBB3_118
.LBB3_115:                              # %.preheader
                                        #   in Loop: Header=BB3_13 Depth=1
	addq	$1, %rsi
	xorl	%eax, %eax
.LBB3_116:                              #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rdi), %ebx
	cmpb	$9, %bl
	ja	.LBB3_125
# %bb.117:                              #   in Loop: Header=BB3_116 Depth=2
	movsbq	%dil, %rdi
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdi,%rax,2), %rax
	addq	$-48, %rax
	movzbl	(%rsi), %edi
	addq	$1, %rsi
	cmpb	$13, %dil
	jne	.LBB3_116
.LBB3_118:                              #   in Loop: Header=BB3_13 Depth=1
	imulq	%rdx, %rax
	jmp	.LBB3_126
.LBB3_119:                              #   in Loop: Header=BB3_13 Depth=1
	movslq	528(%r13), %r8
	testq	%r8, %r8
	js	.LBB3_149
# %bb.120:                              #   in Loop: Header=BB3_13 Depth=1
	leaq	(%r8,%r8,4), %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx,8), %rdx
	movq	%r8, %rsi
	addq	$1, %rsi
.LBB3_121:                              #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rsi
	je	.LBB3_156
# %bb.122:                              #   in Loop: Header=BB3_121 Depth=2
	cmpl	$2, -48(%rdx)
	jne	.LBB3_209
# %bb.123:                              #   in Loop: Header=BB3_121 Depth=2
	movl	-44(%rdx), %ebx
	movl	(%rdx), %edi
	leal	-1(%rbx), %ecx
	cmpl	%ecx, %edi
	jne	.LBB3_157
# %bb.124:                              #   in Loop: Header=BB3_121 Depth=2
	addl	$-1, %r8d
	movl	%r8d, 528(%r13)
	addq	$-40, %rdx
	addq	$-1, %rsi
	jg	.LBB3_121
	jmp	.LBB3_149
.LBB3_125:                              #   in Loop: Header=BB3_13 Depth=1
	movq	$-1, %rax
.LBB3_126:                              #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	*%rcx
.LBB3_127:                              #   in Loop: Header=BB3_13 Depth=1
	movl	$-1, %r11d
.LBB3_128:                              #   in Loop: Header=BB3_13 Depth=1
	testq	%rax, %rax
	je	.LBB3_183
# %bb.129:                              #   in Loop: Header=BB3_13 Depth=1
	movl	528(%r13), %r12d
.LBB3_130:                              #   in Loop: Header=BB3_13 Depth=1
	testl	%r12d, %r12d
	je	.LBB3_132
# %bb.131:                              #   in Loop: Header=BB3_13 Depth=1
	jns	.LBB3_133
	jmp	.LBB3_155
.LBB3_132:                              #   in Loop: Header=BB3_13 Depth=1
	movq	%rax, 536(%r13)
.LBB3_133:                              #   in Loop: Header=BB3_13 Depth=1
	movslq	%r12d, %rcx
	leaq	(%rcx,%rcx,4), %rax
	movq	-72(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	addq	$1, %rcx
	.p2align	4, 0x90
.LBB3_134:                              #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rcx
	je	.LBB3_159
# %bb.135:                              #   in Loop: Header=BB3_134 Depth=2
	cmpl	$2, -48(%rax)
	jne	.LBB3_209
# %bb.136:                              #   in Loop: Header=BB3_134 Depth=2
	movl	-44(%rax), %esi
	movl	(%rax), %edx
	leal	-1(%rsi), %edi
	cmpl	%edi, %edx
	jne	.LBB3_138
# %bb.137:                              #   in Loop: Header=BB3_134 Depth=2
	addl	$-1, %r12d
	movl	%r12d, 528(%r13)
	addq	$-40, %rax
	addq	$-1, %rcx
	jg	.LBB3_134
	jmp	.LBB3_155
.LBB3_138:                              #   in Loop: Header=BB3_13 Depth=1
	cmpl	%esi, %edx
	jge	.LBB3_211
# %bb.139:                              #   in Loop: Header=BB3_13 Depth=1
	movq	$-1, -8(%rax)
	addl	$1, %edx
	movl	%edx, (%rax)
	jmp	.LBB3_155
.LBB3_150:                              #   in Loop: Header=BB3_13 Depth=1
	movl	$-1, 528(%r13)
	movl	$-1, %r12d
	testb	%r9b, %r9b
	jne	.LBB3_154
	jmp	.LBB3_6
.LBB3_151:                              #   in Loop: Header=BB3_13 Depth=1
	cmpl	%edi, %esi
	jge	.LBB3_211
# %bb.152:                              #   in Loop: Header=BB3_13 Depth=1
	movq	$-1, -8(%rcx)
	addl	$1, %esi
	movl	%esi, (%rcx)
.LBB3_153:                              #   in Loop: Header=BB3_13 Depth=1
	testb	%r9b, %r9b
	je	.LBB3_155
.LBB3_154:                              #   in Loop: Header=BB3_13 Depth=1
	movq	%rax, 536(%r13)
.LBB3_155:                              #   in Loop: Header=BB3_13 Depth=1
	testl	%r12d, %r12d
	jns	.LBB3_13
	jmp	.LBB3_6
.LBB3_156:                              #   in Loop: Header=BB3_13 Depth=1
	movl	$-1, 528(%r13)
	testl	%r12d, %r12d
	movl	$-1, %r12d
	je	.LBB3_154
	jmp	.LBB3_6
.LBB3_157:                              #   in Loop: Header=BB3_13 Depth=1
	cmpl	%ebx, %edi
	jge	.LBB3_211
# %bb.158:                              #   in Loop: Header=BB3_13 Depth=1
	addl	$1, %edi
	movq	$-1, -8(%rdx)
	movl	%edi, (%rdx)
	testl	%r12d, %r12d
	movl	%r8d, %r12d
	jne	.LBB3_155
	jmp	.LBB3_154
.LBB3_159:
	movl	$-1, 528(%r13)
	jmp	.LBB3_6
.LBB3_173:
	leal	-7(%rbx), %eax
	cmpl	$27, %eax
	ja	.LBB3_190
# %bb.174:
	jmpq	*.LJTI3_2(,%rax,8)
.LBB3_175:
	leaq	-64(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.9, %edx
	jmp	.LBB3_198
.LBB3_176:
	movq	536(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB3_180
# %bb.177:
	movq	544(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_180
# %bb.178:
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_180
# %bb.179:
	callq	*%rax
	movq	$0, 536(%r13)
.LBB3_180:
	movq	136(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB3_182
# %bb.181:
	callq	sdsfree
	movq	$0, 136(%r13)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r13)
.LBB3_182:
	movl	$-1, 528(%r13)
	movl	$4, (%r13)
	movl	$.L.str.15, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r13), %rdi
	movl	$.L.str.15, %esi
	jmp	.LBB3_208
.LBB3_183:
	movq	536(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB3_187
# %bb.184:
	movq	544(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_187
# %bb.185:
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_187
# %bb.186:
	callq	*%rax
	movq	$0, 536(%r13)
.LBB3_187:
	movq	136(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB3_189
# %bb.188:
	callq	sdsfree
	movq	$0, 136(%r13)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r13)
.LBB3_189:
	movl	$-1, 528(%r13)
	movl	$5, (%r13)
	movl	$.L.str.2, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r13), %rdi
	movl	$.L.str.2, %esi
	jmp	.LBB3_208
.LBB3_190:
	cmpl	$92, %ebx
	jne	.LBB3_192
.LBB3_191:
	leaq	-64(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.5, %edx
	movl	%ebx, %ecx
	jmp	.LBB3_200
.LBB3_192:
	movslq	%ebx, %r15
	callq	__locale_ctype_ptr
	testb	$-105, 1(%rax,%r15)
	je	.LBB3_199
# %bb.193:
	leaq	-64(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.11, %edx
	movl	%ebx, %ecx
	jmp	.LBB3_200
.LBB3_194:
	leaq	-64(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.10, %edx
	jmp	.LBB3_198
.LBB3_195:
	leaq	-64(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB3_198
.LBB3_196:
	leaq	-64(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.6, %edx
	jmp	.LBB3_198
.LBB3_197:
	leaq	-64(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.7, %edx
.LBB3_198:
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB3_201
.LBB3_199:
	movzbl	%bl, %ecx
	leaq	-64(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.12, %edx
.LBB3_200:
	xorl	%eax, %eax
	callq	snprintf
.LBB3_201:
	leaq	-208(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movl	$128, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	callq	snprintf
	movq	536(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB3_205
# %bb.202:
	movq	544(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_205
# %bb.203:
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_205
# %bb.204:
	callq	*%rax
	movq	$0, 536(%r13)
.LBB3_205:
	movq	136(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB3_207
# %bb.206:
	callq	sdsfree
	movq	$0, 136(%r13)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r13)
.LBB3_207:
	movl	$-1, 528(%r13)
	movl	$4, (%r13)
	leaq	-208(%rbp), %r12
	movq	%r12, %rdi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r13), %rdi
	movq	%r12, %rsi
.LBB3_208:
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r13,%rbx)
	movl	$-1, %r11d
.LBB3_6:
	cmpl	$0, (%r13)
	jne	.LBB3_171
# %bb.7:
	movq	144(%r13), %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	jb	.LBB3_166
# %bb.8:
	movq	136(%r13), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	$-1, %edx
	callq	sdsrange
	movq	$0, 144(%r13)
	movq	136(%r13), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB3_164
# %bb.9:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI3_3(,%rdx,8)
.LBB3_10:
	shrq	$3, %rax
	jmp	.LBB3_165
.LBB3_160:
	movq	-17(%rcx), %rax
	jmp	.LBB3_165
.LBB3_161:
	movzbl	-3(%rcx), %eax
	jmp	.LBB3_165
.LBB3_162:
	movzwl	-5(%rcx), %eax
	jmp	.LBB3_165
.LBB3_163:
	movl	-9(%rcx), %eax
	jmp	.LBB3_165
.LBB3_164:
	xorl	%eax, %eax
.LBB3_165:
	movq	%rax, 152(%r13)
.LBB3_166:
	cmpl	$-1, 528(%r13)
	jne	.LBB3_170
# %bb.167:
	testq	%r14, %r14
	je	.LBB3_169
# %bb.168:
	movq	536(%r13), %rax
	movq	%rax, (%r14)
.LBB3_169:
	movq	$0, 536(%r13)
.LBB3_170:
	xorl	%r11d, %r11d
.LBB3_171:
	movl	%r11d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_209:
	movl	$.L.str, %edi
	movl	$.L__func__.moveToNextTask, %edx
	movl	$.L.str.13, %ecx
	movl	$201, %esi
	callq	__assert_func
.LBB3_210:
	movl	$.L.str, %edi
	movl	$.L__func__.processItem, %edx
	movl	$.L.str.3, %ecx
	movl	$411, %esi              # imm = 0x19B
	callq	__assert_func
.LBB3_211:
	movl	$.L.str, %edi
	movl	$.L__func__.moveToNextTask, %edx
	movl	$.L.str.14, %ecx
	movl	$206, %esi
	callq	__assert_func
.Lfunc_end3:
	.size	redisReaderGetReply, .Lfunc_end3-redisReaderGetReply
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_35
	.quad	.LBB3_51
	.quad	.LBB3_16
	.quad	.LBB3_210
	.quad	.LBB3_16
	.quad	.LBB3_16
.LJTI3_1:
	.quad	.LBB3_34
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_50
	.quad	.LBB3_63
	.quad	.LBB3_173
	.quad	.LBB3_64
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_173
	.quad	.LBB3_65
.LJTI3_2:
	.quad	.LBB3_175
	.quad	.LBB3_194
	.quad	.LBB3_195
	.quad	.LBB3_196
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_197
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_192
	.quad	.LBB3_191
.LJTI3_3:
	.quad	.LBB3_10
	.quad	.LBB3_161
	.quad	.LBB3_162
	.quad	.LBB3_163
	.quad	.LBB3_160
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.c"
	.size	.L.str, 81

	.type	.L__func__.redisReaderFeed,@object # @__func__.redisReaderFeed
.L__func__.redisReaderFeed:
	.asciz	"redisReaderFeed"
	.size	.L__func__.redisReaderFeed, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r->buf != NULL"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Out of memory"
	.size	.L.str.2, 14

	.type	.L__func__.processItem,@object # @__func__.processItem
.L__func__.processItem:
	.asciz	"processItem"
	.size	.L__func__.processItem, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"NULL"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Protocol error, got %s as reply type byte"
	.size	.L.str.4, 42

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\"\\%c\""
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\"\\n\""
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\"\\r\""
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\"\\t\""
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\"\\a\""
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\"\\b\""
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\"%c\""
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\"\\x%02x\""
	.size	.L.str.12, 9

	.type	.L__func__.moveToNextTask,@object # @__func__.moveToNextTask
.L__func__.moveToNextTask:
	.asciz	"moveToNextTask"
	.size	.L__func__.moveToNextTask, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"prv->type == REDIS_REPLY_ARRAY"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"cur->idx < prv->elements"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"No support for nested multi bulk replies with depth > 7"
	.size	.L.str.15, 56

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
