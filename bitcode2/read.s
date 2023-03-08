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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.1:
	movq	544(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_4
# %bb.2:
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_4
# %bb.3:
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB1_4:
	movq	136(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_6
# %bb.5:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
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
	cmpl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	je	.LBB2_1
.LBB2_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_1:
	movq	%rsi, %r15
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB2_27
# %bb.2:
	movq	%rdx, %r14
	testq	%rdx, %rdx
	je	.LBB2_27
# %bb.3:
	movq	%rdi, %rbx
	cmpq	$0, 152(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_4
.LBB2_16:
	movq	136(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_17
# %bb.18:
	movq	%rax, %rcx
	movq	%rax, 136(%rbx)
	movzbl	-1(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %edx
	andb	$7, %dl
	xorl	%eax, %eax
	cmpb	$4, %dl
	ja	.LBB2_19
# %bb.20:
	movl	%esi, %edx
	andl	$7, %edx
	jmpq	*.LJTI2_1(,%rdx,8)
.LBB2_21:
	shrq	$3, %rsi
	jmp	.LBB2_26
.LBB2_4:
	movq	160(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_16
# %bb.5:
	movq	136(%rbx), %rdi
	movb	-1(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB2_15
# %bb.6:
	movzbl	%cl, %ecx
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_10:
	movzbl	-2(%rdi), %ecx
	movzbl	-3(%rdi), %edx
	jmp	.LBB2_11
.LBB2_17:
	movq	%rbx, %rdi
	callq	__redisReaderSetErrorOOM
	movl	$-1, %eax
	jmp	.LBB2_27
.LBB2_25:
	movq	-17(%rcx), %rsi
	jmp	.LBB2_26
.LBB2_23:
	movzwl	-5(%rcx), %esi
	jmp	.LBB2_26
.LBB2_24:
	movl	-9(%rcx), %esi
	jmp	.LBB2_26
.LBB2_22:
	movzbl	-3(%rcx), %esi
	jmp	.LBB2_26
.LBB2_19:
	xorl	%esi, %esi
.LBB2_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, 152(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_27
.LBB2_8:
	movl	-5(%rdi), %ecx
	subl	-9(%rdi), %ecx
	jmp	.LBB2_12
.LBB2_9:
	movq	-9(%rdi), %rcx
	subq	-17(%rdi), %rcx
	jmp	.LBB2_12
.LBB2_7:
	movzwl	-3(%rdi), %ecx
	movzwl	-5(%rdi), %edx
.LBB2_11:
	subq	%rdx, %rcx
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jbe	.LBB2_16
# %bb.13:
	callq	sdsfree
	callq	sdsempty
	movq	%rax, 136(%rbx)
	movq	$0, 144(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_16
# %bb.14:
	movl	$.L.str, %edi
	movl	$.L__func__.redisReaderFeed, %edx
	movl	$.L.str.1, %ecx
	movl	$461, %esi              # imm = 0x1CD
	callq	__assert_func
.LBB2_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_16
.Lfunc_end2:
	.size	redisReaderFeed, .Lfunc_end2-redisReaderFeed
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_10
	.quad	.LBB2_7
	.quad	.LBB2_8
	.quad	.LBB2_9
.LJTI2_1:
	.quad	.LBB2_21
	.quad	.LBB2_22
	.quad	.LBB2_23
	.quad	.LBB2_24
	.quad	.LBB2_25
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function __redisReaderSetErrorOOM
	.type	__redisReaderSetErrorOOM,@function
__redisReaderSetErrorOOM:               # @__redisReaderSetErrorOOM
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	536(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_4
# %bb.1:
	movq	544(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_4
# %bb.2:
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_4
# %bb.3:
	callq	*%rax
	movq	$0, 536(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_4:
	movq	136(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_6
# %bb.5:
	callq	sdsfree
	movq	$0, 136(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_6:
	movl	$-1, 528(%r14)
	movl	$5, (%r14)
	movl	$.L.str.2, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %ebx
	cmovbq	%rax, %rbx
	leaq	4(%r14), %rdi
	movl	$.L.str.2, %esi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 4(%r14,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	__redisReaderSetErrorOOM, .Lfunc_end3-__redisReaderSetErrorOOM
                                        # -- End function
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
	subq	$152, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB4_2
# %bb.1:
	movq	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_2:
	cmpl	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r11d
	jne	.LBB4_179
# %bb.3:
	cmpq	$0, 152(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_178
# %bb.4:
	movl	528(%r14), %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	jne	.LBB4_6
# %bb.5:
	movq	$-1, 168(%r14)
	movl	$-1, 176(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 184(%r14)
	movq	552(%r14), %rax
	movq	%rax, 200(%r14)
	movl	$0, 528(%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB4_156
# %bb.7:
	leaq	4(%r14), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB4_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_39 Depth 2
                                        #       Child Loop BB4_41 Depth 3
                                        #     Child Loop BB4_61 Depth 2
                                        #     Child Loop BB4_123 Depth 2
                                        #       Child Loop BB4_125 Depth 3
                                        #     Child Loop BB4_138 Depth 2
                                        #     Child Loop BB4_79 Depth 2
                                        #       Child Loop BB4_81 Depth 3
                                        #     Child Loop BB4_99 Depth 2
	movslq	%r13d, %rax
	leaq	(%rax,%rax,4), %r15
	leaq	(%r14,%r15,8), %rdi
	addq	$168, %rdi
	movl	168(%r14,%r15,8), %r8d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	js	.LBB4_9
# %bb.48:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r8), %eax
	cmpl	$5, %eax
	ja	.LBB4_166
# %bb.49:                               #   in Loop: Header=BB4_8 Depth=1
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_50:                               #   in Loop: Header=BB4_8 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	136(%r14), %rdi
	movq	144(%r14), %r10
	movq	152(%r14), %r9
	jmp	.LBB4_77
.LBB4_9:                                #   in Loop: Header=BB4_8 Depth=1
	movq	144(%r14), %rax
	movq	152(%r14), %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r9
	je	.LBB4_88
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	136(%r14), %rdi
	movq	%rdi, %rdx
	leaq	1(%rax), %r10
	movq	%r10, 144(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rdx
	je	.LBB4_91
# %bb.11:                               #   in Loop: Header=BB4_8 Depth=1
	movq	%r12, %rbx
	movsbl	(%rdx), %r12d
	movl	$42, __A_VARIABLE(%rip)
	leal	-36(%r12), %eax
	cmpl	$22, %eax
	ja	.LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$6, %r8d
	jmpq	*.LJTI4_1(,%rax,8)
.LBB4_76:                               #   in Loop: Header=BB4_8 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
.LBB4_77:                               #   in Loop: Header=BB4_8 Depth=1
	movl	%r10d, %edx
	notl	%edx
	addl	%r9d, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB4_87
# %bb.78:                               #   in Loop: Header=BB4_8 Depth=1
	addq	%r10, %rdi
	movslq	%edx, %rsi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_79:                               #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_81 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebx
	jge	.LBB4_83
# %bb.80:                               #   in Loop: Header=BB4_79 Depth=2
	movslq	%ebx, %rbx
	.p2align	4, 0x90
.LBB4_81:                               #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rdi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_84
# %bb.82:                               #   in Loop: Header=BB4_81 Depth=3
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rbx
	jl	.LBB4_81
.LBB4_83:                               #   in Loop: Header=BB4_79 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB4_84:                               #   in Loop: Header=BB4_79 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebx
	je	.LBB4_87
# %bb.85:                               #   in Loop: Header=BB4_79 Depth=2
	movslq	%ebx, %rbx
	cmpb	$10, 1(%rdi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_92
# %bb.86:                               #   in Loop: Header=BB4_79 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebx
	jl	.LBB4_79
	jmp	.LBB4_87
.LBB4_112:                              #   in Loop: Header=BB4_8 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$2, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
.LBB4_113:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %r13d
	je	.LBB4_114
# %bb.121:                              #   in Loop: Header=BB4_8 Depth=1
	movq	144(%r14), %r8
	movq	136(%r14), %rax
	movl	%r8d, %edx
	notl	%edx
	addl	152(%r14), %edx
	addq	%r8, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB4_47
# %bb.122:                              #   in Loop: Header=BB4_8 Depth=1
	movslq	%edx, %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_123:                              #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_125 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	jge	.LBB4_127
# %bb.124:                              #   in Loop: Header=BB4_123 Depth=2
	movslq	%esi, %rsi
	.p2align	4, 0x90
.LBB4_125:                              #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_128
# %bb.126:                              #   in Loop: Header=BB4_125 Depth=3
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	jl	.LBB4_125
.LBB4_127:                              #   in Loop: Header=BB4_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB4_128:                              #   in Loop: Header=BB4_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	je	.LBB4_47
# %bb.129:                              #   in Loop: Header=BB4_123 Depth=2
	movslq	%esi, %rbx
	cmpb	$10, 1(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_131
# %bb.130:                              #   in Loop: Header=BB4_123 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %esi
	cmpl	%edx, %ebx
	jl	.LBB4_123
	jmp	.LBB4_47
.LBB4_35:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$5, %r8d
	jmp	.LBB4_36
.LBB4_13:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$3, %r8d
.LBB4_36:                               #   in Loop: Header=BB4_8 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r8d, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
.LBB4_37:                               #   in Loop: Header=BB4_8 Depth=1
	movq	144(%r14), %r9
	movq	136(%r14), %rsi
	movl	%r9d, %ecx
	notl	%ecx
	addl	152(%r14), %ecx
	addq	%r9, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB4_47
# %bb.38:                               #   in Loop: Header=BB4_8 Depth=1
	movslq	%ecx, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_39:                               #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_41 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jge	.LBB4_43
# %bb.40:                               #   in Loop: Header=BB4_39 Depth=2
	cltq
	.p2align	4, 0x90
.LBB4_41:                               #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$13, (%rsi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_44
# %bb.42:                               #   in Loop: Header=BB4_41 Depth=3
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jl	.LBB4_41
.LBB4_43:                               #   in Loop: Header=BB4_39 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB4_44:                               #   in Loop: Header=BB4_39 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	je	.LBB4_47
# %bb.45:                               #   in Loop: Header=BB4_39 Depth=2
	movslq	%eax, %rdx
	cmpb	$10, 1(%rsi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_51
# %bb.46:                               #   in Loop: Header=BB4_39 Depth=2
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	cmpl	%ecx, %edx
	jl	.LBB4_39
	jmp	.LBB4_47
.LBB4_51:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rcx
	je	.LBB4_87
# %bb.52:                               #   in Loop: Header=BB4_8 Depth=1
	addl	$2, %eax
	movslq	%eax, %rcx
	addq	%r9, %rcx
	movq	%rcx, 144(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	544(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r8d
	jne	.LBB4_66
# %bb.53:                               #   in Loop: Header=BB4_8 Depth=1
	testq	%rax, %rax
	je	.LBB4_72
# %bb.54:                               #   in Loop: Header=BB4_8 Depth=1
	movq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_72
# %bb.55:                               #   in Loop: Header=BB4_8 Depth=1
	movb	(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r8
	cmpb	$45, %al
	je	.LBB4_57
# %bb.56:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
	cmpb	$43, %al
	jne	.LBB4_58
.LBB4_57:                               #   in Loop: Header=BB4_8 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB4_58:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rsi), %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$13, %dl
	jne	.LBB4_60
# %bb.59:                               #   in Loop: Header=BB4_8 Depth=1
	xorl	%eax, %eax
	jmp	.LBB4_64
.LBB4_66:                               #   in Loop: Header=BB4_8 Depth=1
	testq	%rax, %rax
	je	.LBB4_69
# %bb.67:                               #   in Loop: Header=BB4_8 Depth=1
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_69
# %bb.68:                               #   in Loop: Header=BB4_8 Depth=1
	callq	*%rax
	jmp	.LBB4_70
.LBB4_92:                               #   in Loop: Header=BB4_8 Depth=1
	movq	%rdi, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %rsi
	je	.LBB4_89
# %bb.93:                               #   in Loop: Header=BB4_8 Depth=1
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r8
	cmpb	$45, %al
	je	.LBB4_95
# %bb.94:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
	cmpb	$43, %al
	jne	.LBB4_96
.LBB4_95:                               #   in Loop: Header=BB4_8 Depth=1
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB4_96:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$13, %al
	jne	.LBB4_98
# %bb.97:                               #   in Loop: Header=BB4_8 Depth=1
	xorl	%edx, %edx
	jmp	.LBB4_101
.LBB4_131:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rbx
	je	.LBB4_87
# %bb.132:                              #   in Loop: Header=BB4_8 Depth=1
	addl	$2, %esi
	movslq	%esi, %rdx
	addq	%r8, %rdx
	movq	%rdx, 144(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
	cmpb	$45, %dl
	je	.LBB4_134
# %bb.133:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	cmpb	$43, %dl
	jne	.LBB4_135
.LBB4_134:                              #   in Loop: Header=BB4_8 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB4_135:                              #   in Loop: Header=BB4_8 Depth=1
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$13, %dl
	jne	.LBB4_137
# %bb.136:                              #   in Loop: Header=BB4_8 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB4_141
.LBB4_72:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	jmp	.LBB4_73
.LBB4_69:                               #   in Loop: Header=BB4_8 Depth=1
	movslq	%r8d, %rax
	jmp	.LBB4_70
.LBB4_98:                               # %.preheader3
                                        #   in Loop: Header=BB4_8 Depth=1
	addq	$1, %rdi
	xorl	%edx, %edx
.LBB4_99:                               #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %cl
	ja	.LBB4_181
# %bb.100:                              #   in Loop: Header=BB4_99 Depth=2
	movsbq	%al, %rax
	leaq	(%rdx,%rdx,4), %rcx
	leaq	(%rax,%rcx,2), %rdx
	addq	$-48, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$13, %al
	jne	.LBB4_99
.LBB4_101:                              #   in Loop: Header=BB4_8 Depth=1
	imulq	%r8, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	js	.LBB4_102
# %bb.105:                              #   in Loop: Header=BB4_8 Depth=1
	leaq	(%rbx,%rdx), %rax
	addq	%r10, %rax
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rax
	ja	.LBB4_88
# %bb.106:                              #   in Loop: Header=BB4_8 Depth=1
	addq	%rdx, %rbx
	addq	$4, %rbx
	movq	544(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB4_109
# %bb.107:                              #   in Loop: Header=BB4_8 Depth=1
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_109
# %bb.108:                              #   in Loop: Header=BB4_8 Depth=1
	addq	$2, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*%rcx
	jmp	.LBB4_109
.LBB4_137:                              # %.preheader6
                                        #   in Loop: Header=BB4_8 Depth=1
	addq	$1, %rax
	xorl	%r12d, %r12d
.LBB4_138:                              #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %sil
	ja	.LBB4_139
# %bb.140:                              #   in Loop: Header=BB4_138 Depth=2
	movsbq	%dl, %rdx
	leaq	(%r12,%r12,4), %rsi
	leaq	(%rdx,%rsi,2), %r12
	addq	$-48, %r12
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rax), %edx
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$13, %dl
	jne	.LBB4_138
.LBB4_141:                              #   in Loop: Header=BB4_8 Depth=1
	imulq	%rcx, %r12
	jmp	.LBB4_142
.LBB4_60:                               # %.preheader
                                        #   in Loop: Header=BB4_8 Depth=1
	addq	$1, %rsi
	xorl	%eax, %eax
.LBB4_61:                               #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rdx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %bl
	ja	.LBB4_62
# %bb.63:                               #   in Loop: Header=BB4_61 Depth=2
	movsbq	%dl, %rdx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdx,%rax,2), %rax
	addq	$-48, %rax
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rsi), %edx
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$13, %dl
	jne	.LBB4_61
.LBB4_64:                               #   in Loop: Header=BB4_8 Depth=1
	imulq	%r8, %rax
	jmp	.LBB4_65
.LBB4_181:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_102:                              #   in Loop: Header=BB4_8 Depth=1
	addq	$2, %rbx
	movq	544(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
	testq	%rcx, %rcx
	je	.LBB4_109
# %bb.103:                              #   in Loop: Header=BB4_8 Depth=1
	movq	24(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_109
# %bb.104:                              #   in Loop: Header=BB4_8 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*%rcx
.LBB4_109:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_110
# %bb.111:                              #   in Loop: Header=BB4_8 Depth=1
	addq	%rbx, 144(%r14)
	cmpl	$0, 528(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_75
	jmp	.LBB4_74
.LBB4_139:                              #   in Loop: Header=BB4_8 Depth=1
	movq	$-1, %r12
.LBB4_142:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	544(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r12
	je	.LBB4_143
# %bb.149:                              #   in Loop: Header=BB4_8 Depth=1
	testq	%rax, %rax
	je	.LBB4_151
# %bb.150:                              #   in Loop: Header=BB4_8 Depth=1
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_151
# %bb.154:                              #   in Loop: Header=BB4_8 Depth=1
	movq	%rdi, %rbx
	movl	%r12d, %esi
	callq	*%rcx
	movl	$-1, %r11d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB4_152
	jmp	.LBB4_155
.LBB4_151:                              #   in Loop: Header=BB4_8 Depth=1
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
.LBB4_152:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jle	.LBB4_160
# %bb.153:                              #   in Loop: Header=BB4_8 Depth=1
	movl	%r12d, 172(%r14,%r15,8)
	movq	%rax, 184(%r14,%r15,8)
	movslq	528(%r14), %rcx
	addq	$1, %rcx
	movl	%ecx, 528(%r14)
	leaq	(%rcx,%rcx,4), %rdx
	movq	$-1, 168(%r14,%rdx,8)
	movl	$0, 176(%r14,%rdx,8)
	movq	$0, 184(%r14,%rdx,8)
	movq	%rbx, 192(%r14,%rdx,8)
	movq	552(%r14), %rcx
	movq	%rcx, 200(%r14,%rdx,8)
	jmp	.LBB4_161
.LBB4_143:                              #   in Loop: Header=BB4_8 Depth=1
	testq	%rax, %rax
	je	.LBB4_145
# %bb.144:                              #   in Loop: Header=BB4_8 Depth=1
	movq	24(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_145
# %bb.147:                              #   in Loop: Header=BB4_8 Depth=1
	callq	*%rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	movq	-48(%rbp), %r12         # 8-byte Reload
	jne	.LBB4_146
	jmp	.LBB4_148
.LBB4_160:                              #   in Loop: Header=BB4_8 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rbx
	callq	moveToNextTask
	movq	%rbx, %rax
	movl	$-1, %r11d
.LBB4_161:                              #   in Loop: Header=BB4_8 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB4_162
.LBB4_145:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ebx
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB4_146:                              #   in Loop: Header=BB4_8 Depth=1
	movq	%r14, %rdi
	callq	moveToNextTask
	movl	$-1, %r11d
	movq	%rbx, %rax
.LBB4_162:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB4_164
# %bb.163:                              #   in Loop: Header=BB4_8 Depth=1
	movq	%rax, 536(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_164:                              #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_165
.LBB4_62:                               #   in Loop: Header=BB4_8 Depth=1
	movq	$-1, %rax
.LBB4_65:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rsi
	callq	*%rcx
.LBB4_70:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_148
# %bb.71:                               #   in Loop: Header=BB4_8 Depth=1
	movl	528(%r14), %r13d
.LBB4_73:                               #   in Loop: Header=BB4_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB4_75
.LBB4_74:                               #   in Loop: Header=BB4_8 Depth=1
	movq	%rax, 536(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_75:                               #   in Loop: Header=BB4_8 Depth=1
	movq	%r14, %rdi
	callq	moveToNextTask
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r11d
.LBB4_165:                              #   in Loop: Header=BB4_8 Depth=1
	movl	528(%r14), %r13d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jns	.LBB4_8
	jmp	.LBB4_156
.LBB4_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_87:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_88:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_89:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_90:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_91:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_156:
	cmpl	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_179
# %bb.157:
	movq	144(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1024, %rsi             # imm = 0x400
	jb	.LBB4_174
# %bb.158:
	movq	136(%r14), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	$-1, %edx
	callq	sdsrange
	movq	$0, 144(%r14)
	movq	136(%r14), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB4_159
# %bb.167:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI4_3(,%rdx,8)
.LBB4_168:
	shrq	$3, %rax
	jmp	.LBB4_173
.LBB4_170:
	movzwl	-5(%rcx), %eax
	jmp	.LBB4_173
.LBB4_172:
	movq	-17(%rcx), %rax
	jmp	.LBB4_173
.LBB4_159:
	xorl	%eax, %eax
	jmp	.LBB4_173
.LBB4_169:
	movzbl	-3(%rcx), %eax
	jmp	.LBB4_173
.LBB4_171:
	movl	-9(%rcx), %eax
.LBB4_173:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 152(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_174:
	cmpl	$-1, 528(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_178
# %bb.175:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB4_177
# %bb.176:
	movq	536(%r14), %rax
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_177:
	movq	$0, 536(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_178:
	xorl	%r11d, %r11d
.LBB4_179:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r11d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_14:
	movl	$42, __A_VARIABLE(%rip)
	leal	-7(%r12), %eax
	cmpl	$27, %eax
	ja	.LBB4_15
# %bb.180:
	jmpq	*.LJTI4_2(,%rax,8)
.LBB4_22:
	leaq	-56(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.9, %edx
	jmp	.LBB4_19
.LBB4_114:
	movq	536(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_118
# %bb.115:
	movq	544(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_118
# %bb.116:
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_118
# %bb.117:
	callq	*%rax
	movq	$0, 536(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_118:
	movq	%r12, %rbx
	movq	136(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_120
# %bb.119:
	callq	sdsfree
	movq	$0, 136(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_120:
	movl	$-1, 528(%r14)
	movl	$4, (%r14)
	movl	$.L.str.15, %edi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r12d
	cmovbq	%rax, %r12
	movl	$.L.str.15, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy
	movb	$0, 4(%r14,%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	movl	$-1, %r11d
	jmp	.LBB4_156
.LBB4_148:
	movq	%r14, %rdi
	callq	__redisReaderSetErrorOOM
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r11d
	jmp	.LBB4_156
.LBB4_15:
	cmpl	$92, %r12d
	jne	.LBB4_24
.LBB4_16:
	leaq	-56(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.5, %edx
	movl	%r12d, %ecx
	jmp	.LBB4_27
.LBB4_110:
	movq	%r14, %rdi
	callq	__redisReaderSetErrorOOM
	movl	$-1, %r11d
	jmp	.LBB4_89
.LBB4_24:
	movslq	%r12d, %r15
	callq	__locale_ctype_ptr
	testb	$-105, 1(%rax,%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_26
# %bb.25:
	leaq	-56(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.11, %edx
	movl	%r12d, %ecx
	jmp	.LBB4_27
.LBB4_23:
	leaq	-56(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.10, %edx
	jmp	.LBB4_19
.LBB4_21:
	leaq	-56(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB4_19
.LBB4_18:
	leaq	-56(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.6, %edx
	jmp	.LBB4_19
.LBB4_20:
	leaq	-56(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.7, %edx
.LBB4_19:
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB4_28
.LBB4_26:
	movzbl	%r12b, %ecx
	leaq	-56(%rbp), %rdi
	movl	$8, %esi
	movl	$.L.str.12, %edx
.LBB4_27:
	xorl	%eax, %eax
	callq	snprintf
.LBB4_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-192(%rbp), %rdi
	leaq	-56(%rbp), %rcx
	movl	$128, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	callq	snprintf
	movq	536(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_32
# %bb.29:
	movq	544(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_32
# %bb.30:
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_32
# %bb.31:
	callq	*%rax
	movq	$0, 536(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_32:
	movq	136(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_34
# %bb.33:
	callq	sdsfree
	movq	$0, 136(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 144(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_34:
	movl	$-1, 528(%r14)
	movl	$4, (%r14)
	leaq	-192(%rbp), %r12
	movq	%r12, %rdi
	callq	strlen
	cmpq	$127, %rax
	movl	$127, %r13d
	cmovbq	%rax, %r13
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, 4(%r14,%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	movl	$-1, %r11d
	jmp	.LBB4_90
.LBB4_155:
	movq	%r14, %rdi
	callq	__redisReaderSetErrorOOM
	movl	$-1, %r11d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB4_156
.LBB4_166:
	movl	$.L.str, %edi
	movl	$.L__func__.processItem, %edx
	movl	$.L.str.3, %ecx
	movl	$411, %esi              # imm = 0x19B
	callq	__assert_func
.Lfunc_end4:
	.size	redisReaderGetReply, .Lfunc_end4-redisReaderGetReply
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_50
	.quad	.LBB4_113
	.quad	.LBB4_37
	.quad	.LBB4_166
	.quad	.LBB4_37
	.quad	.LBB4_37
.LJTI4_1:
	.quad	.LBB4_76
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_112
	.quad	.LBB4_35
	.quad	.LBB4_14
	.quad	.LBB4_36
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_14
	.quad	.LBB4_13
.LJTI4_2:
	.quad	.LBB4_22
	.quad	.LBB4_23
	.quad	.LBB4_21
	.quad	.LBB4_18
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_20
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_16
.LJTI4_3:
	.quad	.LBB4_168
	.quad	.LBB4_169
	.quad	.LBB4_170
	.quad	.LBB4_171
	.quad	.LBB4_172
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function moveToNextTask
	.type	moveToNextTask,@function
moveToNextTask:                         # @moveToNextTask
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movslq	528(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	js	.LBB5_9
# %bb.1:
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rdi,%rax,8), %rax
	addq	$176, %rax
	movq	%rdx, %rcx
	addq	$1, %rcx
	addl	$-1, %edx
	.p2align	4, 0x90
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rcx
	je	.LBB5_3
# %bb.4:                                #   in Loop: Header=BB5_2 Depth=1
	cmpl	$2, -48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_10
# %bb.5:                                #   in Loop: Header=BB5_2 Depth=1
	movl	-44(%rax), %esi
	movl	(%rax), %r8d
	leal	-1(%rsi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, %r8d
	jne	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_2 Depth=1
	movl	%edx, 528(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-40, %rax
	addl	$-1, %edx
	addq	$-1, %rcx
	jg	.LBB5_2
	jmp	.LBB5_9
.LBB5_3:
	movl	$-1, 528(%rdi)
	jmp	.LBB5_9
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %r8d
	jge	.LBB5_11
# %bb.8:
	movq	$-1, -8(%rax)
	addl	$1, %r8d
	movl	%r8d, (%rax)
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB5_10:
	movl	$.L.str, %edi
	movl	$.L__func__.moveToNextTask, %edx
	movl	$.L.str.13, %ecx
	movl	$201, %esi
	callq	__assert_func
.LBB5_11:
	movl	$.L.str, %edi
	movl	$.L__func__.moveToNextTask, %edx
	movl	$.L.str.14, %ecx
	movl	$206, %esi
	callq	__assert_func
.Lfunc_end5:
	.size	moveToNextTask, .Lfunc_end5-moveToNextTask
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
