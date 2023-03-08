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
	movq	(%rdi), %rdi
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
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	.LBB0_2
	jmp	.LBB0_5
.LBB0_3:
	movl	-8(%rbx), %r14d
.LBB0_5:
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
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_7
# %bb.1:
	cmpl	%esi, 8(%rdi)
	je	.LBB1_5
# %bb.2:                                # %.preheader
	addq	$24, %rdi
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	cmpl	%esi, (%rdi)
	leaq	16(%rdi), %rdi
	jne	.LBB1_3
.LBB1_5:
	retq
.LBB1_7:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	configEnumGetName, .Lfunc_end1-configEnumGetName
                                        # -- End function
	.globl	configEnumGetNameOrUnknown # -- Begin function configEnumGetNameOrUnknown
	.p2align	4, 0x90
	.type	configEnumGetNameOrUnknown,@function
configEnumGetNameOrUnknown:             # @configEnumGetNameOrUnknown
# %bb.0:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB2_6
# %bb.1:
	cmpl	%esi, 8(%rdi)
	je	.LBB2_7
# %bb.2:                                # %.preheader
	addq	$24, %rdi
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	cmpl	%esi, (%rdi)
	leaq	16(%rdi), %rdi
	jne	.LBB2_3
	jmp	.LBB2_7
.LBB2_6:
	xorl	%ecx, %ecx
.LBB2_7:
	testq	%rcx, %rcx
	movl	$.L.str.27, %eax
	cmovneq	%rcx, %rax
	retq
.Lfunc_end2:
	.size	configEnumGetNameOrUnknown, .Lfunc_end2-configEnumGetNameOrUnknown
                                        # -- End function
	.globl	evictPolicyToString     # -- Begin function evictPolicyToString
	.p2align	4, 0x90
	.type	evictPolicyToString,@function
