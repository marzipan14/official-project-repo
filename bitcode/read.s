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
	movl	$42, __A_VARIABLE(%rip)
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
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
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
	ja	.LBB2_33
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
.LBB2_33:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_5
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function redisReaderGetReply
.LCPI3_0:
	.zero	16
	.text
	.globl	redisReaderGetReply
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
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB3_2
# %bb.1:
	movq	$0, (%rsi)
.LBB3_2:
	movl	$-1, %eax
	cmpl	$0, (%r15)
	jne	.LBB3_223
# %bb.3:
	cmpq	$0, 152(%r15)
	je	.LBB3_222
# %bb.4:
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	528(%r15), %r14d
	cmpl	$-1, %r14d
	je	.LBB3_6
# %bb.5:
	testl	%r14d, %r14d
	jns	.LBB3_7
	jmp	.LBB3_207
.LBB3_6:
	movq	$-1, 168(%r15)
	movl	$-1, 176(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 184(%r15)
	movq	552(%r15), %rax
	movq	%rax, 200(%r15)
	movl	$0, 528(%r15)
	xorl	%r14d, %r14d
	testl	%r14d, %r14d
	js	.LBB3_207
.LBB3_7:
	leaq	4(%r15), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	176(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB3_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
                                        #       Child Loop BB3_15 Depth 3
                                        #     Child Loop BB3_115 Depth 2
                                        #     Child Loop BB3_75 Depth 2
                                        #     Child Loop BB3_55 Depth 2
                                        #       Child Loop BB3_57 Depth 3
                                        #     Child Loop BB3_127 Depth 2
                                        #     Child Loop BB3_159 Depth 2
                                        #     Child Loop BB3_152 Depth 2
                                        #     Child Loop BB3_34 Depth 2
                                        #       Child Loop BB3_36 Depth 3
                                        #     Child Loop BB3_89 Depth 2
                                        #     Child Loop BB3_106 Depth 2
	movslq	%r14d, %rax
	leaq	(%rax,%rax,4), %r13
	leaq	(%r15,%r13,8), %r11
	addq	$168, %r11
	movl	168(%r15,%r13,8), %eax
	testl	%eax, %eax
	js	.LBB3_27
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	leal	-1(%rax), %ecx
	cmpl	$5, %ecx
	ja	.LBB3_224
# %bb.10:                               #   in Loop: Header=BB3_8 Depth=1
	jmpq	*.LJTI3_0(,%rcx,8)
.LBB3_12:                               #   in Loop: Header=BB3_8 Depth=1
	movq	144(%r15), %r8
	movq	136(%r15), %rsi
	addq	%r8, %rsi
	movl	%r8d, %edi
	notl	%edi
	addl	152(%r15), %edi
	movslq	%edi, %rbx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_13:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_15 Depth 3
	cmpl	%edi, %ecx
	jge	.LBB3_26
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=2
	movslq	%ecx, %rdx
	.p2align	4, 0x90
.LBB3_15:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rsi,%rdx)
	je	.LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=3
	addq	$1, %rdx
	cmpq	%rbx, %rdx
	jl	.LBB3_15
.LBB3_17:                               #   in Loop: Header=BB3_13 Depth=2
	cmpl	%edi, %edx
	je	.LBB3_26
# %bb.18:                               #   in Loop: Header=BB3_13 Depth=2
	movslq	%edx, %rdx
	leaq	1(%rdx), %rcx
	cmpb	$10, 1(%rsi,%rdx)
	jne	.LBB3_13
# %bb.19:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	movq	%rsi, %rcx
	addq	%rdx, %rcx
	je	.LBB3_83
# %bb.20:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rdx, %rcx
	shlq	$32, %rcx
	movabsq	$8589934592, %rdi       # imm = 0x200000000
	addq	%rdi, %rcx
	sarq	$32, %rcx
	addq	%r8, %rcx
	movq	%rcx, 144(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	544(%r15), %rcx
	cmpl	$3, %eax
	jne	.LBB3_66
# %bb.21:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$3, %eax
	testq	%rcx, %rcx
	je	.LBB3_71
# %bb.22:                               #   in Loop: Header=BB3_8 Depth=1
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_71
# %bb.23:                               #   in Loop: Header=BB3_8 Depth=1
	movb	(%rsi), %dil
	cmpb	$45, %dil
	je	.LBB3_110
# %bb.24:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$1, %edx
	cmpb	$43, %dil
	jne	.LBB3_112
# %bb.25:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$1, %edx
	jmp	.LBB3_111
	.p2align	4, 0x90
.LBB3_26:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_172
	.p2align	4, 0x90
.LBB3_27:                               #   in Loop: Header=BB3_8 Depth=1
	movq	144(%r15), %rcx
	movq	152(%r15), %r10
	cmpq	%rcx, %r10
	je	.LBB3_205
# %bb.28:                               #   in Loop: Header=BB3_8 Depth=1
	movq	136(%r15), %rdi
	movq	%rdi, %rdx
	leaq	1(%rcx), %r9
	movq	%r9, 144(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %rdx
	je	.LBB3_206
# %bb.29:                               #   in Loop: Header=BB3_8 Depth=1
	movsbl	(%rdx), %ebx
	leal	-36(%rbx), %ecx
	cmpl	$22, %ecx
	ja	.LBB3_184
# %bb.30:                               #   in Loop: Header=BB3_8 Depth=1
	jmpq	*.LJTI3_1(,%rcx,8)
.LBB3_31:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$1, (%r11)
	jmp	.LBB3_33
.LBB3_32:                               #   in Loop: Header=BB3_8 Depth=1
	movq	136(%r15), %rdi
	movq	144(%r15), %r9
	movq	152(%r15), %r10
.LBB3_33:                               #   in Loop: Header=BB3_8 Depth=1
	addq	%r9, %rdi
	movl	%r9d, %ecx
	notl	%ecx
	addl	%r10d, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_34:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_36 Depth 3
	cmpl	%ecx, %esi
	jge	.LBB3_171
# %bb.35:                               #   in Loop: Header=BB3_34 Depth=2
	movslq	%esi, %rsi
	.p2align	4, 0x90
.LBB3_36:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rdi,%rsi)
	je	.LBB3_38
# %bb.37:                               #   in Loop: Header=BB3_36 Depth=3
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jl	.LBB3_36
.LBB3_38:                               #   in Loop: Header=BB3_34 Depth=2
	cmpl	%ecx, %esi
	je	.LBB3_171
# %bb.39:                               #   in Loop: Header=BB3_34 Depth=2
	movslq	%esi, %rbx
	leaq	1(%rbx), %rsi
	cmpb	$10, 1(%rdi,%rbx)
	jne	.LBB3_34
# %bb.40:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rdi, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	addq	%rbx, %rsi
	je	.LBB3_172
# %bb.41:                               #   in Loop: Header=BB3_8 Depth=1
	movb	(%rdi), %cl
	cmpb	$45, %cl
	je	.LBB3_84
# %bb.42:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$1, %r8d
	cmpb	$43, %cl
	jne	.LBB3_86
# %bb.43:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$1, %r8d
	jmp	.LBB3_85
.LBB3_11:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$5, (%r11)
	movl	$5, %eax
	jmp	.LBB3_12
.LBB3_44:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$6, (%r11)
	movl	$6, %eax
	jmp	.LBB3_12
.LBB3_45:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$2, (%r11)
.LBB3_46:                               #   in Loop: Header=BB3_8 Depth=1
	cmpl	$8, %r14d
	jne	.LBB3_54
# %bb.47:                               #   in Loop: Header=BB3_8 Depth=1
	movq	536(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_51
# %bb.48:                               #   in Loop: Header=BB3_8 Depth=1
	movq	544(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_51
# %bb.49:                               #   in Loop: Header=BB3_8 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_51
# %bb.50:                               #   in Loop: Header=BB3_8 Depth=1
	callq	*%rax
	movq	$0, 536(%r15)
.LBB3_51:                               #   in Loop: Header=BB3_8 Depth=1
	movq	136(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_53
# %bb.52:                               #   in Loop: Header=BB3_8 Depth=1
	callq	sdsfree
	movq	$0, 136(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r15)
.LBB3_53:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$-1, 528(%r15)
	movl	$4, (%r15)
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rbx
	cmpq	$127, %rax
	movl	$127, %eax
	cmovaeq	%rax, %rbx
	movl	$.L.str.15, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r15,%rbx)
	jmp	.LBB3_171
.LBB3_54:                               #   in Loop: Header=BB3_8 Depth=1
	movq	144(%r15), %rcx
	movq	136(%r15), %rax
	addq	%rcx, %rax
	movl	%ecx, %edx
	notl	%edx
	addl	152(%r15), %edx
	movslq	%edx, %rsi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_55:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_57 Depth 3
	cmpl	%edx, %ebx
	jge	.LBB3_170
# %bb.56:                               #   in Loop: Header=BB3_55 Depth=2
	movslq	%ebx, %rdi
	.p2align	4, 0x90
.LBB3_57:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rax,%rdi)
	je	.LBB3_59
# %bb.58:                               #   in Loop: Header=BB3_57 Depth=3
	addq	$1, %rdi
	cmpq	%rsi, %rdi
	jl	.LBB3_57
.LBB3_59:                               #   in Loop: Header=BB3_55 Depth=2
	cmpl	%edx, %edi
	je	.LBB3_170
# %bb.60:                               #   in Loop: Header=BB3_55 Depth=2
	movslq	%edi, %rdi
	leaq	1(%rdi), %rbx
	cmpb	$10, 1(%rax,%rdi)
	jne	.LBB3_55
# %bb.61:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
	addq	%rdi, %rdx
	je	.LBB3_171
# %bb.62:                               #   in Loop: Header=BB3_8 Depth=1
	shlq	$32, %rdi
	movabsq	$8589934592, %rdx       # imm = 0x200000000
	addq	%rdx, %rdi
	sarq	$32, %rdi
	addq	%rcx, %rdi
	movq	%rdi, 144(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %dl
	cmpb	$45, %dl
	je	.LBB3_122
# %bb.63:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$1, %ecx
	cmpb	$43, %dl
	jne	.LBB3_124
# %bb.64:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$1, %ecx
	jmp	.LBB3_123
.LBB3_65:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$3, (%r11)
	movl	$3, %eax
	jmp	.LBB3_12
.LBB3_66:                               #   in Loop: Header=BB3_8 Depth=1
	testq	%rcx, %rcx
	je	.LBB3_69
# %bb.67:                               #   in Loop: Header=BB3_8 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_69
# %bb.68:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%r11, %rdi
	callq	*%rcx
	testq	%rax, %rax
	jne	.LBB3_70
	jmp	.LBB3_137
.LBB3_69:                               #   in Loop: Header=BB3_8 Depth=1
	cltq
	testq	%rax, %rax
	jne	.LBB3_70
	jmp	.LBB3_137
.LBB3_84:                               #   in Loop: Header=BB3_8 Depth=1
	movq	$-1, %r8
.LBB3_85:                               #   in Loop: Header=BB3_8 Depth=1
	movb	1(%rdi), %cl
	addq	$1, %rdi
.LBB3_86:                               #   in Loop: Header=BB3_8 Depth=1
	cmpb	$13, %cl
	jne	.LBB3_88
# %bb.87:                               #   in Loop: Header=BB3_8 Depth=1
	xorl	%edx, %edx
	jmp	.LBB3_91
.LBB3_88:                               # %.preheader7
                                        #   in Loop: Header=BB3_8 Depth=1
	addq	$1, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_89:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rcx), %eax
	cmpb	$10, %al
	jae	.LBB3_96
# %bb.90:                               #   in Loop: Header=BB3_89 Depth=2
	movsbq	%cl, %rax
	leaq	(%rdx,%rdx,4), %rcx
	leaq	(%rax,%rcx,2), %rdx
	addq	$-48, %rdx
	movzbl	(%rdi), %ecx
	addq	$1, %rdi
	cmpb	$13, %cl
	jne	.LBB3_89
.LBB3_91:                               #   in Loop: Header=BB3_8 Depth=1
	imulq	%r8, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	js	.LBB3_97
# %bb.92:                               #   in Loop: Header=BB3_8 Depth=1
	leaq	(%rbx,%rdx), %rax
	addq	%r9, %rax
	addq	$4, %rax
	cmpq	%r10, %rax
	ja	.LBB3_172
# %bb.93:                               #   in Loop: Header=BB3_8 Depth=1
	addq	%rdx, %rbx
	addq	$4, %rbx
	movq	544(%r15), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB3_102
# %bb.94:                               #   in Loop: Header=BB3_8 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_102
# %bb.95:                               #   in Loop: Header=BB3_8 Depth=1
	addq	$2, %rsi
	movq	%r11, %rdi
	callq	*%rcx
	jmp	.LBB3_100
.LBB3_96:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_97:                               #   in Loop: Header=BB3_8 Depth=1
	addq	$2, %rbx
	movq	544(%r15), %rcx
	movl	$4, %eax
	testq	%rcx, %rcx
	je	.LBB3_102
# %bb.98:                               #   in Loop: Header=BB3_8 Depth=1
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_102
# %bb.99:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%r11, %rdi
	callq	*%rcx
.LBB3_100:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%rax, %rax
	je	.LBB3_137
# %bb.101:                              #   in Loop: Header=BB3_8 Depth=1
	movq	144(%r15), %r9
	movl	528(%r15), %r14d
.LBB3_102:                              #   in Loop: Header=BB3_8 Depth=1
	addq	%rbx, %r9
	movq	%r9, 144(%r15)
	testl	%r14d, %r14d
	je	.LBB3_104
# %bb.103:                              #   in Loop: Header=BB3_8 Depth=1
	jns	.LBB3_105
	jmp	.LBB3_121
.LBB3_104:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, 536(%r15)
.LBB3_105:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%r14d, %rcx
	leaq	(%rcx,%rcx,4), %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	addq	$1, %rcx
	addl	$-1, %r14d
	.p2align	4, 0x90
.LBB3_106:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rcx
	je	.LBB3_118
# %bb.107:                              #   in Loop: Header=BB3_106 Depth=2
	cmpl	$2, -48(%rax)
	jne	.LBB3_225
# %bb.108:                              #   in Loop: Header=BB3_106 Depth=2
	movl	-44(%rax), %esi
	movl	(%rax), %edx
	leal	-1(%rsi), %edi
	cmpl	%edi, %edx
	jne	.LBB3_119
# %bb.109:                              #   in Loop: Header=BB3_106 Depth=2
	movl	%r14d, 528(%r15)
	addq	$-40, %rax
	addl	$-1, %r14d
	addq	$-1, %rcx
	jg	.LBB3_106
	jmp	.LBB3_121
.LBB3_110:                              #   in Loop: Header=BB3_8 Depth=1
	movq	$-1, %rdx
.LBB3_111:                              #   in Loop: Header=BB3_8 Depth=1
	movb	1(%rsi), %dil
	addq	$1, %rsi
.LBB3_112:                              #   in Loop: Header=BB3_8 Depth=1
	cmpb	$13, %dil
	jne	.LBB3_114
# %bb.113:                              #   in Loop: Header=BB3_8 Depth=1
	xorl	%eax, %eax
	jmp	.LBB3_117
.LBB3_114:                              # %.preheader
                                        #   in Loop: Header=BB3_8 Depth=1
	addq	$1, %rsi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_115:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rdi), %ebx
	cmpb	$9, %bl
	ja	.LBB3_135
# %bb.116:                              #   in Loop: Header=BB3_115 Depth=2
	movsbq	%dil, %rdi
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdi,%rax,2), %rax
	addq	$-48, %rax
	movzbl	(%rsi), %edi
	addq	$1, %rsi
	cmpb	$13, %dil
	jne	.LBB3_115
.LBB3_117:                              #   in Loop: Header=BB3_8 Depth=1
	imulq	%rdx, %rax
	jmp	.LBB3_136
.LBB3_118:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$-1, 528(%r15)
	jmp	.LBB3_121
.LBB3_119:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	%esi, %edx
	jge	.LBB3_226
# %bb.120:                              #   in Loop: Header=BB3_8 Depth=1
	movq	$-1, -8(%rax)
	addl	$1, %edx
	movl	%edx, (%rax)
.LBB3_121:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB3_172
.LBB3_122:                              #   in Loop: Header=BB3_8 Depth=1
	movq	$-1, %rcx
.LBB3_123:                              #   in Loop: Header=BB3_8 Depth=1
	movb	1(%rax), %dl
	addq	$1, %rax
.LBB3_124:                              #   in Loop: Header=BB3_8 Depth=1
	cmpb	$13, %dl
	jne	.LBB3_126
# %bb.125:                              #   in Loop: Header=BB3_8 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB3_129
.LBB3_126:                              # %.preheader11
                                        #   in Loop: Header=BB3_8 Depth=1
	addq	$1, %rax
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_127:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rdx), %esi
	cmpb	$10, %sil
	jae	.LBB3_146
