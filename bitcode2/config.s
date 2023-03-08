	.text
	.file	"config.c"
	.globl	configEnumGetValue      # -- Begin function configEnumGetValue
	.p2align	4, 0x90
	.type	configEnumGetValue,@function
configEnumGetValue:                     # @configEnumGetValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, %r14d     # imm = 0x80000000
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.1:                                # %.preheader
	movq	%rsi, %r15
	addq	$16, %rbx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB0_2
	jmp	.LBB0_5
.LBB0_3:
	movl	-8(%rbx), %r14d
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	configEnumGetValue, .Lfunc_end0-configEnumGetValue
                                        # -- End function
	.globl	configEnumGetName       # -- Begin function configEnumGetName
	.p2align	4, 0x90
	.type	configEnumGetName,@function
configEnumGetName:                      # @configEnumGetName
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_5
# %bb.1:
	cmpl	%esi, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_6
# %bb.2:                                # %.preheader
	addq	$24, %rdi
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_4 Depth=1
	cmpl	%esi, (%rdi)
	leaq	16(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_4
	jmp	.LBB1_6
.LBB1_5:
	xorl	%eax, %eax
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	configEnumGetName, .Lfunc_end1-configEnumGetName
                                        # -- End function
	.globl	configEnumGetNameOrUnknown # -- Begin function configEnumGetNameOrUnknown
	.p2align	4, 0x90
	.type	configEnumGetNameOrUnknown,@function
configEnumGetNameOrUnknown:             # @configEnumGetNameOrUnknown
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_5
# %bb.1:
	cmpl	%esi, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_6
# %bb.2:                                # %.preheader
	addq	$24, %rdi
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_4 Depth=1
	cmpl	%esi, (%rdi)
	leaq	16(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_4
	jmp	.LBB2_6
.LBB2_5:
	xorl	%ecx, %ecx
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movl	$.L.str.27, %eax
	cmovneq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	configEnumGetNameOrUnknown, .Lfunc_end2-configEnumGetNameOrUnknown
                                        # -- End function
	.globl	evictPolicyToString     # -- Begin function evictPolicyToString
	.p2align	4, 0x90
	.type	evictPolicyToString,@function
evictPolicyToString:                    # @evictPolicyToString
# %bb.0:
	movl	server+2712(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	maxmemory_policy_enum(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB3_5
# %bb.1:
	cmpl	%eax, maxmemory_policy_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_6
# %bb.2:                                # %.preheader
	movl	$maxmemory_policy_enum+24, %edx
	.p2align	4, 0x90
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_4 Depth=1
	cmpl	%eax, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_4
	jmp	.LBB3_6
.LBB3_5:
	xorl	%ecx, %ecx
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movl	$.L.str.27, %eax
	cmovneq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	evictPolicyToString, .Lfunc_end3-evictPolicyToString
                                        # -- End function
	.globl	yesnotoi                # -- Begin function yesnotoi
	.p2align	4, 0x90
	.type	yesnotoi,@function
yesnotoi:                               # @yesnotoi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.28, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_1
# %bb.2:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%eax
	sbbl	%eax, %eax
	jmp	.LBB4_3
.LBB4_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	yesnotoi, .Lfunc_end4-yesnotoi
                                        # -- End function
	.globl	appendServerSaveParams  # -- Begin function appendServerSaveParams
	.p2align	4, 0x90
	.type	appendServerSaveParams,@function
appendServerSaveParams:                 # @appendServerSaveParams
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	server+2104(%rip), %rdi
	movslq	server+2112(%rip), %rsi
	shlq	$4, %rsi
	addq	$16, %rsi
	callq	zrealloc
	movq	%rax, server+2104(%rip)
	movslq	server+2112(%rip), %rcx
	leal	1(%rcx), %edx
	shlq	$4, %rcx
	movq	%rbx, (%rax,%rcx)
	movl	%r14d, 8(%rax,%rcx)
	movl	%edx, server+2112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	appendServerSaveParams, .Lfunc_end5-appendServerSaveParams
                                        # -- End function
	.globl	resetServerSaveParams   # -- Begin function resetServerSaveParams
	.p2align	4, 0x90
	.type	resetServerSaveParams,@function
resetServerSaveParams:                  # @resetServerSaveParams
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+2104(%rip), %rdi
	callq	zfree
	movq	$0, server+2104(%rip)
	movl	$0, server+2112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	resetServerSaveParams, .Lfunc_end6-resetServerSaveParams
                                        # -- End function
	.globl	queueLoadModule         # -- Begin function queueLoadModule
	.p2align	4, 0x90
	.type	queueLoadModule,@function
queueLoadModule:                        # @queueLoadModule
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r13
	movslq	%r15d, %rbx
	leaq	(,%rbx,8), %rdi
	callq	zmalloc
	movq	%rax, 16(%r13)
	movq	%r12, %rdi
	callq	sdsnew
	movq	%rax, (%r13)
	movl	%ebx, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB7_11
# %bb.1:
	movl	%r15d, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB7_2
.LBB7_9:                                #   in Loop: Header=BB7_2 Depth=1
	movq	-17(%rdi), %rsi
	.p2align	4, 0x90
.LBB7_10:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createRawStringObject
	movq	16(%r13), %rcx
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	je	.LBB7_11
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB7_3
# %bb.4:                                #   in Loop: Header=BB7_2 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_5:                                #   in Loop: Header=BB7_2 Depth=1
	shrq	$3, %rsi
	jmp	.LBB7_10
.LBB7_3:                                #   in Loop: Header=BB7_2 Depth=1
	xorl	%esi, %esi
	jmp	.LBB7_10
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB7_10
.LBB7_7:                                #   in Loop: Header=BB7_2 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB7_10
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB7_10
.LBB7_11:
	movq	server+200(%rip), %rdi
	movq	%r13, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	queueLoadModule, .Lfunc_end7-queueLoadModule
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_5
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_9
                                        # -- End function
	.text
	.globl	loadServerConfigFromString # -- Begin function loadServerConfigFromString
	.p2align	4, 0x90
	.type	loadServerConfigFromString,@function
loadServerConfigFromString:             # @loadServerConfigFromString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	callq	strlen
	leaq	-76(%rbp), %r8
	movl	$.L.str.29, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB8_482
# %bb.1:
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB8_5
.LBB8_2:                                #   in Loop: Header=BB8_5 Depth=1
	movq	%r14, %rdi
	xorl	%esi, %esi
.LBB8_3:                                #   in Loop: Header=BB8_5 Depth=1
	callq	sdsfreesplitres
.LBB8_4:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-76(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r12
	jge	.LBB8_483
.LBB8_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_471 Depth 2
                                        #     Child Loop BB8_257 Depth 2
                                        #     Child Loop BB8_107 Depth 2
                                        #     Child Loop BB8_87 Depth 2
                                        #     Child Loop BB8_57 Depth 2
                                        #     Child Loop BB8_31 Depth 2
	movq	%r12, %r13
	addq	$1, %r12
	movq	(%rbx,%r13,8), %rdi
	movl	$.L.str.30, %esi
	callq	sdstrim
	movq	%rax, (%rbx,%r13,8)
	movb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$35, %cl
	je	.LBB8_4
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB8_4
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %rdi
	leaq	-60(%rbp), %rsi
	callq	sdssplitargs
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_486
# %bb.8:                                #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %r14
	cmpl	$0, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_2
# %bb.9:                                #   in Loop: Header=BB8_5 Depth=1
	movq	(%r14), %rdi
	callq	sdstolower
	movq	(%r14), %r15
	movl	$.L.str.32, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	-60(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_12
# %bb.10:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, %ecx
	jne	.LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1732(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB8_36
	jmp	.LBB8_487
.LBB8_12:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_15
# %bb.13:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1736(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB8_36
	jmp	.LBB8_544
.LBB8_15:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.36, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_20
# %bb.16:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_20
# %bb.17:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_26
# %bb.18:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+856(%rip)
.LBB8_19:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB8_36
	jmp	.LBB8_517
.LBB8_20:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.38, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_23
# %bb.21:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_23
# %bb.22:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+216(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jb	.LBB8_36
	jmp	.LBB8_542
.LBB8_23:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.40, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_27
# %bb.24:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_27
# %bb.25:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+220(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB8_36
	jmp	.LBB8_540
.LBB8_26:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+856(%rip)
	jmp	.LBB8_34
.LBB8_27:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.42, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jl	.LBB8_37
# %bb.28:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_37
# %bb.29:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %ecx
	jg	.LBB8_541
# %bb.30:                               #   in Loop: Header=BB8_5 Depth=1
	addl	$-1, %ecx
	movl	%ecx, %r13d
	movl	%ecx, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB8_31:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14,%rbx,8), %rdi
	callq	zstrdup
	movq	%rax, server+224(,%rbx,8)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jne	.LBB8_31
# %bb.32:                               #   in Loop: Header=BB8_5 Depth=1
	movl	%r13d, server+352(%rip)
.LBB8_33:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB8_34:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB8_35:                               #   in Loop: Header=BB8_5 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB8_36:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-60(%rbp), %esi
	movq	%r14, %rdi
	jmp	.LBB8_3
.LBB8_37:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.44, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_40
# %bb.38:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_40
# %bb.39:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+360(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_36
.LBB8_40:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.45, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_44
# %bb.41:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_44
# %bb.42:                               #   in Loop: Header=BB8_5 Depth=1
	callq	__errno
	movl	$0, (%rax)
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	strtol
	movl	%eax, server+368(%rip)
	callq	__errno
	cmpl	$0, (%rax)
	movl	server+368(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_538
# %bb.43:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$512, %eax              # imm = 0x200
	jb	.LBB8_36
	jmp	.LBB8_538
.LBB8_44:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.47, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_48
# %bb.45:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_53
# %bb.46:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_53
# %bb.47:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	chdir
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_36
	jmp	.LBB8_537
.LBB8_48:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	jne	.LBB8_59
# %bb.49:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, %ebx
	movq	16(%r14), %rdi
	callq	atoi
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB8_539
# %bb.50:                               #   in Loop: Header=BB8_5 Depth=1
	movl	%eax, %r15d
	testl	%eax, %eax
	js	.LBB8_539
# %bb.51:                               #   in Loop: Header=BB8_5 Depth=1
	movslq	%ebx, %rbx
	movq	server+2104(%rip), %rdi
	movslq	server+2112(%rip), %rsi
	shlq	$4, %rsi
	addq	$16, %rsi
	callq	zrealloc
	movq	%rax, server+2104(%rip)
	movslq	server+2112(%rip), %rcx
	leal	1(%rcx), %edx
	shlq	$4, %rcx
	movq	%rbx, (%rax,%rcx)
	movl	%r15d, 8(%rax,%rcx)
	movl	%edx, server+2112(%rip)
.LBB8_52:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_33
.LBB8_53:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.52, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_62
# %bb.54:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_62
# %bb.55:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	8(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	loglevel_enum(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_535
# %bb.56:                               # %.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$loglevel_enum+16, %ebx
.LBB8_57:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_68
# %bb.58:                               #   in Loop: Header=BB8_57 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB8_57
	jmp	.LBB8_535
.LBB8_59:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB8_36
# %bb.60:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	movl	$.L.str.49, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_36
# %bb.61:                               #   in Loop: Header=BB8_5 Depth=1
	movq	server+2104(%rip), %rdi
	callq	zfree
	movq	$0, server+2104(%rip)
	movl	$0, server+2112(%rip)
	jmp	.LBB8_67
.LBB8_62:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_69
# %bb.63:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_69
# %bb.64:                               #   in Loop: Header=BB8_5 Depth=1
	movq	server+2240(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2240(%rip)
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_67
# %bb.65:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.55, %esi
	movq	%rax, %rdi
	callq	fopen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_533
# %bb.66:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %rdi
	callq	fclose
	movl	$42, __A_VARIABLE(%rip)
.LBB8_67:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_36
.LBB8_68:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, server+1728(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_36
	jmp	.LBB8_536
.LBB8_69:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.57, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_73
# %bb.70:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_73
# %bb.71:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_82
# %bb.72:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+176(%rip)
	jmp	.LBB8_19
.LBB8_73:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.58, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_77
# %bb.74:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_77
# %bb.75:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_89
# %bb.76:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2248(%rip)
	jmp	.LBB8_19
.LBB8_77:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.59, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB8_83
# %bb.78:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_83
# %bb.79:                               #   in Loop: Header=BB8_5 Depth=1
	movq	server+2256(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_81
# %bb.80:                               #   in Loop: Header=BB8_5 Depth=1
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB8_81:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2256(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_36
.LBB8_82:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+176(%rip)
	jmp	.LBB8_34
.LBB8_83:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.60, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jne	.LBB8_90
# %bb.84:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_90
# %bb.85:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	syslog_facility_enum(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_530
# %bb.86:                               # %.preheader1
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$syslog_facility_enum+16, %ebx
.LBB8_87:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_93
# %bb.88:                               #   in Loop: Header=BB8_87 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB8_87
	jmp	.LBB8_530
.LBB8_89:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2248(%rip)
	jmp	.LBB8_34
.LBB8_90:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.62, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_94
# %bb.91:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_94
# %bb.92:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1792(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jg	.LBB8_36
	jmp	.LBB8_532
.LBB8_93:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, server+2264(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_36
	jmp	.LBB8_531
.LBB8_94:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.64, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_97
# %bb.95:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_97
# %bb.96:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	loadServerConfig
	jmp	.LBB8_34
.LBB8_97:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.65, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_100
# %bb.98:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_100
# %bb.99:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2700(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_36
	jmp	.LBB8_529
.LBB8_100:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.67, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_103
# %bb.101:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_103
# %bb.102:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2704(%rip)
	jmp	.LBB8_34
.LBB8_103:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.68, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_109
# %bb.104:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_109
# %bb.105:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	maxmemory_policy_enum(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_526
# %bb.106:                              # %.preheader3
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$maxmemory_policy_enum+16, %ebx
.LBB8_107:                              #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_112
# %bb.108:                              #   in Loop: Header=BB8_107 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB8_107
	jmp	.LBB8_526
.LBB8_109:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.70, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_113
# %bb.110:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_113
# %bb.111:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2716(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jg	.LBB8_36
	jmp	.LBB8_528
.LBB8_112:                              #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_36
	jmp	.LBB8_527
.LBB8_113:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.72, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_116
# %bb.114:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_116
# %bb.115:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2728(%rip)
	jmp	.LBB8_34
.LBB8_116:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.73, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_119
# %bb.117:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_119
# %bb.118:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+1784(%rip)
	jmp	.LBB8_34
.LBB8_119:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_122
# %bb.120:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_122
# %bb.121:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2720(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_524
.LBB8_122:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.76, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_125
# %bb.123:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_125
# %bb.124:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2724(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_525
.LBB8_125:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.78, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_129
# %bb.126:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.79, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_130
# %bb.127:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_130
.LBB8_128:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, server+2464(%rip)
	movq	16(%r14), %rdi
	callq	atoi
	movl	%eax, server+2472(%rip)
	movl	$1, server+2500(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB8_35
.LBB8_129:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_128
.LBB8_130:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.80, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_134
# %bb.131:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.81, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_135
# %bb.132:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_135
.LBB8_133:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2372(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jg	.LBB8_36
	jmp	.LBB8_522
.LBB8_134:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_133
.LBB8_135:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.83, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_138
# %bb.136:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_138
# %bb.137:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2476(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jg	.LBB8_36
	jmp	.LBB8_523
.LBB8_138:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.85, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_142
# %bb.139:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_142
# %bb.140:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_149
# %bb.141:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2576(%rip)
	jmp	.LBB8_19
.LBB8_142:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.86, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_146
# %bb.143:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_146
# %bb.144:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_154
# %bb.145:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2444(%rip)
	jmp	.LBB8_19
.LBB8_146:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.87, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_150
# %bb.147:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_150
# %bb.148:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2448(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_520
.LBB8_149:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2576(%rip)
	jmp	.LBB8_34
.LBB8_150:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.89, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_155
# %bb.151:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_155
# %bb.152:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB8_521
# %bb.153:                              #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %rdi
	callq	resizeReplicationBacklog
	jmp	.LBB8_33
.LBB8_154:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2444(%rip)
	jmp	.LBB8_34
.LBB8_155:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.91, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_158
# %bb.156:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_158
# %bb.157:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	cltq
	movq	%rax, server+2416(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_518
.LBB8_158:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.93, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_162
# %bb.159:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_162
# %bb.160:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2456(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_173
# %bb.161:                              #   in Loop: Header=BB8_5 Depth=1
	callq	zstrdup
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_174
.LBB8_162:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.94, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_167
# %bb.163:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.95, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_168
# %bb.164:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_168
.LBB8_165:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_175
# %bb.166:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2552(%rip)
	jmp	.LBB8_19
.LBB8_167:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_165
.LBB8_168:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.96, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_176
# %bb.169:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.97, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_177
# %bb.170:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_177
.LBB8_171:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_182
# %bb.172:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2556(%rip)
	jmp	.LBB8_19
.LBB8_173:                              #   in Loop: Header=BB8_5 Depth=1
	xorl	%eax, %eax
.LBB8_174:                              #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, server+2456(%rip)
	jmp	.LBB8_34
.LBB8_175:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2552(%rip)
	jmp	.LBB8_34
.LBB8_176:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_171
.LBB8_177:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.98, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_183
# %bb.178:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.99, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_184
# %bb.179:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_184
.LBB8_180:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_192
# %bb.181:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2560(%rip)
	jmp	.LBB8_19
.LBB8_182:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2556(%rip)
	jmp	.LBB8_34
.LBB8_183:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_180
.LBB8_184:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.100, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_188
# %bb.185:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_188
# %bb.186:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_197
# %bb.187:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2128(%rip)
	jmp	.LBB8_19
.LBB8_188:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.101, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_193
# %bb.189:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_193
# %bb.190:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_202
# %bb.191:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2132(%rip)
	jmp	.LBB8_19
.LBB8_192:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2560(%rip)
	jmp	.LBB8_34
.LBB8_193:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.102, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_198
# %bb.194:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_198
# %bb.195:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_207
# %bb.196:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+88(%rip)
	jmp	.LBB8_19
.LBB8_197:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2128(%rip)
	jmp	.LBB8_34
.LBB8_198:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.103, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_203
# %bb.199:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_203
# %bb.200:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_212
# %bb.201:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+3080(%rip)
	jmp	.LBB8_19
.LBB8_202:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2132(%rip)
	jmp	.LBB8_34
.LBB8_203:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.104, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_208
# %bb.204:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_208
# %bb.205:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_218
# %bb.206:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+3084(%rip)
	jmp	.LBB8_19
.LBB8_207:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+88(%rip)
	jmp	.LBB8_34
.LBB8_208:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.105, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_213
# %bb.209:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_213
# %bb.210:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_219
# %bb.211:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+3088(%rip)
	jmp	.LBB8_19
.LBB8_212:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+3080(%rip)
	jmp	.LBB8_34
.LBB8_213:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.106, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_220
# %bb.214:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.107, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_221
# %bb.215:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_221
.LBB8_216:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_229
# %bb.217:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2656(%rip)
	jmp	.LBB8_19
.LBB8_218:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+3084(%rip)
	jmp	.LBB8_34
.LBB8_219:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+3088(%rip)
	jmp	.LBB8_34
.LBB8_220:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_216
.LBB8_221:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.108, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_225
# %bb.222:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_225
# %bb.223:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_519
# %bb.224:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+1744(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB8_36
	jmp	.LBB8_515
.LBB8_225:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.110, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_230
# %bb.226:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_230
# %bb.227:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_237
# %bb.228:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+1804(%rip)
	jmp	.LBB8_19
.LBB8_229:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2656(%rip)
	jmp	.LBB8_34
.LBB8_230:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.111, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_234
# %bb.231:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_234
# %bb.232:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_243
# %bb.233:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+32(%rip)
	jmp	.LBB8_19
.LBB8_234:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.112, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_238
# %bb.235:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_238
# %bb.236:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	testl	%eax, %eax
	movl	$1, %ecx
	cmovlel	%ecx, %eax
	cmpl	$501, %eax              # imm = 0x1F5
	movl	$500, %ecx              # imm = 0x1F4
	cmovgel	%ecx, %eax
	movl	%eax, server+36(%rip)
	jmp	.LBB8_34
.LBB8_237:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+1804(%rip)
	jmp	.LBB8_34
.LBB8_238:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.113, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_244
# %bb.239:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_244
# %bb.240:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_252
# %bb.241:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_516
# %bb.242:                              #   in Loop: Header=BB8_5 Depth=1
	movl	%ecx, server+1880(%rip)
	jmp	.LBB8_33
.LBB8_243:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+32(%rip)
	jmp	.LBB8_34
.LBB8_244:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.114, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_248
# %bb.245:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_248
# %bb.246:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	pathIsBaseName
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_514
# %bb.247:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+1888(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+1888(%rip)
	jmp	.LBB8_34
.LBB8_248:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.116, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_253
# %bb.249:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_253
# %bb.250:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_263
# %bb.251:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+1896(%rip)
	jmp	.LBB8_19
.LBB8_252:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	movl	%ecx, server+1880(%rip)
	jmp	.LBB8_33
.LBB8_253:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.117, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_259
# %bb.254:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_259
# %bb.255:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	aof_fsync_enum(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_511
# %bb.256:                              # %.preheader5
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$aof_fsync_enum+16, %ebx
.LBB8_257:                              #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_262
# %bb.258:                              #   in Loop: Header=BB8_257 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB8_257
	jmp	.LBB8_511
.LBB8_259:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.119, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_264
# %bb.260:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_264
# %bb.261:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1900(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_513
.LBB8_262:                              #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, server+1884(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_36
	jmp	.LBB8_512
.LBB8_263:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+1896(%rip)
	jmp	.LBB8_34
.LBB8_264:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.121, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_267
# %bb.265:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_267
# %bb.266:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+1904(%rip)
	jmp	.LBB8_34
.LBB8_267:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.122, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_271
# %bb.268:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_271
# %bb.269:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_279
# %bb.270:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2016(%rip)
	jmp	.LBB8_19
.LBB8_271:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.123, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_275
# %bb.272:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_275
# %bb.273:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_284
# %bb.274:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2020(%rip)
	jmp	.LBB8_19
.LBB8_275:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.124, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_280
# %bb.276:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_280
# %bb.277:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_290
# %bb.278:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2032(%rip)
	jmp	.LBB8_19
.LBB8_279:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2016(%rip)
	jmp	.LBB8_34
.LBB8_280:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.125, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_285
# %bb.281:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_285
# %bb.282:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_291
# %bb.283:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2036(%rip)
	jmp	.LBB8_19
.LBB8_284:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2020(%rip)
	jmp	.LBB8_34
.LBB8_285:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.126, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_292
# %bb.286:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_292
# %bb.287:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$513, %rax              # imm = 0x201
	jae	.LBB8_509
# %bb.288:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_295
# %bb.289:                              #   in Loop: Header=BB8_5 Depth=1
	callq	zstrdup
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_296
.LBB8_290:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2032(%rip)
	jmp	.LBB8_34
.LBB8_291:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2036(%rip)
	jmp	.LBB8_34
.LBB8_292:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.128, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_297
# %bb.293:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_297
# %bb.294:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+104(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+104(%rip)
	jmp	.LBB8_34
.LBB8_295:                              #   in Loop: Header=BB8_5 Depth=1
	xorl	%eax, %eax
.LBB8_296:                              #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, server+96(%rip)
	jmp	.LBB8_34
.LBB8_297:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.129, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_301
# %bb.298:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_301
# %bb.299:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	pathIsBaseName
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_510
# %bb.300:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2120(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2120(%rip)
	jmp	.LBB8_34
.LBB8_301:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.131, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_304
# %bb.302:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_304
# %bb.303:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1760(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1001, %eax             # imm = 0x3E9
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jb	.LBB8_36
	jmp	.LBB8_507
.LBB8_304:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.133, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_307
# %bb.305:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_307
# %bb.306:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1764(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1001, %eax             # imm = 0x3E9
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jb	.LBB8_36
	jmp	.LBB8_508
.LBB8_307:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.135, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_310
# %bb.308:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_310
# %bb.309:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+1752(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_36
	jmp	.LBB8_505
.LBB8_310:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.137, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_313
# %bb.311:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_313
# %bb.312:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1768(%rip)
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jb	.LBB8_36
	jmp	.LBB8_506
.LBB8_313:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.139, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_316
# %bb.314:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_316
# %bb.315:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1772(%rip)
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jb	.LBB8_36
	jmp	.LBB8_503
.LBB8_316:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.141, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_319
# %bb.317:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_319
# %bb.318:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+1776(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_36
	jmp	.LBB8_504
.LBB8_319:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.143, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_322
# %bb.320:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_322
# %bb.321:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2800(%rip)
	jmp	.LBB8_34
.LBB8_322:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.144, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_325
# %bb.323:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_325
# %bb.324:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2808(%rip)
	jmp	.LBB8_34
.LBB8_325:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.145, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_328
# %bb.326:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_328
# %bb.327:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2848(%rip)
	jmp	.LBB8_34
.LBB8_328:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.146, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_331
# %bb.329:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_331
# %bb.330:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	cltq
	movq	%rax, server+2856(%rip)
	jmp	.LBB8_34
.LBB8_331:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.147, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_333
# %bb.332:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_35
.LBB8_333:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.148, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_335
# %bb.334:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_35
.LBB8_335:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.149, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_338
# %bb.336:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_338
# %bb.337:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2864(%rip)
	jmp	.LBB8_34
.LBB8_338:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.150, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_341
# %bb.339:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_341
# %bb.340:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2868(%rip)
	jmp	.LBB8_34
.LBB8_341:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.151, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_344
# %bb.342:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_344
# %bb.343:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2816(%rip)
	jmp	.LBB8_34
.LBB8_344:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.152, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_347
# %bb.345:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_347
# %bb.346:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2824(%rip)
	jmp	.LBB8_34
.LBB8_347:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.153, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_350
# %bb.348:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_350
# %bb.349:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2832(%rip)
	jmp	.LBB8_34
.LBB8_350:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.154, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_353
# %bb.351:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_353
# %bb.352:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2840(%rip)
	jmp	.LBB8_34
.LBB8_353:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.155, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_360
# %bb.354:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_360
# %bb.355:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	lookupCommand
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_501
# %bb.356:                              #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %r15
	movq	server+56(%rip), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_499
# %bb.357:                              #   in Loop: Header=BB8_5 Depth=1
	movq	16(%r14), %rdi
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB8_396
# %bb.358:                              #   in Loop: Header=BB8_5 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_359:                              #   in Loop: Header=BB8_5 Depth=1
	shrq	$3, %rax
	jmp	.LBB8_401
.LBB8_360:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.160, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_364
# %bb.361:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_364
# %bb.362:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_404
# %bb.363:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2924(%rip)
	jmp	.LBB8_19
.LBB8_364:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.161, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_367
# %bb.365:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_367
# %bb.366:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2936(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2936(%rip)
	jmp	.LBB8_34
.LBB8_367:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.162, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_370
# %bb.368:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_370
# %bb.369:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2968(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2968(%rip)
	jmp	.LBB8_34
.LBB8_370:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.163, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_373
# %bb.371:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_373
# %bb.372:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2976(%rip)
	jmp	.LBB8_451
.LBB8_373:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.164, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_376
# %bb.374:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_376
# %bb.375:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2980(%rip)
	jmp	.LBB8_451
.LBB8_376:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.165, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_380
# %bb.377:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_380
# %bb.378:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_405
# %bb.379:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2960(%rip)
	jmp	.LBB8_19
.LBB8_380:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.166, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_383
# %bb.381:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_383
# %bb.382:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+2928(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jg	.LBB8_36
	jmp	.LBB8_500
.LBB8_383:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.168, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_386
# %bb.384:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_386
# %bb.385:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2952(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_497
.LBB8_386:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.170, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_394
# %bb.387:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.171, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_389
# %bb.388:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_395
.LBB8_389:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.173, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_406
# %bb.390:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.174, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_407
# %bb.391:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_407
.LBB8_392:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_410
# %bb.393:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2964(%rip)
	jmp	.LBB8_19
.LBB8_394:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_389
.LBB8_395:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2956(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_498
.LBB8_396:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_403
.LBB8_397:                              #   in Loop: Header=BB8_5 Depth=1
	movzbl	-3(%rdi), %eax
	jmp	.LBB8_401
.LBB8_398:                              #   in Loop: Header=BB8_5 Depth=1
	movzwl	-5(%rdi), %eax
	jmp	.LBB8_401
.LBB8_399:                              #   in Loop: Header=BB8_5 Depth=1
	movl	-9(%rdi), %eax
	jmp	.LBB8_401
.LBB8_400:                              #   in Loop: Header=BB8_5 Depth=1
	movq	-17(%rdi), %rax
.LBB8_401:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_33
# %bb.402:                              #   in Loop: Header=BB8_5 Depth=1
	callq	sdsdup
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_502
.LBB8_403:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_52
.LBB8_404:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2924(%rip)
	jmp	.LBB8_34
.LBB8_405:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2960(%rip)
	jmp	.LBB8_34
.LBB8_406:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_392
.LBB8_407:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.175, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_411
# %bb.408:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_411
# %bb.409:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+3032(%rip)
	jmp	.LBB8_34
.LBB8_410:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2964(%rip)
	jmp	.LBB8_34
.LBB8_411:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.176, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_415
# %bb.412:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_415
# %bb.413:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_418
# %bb.414:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%eax
	sbbl	%eax, %eax
	jmp	.LBB8_419
.LBB8_415:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.177, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_420
# %bb.416:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_420
# %bb.417:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+1184(%rip)
	jmp	.LBB8_34
.LBB8_418:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB8_419:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, server+3076(%rip)
	jmp	.LBB8_34
.LBB8_420:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.178, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_423
# %bb.421:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_423
# %bb.422:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_495
.LBB8_423:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.180, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_426
# %bb.424:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_426
# %bb.425:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+1192(%rip)
	jmp	.LBB8_34
.LBB8_426:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.181, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_432
# %bb.427:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_432
# %bb.428:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	getClientTypeByName
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.182, %r15d
	cmpl	$-1, %eax
	je	.LBB8_534
# %bb.429:                              #   in Loop: Header=BB8_5 Depth=1
	movl	%eax, %ebx
	cmpl	$3, %eax
	je	.LBB8_534
# %bb.430:                              #   in Loop: Header=BB8_5 Depth=1
	movq	16(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	24(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, %r15
	movq	32(%r14), %rdi
	callq	atoi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB8_496
# %bb.431:                              #   in Loop: Header=BB8_5 Depth=1
	movslq	%ebx, %rcx
	shlq	$3, %rcx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, server+1808(%rcx,%rcx,2)
	movq	%r15, server+1816(%rcx,%rcx,2)
	cltq
	movq	%rax, server+1824(%rcx,%rcx,2)
	jmp	.LBB8_33
.LBB8_432:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.184, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_436
# %bb.433:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_436
# %bb.434:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_440
# %bb.435:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, server+2180(%rip)
	jmp	.LBB8_19
.LBB8_436:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.185, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_441
# %bb.437:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.186, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_442
# %bb.438:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_442
.LBB8_439:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2580(%rip)
	jmp	.LBB8_34
.LBB8_440:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+2180(%rip)
	jmp	.LBB8_34
.LBB8_441:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_439
.LBB8_442:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.187, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_446
# %bb.443:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.188, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_447
# %bb.444:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_447
.LBB8_445:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2592(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2592(%rip)
	jmp	.LBB8_34
.LBB8_446:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_445
.LBB8_447:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.189, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_452
# %bb.448:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.190, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_453
# %bb.449:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_453
.LBB8_450:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2584(%rip)
.LBB8_451:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jb	.LBB8_36
	jmp	.LBB8_543
.LBB8_452:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_450
.LBB8_453:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.191, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_457
# %bb.454:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.192, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_458
# %bb.455:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_458
.LBB8_456:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2432(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_493
.LBB8_457:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_456
.LBB8_458:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.194, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_462
# %bb.459:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.195, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_463
# %bb.460:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_463
.LBB8_461:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2436(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jns	.LBB8_36
	jmp	.LBB8_494
.LBB8_462:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_461
.LBB8_463:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.197, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_467
# %bb.464:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_467
# %bb.465:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	keyspaceEventsStringToFlags
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB8_492
# %bb.466:                              #   in Loop: Header=BB8_5 Depth=1
	movl	%eax, server+2920(%rip)
	jmp	.LBB8_33
.LBB8_467:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.199, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_473
# %bb.468:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_473
# %bb.469:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	supervised_mode_enum(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_489
# %bb.470:                              # %.preheader7
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$supervised_mode_enum+16, %ebx
.LBB8_471:                              #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_476
# %bb.472:                              #   in Loop: Header=BB8_471 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB8_471
	jmp	.LBB8_489
.LBB8_473:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.201, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, -56(%rbp)           # 4-byte Folded Reload
	jl	.LBB8_477
# %bb.474:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_477
# %bb.475:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	movq	%r14, %rsi
	addq	$16, %rsi
	movl	-56(%rbp), %edx         # 4-byte Reload
	addl	$-2, %edx
	callq	queueLoadModule
	jmp	.LBB8_34
.LBB8_476:                              #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, server+1800(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_36
	jmp	.LBB8_490
.LBB8_477:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.202, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_488
# %bb.478:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB8_35
# %bb.479:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$0, server+164(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_491
# %bb.480:                              #   in Loop: Header=BB8_5 Depth=1
	movq	%r14, %rdi
	addq	$8, %rdi
	movl	-56(%rbp), %esi         # 4-byte Reload
	addl	$-1, %esi
	callq	sentinelHandleConfiguration
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB8_36
# %bb.481:
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_545
.LBB8_482:
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB8_483:
	cmpl	$0, server+2924(%rip)
	movq	server+2464(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_485
# %bb.484:
	testq	%rax, %rax
	jne	.LBB8_547
.LBB8_485:
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	sdsfreesplitres
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_486:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.31, %r15d
	jmp	.LBB8_545
.LBB8_487:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.33, %r15d
	jmp	.LBB8_545
.LBB8_488:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.204, %r15d
	jmp	.LBB8_545
.LBB8_489:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, server+1800(%rip) # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
.LBB8_490:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.200, %r15d
	jmp	.LBB8_545
.LBB8_491:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.203, %r15d
	jmp	.LBB8_545
.LBB8_492:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.198, %r15d
	jmp	.LBB8_545
.LBB8_493:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.193, %r15d
	jmp	.LBB8_545
.LBB8_494:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.196, %r15d
	jmp	.LBB8_545
.LBB8_495:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.179, %r15d
	jmp	.LBB8_545
.LBB8_496:
	movl	$.L.str.183, %r15d
	jmp	.LBB8_534
.LBB8_497:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.169, %r15d
	jmp	.LBB8_545
.LBB8_498:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.172, %r15d
	jmp	.LBB8_545
.LBB8_499:
	movl	$.L.str.157, %edi
	movl	$.L.str.158, %esi
	movl	$619, %edx              # imm = 0x26B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB8_500:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.167, %r15d
	jmp	.LBB8_545
.LBB8_501:
	movl	$.L.str.156, %r15d
	jmp	.LBB8_534
.LBB8_502:
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.159, %r15d
	jmp	.LBB8_534
.LBB8_503:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.140, %r15d
	jmp	.LBB8_545
.LBB8_504:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.142, %r15d
	jmp	.LBB8_545
.LBB8_505:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.136, %r15d
	jmp	.LBB8_545
.LBB8_506:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.138, %r15d
	jmp	.LBB8_545
.LBB8_507:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.132, %r15d
	jmp	.LBB8_545
.LBB8_508:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.134, %r15d
	jmp	.LBB8_545
.LBB8_509:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.127, %r15d
	jmp	.LBB8_545
.LBB8_510:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.130, %r15d
	jmp	.LBB8_545
.LBB8_511:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, server+1884(%rip) # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
.LBB8_512:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.118, %r15d
	jmp	.LBB8_545
.LBB8_513:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.120, %r15d
	jmp	.LBB8_545
.LBB8_514:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.115, %r15d
	jmp	.LBB8_545
.LBB8_515:
	movl	$.L.str.37, %r15d
	jmp	.LBB8_545
.LBB8_516:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_517:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.37, %r15d
	jmp	.LBB8_545
.LBB8_518:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.92, %r15d
	jmp	.LBB8_545
.LBB8_519:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, server+1744(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.109, %r15d
	jmp	.LBB8_545
.LBB8_520:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.88, %r15d
	jmp	.LBB8_545
.LBB8_521:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.90, %r15d
	jmp	.LBB8_545
.LBB8_522:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.82, %r15d
	jmp	.LBB8_545
.LBB8_523:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.84, %r15d
	jmp	.LBB8_545
.LBB8_524:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.75, %r15d
	jmp	.LBB8_545
.LBB8_525:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.77, %r15d
	jmp	.LBB8_545
.LBB8_526:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, server+2712(%rip) # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
.LBB8_527:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.69, %r15d
	jmp	.LBB8_545
.LBB8_528:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.71, %r15d
	jmp	.LBB8_545
.LBB8_529:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.66, %r15d
	jmp	.LBB8_545
.LBB8_530:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, server+2264(%rip) # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
.LBB8_531:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.61, %r15d
	jmp	.LBB8_545
.LBB8_532:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.63, %r15d
	jmp	.LBB8_545
.LBB8_533:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	callq	sdsempty
	movq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r15
.LBB8_534:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_545
.LBB8_535:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, server+1728(%rip) # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
.LBB8_536:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.53, %r15d
	jmp	.LBB8_545
.LBB8_537:
	movq	8(%r14), %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.51, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB8_538:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.46, %r15d
	jmp	.LBB8_545
.LBB8_539:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.48, %r15d
	jmp	.LBB8_545
.LBB8_540:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.41, %r15d
	jmp	.LBB8_545
.LBB8_541:
	movl	$.L.str.43, %r15d
	jmp	.LBB8_545
.LBB8_542:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
.LBB8_543:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.39, %r15d
	jmp	.LBB8_545
.LBB8_544:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.35, %r15d
.LBB8_545:
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	movq	%r12, -72(%rbp)         # 8-byte Spill
.LBB8_546:
	movl	$42, __A_VARIABLE(%rip)
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.206, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.207, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movslq	%r13d, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rdx
	movl	$.L.str.208, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.209, %esi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB8_547:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	leal	-1(%rax), %r13d
	movl	$.L.str.205, %r15d
	jmp	.LBB8_546
.Lfunc_end8:
	.size	loadServerConfigFromString, .Lfunc_end8-loadServerConfigFromString
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_359
	.quad	.LBB8_397
	.quad	.LBB8_398
	.quad	.LBB8_399
	.quad	.LBB8_400
                                        # -- End function
	.text
	.globl	loadServerConfig        # -- Begin function loadServerConfig
	.p2align	4, 0x90
	.type	loadServerConfig,@function
loadServerConfig:                       # @loadServerConfig
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$1040, %rsp             # imm = 0x410
	movq	%rsi, %r14
	movq	%rdi, %r12
	callq	sdsempty
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_11
# %bb.1:
	cmpb	$45, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_4
# %bb.2:
	cmpb	$0, 1(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_3
.LBB9_4:
	movl	$.L.str.210, %esi
	movq	%r12, %rdi
	callq	fopen
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_14
.LBB9_5:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1072(%rbp), %rdi
	movl	$1025, %esi             # imm = 0x401
	movq	%r15, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_8
# %bb.6:                                # %.preheader
	leaq	-1072(%rbp), %r12
	.p2align	4, 0x90
.LBB9_7:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	$1025, %esi             # imm = 0x401
	movq	%r15, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB9_7
.LBB9_8:
	callq	__getreent
	cmpq	8(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_10
# %bb.9:
	movq	%r15, %rdi
	callq	fclose
	movl	$42, __A_VARIABLE(%rip)
.LBB9_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB9_13
# %bb.12:
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB9_13:
	movq	%rbx, %rdi
	callq	loadServerConfigFromString
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$1040, %rsp             # imm = 0x410
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_3:
	callq	__getreent
	movq	8(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_5
.LBB9_14:
	movl	$.L.str.211, %esi
	movl	$3, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end9:
	.size	loadServerConfig, .Lfunc_end9-loadServerConfig
                                        # -- End function
	.globl	configSetCommand        # -- Begin function configSetCommand
	.p2align	4, 0x90
	.type	configSetCommand,@function
configSetCommand:                       # @configSetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	movl	(%rsi), %ecx
	shrl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB10_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB10_320
.LBB10_2:
	movq	24(%rax), %r15
	movl	(%r15), %eax
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB10_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB10_321
.LBB10_4:
	movq	8(%rsi), %rbx
	movl	$.L.str.129, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_99
# %bb.5:
	movl	$.L.str.126, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_101
# %bb.6:
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_105
# %bb.7:
	movl	$.L.str.162, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_108
# %bb.8:
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_116
# %bb.9:
	movl	$.L.str.113, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_125
# %bb.10:
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_130
# %bb.11:
	movl	$.L.str.50, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_133
# %bb.12:
	movl	$.L.str.181, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_142
# %bb.13:
	movl	$.L.str.197, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_149
# %bb.14:
	movl	$.L.str.187, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_147
# %bb.15:
	movl	$.L.str.188, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_147
# %bb.16:
	movl	$.L.str.100, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_195
# %bb.17:
	movl	$.L.str.85, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_204
# %bb.18:
	movl	$.L.str.86, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_210
# %bb.19:
	movl	$.L.str.165, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_219
# %bb.20:
	movl	$.L.str.173, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_215
# %bb.21:
	movl	$.L.str.174, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_215
# %bb.22:
	movl	$.L.str.122, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_227
# %bb.23:
	movl	$.L.str.123, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_231
# %bb.24:
	movq	%r14, %r12
	movl	$.L.str.124, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_234
# %bb.25:
	movl	$.L.str.125, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_241
# %bb.26:
	movl	$.L.str.94, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_238
# %bb.27:
	movl	$.L.str.95, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_238
# %bb.28:
	movl	$.L.str.96, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_248
# %bb.29:
	movl	$.L.str.97, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_248
# %bb.30:
	movl	$.L.str.98, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_253
# %bb.31:
	movl	$.L.str.99, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_253
# %bb.32:
	movl	$.L.str.102, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_258
# %bb.33:
	movl	$.L.str.108, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_262
# %bb.34:
	movl	$.L.str.36, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_265
# %bb.35:
	movl	$.L.str.184, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_269
# %bb.36:
	movl	$.L.str.103, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_273
# %bb.37:
	movl	$.L.str.104, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_277
# %bb.38:
	movl	$.L.str.105, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_284
# %bb.39:
	movl	$.L.str.106, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_281
# %bb.40:
	movl	$.L.str.107, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_281
# %bb.41:
	movl	$.L.str.116, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_294
# %bb.42:
	movl	$.L.str.111, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_297
# %bb.43:
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_300
# %bb.44:
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_304
# %bb.45:
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_308
# %bb.46:
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_311
# %bb.47:
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_314
# %bb.48:
	movl	$.L.str.131, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_317
# %bb.49:
	movl	$.L.str.133, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_323
# %bb.50:
	movl	$.L.str.135, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_326
# %bb.51:
	movl	$.L.str.137, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_329
# %bb.52:
	movl	$.L.str.139, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_332
# %bb.53:
	movl	$.L.str.141, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_335
# %bb.54:
	movl	$.L.str.119, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_338
# %bb.55:
	movl	$.L.str.143, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_341
# %bb.56:
	movl	$.L.str.144, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_344
# %bb.57:
	movl	$.L.str.145, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_347
# %bb.58:
	movl	$.L.str.146, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_350
# %bb.59:
	movl	$.L.str.149, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_353
# %bb.60:
	movl	$.L.str.150, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_356
# %bb.61:
	movl	$.L.str.151, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_359
# %bb.62:
	movl	$.L.str.152, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_362
# %bb.63:
	movl	$.L.str.153, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_365
# %bb.64:
	movl	$.L.str.154, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_368
# %bb.65:
	movl	$.L.str.175, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_371
# %bb.66:
	movl	$.L.str.177, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_374
# %bb.67:
	movl	$.L.str.180, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_377
# %bb.68:
	movl	$.L.str.178, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_383
# %bb.69:
	movl	$.L.str.80, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_380
# %bb.70:
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_380
# %bb.71:
	movl	$.L.str.83, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_386
# %bb.72:
	movl	$.L.str.91, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_389
# %bb.73:
	movl	$.L.str.87, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_395
# %bb.74:
	movl	$.L.str.185, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_392
# %bb.75:
	movl	$.L.str.186, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_392
# %bb.76:
	movl	$.L.str.189, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_398
# %bb.77:
	movl	$.L.str.190, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_398
# %bb.78:
	movl	$.L.str.191, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_401
# %bb.79:
	movl	$.L.str.192, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_401
# %bb.80:
	movl	$.L.str.194, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_404
# %bb.81:
	movl	$.L.str.195, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_404
# %bb.82:
	movl	$.L.str.166, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_407
# %bb.83:
	movl	$.L.str.163, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_410
# %bb.84:
	movl	$.L.str.164, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_413
# %bb.85:
	movl	$.L.str.168, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_419
# %bb.86:
	movl	$.L.str.170, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_416
# %bb.87:
	movl	$.L.str.171, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_416
# %bb.88:
	movl	$.L.str.112, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_422
# %bb.89:
	movl	$.L.str.220, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_425
# %bb.90:
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_429
# %bb.91:
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_435
# %bb.92:
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_438
# %bb.93:
	movl	$.L.str.89, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_442
# %bb.94:
	movl	$.L.str.121, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_445
# %bb.95:
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_448
# %bb.96:
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_452
# %bb.97:
	movl	$.L.str.117, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_456
# %bb.98:
	movl	$.L.str.222, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	jmp	.LBB10_135
.LBB10_99:
	movq	8(%r15), %rdi
	callq	pathIsBaseName
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_107
# %bb.100:
	movq	server+2120(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	callq	zstrdup
	movq	%rax, server+2120(%rip)
	jmp	.LBB10_139
.LBB10_101:
	movq	8(%r15), %rax
	movb	-1(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %cl
	cmpb	$4, %cl
	je	.LBB10_111
# %bb.102:
	cmpb	$3, %cl
	je	.LBB10_110
# %bb.103:
	cmpb	$2, %cl
	jne	.LBB10_113
# %bb.104:
	movzwl	-5(%rax), %eax
	jmp	.LBB10_112
.LBB10_105:
	movq	server+2456(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_123
# %bb.106:
	callq	zstrdup
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, server+2456(%rip)
	jmp	.LBB10_139
.LBB10_107:
	movl	$.L.str.130, %esi
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB10_141
.LBB10_108:
	movq	server+2968(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_129
# %bb.109:
	callq	zstrdup
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, server+2968(%rip)
	jmp	.LBB10_139
.LBB10_110:
	movl	-9(%rax), %eax
	jmp	.LBB10_112
.LBB10_111:
	movq	-17(%rax), %rax
.LBB10_112:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$512, %rax              # imm = 0x200
	jbe	.LBB10_114
	jmp	.LBB10_184
.LBB10_113:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_114:
	movq	server+96(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_124
# %bb.115:
	callq	zstrdup
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, server+96(%rip)
	jmp	.LBB10_139
.LBB10_116:
	movl	server+2700(%rip), %ebx
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_183
# %bb.117:
	testq	%rcx, %rcx
	jle	.LBB10_183
# %bb.118:
	movslq	%ebx, %rax
	movl	%ecx, server+2700(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jle	.LBB10_138
# %bb.119:
	callq	adjustOpenFilesLimit
	movl	server+2700(%rip), %edx
	cmpq	%rdx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_145
# %bb.120:
	movq	server+72(%rip), %rdi
	callq	aeGetSetSize
	movl	server+2700(%rip), %esi
	subl	$-128, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jae	.LBB10_138
# %bb.121:
	movq	server+72(%rip), %rdi
	callq	aeResizeSetSize
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB10_138
# %bb.122:
	movl	$.L.str.215, %esi
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB10_146
.LBB10_123:
	xorl	%eax, %eax
	movq	%rax, server+2456(%rip)
	jmp	.LBB10_139
.LBB10_124:
	xorl	%eax, %eax
	movq	%rax, server+96(%rip)
	jmp	.LBB10_139
.LBB10_125:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_136
# %bb.126:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_183
# %bb.127:
	cmpl	$0, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_171
# %bb.128:
	callq	stopAppendOnly
.LBB10_171:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_138
.LBB10_129:
	xorl	%eax, %eax
	movq	%rax, server+2968(%rip)
	jmp	.LBB10_139
.LBB10_130:
	movq	8(%r15), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB10_155
# %bb.131:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI10_1(,%rax,8)
.LBB10_132:
	shrq	$3, %rsi
	jmp	.LBB10_156
.LBB10_133:
	movq	8(%r15), %rdi
	callq	chdir
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB10_140
# %bb.134:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.218, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
.LBB10_135:
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB10_141
.LBB10_136:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_138
# %bb.137:
	callq	startAppendOnly
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB10_138
# %bb.173:
	movl	$.L.str.216, %esi
	movq	%r14, %rdi
.LBB10_174:
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_141
.LBB10_142:
	movq	8(%r15), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB10_179
# %bb.143:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_144:
	shrq	$3, %rsi
	jmp	.LBB10_180
.LBB10_145:
	movl	$.L.str.214, %esi
	movq	%r14, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB10_146:
	movl	%ebx, server+2700(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_141
.LBB10_147:
	movq	server+2592(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_172
# %bb.148:
	callq	zstrdup
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, server+2592(%rip)
	jmp	.LBB10_139
.LBB10_149:
	movq	8(%r15), %rdi
	callq	keyspaceEventsStringToFlags
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_183
# %bb.150:
	movl	%eax, server+2920(%rip)
	jmp	.LBB10_138
.LBB10_151:
	movq	-17(%rdi), %rsi
	jmp	.LBB10_156
.LBB10_152:
	movzwl	-5(%rdi), %esi
	jmp	.LBB10_156
.LBB10_153:
	movl	-9(%rdi), %esi
	jmp	.LBB10_156
.LBB10_154:
	movzbl	-3(%rdi), %esi
	jmp	.LBB10_156
.LBB10_155:
	xorl	%esi, %esi
.LBB10_156:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-52(%rbp), %r8
	movl	$.L.str.217, %edx
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, %r13
	movl	-52(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	jne	.LBB10_166
# %bb.157:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB10_167
# %bb.158:
	xorl	%ebx, %ebx
	leaq	-48(%rbp), %r12
	jmp	.LBB10_160
.LBB10_159:                             #   in Loop: Header=BB10_160 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	-52(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB10_167
.LBB10_160:                             # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	movq	%r12, %rsi
	movl	$10, %edx
	callq	strtoll
	movq	-48(%rbp), %rcx
	cmpb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_165
# %bb.161:                              #   in Loop: Header=BB10_160 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	jne	.LBB10_163
# %bb.162:                              #   in Loop: Header=BB10_160 Depth=1
	testq	%rax, %rax
	jle	.LBB10_165
.LBB10_163:                             #   in Loop: Header=BB10_160 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	je	.LBB10_159
# %bb.164:                              #   in Loop: Header=BB10_160 Depth=1
	testq	%rax, %rax
	jns	.LBB10_159
.LBB10_165:
	movl	-52(%rbp), %esi
	movq	%r13, %rdi
	callq	sdsfreesplitres
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_183
.LBB10_166:
	movq	%r13, %rdi
	jmp	.LBB10_182
.LBB10_167:
	movq	server+2104(%rip), %rdi
	callq	zfree
	movq	$0, server+2104(%rip)
	movl	$0, server+2112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB10_170
# %bb.168:                              # %.preheader
	xorl	%ebx, %ebx
.LBB10_169:                             # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, %r15
	movq	8(%r13,%rbx,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, %r12
	movq	server+2104(%rip), %rdi
	movslq	server+2112(%rip), %rsi
	shlq	$4, %rsi
	addq	$16, %rsi
	callq	zrealloc
	movq	%rax, server+2104(%rip)
	movslq	server+2112(%rip), %rcx
	leal	1(%rcx), %edx
	shlq	$4, %rcx
	movq	%r15, (%rax,%rcx)
	movl	%r12d, 8(%rax,%rcx)
	movl	%edx, server+2112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %esi
	jg	.LBB10_169
.LBB10_170:
	movq	%r13, %rdi
	callq	sdsfreesplitres
.LBB10_138:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_139:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_140:
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB10_141:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_172:
	xorl	%eax, %eax
	movq	%rax, server+2592(%rip)
	jmp	.LBB10_139
.LBB10_175:
	movq	-17(%rdi), %rsi
	jmp	.LBB10_180
.LBB10_176:
	movzwl	-5(%rdi), %esi
	jmp	.LBB10_180
.LBB10_177:
	movl	-9(%rdi), %esi
	jmp	.LBB10_180
.LBB10_178:
	movzbl	-3(%rdi), %esi
	jmp	.LBB10_180
.LBB10_179:
	xorl	%esi, %esi
.LBB10_180:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %r8
	movl	$.L.str.217, %edx
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, %r13
	movl	-48(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %sil
	je	.LBB10_185
# %bb.181:
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
.LBB10_182:
	callq	sdsfreesplitres
.LBB10_183:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_184:
	movq	8(%r15), %rdx
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movl	$.L.str.223, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB10_141
.LBB10_185:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB10_199
# %bb.186:                              # %.preheader4
	xorl	%ebx, %ebx
	leaq	-52(%rbp), %r12
	jmp	.LBB10_189
.LBB10_187:                             #   in Loop: Header=BB10_189 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_188:                             #   in Loop: Header=BB10_189 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rbx
	jge	.LBB10_200
.LBB10_189:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13,%rbx,8), %rdi
	testb	$3, %bl
	je	.LBB10_192
# %bb.190:                              #   in Loop: Header=BB10_189 Depth=1
	movq	%r12, %rsi
	callq	memtoll
	movl	-52(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB10_208
# %bb.191:                              #   in Loop: Header=BB10_189 Depth=1
	testl	%ecx, %ecx
	je	.LBB10_188
	jmp	.LBB10_208
.LBB10_192:                             #   in Loop: Header=BB10_189 Depth=1
	callq	getClientTypeByName
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_194
# %bb.193:                              #   in Loop: Header=BB10_189 Depth=1
	cmpl	$3, %eax
	jne	.LBB10_187
.LBB10_194:
	movl	-48(%rbp), %esi
	movq	%r13, %rdi
	callq	sdsfreesplitres
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_209
.LBB10_195:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_214
# %bb.196:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_183
# %bb.197:
	xorl	%eax, %eax
	jmp	.LBB10_198
.LBB10_199:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_203
.LBB10_200:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB10_203
# %bb.201:                              # %.preheader2
	xorl	%r14d, %r14d
.LBB10_202:                             # =>This Inner Loop Header: Depth=1
	movq	(%r13,%r14,8), %rdi
	callq	getClientTypeByName
	movl	%eax, %r15d
	movq	8(%r13,%r14,8), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, %r12
	movq	16(%r13,%r14,8), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, %rbx
	movq	24(%r13,%r14,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movslq	%r15d, %rcx
	shlq	$3, %rcx
	movq	%r12, server+1808(%rcx,%rcx,2)
	movq	%rbx, server+1816(%rcx,%rcx,2)
	cltq
	movq	%rax, server+1824(%rcx,%rcx,2)
	addq	$4, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %esi
	jg	.LBB10_202
.LBB10_203:
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	sdsfreesplitres
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB10_140
.LBB10_204:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_223
# %bb.205:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_183
# %bb.206:
	xorl	%eax, %eax
	jmp	.LBB10_207
.LBB10_208:
	movl	-48(%rbp), %esi
	movq	%r13, %rdi
	callq	sdsfreesplitres
.LBB10_209:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB10_183
.LBB10_210:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_224
# %bb.211:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_183
# %bb.212:
	xorl	%eax, %eax
	jmp	.LBB10_213
.LBB10_214:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_198:
	movl	%eax, server+2128(%rip)
	jmp	.LBB10_138
.LBB10_215:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_225
# %bb.216:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_183
# %bb.217:
	xorl	%eax, %eax
	jmp	.LBB10_218
.LBB10_219:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_226
# %bb.220:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_183
# %bb.221:
	xorl	%eax, %eax
	jmp	.LBB10_222
.LBB10_223:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_207:
	movl	%eax, server+2576(%rip)
	jmp	.LBB10_138
.LBB10_224:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_213:
	movl	%eax, server+2444(%rip)
	jmp	.LBB10_138
.LBB10_225:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_218:
	movl	%eax, server+2964(%rip)
	jmp	.LBB10_138
.LBB10_226:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_222:
	movl	%eax, server+2960(%rip)
	jmp	.LBB10_138
.LBB10_227:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_237
# %bb.228:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_183
# %bb.229:
	xorl	%eax, %eax
	jmp	.LBB10_230
.LBB10_231:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_244
# %bb.232:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_183
# %bb.233:
	xorl	%eax, %eax
	jmp	.LBB10_245
.LBB10_234:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_246
# %bb.235:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.236:
	xorl	%eax, %eax
	jmp	.LBB10_247
.LBB10_237:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_230:
	movl	%eax, server+2016(%rip)
	jmp	.LBB10_138
.LBB10_238:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_251
# %bb.239:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.240:
	xorl	%eax, %eax
	movl	%eax, server+2552(%rip)
	jmp	.LBB10_292
.LBB10_241:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_252
# %bb.242:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.243:
	xorl	%eax, %eax
	movl	%eax, server+2036(%rip)
	jmp	.LBB10_292
.LBB10_244:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_245:
	movl	%eax, server+2020(%rip)
	jmp	.LBB10_138
.LBB10_246:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_247:
	movl	%eax, server+2032(%rip)
	jmp	.LBB10_292
.LBB10_248:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_256
# %bb.249:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.250:
	xorl	%eax, %eax
	movl	%eax, server+2556(%rip)
	jmp	.LBB10_292
.LBB10_251:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+2552(%rip)
	jmp	.LBB10_292
.LBB10_252:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+2036(%rip)
	jmp	.LBB10_292
.LBB10_253:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_257
# %bb.254:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_261
.LBB10_255:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r14
	jmp	.LBB10_184
.LBB10_256:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+2556(%rip)
	jmp	.LBB10_292
.LBB10_257:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+2560(%rip)
	jmp	.LBB10_292
.LBB10_258:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_268
# %bb.259:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.260:
	xorl	%eax, %eax
	movl	%eax, server+88(%rip)
	jmp	.LBB10_292
.LBB10_261:
	xorl	%eax, %eax
	movl	%eax, server+2560(%rip)
	jmp	.LBB10_292
.LBB10_262:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_272
# %bb.263:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.264:
	movl	$0, server+1744(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_292
.LBB10_265:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_276
# %bb.266:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.267:
	xorl	%eax, %eax
	movl	%eax, server+856(%rip)
	jmp	.LBB10_292
.LBB10_268:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+88(%rip)
	jmp	.LBB10_292
.LBB10_269:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_280
# %bb.270:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.271:
	xorl	%eax, %eax
	movl	%eax, server+2180(%rip)
	jmp	.LBB10_292
.LBB10_272:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, server+1744(%rip)
	movl	$.L.str.219, %esi
	movq	%r12, %rdi
	jmp	.LBB10_174
.LBB10_273:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_287
# %bb.274:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.275:
	xorl	%eax, %eax
	movl	%eax, server+3080(%rip)
	jmp	.LBB10_292
.LBB10_276:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+856(%rip)
	jmp	.LBB10_292
.LBB10_277:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_288
# %bb.278:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.279:
	xorl	%eax, %eax
	movl	%eax, server+3084(%rip)
	jmp	.LBB10_292
.LBB10_280:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+2180(%rip)
	jmp	.LBB10_292
.LBB10_281:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_289
# %bb.282:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.283:
	xorl	%eax, %eax
	movl	%eax, server+2656(%rip)
	jmp	.LBB10_292
.LBB10_284:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_290
# %bb.285:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.286:
	xorl	%eax, %eax
	jmp	.LBB10_291
.LBB10_287:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+3080(%rip)
	jmp	.LBB10_292
.LBB10_288:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+3084(%rip)
	jmp	.LBB10_292
.LBB10_289:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+2656(%rip)
	jmp	.LBB10_292
.LBB10_290:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB10_291:
	movl	%eax, server+3088(%rip)
.LBB10_292:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_293:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r14
	jmp	.LBB10_140
.LBB10_294:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_303
# %bb.295:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.296:
	xorl	%eax, %eax
	movl	%eax, server+1896(%rip)
	jmp	.LBB10_292
.LBB10_297:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_307
# %bb.298:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_255
# %bb.299:
	xorl	%eax, %eax
	movl	%eax, server+32(%rip)
	jmp	.LBB10_292
.LBB10_300:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.301:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.302:
	movl	%ecx, server+1736(%rip)
	jmp	.LBB10_139
.LBB10_303:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+1896(%rip)
	jmp	.LBB10_292
.LBB10_304:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.305:
	leaq	-1(%rcx), %rax
	cmpq	$2147483646, %rax       # imm = 0x7FFFFFFE
	ja	.LBB10_184
# %bb.306:
	movl	%ecx, server+2716(%rip)
	jmp	.LBB10_139
.LBB10_307:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	%eax, server+32(%rip)
	jmp	.LBB10_292
.LBB10_308:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.309:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.310:
	movl	%ecx, server+2720(%rip)
	jmp	.LBB10_139
.LBB10_311:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.312:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.313:
	movl	%ecx, server+2724(%rip)
	jmp	.LBB10_139
.LBB10_314:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.315:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.316:
	movl	%ecx, server+1732(%rip)
	jmp	.LBB10_139
.LBB10_317:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.318:
	cmpq	$1000, %rcx             # imm = 0x3E8
	ja	.LBB10_184
# %bb.319:
	movl	%ecx, server+1760(%rip)
	jmp	.LBB10_139
.LBB10_320:
	movl	$.L.str.212, %edx
	movl	$.L.str.158, %ecx
	movq	%r14, %rdi
	movl	$906, %r8d              # imm = 0x38A
	jmp	.LBB10_322
.LBB10_321:
	movl	$.L.str.213, %edx
	movl	$.L.str.158, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$907, %r8d              # imm = 0x38B
.LBB10_322:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB10_323:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.324:
	cmpq	$1000, %rcx             # imm = 0x3E8
	ja	.LBB10_184
# %bb.325:
	movl	%ecx, server+1764(%rip)
	jmp	.LBB10_139
.LBB10_326:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, %r14
	js	.LBB10_184
# %bb.327:
	testl	%ecx, %ecx
	jne	.LBB10_184
# %bb.328:
	movq	%rax, server+1752(%rip)
	jmp	.LBB10_139
.LBB10_329:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.330:
	leaq	-1(%rcx), %rax
	cmpq	$98, %rax
	ja	.LBB10_184
# %bb.331:
	movl	%ecx, server+1768(%rip)
	jmp	.LBB10_139
.LBB10_332:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.333:
	leaq	-1(%rcx), %rax
	cmpq	$98, %rax
	ja	.LBB10_184
# %bb.334:
	movl	%ecx, server+1772(%rip)
	jmp	.LBB10_139
.LBB10_335:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.336:
	testq	%rcx, %rcx
	jle	.LBB10_184
# %bb.337:
	movq	%rcx, server+1776(%rip)
	jmp	.LBB10_139
.LBB10_338:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.339:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.340:
	movl	%ecx, server+1900(%rip)
	jmp	.LBB10_139
.LBB10_341:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.342:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.343:
	movq	%rcx, server+2800(%rip)
	jmp	.LBB10_139
.LBB10_344:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.345:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.346:
	movq	%rcx, server+2808(%rip)
	jmp	.LBB10_139
.LBB10_347:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.348:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.349:
	movq	%rcx, server+2848(%rip)
	jmp	.LBB10_139
.LBB10_350:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.351:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.352:
	movq	%rcx, server+2856(%rip)
	jmp	.LBB10_139
.LBB10_353:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.354:
	movq	%rcx, %rax
	subq	$-2147483648, %rax      # imm = 0x80000000
	shrq	$32, %rax
	jne	.LBB10_184
# %bb.355:
	movl	%ecx, server+2864(%rip)
	jmp	.LBB10_139
.LBB10_356:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.357:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.358:
	movl	%ecx, server+2868(%rip)
	jmp	.LBB10_139
.LBB10_359:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.360:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.361:
	movq	%rcx, server+2816(%rip)
	jmp	.LBB10_139
.LBB10_362:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.363:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.364:
	movq	%rcx, server+2824(%rip)
	jmp	.LBB10_139
.LBB10_365:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.366:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.367:
	movq	%rcx, server+2832(%rip)
	jmp	.LBB10_139
.LBB10_368:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.369:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.370:
	movq	%rcx, server+2840(%rip)
	jmp	.LBB10_139
.LBB10_371:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.372:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.373:
	movq	%rcx, server+3032(%rip)
	jmp	.LBB10_139
.LBB10_374:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.375:
	cmpq	$-1, %rcx
	jl	.LBB10_184
# %bb.376:
	movq	%rcx, server+1184(%rip)
	jmp	.LBB10_139
.LBB10_377:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.378:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.379:
	movq	%rcx, server+1192(%rip)
	jmp	.LBB10_139
.LBB10_380:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.381:
	leaq	-1(%rcx), %rax
	cmpq	$2147483646, %rax       # imm = 0x7FFFFFFE
	ja	.LBB10_184
# %bb.382:
	movl	%ecx, server+2372(%rip)
	jmp	.LBB10_139
.LBB10_383:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.384:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.385:
	movq	%rcx, server+3096(%rip)
	jmp	.LBB10_139
.LBB10_386:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.387:
	leaq	-1(%rcx), %rax
	cmpq	$2147483646, %rax       # imm = 0x7FFFFFFE
	ja	.LBB10_184
# %bb.388:
	movl	%ecx, server+2476(%rip)
	jmp	.LBB10_139
.LBB10_389:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.390:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.391:
	movq	%rcx, server+2416(%rip)
	jmp	.LBB10_139
.LBB10_392:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.393:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.394:
	movl	%ecx, server+2580(%rip)
	jmp	.LBB10_139
.LBB10_395:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.396:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.397:
	movl	%ecx, server+2448(%rip)
	jmp	.LBB10_139
.LBB10_398:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.399:
	cmpq	$65535, %rcx            # imm = 0xFFFF
	ja	.LBB10_184
# %bb.400:
	movl	%ecx, server+2584(%rip)
	jmp	.LBB10_139
.LBB10_401:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.402:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.403:
	movl	%ecx, server+2432(%rip)
	callq	refreshGoodSlavesCount
	jmp	.LBB10_139
.LBB10_404:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.405:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.406:
	movl	%ecx, server+2436(%rip)
	callq	refreshGoodSlavesCount
	jmp	.LBB10_139
.LBB10_407:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.408:
	testq	%rcx, %rcx
	js	.LBB10_184
# %bb.409:
	movq	%rcx, server+2928(%rip)
	jmp	.LBB10_139
.LBB10_410:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.411:
	cmpq	$65535, %rcx            # imm = 0xFFFF
	ja	.LBB10_184
# %bb.412:
	movl	%ecx, server+2976(%rip)
	jmp	.LBB10_139
.LBB10_413:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.414:
	cmpq	$65535, %rcx            # imm = 0xFFFF
	ja	.LBB10_184
# %bb.415:
	movl	%ecx, server+2980(%rip)
	jmp	.LBB10_139
.LBB10_416:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.417:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.418:
	movl	%ecx, server+2956(%rip)
	jmp	.LBB10_139
.LBB10_419:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.420:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.421:
	movl	%ecx, server+2952(%rip)
	jmp	.LBB10_139
.LBB10_422:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.423:
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.424:
	testl	%ecx, %ecx
	movl	$1, %eax
	cmovgl	%ecx, %eax
	cmpl	$501, %eax              # imm = 0x1F5
	movl	$500, %ecx              # imm = 0x1F4
	cmovll	%eax, %ecx
	movl	%ecx, server+36(%rip)
	jmp	.LBB10_139
.LBB10_425:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%r12, %r14
	je	.LBB10_184
# %bb.426:
	cmpq	$2147483647, %rdi       # imm = 0x7FFFFFFF
	ja	.LBB10_184
# %bb.427:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_441
# %bb.428:
                                        # kill: def $edi killed $edi killed $rdi
	callq	enableWatchdog
	jmp	.LBB10_293
.LBB10_429:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, %rbx
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movq	%r12, %r14
	js	.LBB10_184
# %bb.430:
	testl	%eax, %eax
	jne	.LBB10_184
# %bb.431:
	movq	%rbx, server+2704(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB10_140
# %bb.432:
	callq	zmalloc_used_memory
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jae	.LBB10_434
# %bb.433:
	movl	$.L.str.221, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB10_434:
	callq	freeMemoryIfNeededAndSafe
	jmp	.LBB10_293
.LBB10_435:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, %r14
	js	.LBB10_184
# %bb.436:
	testl	%ecx, %ecx
	jne	.LBB10_184
# %bb.437:
	movq	%rax, server+2728(%rip)
	jmp	.LBB10_139
.LBB10_438:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, %r14
	js	.LBB10_184
# %bb.439:
	testl	%ecx, %ecx
	jne	.LBB10_184
# %bb.440:
	movq	%rax, server+1784(%rip)
	jmp	.LBB10_139
.LBB10_441:
	callq	disableWatchdog
	jmp	.LBB10_293
.LBB10_442:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, %r14
	js	.LBB10_184
# %bb.443:
	testl	%ecx, %ecx
	jne	.LBB10_184
# %bb.444:
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	callq	resizeReplicationBacklog
	jmp	.LBB10_139
.LBB10_445:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, %r14
	js	.LBB10_184
# %bb.446:
	testl	%ecx, %ecx
	jne	.LBB10_184
# %bb.447:
	movq	%rax, -48(%rbp)
	movq	%rax, server+1904(%rip)
	jmp	.LBB10_139
.LBB10_448:
	movq	8(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	loglevel_enum(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_460
# %bb.449:                              # %.preheader5
	movl	$loglevel_enum+16, %ebx
.LBB10_450:                             # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_461
# %bb.451:                              #   in Loop: Header=BB10_450 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB10_450
	jmp	.LBB10_460
.LBB10_452:
	movq	8(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	maxmemory_policy_enum(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_460
# %bb.453:                              # %.preheader7
	movl	$maxmemory_policy_enum+16, %ebx
.LBB10_454:                             # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_463
# %bb.455:                              #   in Loop: Header=BB10_454 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB10_454
	jmp	.LBB10_460
.LBB10_456:
	movq	8(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	aof_fsync_enum(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_460
# %bb.457:                              # %.preheader9
	movl	$aof_fsync_enum+16, %ebx
.LBB10_458:                             # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_465
# %bb.459:                              #   in Loop: Header=BB10_458 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB10_458
.LBB10_460:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_255
.LBB10_461:
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	je	.LBB10_255
# %bb.462:
	movl	%eax, server+1728(%rip)
	jmp	.LBB10_292
.LBB10_463:
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	je	.LBB10_255
# %bb.464:
	movl	%eax, server+2712(%rip)
	jmp	.LBB10_292
.LBB10_465:
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	je	.LBB10_255
# %bb.466:
	movl	%eax, server+1884(%rip)
	jmp	.LBB10_292
.Lfunc_end10:
	.size	configSetCommand, .Lfunc_end10-configSetCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_144
	.quad	.LBB10_178
	.quad	.LBB10_176
	.quad	.LBB10_177
	.quad	.LBB10_175
.LJTI10_1:
	.quad	.LBB10_132
	.quad	.LBB10_154
	.quad	.LBB10_152
	.quad	.LBB10_153
	.quad	.LBB10_151
                                        # -- End function
	.text
	.globl	configGetCommand        # -- Begin function configGetCommand
	.p2align	4, 0x90
	.type	configGetCommand,@function
configGetCommand:                       # @configGetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1176, %rsp             # imm = 0x498
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	16(%rax), %rbx
	callq	addDeferredMultiBulkLength
	movq	%rax, %r14
	movq	8(%rbx), %r15
	movl	(%rbx), %eax
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB11_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB11_259
.LBB11_2:
	movl	$1, %r13d
	movl	$.L.str.129, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_3
# %bb.4:
	movl	$.L.str.129, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+2120(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_5
.LBB11_3:
	xorl	%r13d, %r13d
.LBB11_5:
	movl	$.L.str.126, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_7
# %bb.6:
	movl	$.L.str.126, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+96(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_7:
	movl	$.L.str.93, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_9
# %bb.8:
	movl	$.L.str.93, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+2456(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_9:
	movl	$.L.str.162, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_11
# %bb.10:
	movl	$.L.str.162, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+2968(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_11:
	movl	$.L.str.44, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_13
# %bb.12:
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+360(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_13:
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_15
# %bb.14:
	movl	$.L.str.54, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+2240(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_15:
	movl	$.L.str.128, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_17
# %bb.16:
	movl	$.L.str.128, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+104(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_17:
	movl	$.L.str.187, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_19
# %bb.18:
	movl	$.L.str.187, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+2592(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_19:
	movl	$.L.str.188, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_21
# %bb.20:
	movl	$.L.str.188, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+2592(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_21:
	movl	$.L.str.67, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_23
# %bb.22:
	movq	server+2704(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.67, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_23:
	movl	$.L.str.72, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_25
# %bb.24:
	movq	server+2728(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.72, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_25:
	movl	$.L.str.73, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_27
# %bb.26:
	movq	server+1784(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.73, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_27:
	movl	$.L.str.70, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_29
# %bb.28:
	movslq	server+2716(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.70, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_29:
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_31
# %bb.30:
	movslq	server+2720(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.74, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_31:
	movl	$.L.str.76, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_33
# %bb.32:
	movslq	server+2724(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.76, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_33:
	movl	$.L.str.32, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_35
# %bb.34:
	movslq	server+1732(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.32, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_35:
	movl	$.L.str.131, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_37
# %bb.36:
	movslq	server+1760(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.131, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_37:
	movl	$.L.str.133, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_39
# %bb.38:
	movslq	server+1764(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.133, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_39:
	movl	$.L.str.135, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_41
# %bb.40:
	movq	server+1752(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.135, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_41:
	movl	$.L.str.137, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_43
# %bb.42:
	movslq	server+1768(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.137, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_43:
	movl	$.L.str.139, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_45
# %bb.44:
	movslq	server+1772(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.139, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_45:
	movl	$.L.str.141, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_47
# %bb.46:
	movq	server+1776(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.141, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_47:
	movl	$.L.str.119, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_49
# %bb.48:
	movslq	server+1900(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.119, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_49:
	movl	$.L.str.121, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_51
# %bb.50:
	movq	server+1904(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.121, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_51:
	movl	$.L.str.143, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_53
# %bb.52:
	movq	server+2800(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.143, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_53:
	movl	$.L.str.144, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_55
# %bb.54:
	movq	server+2808(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.144, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_55:
	movl	$.L.str.145, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_57
# %bb.56:
	movq	server+2848(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.145, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_57:
	movl	$.L.str.146, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_59
# %bb.58:
	movq	server+2856(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.146, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_59:
	movl	$.L.str.149, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_61
# %bb.60:
	movslq	server+2864(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.149, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_61:
	movl	$.L.str.150, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_63
# %bb.62:
	movslq	server+2868(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.150, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_63:
	movl	$.L.str.151, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_65
# %bb.64:
	movq	server+2816(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.151, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_65:
	movl	$.L.str.152, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_67
# %bb.66:
	movq	server+2824(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.152, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_67:
	movl	$.L.str.153, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_69
# %bb.68:
	movq	server+2832(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.153, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_69:
	movl	$.L.str.154, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_71
# %bb.70:
	movq	server+2840(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.154, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_71:
	movl	$.L.str.175, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_73
# %bb.72:
	movq	server+3032(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.175, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_73:
	movl	$.L.str.177, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_75
# %bb.74:
	movq	server+1184(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.177, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_75:
	movl	$.L.str.178, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_77
# %bb.76:
	movq	server+3096(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.178, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_77:
	movl	$.L.str.180, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_79
# %bb.78:
	movq	server+1192(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.180, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_79:
	movl	$.L.str.38, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_81
# %bb.80:
	movslq	server+216(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_81:
	movl	$.L.str.163, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_83
# %bb.82:
	movslq	server+2976(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.163, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_83:
	movl	$.L.str.164, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_85
# %bb.84:
	movslq	server+2980(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.164, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_85:
	movl	$.L.str.40, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_87
# %bb.86:
	movslq	server+220(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_87:
	movl	$.L.str.62, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_89
# %bb.88:
	movslq	server+1792(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.62, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_89:
	movl	$.L.str.80, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_91
# %bb.90:
	movslq	server+2372(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.80, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_91:
	movl	$.L.str.81, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_93
# %bb.92:
	movslq	server+2372(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.81, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_93:
	movl	$.L.str.83, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_95
# %bb.94:
	movslq	server+2476(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.83, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_95:
	movl	$.L.str.89, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_97
# %bb.96:
	movq	server+2384(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.89, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_97:
	movl	$.L.str.91, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_99
# %bb.98:
	movq	server+2416(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.91, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_99:
	movl	$.L.str.65, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_101
# %bb.100:
	movl	server+2700(%rip), %edx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.65, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_101:
	movl	$.L.str.220, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_103
# %bb.102:
	movslq	server+3136(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.220, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_103:
	movl	$.L.str.185, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_105
# %bb.104:
	movslq	server+2580(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.185, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_105:
	movl	$.L.str.186, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_107
# %bb.106:
	movslq	server+2580(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.186, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_107:
	movl	$.L.str.189, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_109
# %bb.108:
	movslq	server+2584(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.189, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_109:
	movl	$.L.str.190, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_111
# %bb.110:
	movslq	server+2584(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.190, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_111:
	movl	$.L.str.191, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_113
# %bb.112:
	movslq	server+2432(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.191, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_113:
	movl	$.L.str.192, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_115
# %bb.114:
	movslq	server+2432(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.192, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_115:
	movl	$.L.str.194, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_117
# %bb.116:
	movslq	server+2436(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.194, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_117:
	movl	$.L.str.195, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_119
# %bb.118:
	movslq	server+2436(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.195, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_119:
	movl	$.L.str.112, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_121
# %bb.120:
	movslq	server+36(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.112, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_121:
	movl	$.L.str.166, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_123
# %bb.122:
	movq	server+2928(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.166, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_123:
	movl	$.L.str.168, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_125
# %bb.124:
	movslq	server+2952(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.168, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_125:
	movl	$.L.str.170, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_127
# %bb.126:
	movslq	server+2956(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.170, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_127:
	movl	$.L.str.171, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_129
# %bb.128:
	movslq	server+2956(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.171, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_129:
	movl	$.L.str.87, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_131
# %bb.130:
	movslq	server+2448(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.87, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_131:
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_133
# %bb.132:
	movslq	server+1736(%rip), %rdx
	leaq	-176(%rbp), %rbx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movl	$.L.str.34, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_133:
	movl	$.L.str.165, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_135
# %bb.134:
	movl	$.L.str.165, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2960(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_135:
	movl	$.L.str.173, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_137
# %bb.136:
	movl	$.L.str.173, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2964(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_137:
	movl	$.L.str.174, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_139
# %bb.138:
	movl	$.L.str.174, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2964(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_139:
	movl	$.L.str.116, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_141
# %bb.140:
	movl	$.L.str.116, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+1896(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_141:
	movl	$.L.str.94, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_143
# %bb.142:
	movl	$.L.str.94, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2552(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_143:
	movl	$.L.str.95, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_145
# %bb.144:
	movl	$.L.str.95, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2552(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_145:
	movl	$.L.str.96, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_147
# %bb.146:
	movl	$.L.str.96, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2556(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_147:
	movl	$.L.str.97, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_149
# %bb.148:
	movl	$.L.str.97, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2556(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_149:
	movl	$.L.str.98, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_151
# %bb.150:
	movl	$.L.str.98, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2560(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_151:
	movl	$.L.str.99, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_153
# %bb.152:
	movl	$.L.str.99, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2560(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_153:
	movl	$.L.str.184, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_155
# %bb.154:
	movl	$.L.str.184, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2180(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_155:
	movl	$.L.str.110, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_157
# %bb.156:
	movl	$.L.str.110, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+1804(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_157:
	movl	$.L.str.100, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_159
# %bb.158:
	movl	$.L.str.100, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2128(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_159:
	movl	$.L.str.101, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_161
# %bb.160:
	movl	$.L.str.101, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2132(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_161:
	movl	$.L.str.102, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_163
# %bb.162:
	movl	$.L.str.102, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+88(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_163:
	movl	$.L.str.108, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_165
# %bb.164:
	movl	$.L.str.108, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+1744(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_165:
	movl	$.L.str.36, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_167
# %bb.166:
	movl	$.L.str.36, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+856(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_167:
	movl	$.L.str.85, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_169
# %bb.168:
	movl	$.L.str.85, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2576(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_169:
	movl	$.L.str.86, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_171
# %bb.170:
	movl	$.L.str.86, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2444(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_171:
	movl	$.L.str.122, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_173
# %bb.172:
	movl	$.L.str.122, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2016(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_173:
	movl	$.L.str.123, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_175
# %bb.174:
	movl	$.L.str.123, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2020(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_175:
	movl	$.L.str.124, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_177
# %bb.176:
	movl	$.L.str.124, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2032(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_177:
	movl	$.L.str.125, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_179
# %bb.178:
	movl	$.L.str.125, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2036(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_179:
	movl	$.L.str.103, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_181
# %bb.180:
	movl	$.L.str.103, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+3080(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_181:
	movl	$.L.str.104, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_183
# %bb.182:
	movl	$.L.str.104, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+3084(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_183:
	movl	$.L.str.105, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_185
# %bb.184:
	movl	$.L.str.105, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+3088(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_185:
	movl	$.L.str.106, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_187
# %bb.186:
	movl	$.L.str.106, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2656(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_187:
	movl	$.L.str.107, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_189
# %bb.188:
	movl	$.L.str.107, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+2656(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_189:
	movl	$.L.str.111, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_191
# %bb.190:
	movl	$.L.str.111, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+32(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_191:
	movl	$.L.str.68, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_199
# %bb.192:
	movl	$.L.str.68, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movl	server+2712(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	maxmemory_policy_enum(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_197
# %bb.193:
	cmpl	%ecx, maxmemory_policy_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_198
# %bb.194:                              # %.preheader12
	movl	$maxmemory_policy_enum+24, %edx
	.p2align	4, 0x90
.LBB11_196:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_197
# %bb.195:                              #   in Loop: Header=BB11_196 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_196
	jmp	.LBB11_198
.LBB11_197:
	xorl	%eax, %eax
.LBB11_198:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_199:
	movl	$.L.str.52, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_207
# %bb.200:
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movl	server+1728(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	loglevel_enum(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_205
# %bb.201:
	cmpl	%ecx, loglevel_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_206
# %bb.202:                              # %.preheader9
	movl	$loglevel_enum+24, %edx
	.p2align	4, 0x90
.LBB11_204:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_205
# %bb.203:                              #   in Loop: Header=BB11_204 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_204
	jmp	.LBB11_206
.LBB11_205:
	xorl	%eax, %eax
.LBB11_206:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_207:
	movl	$.L.str.199, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_215
# %bb.208:
	movl	$.L.str.199, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movl	server+1800(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	supervised_mode_enum(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_213
# %bb.209:
	cmpl	%ecx, supervised_mode_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_214
# %bb.210:                              # %.preheader6
	movl	$supervised_mode_enum+24, %edx
	.p2align	4, 0x90
.LBB11_212:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_213
# %bb.211:                              #   in Loop: Header=BB11_212 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_212
	jmp	.LBB11_214
.LBB11_213:
	xorl	%eax, %eax
.LBB11_214:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_215:
	movl	$.L.str.117, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_223
# %bb.216:
	movl	$.L.str.117, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movl	server+1884(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	aof_fsync_enum(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_221
# %bb.217:
	cmpl	%ecx, aof_fsync_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_222
# %bb.218:                              # %.preheader3
	movl	$aof_fsync_enum+24, %edx
	.p2align	4, 0x90
.LBB11_220:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_221
# %bb.219:                              #   in Loop: Header=BB11_220 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_220
	jmp	.LBB11_222
.LBB11_221:
	xorl	%eax, %eax
.LBB11_222:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_223:
	movl	$.L.str.60, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_231
# %bb.224:
	movl	$.L.str.60, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movl	server+2264(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	syslog_facility_enum(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_229
# %bb.225:
	cmpl	%ecx, syslog_facility_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_230
# %bb.226:                              # %.preheader1
	movl	$syslog_facility_enum+24, %edx
	.p2align	4, 0x90
.LBB11_228:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_229
# %bb.227:                              #   in Loop: Header=BB11_228 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_228
	jmp	.LBB11_230
.LBB11_229:
	xorl	%eax, %eax
.LBB11_230:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_231:
	movl	$.L.str.113, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_233
# %bb.232:
	movl	$.L.str.113, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	cmpl	$0, server+1880(%rip)
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %esi
	cmoveq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_233:
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_237
# %bb.234:
	leaq	-1216(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	getcwd
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB11_236
# %bb.235:
	movb	$0, -1216(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_236:
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	leaq	-1216(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_237:
	movl	$.L.str.47, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_244
# %bb.238:
	movq	%r15, -184(%rbp)        # 8-byte Spill
	movq	%r14, -192(%rbp)        # 8-byte Spill
	callq	sdsempty
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+2112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB11_243
# %bb.239:                              # %.preheader
	movl	$8, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB11_240
	.p2align	4, 0x90
.LBB11_242:                             #   in Loop: Header=BB11_240 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	cltq
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r14
	cmpq	%rax, %r15
	jge	.LBB11_243
.LBB11_240:                             # =>This Inner Loop Header: Depth=1
	movq	server+2104(%rip), %rax
	movq	-8(%rax,%r14), %rdx
	movl	(%rax,%r14), %ecx
	movl	$.L.str.225, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	movl	server+2112(%rip), %eax
	leal	-1(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r15
	je	.LBB11_242
# %bb.241:                              #   in Loop: Header=BB11_240 Depth=1
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2112(%rip), %eax
	jmp	.LBB11_242
.LBB11_243:
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	movq	%rbx, %rdi
	callq	sdsfree
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	-184(%rbp), %r15        # 8-byte Reload
.LBB11_244:
	movl	$.L.str.181, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_245
# %bb.258:
	callq	sdsempty
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	callq	getClientTypeName
	movq	server+1808(%rip), %rcx
	movq	server+1816(%rip), %r8
	movq	server+1824(%rip), %r9
	movl	$.L.str.226, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	callq	getClientTypeName
	movq	server+1832(%rip), %rcx
	movq	server+1840(%rip), %r8
	movq	server+1848(%rip), %r9
	movl	$.L.str.226, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %edi
	callq	getClientTypeName
	movq	server+1856(%rip), %rcx
	movq	server+1864(%rip), %r8
	movq	server+1872(%rip), %r9
	movl	$.L.str.226, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.181, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	movq	%rbx, %rdi
	callq	sdsfree
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_245:
	movl	$.L.str.45, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_247
# %bb.246:
	movl	server+368(%rip), %ecx
	leaq	-1216(%rbp), %rbx
	movl	$32, %esi
	movl	$.L.str.227, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_247:
	movl	$.L.str.78, %ebx
	movl	$.L.str.78, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB11_249
# %bb.248:
	movl	$.L.str.79, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_253
.LBB11_249:
	movl	$.L.str.78, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	movl	$.L.str.79, %esi
	cmovneq	%rbx, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+2464(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_251
# %bb.250:
	movl	server+2472(%rip), %r8d
	leaq	-1216(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.228, %edx
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB11_252
.LBB11_251:
	movb	$0, -1216(%rbp)
.LBB11_252:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1216(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_253:
	movl	$.L.str.197, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_255
# %bb.254:
	movl	server+2920(%rip), %edi
	callq	keyspaceEventsFlagsToString
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %rbx
	movl	$.L.str.197, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	callq	decrRefCount
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_255:
	movl	$.L.str.42, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_257
# %bb.256:
	movl	server+352(%rip), %esi
	movl	$server+224, %edi
	movl	$.L.str.217, %edx
	callq	sdsjoin
	movq	%rax, %rbx
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	movq	%rbx, %rdi
	callq	sdsfree
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_257:
	addl	%r13d, %r13d
	movslq	%r13d, %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	setDeferredMultiBulkLength
	movl	$42, __A_VARIABLE(%rip)
	addq	$1176, %rsp             # imm = 0x498
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_259:
	movl	$.L.str.224, %edx
	movl	$.L.str.158, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	$1331, %r8d             # imm = 0x533
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end11:
	.size	configGetCommand, .Lfunc_end11-configGetCommand
                                        # -- End function
	.globl	rewriteConfigAppendLine # -- Begin function rewriteConfigAppendLine
	.p2align	4, 0x90
	.type	rewriteConfigAppendLine,@function
rewriteConfigAppendLine:                # @rewriteConfigAppendLine
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	movslq	16(%rbx), %rax
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 24(%rbx)
	movslq	16(%rbx), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 16(%rbx)
	movq	%r14, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	rewriteConfigAppendLine, .Lfunc_end12-rewriteConfigAppendLine
                                        # -- End function
	.globl	rewriteConfigAddLineNumberToOption # -- Begin function rewriteConfigAddLineNumberToOption
	.p2align	4, 0x90
	.type	rewriteConfigAddLineNumberToOption,@function
rewriteConfigAddLineNumberToOption:     # @rewriteConfigAddLineNumberToOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	(%rdi), %rdi
	callq	dictFetchValue
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB13_2
# %bb.1:
	callq	listCreate
	movq	%rax, %rbx
	movq	(%r12), %r12
	movq	%r15, %rdi
	callq	sdsdup
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
.LBB13_2:
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	rewriteConfigAddLineNumberToOption, .Lfunc_end13-rewriteConfigAddLineNumberToOption
                                        # -- End function
	.globl	rewriteConfigMarkAsProcessed # -- Begin function rewriteConfigMarkAsProcessed
	.p2align	4, 0x90
	.type	rewriteConfigMarkAsProcessed,@function
rewriteConfigMarkAsProcessed:           # @rewriteConfigMarkAsProcessed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	sdsnew
	movq	%rax, %r14
	movq	8(%rbx), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_2
# %bb.1:
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	rewriteConfigMarkAsProcessed, .Lfunc_end14-rewriteConfigMarkAsProcessed
                                        # -- End function
	.globl	rewriteConfigReadOldFile # -- Begin function rewriteConfigReadOldFile
	.p2align	4, 0x90
	.type	rewriteConfigReadOldFile,@function
rewriteConfigReadOldFile:               # @rewriteConfigReadOldFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movl	$.L.str.210, %esi
	callq	fopen
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB15_3
# %bb.1:
	callq	__errno
	cmpl	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_2
.LBB15_3:
	movl	$40, %edi
	callq	zmalloc
	movq	%rax, %r15
	movl	$optionToLineDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, (%r15)
	movl	$optionSetDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 8(%r15)
	movl	$0, 16(%r15)
	movq	$0, 24(%r15)
	movl	$0, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB15_23
# %bb.4:
	leaq	-1104(%rbp), %rdi
	movl	$1025, %esi             # imm = 0x401
	movq	%r14, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_22
# %bb.5:
	xorl	%r13d, %r13d
	leaq	-1104(%rbp), %rbx
	movq	%r14, -56(%rbp)         # 8-byte Spill
	jmp	.LBB15_6
	.p2align	4, 0x90
.LBB15_8:                               #   in Loop: Header=BB15_6 Depth=1
	cmpl	$0, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_9
.LBB15_11:                              #   in Loop: Header=BB15_6 Depth=1
	movq	24(%r15), %rdi
	movslq	16(%r15), %rax
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 24(%r15)
	movslq	16(%r15), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 16(%r15)
	movq	%r12, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_21:                              #   in Loop: Header=BB15_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$1025, %esi             # imm = 0x401
	movq	%r14, %rdx
	callq	fgets
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_22
.LBB15_6:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	sdsnew
	movl	$.L.str.229, %esi
	movq	%rax, %rdi
	callq	sdstrim
	movq	%rax, %r12
	movzbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$35, %al
	je	.LBB15_8
# %bb.7:                                #   in Loop: Header=BB15_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB15_8
# %bb.12:                               #   in Loop: Header=BB15_6 Depth=1
	movq	%r12, %rdi
	leaq	-44(%rbp), %rsi
	callq	sdssplitargs
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_13
# %bb.14:                               #   in Loop: Header=BB15_6 Depth=1
	movq	%rax, %rbx
	movq	(%rax), %rdi
	callq	sdstolower
	movq	24(%r15), %rdi
	movslq	16(%r15), %rax
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 24(%r15)
	movslq	16(%r15), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 16(%r15)
	movq	%r12, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	movl	$.L.str.232, %esi
	callq	strstr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_15
# %bb.16:                               #   in Loop: Header=BB15_6 Depth=1
	movq	%rax, %r12
	callq	sdsempty
	movq	(%rbx), %rsi
	movq	%r12, %rdx
	subq	%rsi, %rdx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$.L.str.233, %esi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r14
	addq	$5, %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, %r12
	movq	(%rbx), %rdi
	callq	sdsfree
	movq	%r12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_17
	.p2align	4, 0x90
.LBB15_9:                               #   in Loop: Header=BB15_6 Depth=1
	movl	$.L.str.230, %esi
	movq	%r12, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_11
# %bb.10:                               #   in Loop: Header=BB15_6 Depth=1
	movl	$1, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_11
.LBB15_13:                              #   in Loop: Header=BB15_6 Depth=1
	movl	$.L.str.231, %edi
	callq	sdsnew
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	sdscatsds
	movq	%rax, %r14
	movq	%r12, %rdi
	callq	sdsfree
	movq	24(%r15), %rdi
	movslq	16(%r15), %rax
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 24(%r15)
	movslq	16(%r15), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 16(%r15)
	movq	%r14, (%rax,%rcx,8)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_20
.LBB15_15:                              #   in Loop: Header=BB15_6 Depth=1
	movq	(%rbx), %r12
.LBB15_17:                              #   in Loop: Header=BB15_6 Depth=1
	movq	(%r15), %rdi
	movq	%r12, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB15_19
# %bb.18:                               #   in Loop: Header=BB15_6 Depth=1
	callq	listCreate
	movq	%rax, %r14
	movq	(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	sdsdup
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
.LBB15_19:                              #   in Loop: Header=BB15_6 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi
	movq	%rbx, %rdi
	callq	sdsfreesplitres
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB15_20:                              #   in Loop: Header=BB15_6 Depth=1
	leaq	-1104(%rbp), %rbx
	jmp	.LBB15_21
.LBB15_22:
	movq	%r14, %rdi
	callq	fclose
.LBB15_23:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_24
.LBB15_2:
	xorl	%r15d, %r15d
.LBB15_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	rewriteConfigReadOldFile, .Lfunc_end15-rewriteConfigReadOldFile
                                        # -- End function
	.globl	rewriteConfigRewriteLine # -- Begin function rewriteConfigRewriteLine
	.p2align	4, 0x90
	.type	rewriteConfigRewriteLine,@function
rewriteConfigRewriteLine:               # @rewriteConfigRewriteLine
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%ecx, %r13d
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	%rsi, %rdi
	callq	sdsnew
	movq	(%r12), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsnew
	movq	%rax, %r14
	movq	8(%r12), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_2
# %bb.1:
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB16_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB16_5
# %bb.3:
	testq	%r15, %r15
	jne	.LBB16_5
# %bb.4:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB16_14
.LBB16_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB16_9
# %bb.6:
	movq	(%r15), %rsi
	movq	16(%rsi), %rbx
	movq	%r15, %rdi
	callq	listDelNode
	cmpq	$0, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
	jne	.LBB16_8
# %bb.7:
	movq	(%r12), %rdi
	movq	%r14, %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB16_8:
	movq	24(%r12), %rax
	movslq	%ebx, %rbx
	movq	(%rax,%rbx,8), %rdi
	callq	sdsfree
	movq	24(%r12), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax,%rbx,8)
	jmp	.LBB16_13
.LBB16_9:
	cmpl	$0, 32(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB16_11
# %bb.10:
	movl	16(%r12), %ecx
	leaq	16(%r12), %rbx
	addq	$24, %r12
	jmp	.LBB16_12
.LBB16_11:
	movl	$.L.str.230, %edi
	callq	sdsnew
	movq	%rax, %r14
	movq	24(%r12), %rdi
	leaq	16(%r12), %rbx
	movslq	16(%r12), %rax
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 24(%r12)
	movslq	16(%r12), %rdx
	leal	1(%rdx), %ecx
	movl	%ecx, 16(%r12)
	movq	%r14, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, 32(%r12)
	addq	$24, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB16_12:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	(%r12), %rdi
	movslq	%ecx, %rax
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, (%r12)
	movslq	(%rbx), %rcx
	leal	1(%rcx), %edx
	movl	%edx, (%rbx)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_13:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
.LBB16_14:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	rewriteConfigRewriteLine, .Lfunc_end16-rewriteConfigRewriteLine
                                        # -- End function
	.globl	rewriteConfigFormatMemory # -- Begin function rewriteConfigFormatMemory
	.p2align	4, 0x90
	.type	rewriteConfigFormatMemory,@function
rewriteConfigFormatMemory:              # @rewriteConfigFormatMemory
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB17_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testl	$1073741823, %eax       # imm = 0x3FFFFFFF
	je	.LBB17_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048575, %eax          # imm = 0xFFFFF
	je	.LBB17_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1023, %eax             # imm = 0x3FF
	jne	.LBB17_8
# %bb.6:
	leaq	1023(%rax), %rcx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	sarq	$10, %rcx
	movl	$.L.str.236, %edx
	jmp	.LBB17_9
.LBB17_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_8:
	movl	$.L.str.237, %edx
	movq	%rax, %rcx
	jmp	.LBB17_9
.LBB17_2:
	leaq	1073741823(%rax), %rcx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	sarq	$30, %rcx
	movl	$.L.str.234, %edx
	jmp	.LBB17_9
.LBB17_4:
	leaq	1048575(%rax), %rcx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	sarq	$20, %rcx
	movl	$.L.str.235, %edx
.LBB17_9:
	xorl	%eax, %eax
	callq	snprintf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	rewriteConfigFormatMemory, .Lfunc_end17-rewriteConfigFormatMemory
                                        # -- End function
	.globl	rewriteConfigBytesOption # -- Begin function rewriteConfigBytesOption
	.p2align	4, 0x90
	.type	rewriteConfigBytesOption,@function
rewriteConfigBytesOption:               # @rewriteConfigBytesOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	cmpq	%rcx, %rdx
	setne	%bl
	leaq	-96(%rbp), %r12
	movl	$64, %esi
	movq	%r12, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	rewriteConfigBytesOption, .Lfunc_end18-rewriteConfigBytesOption
                                        # -- End function
	.globl	rewriteConfigYesNoOption # -- Begin function rewriteConfigYesNoOption
	.p2align	4, 0x90
	.type	rewriteConfigYesNoOption,@function
rewriteConfigYesNoOption:               # @rewriteConfigYesNoOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	cmpl	%ecx, %edx
	setne	%r12b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %edx
	movl	$.L.str.28, %ecx
	cmoveq	%rdx, %rcx
	movl	$.L.str.238, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	rewriteConfigYesNoOption, .Lfunc_end19-rewriteConfigYesNoOption
                                        # -- End function
	.globl	rewriteConfigStringOption # -- Begin function rewriteConfigStringOption
	.p2align	4, 0x90
	.type	rewriteConfigStringOption,@function
rewriteConfigStringOption:              # @rewriteConfigStringOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB20_1
# %bb.4:
	movq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	testq	%rcx, %rcx
	je	.LBB20_7
# %bb.5:
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB20_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB20_7:
	movq	%r15, %rdi
	callq	sdsnew
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r13
	movq	%rbx, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatrepr
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	jmp	.LBB20_8
.LBB20_1:
	movq	%r15, %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB20_3
# %bb.2:
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB20_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	rewriteConfigStringOption, .Lfunc_end20-rewriteConfigStringOption
                                        # -- End function
	.globl	rewriteConfigNumericalOption # -- Begin function rewriteConfigNumericalOption
	.p2align	4, 0x90
	.type	rewriteConfigNumericalOption,@function
rewriteConfigNumericalOption:           # @rewriteConfigNumericalOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	cmpq	%rcx, %rdx
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	rewriteConfigNumericalOption, .Lfunc_end21-rewriteConfigNumericalOption
                                        # -- End function
	.globl	rewriteConfigOctalOption # -- Begin function rewriteConfigOctalOption
	.p2align	4, 0x90
	.type	rewriteConfigOctalOption,@function
rewriteConfigOctalOption:               # @rewriteConfigOctalOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	cmpl	%ecx, %edx
	setne	%bl
	callq	sdsempty
	movl	$.L.str.240, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	rewriteConfigOctalOption, .Lfunc_end22-rewriteConfigOctalOption
                                        # -- End function
	.globl	rewriteConfigEnumOption # -- Begin function rewriteConfigEnumOption
	.p2align	4, 0x90
	.type	rewriteConfigEnumOption,@function
rewriteConfigEnumOption:                # @rewriteConfigEnumOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_5
# %bb.1:
	cmpl	%edx, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_6
# %bb.2:                                # %.preheader
	addq	$24, %rcx
	.p2align	4, 0x90
.LBB23_4:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_5
# %bb.3:                                #   in Loop: Header=BB23_4 Depth=1
	cmpl	%edx, (%rcx)
	leaq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_4
	jmp	.LBB23_6
.LBB23_5:
	xorl	%eax, %eax
.LBB23_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$.L.str.27, %ebx
	cmovneq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpl	%r8d, %edx
	setne	%r12b
	callq	sdsempty
	movl	$.L.str.238, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	rewriteConfigEnumOption, .Lfunc_end23-rewriteConfigEnumOption
                                        # -- End function
	.globl	rewriteConfigSyslogfacilityOption # -- Begin function rewriteConfigSyslogfacilityOption
	.p2align	4, 0x90
	.type	rewriteConfigSyslogfacilityOption,@function
rewriteConfigSyslogfacilityOption:      # @rewriteConfigSyslogfacilityOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	server+2264(%rip), %eax
	xorl	%r15d, %r15d
	cmpl	$128, %eax
	setne	%r15b
	movl	$42, __A_VARIABLE(%rip)
	movq	syslog_facility_enum(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB24_5
# %bb.1:
	cmpl	%eax, syslog_facility_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_6
# %bb.2:                                # %.preheader
	movl	$syslog_facility_enum+24, %edx
	.p2align	4, 0x90
.LBB24_4:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB24_5
# %bb.3:                                #   in Loop: Header=BB24_4 Depth=1
	cmpl	%eax, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB24_4
	jmp	.LBB24_6
.LBB24_5:
	xorl	%ecx, %ecx
.LBB24_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movl	$.L.str.27, %ebx
	cmovneq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.60, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.60, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	rewriteConfigSyslogfacilityOption, .Lfunc_end24-rewriteConfigSyslogfacilityOption
                                        # -- End function
	.globl	rewriteConfigSaveOption # -- Begin function rewriteConfigSaveOption
	.p2align	4, 0x90
	.type	rewriteConfigSaveOption,@function
rewriteConfigSaveOption:                # @rewriteConfigSaveOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+2112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB25_3
# %bb.1:                                # %.preheader
	movl	$8, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB25_2:                               # =>This Inner Loop Header: Depth=1
	callq	sdsempty
	movq	server+2104(%rip), %rcx
	movq	-8(%rcx,%rbx), %rdx
	movl	(%rcx,%rbx), %ecx
	movl	$.L.str.241, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.47, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2112(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rax, %r14
	jl	.LBB25_2
.LBB25_3:
	movl	$.L.str.47, %edi
	callq	sdsnew
	movq	%rax, %r14
	movq	8(%r15), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_5
# %bb.4:
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB25_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	rewriteConfigSaveOption, .Lfunc_end25-rewriteConfigSaveOption
                                        # -- End function
	.globl	rewriteConfigDirOption  # -- Begin function rewriteConfigDirOption
	.p2align	4, 0x90
	.type	rewriteConfigDirOption,@function
rewriteConfigDirOption:                 # @rewriteConfigDirOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
	movq	%rdi, %r15
	leaq	-1056(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	getcwd
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.50, %edi
	callq	sdsnew
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	leaq	-1056(%rbp), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	sdscatrepr
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	jmp	.LBB26_4
.LBB26_1:
	movl	$.L.str.50, %edi
	callq	sdsnew
	movq	%rax, %r14
	movq	8(%r15), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_5
# %bb.2:
	movq	%r14, %rdi
	callq	sdsfree
.LBB26_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB26_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	rewriteConfigDirOption, .Lfunc_end26-rewriteConfigDirOption
                                        # -- End function
	.globl	rewriteConfigSlaveofOption # -- Begin function rewriteConfigSlaveofOption
	.p2align	4, 0x90
	.type	rewriteConfigSlaveofOption,@function
rewriteConfigSlaveofOption:             # @rewriteConfigSlaveofOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpl	$0, server+2924(%rip)
	movq	server+2464(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_2
# %bb.1:
	testq	%rax, %rax
	je	.LBB27_2
# %bb.5:
	callq	sdsempty
	movq	server+2464(%rip), %rcx
	movl	server+2472(%rip), %r8d
	movl	$.L.str.242, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	jmp	.LBB27_6
.LBB27_2:
	movq	%rbx, %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_4
# %bb.3:
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB27_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end27:
	.size	rewriteConfigSlaveofOption, .Lfunc_end27-rewriteConfigSlaveofOption
                                        # -- End function
	.globl	rewriteConfigNotifykeyspaceeventsOption # -- Begin function rewriteConfigNotifykeyspaceeventsOption
	.p2align	4, 0x90
	.type	rewriteConfigNotifykeyspaceeventsOption,@function
rewriteConfigNotifykeyspaceeventsOption: # @rewriteConfigNotifykeyspaceeventsOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movl	server+2920(%rip), %edi
	xorl	%r15d, %r15d
	testl	%edi, %edi
	setne	%r15b
	callq	keyspaceEventsFlagsToString
	movq	%rax, %r12
	movl	$.L.str.197, %edi
	callq	sdsnew
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movzbl	-1(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB28_1
# %bb.2:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI28_0(,%rcx,8)
.LBB28_3:
	shrq	$3, %rdx
	jmp	.LBB28_8
.LBB28_1:
	xorl	%edx, %edx
	jmp	.LBB28_8
.LBB28_4:
	movzbl	-3(%r12), %edx
	jmp	.LBB28_8
.LBB28_5:
	movzwl	-5(%r12), %edx
	jmp	.LBB28_8
.LBB28_6:
	movl	-9(%r12), %edx
	jmp	.LBB28_8
.LBB28_7:
	movq	-17(%r12), %rdx
.LBB28_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	sdscatrepr
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	sdsfree
	movl	$.L.str.197, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	rewriteConfigNotifykeyspaceeventsOption, .Lfunc_end28-rewriteConfigNotifykeyspaceeventsOption
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI28_0:
	.quad	.LBB28_3
	.quad	.LBB28_4
	.quad	.LBB28_5
	.quad	.LBB28_6
	.quad	.LBB28_7
                                        # -- End function
	.text
	.globl	rewriteConfigClientoutputbufferlimitOption # -- Begin function rewriteConfigClientoutputbufferlimitOption
	.p2align	4, 0x90
	.type	rewriteConfigClientoutputbufferlimitOption,@function
rewriteConfigClientoutputbufferlimitOption: # @rewriteConfigClientoutputbufferlimitOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-72, %r15
	leaq	-192(%rbp), %rbx
	leaq	-128(%rbp), %r13
	xorl	%r12d, %r12d
	jmp	.LBB29_1
	.p2align	4, 0x90
.LBB29_4:                               #   in Loop: Header=BB29_1 Depth=1
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$64, %esi
	movq	%rbx, %rdi
	callq	rewriteConfigFormatMemory
	movq	server+1888(%r15), %rdx
	movl	$64, %esi
	movq	%r13, %rdi
	callq	rewriteConfigFormatMemory
	movl	%r12d, %edi
	callq	getClientTypeName
	movq	%rax, %r14
	movl	$.L.str.232, %esi
	movq	%rax, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_5
.LBB29_6:                               #   in Loop: Header=BB29_1 Depth=1
	callq	sdsempty
	movq	server+1896(%r15), %rcx
	movq	%rcx, (%rsp)
	movl	$.L.str.243, %esi
	movl	$.L.str.181, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	movq	%rbx, %r8
	movq	%r13, %r9
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.181, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r12d
	addq	$24, %r15
	je	.LBB29_7
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movq	server+1880(%r15), %rdx
	movb	$1, %al
	cmpq	clientBufferLimitsDefaults+72(%r15), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_4
# %bb.2:                                #   in Loop: Header=BB29_1 Depth=1
	movq	server+1888(%r15), %rcx
	cmpq	clientBufferLimitsDefaults+80(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_4
# %bb.3:                                #   in Loop: Header=BB29_1 Depth=1
	movq	server+1896(%r15), %rax
	cmpq	clientBufferLimitsDefaults+88(%r15), %rax
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_4
	.p2align	4, 0x90
.LBB29_5:                               #   in Loop: Header=BB29_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.233, %r14d
	jmp	.LBB29_6
.LBB29_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	rewriteConfigClientoutputbufferlimitOption, .Lfunc_end29-rewriteConfigClientoutputbufferlimitOption
                                        # -- End function
	.globl	rewriteConfigBindOption # -- Begin function rewriteConfigBindOption
	.p2align	4, 0x90
	.type	rewriteConfigBindOption,@function
rewriteConfigBindOption:                # @rewriteConfigBindOption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	server+352(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB30_1
# %bb.4:
	movl	$server+224, %edi
	movl	$.L.str.217, %edx
	callq	sdsjoin
	movq	%rax, %rbx
	movl	$.L.str.42, %edi
	callq	sdsnew
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	sdscatsds
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$.L.str.42, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	jmp	.LBB30_5
.LBB30_1:
	movl	$.L.str.42, %edi
	callq	sdsnew
	movq	%rax, %r14
	movq	8(%r15), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB30_3
# %bb.2:
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB30_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	rewriteConfigBindOption, .Lfunc_end30-rewriteConfigBindOption
                                        # -- End function
	.globl	rewriteConfigGetContentFromState # -- Begin function rewriteConfigGetContentFromState
	.p2align	4, 0x90
	.type	rewriteConfigGetContentFromState,@function
rewriteConfigGetContentFromState:       # @rewriteConfigGetContentFromState
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	callq	sdsempty
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB31_15
# %bb.1:
	xorl	%ebx, %ebx
	xorl	%r8d, %r8d
	jmp	.LBB31_2
.LBB31_9:                               #   in Loop: Header=BB31_2 Depth=1
	shrq	$3, %rdi
	.p2align	4, 0x90
.LBB31_10:                              #   in Loop: Header=BB31_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB31_11
.LBB31_13:                              #   in Loop: Header=BB31_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatsds
	movl	$.L.str.29, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r14), %ecx
	movl	%r15d, %r8d
.LBB31_14:                              #   in Loop: Header=BB31_2 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ecx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	jge	.LBB31_15
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rsi
	movq	(%rsi,%rbx,8), %rsi
	movzbl	-1(%rsi), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB31_8
# %bb.3:                                #   in Loop: Header=BB31_2 Depth=1
	movl	%edi, %edx
	andl	$7, %edx
	jmpq	*.LJTI31_0(,%rdx,8)
.LBB31_4:                               #   in Loop: Header=BB31_2 Depth=1
	movzbl	-3(%rsi), %edi
	jmp	.LBB31_10
.LBB31_8:                               #   in Loop: Header=BB31_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_11:                              #   in Loop: Header=BB31_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	jne	.LBB31_14
# %bb.12:                               #   in Loop: Header=BB31_2 Depth=1
	movl	$1, %r15d
	jmp	.LBB31_13
.LBB31_5:                               #   in Loop: Header=BB31_2 Depth=1
	movzwl	-5(%rsi), %edi
	jmp	.LBB31_10
.LBB31_6:                               #   in Loop: Header=BB31_2 Depth=1
	movl	-9(%rsi), %edi
	jmp	.LBB31_10
.LBB31_7:                               #   in Loop: Header=BB31_2 Depth=1
	movq	-17(%rsi), %rdi
	jmp	.LBB31_10
.LBB31_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	rewriteConfigGetContentFromState, .Lfunc_end31-rewriteConfigGetContentFromState
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI31_0:
	.quad	.LBB31_9
	.quad	.LBB31_4
	.quad	.LBB31_5
	.quad	.LBB31_6
	.quad	.LBB31_7
                                        # -- End function
	.text
	.globl	rewriteConfigReleaseState # -- Begin function rewriteConfigReleaseState
	.p2align	4, 0x90
	.type	rewriteConfigReleaseState,@function
rewriteConfigReleaseState:              # @rewriteConfigReleaseState
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	movl	16(%rbx), %esi
	callq	sdsfreesplitres
	movq	(%rbx), %rdi
	callq	dictRelease
	movq	8(%rbx), %rdi
	callq	dictRelease
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end32:
	.size	rewriteConfigReleaseState, .Lfunc_end32-rewriteConfigReleaseState
                                        # -- End function
	.globl	rewriteConfigRemoveOrphaned # -- Begin function rewriteConfigRemoveOrphaned
	.p2align	4, 0x90
	.type	rewriteConfigRemoveOrphaned,@function
rewriteConfigRemoveOrphaned:            # @rewriteConfigRemoveOrphaned
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	(%rdi), %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB33_1
	.p2align	4, 0x90
.LBB33_3:                               #   in Loop: Header=BB33_1 Depth=1
	movl	$.L.str.244, %esi
	xorl	%edi, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB33_6:                               #   in Loop: Header=BB33_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
.LBB33_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_5 Depth 2
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_7
# %bb.2:                                #   in Loop: Header=BB33_1 Depth=1
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	8(%r15), %rdi
	movq	%r12, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_3
	.p2align	4, 0x90
.LBB33_5:                               #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB33_6
# %bb.4:                                #   in Loop: Header=BB33_5 Depth=2
	movq	(%r13), %r12
	movslq	16(%r12), %rbx
	movq	24(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	sdsfree
	callq	sdsempty
	movq	24(%r15), %rcx
	movq	%rax, (%rcx,%rbx,8)
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	listDelNode
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB33_5
.LBB33_7:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	rewriteConfigRemoveOrphaned, .Lfunc_end33-rewriteConfigRemoveOrphaned
                                        # -- End function
	.globl	rewriteConfigOverwriteFile # -- Begin function rewriteConfigOverwriteFile
	.p2align	4, 0x90
	.type	rewriteConfigOverwriteFile,@function
rewriteConfigOverwriteFile:             # @rewriteConfigOverwriteFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rsi, %r15
	xorl	%r13d, %r13d
	movl	$514, %esi              # imm = 0x202
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r14d
	movzbl	-1(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB34_7
# %bb.1:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI34_0(,%rcx,8)
.LBB34_2:
	shrq	$3, %rax
	movq	%rax, %r13
	jmp	.LBB34_7
.LBB34_3:
	movzbl	-3(%r15), %r13d
	jmp	.LBB34_7
.LBB34_4:
	movzwl	-5(%r15), %r13d
	jmp	.LBB34_7
.LBB34_5:
	movl	-9(%r15), %r13d
	jmp	.LBB34_7
.LBB34_6:
	movq	-17(%r15), %r13
.LBB34_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	cmpl	$-1, %r14d
	je	.LBB34_19
# %bb.8:
	leaq	-128(%rbp), %rsi
	movl	%r14d, %edi
	callq	fstat
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB34_18
# %bb.9:
	movq	%r15, %rdi
	callq	sdsdup
	movq	%rax, %r12
	movslq	%r13d, %r15
	movq	-112(%rbp), %rsi
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rsi
	jle	.LBB34_11
# %bb.10:
	movl	%esi, %ebx
	subl	%r15d, %ebx
	movq	%r12, %rdi
	callq	sdsgrowzero
	movq	%rax, %r12
	movb	$10, (%rax,%r15)
	leaq	(%rax,%r15), %rdi
	addq	$1, %rdi
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	movl	$35, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
.LBB34_11:
	movq	%r12, %rdi
	callq	strlen
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB34_12
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB34_14
# %bb.15:
	movl	%r14d, %edi
	movq	%r15, %rsi
	callq	ftruncate
	xorl	%ebx, %ebx
	jmp	.LBB34_16
.LBB34_12:
	movl	$-1, %ebx
.LBB34_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_17
.LBB34_14:
	xorl	%ebx, %ebx
.LBB34_17:
	movq	%r12, %rdi
	callq	sdsfree
.LBB34_18:
	movl	%r14d, %edi
	callq	close
.LBB34_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	rewriteConfigOverwriteFile, .Lfunc_end34-rewriteConfigOverwriteFile
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI34_0:
	.quad	.LBB34_2
	.quad	.LBB34_3
	.quad	.LBB34_4
	.quad	.LBB34_5
	.quad	.LBB34_6
                                        # -- End function
	.text
	.globl	rewriteConfig           # -- Begin function rewriteConfig
	.p2align	4, 0x90
	.type	rewriteConfig,@function
rewriteConfig:                          # @rewriteConfig
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	callq	rewriteConfigReadOldFile
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB35_1
# %bb.2:
	movq	%rax, %r13
	xorl	%r14d, %r14d
	cmpl	$0, server+1804(%rip)
	setne	%r14b
	movl	$.L.str.24, %r15d
	movl	$.L.str.28, %ebx
	cmoveq	%r15, %rbx
	callq	sdsempty
	xorl	%r12d, %r12d
	movl	$.L.str.238, %esi
	movl	$.L.str.110, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.110, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+104(%rip), %rdx
	movl	$.L.str.128, %esi
	movl	$.L.str.245, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movslq	server+216(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$6379, %r14             # imm = 0x18EB
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.38, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.38, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2976(%rip), %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.163, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.163, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2980(%rip), %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.164, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.164, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+220(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$511, %r14              # imm = 0x1FF
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.40, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.40, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	rewriteConfigBindOption
	movq	server+360(%rip), %rdx
	movl	$.L.str.44, %esi
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	rewriteConfigStringOption
	movl	server+368(%rip), %r14d
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	setne	%bl
	callq	sdsempty
	movl	$.L.str.240, %esi
	movl	$.L.str.45, %edx
	movq	%rax, %rdi
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.45, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+1732(%rip), %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.32, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.32, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+1736(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$300, %r14              # imm = 0x12C
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.34, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.34, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2584(%rip), %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.190, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.190, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1728(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	loglevel_enum(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB35_8
# %bb.3:
	movq	%rcx, %r12
	cmpl	%eax, loglevel_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB35_8
# %bb.4:                                # %.preheader7
	movl	$loglevel_enum+24, %ecx
	.p2align	4, 0x90
.LBB35_6:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rcx), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB35_7
# %bb.5:                                #   in Loop: Header=BB35_6 Depth=1
	cmpl	%eax, (%rcx)
	leaq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB35_6
	jmp	.LBB35_8
.LBB35_1:
	movl	$-1, %r14d
	jmp	.LBB35_29
.LBB35_7:
	xorl	%r12d, %r12d
.LBB35_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	movl	$.L.str.27, %ecx
	cmoveq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$2, %eax
	setne	%bl
	callq	sdsempty
	xorl	%r14d, %r14d
	movl	$.L.str.238, %esi
	movl	$.L.str.52, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.52, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2240(%rip), %rdx
	movl	$.L.str.54, %esi
	movl	$.L.str.49, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	xorl	%r12d, %r12d
	cmpl	$0, server+2248(%rip)
	setne	%r12b
	movl	$.L.str.28, %ebx
	cmoveq	%r15, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.58, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.58, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2256(%rip), %rdx
	movl	$.L.str.59, %esi
	movl	$.L.str.246, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movq	%r13, %rdi
	callq	rewriteConfigSyslogfacilityOption
	movq	%r13, %rdi
	callq	rewriteConfigSaveOption
	movslq	server+1792(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$16, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.62, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.62, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2180(%rip), %ebx
	movl	$.L.str.24, %r12d
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.24, %r12d
	movl	$.L.str.238, %esi
	movl	$.L.str.184, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.184, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2128(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.24, %r12d
	movl	$.L.str.238, %esi
	movl	$.L.str.100, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.100, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2132(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.24, %r12d
	movl	$.L.str.238, %esi
	movl	$.L.str.101, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.101, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2120(%rip), %rdx
	movl	$.L.str.129, %esi
	movl	$.L.str.247, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movq	%r13, %rdi
	callq	rewriteConfigDirOption
	movl	$.L.str.79, %esi
	movq	%r13, %rdi
	callq	rewriteConfigSlaveofOption
	movq	server+2592(%rip), %rdx
	movl	$.L.str.188, %esi
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	rewriteConfigStringOption
	movq	server+2456(%rip), %rdx
	movl	$.L.str.93, %esi
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	rewriteConfigStringOption
	movq	server+2968(%rip), %rdx
	movl	$.L.str.162, %esi
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	rewriteConfigStringOption
	movl	server+2552(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.95, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.95, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2556(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.97, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.97, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2560(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.99, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.99, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2372(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$10, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.81, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.81, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2476(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$60, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.83, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.83, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2384(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$1048576, %rdx          # imm = 0x100000
	setne	%bl
	leaq	-112(%rbp), %r15
	movl	$64, %esi
	movq	%r15, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.89, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.89, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2416(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$3600, %rdx             # imm = 0xE10
	setne	%bl
	movl	$64, %esi
	movq	%r15, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.91, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.91, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$0, server+2576(%rip)
	setne	%bl
	movl	$.L.str.28, %r15d
	movl	$.L.str.24, %r12d
	cmoveq	%r12, %r15
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.85, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.85, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$0, server+2444(%rip)
	setne	%r15b
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.86, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.86, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2448(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$5, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.87, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.87, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2580(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$100, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.186, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.186, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2432(%rip), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.192, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.192, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2436(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$10, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.195, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.195, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+96(%rip), %rdx
	movl	$.L.str.126, %esi
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	rewriteConfigStringOption
	movl	server+2700(%rip), %r15d
	xorl	%ebx, %ebx
	cmpq	$10000, %r15            # imm = 0x2710
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.65, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.65, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2704(%rip), %rdx
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	setne	%bl
	movl	$64, %esi
	leaq	-112(%rbp), %r15
	movq	%r15, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.67, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.67, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2728(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$536870912, %rdx        # imm = 0x20000000
	setne	%bl
	movl	$64, %esi
	movq	%r15, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.72, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.72, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1784(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$1073741824, %rdx       # imm = 0x40000000
	setne	%bl
	movl	$64, %esi
	movq	%r15, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.73, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.73, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2712(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	maxmemory_policy_enum(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB35_14
# %bb.9:
	movq	%rcx, %r14
	cmpl	%eax, maxmemory_policy_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB35_14
# %bb.10:                               # %.preheader4
	movl	$maxmemory_policy_enum+24, %ecx
	.p2align	4, 0x90
.LBB35_12:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rcx), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB35_13
# %bb.11:                               #   in Loop: Header=BB35_12 Depth=1
	cmpl	%eax, (%rcx)
	leaq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB35_12
	jmp	.LBB35_14
.LBB35_13:
	xorl	%r14d, %r14d
.LBB35_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movl	$.L.str.27, %ebx
	cmovneq	%r14, %rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	cmpl	$1792, %eax             # imm = 0x700
	setne	%r14b
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.68, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.68, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2716(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$5, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.70, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.70, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2720(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$10, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.74, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.74, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2724(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$1, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.76, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.76, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+1760(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$10, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.131, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.131, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+1764(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$100, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.133, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.133, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1752(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$104857600, %rdx        # imm = 0x6400000
	setne	%bl
	leaq	-112(%rbp), %r14
	movl	$64, %esi
	movq	%r14, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.135, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.135, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+1768(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$5, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.137, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.137, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+1772(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$75, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.139, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.139, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1776(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$1000, %r14             # imm = 0x3E8
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.141, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.141, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$0, server+1880(%rip)
	setne	%r15b
	movl	$.L.str.28, %r14d
	movl	$.L.str.24, %ebx
	cmovneq	%r14, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.113, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.113, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1888(%rip), %rdx
	movl	$.L.str.114, %esi
	movl	$.L.str.248, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movl	server+1884(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	aof_fsync_enum(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB35_19
# %bb.15:
	cmpl	%eax, aof_fsync_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB35_20
# %bb.16:                               # %.preheader1
	movl	$aof_fsync_enum+24, %ecx
	.p2align	4, 0x90
.LBB35_18:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rcx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB35_19
# %bb.17:                               #   in Loop: Header=BB35_18 Depth=1
	cmpl	%eax, (%rcx)
	leaq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB35_18
	jmp	.LBB35_20
.LBB35_19:
	xorl	%ebx, %ebx
.LBB35_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movl	$.L.str.27, %r15d
	cmoveq	%r15, %rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpl	$2, %eax
	setne	%r12b
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.117, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.117, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpl	$0, server+1896(%rip)
	setne	%r12b
	movl	$.L.str.24, %ebx
	cmovneq	%r14, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.116, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.116, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+1900(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$100, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.119, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.119, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1904(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$67108864, %rdx         # imm = 0x4000000
	setne	%bl
	leaq	-112(%rbp), %r12
	movl	$64, %esi
	movq	%r12, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.121, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.121, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3032(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$5000, %r12             # imm = 0x1388
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.175, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.175, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpl	$0, server+2924(%rip)
	setne	%r12b
	movl	$.L.str.24, %ebx
	cmovneq	%r14, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.160, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.160, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2936(%rip), %rdx
	movl	$.L.str.161, %esi
	movl	$.L.str.249, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movl	server+2960(%rip), %ebx
	xorl	%r12d, %r12d
	cmpl	$1, %ebx
	setne	%r12b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %ecx
	cmovneq	%r14, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.165, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.165, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpl	$0, server+2964(%rip)
	setne	%r12b
	movl	$.L.str.24, %ebx
	cmovneq	%r14, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.174, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.174, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2928(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$15000, %r12            # imm = 0x3A98
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.166, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.166, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2952(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$1, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.168, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.168, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2956(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$10, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.171, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.171, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1184(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$10000, %r12            # imm = 0x2710
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.177, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.177, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.178, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.178, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1192(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$128, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.180, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.180, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	rewriteConfigNotifykeyspaceeventsOption
	movq	server+2800(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$512, %r12              # imm = 0x200
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.143, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.143, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2808(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$64, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.144, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.144, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2848(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$4096, %r12             # imm = 0x1000
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.145, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.145, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2856(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$100, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.146, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.146, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2864(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$-2, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.149, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.149, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+2868(%rip), %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.150, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.150, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2816(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$512, %r12              # imm = 0x200
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.151, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.151, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2824(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$128, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.152, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.152, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2832(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$64, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.153, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.153, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2840(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$3000, %r12             # imm = 0xBB8
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.154, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.154, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+88(%rip), %ebx
	xorl	%r12d, %r12d
	cmpl	$1, %ebx
	setne	%r12b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %ecx
	cmovneq	%r14, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.102, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.102, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpl	$0, server+1744(%rip)
	setne	%r12b
	movl	$.L.str.24, %ebx
	cmovneq	%r14, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.108, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.108, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+856(%rip), %ebx
	xorl	%r12d, %r12d
	cmpl	$1, %ebx
	setne	%r12b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %ecx
	cmovneq	%r14, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.36, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.36, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	rewriteConfigClientoutputbufferlimitOption
	movslq	server+36(%rip), %r12
	xorl	%ebx, %ebx
	cmpq	$10, %r12
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.112, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.112, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2016(%rip), %ebx
	xorl	%r12d, %r12d
	cmpl	$1, %ebx
	setne	%r12b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %ecx
	cmovneq	%r14, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.122, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.122, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2020(%rip), %ebx
	xorl	%r12d, %r12d
	cmpl	$1, %ebx
	setne	%r12b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %ecx
	cmovneq	%r14, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.123, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.123, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2032(%rip), %ebx
	xorl	%r12d, %r12d
	cmpl	$1, %ebx
	setne	%r12b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %ecx
	cmovneq	%r14, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.124, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.124, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2036(%rip), %ebx
	xorl	%r12d, %r12d
	cmpl	$1, %ebx
	setne	%r12b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %ecx
	cmovneq	%r14, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.125, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.125, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r12d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1800(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	supervised_mode_enum(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB35_25
# %bb.21:
	cmpl	%eax, supervised_mode_enum+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB35_26
# %bb.22:                               # %.preheader
	movl	$supervised_mode_enum+24, %edx
	.p2align	4, 0x90
.LBB35_24:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB35_25
# %bb.23:                               #   in Loop: Header=BB35_24 Depth=1
	cmpl	%eax, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB35_24
	jmp	.LBB35_26
.LBB35_25:
	xorl	%ecx, %ecx
.LBB35_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	cmovneq	%rcx, %r15
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setne	%bl
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.199, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.199, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$0, server+3080(%rip)
	setne	%r15b
	movl	$.L.str.24, %r12d
	movl	$.L.str.28, %r14d
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.103, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.103, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$0, server+3084(%rip)
	setne	%r15b
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.104, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.104, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$0, server+3088(%rip)
	setne	%r15b
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.105, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.105, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	cmpl	$0, server+2656(%rip)
	setne	%r15b
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.107, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.107, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	movl	server+32(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	cmoveq	%r12, %r14
	movl	$.L.str.238, %esi
	movl	$.L.str.111, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.111, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+164(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB35_28
# %bb.27:
	movq	%r13, %rdi
	callq	rewriteConfigSentinelOption
	movl	$42, __A_VARIABLE(%rip)
.LBB35_28:
	movq	%r13, %rdi
	callq	rewriteConfigRemoveOrphaned
	movq	%r13, %rdi
	callq	rewriteConfigGetContentFromState
	movq	%rax, %rbx
	movq	server+8(%rip), %rdi
	movq	%rax, %rsi
	callq	rewriteConfigOverwriteFile
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	sdsfree
	movq	24(%r13), %rdi
	movl	16(%r13), %esi
	callq	sdsfreesplitres
	movq	(%r13), %rdi
	callq	dictRelease
	movq	8(%r13), %rdi
	callq	dictRelease
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB35_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	rewriteConfig, .Lfunc_end35-rewriteConfig
                                        # -- End function
	.globl	configCommand           # -- Begin function configCommand
	.p2align	4, 0x90
	.type	configCommand,@function
configCommand:                          # @configCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r14
	cmpl	$0, server+860(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB36_4
# %bb.1:
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.250, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB36_4
# %bb.2:
	movl	$.L.str.251, %esi
.LBB36_3:
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB36_25
.LBB36_4:
	movl	64(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	cmpl	$2, %r15d
	jne	.LBB36_7
# %bb.5:
	movl	$.L.str.252, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB36_6
.LBB36_7:
	movl	$.L.str.257, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB36_10
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r15d
	jne	.LBB36_10
# %bb.9:
	movq	%r14, %rdi
	callq	configSetCommand
	jmp	.LBB36_25
.LBB36_10:
	movl	$.L.str.250, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB36_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r15d
	jne	.LBB36_13
# %bb.12:
	movq	%r14, %rdi
	callq	configGetCommand
	jmp	.LBB36_25
.LBB36_13:
	movl	$.L.str.258, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB36_16
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jne	.LBB36_16
# %bb.15:
	callq	resetServerStats
	callq	resetCommandTableStats
	jmp	.LBB36_23
.LBB36_16:
	movl	$.L.str.259, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB36_24
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jne	.LBB36_24
# %bb.18:
	movq	server+8(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB36_19
# %bb.20:
	callq	rewriteConfig
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB36_21
# %bb.22:
	movl	$.L.str.263, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB36_23:
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB36_25
.LBB36_24:
	movq	%r14, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB36_25
.LBB36_6:
	movq	$0, -32(%rbp)
	movl	$.L.str.254, %eax
	movq	%rax, %xmm0
	movl	$.L.str.253, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -64(%rbp)
	movl	$.L.str.256, %eax
	movq	%rax, %xmm0
	movl	$.L.str.255, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -48(%rbp)
	leaq	-64(%rbp), %rsi
	movq	%r14, %rdi
	callq	addReplyHelp
.LBB36_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_19:
	movl	$.L.str.260, %esi
	jmp	.LBB36_3
.LBB36_21:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.261, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.262, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB36_25
.Lfunc_end36:
	.size	configCommand, .Lfunc_end36-configCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"volatile-lru"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"volatile-lfu"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"volatile-random"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"volatile-ttl"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"allkeys-lru"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"allkeys-lfu"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"allkeys-random"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"noeviction"
	.size	.L.str.7, 11

	.type	maxmemory_policy_enum,@object # @maxmemory_policy_enum
	.data
	.globl	maxmemory_policy_enum
	.p2align	4
maxmemory_policy_enum:
	.quad	.L.str
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.1
	.long	258                     # 0x102
	.zero	4
	.quad	.L.str.2
	.long	768                     # 0x300
	.zero	4
	.quad	.L.str.3
	.long	512                     # 0x200
	.zero	4
	.quad	.L.str.4
	.long	1029                    # 0x405
	.zero	4
	.quad	.L.str.5
	.long	1286                    # 0x506
	.zero	4
	.quad	.L.str.6
	.long	1540                    # 0x604
	.zero	4
	.quad	.L.str.7
	.long	1792                    # 0x700
	.zero	4
	.zero	16
	.size	maxmemory_policy_enum, 144

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"user"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"local0"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"local1"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"local2"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"local3"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"local4"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"local5"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"local6"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"local7"
	.size	.L.str.16, 7

	.type	syslog_facility_enum,@object # @syslog_facility_enum
	.data
	.globl	syslog_facility_enum
	.p2align	4
syslog_facility_enum:
	.quad	.L.str.8
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.9
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.10
	.long	136                     # 0x88
	.zero	4
	.quad	.L.str.11
	.long	144                     # 0x90
	.zero	4
	.quad	.L.str.12
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.13
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str.14
	.long	168                     # 0xa8
	.zero	4
	.quad	.L.str.15
	.long	176                     # 0xb0
	.zero	4
	.quad	.L.str.16
	.long	184                     # 0xb8
	.zero	4
	.zero	16
	.size	syslog_facility_enum, 160

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"debug"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"verbose"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"notice"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"warning"
	.size	.L.str.20, 8

	.type	loglevel_enum,@object   # @loglevel_enum
	.data
	.globl	loglevel_enum
	.p2align	4
loglevel_enum:
	.quad	.L.str.17
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.19
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.20
	.long	3                       # 0x3
	.zero	4
	.zero	16
	.size	loglevel_enum, 80

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"upstart"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"systemd"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"auto"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"no"
	.size	.L.str.24, 3

	.type	supervised_mode_enum,@object # @supervised_mode_enum
	.data
	.globl	supervised_mode_enum
	.p2align	4
supervised_mode_enum:
	.quad	.L.str.21
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.22
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.23
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.24
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.size	supervised_mode_enum, 80

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"everysec"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"always"
	.size	.L.str.26, 7

	.type	aof_fsync_enum,@object  # @aof_fsync_enum
	.data
	.globl	aof_fsync_enum
	.p2align	4
aof_fsync_enum:
	.quad	.L.str.25
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.26
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.24
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.size	aof_fsync_enum, 64

	.type	clientBufferLimitsDefaults,@object # @clientBufferLimitsDefaults
	.globl	clientBufferLimitsDefaults
	.p2align	4
clientBufferLimitsDefaults:
	.zero	24
	.quad	268435456               # 0x10000000
	.quad	67108864                # 0x4000000
	.quad	60                      # 0x3c
	.quad	33554432                # 0x2000000
	.quad	8388608                 # 0x800000
	.quad	60                      # 0x3c
	.size	clientBufferLimitsDefaults, 72

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"unknown"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"yes"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\n"
	.size	.L.str.29, 2

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	" \t\r\n"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unbalanced quotes in configuration line"
	.size	.L.str.31, 40

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"timeout"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Invalid timeout value"
	.size	.L.str.33, 22

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"tcp-keepalive"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Invalid tcp-keepalive value"
	.size	.L.str.35, 28

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"protected-mode"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"argument must be 'yes' or 'no'"
	.size	.L.str.37, 31

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"port"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Invalid port"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"tcp-backlog"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Invalid backlog value"
	.size	.L.str.41, 22

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"bind"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Too many bind addresses specified"
	.size	.L.str.43, 34

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"unixsocket"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"unixsocketperm"
	.size	.L.str.45, 15

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Invalid socket file permissions"
	.size	.L.str.46, 32

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"save"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Invalid save parameters"
	.size	.L.str.48, 24

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.zero	1
	.size	.L.str.49, 1

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"dir"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Can't chdir to '%s': %s"
	.size	.L.str.51, 24

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"loglevel"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Invalid log level. Must be one of debug, verbose, notice, warning"
	.size	.L.str.53, 66

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"logfile"
	.size	.L.str.54, 8

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"a"
	.size	.L.str.55, 2

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Can't open the log file: %s"
	.size	.L.str.56, 28

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"always-show-logo"
	.size	.L.str.57, 17

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"syslog-enabled"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"syslog-ident"
	.size	.L.str.59, 13

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"syslog-facility"
	.size	.L.str.60, 16

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Invalid log facility. Must be one of USER or between LOCAL0-LOCAL7"
	.size	.L.str.61, 67

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"databases"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Invalid number of databases"
	.size	.L.str.63, 28

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"include"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"maxclients"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Invalid max clients limit"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"maxmemory"
	.size	.L.str.67, 10

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"maxmemory-policy"
	.size	.L.str.68, 17

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Invalid maxmemory policy"
	.size	.L.str.69, 25

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"maxmemory-samples"
	.size	.L.str.70, 18

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"maxmemory-samples must be 1 or greater"
	.size	.L.str.71, 39

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"proto-max-bulk-len"
	.size	.L.str.72, 19

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"client-query-buffer-limit"
	.size	.L.str.73, 26

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"lfu-log-factor"
	.size	.L.str.74, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"lfu-log-factor must be 0 or greater"
	.size	.L.str.75, 36

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"lfu-decay-time"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"lfu-decay-time must be 0 or greater"
	.size	.L.str.77, 36

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"slaveof"
	.size	.L.str.78, 8

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"replicaof"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"repl-ping-slave-period"
	.size	.L.str.80, 23

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"repl-ping-replica-period"
	.size	.L.str.81, 25

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"repl-ping-replica-period must be 1 or greater"
	.size	.L.str.82, 46

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"repl-timeout"
	.size	.L.str.83, 13

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"repl-timeout must be 1 or greater"
	.size	.L.str.84, 34

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"repl-disable-tcp-nodelay"
	.size	.L.str.85, 25

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"repl-diskless-sync"
	.size	.L.str.86, 19

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"repl-diskless-sync-delay"
	.size	.L.str.87, 25

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"repl-diskless-sync-delay can't be negative"
	.size	.L.str.88, 43

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"repl-backlog-size"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"repl-backlog-size must be 1 or greater."
	.size	.L.str.90, 40

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"repl-backlog-ttl"
	.size	.L.str.91, 17

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"repl-backlog-ttl can't be negative "
	.size	.L.str.92, 36

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"masterauth"
	.size	.L.str.93, 11

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"slave-serve-stale-data"
	.size	.L.str.94, 23

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"replica-serve-stale-data"
	.size	.L.str.95, 25

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"slave-read-only"
	.size	.L.str.96, 16

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"replica-read-only"
	.size	.L.str.97, 18

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"slave-ignore-maxmemory"
	.size	.L.str.98, 23

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"replica-ignore-maxmemory"
	.size	.L.str.99, 25

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"rdbcompression"
	.size	.L.str.100, 15

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"rdbchecksum"
	.size	.L.str.101, 12

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"activerehashing"
	.size	.L.str.102, 16

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"lazyfree-lazy-eviction"
	.size	.L.str.103, 23

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"lazyfree-lazy-expire"
	.size	.L.str.104, 21

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"lazyfree-lazy-server-del"
	.size	.L.str.105, 25

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"slave-lazy-flush"
	.size	.L.str.106, 17

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"replica-lazy-flush"
	.size	.L.str.107, 19

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"activedefrag"
	.size	.L.str.108, 13

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"active defrag can't be enabled without proper jemalloc support"
	.size	.L.str.109, 63

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"daemonize"
	.size	.L.str.110, 10

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"dynamic-hz"
	.size	.L.str.111, 11

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"hz"
	.size	.L.str.112, 3

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"appendonly"
	.size	.L.str.113, 11

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"appendfilename"
	.size	.L.str.114, 15

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"appendfilename can't be a path, just a filename"
	.size	.L.str.115, 48

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"no-appendfsync-on-rewrite"
	.size	.L.str.116, 26

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"appendfsync"
	.size	.L.str.117, 12

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"argument must be 'no', 'always' or 'everysec'"
	.size	.L.str.118, 46

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"auto-aof-rewrite-percentage"
	.size	.L.str.119, 28

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Invalid negative percentage for AOF auto rewrite"
	.size	.L.str.120, 49

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"auto-aof-rewrite-min-size"
	.size	.L.str.121, 26

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"aof-rewrite-incremental-fsync"
	.size	.L.str.122, 30

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"rdb-save-incremental-fsync"
	.size	.L.str.123, 27

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"aof-load-truncated"
	.size	.L.str.124, 19

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"aof-use-rdb-preamble"
	.size	.L.str.125, 21

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"requirepass"
	.size	.L.str.126, 12

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Password is longer than CONFIG_AUTHPASS_MAX_LEN"
	.size	.L.str.127, 48

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"pidfile"
	.size	.L.str.128, 8

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"dbfilename"
	.size	.L.str.129, 11

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"dbfilename can't be a path, just a filename"
	.size	.L.str.130, 44

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"active-defrag-threshold-lower"
	.size	.L.str.131, 30

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"active-defrag-threshold-lower must be between 0 and 1000"
	.size	.L.str.132, 57

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"active-defrag-threshold-upper"
	.size	.L.str.133, 30

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"active-defrag-threshold-upper must be between 0 and 1000"
	.size	.L.str.134, 57

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"active-defrag-ignore-bytes"
	.size	.L.str.135, 27

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"active-defrag-ignore-bytes must above 0"
	.size	.L.str.136, 40

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"active-defrag-cycle-min"
	.size	.L.str.137, 24

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"active-defrag-cycle-min must be between 1 and 99"
	.size	.L.str.138, 49

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"active-defrag-cycle-max"
	.size	.L.str.139, 24

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"active-defrag-cycle-max must be between 1 and 99"
	.size	.L.str.140, 49

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"active-defrag-max-scan-fields"
	.size	.L.str.141, 30

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"active-defrag-max-scan-fields must be positive"
	.size	.L.str.142, 47

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"hash-max-ziplist-entries"
	.size	.L.str.143, 25

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"hash-max-ziplist-value"
	.size	.L.str.144, 23

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"stream-node-max-bytes"
	.size	.L.str.145, 22

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"stream-node-max-entries"
	.size	.L.str.146, 24

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"list-max-ziplist-entries"
	.size	.L.str.147, 25

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"list-max-ziplist-value"
	.size	.L.str.148, 23

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"list-max-ziplist-size"
	.size	.L.str.149, 22

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"list-compress-depth"
	.size	.L.str.150, 20

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"set-max-intset-entries"
	.size	.L.str.151, 23

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"zset-max-ziplist-entries"
	.size	.L.str.152, 25

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"zset-max-ziplist-value"
	.size	.L.str.153, 23

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"hll-sparse-max-bytes"
	.size	.L.str.154, 21

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"rename-command"
	.size	.L.str.155, 15

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"No such command in rename-command"
	.size	.L.str.156, 34

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"retval == DICT_OK"
	.size	.L.str.157, 18

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/config.c"
	.size	.L.str.158, 74

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Target command name already exists"
	.size	.L.str.159, 35

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"cluster-enabled"
	.size	.L.str.160, 16

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"cluster-config-file"
	.size	.L.str.161, 20

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"cluster-announce-ip"
	.size	.L.str.162, 20

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"cluster-announce-port"
	.size	.L.str.163, 22

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"cluster-announce-bus-port"
	.size	.L.str.164, 26

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"cluster-require-full-coverage"
	.size	.L.str.165, 30

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"cluster-node-timeout"
	.size	.L.str.166, 21

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"cluster node timeout must be 1 or greater"
	.size	.L.str.167, 42

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"cluster-migration-barrier"
	.size	.L.str.168, 26

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"cluster migration barrier must zero or positive"
	.size	.L.str.169, 48

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"cluster-slave-validity-factor"
	.size	.L.str.170, 30

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"cluster-replica-validity-factor"
	.size	.L.str.171, 32

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"cluster replica validity factor must be zero or positive"
	.size	.L.str.172, 57

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"cluster-slave-no-failover"
	.size	.L.str.173, 26

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"cluster-replica-no-failover"
	.size	.L.str.174, 28

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"lua-time-limit"
	.size	.L.str.175, 15

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"lua-replicate-commands"
	.size	.L.str.176, 23

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"slowlog-log-slower-than"
	.size	.L.str.177, 24

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"latency-monitor-threshold"
	.size	.L.str.178, 26

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"The latency threshold can't be negative"
	.size	.L.str.179, 40

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"slowlog-max-len"
	.size	.L.str.180, 16

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"client-output-buffer-limit"
	.size	.L.str.181, 27

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Unrecognized client limit class: the user specified an invalid one, or 'master' which has no buffer limits."
	.size	.L.str.182, 108

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"Negative number of seconds in soft limit is invalid"
	.size	.L.str.183, 52

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"stop-writes-on-bgsave-error"
	.size	.L.str.184, 28

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"slave-priority"
	.size	.L.str.185, 15

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"replica-priority"
	.size	.L.str.186, 17

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"slave-announce-ip"
	.size	.L.str.187, 18

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"replica-announce-ip"
	.size	.L.str.188, 20

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"slave-announce-port"
	.size	.L.str.189, 20

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"replica-announce-port"
	.size	.L.str.190, 22

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"min-slaves-to-write"
	.size	.L.str.191, 20

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"min-replicas-to-write"
	.size	.L.str.192, 22

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Invalid value for min-replicas-to-write."
	.size	.L.str.193, 41

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"min-slaves-max-lag"
	.size	.L.str.194, 19

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"min-replicas-max-lag"
	.size	.L.str.195, 21

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"Invalid value for min-replicas-max-lag."
	.size	.L.str.196, 40

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"notify-keyspace-events"
	.size	.L.str.197, 23

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"Invalid event class character. Use 'g$lshzxeA'."
	.size	.L.str.198, 48

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"supervised"
	.size	.L.str.199, 11

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"Invalid option for 'supervised'. Allowed values: 'upstart', 'systemd', 'auto', or 'no'"
	.size	.L.str.200, 87

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"loadmodule"
	.size	.L.str.201, 11

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"sentinel"
	.size	.L.str.202, 9

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"sentinel directive while not in sentinel mode"
	.size	.L.str.203, 46

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"Bad directive or wrong number of arguments"
	.size	.L.str.204, 43

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"replicaof directive not allowed in cluster mode"
	.size	.L.str.205, 48

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"\n*** FATAL CONFIG FILE ERROR ***\n"
	.size	.L.str.206, 34

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"Reading the configuration file, at line %d\n"
	.size	.L.str.207, 44

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	">>> '%s'\n"
	.size	.L.str.208, 10

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"%s\n"
	.size	.L.str.209, 4

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"r"
	.size	.L.str.210, 2

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Fatal error, can't open config file '%s'"
	.size	.L.str.211, 41

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"sdsEncodedObject(c->argv[2])"
	.size	.L.str.212, 29

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"sdsEncodedObject(c->argv[3])"
	.size	.L.str.213, 29

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"The operating system is not able to handle the specified number of clients, try with %d"
	.size	.L.str.214, 88

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"The event loop API used by Redis is not able to handle the specified number of clients"
	.size	.L.str.215, 87

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"Unable to turn on AOF. Check server logs."
	.size	.L.str.216, 42

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	" "
	.size	.L.str.217, 2

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"Changing directory: %s"
	.size	.L.str.218, 23

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"-DISABLED Active defragmentation cannot be enabled: it requires a Redis server compiled with a modified Jemalloc like the one shipped by default with the Redis source distribution"
	.size	.L.str.219, 180

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"watchdog-period"
	.size	.L.str.220, 16

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"WARNING: the new maxmemory value set via CONFIG SET is smaller than the current memory usage. This will result in key eviction and/or the inability to accept new write commands depending on the maxmemory-policy."
	.size	.L.str.221, 212

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"Unsupported CONFIG parameter: %s"
	.size	.L.str.222, 33

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"Invalid argument '%s' for CONFIG SET '%s'"
	.size	.L.str.223, 42

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"sdsEncodedObject(o)"
	.size	.L.str.224, 20

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"%jd %d"
	.size	.L.str.225, 7

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"%s %llu %llu %ld"
	.size	.L.str.226, 17

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"%o"
	.size	.L.str.227, 3

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"%s %d"
	.size	.L.str.228, 6

	.type	optionToLineDictType,@object # @optionToLineDictType
	.data
	.globl	optionToLineDictType
	.p2align	3
optionToLineDictType:
	.quad	dictSdsCaseHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCaseCompare
	.quad	dictSdsDestructor
	.quad	dictListDestructor
	.size	optionToLineDictType, 48

	.type	optionSetDictType,@object # @optionSetDictType
	.globl	optionSetDictType
	.p2align	3
optionSetDictType:
	.quad	dictSdsCaseHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCaseCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	optionSetDictType, 48

	.type	.L.str.229,@object      # @.str.229
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.229:
	.asciz	"\r\n\t "
	.size	.L.str.229, 5

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"# Generated by CONFIG REWRITE"
	.size	.L.str.230, 30

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"# ??? "
	.size	.L.str.231, 7

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"slave"
	.size	.L.str.232, 6

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"replica"
	.size	.L.str.233, 8

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"%lldgb"
	.size	.L.str.234, 7

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"%lldmb"
	.size	.L.str.235, 7

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"%lldkb"
	.size	.L.str.236, 7

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"%lld"
	.size	.L.str.237, 5

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"%s %s"
	.size	.L.str.238, 6

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"%s %lld"
	.size	.L.str.239, 8

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"%s %o"
	.size	.L.str.240, 6

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"save %ld %d"
	.size	.L.str.241, 12

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"%s %s %d"
	.size	.L.str.242, 9

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"%s %s %s %s %ld"
	.size	.L.str.243, 16

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"Not rewritten option: %s"
	.size	.L.str.244, 25

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"/var/run/redis.pid"
	.size	.L.str.245, 19

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"redis"
	.size	.L.str.246, 6

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"dump.rdb"
	.size	.L.str.247, 9

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"appendonly.aof"
	.size	.L.str.248, 15

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"nodes.conf"
	.size	.L.str.249, 11

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"get"
	.size	.L.str.250, 4

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"Only CONFIG GET is allowed during loading"
	.size	.L.str.251, 42

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"help"
	.size	.L.str.252, 5

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"GET <pattern> -- Return parameters matching the glob-like <pattern> and their values."
	.size	.L.str.253, 86

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"SET <parameter> <value> -- Set parameter to value."
	.size	.L.str.254, 51

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"RESETSTAT -- Reset statistics reported by INFO."
	.size	.L.str.255, 48

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"REWRITE -- Rewrite the configuration file."
	.size	.L.str.256, 43

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"set"
	.size	.L.str.257, 4

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"resetstat"
	.size	.L.str.258, 10

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"rewrite"
	.size	.L.str.259, 8

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"The server is running without a config file"
	.size	.L.str.260, 44

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"CONFIG REWRITE failed: %s"
	.size	.L.str.261, 26

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"Rewriting config file: %s"
	.size	.L.str.262, 26

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"CONFIG REWRITE executed with success."
	.size	.L.str.263, 38

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