evictPolicyToString:                    # @evictPolicyToString
# %bb.0:
	movq	maxmemory_policy_enum(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB3_6
# %bb.1:
	movl	server+2712(%rip), %eax
	cmpl	%eax, maxmemory_policy_enum+8(%rip)
	je	.LBB3_7
# %bb.2:                                # %.preheader
	movl	$maxmemory_policy_enum+24, %edx
	.p2align	4, 0x90
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	cmpl	%eax, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB3_3
	jmp	.LBB3_7
.LBB3_6:
	xorl	%ecx, %ecx
.LBB3_7:
	testq	%rcx, %rcx
	movl	$.L.str.27, %eax
	cmovneq	%rcx, %rax
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
	testl	%eax, %eax
	je	.LBB4_1
# %bb.2:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	negl	%eax
	sbbl	%eax, %eax
	jmp	.LBB4_3
.LBB4_1:
	movl	$1, %eax
.LBB4_3:
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
	callq	createRawStringObject
	movq	16(%r13), %rcx
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, %r15
	je	.LBB7_11
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	movzbl	-1(%rdi), %esi
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	listAddNodeTail         # TAILCALL
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
	leaq	-68(%rbp), %r8
	movl	$.L.str.29, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, %r12
	movl	-68(%rbp), %esi
	testl	%esi, %esi
	jle	.LBB8_472
# %bb.1:
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB8_5
.LBB8_2:                                #   in Loop: Header=BB8_5 Depth=1
	movq	%r14, %rdi
	xorl	%esi, %esi
.LBB8_3:                                #   in Loop: Header=BB8_5 Depth=1
	callq	sdsfreesplitres
.LBB8_4:                                #   in Loop: Header=BB8_5 Depth=1
	movslq	-68(%rbp), %rsi
	cmpq	%rsi, %r15
	jge	.LBB8_473
.LBB8_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_252 Depth 2
                                        #     Child Loop BB8_461 Depth 2
                                        #     Child Loop BB8_103 Depth 2
                                        #     Child Loop BB8_83 Depth 2
                                        #     Child Loop BB8_53 Depth 2
                                        #     Child Loop BB8_32 Depth 2
	movq	%r15, %r13
	addq	$1, %r15
	movq	(%r12,%r13,8), %rdi
	movl	$.L.str.30, %esi
	callq	sdstrim
	movq	%rax, (%r12,%r13,8)
	movb	(%rax), %cl
	testb	%cl, %cl
	je	.LBB8_4
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	cmpb	$35, %cl
	je	.LBB8_4
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %rdi
	leaq	-52(%rbp), %rsi
	callq	sdssplitargs
	testq	%rax, %rax
	je	.LBB8_476
# %bb.8:                                #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %r14
	cmpl	$0, -52(%rbp)
	je	.LBB8_2
# %bb.9:                                #   in Loop: Header=BB8_5 Depth=1
	movq	(%r14), %rdi
	callq	sdstolower
	movq	(%r14), %rbx
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	-52(%rbp), %ecx
	testl	%eax, %eax
	jne	.LBB8_12
# %bb.10:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, %ecx
	jne	.LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1732(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_477
.LBB8_12:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_15
# %bb.13:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1736(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_529
.LBB8_15:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.36, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_20
# %bb.16:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_20
# %bb.17:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_27
# %bb.18:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+856(%rip)
.LBB8_19:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_64
	jmp	.LBB8_530
.LBB8_20:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_24
# %bb.21:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_24
# %bb.22:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+216(%rip)
.LBB8_23:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB8_64
	jmp	.LBB8_527
.LBB8_24:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_28
# %bb.25:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_28
# %bb.26:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+220(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_528
.LBB8_27:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+856(%rip)
	jmp	.LBB8_64
.LBB8_28:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	$2, %ecx
	jl	.LBB8_34
# %bb.29:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_34
# %bb.30:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$17, %ecx
	jg	.LBB8_526
# %bb.31:                               #   in Loop: Header=BB8_5 Depth=1
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %r13d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB8_32:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14,%rbx,8), %rdi
	callq	zstrdup
	movq	%rax, server+224(,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, %r13
	jne	.LBB8_32
# %bb.33:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, server+352(%rip)
	jmp	.LBB8_64
.LBB8_34:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_37
# %bb.35:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_37
# %bb.36:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+360(%rip)
	jmp	.LBB8_64
.LBB8_37:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_41
# %bb.38:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_41
# %bb.39:                               #   in Loop: Header=BB8_5 Depth=1
	callq	__errno
	movl	$0, (%rax)
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	strtol
	movl	%eax, server+368(%rip)
	callq	__errno
	cmpl	$0, (%rax)
	movl	$.L.str.46, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB8_532
# %bb.40:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$511, server+368(%rip)  # imm = 0x1FF
	jbe	.LBB8_64
	jmp	.LBB8_532
.LBB8_41:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_45
# %bb.42:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.50, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_49
# %bb.43:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_49
# %bb.44:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	chdir
	cmpl	$-1, %eax
	jne	.LBB8_64
	jmp	.LBB8_524
.LBB8_45:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	jne	.LBB8_55
# %bb.46:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, %ebx
	movq	16(%r14), %rdi
	callq	atoi
	movl	%eax, %ecx
	movl	$.L.str.48, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB8_532
# %bb.47:                               #   in Loop: Header=BB8_5 Depth=1
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	testl	%ecx, %ecx
	js	.LBB8_532
# %bb.48:                               #   in Loop: Header=BB8_5 Depth=1
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
	movl	-80(%rbp), %esi         # 4-byte Reload
	movl	%esi, 8(%rax,%rcx)
	movl	%edx, server+2112(%rip)
	jmp	.LBB8_64
.LBB8_49:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_58
# %bb.50:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_58
# %bb.51:                               #   in Loop: Header=BB8_5 Depth=1
	movq	loglevel_enum(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_525
# %bb.52:                               # %.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$loglevel_enum+16, %ebx
.LBB8_53:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_63
# %bb.54:                               #   in Loop: Header=BB8_53 Depth=2
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	.LBB8_53
	jmp	.LBB8_525
.LBB8_55:                               #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, %eax
	jne	.LBB8_64
# %bb.56:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	movl	$.L.str.49, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB8_64
# %bb.57:                               #   in Loop: Header=BB8_5 Depth=1
	movq	server+2104(%rip), %rdi
	callq	zfree
	movq	$0, server+2104(%rip)
	movl	$0, server+2112(%rip)
	jmp	.LBB8_64
.LBB8_58:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.54, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_65
# %bb.59:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_65
# %bb.60:                               #   in Loop: Header=BB8_5 Depth=1
	movq	server+2240(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2240(%rip)
	cmpb	$0, (%rax)
	je	.LBB8_64
# %bb.61:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.55, %esi
	movq	%rax, %rdi
	callq	fopen
	testq	%rax, %rax
	je	.LBB8_522
# %bb.62:                               #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %rdi
	callq	fclose
	jmp	.LBB8_64
.LBB8_63:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	%eax, server+1728(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	je	.LBB8_523
	.p2align	4, 0x90
.LBB8_64:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-52(%rbp), %esi
	movq	%r14, %rdi
	jmp	.LBB8_3
.LBB8_65:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.57, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_69
# %bb.66:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_69
# %bb.67:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_78
# %bb.68:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+176(%rip)
	jmp	.LBB8_19
.LBB8_69:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.58, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_73
# %bb.70:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_73
# %bb.71:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_85
# %bb.72:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2248(%rip)
	jmp	.LBB8_19
.LBB8_73:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.59, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	$2, %ecx
	jne	.LBB8_79
# %bb.74:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_79
# %bb.75:                               #   in Loop: Header=BB8_5 Depth=1
	movq	server+2256(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_77
# %bb.76:                               #   in Loop: Header=BB8_5 Depth=1
	callq	zfree
.LBB8_77:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2256(%rip)
	jmp	.LBB8_64
.LBB8_78:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+176(%rip)
	jmp	.LBB8_64
.LBB8_79:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_86
# %bb.80:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_86
# %bb.81:                               #   in Loop: Header=BB8_5 Depth=1
	movq	syslog_facility_enum(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_520
# %bb.82:                               # %.preheader1
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$syslog_facility_enum+16, %ebx
.LBB8_83:                               #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_89
# %bb.84:                               #   in Loop: Header=BB8_83 Depth=2
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	.LBB8_83
	jmp	.LBB8_520
.LBB8_85:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2248(%rip)
	jmp	.LBB8_64
.LBB8_86:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.62, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_90
# %bb.87:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_90
# %bb.88:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1792(%rip)
	testl	%eax, %eax
	jg	.LBB8_64
	jmp	.LBB8_518
.LBB8_89:                               #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	%eax, server+2264(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	jne	.LBB8_64
	jmp	.LBB8_521
.LBB8_90:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.64, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_93
# %bb.91:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_93
# %bb.92:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	loadServerConfig
	jmp	.LBB8_64
.LBB8_93:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_96
# %bb.94:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_96
# %bb.95:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2700(%rip)
	testl	%eax, %eax
	jne	.LBB8_64
	jmp	.LBB8_519
.LBB8_96:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_99
# %bb.97:                               #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_99
# %bb.98:                               #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2704(%rip)
	jmp	.LBB8_64
.LBB8_99:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_105
# %bb.100:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_105
# %bb.101:                              #   in Loop: Header=BB8_5 Depth=1
	movq	maxmemory_policy_enum(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_516
# %bb.102:                              # %.preheader3
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$maxmemory_policy_enum+16, %ebx
.LBB8_103:                              #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_108
# %bb.104:                              #   in Loop: Header=BB8_103 Depth=2
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	.LBB8_103
	jmp	.LBB8_516
.LBB8_105:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_109
# %bb.106:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_109
# %bb.107:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2716(%rip)
	testl	%eax, %eax
	jg	.LBB8_64
	jmp	.LBB8_514
.LBB8_108:                              #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	%eax, server+2712(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	jne	.LBB8_64
	jmp	.LBB8_517
.LBB8_109:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_112
# %bb.110:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_112
# %bb.111:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2728(%rip)
	jmp	.LBB8_64
.LBB8_112:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_115
# %bb.113:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_115
# %bb.114:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+1784(%rip)
	jmp	.LBB8_64
.LBB8_115:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_118
# %bb.116:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_118
# %bb.117:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2720(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_515
.LBB8_118:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_121
# %bb.119:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_121
# %bb.120:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2724(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_512
.LBB8_121:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.78, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_125
# %bb.122:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.79, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_126
# %bb.123:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_126
.LBB8_124:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, server+2464(%rip)
	movq	16(%r14), %rdi
	callq	atoi
	movl	%eax, server+2472(%rip)
	movl	$1, server+2500(%rip)
	movl	%r15d, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB8_64
.LBB8_125:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$3, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_124
.LBB8_126:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.80, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_132
# %bb.127:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_129
# %bb.128:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_133
.LBB8_129:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.83, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_134
# %bb.130:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_134
# %bb.131:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2476(%rip)
	testl	%eax, %eax
	jg	.LBB8_64
	jmp	.LBB8_481
.LBB8_132:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_158
.LBB8_133:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2372(%rip)
	testl	%eax, %eax
	jg	.LBB8_64
	jmp	.LBB8_513
.LBB8_134:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.85, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_138
# %bb.135:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_138
# %bb.136:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_145
# %bb.137:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2576(%rip)
	jmp	.LBB8_19
.LBB8_138:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.86, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_142
# %bb.139:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_142
# %bb.140:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_150
# %bb.141:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2444(%rip)
	jmp	.LBB8_19
.LBB8_142:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.87, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_146
# %bb.143:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_146
# %bb.144:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2448(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_479
.LBB8_145:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2576(%rip)
	jmp	.LBB8_64
.LBB8_146:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.89, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_151
# %bb.147:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_151
# %bb.148:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	testq	%rax, %rax
	jle	.LBB8_480
# %bb.149:                              #   in Loop: Header=BB8_5 Depth=1
	movq	%rax, %rdi
	callq	resizeReplicationBacklog
	jmp	.LBB8_64
.LBB8_150:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2444(%rip)
	jmp	.LBB8_64
.LBB8_151:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.91, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_154
# %bb.152:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_154
# %bb.153:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	cltq
	movq	%rax, server+2416(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_478
.LBB8_154:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_158
# %bb.155:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_158
# %bb.156:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2456(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	cmpb	$0, (%rdi)
	je	.LBB8_201
# %bb.157:                              #   in Loop: Header=BB8_5 Depth=1
	callq	zstrdup
	movq	%rax, server+2456(%rip)
	jmp	.LBB8_64
.LBB8_158:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.94, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_163
# %bb.159:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.95, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_164
# %bb.160:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_164
.LBB8_161:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_169
# %bb.162:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2552(%rip)
	jmp	.LBB8_19
.LBB8_163:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_161
.LBB8_164:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.96, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_170
# %bb.165:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.97, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_171
# %bb.166:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_171
.LBB8_167:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_178
# %bb.168:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2556(%rip)
	jmp	.LBB8_19
.LBB8_169:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2552(%rip)
	jmp	.LBB8_64
.LBB8_170:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_167
.LBB8_171:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.98, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_179
# %bb.172:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.99, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_174
# %bb.173:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_180
.LBB8_174:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.100, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_183
# %bb.175:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_183
# %bb.176:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_191
# %bb.177:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2128(%rip)
	jmp	.LBB8_19
.LBB8_178:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2556(%rip)
	jmp	.LBB8_64
.LBB8_179:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_207
.LBB8_180:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_182
# %bb.181:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2560(%rip)
	jmp	.LBB8_19
.LBB8_182:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2560(%rip)
	jmp	.LBB8_64
.LBB8_183:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.101, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_187
# %bb.184:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_187
# %bb.185:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_196
# %bb.186:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2132(%rip)
	jmp	.LBB8_19
.LBB8_187:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.102, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_192
# %bb.188:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_192
# %bb.189:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_202
# %bb.190:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+88(%rip)
	jmp	.LBB8_19
.LBB8_191:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2128(%rip)
	jmp	.LBB8_64
.LBB8_192:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.103, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_197
# %bb.193:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_197
# %bb.194:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_229
# %bb.195:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+3080(%rip)
	jmp	.LBB8_19
.LBB8_196:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2132(%rip)
	jmp	.LBB8_64
.LBB8_197:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.104, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_203
# %bb.198:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_203
# %bb.199:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_236
# %bb.200:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+3084(%rip)
	jmp	.LBB8_19
.LBB8_201:                              #   in Loop: Header=BB8_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, server+2456(%rip)
	jmp	.LBB8_64
.LBB8_202:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+88(%rip)
	jmp	.LBB8_64
.LBB8_203:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.105, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_207
# %bb.204:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_207
# %bb.205:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_242
# %bb.206:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+3088(%rip)
	jmp	.LBB8_19
.LBB8_207:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.106, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_214
# %bb.208:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.107, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_210
# %bb.209:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_215
.LBB8_210:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.108, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_218
# %bb.211:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_218
# %bb.212:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_496
# %bb.213:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+1744(%rip)
	testl	%eax, %eax
	je	.LBB8_64
	jmp	.LBB8_493
.LBB8_214:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_347
.LBB8_215:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_217
# %bb.216:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2656(%rip)
	jmp	.LBB8_19
.LBB8_217:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2656(%rip)
	jmp	.LBB8_64
.LBB8_218:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.110, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_222
# %bb.219:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_222
# %bb.220:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_230
# %bb.221:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+1804(%rip)
	jmp	.LBB8_19
.LBB8_222:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.111, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_226
# %bb.223:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_226
# %bb.224:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_237
# %bb.225:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+32(%rip)
	jmp	.LBB8_19
.LBB8_226:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.112, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_231
# %bb.227:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_231
# %bb.228:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	testl	%eax, %eax
	movl	$1, %ecx
	cmovlel	%ecx, %eax
	cmpl	$501, %eax              # imm = 0x1F5
	movl	$500, %ecx              # imm = 0x1F4
	cmovgel	%ecx, %eax
	movl	%eax, server+36(%rip)
	jmp	.LBB8_64
.LBB8_229:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+3080(%rip)
	jmp	.LBB8_64
.LBB8_230:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+1804(%rip)
	jmp	.LBB8_64
.LBB8_231:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.113, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_238
# %bb.232:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_238
# %bb.233:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_247
# %bb.234:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB8_530
# %bb.235:                              #   in Loop: Header=BB8_5 Depth=1
	movl	%ecx, server+1880(%rip)
	jmp	.LBB8_64
.LBB8_236:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+3084(%rip)
	jmp	.LBB8_64
.LBB8_237:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+32(%rip)
	jmp	.LBB8_64
.LBB8_238:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.114, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_243
# %bb.239:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_243
# %bb.240:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	pathIsBaseName
	testl	%eax, %eax
	je	.LBB8_495
# %bb.241:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+1888(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+1888(%rip)
	jmp	.LBB8_64
.LBB8_242:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+3088(%rip)
	jmp	.LBB8_64
.LBB8_243:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.116, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_248
# %bb.244:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_248
# %bb.245:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_258
# %bb.246:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+1896(%rip)
	jmp	.LBB8_19
.LBB8_247:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %ecx
	movl	%ecx, server+1880(%rip)
	jmp	.LBB8_64
.LBB8_248:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.117, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_254
# %bb.249:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_254
# %bb.250:                              #   in Loop: Header=BB8_5 Depth=1
	movq	aof_fsync_enum(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_491
# %bb.251:                              # %.preheader7
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$aof_fsync_enum+16, %ebx
.LBB8_252:                              #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_257
# %bb.253:                              #   in Loop: Header=BB8_252 Depth=2
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	.LBB8_252
	jmp	.LBB8_491
.LBB8_254:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.119, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_259
# %bb.255:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_259
# %bb.256:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1900(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_489
.LBB8_257:                              #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	%eax, server+1884(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	jne	.LBB8_64
	jmp	.LBB8_492
.LBB8_258:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+1896(%rip)
	jmp	.LBB8_64
.LBB8_259:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.121, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_262
# %bb.260:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_262
# %bb.261:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+1904(%rip)
	jmp	.LBB8_64
.LBB8_262:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.122, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_266
# %bb.263:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_266
# %bb.264:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_274
# %bb.265:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2016(%rip)
	jmp	.LBB8_19
.LBB8_266:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.123, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_270
# %bb.267:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_270
# %bb.268:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_279
# %bb.269:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2020(%rip)
	jmp	.LBB8_19
.LBB8_270:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.124, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_275
# %bb.271:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_275
# %bb.272:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_285
# %bb.273:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2032(%rip)
	jmp	.LBB8_19
.LBB8_274:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2016(%rip)
	jmp	.LBB8_64
.LBB8_275:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.125, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_280
# %bb.276:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_280
# %bb.277:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_289
# %bb.278:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2036(%rip)
	jmp	.LBB8_19
.LBB8_279:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2020(%rip)
	jmp	.LBB8_64
.LBB8_280:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.126, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_286
# %bb.281:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_286
# %bb.282:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	strlen
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB8_490
# %bb.283:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	cmpb	$0, (%rdi)
	je	.LBB8_294
# %bb.284:                              #   in Loop: Header=BB8_5 Depth=1
	callq	zstrdup
	movq	%rax, server+96(%rip)
	jmp	.LBB8_64
.LBB8_285:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2032(%rip)
	jmp	.LBB8_64
.LBB8_286:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.128, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_290
# %bb.287:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_290
# %bb.288:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+104(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+104(%rip)
	jmp	.LBB8_64
.LBB8_289:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2036(%rip)
	jmp	.LBB8_64
.LBB8_290:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.129, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_295
# %bb.291:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_295
# %bb.292:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	pathIsBaseName
	testl	%eax, %eax
	je	.LBB8_487
# %bb.293:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2120(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2120(%rip)
	jmp	.LBB8_64
.LBB8_294:                              #   in Loop: Header=BB8_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, server+96(%rip)
	jmp	.LBB8_64
.LBB8_295:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.131, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_298
# %bb.296:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_298
# %bb.297:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1760(%rip)
	cmpl	$1000, %eax             # imm = 0x3E8
	jbe	.LBB8_64
	jmp	.LBB8_488
.LBB8_298:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.133, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_301
# %bb.299:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_301
# %bb.300:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1764(%rip)
	cmpl	$1000, %eax             # imm = 0x3E8
	jbe	.LBB8_64
	jmp	.LBB8_485
.LBB8_301:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.135, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_304
# %bb.302:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_304
# %bb.303:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+1752(%rip)
	testq	%rax, %rax
	jne	.LBB8_64
	jmp	.LBB8_486
.LBB8_304:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.137, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_307
# %bb.305:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_307
# %bb.306:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1768(%rip)
	addl	$-1, %eax
	cmpl	$98, %eax
	jbe	.LBB8_64
	jmp	.LBB8_483
.LBB8_307:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.139, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_310
# %bb.308:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_310
# %bb.309:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+1772(%rip)
	addl	$-1, %eax
	cmpl	$98, %eax
	jbe	.LBB8_64
	jmp	.LBB8_484
.LBB8_310:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.141, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_313
# %bb.311:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_313
# %bb.312:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+1776(%rip)
	testq	%rax, %rax
	jne	.LBB8_64
	jmp	.LBB8_482
.LBB8_313:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.143, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_316
# %bb.314:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_316
# %bb.315:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2800(%rip)
	jmp	.LBB8_64
.LBB8_316:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.144, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_319
# %bb.317:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_319
# %bb.318:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2808(%rip)
	jmp	.LBB8_64
.LBB8_319:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.145, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_322
# %bb.320:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_322
# %bb.321:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2848(%rip)
	jmp	.LBB8_64
.LBB8_322:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.146, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_325
# %bb.323:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_325
# %bb.324:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	cltq
	movq	%rax, server+2856(%rip)
	jmp	.LBB8_64
.LBB8_325:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.147, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_327
# %bb.326:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_64
.LBB8_327:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.148, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_329
# %bb.328:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_64
.LBB8_329:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.149, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_332
# %bb.330:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_332
# %bb.331:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2864(%rip)
	jmp	.LBB8_64
.LBB8_332:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.150, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_335
# %bb.333:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_335
# %bb.334:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2868(%rip)
	jmp	.LBB8_64
.LBB8_335:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.151, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_338
# %bb.336:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_338
# %bb.337:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2816(%rip)
	jmp	.LBB8_64
.LBB8_338:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.152, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_341
# %bb.339:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_341
# %bb.340:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2824(%rip)
	jmp	.LBB8_64
.LBB8_341:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.153, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_344
# %bb.342:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_344
# %bb.343:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2832(%rip)
	jmp	.LBB8_64
.LBB8_344:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.154, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_347
# %bb.345:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_347
# %bb.346:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, server+2840(%rip)
	jmp	.LBB8_64
.LBB8_347:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.155, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_354
# %bb.348:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_354
# %bb.349:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	lookupCommand
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB8_510
# %bb.350:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+56(%rip), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	testl	%eax, %eax
	jne	.LBB8_508
# %bb.351:                              #   in Loop: Header=BB8_5 Depth=1
	movq	16(%r14), %rdi
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB8_64
# %bb.352:                              #   in Loop: Header=BB8_5 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_353:                              #   in Loop: Header=BB8_5 Depth=1
	shrq	$3, %rax
	jmp	.LBB8_369
.LBB8_354:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.160, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_358
# %bb.355:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_358
# %bb.356:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_364
# %bb.357:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2924(%rip)
	jmp	.LBB8_19
.LBB8_358:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.161, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_361
# %bb.359:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_361
# %bb.360:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2936(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2936(%rip)
	jmp	.LBB8_64
.LBB8_361:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.162, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_371
# %bb.362:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_371
# %bb.363:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2968(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2968(%rip)
	jmp	.LBB8_64
.LBB8_364:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2924(%rip)
	jmp	.LBB8_64
.LBB8_365:                              #   in Loop: Header=BB8_5 Depth=1
	movzbl	-3(%rdi), %eax
	jmp	.LBB8_369
.LBB8_366:                              #   in Loop: Header=BB8_5 Depth=1
	movzwl	-5(%rdi), %eax
	jmp	.LBB8_369
.LBB8_367:                              #   in Loop: Header=BB8_5 Depth=1
	movl	-9(%rdi), %eax
	jmp	.LBB8_369
.LBB8_368:                              #   in Loop: Header=BB8_5 Depth=1
	movq	-17(%rdi), %rax
.LBB8_369:                              #   in Loop: Header=BB8_5 Depth=1
	testq	%rax, %rax
	je	.LBB8_64
# %bb.370:                              #   in Loop: Header=BB8_5 Depth=1
	callq	sdsdup
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	dictAdd
	testl	%eax, %eax
	je	.LBB8_64
	jmp	.LBB8_511
.LBB8_371:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.163, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_374
# %bb.372:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_374
# %bb.373:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2976(%rip)
	jmp	.LBB8_23
.LBB8_374:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.164, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_377
# %bb.375:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_377
# %bb.376:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2980(%rip)
	jmp	.LBB8_23
.LBB8_377:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.165, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_381
# %bb.378:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_381
# %bb.379:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_387
# %bb.380:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2960(%rip)
	jmp	.LBB8_19
.LBB8_381:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.166, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_384
# %bb.382:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_384
# %bb.383:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+2928(%rip)
	testq	%rax, %rax
	jg	.LBB8_64
	jmp	.LBB8_509
.LBB8_384:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.168, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_388
# %bb.385:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_388
# %bb.386:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2952(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_506
.LBB8_387:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2960(%rip)
	jmp	.LBB8_64
.LBB8_388:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.170, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_392
# %bb.389:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.171, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_393
# %bb.390:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_393
.LBB8_391:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2956(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_507
.LBB8_392:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_391
.LBB8_393:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.173, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_399
# %bb.394:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.174, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_396
# %bb.395:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_400
.LBB8_396:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.175, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_403
# %bb.397:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_403
# %bb.398:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+3032(%rip)
	jmp	.LBB8_64
.LBB8_399:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_417
.LBB8_400:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_402
# %bb.401:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2964(%rip)
	jmp	.LBB8_19
.LBB8_402:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2964(%rip)
	jmp	.LBB8_64
.LBB8_403:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.176, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_407
# %bb.404:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_407
# %bb.405:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_413
# %bb.406:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	negl	%eax
	sbbl	%eax, %eax
	movl	%eax, server+3076(%rip)
	jmp	.LBB8_64
.LBB8_407:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.177, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_410
# %bb.408:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_410
# %bb.409:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+1184(%rip)
	jmp	.LBB8_64
.LBB8_410:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.178, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_414
# %bb.411:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_414
# %bb.412:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+3096(%rip)
	testq	%rax, %rax
	jns	.LBB8_64
	jmp	.LBB8_498
.LBB8_413:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %eax
	movl	%eax, server+3076(%rip)
	jmp	.LBB8_64
.LBB8_414:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.180, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_417
# %bb.415:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_417
# %bb.416:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+1192(%rip)
	jmp	.LBB8_64
.LBB8_417:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.181, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$5, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_423
# %bb.418:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_423
# %bb.419:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	getClientTypeByName
	movl	%eax, %ebx
	movl	$.L.str.182, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	cmpl	$-1, %ebx
	je	.LBB8_532
# %bb.420:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$3, %ebx
	je	.LBB8_532
# %bb.421:                              #   in Loop: Header=BB8_5 Depth=1
	movq	16(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	24(%r14), %rdi
	xorl	%esi, %esi
	callq	memtoll
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	32(%r14), %rdi
	callq	atoi
	testl	%eax, %eax
	js	.LBB8_504
# %bb.422:                              #   in Loop: Header=BB8_5 Depth=1
	movslq	%ebx, %rcx
	shlq	$3, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, server+1808(%rcx,%rcx,2)
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, server+1816(%rcx,%rcx,2)
	cltq
	movq	%rax, server+1824(%rcx,%rcx,2)
	jmp	.LBB8_64
.LBB8_423:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.184, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_427
# %bb.424:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_427
# %bb.425:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_436
# %bb.426:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	negl	%ecx
	movl	%ecx, server+2180(%rip)
	jmp	.LBB8_19
.LBB8_427:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.185, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_431
# %bb.428:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.186, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_432
# %bb.429:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_432
.LBB8_430:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2580(%rip)
	jmp	.LBB8_64
.LBB8_431:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_430
.LBB8_432:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.187, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_437
# %bb.433:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.188, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_438
# %bb.434:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_438
.LBB8_435:                              #   in Loop: Header=BB8_5 Depth=1
	movq	server+2592(%rip), %rdi
	callq	zfree
	movq	8(%r14), %rdi
	callq	zstrdup
	movq	%rax, server+2592(%rip)
	jmp	.LBB8_64
.LBB8_436:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$1, server+2180(%rip)
	jmp	.LBB8_64
.LBB8_437:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_435
.LBB8_438:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.189, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_442
# %bb.439:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.190, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_443
# %bb.440:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_443
.LBB8_441:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2584(%rip)
	jmp	.LBB8_23
.LBB8_442:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_441
.LBB8_443:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.191, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_447
# %bb.444:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.192, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_448
# %bb.445:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_448
.LBB8_446:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2432(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_505
.LBB8_447:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_446
.LBB8_448:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.194, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_455
# %bb.449:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.195, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_451
# %bb.450:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	je	.LBB8_456
.LBB8_451:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.197, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_457
# %bb.452:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_457
# %bb.453:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	keyspaceEventsStringToFlags
	cmpl	$-1, %eax
	je	.LBB8_500
# %bb.454:                              #   in Loop: Header=BB8_5 Depth=1
	movl	%eax, server+2920(%rip)
	jmp	.LBB8_64
.LBB8_455:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_463
.LBB8_456:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, server+2436(%rip)
	testl	%eax, %eax
	jns	.LBB8_64
	jmp	.LBB8_502
.LBB8_457:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.199, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB8_463
# %bb.458:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_463
# %bb.459:                              #   in Loop: Header=BB8_5 Depth=1
	movq	supervised_mode_enum(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_499
# %bb.460:                              # %.preheader5
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$supervised_mode_enum+16, %ebx
.LBB8_461:                              #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB8_470
# %bb.462:                              #   in Loop: Header=BB8_461 Depth=2
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	.LBB8_461
	jmp	.LBB8_499
.LBB8_463:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.201, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jl	.LBB8_466
# %bb.464:                              #   in Loop: Header=BB8_5 Depth=1
	testl	%eax, %eax
	jne	.LBB8_466
# %bb.465:                              #   in Loop: Header=BB8_5 Depth=1
	movq	8(%r14), %rdi
	movq	%r14, %rsi
	addq	$16, %rsi
	movl	-48(%rbp), %edx         # 4-byte Reload
	addl	$-2, %edx
	callq	queueLoadModule
	jmp	.LBB8_64
.LBB8_466:                              #   in Loop: Header=BB8_5 Depth=1
	movl	$.L.str.202, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB8_501
# %bb.467:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$1, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB8_64
# %bb.468:                              #   in Loop: Header=BB8_5 Depth=1
	cmpl	$0, server+164(%rip)
	je	.LBB8_503
# %bb.469:                              #   in Loop: Header=BB8_5 Depth=1
	movq	%r14, %rdi
	addq	$8, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	addl	$-1, %esi
	callq	sentinelHandleConfiguration
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB8_64
	jmp	.LBB8_532
.LBB8_470:                              #   in Loop: Header=BB8_5 Depth=1
	movl	-8(%rbx), %eax
	movl	%eax, server+1800(%rip)
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	jne	.LBB8_64
# %bb.471:
	movl	$.L.str.200, %eax
	jmp	.LBB8_531
.LBB8_472:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB8_473:
	cmpl	$0, server+2924(%rip)
	je	.LBB8_475
# %bb.474:
	cmpq	$0, server+2464(%rip)
	jne	.LBB8_534
.LBB8_475:
	movq	%r12, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	sdsfreesplitres
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_476:
	movl	$.L.str.31, %eax
	jmp	.LBB8_531
.LBB8_477:
	movl	$.L.str.33, %eax
	jmp	.LBB8_531
.LBB8_478:
	movl	$.L.str.92, %eax
	jmp	.LBB8_531
.LBB8_479:
	movl	$.L.str.88, %eax
	jmp	.LBB8_531
.LBB8_480:
	movl	$.L.str.90, %eax
	jmp	.LBB8_531
.LBB8_481:
	movl	$.L.str.84, %eax
	jmp	.LBB8_531
.LBB8_482:
	movl	$.L.str.142, %eax
	jmp	.LBB8_531
.LBB8_483:
	movl	$.L.str.138, %eax
	jmp	.LBB8_531
.LBB8_484:
	movl	$.L.str.140, %eax
	jmp	.LBB8_531
.LBB8_485:
	movl	$.L.str.134, %eax
	jmp	.LBB8_531
.LBB8_486:
	movl	$.L.str.136, %eax
	jmp	.LBB8_531
.LBB8_487:
	movl	$.L.str.130, %eax
	jmp	.LBB8_531
.LBB8_488:
	movl	$.L.str.132, %eax
	jmp	.LBB8_531
.LBB8_489:
	movl	$.L.str.120, %eax
	jmp	.LBB8_531
.LBB8_490:
	movl	$.L.str.127, %eax
	jmp	.LBB8_531
.LBB8_491:
	movl	$-2147483648, server+1884(%rip) # imm = 0x80000000
.LBB8_492:
	movl	$.L.str.118, %eax
	jmp	.LBB8_531
.LBB8_493:
	movl	$.L.str.37, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	cmpl	$-1, %ecx
	jne	.LBB8_497
	jmp	.LBB8_532
.LBB8_495:
	movl	$.L.str.115, %eax
	jmp	.LBB8_531
.LBB8_496:
	movl	$1, server+1744(%rip)
.LBB8_497:                              # %.loopexit10
	movl	$.L.str.109, %eax
	jmp	.LBB8_531
.LBB8_498:
	movl	$.L.str.179, %eax
	jmp	.LBB8_531
.LBB8_499:
	movl	$-2147483648, server+1800(%rip) # imm = 0x80000000
	movl	$.L.str.200, %eax
	jmp	.LBB8_531
.LBB8_500:
	movl	$.L.str.198, %eax
	jmp	.LBB8_531
.LBB8_501:
	movl	$.L.str.204, %eax
	jmp	.LBB8_531
.LBB8_502:
	movl	$.L.str.196, %eax
	jmp	.LBB8_531
.LBB8_503:
	movl	$.L.str.203, %eax
	jmp	.LBB8_531
.LBB8_504:
	movl	$.L.str.183, %eax
	jmp	.LBB8_531
.LBB8_505:
	movl	$.L.str.193, %eax
	jmp	.LBB8_531
.LBB8_506:
	movl	$.L.str.169, %eax
	jmp	.LBB8_531
.LBB8_507:
	movl	$.L.str.172, %eax
	jmp	.LBB8_531
.LBB8_508:
	movl	$.L.str.157, %edi
	movl	$.L.str.158, %esi
	movl	$619, %edx              # imm = 0x26B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB8_509:
	movl	$.L.str.167, %eax
	jmp	.LBB8_531
.LBB8_510:
	movl	$.L.str.156, %eax
	jmp	.LBB8_531
.LBB8_511:
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$.L.str.159, %eax
	jmp	.LBB8_531
.LBB8_512:
	movl	$.L.str.77, %eax
	jmp	.LBB8_531
.LBB8_513:
	movl	$.L.str.82, %eax
	jmp	.LBB8_531
.LBB8_514:
	movl	$.L.str.71, %eax
	jmp	.LBB8_531
.LBB8_515:
	movl	$.L.str.75, %eax
	jmp	.LBB8_531
.LBB8_516:
	movl	$-2147483648, server+2712(%rip) # imm = 0x80000000
.LBB8_517:
	movl	$.L.str.69, %eax
	jmp	.LBB8_531
.LBB8_518:
	movl	$.L.str.63, %eax
	jmp	.LBB8_531
.LBB8_519:
	movl	$.L.str.66, %eax
	jmp	.LBB8_531
.LBB8_520:
	movl	$-2147483648, server+2264(%rip) # imm = 0x80000000
.LBB8_521:
	movl	$.L.str.61, %eax
	jmp	.LBB8_531
.LBB8_522:
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
	jmp	.LBB8_531
.LBB8_523:
	movl	$.L.str.53, %eax
	jmp	.LBB8_531
.LBB8_524:
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
.LBB8_525:
	movl	$-2147483648, server+1728(%rip) # imm = 0x80000000
	movl	$.L.str.53, %eax
	jmp	.LBB8_531
.LBB8_526:
	movl	$.L.str.43, %eax
	jmp	.LBB8_531
.LBB8_527:
	movl	$.L.str.39, %eax
	jmp	.LBB8_531
.LBB8_528:
	movl	$.L.str.41, %eax
	jmp	.LBB8_531
.LBB8_529:
	movl	$.L.str.35, %eax
	jmp	.LBB8_531
.LBB8_530:
	movl	$.L.str.37, %eax
.LBB8_531:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB8_532:
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movq	%r15, -64(%rbp)         # 8-byte Spill
.LBB8_533:
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.206, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.207, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movslq	%r13d, %rax
	movq	(%r12,%rax,8), %rdx
	movl	$.L.str.208, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.209, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB8_534:
	movq	-64(%rbp), %rax         # 8-byte Reload
	leal	-1(%rax), %r13d
	movl	$.L.str.205, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB8_533
.Lfunc_end8:
	.size	loadServerConfigFromString, .Lfunc_end8-loadServerConfigFromString
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_353
	.quad	.LBB8_365
	.quad	.LBB8_366
	.quad	.LBB8_367
	.quad	.LBB8_368
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
	testq	%r12, %r12
	je	.LBB9_10
# %bb.1:
	cmpb	$45, (%r12)
	jne	.LBB9_4
# %bb.2:
	cmpb	$0, 1(%r12)
	je	.LBB9_3
.LBB9_4:
	movl	$.L.str.210, %esi
	movq	%r12, %rdi
	callq	fopen
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB9_13
.LBB9_5:
	leaq	-1072(%rbp), %rdi
	movl	$1025, %esi             # imm = 0x401
	movq	%r15, %rdx
	callq	fgets
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
	movq	%r12, %rdi
	movl	$1025, %esi             # imm = 0x401
	movq	%r15, %rdx
	callq	fgets
	testq	%rax, %rax
	jne	.LBB9_7
.LBB9_8:
	callq	__getreent
	cmpq	8(%rax), %r15
	je	.LBB9_10
# %bb.9:
	movq	%r15, %rdi
	callq	fclose
.LBB9_10:
	testq	%r14, %r14
	je	.LBB9_12
# %bb.11:
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	sdscat
	movq	%rax, %rbx
.LBB9_12:
	movq	%rbx, %rdi
	callq	loadServerConfigFromString
	movq	%rbx, %rdi
	callq	sdsfree
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
	jmp	.LBB9_5
.LBB9_13:
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
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	movb	(%rsi), %cl
	shrb	$4, %cl
	orb	$8, %cl
	cmpb	$8, %cl
	jne	.LBB10_308
# %bb.1:
	movq	24(%rax), %r15
	movb	(%r15), %al
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB10_309
# %bb.2:
	movq	8(%rsi), %rbx
	movl	$.L.str.129, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_97
# %bb.3:
	movl	$.L.str.126, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_99
# %bb.4:
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_103
# %bb.5:
	movl	$.L.str.162, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_107
# %bb.6:
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_113
# %bb.7:
	movl	$.L.str.113, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_122
# %bb.8:
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_127
# %bb.9:
	movl	$.L.str.50, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_130
# %bb.10:
	movl	$.L.str.181, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_136
# %bb.11:
	movl	$.L.str.197, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_142
# %bb.12:
	movl	$.L.str.187, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_140
# %bb.13:
	movl	$.L.str.188, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_140
# %bb.14:
	movl	$.L.str.100, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_183
# %bb.15:
	movl	$.L.str.85, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_192
# %bb.16:
	movl	$.L.str.86, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_195
# %bb.17:
	movl	$.L.str.165, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_199
# %bb.18:
	movl	$.L.str.173, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_203
# %bb.19:
	movl	$.L.str.174, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_203
# %bb.20:
	movl	$.L.str.122, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_210
# %bb.21:
	movl	$.L.str.123, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_213
# %bb.22:
	movq	%r12, %r13
	movl	$.L.str.124, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_216
# %bb.23:
	movl	$.L.str.125, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_220
# %bb.24:
	movl	$.L.str.94, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_225
# %bb.25:
	movl	$.L.str.95, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_225
# %bb.26:
	movl	$.L.str.96, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_234
# %bb.27:
	movl	$.L.str.97, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_234
# %bb.28:
	movl	$.L.str.98, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_239
# %bb.29:
	movl	$.L.str.99, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_239
# %bb.30:
	movl	$.L.str.102, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_244
# %bb.31:
	movl	$.L.str.108, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_247
# %bb.32:
	movl	$.L.str.36, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_250
# %bb.33:
	movl	$.L.str.184, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_255
# %bb.34:
	movl	$.L.str.103, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_259
# %bb.35:
	movl	$.L.str.104, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_264
# %bb.36:
	movl	$.L.str.105, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_269
# %bb.37:
	movl	$.L.str.106, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_274
# %bb.38:
	movl	$.L.str.107, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_274
# %bb.39:
	movl	$.L.str.116, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_283
# %bb.40:
	movl	$.L.str.111, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_286
# %bb.41:
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_289
# %bb.42:
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_294
# %bb.43:
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_299
# %bb.44:
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_302
# %bb.45:
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_305
# %bb.46:
	movl	$.L.str.131, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_311
# %bb.47:
	movl	$.L.str.133, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_314
# %bb.48:
	movl	$.L.str.135, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_317
# %bb.49:
	movl	$.L.str.137, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_320
# %bb.50:
	movl	$.L.str.139, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_323
# %bb.51:
	movl	$.L.str.141, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_326
# %bb.52:
	movl	$.L.str.119, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_329
# %bb.53:
	movl	$.L.str.143, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_332
# %bb.54:
	movl	$.L.str.144, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_335
# %bb.55:
	movl	$.L.str.145, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_338
# %bb.56:
	movl	$.L.str.146, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_341
# %bb.57:
	movl	$.L.str.149, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_344
# %bb.58:
	movl	$.L.str.150, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_347
# %bb.59:
	movl	$.L.str.151, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_350
# %bb.60:
	movl	$.L.str.152, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_353
# %bb.61:
	movl	$.L.str.153, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_356
# %bb.62:
	movl	$.L.str.154, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_359
# %bb.63:
	movl	$.L.str.175, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_362
# %bb.64:
	movl	$.L.str.177, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_365
# %bb.65:
	movl	$.L.str.180, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_368
# %bb.66:
	movl	$.L.str.178, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_371
# %bb.67:
	movl	$.L.str.80, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_374
# %bb.68:
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_374
# %bb.69:
	movl	$.L.str.83, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_378
# %bb.70:
	movl	$.L.str.91, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_381
# %bb.71:
	movl	$.L.str.87, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_384
# %bb.72:
	movl	$.L.str.185, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_387
# %bb.73:
	movl	$.L.str.186, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_387
# %bb.74:
	movl	$.L.str.189, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_391
# %bb.75:
	movl	$.L.str.190, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_391
# %bb.76:
	movl	$.L.str.191, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_395
# %bb.77:
	movl	$.L.str.192, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_395
# %bb.78:
	movl	$.L.str.194, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_398
# %bb.79:
	movl	$.L.str.195, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_398
# %bb.80:
	movl	$.L.str.166, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_401
# %bb.81:
	movl	$.L.str.163, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_404
# %bb.82:
	movl	$.L.str.164, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_407
# %bb.83:
	movl	$.L.str.168, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_410
# %bb.84:
	movl	$.L.str.170, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_413
# %bb.85:
	movl	$.L.str.171, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_413
# %bb.86:
	movl	$.L.str.112, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_417
# %bb.87:
	movl	$.L.str.220, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_420
# %bb.88:
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_424
# %bb.89:
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_430
# %bb.90:
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_433
# %bb.91:
	movl	$.L.str.89, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_437
# %bb.92:
	movl	$.L.str.121, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_440
# %bb.93:
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_443
# %bb.94:
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_447
# %bb.95:
	movl	$.L.str.117, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_451
# %bb.96:
	movl	$.L.str.222, %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	jmp	.LBB10_132
.LBB10_97:
	movq	8(%r15), %rdi
	callq	pathIsBaseName
	testl	%eax, %eax
	je	.LBB10_105
# %bb.98:
	movq	server+2120(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	callq	zstrdup
	movq	%rax, server+2120(%rip)
	jmp	.LBB10_190
.LBB10_99:
	movq	8(%r15), %rax
	movb	-1(%rax), %cl
	andb	$7, %cl
	cmpb	$4, %cl
	je	.LBB10_110
# %bb.100:
	cmpb	$3, %cl
	je	.LBB10_109
# %bb.101:
	cmpb	$2, %cl
	jne	.LBB10_111
# %bb.102:
	movzwl	-5(%rax), %eax
	cmpq	$512, %rax              # imm = 0x200
	jbe	.LBB10_111
	jmp	.LBB10_173
.LBB10_103:
	movq	server+2456(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	cmpb	$0, (%rdi)
	je	.LBB10_120
# %bb.104:
	callq	zstrdup
	movq	%rax, server+2456(%rip)
	jmp	.LBB10_190
.LBB10_105:
	movl	$.L.str.130, %esi
.LBB10_106:
	movq	%r12, %rdi
	callq	addReplyError
	jmp	.LBB10_191
.LBB10_107:
	movq	server+2968(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	cmpb	$0, (%rdi)
	je	.LBB10_126
# %bb.108:
	callq	zstrdup
	movq	%rax, server+2968(%rip)
	jmp	.LBB10_190
.LBB10_109:
	movl	-9(%rax), %eax
	cmpq	$512, %rax              # imm = 0x200
	jbe	.LBB10_111
	jmp	.LBB10_173
.LBB10_110:
	movq	-17(%rax), %rax
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB10_173
.LBB10_111:
	movq	server+96(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	cmpb	$0, (%rdi)
	je	.LBB10_121
# %bb.112:
	callq	zstrdup
	movq	%rax, server+96(%rip)
	jmp	.LBB10_190
.LBB10_113:
	movl	server+2700(%rip), %ebx
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	je	.LBB10_173
# %bb.114:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB10_173
# %bb.115:
	movslq	%ebx, %rcx
	movl	%eax, server+2700(%rip)
	cmpq	%rcx, %rax
	jle	.LBB10_190
# %bb.116:
	callq	adjustOpenFilesLimit
	movl	server+2700(%rip), %edx
	cmpq	%rdx, -48(%rbp)
	jne	.LBB10_139
# %bb.117:
	movq	server+72(%rip), %rdi
	callq	aeGetSetSize
	movl	server+2700(%rip), %esi
	subl	$-128, %esi
	cmpl	%esi, %eax
	jae	.LBB10_190
# %bb.118:
	movq	server+72(%rip), %rdi
	callq	aeResizeSetSize
	cmpl	$-1, %eax
	jne	.LBB10_190
# %bb.119:
	movl	$.L.str.215, %esi
	movq	%r12, %rdi
	callq	addReplyError
	movl	%ebx, server+2700(%rip)
	jmp	.LBB10_191
.LBB10_120:
	xorl	%eax, %eax
	movq	%rax, server+2456(%rip)
	jmp	.LBB10_190
.LBB10_121:
	xorl	%eax, %eax
	movq	%rax, server+96(%rip)
	jmp	.LBB10_190
.LBB10_122:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_133
# %bb.123:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB10_173
# %bb.124:
	cmpl	$0, server+1880(%rip)
	je	.LBB10_190
# %bb.125:
	callq	stopAppendOnly
	jmp	.LBB10_190
.LBB10_126:
	xorl	%eax, %eax
	movq	%rax, server+2968(%rip)
	jmp	.LBB10_190
.LBB10_127:
	movq	8(%r15), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB10_148
# %bb.128:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI10_1(,%rax,8)
.LBB10_129:
	shrq	$3, %rsi
	jmp	.LBB10_149
.LBB10_130:
	movq	8(%r15), %rdi
	callq	chdir
	cmpl	$-1, %eax
	jne	.LBB10_190
# %bb.131:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.218, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
.LBB10_132:
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB10_191
.LBB10_133:
	cmpl	$0, server+1880(%rip)
	jne	.LBB10_190
# %bb.134:
	callq	startAppendOnly
	cmpl	$-1, %eax
	jne	.LBB10_190
# %bb.135:
	movl	$.L.str.216, %esi
	jmp	.LBB10_106
.LBB10_136:
	movq	8(%r15), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB10_169
# %bb.137:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_138:
	shrq	$3, %rsi
	jmp	.LBB10_170
.LBB10_139:
	movl	$.L.str.214, %esi
	movq	%r12, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	%ebx, server+2700(%rip)
	jmp	.LBB10_191
.LBB10_140:
	movq	server+2592(%rip), %rdi
	callq	zfree
	movq	8(%r15), %rdi
	cmpb	$0, (%rdi)
	je	.LBB10_164
# %bb.141:
	callq	zstrdup
	movq	%rax, server+2592(%rip)
	jmp	.LBB10_190
.LBB10_142:
	movq	8(%r15), %rdi
	callq	keyspaceEventsStringToFlags
	cmpl	$-1, %eax
	je	.LBB10_173
# %bb.143:
	movl	%eax, server+2920(%rip)
	jmp	.LBB10_190
.LBB10_144:
	movq	-17(%rdi), %rsi
	jmp	.LBB10_149
.LBB10_145:
	movzwl	-5(%rdi), %esi
	jmp	.LBB10_149
.LBB10_146:
	movl	-9(%rdi), %esi
	jmp	.LBB10_149
.LBB10_147:
	movzbl	-3(%rdi), %esi
	jmp	.LBB10_149
.LBB10_148:
	xorl	%esi, %esi
.LBB10_149:
	leaq	-52(%rbp), %r8
	movl	$.L.str.217, %edx
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, %r13
	movl	-52(%rbp), %esi
	testb	$1, %sil
	jne	.LBB10_159
# %bb.150:
	movq	%r12, %r14
	testl	%esi, %esi
	jle	.LBB10_160
# %bb.151:
	xorl	%ebx, %ebx
	leaq	-48(%rbp), %r12
	jmp	.LBB10_153
.LBB10_152:                             #   in Loop: Header=BB10_153 Depth=1
	addq	$1, %rbx
	movslq	-52(%rbp), %rax
	cmpq	%rax, %rbx
	jge	.LBB10_160
.LBB10_153:                             # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	movq	%r12, %rsi
	movl	$10, %edx
	callq	strtoll
	movq	-48(%rbp), %rcx
	cmpb	$0, (%rcx)
	jne	.LBB10_158
# %bb.154:                              #   in Loop: Header=BB10_153 Depth=1
	testb	$1, %bl
	jne	.LBB10_156
# %bb.155:                              #   in Loop: Header=BB10_153 Depth=1
	testq	%rax, %rax
	jle	.LBB10_158
.LBB10_156:                             #   in Loop: Header=BB10_153 Depth=1
	testb	$1, %bl
	je	.LBB10_152
# %bb.157:                              #   in Loop: Header=BB10_153 Depth=1
	testq	%rax, %rax
	jns	.LBB10_152
.LBB10_158:
	movl	-52(%rbp), %esi
	movq	%r13, %rdi
	callq	sdsfreesplitres
	movq	%r14, %r12
	jmp	.LBB10_173
.LBB10_159:
	movq	%r13, %rdi
	jmp	.LBB10_172
.LBB10_160:
	movq	server+2104(%rip), %rdi
	callq	zfree
	movq	$0, server+2104(%rip)
	movl	$0, server+2112(%rip)
	movl	-52(%rbp), %esi
	testl	%esi, %esi
	jle	.LBB10_163
# %bb.161:                              # %.preheader
	xorl	%ebx, %ebx
.LBB10_162:                             # =>This Inner Loop Header: Depth=1
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
	addq	$2, %rbx
	movl	-52(%rbp), %esi
	cmpl	%ebx, %esi
	jg	.LBB10_162
.LBB10_163:
	movq	%r13, %rdi
	callq	sdsfreesplitres
	movq	%r14, %r12
	jmp	.LBB10_190
.LBB10_164:
	xorl	%eax, %eax
	movq	%rax, server+2592(%rip)
	jmp	.LBB10_190
.LBB10_165:
	movq	-17(%rdi), %rsi
	jmp	.LBB10_170
.LBB10_166:
	movzwl	-5(%rdi), %esi
	jmp	.LBB10_170
.LBB10_167:
	movl	-9(%rdi), %esi
	jmp	.LBB10_170
.LBB10_168:
	movzbl	-3(%rdi), %esi
	jmp	.LBB10_170
.LBB10_169:
	xorl	%esi, %esi
.LBB10_170:
	leaq	-48(%rbp), %r8
	movl	$.L.str.217, %edx
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, %r13
	movl	-48(%rbp), %esi
	testb	$3, %sil
	je	.LBB10_174
# %bb.171:
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
.LBB10_172:
	callq	sdsfreesplitres
.LBB10_173:
	movq	8(%r15), %rdx
	movq	72(%r12), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movl	$.L.str.223, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB10_191
.LBB10_174:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	testl	%esi, %esi
	jle	.LBB10_189
# %bb.175:                              # %.preheader4
	xorl	%ebx, %ebx
	leaq	-52(%rbp), %r12
	jmp	.LBB10_177
.LBB10_176:                             #   in Loop: Header=BB10_177 Depth=1
	addq	$1, %rbx
	movslq	-48(%rbp), %rsi
	cmpq	%rsi, %rbx
	jge	.LBB10_186
.LBB10_177:                             # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	testb	$3, %bl
	je	.LBB10_180
# %bb.178:                              #   in Loop: Header=BB10_177 Depth=1
	movq	%r12, %rsi
	callq	memtoll
	testq	%rax, %rax
	js	.LBB10_182
# %bb.179:                              #   in Loop: Header=BB10_177 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB10_176
	jmp	.LBB10_182
.LBB10_180:                             #   in Loop: Header=BB10_177 Depth=1
	callq	getClientTypeByName
	cmpl	$3, %eax
	je	.LBB10_182
# %bb.181:                              #   in Loop: Header=BB10_177 Depth=1
	cmpl	$-1, %eax
	jne	.LBB10_176
.LBB10_182:
	movl	-48(%rbp), %esi
	movq	%r13, %rdi
	callq	sdsfreesplitres
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB10_173
.LBB10_183:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_198
# %bb.184:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB10_173
# %bb.185:
	xorl	%eax, %eax
	movl	%eax, server+2128(%rip)
	jmp	.LBB10_190
.LBB10_186:
	testl	%esi, %esi
	jle	.LBB10_189
# %bb.187:                              # %.preheader2
	xorl	%r14d, %r14d
.LBB10_188:                             # =>This Inner Loop Header: Depth=1
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
	movl	-48(%rbp), %esi
	cmpl	%r14d, %esi
	jg	.LBB10_188
.LBB10_189:
	movq	%r13, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	sdsfreesplitres
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB10_190:
	movq	shared+8(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
.LBB10_191:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_192:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_202
# %bb.193:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB10_173
# %bb.194:
	xorl	%eax, %eax
	movl	%eax, server+2576(%rip)
	jmp	.LBB10_190
.LBB10_195:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_206
# %bb.196:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB10_173
# %bb.197:
	xorl	%eax, %eax
	movl	%eax, server+2444(%rip)
	jmp	.LBB10_190
.LBB10_198:
	movl	$1, %eax
	movl	%eax, server+2128(%rip)
	jmp	.LBB10_190
.LBB10_203:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_208
# %bb.204:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB10_173
# %bb.205:
	xorl	%eax, %eax
	movl	%eax, server+2964(%rip)
	jmp	.LBB10_190
.LBB10_199:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_209
# %bb.200:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB10_173
# %bb.201:
	xorl	%eax, %eax
	movl	%eax, server+2960(%rip)
	jmp	.LBB10_190
.LBB10_202:
	movl	$1, %eax
	movl	%eax, server+2576(%rip)
	jmp	.LBB10_190
.LBB10_206:
	movl	$1, %eax
	movl	%eax, server+2444(%rip)
	jmp	.LBB10_190
.LBB10_208:
	movl	$1, %eax
	movl	%eax, server+2964(%rip)
	jmp	.LBB10_190
.LBB10_209:
	movl	$1, %eax
	movl	%eax, server+2960(%rip)
	jmp	.LBB10_190
.LBB10_210:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_219
# %bb.211:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB10_173
# %bb.212:
	xorl	%eax, %eax
	movl	%eax, server+2016(%rip)
	jmp	.LBB10_190
.LBB10_213:
	movq	%r12, %r14
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_223
# %bb.214:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r14, %r12
	jne	.LBB10_173
# %bb.215:
	xorl	%eax, %eax
	jmp	.LBB10_224
.LBB10_216:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_229
# %bb.217:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.218:
	xorl	%eax, %eax
	jmp	.LBB10_230
.LBB10_219:
	movl	$1, %eax
	movl	%eax, server+2016(%rip)
	jmp	.LBB10_190
.LBB10_225:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_231
# %bb.226:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.227:
	xorl	%eax, %eax
	jmp	.LBB10_228
.LBB10_220:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_232
# %bb.221:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.222:
	xorl	%eax, %eax
	jmp	.LBB10_233
.LBB10_223:
	movl	$1, %eax
.LBB10_224:
	movl	%eax, server+2020(%rip)
	movq	%r14, %r12
	jmp	.LBB10_190
.LBB10_229:
	movl	$1, %eax
.LBB10_230:
	movl	%eax, server+2032(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_234:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_238
# %bb.235:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.236:
	xorl	%eax, %eax
	jmp	.LBB10_237
.LBB10_231:
	movl	$1, %eax
.LBB10_228:
	movl	%eax, server+2552(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_232:
	movl	$1, %eax
.LBB10_233:
	movl	%eax, server+2036(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_239:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_243
# %bb.240:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.241:
	xorl	%eax, %eax
	jmp	.LBB10_242
.LBB10_238:
	movl	$1, %eax
.LBB10_237:
	movl	%eax, server+2556(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_243:
	movl	$1, %eax
.LBB10_242:
	movl	%eax, server+2560(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_244:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_253
# %bb.245:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.246:
	xorl	%eax, %eax
	jmp	.LBB10_254
.LBB10_247:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_258
# %bb.248:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.249:
	movl	$0, server+1744(%rip)
	jmp	.LBB10_190
.LBB10_250:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_262
# %bb.251:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.252:
	xorl	%eax, %eax
	jmp	.LBB10_263
.LBB10_253:
	movl	$1, %eax
.LBB10_254:
	movl	%eax, server+88(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_255:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_267
# %bb.256:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.257:
	xorl	%eax, %eax
	jmp	.LBB10_268
.LBB10_258:
	movl	$0, server+1744(%rip)
	movl	$.L.str.219, %esi
	movq	%r13, %rdi
	callq	addReplyError
	jmp	.LBB10_191
.LBB10_259:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_272
# %bb.260:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.261:
	xorl	%eax, %eax
	jmp	.LBB10_273
.LBB10_262:
	movl	$1, %eax
.LBB10_263:
	movl	%eax, server+856(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_264:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_278
# %bb.265:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.266:
	xorl	%eax, %eax
	jmp	.LBB10_279
.LBB10_267:
	movl	$1, %eax
.LBB10_268:
	movl	%eax, server+2180(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_274:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_280
# %bb.275:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.276:
	xorl	%eax, %eax
	jmp	.LBB10_277
.LBB10_269:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_281
# %bb.270:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.271:
	xorl	%eax, %eax
	jmp	.LBB10_282
.LBB10_272:
	movl	$1, %eax
.LBB10_273:
	movl	%eax, server+3080(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_278:
	movl	$1, %eax
.LBB10_279:
	movl	%eax, server+3084(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_280:
	movl	$1, %eax
.LBB10_277:
	movl	%eax, server+2656(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_281:
	movl	$1, %eax
.LBB10_282:
	movl	%eax, server+3088(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_283:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_292
# %bb.284:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.285:
	xorl	%eax, %eax
	jmp	.LBB10_293
.LBB10_286:
	movq	8(%r15), %rbx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_297
# %bb.287:
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r13, %r12
	jne	.LBB10_173
# %bb.288:
	xorl	%eax, %eax
	jmp	.LBB10_298
.LBB10_289:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.290:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.291:
	movl	%eax, server+1736(%rip)
	jmp	.LBB10_190
.LBB10_292:
	movl	$1, %eax
.LBB10_293:
	movl	%eax, server+1896(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_294:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.295:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rcx
	cmpq	$2147483646, %rcx       # imm = 0x7FFFFFFE
	ja	.LBB10_173
# %bb.296:
	movl	%eax, server+2716(%rip)
	jmp	.LBB10_190
.LBB10_297:
	movl	$1, %eax
.LBB10_298:
	movl	%eax, server+32(%rip)
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_299:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.300:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.301:
	movl	%eax, server+2720(%rip)
	jmp	.LBB10_190
.LBB10_302:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.303:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.304:
	movl	%eax, server+2724(%rip)
	jmp	.LBB10_190
.LBB10_305:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.306:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.307:
	movl	%eax, server+1732(%rip)
	jmp	.LBB10_190
.LBB10_308:
	movl	$.L.str.212, %edx
	movl	$.L.str.158, %ecx
	movq	%r12, %rdi
	movl	$906, %r8d              # imm = 0x38A
	jmp	.LBB10_310
.LBB10_309:
	movl	$.L.str.213, %edx
	movl	$.L.str.158, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$907, %r8d              # imm = 0x38B
.LBB10_310:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB10_311:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.312:
	movq	-48(%rbp), %rax
	cmpq	$1000, %rax             # imm = 0x3E8
	ja	.LBB10_173
# %bb.313:
	movl	%eax, server+1760(%rip)
	jmp	.LBB10_190
.LBB10_314:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.315:
	movq	-48(%rbp), %rax
	cmpq	$1000, %rax             # imm = 0x3E8
	ja	.LBB10_173
# %bb.316:
	movl	%eax, server+1764(%rip)
	jmp	.LBB10_190
.LBB10_317:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	movq	%r13, %r12
	js	.LBB10_173
# %bb.318:
	cmpl	$0, -52(%rbp)
	jne	.LBB10_173
# %bb.319:
	movq	%rax, server+1752(%rip)
	jmp	.LBB10_190
.LBB10_320:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.321:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rcx
	cmpq	$98, %rcx
	ja	.LBB10_173
# %bb.322:
	movl	%eax, server+1768(%rip)
	jmp	.LBB10_190
.LBB10_323:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.324:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rcx
	cmpq	$98, %rcx
	ja	.LBB10_173
# %bb.325:
	movl	%eax, server+1772(%rip)
	jmp	.LBB10_190
.LBB10_326:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.327:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB10_173
# %bb.328:
	movq	%rax, server+1776(%rip)
	jmp	.LBB10_190
.LBB10_329:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.330:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.331:
	movl	%eax, server+1900(%rip)
	jmp	.LBB10_190
.LBB10_332:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.333:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.334:
	movq	%rax, server+2800(%rip)
	jmp	.LBB10_190
.LBB10_335:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.336:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.337:
	movq	%rax, server+2808(%rip)
	jmp	.LBB10_190
.LBB10_338:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.339:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.340:
	movq	%rax, server+2848(%rip)
	jmp	.LBB10_190
.LBB10_341:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.342:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.343:
	movq	%rax, server+2856(%rip)
	jmp	.LBB10_190
.LBB10_344:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.345:
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	subq	$-2147483648, %rcx      # imm = 0x80000000
	shrq	$32, %rcx
	jne	.LBB10_173
# %bb.346:
	movl	%eax, server+2864(%rip)
	jmp	.LBB10_190
.LBB10_347:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.348:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.349:
	movl	%eax, server+2868(%rip)
	jmp	.LBB10_190
.LBB10_350:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.351:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.352:
	movq	%rax, server+2816(%rip)
	jmp	.LBB10_190
.LBB10_353:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.354:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.355:
	movq	%rax, server+2824(%rip)
	jmp	.LBB10_190
.LBB10_356:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.357:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.358:
	movq	%rax, server+2832(%rip)
	jmp	.LBB10_190
.LBB10_359:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.360:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.361:
	movq	%rax, server+2840(%rip)
	jmp	.LBB10_190
.LBB10_362:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.363:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.364:
	movq	%rax, server+3032(%rip)
	jmp	.LBB10_190
.LBB10_365:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.366:
	movq	-48(%rbp), %rax
	cmpq	$-1, %rax
	jl	.LBB10_173
# %bb.367:
	movq	%rax, server+1184(%rip)
	jmp	.LBB10_190
.LBB10_368:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.369:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.370:
	movq	%rax, server+1192(%rip)
	jmp	.LBB10_190
.LBB10_374:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.375:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rcx
	cmpq	$2147483646, %rcx       # imm = 0x7FFFFFFE
	ja	.LBB10_173
# %bb.376:
	movl	%eax, server+2372(%rip)
	jmp	.LBB10_190
.LBB10_371:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.372:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.373:
	movq	%rax, server+3096(%rip)
	jmp	.LBB10_190
.LBB10_378:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.379:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rcx
	cmpq	$2147483646, %rcx       # imm = 0x7FFFFFFE
	ja	.LBB10_173
# %bb.380:
	movl	%eax, server+2476(%rip)
	jmp	.LBB10_190
.LBB10_381:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.382:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.383:
	movq	%rax, server+2416(%rip)
	jmp	.LBB10_190
.LBB10_387:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.388:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.389:
	movl	%eax, server+2580(%rip)
	jmp	.LBB10_190
.LBB10_384:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.385:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.386:
	movl	%eax, server+2448(%rip)
	jmp	.LBB10_190
.LBB10_391:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.392:
	movq	-48(%rbp), %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB10_173
# %bb.393:
	movl	%eax, server+2584(%rip)
	jmp	.LBB10_190
.LBB10_395:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.396:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.397:
	movl	%eax, server+2432(%rip)
	callq	refreshGoodSlavesCount
	jmp	.LBB10_190
.LBB10_398:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.399:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.400:
	movl	%eax, server+2436(%rip)
	callq	refreshGoodSlavesCount
	jmp	.LBB10_190
.LBB10_401:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.402:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	js	.LBB10_173
# %bb.403:
	movq	%rax, server+2928(%rip)
	jmp	.LBB10_190
.LBB10_404:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.405:
	movq	-48(%rbp), %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB10_173
# %bb.406:
	movl	%eax, server+2976(%rip)
	jmp	.LBB10_190
.LBB10_407:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.408:
	movq	-48(%rbp), %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB10_173
# %bb.409:
	movl	%eax, server+2980(%rip)
	jmp	.LBB10_190
.LBB10_413:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.414:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.415:
	movl	%eax, server+2956(%rip)
	jmp	.LBB10_190
.LBB10_410:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.411:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.412:
	movl	%eax, server+2952(%rip)
	jmp	.LBB10_190
.LBB10_417:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.418:
	movq	-48(%rbp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.419:
	testl	%eax, %eax
	movl	$1, %ecx
	cmovgl	%eax, %ecx
	cmpl	$501, %ecx              # imm = 0x1F5
	movl	$500, %eax              # imm = 0x1F4
	cmovll	%ecx, %eax
	movl	%eax, server+36(%rip)
	jmp	.LBB10_190
.LBB10_420:
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	movq	%r13, %r12
	je	.LBB10_173
# %bb.421:
	movq	-48(%rbp), %rdi
	cmpq	$2147483647, %rdi       # imm = 0x7FFFFFFF
	ja	.LBB10_173
# %bb.422:
	testq	%rdi, %rdi
	je	.LBB10_436
# %bb.423:
                                        # kill: def $edi killed $edi killed $rdi
	callq	enableWatchdog
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_424:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	movq	%r13, %r12
	js	.LBB10_173
# %bb.425:
	cmpl	$0, -52(%rbp)
	jne	.LBB10_173
# %bb.426:
	movq	%rax, %rbx
	movq	%rax, server+2704(%rip)
	testq	%rax, %rax
	je	.LBB10_190
# %bb.427:
	callq	zmalloc_used_memory
	cmpq	%rax, %rbx
	jae	.LBB10_429
# %bb.428:
	movl	$.L.str.221, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB10_429:
	callq	freeMemoryIfNeededAndSafe
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_430:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	movq	%r13, %r12
	js	.LBB10_173
# %bb.431:
	cmpl	$0, -52(%rbp)
	jne	.LBB10_173
# %bb.432:
	movq	%rax, server+2728(%rip)
	jmp	.LBB10_190
.LBB10_433:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	movq	%r13, %r12
	js	.LBB10_173
# %bb.434:
	cmpl	$0, -52(%rbp)
	jne	.LBB10_173
# %bb.435:
	movq	%rax, server+1784(%rip)
	jmp	.LBB10_190
.LBB10_436:
	callq	disableWatchdog
	movq	%r13, %r12
	jmp	.LBB10_190
.LBB10_437:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	movq	%r13, %r12
	js	.LBB10_173
# %bb.438:
	cmpl	$0, -52(%rbp)
	jne	.LBB10_173
# %bb.439:
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	callq	resizeReplicationBacklog
	jmp	.LBB10_190
.LBB10_440:
	movq	8(%r15), %rdi
	leaq	-52(%rbp), %rsi
	callq	memtoll
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	movq	%r13, %r12
	js	.LBB10_173
# %bb.441:
	cmpl	$0, -52(%rbp)
	jne	.LBB10_173
# %bb.442:
	movq	%rax, -48(%rbp)
	movq	%rax, server+1904(%rip)
	jmp	.LBB10_190
.LBB10_443:
	movq	loglevel_enum(%rip), %rdi
	testq	%rdi, %rdi
	movq	%r13, %r12
	je	.LBB10_173
# %bb.444:                              # %.preheader5
	movq	8(%r15), %r14
	movl	$loglevel_enum+16, %ebx
.LBB10_445:                             # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_455
# %bb.446:                              #   in Loop: Header=BB10_445 Depth=1
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	movq	%r13, %r12
	jne	.LBB10_445
	jmp	.LBB10_173
.LBB10_447:
	movq	maxmemory_policy_enum(%rip), %rdi
	testq	%rdi, %rdi
	movq	%r13, %r12
	je	.LBB10_173
# %bb.448:                              # %.preheader7
	movq	8(%r15), %r14
	movl	$maxmemory_policy_enum+16, %ebx
.LBB10_449:                             # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_457
# %bb.450:                              #   in Loop: Header=BB10_449 Depth=1
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	movq	%r13, %r12
	jne	.LBB10_449
	jmp	.LBB10_173
.LBB10_451:
	movq	aof_fsync_enum(%rip), %rdi
	testq	%rdi, %rdi
	movq	%r13, %r12
	je	.LBB10_173
# %bb.452:                              # %.preheader9
	movq	8(%r15), %r14
	movl	$aof_fsync_enum+16, %ebx
.LBB10_453:                             # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB10_459
# %bb.454:                              #   in Loop: Header=BB10_453 Depth=1
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	movq	%r13, %r12
	jne	.LBB10_453
	jmp	.LBB10_173
.LBB10_455:
	movl	-8(%rbx), %eax
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	movq	%r13, %r12
	je	.LBB10_173
# %bb.456:
	movl	%eax, server+1728(%rip)
	jmp	.LBB10_190
.LBB10_457:
	movl	-8(%rbx), %eax
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	movq	%r13, %r12
	je	.LBB10_173
# %bb.458:
	movl	%eax, server+2712(%rip)
	jmp	.LBB10_190
.LBB10_459:
	movl	-8(%rbx), %eax
	cmpl	$-2147483648, %eax      # imm = 0x80000000
	movq	%r13, %r12
	je	.LBB10_173
# %bb.460:
	movl	%eax, server+1884(%rip)
	jmp	.LBB10_190
.Lfunc_end10:
	.size	configSetCommand, .Lfunc_end10-configSetCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_138
	.quad	.LBB10_168
	.quad	.LBB10_166
	.quad	.LBB10_167
	.quad	.LBB10_165
.LJTI10_1:
	.quad	.LBB10_129
	.quad	.LBB10_147
	.quad	.LBB10_145
	.quad	.LBB10_146
	.quad	.LBB10_144
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
	movb	(%rbx), %al
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB11_263
# %bb.1:
	movq	8(%rbx), %r15
	movl	$1, %r13d
	movl	$.L.str.129, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_3
# %bb.2:
	movl	$.L.str.129, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	server+2120(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str.49, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	jmp	.LBB11_4
.LBB11_3:
	xorl	%r13d, %r13d
.LBB11_4:
	movl	$.L.str.126, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_6
# %bb.5:
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
.LBB11_6:
	movl	$.L.str.93, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_8
# %bb.7:
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
.LBB11_8:
	movl	$.L.str.162, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_10
# %bb.9:
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
.LBB11_10:
	movl	$.L.str.44, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_12
# %bb.11:
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
.LBB11_12:
	movl	$.L.str.54, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_14
# %bb.13:
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
.LBB11_14:
	movl	$.L.str.128, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_16
# %bb.15:
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
.LBB11_16:
	movl	$.L.str.187, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_18
# %bb.17:
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
.LBB11_18:
	movl	$.L.str.188, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_20
# %bb.19:
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
.LBB11_20:
	movl	$.L.str.67, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_22
# %bb.21:
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
.LBB11_22:
	movl	$.L.str.72, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_24
# %bb.23:
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
.LBB11_24:
	movl	$.L.str.73, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_26
# %bb.25:
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
.LBB11_26:
	movl	$.L.str.70, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_28
# %bb.27:
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
.LBB11_28:
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_30
# %bb.29:
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
.LBB11_30:
	movl	$.L.str.76, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_32
# %bb.31:
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
.LBB11_32:
	movl	$.L.str.32, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_34
# %bb.33:
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
.LBB11_34:
	movl	$.L.str.131, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_36
# %bb.35:
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
.LBB11_36:
	movl	$.L.str.133, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_38
# %bb.37:
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
.LBB11_38:
	movl	$.L.str.135, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_40
# %bb.39:
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
.LBB11_40:
	movl	$.L.str.137, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_42
# %bb.41:
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
.LBB11_42:
	movl	$.L.str.139, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_44
# %bb.43:
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
.LBB11_44:
	movl	$.L.str.141, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_46
# %bb.45:
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
.LBB11_46:
	movl	$.L.str.119, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_48
# %bb.47:
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
.LBB11_48:
	movl	$.L.str.121, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_50
# %bb.49:
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
.LBB11_50:
	movl	$.L.str.143, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_52
# %bb.51:
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
.LBB11_52:
	movl	$.L.str.144, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_54
# %bb.53:
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
.LBB11_54:
	movl	$.L.str.145, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_56
# %bb.55:
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
.LBB11_56:
	movl	$.L.str.146, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_58
# %bb.57:
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
.LBB11_58:
	movl	$.L.str.149, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_60
# %bb.59:
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
.LBB11_60:
	movl	$.L.str.150, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_62
# %bb.61:
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
.LBB11_62:
	movl	$.L.str.151, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_64
# %bb.63:
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
.LBB11_64:
	movl	$.L.str.152, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_66
# %bb.65:
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
.LBB11_66:
	movl	$.L.str.153, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_68
# %bb.67:
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
.LBB11_68:
	movl	$.L.str.154, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_70
# %bb.69:
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
.LBB11_70:
	movl	$.L.str.175, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_72
# %bb.71:
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
.LBB11_72:
	movl	$.L.str.177, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_74
# %bb.73:
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
.LBB11_74:
	movl	$.L.str.178, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_76
# %bb.75:
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
.LBB11_76:
	movl	$.L.str.180, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_78
# %bb.77:
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
.LBB11_78:
	movl	$.L.str.38, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_80
# %bb.79:
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
.LBB11_80:
	movl	$.L.str.163, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_82
# %bb.81:
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
.LBB11_82:
	movl	$.L.str.164, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_84
# %bb.83:
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
.LBB11_84:
	movl	$.L.str.40, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_86
# %bb.85:
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
.LBB11_86:
	movl	$.L.str.62, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_88
# %bb.87:
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
.LBB11_88:
	movl	$.L.str.80, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_90
# %bb.89:
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
.LBB11_90:
	movl	$.L.str.81, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_92
# %bb.91:
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
.LBB11_92:
	movl	$.L.str.83, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_94
# %bb.93:
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
.LBB11_94:
	movl	$.L.str.89, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_96
# %bb.95:
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
.LBB11_96:
	movl	$.L.str.91, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_98
# %bb.97:
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
.LBB11_98:
	movl	$.L.str.65, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_100
# %bb.99:
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
.LBB11_100:
	movl	$.L.str.220, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_102
# %bb.101:
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
.LBB11_102:
	movl	$.L.str.185, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_104
# %bb.103:
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
.LBB11_104:
	movl	$.L.str.186, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_106
# %bb.105:
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
.LBB11_106:
	movl	$.L.str.189, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_108
# %bb.107:
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
.LBB11_108:
	movl	$.L.str.190, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_110
# %bb.109:
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
.LBB11_110:
	movl	$.L.str.191, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_112
# %bb.111:
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
.LBB11_112:
	movl	$.L.str.192, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_114
# %bb.113:
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
.LBB11_114:
	movl	$.L.str.194, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_116
# %bb.115:
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
.LBB11_116:
	movl	$.L.str.195, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_118
# %bb.117:
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
.LBB11_118:
	movl	$.L.str.112, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_120
# %bb.119:
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
.LBB11_120:
	movl	$.L.str.166, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_122
# %bb.121:
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
.LBB11_122:
	movl	$.L.str.168, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_124
# %bb.123:
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
.LBB11_124:
	movl	$.L.str.170, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_126
# %bb.125:
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
.LBB11_126:
	movl	$.L.str.171, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_128
# %bb.127:
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
.LBB11_128:
	movl	$.L.str.87, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_130
# %bb.129:
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
.LBB11_130:
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_132
# %bb.131:
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
.LBB11_132:
	movl	$.L.str.165, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_134
# %bb.133:
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
.LBB11_134:
	movl	$.L.str.173, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_136
# %bb.135:
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
.LBB11_136:
	movl	$.L.str.174, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_138
# %bb.137:
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
.LBB11_138:
	movl	$.L.str.116, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_140
# %bb.139:
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
.LBB11_140:
	movl	$.L.str.94, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_142
# %bb.141:
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
.LBB11_142:
	movl	$.L.str.95, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_144
# %bb.143:
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
.LBB11_144:
	movl	$.L.str.96, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_146
# %bb.145:
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
.LBB11_146:
	movl	$.L.str.97, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_148
# %bb.147:
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
.LBB11_148:
	movl	$.L.str.98, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_150
# %bb.149:
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
.LBB11_150:
	movl	$.L.str.99, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_152
# %bb.151:
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
.LBB11_152:
	movl	$.L.str.184, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_154
# %bb.153:
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
.LBB11_154:
	movl	$.L.str.110, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_156
# %bb.155:
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
.LBB11_156:
	movl	$.L.str.100, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_158
# %bb.157:
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
.LBB11_158:
	movl	$.L.str.101, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_160
# %bb.159:
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
.LBB11_160:
	movl	$.L.str.102, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_162
# %bb.161:
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
.LBB11_162:
	movl	$.L.str.108, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_164
# %bb.163:
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
.LBB11_164:
	movl	$.L.str.36, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_166
# %bb.165:
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
.LBB11_166:
	movl	$.L.str.85, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_168
# %bb.167:
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
.LBB11_168:
	movl	$.L.str.86, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_170
# %bb.169:
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
.LBB11_170:
	movl	$.L.str.122, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_172
# %bb.171:
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
.LBB11_172:
	movl	$.L.str.123, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_174
# %bb.173:
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
.LBB11_174:
	movl	$.L.str.124, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_176
# %bb.175:
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
.LBB11_176:
	movl	$.L.str.125, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_178
# %bb.177:
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
.LBB11_178:
	movl	$.L.str.103, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_180
# %bb.179:
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
.LBB11_180:
	movl	$.L.str.104, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_182
# %bb.181:
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
.LBB11_182:
	movl	$.L.str.105, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_184
# %bb.183:
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
.LBB11_184:
	movl	$.L.str.106, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_186
# %bb.185:
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
.LBB11_186:
	movl	$.L.str.107, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_188
# %bb.187:
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
.LBB11_188:
	movl	$.L.str.111, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_190
# %bb.189:
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
.LBB11_190:
	movl	$.L.str.68, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_199
# %bb.191:
	movl	$.L.str.68, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	maxmemory_policy_enum(%rip), %rax
	testq	%rax, %rax
	je	.LBB11_197
# %bb.192:
	movl	server+2712(%rip), %ecx
	cmpl	%ecx, maxmemory_policy_enum+8(%rip)
	je	.LBB11_198
# %bb.193:                              # %.preheader12
	movl	$maxmemory_policy_enum+24, %edx
	.p2align	4, 0x90
.LBB11_194:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rax
	testq	%rax, %rax
	je	.LBB11_197
# %bb.195:                              #   in Loop: Header=BB11_194 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB11_194
	jmp	.LBB11_198
.LBB11_197:
	xorl	%eax, %eax
.LBB11_198:
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
.LBB11_199:
	movl	$.L.str.52, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_208
# %bb.200:
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	loglevel_enum(%rip), %rax
	testq	%rax, %rax
	je	.LBB11_206
# %bb.201:
	movl	server+1728(%rip), %ecx
	cmpl	%ecx, loglevel_enum+8(%rip)
	je	.LBB11_207
# %bb.202:                              # %.preheader9
	movl	$loglevel_enum+24, %edx
	.p2align	4, 0x90
.LBB11_203:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rax
	testq	%rax, %rax
	je	.LBB11_206
# %bb.204:                              #   in Loop: Header=BB11_203 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB11_203
	jmp	.LBB11_207
.LBB11_206:
	xorl	%eax, %eax
.LBB11_207:
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
.LBB11_208:
	movl	$.L.str.199, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_217
# %bb.209:
	movl	$.L.str.199, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	supervised_mode_enum(%rip), %rax
	testq	%rax, %rax
	je	.LBB11_215
# %bb.210:
	movl	server+1800(%rip), %ecx
	cmpl	%ecx, supervised_mode_enum+8(%rip)
	je	.LBB11_216
# %bb.211:                              # %.preheader6
	movl	$supervised_mode_enum+24, %edx
	.p2align	4, 0x90
.LBB11_212:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rax
	testq	%rax, %rax
	je	.LBB11_215
# %bb.213:                              #   in Loop: Header=BB11_212 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB11_212
	jmp	.LBB11_216
.LBB11_215:
	xorl	%eax, %eax
.LBB11_216:
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
.LBB11_217:
	movl	$.L.str.117, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_226
# %bb.218:
	movl	$.L.str.117, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	aof_fsync_enum(%rip), %rax
	testq	%rax, %rax
	je	.LBB11_224
# %bb.219:
	movl	server+1884(%rip), %ecx
	cmpl	%ecx, aof_fsync_enum+8(%rip)
	je	.LBB11_225
# %bb.220:                              # %.preheader3
	movl	$aof_fsync_enum+24, %edx
	.p2align	4, 0x90
.LBB11_221:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rax
	testq	%rax, %rax
	je	.LBB11_224
# %bb.222:                              #   in Loop: Header=BB11_221 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB11_221
	jmp	.LBB11_225
.LBB11_224:
	xorl	%eax, %eax
.LBB11_225:
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
.LBB11_226:
	movl	$.L.str.60, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_235
# %bb.227:
	movl	$.L.str.60, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	syslog_facility_enum(%rip), %rax
	testq	%rax, %rax
	je	.LBB11_233
# %bb.228:
	movl	server+2264(%rip), %ecx
	cmpl	%ecx, syslog_facility_enum+8(%rip)
	je	.LBB11_234
# %bb.229:                              # %.preheader1
	movl	$syslog_facility_enum+24, %edx
	.p2align	4, 0x90
.LBB11_230:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rax
	testq	%rax, %rax
	je	.LBB11_233
# %bb.231:                              #   in Loop: Header=BB11_230 Depth=1
	cmpl	%ecx, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB11_230
	jmp	.LBB11_234
.LBB11_233:
	xorl	%eax, %eax
.LBB11_234:
	testq	%rax, %rax
	movl	$.L.str.27, %esi
	cmovneq	%rax, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
.LBB11_235:
	movl	$.L.str.113, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_237
# %bb.236:
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
.LBB11_237:
	movl	$.L.str.50, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_241
# %bb.238:
	leaq	-1216(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	getcwd
	testq	%rax, %rax
	jne	.LBB11_240
# %bb.239:
	movb	$0, -1216(%rbp)
.LBB11_240:
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	leaq	-1216(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
.LBB11_241:
	movl	$.L.str.47, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_248
# %bb.242:
	movq	%r15, -184(%rbp)        # 8-byte Spill
	movq	%r14, -192(%rbp)        # 8-byte Spill
	callq	sdsempty
	movq	%rax, %rbx
	cmpl	$0, server+2112(%rip)
	jle	.LBB11_247
# %bb.243:                              # %.preheader
	movl	$8, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB11_245
	.p2align	4, 0x90
.LBB11_244:                             #   in Loop: Header=BB11_245 Depth=1
	addq	$1, %r15
	cltq
	addq	$16, %r14
	cmpq	%rax, %r15
	jge	.LBB11_247
.LBB11_245:                             # =>This Inner Loop Header: Depth=1
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
	cmpq	%rcx, %r15
	je	.LBB11_244
# %bb.246:                              #   in Loop: Header=BB11_245 Depth=1
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	movl	server+2112(%rip), %eax
	jmp	.LBB11_244
.LBB11_247:
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	movq	%rbx, %rdi
	callq	sdsfree
	addl	$1, %r13d
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	-184(%rbp), %r15        # 8-byte Reload
.LBB11_248:
	movl	$.L.str.181, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_250
# %bb.249:
	callq	sdsempty
	movq	%rax, %rbx
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
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
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
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
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
	movl	$.L.str.181, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	movq	%rbx, %rdi
	callq	sdsfree
	addl	$1, %r13d
.LBB11_250:
	movl	$.L.str.45, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_252
# %bb.251:
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
.LBB11_252:
	movl	$.L.str.78, %ebx
	movl	$.L.str.78, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	jne	.LBB11_254
# %bb.253:
	movl	$.L.str.79, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_258
.LBB11_254:
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
	testq	%rcx, %rcx
	je	.LBB11_256
# %bb.255:
	movl	server+2472(%rip), %r8d
	leaq	-1216(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.228, %edx
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB11_257
.LBB11_256:
	movb	$0, -1216(%rbp)
.LBB11_257:
	leaq	-1216(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	addl	$1, %r13d
.LBB11_258:
	movl	$.L.str.197, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_260
# %bb.259:
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
.LBB11_260:
	movl	$.L.str.42, %esi
	movq	%r15, %rdi
	movl	$1, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB11_262
# %bb.261:
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
.LBB11_262:
	addl	%r13d, %r13d
	movslq	%r13d, %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	setDeferredMultiBulkLength
	addq	$1176, %rsp             # imm = 0x498
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_263:
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
.LBB13_2:
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	listAddNodeTail         # TAILCALL
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
	testl	%eax, %eax
	je	.LBB14_1
# %bb.2:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.LBB14_1:
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
	testq	%rax, %rax
	jne	.LBB15_3
# %bb.1:
	callq	__errno
	cmpl	$2, (%rax)
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
	testq	%r14, %r14
	je	.LBB15_23
# %bb.4:
	leaq	-1104(%rbp), %rdi
	movl	$1025, %esi             # imm = 0x401
	movq	%r14, %rdx
	callq	fgets
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
.LBB15_21:                              #   in Loop: Header=BB15_6 Depth=1
	movq	%rbx, %rdi
	movl	$1025, %esi             # imm = 0x401
	movq	%r14, %rdx
	callq	fgets
	addq	$1, %r13
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
	cmpb	$35, %al
	je	.LBB15_8
# %bb.7:                                #   in Loop: Header=BB15_6 Depth=1
	testb	%al, %al
	je	.LBB15_8
# %bb.12:                               #   in Loop: Header=BB15_6 Depth=1
	movq	%r12, %rdi
	leaq	-44(%rbp), %rsi
	callq	sdssplitargs
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
	movq	(%rbx), %rdi
	movl	$.L.str.232, %esi
	callq	strstr
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
	jmp	.LBB15_17
	.p2align	4, 0x90
.LBB15_9:                               #   in Loop: Header=BB15_6 Depth=1
	movl	$.L.str.230, %esi
	movq	%r12, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB15_11
# %bb.10:                               #   in Loop: Header=BB15_6 Depth=1
	movl	$1, 32(%r15)
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
	jmp	.LBB15_20
.LBB15_15:                              #   in Loop: Header=BB15_6 Depth=1
	movq	(%rbx), %r12
.LBB15_17:                              #   in Loop: Header=BB15_6 Depth=1
	movq	(%r15), %rdi
	movq	%r12, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
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
.LBB15_19:                              #   in Loop: Header=BB15_6 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	listAddNodeTail
	movl	-44(%rbp), %esi
	movq	%rbx, %rdi
	callq	sdsfreesplitres
.LBB15_20:                              #   in Loop: Header=BB15_6 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	leaq	-1104(%rbp), %rbx
	jmp	.LBB15_21
.LBB15_22:
	movq	%r14, %rdi
	callq	fclose
	jmp	.LBB15_23
.LBB15_2:
	xorl	%r15d, %r15d
.LBB15_23:
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
	testl	%eax, %eax
	je	.LBB16_2
# %bb.1:
	movq	%r14, %rdi
	callq	sdsfree
.LBB16_2:
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
	testq	%r15, %r15
	je	.LBB16_9
# %bb.6:
	movq	(%r15), %rsi
	movq	16(%rsi), %rbx
	movq	%r15, %rdi
	callq	listDelNode
	cmpq	$0, 40(%r15)
	movq	-48(%rbp), %r14         # 8-byte Reload
	jne	.LBB16_8
# %bb.7:
	movq	(%r12), %rdi
	movq	%r14, %rsi
	callq	dictDelete
.LBB16_8:
	movq	24(%r12), %rax
	movslq	%ebx, %rbx
	movq	(%rax,%rbx,8), %rdi
	shlq	$3, %rbx
	callq	sdsfree
	addq	24(%r12), %rbx
	jmp	.LBB16_13
.LBB16_9:
	cmpl	$0, 32(%r12)
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
	movl	$1, 32(%r12)
	addq	$24, %r12
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
	leaq	(%rax,%rcx,8), %rbx
.LBB16_13:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rbx)
	movq	%r14, %rdi
.LBB16_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.Lfunc_end16:
	.size	rewriteConfigRewriteLine, .Lfunc_end16-rewriteConfigRewriteLine
                                        # -- End function
	.globl	rewriteConfigFormatMemory # -- Begin function rewriteConfigFormatMemory
	.p2align	4, 0x90
	.type	rewriteConfigFormatMemory,@function
rewriteConfigFormatMemory:              # @rewriteConfigFormatMemory
# %bb.0:
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.LBB17_2
# %bb.1:
	movl	%eax, %ecx
	andl	$1073741823, %ecx       # imm = 0x3FFFFFFF
	testq	%rcx, %rcx
	jne	.LBB17_2
# %bb.7:
	leaq	1073741823(%rax), %rcx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	sarq	$30, %rcx
	movl	$.L.str.234, %edx
	xorl	%eax, %eax
	jmp	snprintf                # TAILCALL
.LBB17_2:
	testq	%rax, %rax
	je	.LBB17_4
# %bb.3:
	movl	%eax, %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	testq	%rcx, %rcx
	jne	.LBB17_4
# %bb.8:
	leaq	1048575(%rax), %rcx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	sarq	$20, %rcx
	movl	$.L.str.235, %edx
	xorl	%eax, %eax
	jmp	snprintf                # TAILCALL
.LBB17_4:
	testq	%rax, %rax
	je	.LBB17_6
# %bb.5:
	movl	%eax, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	testq	%rcx, %rcx
	jne	.LBB17_6
# %bb.9:
	leaq	1023(%rax), %rcx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	sarq	$10, %rcx
	movl	$.L.str.236, %edx
	xorl	%eax, %eax
	jmp	snprintf                # TAILCALL
.LBB17_6:
	movl	$.L.str.237, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	jmp	snprintf                # TAILCALL
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
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
	testq	%rdx, %rdx
	je	.LBB20_1
# %bb.3:
	movq	%rdx, %rbx
	testq	%rcx, %rcx
	je	.LBB20_4
# %bb.5:
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	strcmp
	xorl	%r12d, %r12d
	testl	%eax, %eax
	setne	%r12b
	jmp	.LBB20_6
.LBB20_1:
	movq	%r15, %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	je	.LBB20_7
# %bb.2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.LBB20_4:
	movl	$1, %r12d
.LBB20_6:
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
.LBB20_7:
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
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
	movq	(%rcx), %rax
	testq	%rax, %rax
	je	.LBB23_6
# %bb.1:
	cmpl	%edx, 8(%rcx)
	je	.LBB23_7
# %bb.2:                                # %.preheader
	addq	$24, %rcx
	.p2align	4, 0x90
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx), %rax
	testq	%rax, %rax
	je	.LBB23_6
# %bb.4:                                #   in Loop: Header=BB23_3 Depth=1
	cmpl	%edx, (%rcx)
	leaq	16(%rcx), %rcx
	jne	.LBB23_3
	jmp	.LBB23_7
.LBB23_6:
	xorl	%eax, %eax
.LBB23_7:
	testq	%rax, %rax
	movl	$.L.str.27, %ebx
	cmovneq	%rax, %rbx
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
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
	movq	syslog_facility_enum(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB24_6
# %bb.1:
	cmpl	%eax, syslog_facility_enum+8(%rip)
	je	.LBB24_7
# %bb.2:                                # %.preheader
	movl	$syslog_facility_enum+24, %edx
	.p2align	4, 0x90
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB24_6
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	cmpl	%eax, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB24_3
	jmp	.LBB24_7
.LBB24_6:
	xorl	%ecx, %ecx
.LBB24_7:
	testq	%rcx, %rcx
	movl	$.L.str.27, %ebx
	cmovneq	%rcx, %rbx
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
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
	cmpl	$0, server+2112(%rip)
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
	movslq	server+2112(%rip), %rax
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
	testl	%eax, %eax
	je	.LBB25_4
# %bb.5:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.LBB25_4:
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
	movq	%rdi, %r14
	leaq	-1056(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	getcwd
	movq	%rax, %rbx
	movl	$.L.str.50, %edi
	callq	sdsnew
	movq	%rax, %r15
	testq	%rbx, %rbx
	je	.LBB26_1
# %bb.3:
	movl	$.L.str.217, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	leaq	-1056(%rbp), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	sdscatrepr
	movl	$.L.str.50, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	jmp	.LBB26_4
.LBB26_1:
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	je	.LBB26_4
# %bb.2:
	movq	%r15, %rdi
	callq	sdsfree
.LBB26_4:
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
	jne	.LBB27_2
# %bb.1:
	cmpq	$0, server+2464(%rip)
	je	.LBB27_2
# %bb.4:
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
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
.LBB27_2:
	movq	%rbx, %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	je	.LBB27_5
# %bb.3:
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.LBB27_5:
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
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
	subq	$152, %rsp
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	$-72, %r15
	xorl	%ebx, %ebx
	jmp	.LBB29_1
	.p2align	4, 0x90
.LBB29_4:                               #   in Loop: Header=BB29_1 Depth=1
	movzbl	%al, %r13d
	movl	$64, %esi
	leaq	-112(%rbp), %rdi
	callq	rewriteConfigFormatMemory
	movq	server+1888(%r15), %rdx
	movl	$64, %esi
	leaq	-176(%rbp), %r12
	movq	%r12, %rdi
	callq	rewriteConfigFormatMemory
	movl	%ebx, %edi
	callq	getClientTypeName
	movq	%rax, %r14
	movl	$.L.str.232, %esi
	movq	%rax, %rdi
	callq	strcmp
	testl	%eax, %eax
	movl	$.L.str.233, %eax
	cmoveq	%rax, %r14
	callq	sdsempty
	movq	server+1896(%r15), %rcx
	movq	%rcx, (%rsp)
	movl	$.L.str.243, %esi
	movl	$.L.str.181, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	leaq	-112(%rbp), %r8
	movq	%r12, %r9
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.181, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movl	%r13d, %ecx
	callq	rewriteConfigRewriteLine
	addl	$1, %ebx
	addq	$24, %r15
	je	.LBB29_5
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movq	server+1880(%r15), %rdx
	movb	$1, %al
	cmpq	clientBufferLimitsDefaults+72(%r15), %rdx
	jne	.LBB29_4
# %bb.2:                                #   in Loop: Header=BB29_1 Depth=1
	movq	server+1888(%r15), %rcx
	cmpq	clientBufferLimitsDefaults+80(%r15), %rcx
	jne	.LBB29_4
# %bb.3:                                #   in Loop: Header=BB29_1 Depth=1
	movq	server+1896(%r15), %rax
	cmpq	clientBufferLimitsDefaults+88(%r15), %rax
	setne	%al
	jmp	.LBB29_4
.LBB29_5:
	addq	$152, %rsp
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
	testl	%esi, %esi
	je	.LBB30_1
# %bb.3:
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rewriteConfigRewriteLine # TAILCALL
.LBB30_1:
	movl	$.L.str.42, %edi
	callq	sdsnew
	movq	%rax, %r14
	movq	8(%r15), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	je	.LBB30_4
# %bb.2:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.LBB30_4:
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
	movl	16(%r14), %ecx
	testl	%ecx, %ecx
	jle	.LBB31_14
# %bb.1:
	xorl	%ebx, %ebx
	xorl	%r8d, %r8d
	jmp	.LBB31_2
.LBB31_8:                               #   in Loop: Header=BB31_2 Depth=1
	movq	-17(%rsi), %rdi
	.p2align	4, 0x90
.LBB31_9:                               #   in Loop: Header=BB31_2 Depth=1
	xorl	%r15d, %r15d
	testq	%rdi, %rdi
	je	.LBB31_10
.LBB31_12:                              #   in Loop: Header=BB31_2 Depth=1
	movq	%rax, %rdi
	callq	sdscatsds
	movl	$.L.str.29, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	16(%r14), %ecx
	movl	%r15d, %r8d
.LBB31_13:                              #   in Loop: Header=BB31_2 Depth=1
	addq	$1, %rbx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rbx
	jge	.LBB31_14
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rsi
	movq	(%rsi,%rbx,8), %rsi
	movzbl	-1(%rsi), %edi
	movl	%edi, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB31_10
# %bb.3:                                #   in Loop: Header=BB31_2 Depth=1
	movl	%edi, %edx
	andl	$7, %edx
	jmpq	*.LJTI31_0(,%rdx,8)
.LBB31_4:                               #   in Loop: Header=BB31_2 Depth=1
	shrq	$3, %rdi
	jmp	.LBB31_9
	.p2align	4, 0x90
.LBB31_10:                              #   in Loop: Header=BB31_2 Depth=1
	testl	%r8d, %r8d
	jne	.LBB31_13
# %bb.11:                               #   in Loop: Header=BB31_2 Depth=1
	movl	$1, %r15d
	jmp	.LBB31_12
.LBB31_5:                               #   in Loop: Header=BB31_2 Depth=1
	movzbl	-3(%rsi), %edi
	jmp	.LBB31_9
.LBB31_6:                               #   in Loop: Header=BB31_2 Depth=1
	movzwl	-5(%rsi), %edi
	jmp	.LBB31_9
.LBB31_7:                               #   in Loop: Header=BB31_2 Depth=1
	movl	-9(%rsi), %edi
	jmp	.LBB31_9
.LBB31_14:
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
	.quad	.LBB31_4
	.quad	.LBB31_5
	.quad	.LBB31_6
	.quad	.LBB31_7
	.quad	.LBB31_8
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
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
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
	movq	%rax, %rdi
	jmp	.LBB33_1
	.p2align	4, 0x90
.LBB33_6:                               #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
.LBB33_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_4 Depth 2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB33_7
# %bb.2:                                #   in Loop: Header=BB33_1 Depth=1
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movq	8(%r15), %rdi
	movq	%r12, %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB33_3
	.p2align	4, 0x90
# %bb.5:                                #   in Loop: Header=BB33_1 Depth=1
	cmpq	$0, 40(%r13)
	je	.LBB33_6
.LBB33_4:                               #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	cmpq	$0, 40(%r13)
	jne	.LBB33_4
	jmp	.LBB33_6
	.p2align	4, 0x90
.LBB33_3:                               #   in Loop: Header=BB33_1 Depth=1
	movl	$.L.str.244, %esi
	xorl	%edi, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r14, %rdi
	jmp	.LBB33_1
.LBB33_7:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	dictReleaseIterator     # TAILCALL
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
	movq	%rsi, %rbx
	xorl	%r15d, %r15d
	movl	$514, %esi              # imm = 0x202
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r14d
	movzbl	-1(%rbx), %eax
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
	movq	%rax, %r15
	jmp	.LBB34_7
.LBB34_3:
	movzbl	-3(%rbx), %r15d
	jmp	.LBB34_7
.LBB34_4:
	movzwl	-5(%rbx), %r15d
	jmp	.LBB34_7
.LBB34_5:
	movl	-9(%rbx), %r15d
	jmp	.LBB34_7
.LBB34_6:
	movq	-17(%rbx), %r15
.LBB34_7:
	movl	$-1, %r12d
	cmpl	$-1, %r14d
	je	.LBB34_17
# %bb.8:
	leaq	-128(%rbp), %rsi
	movl	%r14d, %edi
	callq	fstat
	cmpl	$-1, %eax
	je	.LBB34_16
# %bb.9:
	movq	%rbx, %rdi
	callq	sdsdup
	movq	%rax, %rbx
	movslq	%r15d, %r15
	movq	-112(%rbp), %rsi
	xorl	%r13d, %r13d
	cmpq	%r15, %rsi
	jle	.LBB34_11
# %bb.10:
	movl	%esi, %r13d
	subl	%r15d, %r13d
	movq	%rbx, %rdi
	callq	sdsgrowzero
	movq	%rax, %rbx
	movb	$10, (%rax,%r15)
	leaq	(%rax,%r15), %rdi
	addq	$1, %rdi
	leal	-1(%r13), %eax
	movslq	%eax, %rdx
	movl	$35, %esi
	callq	memset
.LBB34_11:
	movq	%rbx, %rdi
	callq	strlen
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	write
	cmpq	$-1, %rax
	je	.LBB34_12
# %bb.13:
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	je	.LBB34_15
# %bb.14:
	movl	%r14d, %edi
	movq	%r15, %rsi
	callq	ftruncate
	jmp	.LBB34_15
.LBB34_12:
	movl	$-1, %r12d
.LBB34_15:
	movq	%rbx, %rdi
	callq	sdsfree
.LBB34_16:
	movl	%r14d, %edi
	callq	close
.LBB34_17:
	movl	%r12d, %eax
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
	testq	%rax, %rax
	je	.LBB35_6
# %bb.1:
	movq	%rax, %r13
	xorl	%r15d, %r15d
	cmpl	$0, server+1804(%rip)
	setne	%r15b
	movl	$.L.str.24, %eax
	movl	$.L.str.28, %ebx
	cmoveq	%rax, %rbx
	callq	sdsempty
	xorl	%r14d, %r14d
	movl	$.L.str.238, %esi
	movl	$.L.str.110, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.110, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+104(%rip), %rdx
	movl	$.L.str.128, %esi
	movl	$.L.str.245, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movslq	server+216(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$6379, %r15             # imm = 0x18EB
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.38, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.38, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2976(%rip), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.163, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.163, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2980(%rip), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.164, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.164, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+220(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$511, %r15              # imm = 0x1FF
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.40, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.40, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	%r13, %rdi
	callq	rewriteConfigBindOption
	movq	server+360(%rip), %rdx
	movl	$.L.str.44, %esi
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	rewriteConfigStringOption
	movl	server+368(%rip), %r15d
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	setne	%bl
	callq	sdsempty
	movl	$.L.str.240, %esi
	movl	$.L.str.45, %edx
	movq	%rax, %rdi
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.45, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+1732(%rip), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.32, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.32, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+1736(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$300, %r15              # imm = 0x12C
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.34, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.34, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2584(%rip), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.190, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.190, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+1728(%rip), %eax
	movq	loglevel_enum(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB35_8
# %bb.2:
	movq	%rcx, %r14
	cmpl	%eax, loglevel_enum+8(%rip)
	je	.LBB35_8
# %bb.3:                                # %.preheader10
	movl	$loglevel_enum+24, %ecx
	.p2align	4, 0x90
.LBB35_4:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx), %r14
	testq	%r14, %r14
	je	.LBB35_7
# %bb.5:                                #   in Loop: Header=BB35_4 Depth=1
	cmpl	%eax, (%rcx)
	leaq	16(%rcx), %rcx
	jne	.LBB35_4
	jmp	.LBB35_8
.LBB35_6:
	movl	$-1, %r14d
	jmp	.LBB35_38
.LBB35_7:
	xorl	%r14d, %r14d
.LBB35_8:
	testq	%r14, %r14
	movl	$.L.str.27, %r12d
	cmoveq	%r12, %r14
	xorl	%ebx, %ebx
	cmpl	$2, %eax
	setne	%bl
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.52, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.52, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2240(%rip), %rdx
	movl	$.L.str.54, %esi
	movl	$.L.str.49, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	xorl	%r14d, %r14d
	cmpl	$0, server+2248(%rip)
	setne	%r14b
	movl	$.L.str.28, %ebx
	movl	$.L.str.24, %eax
	cmoveq	%rax, %rbx
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
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2256(%rip), %rdx
	movl	$.L.str.59, %esi
	movl	$.L.str.246, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movl	server+2264(%rip), %eax
	xorl	%ebx, %ebx
	cmpl	$128, %eax
	setne	%bl
	movq	syslog_facility_enum(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB35_14
# %bb.9:
	cmpl	%eax, syslog_facility_enum+8(%rip)
	je	.LBB35_15
# %bb.10:                               # %.preheader7
	movl	$syslog_facility_enum+24, %edx
	.p2align	4, 0x90
.LBB35_11:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB35_14
# %bb.12:                               #   in Loop: Header=BB35_11 Depth=1
	cmpl	%eax, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB35_11
	jmp	.LBB35_15
.LBB35_14:
	xorl	%ecx, %ecx
.LBB35_15:
	testq	%rcx, %rcx
	cmovneq	%rcx, %r12
	callq	sdsempty
	xorl	%r15d, %r15d
	movl	$.L.str.238, %esi
	movl	$.L.str.60, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	%r13, %rdi
	callq	rewriteConfigSaveOption
	movslq	server+1792(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$16, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.62, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.62, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2180(%rip), %ebx
	xorl	%r14d, %r14d
	cmpl	$1, %ebx
	setne	%r14b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.24, %edx
	movl	$.L.str.28, %ecx
	cmoveq	%rdx, %rcx
	movl	$.L.str.24, %r12d
	movl	$.L.str.238, %esi
	movl	$.L.str.184, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.184, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2128(%rip), %ebx
	xorl	%r14d, %r14d
	cmpl	$1, %ebx
	setne	%r14b
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
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2132(%rip), %ebx
	xorl	%r14d, %r14d
	cmpl	$1, %ebx
	setne	%r14b
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
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
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
	xorl	%r14d, %r14d
	cmpl	$1, %ebx
	setne	%r14b
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
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2556(%rip), %ebx
	xorl	%r14d, %r14d
	cmpl	$1, %ebx
	setne	%r14b
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
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2560(%rip), %ebx
	xorl	%r14d, %r14d
	cmpl	$1, %ebx
	setne	%r14b
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
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
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
	movq	server+2384(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$1048576, %rdx          # imm = 0x100000
	setne	%bl
	leaq	-112(%rbp), %r14
	movl	$64, %esi
	movq	%r14, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.89, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.89, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2416(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$3600, %rdx             # imm = 0xE10
	setne	%bl
	movl	$64, %esi
	movq	%r14, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.91, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.91, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	xorl	%ebx, %ebx
	cmpl	$0, server+2576(%rip)
	setne	%bl
	movl	$.L.str.28, %r14d
	movl	$.L.str.24, %r12d
	cmoveq	%r12, %r14
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.85, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.85, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	xorl	%r14d, %r14d
	cmpl	$0, server+2444(%rip)
	setne	%r14b
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
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2448(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$5, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.87, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.87, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2580(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$100, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.186, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.186, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2432(%rip), %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.192, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.192, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2436(%rip), %r14
	xorl	%ebx, %ebx
	cmpq	$10, %r14
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.195, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.195, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+96(%rip), %rdx
	movl	$.L.str.126, %esi
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	rewriteConfigStringOption
	movl	server+2700(%rip), %r14d
	xorl	%ebx, %ebx
	cmpq	$10000, %r14            # imm = 0x2710
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.65, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.65, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2704(%rip), %rdx
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	setne	%bl
	movl	$64, %esi
	leaq	-112(%rbp), %r14
	movq	%r14, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.67, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.67, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2728(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$536870912, %rdx        # imm = 0x20000000
	setne	%bl
	movl	$64, %esi
	movq	%r14, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.72, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.72, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+1784(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$1073741824, %rdx       # imm = 0x40000000
	setne	%bl
	movl	$64, %esi
	movq	%r14, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.73, %edx
	movq	%rax, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.73, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2712(%rip), %eax
	movq	maxmemory_policy_enum(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB35_21
# %bb.16:
	movq	%rcx, %r15
	cmpl	%eax, maxmemory_policy_enum+8(%rip)
	je	.LBB35_21
# %bb.17:                               # %.preheader4
	movl	$maxmemory_policy_enum+24, %ecx
	.p2align	4, 0x90
.LBB35_18:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx), %r15
	testq	%r15, %r15
	je	.LBB35_20
# %bb.19:                               #   in Loop: Header=BB35_18 Depth=1
	cmpl	%eax, (%rcx)
	leaq	16(%rcx), %rcx
	jne	.LBB35_18
	jmp	.LBB35_21
.LBB35_20:
	xorl	%r15d, %r15d
.LBB35_21:
	testq	%r15, %r15
	movl	$.L.str.27, %r12d
	cmoveq	%r12, %r15
	xorl	%ebx, %ebx
	cmpl	$1792, %eax             # imm = 0x700
	setne	%bl
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.68, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.68, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
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
	xorl	%r14d, %r14d
	cmpl	$0, server+1880(%rip)
	setne	%r14b
	movl	$.L.str.28, %ebx
	movl	$.L.str.24, %eax
	cmoveq	%rax, %rbx
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
	movl	%r14d, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+1888(%rip), %rdx
	movl	$.L.str.114, %esi
	movl	$.L.str.248, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movl	server+1884(%rip), %eax
	movq	aof_fsync_enum(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB35_27
# %bb.22:
	cmpl	%eax, aof_fsync_enum+8(%rip)
	je	.LBB35_28
# %bb.23:                               # %.preheader1
	movl	$aof_fsync_enum+24, %edx
	.p2align	4, 0x90
.LBB35_24:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB35_27
# %bb.25:                               #   in Loop: Header=BB35_24 Depth=1
	cmpl	%eax, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB35_24
	jmp	.LBB35_28
.LBB35_27:
	xorl	%ecx, %ecx
.LBB35_28:
	testq	%rcx, %rcx
	cmovneq	%rcx, %r12
	xorl	%ebx, %ebx
	cmpl	$2, %eax
	setne	%bl
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.117, %edx
	movq	%rax, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.117, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	xorl	%r15d, %r15d
	cmpl	$0, server+1896(%rip)
	setne	%r15b
	movl	$.L.str.24, %r12d
	movl	$.L.str.28, %r14d
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
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
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+1900(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$100, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.119, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.119, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+1904(%rip), %rdx
	xorl	%ebx, %ebx
	cmpq	$67108864, %rdx         # imm = 0x4000000
	setne	%bl
	leaq	-112(%rbp), %r15
	movl	$64, %esi
	movq	%r15, %rdi
	callq	rewriteConfigFormatMemory
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.121, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.121, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+3032(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$5000, %r15             # imm = 0x1388
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.175, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.175, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	xorl	%r15d, %r15d
	cmpl	$0, server+2924(%rip)
	setne	%r15b
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
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
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2936(%rip), %rdx
	movl	$.L.str.161, %esi
	movl	$.L.str.249, %ecx
	movq	%r13, %rdi
	callq	rewriteConfigStringOption
	movl	server+2960(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.165, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.165, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	xorl	%r15d, %r15d
	cmpl	$0, server+2964(%rip)
	setne	%r15b
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
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
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2928(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$15000, %r15            # imm = 0x3A98
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.166, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.166, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2952(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$1, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.168, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.168, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2956(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$10, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.171, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.171, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+1184(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$10000, %r15            # imm = 0x2710
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.177, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.177, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+3096(%rip), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.178, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.178, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+1192(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$128, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.180, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.180, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	%r13, %rdi
	callq	rewriteConfigNotifykeyspaceeventsOption
	movq	server+2800(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$512, %r15              # imm = 0x200
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.143, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.143, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2808(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$64, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.144, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.144, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2848(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$4096, %r15             # imm = 0x1000
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.145, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.145, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2856(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$100, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.146, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.146, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2864(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$-2, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.149, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.149, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movslq	server+2868(%rip), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.150, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.150, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2816(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$512, %r15              # imm = 0x200
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.151, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.151, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2824(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$128, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.152, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.152, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2832(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$64, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.153, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.153, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movq	server+2840(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$3000, %r15             # imm = 0xBB8
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.154, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.154, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+88(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.102, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.102, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	xorl	%r15d, %r15d
	cmpl	$0, server+1744(%rip)
	setne	%r15b
	movl	$.L.str.28, %ebx
	cmoveq	%r12, %rbx
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
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+856(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.36, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.36, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movq	%r13, %rdi
	callq	rewriteConfigClientoutputbufferlimitOption
	movslq	server+36(%rip), %r15
	xorl	%ebx, %ebx
	cmpq	$10, %r15
	setne	%bl
	callq	sdsempty
	movl	$.L.str.239, %esi
	movl	$.L.str.112, %edx
	movq	%rax, %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.112, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2016(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.122, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.122, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2020(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.123, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.123, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2032(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.124, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.124, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+2036(%rip), %ebx
	xorl	%r15d, %r15d
	cmpl	$1, %ebx
	setne	%r15b
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.28, %ecx
	cmoveq	%r12, %rcx
	movl	$.L.str.238, %esi
	movl	$.L.str.125, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.125, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	movl	server+1800(%rip), %eax
	movq	supervised_mode_enum(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB35_34
# %bb.29:
	cmpl	%eax, supervised_mode_enum+8(%rip)
	je	.LBB35_35
# %bb.30:                               # %.preheader
	movl	$supervised_mode_enum+24, %edx
	.p2align	4, 0x90
.LBB35_31:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB35_34
# %bb.32:                               #   in Loop: Header=BB35_31 Depth=1
	cmpl	%eax, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB35_31
	jmp	.LBB35_35
.LBB35_34:
	xorl	%ecx, %ecx
.LBB35_35:
	testq	%rcx, %rcx
	movl	$.L.str.27, %ebx
	cmovneq	%rcx, %rbx
	xorl	%r15d, %r15d
	testl	%eax, %eax
	setne	%r15b
	callq	sdsempty
	movl	$.L.str.238, %esi
	movl	$.L.str.199, %edx
	movq	%rax, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.199, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	callq	rewriteConfigRewriteLine
	xorl	%r15d, %r15d
	cmpl	$0, server+3080(%rip)
	setne	%r15b
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
	cmpl	$0, server+164(%rip)
	je	.LBB35_37
# %bb.36:
	movq	%r13, %rdi
	callq	rewriteConfigSentinelOption
.LBB35_37:
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
.LBB35_38:
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
	je	.LBB36_4
# %bb.1:
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.250, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB36_4
# %bb.2:
	movl	$.L.str.251, %esi
.LBB36_3:
	movq	%r14, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyError           # TAILCALL
.LBB36_4:
	movl	64(%r14), %ebx
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r15
	cmpl	$2, %ebx
	jne	.LBB36_6
# %bb.5:
	movl	$.L.str.252, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB36_20
.LBB36_6:
	movl	$.L.str.257, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$4, %ebx
	jne	.LBB36_8
# %bb.7:
	testl	%eax, %eax
	jne	.LBB36_8
# %bb.21:
	movq	%r14, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	configSetCommand        # TAILCALL
.LBB36_8:
	movl	$.L.str.250, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %ebx
	jne	.LBB36_10
# %bb.9:
	testl	%eax, %eax
	jne	.LBB36_10
# %bb.22:
	movq	%r14, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	configGetCommand        # TAILCALL
.LBB36_10:
	cmpl	$2, %ebx
	setne	%bl
	movl	$.L.str.258, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB36_13
# %bb.11:
	testb	%bl, %bl
	jne	.LBB36_13
# %bb.12:
	callq	resetServerStats
	callq	resetCommandTableStats
.LBB36_18:
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB36_20:
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
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_13:
	movl	$.L.str.259, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%bl, %al
	je	.LBB36_14
# %bb.19:
	movq	%r14, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplySubcommandSyntaxError # TAILCALL
.LBB36_14:
	movq	server+8(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB36_15
# %bb.16:
	callq	rewriteConfig
	cmpl	$-1, %eax
	je	.LBB36_23
# %bb.17:
	movl	$.L.str.263, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB36_18
.LBB36_15:
	movl	$.L.str.260, %esi
	jmp	.LBB36_3
.LBB36_23:
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
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyErrorFormat     # TAILCALL
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