# %bb.128:                              #   in Loop: Header=BB3_127 Depth=2
	movsbq	%dl, %rdx
	leaq	(%r12,%r12,4), %rsi
	leaq	(%rdx,%rsi,2), %r12
	addq	$-48, %r12
	movzbl	(%rax), %edx
	addq	$1, %rax
	cmpb	$13, %dl
	jne	.LBB3_127
.LBB3_129:                              #   in Loop: Header=BB3_8 Depth=1
	imulq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	sete	%r8b
	movq	544(%r15), %rcx
	cmpq	$-1, %r12
	je	.LBB3_144
# %bb.130:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$2, %eax
	testq	%rcx, %rcx
	je	.LBB3_133
# %bb.131:                              #   in Loop: Header=BB3_8 Depth=1
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_133
# %bb.132:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%r11, %rdi
	movl	%r12d, %esi
	movq	%r11, %rbx
	callq	*%rcx
	movq	%rbx, %r11
	testq	%rax, %rax
	je	.LBB3_163
.LBB3_133:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%r12, %r12
	jle	.LBB3_157
# %bb.134:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r12d, 172(%r15,%r13,8)
	movq	%rax, 184(%r15,%r13,8)
	movslq	528(%r15), %rcx
	addq	$1, %rcx
	xorl	%r12d, %r12d
	movl	%ecx, 528(%r15)
	leaq	(%rcx,%rcx,4), %rcx
	movq	$-1, 168(%r15,%rcx,8)
	movl	$0, 176(%r15,%rcx,8)
	movq	$0, 184(%r15,%rcx,8)
	movq	%r11, 192(%r15,%rcx,8)
	movq	552(%r15), %rdx
	movq	%rdx, 200(%r15,%rcx,8)
	jmp	.LBB3_182
.LBB3_135:                              #   in Loop: Header=BB3_8 Depth=1
	movq	$-1, %rax
.LBB3_136:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %rdi
	movq	%rax, %rsi
	callq	*%rcx
	testq	%rax, %rax
	je	.LBB3_137
.LBB3_70:                               #   in Loop: Header=BB3_8 Depth=1
	movl	528(%r15), %r14d
.LBB3_71:                               #   in Loop: Header=BB3_8 Depth=1
	testl	%r14d, %r14d
	je	.LBB3_73
# %bb.72:                               #   in Loop: Header=BB3_8 Depth=1
	testl	%r14d, %r14d
	jns	.LBB3_74
	jmp	.LBB3_82
.LBB3_137:                              #   in Loop: Header=BB3_8 Depth=1
	movq	536(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_141
# %bb.138:                              #   in Loop: Header=BB3_8 Depth=1
	movq	544(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_141
# %bb.139:                              #   in Loop: Header=BB3_8 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_141
# %bb.140:                              #   in Loop: Header=BB3_8 Depth=1
	callq	*%rax
	movq	$0, 536(%r15)
.LBB3_141:                              #   in Loop: Header=BB3_8 Depth=1
	movq	136(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_143
# %bb.142:                              #   in Loop: Header=BB3_8 Depth=1
	callq	sdsfree
	movq	$0, 136(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r15)
.LBB3_143:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$-1, 528(%r15)
	movl	$5, (%r15)
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rbx
	cmpq	$127, %rax
	movl	$127, %eax
	cmovaeq	%rax, %rbx
	movl	$.L.str.2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r15,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_172
.LBB3_73:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, 536(%r15)
.LBB3_74:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	%r14d, %rcx
	leaq	(%rcx,%rcx,4), %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	addq	$1, %rcx
	addl	$-1, %r14d
	.p2align	4, 0x90
.LBB3_75:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rcx
	je	.LBB3_79
# %bb.76:                               #   in Loop: Header=BB3_75 Depth=2
	cmpl	$2, -48(%rax)
	jne	.LBB3_225
# %bb.77:                               #   in Loop: Header=BB3_75 Depth=2
	movl	-44(%rax), %esi
	movl	(%rax), %edx
	leal	-1(%rsi), %edi
	cmpl	%edi, %edx
	jne	.LBB3_80
# %bb.78:                               #   in Loop: Header=BB3_75 Depth=2
	movl	%r14d, 528(%r15)
	addq	$-40, %rax
	addl	$-1, %r14d
	addq	$-1, %rcx
	jg	.LBB3_75
	jmp	.LBB3_82
.LBB3_79:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$-1, 528(%r15)
	jmp	.LBB3_82
.LBB3_80:                               #   in Loop: Header=BB3_8 Depth=1
	cmpl	%esi, %edx
	jge	.LBB3_226
# %bb.81:                               #   in Loop: Header=BB3_8 Depth=1
	movq	$-1, -8(%rax)
	addl	$1, %edx
	movl	%edx, (%rax)
.LBB3_82:                               #   in Loop: Header=BB3_8 Depth=1
	xorl	%r12d, %r12d
.LBB3_83:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_172
.LBB3_144:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%rcx, %rcx
	jne	.LBB3_147
	jmp	.LBB3_145
.LBB3_146:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	sete	%r8b
	movq	544(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB3_145
.LBB3_147:                              #   in Loop: Header=BB3_8 Depth=1
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_145
# %bb.148:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r8d, %ebx
	movq	%r11, %rdi
	callq	*%rcx
	testq	%rax, %rax
	je	.LBB3_163
# %bb.149:                              #   in Loop: Header=BB3_8 Depth=1
	movl	528(%r15), %r14d
	movl	%ebx, %r8d
	jmp	.LBB3_150
.LBB3_145:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$4, %eax
.LBB3_150:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%r14d, %r14d
	js	.LBB3_177
# %bb.151:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%r14d, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx,8), %rcx
	addq	$1, %rdx
	addl	$-1, %r14d
.LBB3_152:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rdx
	je	.LBB3_174
# %bb.153:                              #   in Loop: Header=BB3_152 Depth=2
	cmpl	$2, -48(%rcx)
	jne	.LBB3_225
# %bb.154:                              #   in Loop: Header=BB3_152 Depth=2
	movl	-44(%rcx), %edi
	movl	(%rcx), %esi
	leal	-1(%rdi), %ebx
	cmpl	%ebx, %esi
	jne	.LBB3_175
# %bb.155:                              #   in Loop: Header=BB3_152 Depth=2
	movl	%r14d, 528(%r15)
	addq	$-40, %rcx
	addl	$-1, %r14d
	addq	$-1, %rdx
	jg	.LBB3_152
	jmp	.LBB3_177
.LBB3_157:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	528(%r15), %rsi
	testq	%rsi, %rsi
	js	.LBB3_181
# %bb.158:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	(%rsi,%rsi,4), %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %rcx
	movq	%rsi, %rdx
	addq	$1, %rdx
	addl	$-1, %esi
.LBB3_159:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rdx
	je	.LBB3_178
# %bb.160:                              #   in Loop: Header=BB3_159 Depth=2
	cmpl	$2, -48(%rcx)
	jne	.LBB3_225
# %bb.161:                              #   in Loop: Header=BB3_159 Depth=2
	movl	-44(%rcx), %ebx
	movl	(%rcx), %r8d
	leal	-1(%rbx), %edi
	cmpl	%edi, %r8d
	jne	.LBB3_179
# %bb.162:                              #   in Loop: Header=BB3_159 Depth=2
	movl	%esi, 528(%r15)
	addq	$-40, %rcx
	addl	$-1, %esi
	addq	$-1, %rdx
	jg	.LBB3_159
	jmp	.LBB3_181
.LBB3_163:                              #   in Loop: Header=BB3_8 Depth=1
	movq	536(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_167
# %bb.164:                              #   in Loop: Header=BB3_8 Depth=1
	movq	544(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_167
# %bb.165:                              #   in Loop: Header=BB3_8 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_167
# %bb.166:                              #   in Loop: Header=BB3_8 Depth=1
	callq	*%rax
	movq	$0, 536(%r15)
.LBB3_167:                              #   in Loop: Header=BB3_8 Depth=1
	movq	136(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_169
# %bb.168:                              #   in Loop: Header=BB3_8 Depth=1
	callq	sdsfree
	movq	$0, 136(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r15)
.LBB3_169:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$-1, 528(%r15)
	movl	$5, (%r15)
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rbx
	cmpq	$127, %rax
	movl	$127, %eax
	cmovaeq	%rax, %rbx
	movl	$.L.str.2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r15,%rbx)
.LBB3_170:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_171:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
.LBB3_172:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB3_207
# %bb.173:                              #   in Loop: Header=BB3_8 Depth=1
	movl	528(%r15), %r14d
	testl	%r14d, %r14d
	jns	.LBB3_8
	jmp	.LBB3_207
.LBB3_174:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$-1, 528(%r15)
	jmp	.LBB3_177
.LBB3_175:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	%edi, %esi
	jge	.LBB3_226
# %bb.176:                              #   in Loop: Header=BB3_8 Depth=1
	movq	$-1, -8(%rcx)
	addl	$1, %esi
	movl	%esi, (%rcx)
.LBB3_177:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	testb	%r8b, %r8b
	je	.LBB3_172
	jmp	.LBB3_183
.LBB3_178:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$-1, 528(%r15)
	jmp	.LBB3_181
.LBB3_179:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	%ebx, %r8d
	jge	.LBB3_226
# %bb.180:                              #   in Loop: Header=BB3_8 Depth=1
	movq	$-1, -8(%rcx)
	addl	$1, %r8d
	movl	%r8d, (%rcx)
.LBB3_181:                              #   in Loop: Header=BB3_8 Depth=1
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_182:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%r14d, %r14d
	jne	.LBB3_172
.LBB3_183:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, 536(%r15)
	xorl	%r12d, %r12d
	jmp	.LBB3_172
.LBB3_184:
	leal	-7(%rbx), %eax
	cmpl	$27, %eax
	ja	.LBB3_187
# %bb.185:
	jmpq	*.LJTI3_2(,%rax,8)
.LBB3_186:
	leaq	-48(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.9, %edx
	jmp	.LBB3_195
.LBB3_187:
	cmpl	$92, %ebx
	jne	.LBB3_189
.LBB3_188:
	leaq	-48(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.5, %edx
	movl	%ebx, %ecx
	jmp	.LBB3_197
.LBB3_189:
	movslq	%ebx, %r14
	callq	__locale_ctype_ptr
	testb	$-105, 1(%rax,%r14)
	je	.LBB3_196
# %bb.190:
	leaq	-48(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.11, %edx
	movl	%ebx, %ecx
	jmp	.LBB3_197
.LBB3_191:
	leaq	-48(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.10, %edx
	jmp	.LBB3_195
.LBB3_192:
	leaq	-48(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB3_195
.LBB3_193:
	leaq	-48(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.6, %edx
	jmp	.LBB3_195
.LBB3_194:
	leaq	-48(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.7, %edx
.LBB3_195:
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB3_198
.LBB3_196:
	movzbl	%bl, %ecx
	leaq	-48(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.12, %edx
.LBB3_197:
	xorl	%eax, %eax
	callq	snprintf
.LBB3_198:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-208(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movl	$128, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	callq	snprintf
	movq	536(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_202
# %bb.199:
	movq	544(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_202
# %bb.200:
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_202
# %bb.201:
	callq	*%rax
	movq	$0, 536(%r15)
.LBB3_202:
	movq	136(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB3_204
# %bb.203:
	callq	sdsfree
	movq	$0, 136(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r15)
.LBB3_204:
	movl	$-1, 528(%r15)
	movl	$4, (%r15)
	leaq	-208(%rbp), %r12
	movq	%r12, %rdi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r15,%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_205:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_206:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_207:
	cmpl	$0, (%r15)
	movl	$-1, %eax
	jne	.LBB3_223
# %bb.208:
	movq	144(%r15), %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	jb	.LBB3_218
# %bb.209:
	movq	136(%r15), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	$-1, %edx
	callq	sdsrange
	movq	$0, 144(%r15)
	movq	136(%r15), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB3_215
# %bb.210:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI3_3(,%rdx,8)
.LBB3_211:
	shrq	$3, %rax
	jmp	.LBB3_217
.LBB3_212:
	movq	-17(%rcx), %rax
	jmp	.LBB3_217
.LBB3_213:
	movzwl	-5(%rcx), %eax
	jmp	.LBB3_217
.LBB3_214:
	movl	-9(%rcx), %eax
	jmp	.LBB3_217
.LBB3_215:
	xorl	%eax, %eax
	jmp	.LBB3_217
.LBB3_216:
	movzbl	-3(%rcx), %eax
.LBB3_217:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 152(%r15)
.LBB3_218:
	cmpl	$-1, 528(%r15)
	jne	.LBB3_222
# %bb.219:
	movq	-72(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB3_221
# %bb.220:
	movq	%rax, %rcx
	movq	536(%r15), %rax
	movq	%rax, (%rcx)
.LBB3_221:
	movq	$0, 536(%r15)
.LBB3_222:
	xorl	%eax, %eax
.LBB3_223:
	movl	$42, __A_VARIABLE(%rip)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_224:
	movl	$.L.str, %edi
	movl	$.L__func__.processItem, %edx
	movl	$.L.str.3, %ecx
	movl	$411, %esi              # imm = 0x19B
	callq	__assert_func
.LBB3_225:
	movl	$.L.str, %edi
	movl	$.L__func__.moveToNextTask, %edx
	movl	$.L.str.13, %ecx
	movl	$201, %esi
	callq	__assert_func
.LBB3_226:
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
	.quad	.LBB3_32
	.quad	.LBB3_46
	.quad	.LBB3_12
	.quad	.LBB3_224
	.quad	.LBB3_12
	.quad	.LBB3_12
.LJTI3_1:
	.quad	.LBB3_31
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_45
	.quad	.LBB3_11
	.quad	.LBB3_184
	.quad	.LBB3_44
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_184
	.quad	.LBB3_65
.LJTI3_2:
	.quad	.LBB3_186
	.quad	.LBB3_191
	.quad	.LBB3_192
	.quad	.LBB3_193
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_194
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_189
	.quad	.LBB3_188
.LJTI3_3:
	.quad	.LBB3_211
	.quad	.LBB3_216
	.quad	.LBB3_213
	.quad	.LBB3_214
	.quad	.LBB3_212
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
