	.text
	.file	"cluster.c"
	.globl	clusterLoadConfig       # -- Begin function clusterLoadConfig
	.p2align	4, 0x90
	.type	clusterLoadConfig,@function
clusterLoadConfig:                      # @clusterLoadConfig
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB0_1
# %bb.3:
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	fileno
	leaq	-168(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$-1, %eax
	je	.LBB0_7
# %bb.4:
	cmpq	$0, -152(%rbp)
	je	.LBB0_5
.LBB0_7:
	movl	$2098176, %edi          # imm = 0x200400
	callq	zmalloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$2098176, %esi          # imm = 0x200400
	movq	%r15, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_101
# %bb.8:
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_98:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	sdsfreesplitres
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB0_99:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB0_100:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, %rdi
	movl	$2098176, %esi          # imm = 0x200400
	movq	%r15, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_101
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_68 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #       Child Loop BB0_94 Depth 3
                                        #     Child Loop BB0_16 Depth 2
	movb	(%rbx), %al
	testb	%al, %al
	je	.LBB0_100
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	cmpb	$10, %al
	je	.LBB0_100
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, %rdi
	leaq	-48(%rbp), %rsi
	callq	sdssplitargs
	testq	%rax, %rax
	je	.LBB0_110
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, %r13
	movq	(%rax), %rbx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	-48(%rbp), %esi
	testl	%eax, %eax
	je	.LBB0_13
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$8, %esi
	jl	.LBB0_110
# %bb.24:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r14, %r14
	je	.LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_9 Depth=1
	movq	8(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movq	%r13, %r15
	jne	.LBB0_28
	jmp	.LBB0_27
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	testb	$1, %sil
	je	.LBB0_110
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$2, %esi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r13, %r14
	jl	.LBB0_22
# %bb.15:                               # %.preheader4
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, %ebx
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_16 Depth=2
	movq	8(%r12,%rbx,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	server+2944(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	%r12, %r14
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=2
	addq	$2, %rbx
	movl	-48(%rbp), %esi
	cmpl	%ebx, %esi
	jle	.LBB0_22
.LBB0_16:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %r12
	movq	(%r14,%rbx,8), %r14
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$.L.str.5, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r13, %r14
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	movq	%r13, %r14
	movq	8(%r13,%rbx,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	server+2944(%rip), %rcx
	movq	%rax, 524408(%rcx)
	jmp	.LBB0_21
.LBB0_22:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%r14, %rdi
	callq	sdsfreesplitres
	jmp	.LBB0_99
.LBB0_25:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
.LBB0_27:                               #   in Loop: Header=BB0_9 Depth=1
	movq	(%r15), %rdi
	xorl	%esi, %esi
	callq	createClusterNode
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r14
	leaq	8(%rbx), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	8(%r15), %rdi
	movl	$58, %esi
	callq	strrchr
	testq	%rax, %rax
	je	.LBB0_110
# %bb.29:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	-72(%rbp), %r12         # 8-byte Reload
	leaq	2192(%r12), %r14
	movq	8(%r13), %r15
	movq	%r15, %rdi
	callq	strlen
	leaq	1(%rax), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$1, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_30
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, %r14
	movb	$0, (%rax)
	addq	$1, %r14
	jmp	.LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_9 Depth=1
	xorl	%r14d, %r14d
.LBB0_32:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, %rdi
	callq	atoi
	movl	%eax, 2240(%r12)
	testq	%r14, %r14
	je	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%r14, %rdi
	callq	atoi
	jmp	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
	addl	$10000, %eax            # imm = 0x2710
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	movl	%eax, 2244(%r12)
	movq	16(%r13), %r15
	testq	%r15, %r15
	jne	.LBB0_36
.LBB0_60:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%r13, %r14
	movq	24(%r13), %rdi
	cmpb	$45, (%rdi)
	je	.LBB0_71
# %bb.61:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r14, %r14
	je	.LBB0_62
# %bb.63:                               #   in Loop: Header=BB0_9 Depth=1
	movq	8(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_65
	jmp	.LBB0_64
	.p2align	4, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_36 Depth=2
	orb	$1, 48(%r12)
.LBB0_59:                               #   in Loop: Header=BB0_36 Depth=2
	leaq	1(%r14), %rax
	testq	%r14, %r14
	cmovneq	%rax, %r15
	je	.LBB0_60
.LBB0_36:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movl	$44, %esi
	callq	strchr
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	movb	$0, (%r14)
.LBB0_38:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_39
# %bb.42:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_43
# %bb.44:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_45
# %bb.46:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_47
# %bb.48:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_49
# %bb.50:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_51
# %bb.52:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.14, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_53
# %bb.54:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_55
# %bb.56:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB0_59
	jmp	.LBB0_57
	.p2align	4, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_36 Depth=2
	movq	server+2944(%rip), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_40
# %bb.58:                               #   in Loop: Header=BB0_36 Depth=2
	movq	%r12, (%rax)
	movq	%r12, myself(%rip)
	orb	$16, 48(%r12)
	jmp	.LBB0_59
.LBB0_45:                               #   in Loop: Header=BB0_36 Depth=2
	orb	$2, 48(%r12)
	jmp	.LBB0_59
.LBB0_47:                               #   in Loop: Header=BB0_36 Depth=2
	orb	$4, 48(%r12)
	jmp	.LBB0_59
.LBB0_49:                               #   in Loop: Header=BB0_36 Depth=2
	orb	$8, 48(%r12)
	callq	mstime
	movq	%rax, 2152(%r12)
	jmp	.LBB0_59
.LBB0_51:                               #   in Loop: Header=BB0_36 Depth=2
	orb	$32, 48(%r12)
	jmp	.LBB0_59
.LBB0_53:                               #   in Loop: Header=BB0_36 Depth=2
	orb	$64, 48(%r12)
	jmp	.LBB0_59
.LBB0_55:                               #   in Loop: Header=BB0_36 Depth=2
	orb	$2, 49(%r12)
	jmp	.LBB0_59
.LBB0_62:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_64:                               #   in Loop: Header=BB0_9 Depth=1
	movq	24(%r13), %rdi
	xorl	%esi, %esi
	callq	createClusterNode
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r14
	leaq	8(%rbx), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
.LBB0_65:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, 2128(%r12)
	movslq	2116(%rbx), %rax
	movq	2120(%rbx), %rdi
	testq	%rax, %rax
	movq	%r13, %r14
	jle	.LBB0_69
# %bb.66:                               #   in Loop: Header=BB0_9 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_68:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r12, (%rdi,%rcx,8)
	je	.LBB0_70
# %bb.67:                               #   in Loop: Header=BB0_68 Depth=2
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB0_68
.LBB0_69:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 2120(%rbx)
	movslq	2116(%rbx), %rcx
	movq	%r12, (%rax,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 2116(%rbx)
	orb	$1, 49(%rbx)
.LBB0_70:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_71:                               #   in Loop: Header=BB0_9 Depth=1
	movq	32(%r14), %rdi
	callq	atoi
	testl	%eax, %eax
	je	.LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_9 Depth=1
	callq	mstime
	movq	%rax, 2136(%r12)
.LBB0_73:                               #   in Loop: Header=BB0_9 Depth=1
	movq	40(%r14), %rdi
	callq	atoi
	testl	%eax, %eax
	je	.LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_9 Depth=1
	callq	mstime
	movq	%rax, 2144(%r12)
.LBB0_75:                               #   in Loop: Header=BB0_9 Depth=1
	movq	48(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	%rax, 56(%r12)
	movl	-48(%rbp), %esi
	cmpl	$9, %esi
	jl	.LBB0_98
# %bb.76:                               # %.preheader6
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$8, %r12d
	movq	%r14, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_87:                               #   in Loop: Header=BB0_77 Depth=2
	movq	%rbx, 131112(%rax,%rcx,8)
.LBB0_97:                               #   in Loop: Header=BB0_77 Depth=2
	addq	$1, %r12
	movslq	-48(%rbp), %rsi
	cmpq	%rsi, %r12
	movq	-80(%rbp), %r14         # 8-byte Reload
	jge	.LBB0_98
.LBB0_77:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_94 Depth 3
	movq	(%r14,%r12,8), %rdi
	movb	(%rdi), %bl
	movl	$45, %esi
	callq	strchr
	movq	%rax, %r15
	cmpb	$91, %bl
	jne	.LBB0_88
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=2
	testq	%r15, %r15
	je	.LBB0_79
# %bb.80:                               #   in Loop: Header=BB0_77 Depth=2
	movb	$0, (%r15)
	movb	1(%r15), %al
	movb	%al, -41(%rbp)          # 1-byte Spill
	movq	(%r14,%r12,8), %rdi
	addq	$1, %rdi
	callq	atoi
	cmpl	$16383, %eax            # imm = 0x3FFF
	ja	.LBB0_110
# %bb.81:                               #   in Loop: Header=BB0_77 Depth=2
	movl	%eax, %r14d
	addq	$3, %r15
	movl	$40, %esi
	movq	%r15, %rdi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r13
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r13, %r13
	je	.LBB0_82
# %bb.83:                               #   in Loop: Header=BB0_77 Depth=2
	movq	8(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_85
	jmp	.LBB0_84
	.p2align	4, 0x90
.LBB0_88:                               #   in Loop: Header=BB0_77 Depth=2
	testq	%r15, %r15
	je	.LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_77 Depth=2
	movb	$0, (%r15)
	movq	(%r14,%r12,8), %rdi
	callq	atoi
	movl	%eax, %r14d
	addq	$1, %r15
	movq	%r15, %rdi
	callq	atoi
	jmp	.LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_77 Depth=2
	movq	(%r14,%r12,8), %rdi
	callq	atoi
	movl	%eax, %r14d
.LBB0_91:                               #   in Loop: Header=BB0_77 Depth=2
	movl	%eax, %ecx
	orl	%r14d, %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	ja	.LBB0_110
# %bb.92:                               #   in Loop: Header=BB0_77 Depth=2
	cmpl	%eax, %r14d
	jg	.LBB0_97
# %bb.93:                               #   in Loop: Header=BB0_77 Depth=2
	movslq	%r14d, %rbx
	movslq	%eax, %r15
	addq	$-1, %rbx
	jmp	.LBB0_94
	.p2align	4, 0x90
.LBB0_96:                               #   in Loop: Header=BB0_94 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	addl	$1, %r14d
	cmpq	%r15, %rbx
	jge	.LBB0_97
.LBB0_94:                               #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	server+2944(%rip), %rax
	cmpq	$0, 262192(%rax,%rbx,8)
	jne	.LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_94 Depth=3
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r13, 262192(%rax,%rbx,8)
	jmp	.LBB0_96
.LBB0_82:                               #   in Loop: Header=BB0_77 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_84:                               #   in Loop: Header=BB0_77 Depth=2
	movl	$2264, %edi             # imm = 0x8D8
	callq	zmalloc
	movq	%rax, %rbx
	leaq	8(%rax), %r13
	movl	$40, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	memcpy
	callq	mstime
	movq	%rax, (%rbx)
	movq	$0, 56(%rbx)
	movl	$0, 48(%rbx)
	leaq	64(%rbx), %rdi
	movl	$2048, %edx             # imm = 0x800
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2112(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2120(%rbx)
	movups	%xmm0, 2136(%rbx)
	movq	$0, 2152(%rbx)
	movq	$0, 2248(%rbx)
	leaq	2192(%rbx), %rdi
	movl	$46, %edx
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2240(%rbx)
	callq	listCreate
	movq	%rax, 2256(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2160(%rbx)
	movups	%xmm0, 2176(%rbx)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r15
	movl	$40, %esi
	movq	%r13, %rdi
	callq	sdsnewlen
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
.LBB0_85:                               #   in Loop: Header=BB0_77 Depth=2
	movq	server+2944(%rip), %rax
	movslq	%r14d, %rcx
	cmpb	$62, -41(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_77 Depth=2
	movq	%rbx, 40(%rax,%rcx,8)
	jmp	.LBB0_97
.LBB0_101:
	movq	server+2944(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB0_111
# %bb.102:
	movq	%rbx, %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	fclose
	movq	myself(%rip), %rdx
	addq	$8, %rdx
	xorl	%r14d, %r14d
	movl	$.L.str.19, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB0_105
	.p2align	4, 0x90
.LBB0_103:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB0_103
.LBB0_105:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	jae	.LBB0_6
# %bb.106:
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB0_109
	.p2align	4, 0x90
.LBB0_107:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB0_107
.LBB0_109:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rcx
	cmpq	%rcx, %rbx
	cmovbq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, 8(%rax)
	jmp	.LBB0_6
.LBB0_1:
	callq	__errno
	movl	$-1, %r14d
	cmpl	$2, (%rax)
	je	.LBB0_6
# %bb.2:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.1, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB0_5:
	movq	%r15, %rdi
	callq	fclose
	movl	$-1, %r14d
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_110:
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB0_111:
	movl	$.L.str.20, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	fclose
	movl	$1, %edi
	callq	exit
.LBB0_79:
	movl	$.L.str.18, %edi
	movl	$.L.str.8, %esi
	movl	$246, %edx
	jmp	.LBB0_41
.LBB0_40:
	movl	$.L.str.7, %edi
	movl	$.L.str.8, %esi
	movl	$190, %edx
.LBB0_41:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB0_57:
	movl	$.L.str.8, %edi
	movl	$.L.str.17, %edx
	movl	$211, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end0:
	.size	clusterLoadConfig, .Lfunc_end0-clusterLoadConfig
                                        # -- End function
	.globl	clusterLookupNode       # -- Begin function clusterLookupNode
	.p2align	4, 0x90
	.type	clusterLookupNode,@function
clusterLookupNode:                      # @clusterLookupNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r14, %r14
	je	.LBB1_1
# %bb.2:
	movq	8(%r14), %rax
	jmp	.LBB1_3
.LBB1_1:
	xorl	%eax, %eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	clusterLookupNode, .Lfunc_end1-clusterLookupNode
                                        # -- End function
	.globl	createClusterNode       # -- Begin function createClusterNode
	.p2align	4, 0x90
	.type	createClusterNode,@function
createClusterNode:                      # @createClusterNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$2264, %edi             # imm = 0x8D8
	callq	zmalloc
	movq	%rax, %rbx
	leaq	8(%rax), %rdi
	testq	%r15, %r15
	je	.LBB2_2
# %bb.1:
	movl	$40, %edx
	movq	%r15, %rsi
	callq	memcpy
	jmp	.LBB2_3
.LBB2_2:
	movl	$40, %esi
	callq	getRandomHexChars
.LBB2_3:
	callq	mstime
	movq	%rax, (%rbx)
	movq	$0, 56(%rbx)
	movl	%r14d, 48(%rbx)
	leaq	64(%rbx), %rdi
	movl	$2048, %edx             # imm = 0x800
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2112(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2120(%rbx)
	movups	%xmm0, 2136(%rbx)
	movq	$0, 2152(%rbx)
	movq	$0, 2248(%rbx)
	movq	%rbx, %rdi
	addq	$2192, %rdi             # imm = 0x890
	movl	$46, %edx
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2240(%rbx)
	callq	listCreate
	movq	%rax, 2256(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2160(%rbx)
	movups	%xmm0, 2176(%rbx)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	createClusterNode, .Lfunc_end2-createClusterNode
                                        # -- End function
	.globl	clusterAddNode          # -- Begin function clusterAddNode
	.p2align	4, 0x90
	.type	clusterAddNode,@function
clusterAddNode:                         # @clusterAddNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r14
	addq	$8, %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	negl	%eax
	sbbl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	clusterAddNode, .Lfunc_end3-clusterAddNode
                                        # -- End function
	.globl	clusterNodeAddSlave     # -- Begin function clusterNodeAddSlave
	.p2align	4, 0x90
	.type	clusterNodeAddSlave,@function
clusterNodeAddSlave:                    # @clusterNodeAddSlave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movslq	2116(%rdi), %rax
	movq	2120(%rdi), %rdi
	testq	%rax, %rax
	jle	.LBB4_5
# %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, (%rdi,%rcx,8)
	je	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_3 Depth=1
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB4_3
.LBB4_5:
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 2120(%r14)
	movslq	2116(%r14), %rcx
	movq	%rbx, (%rax,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 2116(%r14)
	orb	$1, 49(%r14)
	xorl	%eax, %eax
	jmp	.LBB4_6
.LBB4_4:
	movl	$-1, %eax
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	clusterNodeAddSlave, .Lfunc_end4-clusterNodeAddSlave
                                        # -- End function
	.globl	clusterAddSlot          # -- Begin function clusterAddSlot
	.p2align	4, 0x90
	.type	clusterAddSlot,@function
clusterAddSlot:                         # @clusterAddSlot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	server+2944(%rip), %rcx
	movslq	%esi, %rbx
	movl	$-1, %eax
	cmpq	$0, 262184(%rcx,%rbx,8)
	jne	.LBB5_2
# %bb.1:
	movq	%rdi, %r14
	movl	%ebx, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r14, 262184(%rax,%rbx,8)
	xorl	%eax, %eax
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	clusterAddSlot, .Lfunc_end5-clusterAddSlot
                                        # -- End function
	.globl	clusterGetMaxEpoch      # -- Begin function clusterGetMaxEpoch
	.p2align	4, 0x90
	.type	clusterGetMaxEpoch,@function
clusterGetMaxEpoch:                     # @clusterGetMaxEpoch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB6_3
	.p2align	4, 0x90
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	%r14, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB6_1
.LBB6_3:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rbx
	cmovbq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	clusterGetMaxEpoch, .Lfunc_end6-clusterGetMaxEpoch
                                        # -- End function
	.globl	clusterSaveConfig       # -- Begin function clusterSaveConfig
	.p2align	4, 0x90
	.type	clusterSaveConfig,@function
clusterSaveConfig:                      # @clusterSaveConfig
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%edi, %r15d
	movq	server+2944(%rip), %rax
	andl	$-5, 524416(%rax)
	movl	$32, %edi
	callq	clusterGenNodesDescription
	movq	server+2944(%rip), %rcx
	movq	8(%rcx), %rdx
	movq	524408(%rcx), %rcx
	xorl	%r14d, %r14d
	movl	$.L.str.21, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	movq	%rax, %r13
	movzbl	-1(%rax), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB7_7
# %bb.1:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI7_0(,%rcx,8)
.LBB7_2:
	shrq	$3, %rax
	movq	%rax, %r14
	jmp	.LBB7_7
.LBB7_3:
	movzbl	-3(%r13), %r14d
	jmp	.LBB7_7
.LBB7_4:
	movzwl	-5(%r13), %r14d
	jmp	.LBB7_7
.LBB7_5:
	movl	-9(%r13), %r14d
	jmp	.LBB7_7
.LBB7_6:
	movq	-17(%r13), %r14
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2936(%rip), %rdi
	movl	$513, %esi              # imm = 0x201
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	cmpl	$-1, %eax
	je	.LBB7_42
# %bb.8:
	movl	%eax, %r12d
	addq	$-1, %rbx
	leaq	-128(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$-1, %eax
	je	.LBB7_11
# %bb.9:
	movq	-112(%rbp), %rsi
	cmpq	%r14, %rsi
	jle	.LBB7_11
# %bb.10:
	movq	%r13, %rdi
	callq	sdsgrowzero
	movq	%rax, %r13
	leaq	(%rax,%r14), %rdi
	movq	-112(%rbp), %rdx
	subq	%r14, %rdx
	movl	$10, %esi
	callq	memset
	movq	%r13, %rbx
	addq	$-1, %rbx
.LBB7_11:
	movzbl	-1(%r13), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB7_12
# %bb.13:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI7_1(,%rax,8)
.LBB7_14:
	shrq	$3, %rdx
	jmp	.LBB7_19
.LBB7_15:
	movzbl	-3(%r13), %edx
	jmp	.LBB7_19
.LBB7_16:
	movzwl	-5(%r13), %edx
	jmp	.LBB7_19
.LBB7_17:
	movl	-9(%r13), %edx
	jmp	.LBB7_19
.LBB7_18:
	movq	-17(%r13), %rdx
	jmp	.LBB7_19
.LBB7_12:
	xorl	%edx, %edx
.LBB7_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %edi
	movq	%r13, %rsi
	callq	write
	movzbl	(%rbx), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB7_20
# %bb.21:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI7_2(,%rdx,8)
.LBB7_22:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	jmp	.LBB7_27
.LBB7_23:
	movzbl	-3(%r13), %edx
	jmp	.LBB7_27
.LBB7_24:
	movzwl	-5(%r13), %edx
	jmp	.LBB7_27
.LBB7_25:
	movl	-9(%r13), %edx
	jmp	.LBB7_27
.LBB7_26:
	movq	-17(%r13), %rdx
	jmp	.LBB7_27
.LBB7_20:
	xorl	%edx, %edx
.LBB7_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jne	.LBB7_41
# %bb.28:
	testl	%r15d, %r15d
	je	.LBB7_30
# %bb.29:
	movq	server+2944(%rip), %rax
	andl	$-9, 524416(%rax)
	movl	%r12d, %edi
	callq	fsync
	movb	(%rbx), %cl
.LBB7_30:
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB7_31
# %bb.32:
	movzbl	%cl, %eax
	andl	$7, %eax
	jmpq	*.LJTI7_3(,%rax,8)
.LBB7_33:
	shrb	$3, %cl
	movzbl	%cl, %eax
	jmp	.LBB7_38
.LBB7_41:
	movl	%r12d, %edi
	callq	close
.LBB7_42:
	movq	%r13, %rdi
	callq	sdsfree
	movl	$-1, %eax
	jmp	.LBB7_43
.LBB7_31:
	xorl	%eax, %eax
	jmp	.LBB7_38
.LBB7_34:
	movzbl	-3(%r13), %eax
	jmp	.LBB7_38
.LBB7_35:
	movzwl	-5(%r13), %eax
	jmp	.LBB7_38
.LBB7_36:
	movl	-9(%r13), %eax
	jmp	.LBB7_38
.LBB7_37:
	movq	-17(%r13), %rax
.LBB7_38:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	je	.LBB7_40
# %bb.39:
	movl	%r12d, %edi
	movq	%r14, %rsi
	callq	ftruncate
.LBB7_40:
	movl	%r12d, %edi
	callq	close
	movq	%r13, %rdi
	callq	sdsfree
	xorl	%eax, %eax
.LBB7_43:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	clusterSaveConfig, .Lfunc_end7-clusterSaveConfig
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_5
	.quad	.LBB7_6
.LJTI7_1:
	.quad	.LBB7_14
	.quad	.LBB7_15
	.quad	.LBB7_16
	.quad	.LBB7_17
	.quad	.LBB7_18
.LJTI7_2:
	.quad	.LBB7_22
	.quad	.LBB7_23
	.quad	.LBB7_24
	.quad	.LBB7_25
	.quad	.LBB7_26
.LJTI7_3:
	.quad	.LBB7_33
	.quad	.LBB7_34
	.quad	.LBB7_35
	.quad	.LBB7_36
	.quad	.LBB7_37
                                        # -- End function
	.text
	.globl	clusterGenNodesDescription # -- Begin function clusterGenNodesDescription
	.p2align	4, 0x90
	.type	clusterGenNodesDescription,@function
clusterGenNodesDescription:             # @clusterGenNodesDescription
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edi, %r14d
	callq	sdsempty
	movq	%rax, %r15
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r12
	movq	%rax, %rdi
	jmp	.LBB8_1
	.p2align	4, 0x90
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	movq	%r12, %rdi
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB8_5
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movq	8(%rax), %rdi
	testl	%r14d, 48(%rdi)
	jne	.LBB8_4
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	callq	clusterGenNodeDescription
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	sdscatsds
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$.L.str.117, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	sdscatlen
	movq	%rax, %r15
	jmp	.LBB8_4
.LBB8_5:
	movq	%r12, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	clusterGenNodesDescription, .Lfunc_end8-clusterGenNodesDescription
                                        # -- End function
	.globl	clusterSaveConfigOrDie  # -- Begin function clusterSaveConfigOrDie
	.p2align	4, 0x90
	.type	clusterSaveConfigOrDie,@function
clusterSaveConfigOrDie:                 # @clusterSaveConfigOrDie
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	clusterSaveConfig
	cmpl	$-1, %eax
	je	.LBB9_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB9_2:
	movl	$.L.str.22, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end9:
	.size	clusterSaveConfigOrDie, .Lfunc_end9-clusterSaveConfigOrDie
                                        # -- End function
	.globl	clusterLockConfig       # -- Begin function clusterLockConfig
	.p2align	4, 0x90
	.type	clusterLockConfig,@function
clusterLockConfig:                      # @clusterLockConfig
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	movl	$513, %esi              # imm = 0x201
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	cmpl	$-1, %eax
	je	.LBB10_1
# %bb.2:
	movl	%eax, %r15d
	movl	%eax, %edi
	movl	$6, %esi
	callq	flock
	cmpl	$-1, %eax
	jne	.LBB10_8
# %bb.3:
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB10_5
# %bb.4:
	movl	$.L.str.24, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB10_6
.LBB10_1:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.23, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB10_7
.LBB10_5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.25, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
.LBB10_6:
	movl	%r15d, %edi
	callq	close
.LBB10_7:
	movl	$-1, %ebx
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	clusterLockConfig, .Lfunc_end10-clusterLockConfig
                                        # -- End function
	.globl	clusterUpdateMyselfFlags # -- Begin function clusterUpdateMyselfFlags
	.p2align	4, 0x90
	.type	clusterUpdateMyselfFlags,@function
clusterUpdateMyselfFlags:               # @clusterUpdateMyselfFlags
# %bb.0:
	movq	myself(%rip), %rax
	movl	48(%rax), %ecx
	xorl	%edx, %edx
	cmpl	$0, server+2964(%rip)
	setne	%dl
	shll	$9, %edx
	movl	%ecx, %esi
	andl	$-513, %esi             # imm = 0xFDFF
	orl	%edx, %esi
	movl	%esi, 48(%rax)
	cmpl	%ecx, %esi
	je	.LBB11_2
# %bb.1:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end11:
	.size	clusterUpdateMyselfFlags, .Lfunc_end11-clusterUpdateMyselfFlags
                                        # -- End function
	.globl	clusterDoBeforeSleep    # -- Begin function clusterDoBeforeSleep
	.p2align	4, 0x90
	.type	clusterDoBeforeSleep,@function
clusterDoBeforeSleep:                   # @clusterDoBeforeSleep
# %bb.0:
	movq	server+2944(%rip), %rax
	orl	%edi, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end12:
	.size	clusterDoBeforeSleep, .Lfunc_end12-clusterDoBeforeSleep
                                        # -- End function
	.globl	clusterInit             # -- Begin function clusterInit
	.p2align	4, 0x90
	.type	clusterInit,@function
clusterInit:                            # @clusterInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$524592, %edi           # imm = 0x80130
	callq	zmalloc
	movq	%rax, server+2944(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movabsq	$4294967297, %rcx       # imm = 0x100000001
	movq	%rcx, 16(%rax)
	movl	$0, 524416(%rax)
	movl	$clusterNodesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	server+2944(%rip), %rcx
	movq	%rax, 24(%rcx)
	movl	$clusterNodesBlackListDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	server+2944(%rip), %rdi
	movq	%rax, 32(%rdi)
	movq	$0, 524336(%rdi)
	movl	$0, 524344(%rdi)
	movl	$0, 524352(%rdi)
	movq	$0, 524360(%rdi)
	movl	$0, 524368(%rdi)
	movq	$0, 524408(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524424(%rdi)
	movups	%xmm0, 524504(%rdi)
	movups	%xmm0, 524440(%rdi)
	movups	%xmm0, 524520(%rdi)
	movq	$0, 524456(%rdi)
	movups	%xmm0, 524536(%rdi)
	movups	%xmm0, 524464(%rdi)
	movups	%xmm0, 524552(%rdi)
	movups	%xmm0, 524480(%rdi)
	xorps	%xmm0, %xmm0
	movq	$0, 524496(%rdi)
	movups	%xmm0, 524568(%rdi)
	movq	$0, 524584(%rdi)
	addq	$262184, %rdi           # imm = 0x40028
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movq	server+2944(%rip), %rdi
	addq	$40, %rdi
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$131112, %edi           # imm = 0x20028
	addq	server+2944(%rip), %rdi
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2936(%rip), %rdi
	callq	clusterLockConfig
	cmpl	$-1, %eax
	je	.LBB13_21
# %bb.1:
	movq	server+2936(%rip), %rdi
	callq	clusterLoadConfig
	cmpl	$-1, %eax
	jne	.LBB13_6
# %bb.2:
	movl	$2264, %edi             # imm = 0x8D8
	callq	zmalloc
	movq	%rax, %rbx
	leaq	8(%rax), %r14
	movl	$40, %esi
	movq	%r14, %rdi
	callq	getRandomHexChars
	callq	mstime
	movq	%rax, (%rbx)
	movq	$0, 56(%rbx)
	movl	$17, 48(%rbx)
	leaq	64(%rbx), %rdi
	movl	$2048, %edx             # imm = 0x800
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2112(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2120(%rbx)
	movups	%xmm0, 2136(%rbx)
	movq	$0, 2152(%rbx)
	movq	$0, 2248(%rbx)
	leaq	2192(%rbx), %rdi
	movl	$46, %edx
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2240(%rbx)
	callq	listCreate
	movq	%rax, 2256(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2160(%rbx)
	movups	%xmm0, 2176(%rbx)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	%rbx, (%rax)
	movq	%rbx, myself(%rip)
	movl	$.L.str.26, %esi
	movl	$2, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r14
	leaq	8(%rbx), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	callq	clusterSaveConfig
	cmpl	$-1, %eax
	je	.LBB13_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_6:
	movl	$0, server+508(%rip)
	movl	server+216(%rip), %edi
	cmpl	$55536, %edi            # imm = 0xD8F0
	jge	.LBB13_7
# %bb.8:
	addl	$10000, %edi            # imm = 0x2710
	movl	$server+444, %esi
	movl	$server+508, %edx
	callq	listenToPort
	cmpl	$-1, %eax
	je	.LBB13_21
# %bb.9:
	cmpl	$0, server+508(%rip)
	jle	.LBB13_14
# %bb.10:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB13_12:                              # =>This Inner Loop Header: Depth=1
	movq	server+72(%rip), %rdi
	movl	server+444(,%rbx,4), %esi
	movl	$clusterAcceptHandler, %ecx
	movl	$1, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	je	.LBB13_13
# %bb.11:                               #   in Loop: Header=BB13_12 Depth=1
	addq	$1, %rbx
	movslq	server+508(%rip), %rax
	cmpq	%rax, %rbx
	jl	.LBB13_12
.LBB13_14:
	callq	raxNew
	movq	server+2944(%rip), %rdi
	movq	%rax, 524328(%rdi)
	addq	$393256, %rdi           # imm = 0x60028
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	server+216(%rip), %ecx
	movq	myself(%rip), %rax
	movl	%ecx, 2240(%rax)
	addl	$10000, %ecx            # imm = 0x2710
	movl	%ecx, 2244(%rax)
	movl	server+2976(%rip), %ecx
	testl	%ecx, %ecx
	je	.LBB13_16
# %bb.15:
	movl	%ecx, 2240(%rax)
.LBB13_16:
	movl	server+2980(%rip), %ecx
	testl	%ecx, %ecx
	je	.LBB13_18
# %bb.17:
	movl	%ecx, 2244(%rax)
.LBB13_18:
	movq	server+2944(%rip), %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rcx)
	movl	$0, 524400(%rcx)
	movq	$0, 524392(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%rax), %edx
	xorl	%esi, %esi
	cmpl	$0, server+2964(%rip)
	setne	%sil
	shll	$9, %esi
	movl	%edx, %edi
	andl	$-513, %edi             # imm = 0xFDFF
	orl	%esi, %edi
	movl	%edi, 48(%rax)
	cmpl	%edx, %edi
	je	.LBB13_20
# %bb.19:
	orb	$6, 524416(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB13_13:
	movl	$.L.str.8, %edi
	movl	$.L.str.28, %edx
	movl	$500, %esi              # imm = 0x1F4
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB13_21:
	movl	$1, %edi
	callq	exit
.LBB13_7:
	movl	$.L.str.27, %esi
	jmp	.LBB13_4
.LBB13_3:
	movl	$.L.str.22, %esi
.LBB13_4:
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end13:
	.size	clusterInit, .Lfunc_end13-clusterInit
                                        # -- End function
	.globl	clusterCloseAllSlots    # -- Begin function clusterCloseAllSlots
	.p2align	4, 0x90
	.type	clusterCloseAllSlots,@function
clusterCloseAllSlots:                   # @clusterCloseAllSlots
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+2944(%rip), %rdi
	addq	$40, %rdi
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$131112, %edi           # imm = 0x20028
	addq	server+2944(%rip), %rdi
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	clusterCloseAllSlots, .Lfunc_end14-clusterCloseAllSlots
                                        # -- End function
	.globl	clusterAcceptHandler    # -- Begin function clusterAcceptHandler
	.p2align	4, 0x90
	.type	clusterAcceptHandler,@function
clusterAcceptHandler:                   # @clusterAcceptHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%esi, %r12d
	cmpq	$0, server+2464(%rip)
	jne	.LBB15_2
# %bb.1:
	cmpl	$0, server+860(%rip)
	jne	.LBB15_7
.LBB15_2:                               # %.preheader
	movl	$-1000, %r15d           # imm = 0xFC18
	leaq	-96(%rbp), %r14
	.p2align	4, 0x90
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	movl	$server+584, %edi
	movl	$46, %ecx
	movl	%r12d, %esi
	movq	%r14, %rdx
	leaq	-44(%rbp), %r8
	callq	anetTcpAccept
	cmpl	$-1, %eax
	je	.LBB15_4
# %bb.6:                                #   in Loop: Header=BB15_3 Depth=1
	movl	%eax, %r13d
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	anetNonBlock
	xorl	%edi, %edi
	movl	%r13d, %esi
	callq	anetEnableTcpNoDelay
	movl	-44(%rbp), %ecx
	movl	$.L.str.32, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$40, %edi
	callq	zmalloc
	movq	%rax, %rbx
	callq	mstime
	movq	%rax, (%rbx)
	callq	sdsempty
	movq	%rax, 16(%rbx)
	callq	sdsempty
	movq	%rax, 24(%rbx)
	movq	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, 8(%rbx)
	movq	server+72(%rip), %rdi
	movl	$clusterReadHandler, %ecx
	movl	%r13d, %esi
	movl	$1, %edx
	movq	%rbx, %r8
	callq	aeCreateFileEvent
	incl	%r15d
	jne	.LBB15_3
	jmp	.LBB15_7
.LBB15_4:
	callq	__errno
	cmpl	$11, (%rax)
	je	.LBB15_7
# %bb.5:
	movl	$.L.str.31, %esi
	movl	$server+584, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB15_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	clusterAcceptHandler, .Lfunc_end15-clusterAcceptHandler
                                        # -- End function
	.globl	resetManualFailover     # -- Begin function resetManualFailover
	.p2align	4, 0x90
	.type	resetManualFailover,@function
resetManualFailover:                    # @resetManualFailover
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB16_3
# %bb.1:
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB16_3
# %bb.2:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
.LBB16_3:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	resetManualFailover, .Lfunc_end16-resetManualFailover
                                        # -- End function
	.globl	clusterReset            # -- Begin function clusterReset
	.p2align	4, 0x90
	.type	clusterReset,@function
clusterReset:                           # @clusterReset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movq	myself(%rip), %rdi
	testb	$2, 48(%rdi)
	je	.LBB17_2
# %bb.1:
	callq	clusterSetNodeAsMaster
	callq	replicationUnsetMaster
	movl	$-1, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	emptyDb
.LBB17_2:
	movq	server+2944(%rip), %rdi
	addq	$40, %rdi
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$131112, %edi           # imm = 0x20028
	addq	server+2944(%rip), %rdi
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB17_5
# %bb.3:
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB17_5
# %bb.4:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
.LBB17_5:
	movq	server+2944(%rip), %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rcx)
	movl	$0, 524400(%rcx)
	movq	$0, 524392(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB17_6
	.p2align	4, 0x90
.LBB17_9:                               #   in Loop: Header=BB17_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpq	$16384, %rax            # imm = 0x4000
	jae	.LBB17_10
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	movq	262184(%rcx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB17_9
# %bb.7:                                #   in Loop: Header=BB17_6 Depth=1
	movl	%eax, %esi
	shrl	$3, %esi
	andl	$8191, %esi             # imm = 0x1FFF
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$1, %edi
	shll	%cl, %edi
	movzbl	64(%rdx,%rsi), %ebx
	movzbl	%cl, %ecx
	notb	%dil
	andb	%bl, %dil
	btl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movb	%dil, 64(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB17_18
# %bb.8:                                #   in Loop: Header=BB17_6 Depth=1
	addl	$-1, 2112(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	movq	$0, 262184(%rcx,%rax,8)
	movq	server+2944(%rip), %rcx
	jmp	.LBB17_9
.LBB17_10:
	movq	24(%rcx), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB17_11
	.p2align	4, 0x90
.LBB17_14:                              #   in Loop: Header=BB17_11 Depth=1
	movq	%rbx, %rdi
.LBB17_11:                              # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB17_15
# %bb.12:                               #   in Loop: Header=BB17_11 Depth=1
	movq	8(%rax), %rdi
	cmpq	myself(%rip), %rdi
	je	.LBB17_14
# %bb.13:                               #   in Loop: Header=BB17_11 Depth=1
	callq	clusterDelNode
	jmp	.LBB17_14
.LBB17_15:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	testl	%r14d, %r14d
	je	.LBB17_17
# %bb.16:
	movq	server+2944(%rip), %rax
	movq	$0, 8(%rax)
	movq	$0, 524408(%rax)
	movq	myself(%rip), %rax
	movq	$0, 56(%rax)
	movl	$.L.str.29, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %rdi
	addq	$8, %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictDelete
	movq	%rbx, %rdi
	callq	sdsfree
	movq	myself(%rip), %rdi
	addq	$8, %rdi
	movl	$40, %esi
	callq	getRandomHexChars
	movq	myself(%rip), %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r14
	leaq	8(%rbx), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rdx
	addq	$8, %rdx
	movl	$.L.str.30, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB17_17:
	movq	server+2944(%rip), %rax
	orl	$14, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB17_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end17:
	.size	clusterReset, .Lfunc_end17-clusterReset
                                        # -- End function
	.globl	clusterSetNodeAsMaster  # -- Begin function clusterSetNodeAsMaster
	.p2align	4, 0x90
	.type	clusterSetNodeAsMaster,@function
clusterSetNodeAsMaster:                 # @clusterSetNodeAsMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	48(%rdi), %eax
	testb	$1, %al
	jne	.LBB18_12
# %bb.1:
	movq	%rdi, %rbx
	movq	2128(%rdi), %r14
	testq	%r14, %r14
	je	.LBB18_11
# %bb.2:
	movslq	2116(%r14), %rdx
	movl	%edx, %eax
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, %rdi
	jge	.LBB18_9
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	movq	2120(%r14), %rsi
	addq	$-8, %rcx
	cmpq	%rbx, (%rsi,%rdi,8)
	leaq	1(%rdi), %rdi
	jne	.LBB18_3
# %bb.5:
	cmpl	%edi, %edx
	jle	.LBB18_7
# %bb.6:
	subl	%edi, %eax
	subq	%rcx, %rsi
	leaq	-8(%rsi), %rdi
	movslq	%eax, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	2116(%r14), %eax
.LBB18_7:
	addl	$-1, %eax
	movl	%eax, 2116(%r14)
	jne	.LBB18_9
# %bb.8:
	andb	$-2, 49(%r14)
.LBB18_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%rbx), %eax
	cmpq	%rbx, myself(%rip)
	je	.LBB18_11
# %bb.10:
	orl	$256, %eax              # imm = 0x100
	movl	%eax, 48(%rbx)
.LBB18_11:
	andl	$-4, %eax
	orl	$1, %eax
	movl	%eax, 48(%rbx)
	movq	$0, 2128(%rbx)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	clusterSetNodeAsMaster, .Lfunc_end18-clusterSetNodeAsMaster
                                        # -- End function
	.globl	clusterDelSlot          # -- Begin function clusterDelSlot
	.p2align	4, 0x90
	.type	clusterDelSlot,@function
clusterDelSlot:                         # @clusterDelSlot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
                                        # kill: def $edi killed $edi def $rdi
	movq	server+2944(%rip), %rcx
	movslq	%edi, %r8
	movq	262184(%rcx,%r8,8), %rdx
	testq	%rdx, %rdx
	je	.LBB19_1
# %bb.2:
	leal	7(%rdi), %ecx
	testl	%edi, %edi
	cmovnsl	%edi, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rsi
	andb	$7, %dil
	movl	$1, %eax
	movl	%edi, %ecx
	shll	%cl, %eax
	movzbl	64(%rdx,%rsi), %ecx
	movzbl	%dil, %edi
	notb	%al
	andb	%cl, %al
	btl	%edi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 64(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB19_5
# %bb.3:
	addl	$-1, 2112(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%r8,8)
	xorl	%eax, %eax
	jmp	.LBB19_4
.LBB19_1:
	movl	$-1, %eax
.LBB19_4:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB19_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end19:
	.size	clusterDelSlot, .Lfunc_end19-clusterDelSlot
                                        # -- End function
	.globl	clusterDelNode          # -- Begin function clusterDelNode
	.p2align	4, 0x90
	.type	clusterDelNode,@function
clusterDelNode:                         # @clusterDelNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	server+2944(%rip), %rcx
	xorl	%eax, %eax
	jmp	.LBB20_1
	.p2align	4, 0x90
.LBB20_8:                               #   in Loop: Header=BB20_1 Depth=1
	addl	$-1, 2112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	movq	$0, 262184(%rcx,%rax,8)
	movq	server+2944(%rip), %rcx
.LBB20_9:                               #   in Loop: Header=BB20_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB20_10:                              #   in Loop: Header=BB20_1 Depth=1
	addq	$1, %rax
	cmpq	$16384, %rax            # imm = 0x4000
	jae	.LBB20_11
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 131112(%rcx,%rax,8)
	je	.LBB20_2
# %bb.3:                                #   in Loop: Header=BB20_1 Depth=1
	cmpq	%rbx, 40(%rcx,%rax,8)
	je	.LBB20_4
.LBB20_5:                               #   in Loop: Header=BB20_1 Depth=1
	cmpq	%rbx, 262184(%rcx,%rax,8)
	jne	.LBB20_10
	jmp	.LBB20_6
	.p2align	4, 0x90
.LBB20_2:                               #   in Loop: Header=BB20_1 Depth=1
	movq	$0, 131112(%rcx,%rax,8)
	movq	server+2944(%rip), %rcx
	cmpq	%rbx, 40(%rcx,%rax,8)
	jne	.LBB20_5
.LBB20_4:                               #   in Loop: Header=BB20_1 Depth=1
	movq	$0, 40(%rcx,%rax,8)
	movq	server+2944(%rip), %rcx
	cmpq	%rbx, 262184(%rcx,%rax,8)
	jne	.LBB20_10
.LBB20_6:                               #   in Loop: Header=BB20_1 Depth=1
	testq	%rbx, %rbx
	je	.LBB20_9
# %bb.7:                                #   in Loop: Header=BB20_1 Depth=1
	movl	%eax, %edx
	shrl	$3, %edx
	andl	$8191, %edx             # imm = 0x1FFF
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$1, %esi
	shll	%cl, %esi
	movzbl	64(%rbx,%rdx), %edi
	movzbl	%cl, %ecx
	notb	%sil
	andb	%dil, %sil
	btl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	movb	%sil, 64(%rbx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB20_8
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB20_11:
	movq	24(%rcx), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	jmp	.LBB20_12
	.p2align	4, 0x90
.LBB20_15:                              #   in Loop: Header=BB20_12 Depth=1
	movq	%r14, %rdi
.LBB20_12:                              # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB20_16
# %bb.13:                               #   in Loop: Header=BB20_12 Depth=1
	movq	8(%rax), %rdi
	cmpq	%rbx, %rdi
	je	.LBB20_15
# %bb.14:                               #   in Loop: Header=BB20_12 Depth=1
	movq	%rbx, %rsi
	callq	clusterNodeDelFailureReport
	jmp	.LBB20_15
.LBB20_16:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movq	%rbx, %rdi
	callq	freeClusterNode
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	clusterDelNode, .Lfunc_end20-clusterDelNode
                                        # -- End function
	.globl	createClusterLink       # -- Begin function createClusterLink
	.p2align	4, 0x90
	.type	createClusterLink,@function
createClusterLink:                      # @createClusterLink
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$40, %edi
	callq	zmalloc
	movq	%rax, %rbx
	callq	mstime
	movq	%rax, (%rbx)
	callq	sdsempty
	movq	%rax, 16(%rbx)
	callq	sdsempty
	movq	%rax, 24(%rbx)
	movq	%r14, 32(%rbx)
	movl	$-1, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	createClusterLink, .Lfunc_end21-createClusterLink
                                        # -- End function
	.globl	freeClusterLink         # -- Begin function freeClusterLink
	.p2align	4, 0x90
	.type	freeClusterLink,@function
freeClusterLink:                        # @freeClusterLink
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	8(%rdi), %esi
	cmpl	$-1, %esi
	je	.LBB22_2
# %bb.1:
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB22_2:
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	24(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB22_4
# %bb.3:
	movq	$0, 2248(%rax)
.LBB22_4:
	movl	8(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	freeClusterLink, .Lfunc_end22-freeClusterLink
                                        # -- End function
	.globl	clusterReadHandler      # -- Begin function clusterReadHandler
	.p2align	4, 0x90
	.type	clusterReadHandler,@function
clusterReadHandler:                     # @clusterReadHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4360, %rsp             # imm = 0x1108
	movq	%rdx, %r12
	movl	%esi, %r14d
	leaq	-4400(%rbp), %r15
	.p2align	4, 0x90
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	movq	24(%r12), %rbx
	movzbl	-1(%rbx), %r13d
	movl	%r13d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB23_3
# %bb.2:                                #   in Loop: Header=BB23_1 Depth=1
	movl	%r13d, %eax
	andl	$7, %eax
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_4:                               #   in Loop: Header=BB23_1 Depth=1
	shrq	$3, %r13
	jmp	.LBB23_9
.LBB23_3:                               #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB23_10
.LBB23_5:                               #   in Loop: Header=BB23_1 Depth=1
	movzbl	-3(%rbx), %r13d
	jmp	.LBB23_9
.LBB23_6:                               #   in Loop: Header=BB23_1 Depth=1
	movzwl	-5(%rbx), %r13d
	jmp	.LBB23_9
.LBB23_7:                               #   in Loop: Header=BB23_1 Depth=1
	movl	-9(%rbx), %r13d
	jmp	.LBB23_9
.LBB23_8:                               #   in Loop: Header=BB23_1 Depth=1
	movq	-17(%rbx), %r13
	.p2align	4, 0x90
.LBB23_9:                               #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %r13d
	ja	.LBB23_11
.LBB23_10:                              #   in Loop: Header=BB23_1 Depth=1
	movl	$8, %eax
	subl	%r13d, %eax
	jmp	.LBB23_13
	.p2align	4, 0x90
.LBB23_11:                              #   in Loop: Header=BB23_1 Depth=1
	cmpl	$8, %r13d
	jne	.LBB23_12
# %bb.16:                               #   in Loop: Header=BB23_1 Depth=1
	movl	$.L.str.68, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB23_18
# %bb.17:                               #   in Loop: Header=BB23_1 Depth=1
	movl	4(%rbx), %edi
	callq	lwip_htonl
	cmpl	$2255, %eax             # imm = 0x8CF
	jbe	.LBB23_18
.LBB23_12:                              #   in Loop: Header=BB23_1 Depth=1
	addq	$4, %rbx
	movl	(%rbx), %edi
	callq	lwip_htonl
	subl	%r13d, %eax
	cmpl	$4352, %eax             # imm = 0x1100
	movl	$4352, %ecx             # imm = 0x1100
	cmovael	%ecx, %eax
.LBB23_13:                              #   in Loop: Header=BB23_1 Depth=1
	movl	%eax, %edx
	movl	%r14d, %edi
	movq	%r15, %rsi
	callq	read
	cmpq	$-1, %rax
	je	.LBB23_14
# %bb.25:                               #   in Loop: Header=BB23_1 Depth=1
	movq	%rax, %rbx
	testq	%rax, %rax
	jle	.LBB23_26
# %bb.29:                               #   in Loop: Header=BB23_1 Depth=1
	movq	24(%r12), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	sdscatlen
	movq	%rax, 24(%r12)
	addl	%r13d, %ebx
	cmpl	$8, %ebx
	jb	.LBB23_1
# %bb.30:                               #   in Loop: Header=BB23_1 Depth=1
	movl	4(%rax), %edi
	callq	lwip_htonl
	cmpl	%ebx, %eax
	jne	.LBB23_1
# %bb.31:                               #   in Loop: Header=BB23_1 Depth=1
	movq	%r12, %rdi
	callq	clusterProcessPacket
	testl	%eax, %eax
	je	.LBB23_24
# %bb.32:                               #   in Loop: Header=BB23_1 Depth=1
	movq	24(%r12), %rdi
	callq	sdsfree
	callq	sdsempty
	movq	%rax, 24(%r12)
	jmp	.LBB23_1
.LBB23_14:
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB23_15
	jmp	.LBB23_24
.LBB23_26:
	je	.LBB23_27
.LBB23_15:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rdx
	jmp	.LBB23_28
.LBB23_18:
	movl	$.L.str.69, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB23_19
.LBB23_27:
	movl	$.L.str.71, %edx
.LBB23_28:
	movl	$.L.str.70, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB23_19:
	movl	8(%r12), %esi
	cmpl	$-1, %esi
	je	.LBB23_21
# %bb.20:
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB23_21:
	movq	16(%r12), %rdi
	callq	sdsfree
	movq	24(%r12), %rdi
	callq	sdsfree
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB23_23
# %bb.22:
	movq	$0, 2248(%rax)
.LBB23_23:
	movl	8(%r12), %edi
	callq	close
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4360, %rsp             # imm = 0x1108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	clusterReadHandler, .Lfunc_end23-clusterReadHandler
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_4
	.quad	.LBB23_5
	.quad	.LBB23_6
	.quad	.LBB23_7
	.quad	.LBB23_8
                                        # -- End function
	.text
	.globl	keyHashSlot             # -- Begin function keyHashSlot
	.p2align	4, 0x90
	.type	keyHashSlot,@function
keyHashSlot:                            # @keyHashSlot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testl	%esi, %esi
	jle	.LBB24_1
# %bb.2:
	movslq	%esi, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	cmpb	$123, (%rdi,%rcx)
	je	.LBB24_5
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB24_3
.LBB24_5:
	cmpl	%esi, %ecx
	jne	.LBB24_6
	jmp	.LBB24_13
.LBB24_1:
	xorl	%ecx, %ecx
	cmpl	%esi, %ecx
	je	.LBB24_13
.LBB24_6:
	leal	1(%rcx), %r8d
	cmpl	%esi, %r8d
	jge	.LBB24_13
# %bb.7:
	movslq	%r8d, %rax
	movslq	%esi, %rdx
	.p2align	4, 0x90
.LBB24_8:                               # =>This Inner Loop Header: Depth=1
	cmpb	$125, (%rdi,%rax)
	je	.LBB24_10
# %bb.9:                                #   in Loop: Header=BB24_8 Depth=1
	addq	$1, %rax
	cmpq	%rdx, %rax
	jl	.LBB24_8
.LBB24_10:
	cmpl	%esi, %eax
	je	.LBB24_13
# %bb.11:
	cmpl	%r8d, %eax
	je	.LBB24_13
# %bb.12:
	movl	%ecx, %edx
	addq	%rdx, %rdi
	addq	$1, %rdi
	notl	%ecx
	addl	%ecx, %eax
	movl	%eax, %esi
.LBB24_13:
	callq	crc16
                                        # kill: def $ax killed $ax def $eax
	andl	$16383, %eax            # imm = 0x3FFF
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	keyHashSlot, .Lfunc_end24-keyHashSlot
                                        # -- End function
	.globl	clusterNodeAddFailureReport # -- Begin function clusterNodeAddFailureReport
	.p2align	4, 0x90
	.type	clusterNodeAddFailureReport,@function
clusterNodeAddFailureReport:            # @clusterNodeAddFailureReport
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r12
	movq	2256(%rdi), %r14
	leaq	-48(%rbp), %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	listRewind
	.p2align	4, 0x90
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB25_4
# %bb.2:                                #   in Loop: Header=BB25_1 Depth=1
	movq	16(%rax), %rbx
	cmpq	%r12, (%rbx)
	jne	.LBB25_1
# %bb.3:
	callq	mstime
	movq	%rax, 8(%rbx)
	xorl	%eax, %eax
	jmp	.LBB25_5
.LBB25_4:
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%r12, (%rax)
	callq	mstime
	movq	%rax, 8(%r15)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	listAddNodeTail
	movl	$1, %eax
.LBB25_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	clusterNodeAddFailureReport, .Lfunc_end25-clusterNodeAddFailureReport
                                        # -- End function
	.globl	clusterNodeCleanupFailureReports # -- Begin function clusterNodeCleanupFailureReports
	.p2align	4, 0x90
	.type	clusterNodeCleanupFailureReports,@function
clusterNodeCleanupFailureReports:       # @clusterNodeCleanupFailureReports
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	2256(%rdi), %r14
	movq	server+2928(%rip), %r12
	callq	mstime
	movq	%rax, %rbx
	leaq	-48(%rbp), %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	listRewind
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB26_5
# %bb.1:                                # %.preheader
	addq	%r12, %r12
	leaq	-48(%rbp), %r15
	jmp	.LBB26_2
	.p2align	4, 0x90
.LBB26_4:                               #   in Loop: Header=BB26_2 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB26_5
.LBB26_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rcx
	movq	%rbx, %rdx
	subq	8(%rcx), %rdx
	cmpq	%r12, %rdx
	jle	.LBB26_4
# %bb.3:                                #   in Loop: Header=BB26_2 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	jmp	.LBB26_4
.LBB26_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	clusterNodeCleanupFailureReports, .Lfunc_end26-clusterNodeCleanupFailureReports
                                        # -- End function
	.globl	clusterNodeDelFailureReport # -- Begin function clusterNodeDelFailureReport
	.p2align	4, 0x90
	.type	clusterNodeDelFailureReport,@function
clusterNodeDelFailureReport:            # @clusterNodeDelFailureReport
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	2256(%rdi), %r15
	leaq	-64(%rbp), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	listRewind
	.p2align	4, 0x90
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB27_2
# %bb.3:                                #   in Loop: Header=BB27_1 Depth=1
	movq	16(%rax), %rcx
	cmpq	%rbx, (%rcx)
	jne	.LBB27_1
# %bb.4:
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movq	2256(%r14), %r14
	movq	server+2928(%rip), %r12
	callq	mstime
	movq	%rax, %rbx
	leaq	-48(%rbp), %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	listRewind
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB27_9
# %bb.5:                                # %.preheader
	addq	%r12, %r12
	leaq	-48(%rbp), %r15
	jmp	.LBB27_6
	.p2align	4, 0x90
.LBB27_8:                               #   in Loop: Header=BB27_6 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB27_9
.LBB27_6:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rcx
	movq	%rbx, %rdx
	subq	8(%rcx), %rdx
	cmpq	%r12, %rdx
	jle	.LBB27_8
# %bb.7:                                #   in Loop: Header=BB27_6 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	jmp	.LBB27_8
.LBB27_2:
	xorl	%eax, %eax
	jmp	.LBB27_10
.LBB27_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB27_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	clusterNodeDelFailureReport, .Lfunc_end27-clusterNodeDelFailureReport
                                        # -- End function
	.globl	clusterNodeFailureReportsCount # -- Begin function clusterNodeFailureReportsCount
	.p2align	4, 0x90
	.type	clusterNodeFailureReportsCount,@function
clusterNodeFailureReportsCount:         # @clusterNodeFailureReportsCount
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
	movq	2256(%rdi), %r15
	movq	server+2928(%rip), %r13
	callq	mstime
	movq	%rax, %rbx
	leaq	-56(%rbp), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	listRewind
	movq	%r12, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB28_5
# %bb.1:                                # %.preheader
	addq	%r13, %r13
	leaq	-56(%rbp), %r12
	jmp	.LBB28_2
	.p2align	4, 0x90
.LBB28_4:                               #   in Loop: Header=BB28_2 Depth=1
	movq	%r12, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB28_5
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rcx
	movq	%rbx, %rdx
	subq	8(%rcx), %rdx
	cmpq	%r13, %rdx
	jle	.LBB28_4
# %bb.3:                                #   in Loop: Header=BB28_2 Depth=1
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	jmp	.LBB28_4
.LBB28_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	2256(%r14), %rax
	movl	40(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	clusterNodeFailureReportsCount, .Lfunc_end28-clusterNodeFailureReportsCount
                                        # -- End function
	.globl	clusterNodeRemoveSlave  # -- Begin function clusterNodeRemoveSlave
	.p2align	4, 0x90
	.type	clusterNodeRemoveSlave,@function
clusterNodeRemoveSlave:                 # @clusterNodeRemoveSlave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movslq	2116(%rdi), %rdi
	movl	%edi, %r8d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rcx
	jge	.LBB29_2
# %bb.3:                                #   in Loop: Header=BB29_1 Depth=1
	movq	2120(%rbx), %rsi
	addq	$-8, %rdx
	cmpq	%rax, (%rsi,%rcx,8)
	leaq	1(%rcx), %rcx
	jne	.LBB29_1
# %bb.4:
	cmpl	%ecx, %edi
	jle	.LBB29_6
# %bb.5:
	subl	%ecx, %r8d
	subq	%rdx, %rsi
	leaq	-8(%rsi), %rdi
	movslq	%r8d, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	2116(%rbx), %r8d
.LBB29_6:
	xorl	%eax, %eax
	addl	$-1, %r8d
	movl	%r8d, 2116(%rbx)
	jne	.LBB29_8
# %bb.7:
	andb	$-2, 49(%rbx)
	jmp	.LBB29_8
.LBB29_2:
	movl	$-1, %eax
.LBB29_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	clusterNodeRemoveSlave, .Lfunc_end29-clusterNodeRemoveSlave
                                        # -- End function
	.globl	clusterCountNonFailingSlaves # -- Begin function clusterCountNonFailingSlaves
	.p2align	4, 0x90
	.type	clusterCountNonFailingSlaves,@function
clusterCountNonFailingSlaves:           # @clusterCountNonFailingSlaves
# %bb.0:
	movslq	2116(%rdi), %r9
	testq	%r9, %r9
	jle	.LBB30_1
# %bb.2:
	movq	2120(%rdi), %rcx
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r9d
	jne	.LBB30_4
# %bb.3:
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.LBB30_6
.LBB30_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB30_4:
	subq	%r8, %r9
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB30_5:                               # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rsi,8), %rdi
	movzbl	48(%rdi), %edx
	andb	$8, %dl
	cmpb	$1, %dl
	adcl	$0, %eax
	movq	8(%rcx,%rsi,8), %rdx
	movzbl	48(%rdx), %edx
	andb	$8, %dl
	cmpb	$1, %dl
	adcl	$0, %eax
	addq	$2, %rsi
	cmpq	%rsi, %r9
	jne	.LBB30_5
.LBB30_6:
	testq	%r8, %r8
	je	.LBB30_8
# %bb.7:
	movq	(%rcx,%rsi,8), %rcx
	movb	48(%rcx), %cl
	andb	$8, %cl
	cmpb	$1, %cl
	adcl	$0, %eax
.LBB30_8:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end30:
	.size	clusterCountNonFailingSlaves, .Lfunc_end30-clusterCountNonFailingSlaves
                                        # -- End function
	.globl	freeClusterNode         # -- Begin function freeClusterNode
	.p2align	4, 0x90
	.type	freeClusterNode,@function
freeClusterNode:                        # @freeClusterNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movslq	2116(%rdi), %rdx
	testq	%rdx, %rdx
	jle	.LBB31_8
# %bb.1:
	movq	2120(%r14), %rcx
	leaq	-1(%rdx), %rsi
	movl	%edx, %eax
	andl	$7, %eax
	cmpq	$7, %rsi
	jae	.LBB31_3
# %bb.2:
	xorl	%esi, %esi
	jmp	.LBB31_5
.LBB31_3:
	subq	%rax, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB31_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movq	8(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movq	16(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movq	24(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movq	32(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movq	40(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movq	48(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movq	56(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	addq	$8, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB31_4
.LBB31_5:
	testq	%rax, %rax
	je	.LBB31_8
# %bb.6:                                # %.preheader
	leaq	(%rcx,%rsi,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB31_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	movq	$0, 2128(%rsi)
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.LBB31_7
.LBB31_8:
	testb	$2, 48(%r14)
	je	.LBB31_18
# %bb.9:
	movq	2128(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB31_18
# %bb.10:
	movslq	2116(%rbx), %rdx
	movl	%edx, %eax
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB31_11:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, %rdi
	jge	.LBB31_17
# %bb.12:                               #   in Loop: Header=BB31_11 Depth=1
	movq	2120(%rbx), %rsi
	addq	$-8, %rcx
	cmpq	%r14, (%rsi,%rdi,8)
	leaq	1(%rdi), %rdi
	jne	.LBB31_11
# %bb.13:
	cmpl	%edi, %edx
	jle	.LBB31_15
# %bb.14:
	subl	%edi, %eax
	subq	%rcx, %rsi
	leaq	-8(%rsi), %rdi
	movslq	%eax, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	2116(%rbx), %eax
.LBB31_15:
	addl	$-1, %eax
	movl	%eax, 2116(%rbx)
	jne	.LBB31_17
# %bb.16:
	andb	$-2, 49(%rbx)
.LBB31_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB31_18:
	leaq	8(%r14), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictDelete
	testl	%eax, %eax
	jne	.LBB31_26
# %bb.19:
	movq	%rbx, %rdi
	callq	sdsfree
	movq	2248(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB31_25
# %bb.20:
	movl	8(%rbx), %esi
	cmpl	$-1, %esi
	je	.LBB31_22
# %bb.21:
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB31_22:
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	24(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB31_24
# %bb.23:
	movq	$0, 2248(%rax)
.LBB31_24:
	movl	8(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB31_25:
	movq	2256(%r14), %rdi
	callq	listRelease
	movq	2120(%r14), %rdi
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB31_26:
	movl	$.L.str.33, %edi
	movl	$.L.str.8, %esi
	movl	$876, %edx              # imm = 0x36C
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end31:
	.size	freeClusterNode, .Lfunc_end31-freeClusterNode
                                        # -- End function
	.globl	clusterRenameNode       # -- Begin function clusterRenameNode
	.p2align	4, 0x90
	.type	clusterRenameNode,@function
clusterRenameNode:                      # @clusterRenameNode
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
	leaq	8(%rdi), %rbx
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	sdsnewlen
	movq	%rax, %r12
	movl	$.L.str.34, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%r12, %rsi
	callq	dictDelete
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	sdsfree
	testl	%r13d, %r13d
	jne	.LBB32_2
# %bb.1:
	movl	$40, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r15
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	sdsnewlen
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	dictAdd
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
.LBB32_2:
	movl	$.L.str.35, %edi
	movl	$.L.str.8, %esi
	movl	$958, %edx              # imm = 0x3BE
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end32:
	.size	clusterRenameNode, .Lfunc_end32-clusterRenameNode
                                        # -- End function
	.globl	clusterBumpConfigEpochWithoutConsensus # -- Begin function clusterBumpConfigEpochWithoutConsensus
	.p2align	4, 0x90
	.type	clusterBumpConfigEpochWithoutConsensus,@function
clusterBumpConfigEpochWithoutConsensus: # @clusterBumpConfigEpochWithoutConsensus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB33_3
	.p2align	4, 0x90
.LBB33_1:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	%r14, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB33_1
.LBB33_3:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rdx
	cmpq	%rdx, %rbx
	cmovbq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rcx
	movq	56(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB33_5
# %bb.4:
	movl	$-1, %r14d
	cmpq	%rbx, %rsi
	je	.LBB33_6
.LBB33_5:
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	movq	%rdx, 56(%rcx)
	orb	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	movl	$.L.str.36, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB33_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end33:
	.size	clusterBumpConfigEpochWithoutConsensus, .Lfunc_end33-clusterBumpConfigEpochWithoutConsensus
                                        # -- End function
	.globl	clusterHandleConfigEpochCollision # -- Begin function clusterHandleConfigEpochCollision
	.p2align	4, 0x90
	.type	clusterHandleConfigEpochCollision,@function
clusterHandleConfigEpochCollision:      # @clusterHandleConfigEpochCollision
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	56(%rdi), %rax
	movq	myself(%rip), %rsi
	cmpq	56(%rsi), %rax
	jne	.LBB34_6
# %bb.1:
	movq	%rdi, %rbx
	testb	$1, 48(%rdi)
	je	.LBB34_6
# %bb.2:
	testb	$1, 48(%rsi)
	je	.LBB34_6
# %bb.3:
	addq	$8, %rbx
	addq	$8, %rsi
	movl	$40, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jle	.LBB34_6
# %bb.4:
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 8(%rax)
	movq	myself(%rip), %rax
	movq	%rcx, 56(%rax)
	movl	$1, %edi
	callq	clusterSaveConfig
	cmpl	$-1, %eax
	je	.LBB34_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rax
	movq	56(%rax), %rcx
	movl	$.L.str.37, %esi
	movl	$1, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB34_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB34_7:
	movl	$.L.str.22, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end34:
	.size	clusterHandleConfigEpochCollision, .Lfunc_end34-clusterHandleConfigEpochCollision
                                        # -- End function
	.globl	clusterBlacklistCleanup # -- Begin function clusterBlacklistCleanup
	.p2align	4, 0x90
	.type	clusterBlacklistCleanup,@function
clusterBlacklistCleanup:                # @clusterBlacklistCleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB35_1
	.p2align	4, 0x90
.LBB35_4:                               #   in Loop: Header=BB35_1 Depth=1
	movq	%rbx, %rdi
.LBB35_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB35_5
# %bb.2:                                #   in Loop: Header=BB35_1 Depth=1
	movq	8(%rax), %rcx
	cmpq	server+2872(%rip), %rcx
	jge	.LBB35_4
# %bb.3:                                #   in Loop: Header=BB35_1 Depth=1
	movq	server+2944(%rip), %rcx
	movq	32(%rcx), %rdi
	movq	(%rax), %rsi
	callq	dictDelete
	jmp	.LBB35_4
.LBB35_5:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	clusterBlacklistCleanup, .Lfunc_end35-clusterBlacklistCleanup
                                        # -- End function
	.globl	clusterBlacklistAddNode # -- Begin function clusterBlacklistAddNode
	.p2align	4, 0x90
	.type	clusterBlacklistAddNode,@function
clusterBlacklistAddNode:                # @clusterBlacklistAddNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	addq	$8, %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %r14
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB36_1
	.p2align	4, 0x90
.LBB36_4:                               #   in Loop: Header=BB36_1 Depth=1
	movq	%rbx, %rdi
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB36_5
# %bb.2:                                #   in Loop: Header=BB36_1 Depth=1
	movq	8(%rax), %rcx
	cmpq	server+2872(%rip), %rcx
	jge	.LBB36_4
# %bb.3:                                #   in Loop: Header=BB36_1 Depth=1
	movq	server+2944(%rip), %rcx
	movq	32(%rcx), %rdi
	movq	(%rax), %rsi
	callq	dictDelete
	jmp	.LBB36_4
.LBB36_5:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB36_7
# %bb.6:
	movq	%r14, %rdi
	callq	sdsdup
	movq	%rax, %r14
.LBB36_7:
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	movq	%r14, %rsi
	callq	dictFind
	movq	%rax, %rbx
	xorl	%edi, %edi
	callq	time
	addq	$60, %rax
	movq	%rax, 8(%rbx)
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end36:
	.size	clusterBlacklistAddNode, .Lfunc_end36-clusterBlacklistAddNode
                                        # -- End function
	.globl	clusterBlacklistExists  # -- Begin function clusterBlacklistExists
	.p2align	4, 0x90
	.type	clusterBlacklistExists,@function
clusterBlacklistExists:                 # @clusterBlacklistExists
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %r14
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB37_1
	.p2align	4, 0x90
.LBB37_4:                               #   in Loop: Header=BB37_1 Depth=1
	movq	%rbx, %rdi
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB37_5
# %bb.2:                                #   in Loop: Header=BB37_1 Depth=1
	movq	8(%rax), %rcx
	cmpq	server+2872(%rip), %rcx
	jge	.LBB37_4
# %bb.3:                                #   in Loop: Header=BB37_1 Depth=1
	movq	server+2944(%rip), %rcx
	movq	32(%rcx), %rdi
	movq	(%rax), %rsi
	callq	dictDelete
	jmp	.LBB37_4
.LBB37_5:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	movq	%r14, %rsi
	callq	dictFind
	xorl	%ebx, %ebx
	testq	%rax, %rax
	setne	%bl
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end37:
	.size	clusterBlacklistExists, .Lfunc_end37-clusterBlacklistExists
                                        # -- End function
	.globl	markNodeAsFailingIfNeeded # -- Begin function markNodeAsFailingIfNeeded
	.p2align	4, 0x90
	.type	markNodeAsFailingIfNeeded,@function
markNodeAsFailingIfNeeded:              # @markNodeAsFailingIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	48(%rdi), %eax
	andl	$12, %eax
	cmpl	$4, %eax
	jne	.LBB38_5
# %bb.1:
	movq	%rdi, %r15
	movq	server+2944(%rip), %rax
	movl	20(%rax), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	callq	clusterNodeFailureReportsCount
	movq	myself(%rip), %rcx
	movl	48(%rcx), %ecx
	andl	$1, %ecx
	addl	%eax, %ecx
	cmpl	%ebx, %ecx
	jle	.LBB38_5
# %bb.2:
	leaq	8(%r15), %r14
	movl	$.L.str.38, %esi
	movl	$2, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	48(%r15), %eax
	andl	$-13, %eax
	orl	$8, %eax
	movl	%eax, 48(%r15)
	callq	mstime
	movq	%rax, 2152(%r15)
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	je	.LBB38_4
# %bb.3:
	movq	%r14, %rdi
	callq	clusterSendFail
.LBB38_4:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB38_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	markNodeAsFailingIfNeeded, .Lfunc_end38-markNodeAsFailingIfNeeded
                                        # -- End function
	.globl	clusterSendFail         # -- Begin function clusterSendFail
	.p2align	4, 0x90
	.type	clusterSendFail,@function
clusterSendFail:                        # @clusterSendFail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$4360, %rsp             # imm = 0x1108
	movq	%rdi, %rbx
	leaq	-4384(%rbp), %rdi
	movl	$3, %esi
	callq	clusterBuildMessageHdr
	leaq	-2128(%rbp), %rdi
	movl	$40, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movl	-4380(%rbp), %edi
	callq	lwip_htonl
	movl	%eax, %r14d
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB39_6
# %bb.1:                                # %.preheader
	movl	%r14d, %r14d
	leaq	-4384(%rbp), %r15
	jmp	.LBB39_2
	.p2align	4, 0x90
.LBB39_5:                               #   in Loop: Header=BB39_2 Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB39_6
.LBB39_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	2248(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB39_5
# %bb.3:                                #   in Loop: Header=BB39_2 Depth=1
	testb	$48, 48(%rax)
	jne	.LBB39_5
# %bb.4:                                #   in Loop: Header=BB39_2 Depth=1
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	clusterSendMessage
	jmp	.LBB39_5
.LBB39_6:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4360, %rsp             # imm = 0x1108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	clusterSendFail, .Lfunc_end39-clusterSendFail
                                        # -- End function
	.globl	clearNodeFailureIfNeeded # -- Begin function clearNodeFailureIfNeeded
	.p2align	4, 0x90
	.type	clearNodeFailureIfNeeded,@function
clearNodeFailureIfNeeded:               # @clearNodeFailureIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	callq	mstime
	movq	%rax, %r14
	movl	48(%rbx), %eax
	testb	$8, %al
	je	.LBB40_9
# %bb.1:
	testb	$2, %al
	jne	.LBB40_3
# %bb.2:
	cmpl	$0, 2112(%rbx)
	jne	.LBB40_4
.LBB40_3:
	leaq	8(%rbx), %rdx
	testb	$2, %al
	movl	$.L.str.42, %eax
	movl	$.L.str.41, %ecx
	cmoveq	%rax, %rcx
	movl	$.L.str.40, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	48(%rbx), %eax
	andl	$-9, %eax
	movl	%eax, 48(%rbx)
	movq	server+2944(%rip), %rcx
	orl	$6, 524416(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_4:
	testb	$1, %al
	je	.LBB40_8
# %bb.5:
	cmpl	$0, 2112(%rbx)
	jle	.LBB40_8
# %bb.6:
	subq	2152(%rbx), %r14
	movq	server+2928(%rip), %rax
	addq	%rax, %rax
	cmpq	%rax, %r14
	jle	.LBB40_8
# %bb.7:
	leaq	8(%rbx), %rdx
	movl	$.L.str.43, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	andb	$-9, 48(%rbx)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_8:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB40_9:
	movl	$.L.str.39, %edi
	movl	$.L.str.8, %esi
	movl	$1226, %edx             # imm = 0x4CA
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end40:
	.size	clearNodeFailureIfNeeded, .Lfunc_end40-clearNodeFailureIfNeeded
                                        # -- End function
	.globl	clusterHandshakeInProgress # -- Begin function clusterHandshakeInProgress
	.p2align	4, 0x90
	.type	clusterHandshakeInProgress,@function
clusterHandshakeInProgress:             # @clusterHandshakeInProgress
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %r13
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	dictNext
	xorl	%r12d, %r12d
	testq	%rax, %rax
	jne	.LBB41_1
	jmp	.LBB41_8
	.p2align	4, 0x90
.LBB41_6:                               #   in Loop: Header=BB41_1 Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB41_7
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %r12
	testb	$32, 48(%r12)
	je	.LBB41_6
# %bb.2:                                #   in Loop: Header=BB41_1 Depth=1
	leaq	2192(%r12), %rdi
	movq	%r13, %rsi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB41_6
# %bb.3:                                #   in Loop: Header=BB41_1 Depth=1
	cmpl	%r15d, 2240(%r12)
	jne	.LBB41_6
# %bb.4:                                #   in Loop: Header=BB41_1 Depth=1
	cmpl	%r14d, 2244(%r12)
	jne	.LBB41_6
# %bb.5:
	movl	$1, %r12d
	jmp	.LBB41_8
.LBB41_7:
	xorl	%r12d, %r12d
.LBB41_8:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	clusterHandshakeInProgress, .Lfunc_end41-clusterHandshakeInProgress
                                        # -- End function
	.globl	clusterStartHandshake   # -- Begin function clusterStartHandshake
	.p2align	4, 0x90
	.type	clusterStartHandshake,@function
clusterStartHandshake:                  # @clusterStartHandshake
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	leaq	-68(%rbp), %r12
	movl	$2, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	inet_pton
	movb	$2, %cl
	testl	%eax, %eax
	jne	.LBB42_3
# %bb.1:
	leaq	-64(%rbp), %rdx
	movl	$10, %edi
	movq	%rbx, %rsi
	callq	inet_pton
	movb	$10, %cl
	testl	%eax, %eax
	je	.LBB42_2
.LBB42_3:
	movb	%cl, -71(%rbp)
	leal	-1(%r15), %eax
	cmpl	$65534, %eax            # imm = 0xFFFE
	ja	.LBB42_2
# %bb.4:
	leal	-1(%r14), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jae	.LBB42_2
# %bb.5:
	leaq	-128(%rbp), %rdi
	movl	$46, %edx
	xorl	%esi, %esi
	callq	memset
	cmpb	$2, -71(%rbp)
	jne	.LBB42_7
# %bb.6:
	leaq	-128(%rbp), %rdx
	movl	$2, %edi
	movq	%r12, %rsi
	jmp	.LBB42_8
.LBB42_2:
	callq	__errno
	movl	$22, (%rax)
	xorl	%eax, %eax
	jmp	.LBB42_11
.LBB42_7:
	leaq	-64(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movl	$10, %edi
.LBB42_8:
	movl	$46, %ecx
	callq	inet_ntop
	leaq	-128(%rbp), %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	clusterHandshakeInProgress
	testl	%eax, %eax
	je	.LBB42_10
# %bb.9:
	callq	__errno
	movl	$11, (%rax)
	xorl	%eax, %eax
	jmp	.LBB42_11
.LBB42_10:
	movl	$2264, %edi             # imm = 0x8D8
	callq	zmalloc
	movq	%rax, %rbx
	leaq	8(%rax), %r12
	movl	$40, %esi
	movq	%r12, %rdi
	callq	getRandomHexChars
	callq	mstime
	movq	%rax, (%rbx)
	movq	$0, 56(%rbx)
	movl	$160, 48(%rbx)
	leaq	64(%rbx), %rdi
	movl	$2048, %edx             # imm = 0x800
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2112(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2120(%rbx)
	movups	%xmm0, 2136(%rbx)
	movq	$0, 2152(%rbx)
	movq	$0, 2248(%rbx)
	leaq	2192(%rbx), %r13
	movl	$46, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2240(%rbx)
	callq	listCreate
	movq	%rax, 2256(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2160(%rbx)
	movups	%xmm0, 2176(%rbx)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-128(%rbp), %rsi
	movl	$46, %edx
	movq	%r13, %rdi
	callq	memcpy
	movl	%r15d, 2240(%rbx)
	movl	%r14d, 2244(%rbx)
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r14
	movl	$40, %esi
	movq	%r12, %rdi
	callq	sdsnewlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB42_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	clusterStartHandshake, .Lfunc_end42-clusterStartHandshake
                                        # -- End function
	.globl	clusterProcessGossipSection # -- Begin function clusterProcessGossipSection
	.p2align	4, 0x90
	.type	clusterProcessGossipSection,@function
clusterProcessGossipSection:            # @clusterProcessGossipSection
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movzwl	14(%rdi), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movq	32(%rbx), %rdx
	movq	%rdx, %rcx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	testq	%rdx, %rdx
	jne	.LBB43_5
# %bb.1:
	movl	%eax, %r14d
	leaq	40(%r15), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r12, %r12
	je	.LBB43_2
# %bb.3:
	movq	8(%r12), %rax
	jmp	.LBB43_4
.LBB43_2:
	xorl	%eax, %eax
.LBB43_4:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB43_5:
	testw	%ax, %ax
	je	.LBB43_44
# %bb.6:
	addq	$2256, %r15             # imm = 0x8D0
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	$8, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB43_7
.LBB43_41:                              #   in Loop: Header=BB43_7 Depth=1
	movl	8(%r12), %edi
	callq	close
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB43_42:                              #   in Loop: Header=BB43_7 Depth=1
	movl	$46, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movzwl	94(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, 2240(%r13)
	movzwl	96(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, 2244(%r13)
	andb	$-65, 48(%r13)
	.p2align	4, 0x90
.LBB43_43:                              #   in Loop: Header=BB43_7 Depth=1
	addq	$104, %r15
	movl	-52(%rbp), %eax         # 4-byte Reload
	testw	%ax, %ax
	je	.LBB43_44
.LBB43_7:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movzwl	98(%r15), %edi
	callq	lwip_htons
	movl	%eax, %r12d
	cmpl	$0, server+1728(%rip)
	jne	.LBB43_9
# %bb.8:                                #   in Loop: Header=BB43_7 Depth=1
	callq	sdsempty
	movzwl	%r12w, %esi
	movq	%rax, %rdi
	callq	representClusterNodeFlags
	movq	%rax, %rbx
	leaq	48(%r15), %r13
	movzwl	94(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %r14d
	movzwl	96(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %r9d
	movq	%rbx, (%rsp)
	movl	$.L.str.44, %esi
	xorl	%edi, %edi
	movq	%r15, %rdx
	movq	%r13, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	sdsfree
.LBB43_9:                               #   in Loop: Header=BB43_7 Depth=1
	movl	$40, %esi
	movq	%r15, %rdi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r14, %r14
	je	.LBB43_10
# %bb.15:                               #   in Loop: Header=BB43_7 Depth=1
	movq	8(%r14), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB43_11
# %bb.16:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB43_25
# %bb.17:                               #   in Loop: Header=BB43_7 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$1, 48(%rax)
	je	.LBB43_25
# %bb.18:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	myself(%rip), %r13
	je	.LBB43_25
# %bb.19:                               #   in Loop: Header=BB43_7 Depth=1
	movq	%r13, %rdi
	testb	$12, %r12b
	je	.LBB43_23
# %bb.20:                               #   in Loop: Header=BB43_7 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	clusterNodeAddFailureReport
	testl	%eax, %eax
	je	.LBB43_22
# %bb.21:                               #   in Loop: Header=BB43_7 Depth=1
	leaq	8(%r13), %rcx
	movl	$.L.str.45, %esi
	movl	$1, %edi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	serverLog
.LBB43_22:                              #   in Loop: Header=BB43_7 Depth=1
	movq	%r13, %rdi
	callq	markNodeAsFailingIfNeeded
	jmp	.LBB43_25
	.p2align	4, 0x90
.LBB43_10:                              #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB43_11:                              #   in Loop: Header=BB43_7 Depth=1
	testb	$64, %r12b
	jne	.LBB43_43
# %bb.12:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB43_43
# %bb.13:                               #   in Loop: Header=BB43_7 Depth=1
	movq	%r15, %rdi
	callq	clusterBlacklistExists
	testl	%eax, %eax
	jne	.LBB43_43
# %bb.14:                               #   in Loop: Header=BB43_7 Depth=1
	leaq	48(%r15), %r14
	movzwl	94(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %ebx
	movzwl	96(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	clusterStartHandshake
	jmp	.LBB43_43
.LBB43_23:                              #   in Loop: Header=BB43_7 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	clusterNodeDelFailureReport
	testl	%eax, %eax
	je	.LBB43_25
# %bb.24:                               #   in Loop: Header=BB43_7 Depth=1
	leaq	8(%r13), %rcx
	movl	$.L.str.46, %esi
	movl	$1, %edi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	serverLog
	.p2align	4, 0x90
.LBB43_25:                              #   in Loop: Header=BB43_7 Depth=1
	movzwl	%r12w, %ebx
	testb	$12, %bl
	jne	.LBB43_31
# %bb.26:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	$0, 2136(%r13)
	jne	.LBB43_31
# %bb.27:                               #   in Loop: Header=BB43_7 Depth=1
	movq	%r13, %rdi
	callq	clusterNodeFailureReportsCount
	testl	%eax, %eax
	jne	.LBB43_31
# %bb.28:                               #   in Loop: Header=BB43_7 Depth=1
	movl	44(%r15), %edi
	callq	lwip_htonl
	movl	%eax, %eax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	server+2896(%rip), %rcx
	movl	$500, %edx              # imm = 0x1F4
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jg	.LBB43_31
# %bb.29:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	2144(%r13), %rax
	jle	.LBB43_31
# %bb.30:                               #   in Loop: Header=BB43_7 Depth=1
	movq	%rax, 2144(%r13)
	.p2align	4, 0x90
.LBB43_31:                              #   in Loop: Header=BB43_7 Depth=1
	testb	$76, %bl
	jne	.LBB43_43
# %bb.32:                               #   in Loop: Header=BB43_7 Depth=1
	movl	48(%r13), %eax
	andl	$12, %eax
	je	.LBB43_43
# %bb.33:                               #   in Loop: Header=BB43_7 Depth=1
	leaq	2192(%r13), %rbx
	leaq	48(%r15), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB43_36
# %bb.34:                               #   in Loop: Header=BB43_7 Depth=1
	movq	%rbx, %r12
	movl	2240(%r13), %ebx
	movzwl	94(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	cmpl	%eax, %ebx
	movq	%r12, %rbx
	jne	.LBB43_36
# %bb.35:                               #   in Loop: Header=BB43_7 Depth=1
	movl	2244(%r13), %ebx
	movzwl	96(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	cmpl	%eax, %ebx
	movq	%r12, %rbx
	je	.LBB43_43
.LBB43_36:                              #   in Loop: Header=BB43_7 Depth=1
	movq	2248(%r13), %r12
	testq	%r12, %r12
	je	.LBB43_42
# %bb.37:                               #   in Loop: Header=BB43_7 Depth=1
	movl	8(%r12), %esi
	cmpl	$-1, %esi
	je	.LBB43_39
# %bb.38:                               #   in Loop: Header=BB43_7 Depth=1
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB43_39:                              #   in Loop: Header=BB43_7 Depth=1
	movq	16(%r12), %rdi
	callq	sdsfree
	movq	24(%r12), %rdi
	callq	sdsfree
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB43_41
# %bb.40:                               #   in Loop: Header=BB43_7 Depth=1
	movq	$0, 2248(%rax)
	jmp	.LBB43_41
.LBB43_44:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	clusterProcessGossipSection, .Lfunc_end43-clusterProcessGossipSection
                                        # -- End function
	.globl	representClusterNodeFlags # -- Begin function representClusterNodeFlags
	.p2align	4, 0x90
	.type	representClusterNodeFlags,@function
representClusterNodeFlags:              # @representClusterNodeFlags
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movzbl	-1(%rdi), %r15d
	movl	%r15d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB44_1
# %bb.2:
	movl	%r15d, %eax
	andl	$7, %eax
	jmpq	*.LJTI44_0(,%rax,8)
.LBB44_3:
	shrq	$3, %r15
	jmp	.LBB44_8
.LBB44_1:
	xorl	%r15d, %r15d
	jmp	.LBB44_8
.LBB44_4:
	movzbl	-3(%rbx), %r15d
	jmp	.LBB44_8
.LBB44_5:
	movzwl	-5(%rbx), %r15d
	jmp	.LBB44_8
.LBB44_6:
	movl	-9(%rbx), %r15d
	jmp	.LBB44_8
.LBB44_7:
	movq	-17(%rbx), %r15
.LBB44_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB44_9
# %bb.10:
	testb	$1, %r14b
	jne	.LBB44_11
.LBB44_12:
	testb	$2, %r14b
	jne	.LBB44_13
.LBB44_14:
	testb	$4, %r14b
	jne	.LBB44_15
.LBB44_16:
	testb	$8, %r14b
	jne	.LBB44_17
.LBB44_18:
	testb	$32, %r14b
	jne	.LBB44_19
.LBB44_20:
	testb	$64, %r14b
	jne	.LBB44_21
.LBB44_22:
	testl	$512, %r14d             # imm = 0x200
	je	.LBB44_24
.LBB44_23:
	movl	$.L.str.283, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
.LBB44_24:
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB44_25
# %bb.34:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI44_1(,%rcx,8)
.LBB44_26:
	shrq	$3, %rax
	jmp	.LBB44_31
.LBB44_9:
	movl	$.L.str.276, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	testb	$1, %r14b
	je	.LBB44_12
.LBB44_11:
	movl	$.L.str.277, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	testb	$2, %r14b
	je	.LBB44_14
.LBB44_13:
	movl	$.L.str.278, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	testb	$4, %r14b
	je	.LBB44_16
.LBB44_15:
	movl	$.L.str.279, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	testb	$8, %r14b
	je	.LBB44_18
.LBB44_17:
	movl	$.L.str.280, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	testb	$32, %r14b
	je	.LBB44_20
.LBB44_19:
	movl	$.L.str.281, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	testb	$64, %r14b
	je	.LBB44_22
.LBB44_21:
	movl	$.L.str.282, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	testl	$512, %r14d             # imm = 0x200
	jne	.LBB44_23
	jmp	.LBB44_24
.LBB44_25:
	xorl	%eax, %eax
	jmp	.LBB44_31
.LBB44_27:
	movzbl	-3(%rbx), %eax
	jmp	.LBB44_31
.LBB44_28:
	movzwl	-5(%rbx), %eax
	jmp	.LBB44_31
.LBB44_29:
	movl	-9(%rbx), %eax
	jmp	.LBB44_31
.LBB44_30:
	movq	-17(%rbx), %rax
.LBB44_31:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jne	.LBB44_33
# %bb.32:
	movl	$.L.str.106, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
.LBB44_33:
	movq	%rbx, %rdi
	movq	$-1, %rsi
	callq	sdsIncrLen
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	representClusterNodeFlags, .Lfunc_end44-representClusterNodeFlags
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI44_0:
	.quad	.LBB44_3
	.quad	.LBB44_4
	.quad	.LBB44_5
	.quad	.LBB44_6
	.quad	.LBB44_7
.LJTI44_1:
	.quad	.LBB44_26
	.quad	.LBB44_27
	.quad	.LBB44_28
	.quad	.LBB44_29
	.quad	.LBB44_30
                                        # -- End function
	.text
	.globl	nodeIp2String           # -- Begin function nodeIp2String
	.p2align	4, 0x90
	.type	nodeIp2String,@function
nodeIp2String:                          # @nodeIp2String
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpb	$0, (%rdx)
	je	.LBB45_2
# %bb.1:
	movq	%rdx, %rax
	movl	$46, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movb	$0, 45(%rbx)
	jmp	.LBB45_3
.LBB45_2:
	movl	8(%rsi), %edi
	movl	$46, %edx
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	anetPeerToString
.LBB45_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end45:
	.size	nodeIp2String, .Lfunc_end45-nodeIp2String
                                        # -- End function
	.globl	nodeUpdateAddressIfNeeded # -- Begin function nodeUpdateAddressIfNeeded
	.p2align	4, 0x90
	.type	nodeUpdateAddressIfNeeded,@function
nodeUpdateAddressIfNeeded:              # @nodeUpdateAddressIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	xorps	%xmm0, %xmm0
	movups	%xmm0, -66(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movzwl	10(%rdx), %edi
	callq	lwip_htons
	movl	%eax, %r15d
	movzwl	2248(%rbx), %edi
	callq	lwip_htons
	xorl	%ecx, %ecx
	cmpq	%r12, 2248(%r13)
	je	.LBB46_16
# %bb.1:
	movl	%eax, %r14d
	movzwl	%r15w, %r15d
	cmpb	$0, 2168(%rbx)
	je	.LBB46_3
# %bb.2:
	addq	$2168, %rbx             # imm = 0x878
	leaq	-96(%rbp), %rdi
	movl	$46, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movb	$0, -51(%rbp)
	jmp	.LBB46_4
.LBB46_3:
	movl	8(%r12), %edi
	leaq	-96(%rbp), %rsi
	movl	$46, %edx
	xorl	%ecx, %ecx
	callq	anetPeerToString
.LBB46_4:
	movzwl	%r14w, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, 2240(%r13)
	jne	.LBB46_7
# %bb.5:
	cmpl	%ebx, 2244(%r13)
	jne	.LBB46_7
# %bb.6:
	leaq	2192(%r13), %rsi
	leaq	-96(%rbp), %rdi
	callq	strcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB46_16
.LBB46_7:
	leaq	2192(%r13), %r14
	leaq	-96(%rbp), %rsi
	movl	$46, %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	%r15d, 2240(%r13)
	movl	%ebx, 2244(%r13)
	movq	2248(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB46_13
# %bb.8:
	movl	8(%rbx), %esi
	cmpl	$-1, %esi
	je	.LBB46_10
# %bb.9:
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB46_10:
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	24(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB46_12
# %bb.11:
	movq	$0, 2248(%rax)
.LBB46_12:
	movl	8(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	2240(%r13), %r15d
.LBB46_13:
	andb	$-65, 48(%r13)
	leaq	8(%r13), %rdx
	movl	$.L.str.47, %esi
	movl	$3, %edi
	movq	%r14, %rcx
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %rax
	movl	$1, %ecx
	testb	$2, 48(%rax)
	je	.LBB46_16
# %bb.14:
	cmpq	%r13, 2128(%rax)
	jne	.LBB46_16
# %bb.15:
	movl	2240(%r13), %esi
	movq	%r14, %rdi
	callq	replicationSetMaster
	movl	$1, %ecx
.LBB46_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end46:
	.size	nodeUpdateAddressIfNeeded, .Lfunc_end46-nodeUpdateAddressIfNeeded
                                        # -- End function
	.globl	clusterUpdateSlotsConfigWith # -- Begin function clusterUpdateSlotsConfigWith
	.p2align	4, 0x90
	.type	clusterUpdateSlotsConfigWith,@function
clusterUpdateSlotsConfigWith:           # @clusterUpdateSlotsConfigWith
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32808, %rsp            # imm = 0x8028
	movq	%rdx, %r12
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdi, %r14
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB47_2
# %bb.1:
	movq	2128(%rax), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB47_2:
	cmpq	%r14, %rax
	je	.LBB47_29
# %bb.3:                                # %.preheader
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	jmp	.LBB47_4
.LBB47_15:                              #   in Loop: Header=BB47_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB47_18:                              #   in Loop: Header=BB47_4 Depth=1
	movq	%r14, %rdi
	movq	%rsi, %r15
	movl	%ebx, %esi
	callq	clusterNodeSetSlotBit
	movq	%r15, %rsi
	movq	server+2944(%rip), %rax
	movq	%r14, 262184(%rax,%rbx,8)
	movq	server+2944(%rip), %rax
.LBB47_19:                              #   in Loop: Header=BB47_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	orb	$14, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB47_20:                              #   in Loop: Header=BB47_4 Depth=1
	addq	$1, %rbx
	cmpq	$16384, %rbx            # imm = 0x4000
	jae	.LBB47_21
.LBB47_4:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r13d
	shrl	$3, %r13d
	andl	$8191, %r13d            # imm = 0x1FFF
	movl	%ebx, %ecx
	andb	$7, %cl
	movl	$1, %r15d
	shll	%cl, %r15d
	movzbl	(%r12,%r13), %eax
	movzbl	%cl, %ecx
	btl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB47_20
# %bb.5:                                #   in Loop: Header=BB47_4 Depth=1
	movq	server+2944(%rip), %rcx
	movq	262184(%rcx,%rbx,8), %rax
	cmpq	%r14, %rax
	je	.LBB47_20
# %bb.6:                                #   in Loop: Header=BB47_4 Depth=1
	cmpq	$0, 131112(%rcx,%rbx,8)
	jne	.LBB47_20
# %bb.7:                                #   in Loop: Header=BB47_4 Depth=1
	testq	%rax, %rax
	je	.LBB47_9
# %bb.8:                                #   in Loop: Header=BB47_4 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, 56(%rax)
	jae	.LBB47_20
.LBB47_9:                               #   in Loop: Header=BB47_4 Depth=1
	cmpq	myself(%rip), %rax
	jne	.LBB47_14
# %bb.10:                               #   in Loop: Header=BB47_4 Depth=1
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movl	%ebx, %edi
	callq	countKeysInSlot
	testl	%eax, %eax
	je	.LBB47_11
# %bb.12:                               #   in Loop: Header=BB47_4 Depth=1
	cmpq	%r14, myself(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	je	.LBB47_14
# %bb.13:                               #   in Loop: Header=BB47_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cltq
	movw	%bx, -32848(%rbp,%rax,2)
	addl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB47_14
.LBB47_11:                              #   in Loop: Header=BB47_4 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB47_14:                              #   in Loop: Header=BB47_4 Depth=1
	movq	server+2944(%rip), %rax
	movq	262184(%rax,%rbx,8), %rax
	cmpq	-56(%rbp), %rax         # 8-byte Folded Reload
	cmoveq	%r14, %rsi
	testq	%rax, %rax
	je	.LBB47_15
# %bb.16:                               #   in Loop: Header=BB47_4 Depth=1
	movzbl	64(%rax,%r13), %ecx
	movl	%r15d, %edx
	notb	%dl
	andb	%cl, %dl
	movl	$42, __A_VARIABLE(%rip)
	movb	%dl, 64(%rax,%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %r15d
	je	.LBB47_30
# %bb.17:                               #   in Loop: Header=BB47_4 Depth=1
	addl	$-1, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%rbx,8)
	movq	server+2944(%rip), %rax
	cmpq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB47_19
	jmp	.LBB47_18
.LBB47_21:
	testb	$4, server+2984(%rip)
	jne	.LBB47_28
# %bb.22:
	testq	%rsi, %rsi
	je	.LBB47_25
# %bb.23:
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 2112(%rax)
	je	.LBB47_24
.LBB47_25:
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	jle	.LBB47_28
# %bb.26:
	movl	-48(%rbp), %r14d        # 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB47_27:                              # =>This Inner Loop Header: Depth=1
	movzwl	-32848(%rbp,%rbx,2), %edi
	callq	delKeysInSlot
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.LBB47_27
	jmp	.LBB47_28
.LBB47_29:
	movl	$.L.str.48, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB47_28:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32808, %rsp            # imm = 0x8028
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB47_24:
	leaq	8(%r14), %rdx
	movl	$.L.str.49, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%r14, %rdi
	callq	clusterSetMaster
	movq	server+2944(%rip), %rax
	orl	$14, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB47_28
.LBB47_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end47:
	.size	clusterUpdateSlotsConfigWith, .Lfunc_end47-clusterUpdateSlotsConfigWith
                                        # -- End function
	.globl	bitmapTestBit           # -- Begin function bitmapTestBit
	.p2align	4, 0x90
	.type	bitmapTestBit,@function
bitmapTestBit:                          # @bitmapTestBit
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	leal	7(%rsi), %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	sarl	$3, %eax
	cltq
	movzbl	(%rdi,%rax), %ecx
	andb	$7, %sil
	movzbl	%sil, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end48:
	.size	bitmapTestBit, .Lfunc_end48-bitmapTestBit
                                        # -- End function
	.globl	clusterSetMaster        # -- Begin function clusterSetMaster
	.p2align	4, 0x90
	.type	clusterSetMaster,@function
clusterSetMaster:                       # @clusterSetMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	myself(%rip), %rax
	cmpq	%rdi, %rax
	je	.LBB49_1
# %bb.3:
	cmpl	$0, 2112(%rax)
	jne	.LBB49_4
# %bb.5:
	movq	%rdi, %r14
	movl	48(%rax), %ecx
	testb	$1, %cl
	jne	.LBB49_6
# %bb.7:
	movq	2128(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB49_16
# %bb.8:
	movslq	2116(%rbx), %rdi
	movl	%edi, %r8d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB49_9:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rcx
	jge	.LBB49_15
# %bb.10:                               #   in Loop: Header=BB49_9 Depth=1
	movq	2120(%rbx), %rsi
	addq	$-8, %rdx
	cmpq	%rax, (%rsi,%rcx,8)
	leaq	1(%rcx), %rcx
	jne	.LBB49_9
# %bb.11:
	cmpl	%ecx, %edi
	jle	.LBB49_13
# %bb.12:
	subl	%ecx, %r8d
	subq	%rdx, %rsi
	leaq	-8(%rsi), %rdi
	movslq	%r8d, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	2116(%rbx), %r8d
.LBB49_13:
	addl	$-1, %r8d
	movl	%r8d, 2116(%rbx)
	jne	.LBB49_15
# %bb.14:
	andb	$-2, 49(%rbx)
	jmp	.LBB49_15
.LBB49_6:
	andl	$-260, %ecx             # imm = 0xFEFC
	orl	$2, %ecx
	movl	%ecx, 48(%rax)
	movq	server+2944(%rip), %rdi
	addq	$40, %rdi
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$131112, %edi           # imm = 0x20028
	addq	server+2944(%rip), %rdi
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
.LBB49_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB49_16:
	movq	myself(%rip), %rbx
	movq	%r14, 2128(%rbx)
	movslq	2116(%r14), %rax
	movq	2120(%r14), %rdi
	testq	%rax, %rax
	jle	.LBB49_20
# %bb.17:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB49_19:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, (%rdi,%rcx,8)
	je	.LBB49_21
# %bb.18:                               #   in Loop: Header=BB49_19 Depth=1
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB49_19
.LBB49_20:
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 2120(%r14)
	movslq	2116(%r14), %rcx
	movq	%rbx, (%rax,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 2116(%r14)
	orb	$1, 49(%r14)
.LBB49_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	2240(%r14), %esi
	addq	$2192, %r14             # imm = 0x890
	movq	%r14, %rdi
	callq	replicationSetMaster
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB49_24
# %bb.22:
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB49_24
# %bb.23:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
.LBB49_24:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB49_1:
	movl	$.L.str.104, %edi
	movl	$.L.str.8, %esi
	movl	$3934, %edx             # imm = 0xF5E
	jmp	.LBB49_2
.LBB49_4:
	movl	$.L.str.105, %edi
	movl	$.L.str.8, %esi
	movl	$3935, %edx             # imm = 0xF5F
.LBB49_2:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end49:
	.size	clusterSetMaster, .Lfunc_end49-clusterSetMaster
                                        # -- End function
	.globl	clusterProcessPacket    # -- Begin function clusterProcessPacket
	.p2align	4, 0x90
	.type	clusterProcessPacket,@function
clusterProcessPacket:                   # @clusterProcessPacket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	24(%rdi), %rbx
	movl	4(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, %r14d
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movzwl	12(%rbx), %edi
	callq	lwip_htons
	movl	%eax, %ebx
	movzwl	%ax, %r12d
	cmpw	$9, %r12w
	ja	.LBB50_2
# %bb.1:
	movq	server+2944(%rip), %rax
	movl	%r12d, %ecx
	addq	$1, 524504(%rax,%rcx,8)
.LBB50_2:
	movl	%r14d, %r15d
	movl	$.L.str.50, %esi
	xorl	%edi, %edi
	movl	%r12d, %edx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %r13d
	cmpl	$16, %r14d
	jb	.LBB50_158
# %bb.3:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB50_4
# %bb.5:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI50_0(,%rdx,8)
.LBB50_6:
	shrq	$3, %rax
	jmp	.LBB50_11
.LBB50_4:
	xorl	%eax, %eax
	jmp	.LBB50_11
.LBB50_7:
	movzbl	-3(%rcx), %eax
	jmp	.LBB50_11
.LBB50_8:
	movzwl	-5(%rcx), %eax
	jmp	.LBB50_11
.LBB50_9:
	movl	-9(%rcx), %eax
	jmp	.LBB50_11
.LBB50_10:
	movq	-17(%rcx), %rax
.LBB50_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jb	.LBB50_158
# %bb.12:
	movw	%bx, -42(%rbp)          # 2-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movzwl	8(%rbx), %edi
	callq	lwip_htons
	cmpw	$1, %ax
	jne	.LBB50_158
# %bb.13:
	movzwl	2250(%rbx), %edi
	callq	lwip_htons
	movl	%eax, %ebx
	movl	%r12d, %r15d
	cmpw	$9, %r12w
	ja	.LBB50_22
# %bb.14:
	jmpq	*.LJTI50_1(,%r15,8)
.LBB50_15:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movzwl	14(%rax), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	imull	$104, %eax, %eax
	addl	$2256, %eax             # imm = 0x8D0
	jmp	.LBB50_21
.LBB50_18:
	cmpl	$2256, %r14d            # imm = 0x8D0
	je	.LBB50_22
	jmp	.LBB50_158
.LBB50_16:
	cmpl	$2296, %r14d            # imm = 0x8F8
	je	.LBB50_22
	jmp	.LBB50_158
.LBB50_17:
	movl	%ebx, %r13d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	2256(%rbx), %edi
	callq	lwip_htonl
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	2260(%rbx), %edi
	movl	%r13d, %ebx
	callq	lwip_htonl
                                        # kill: def $eax killed $eax def $rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	addl	$2264, %eax             # imm = 0x8D8
	movl	$1, %r13d
	jmp	.LBB50_21
.LBB50_19:
	cmpl	$4352, %r14d            # imm = 0x1100
	je	.LBB50_22
	jmp	.LBB50_158
.LBB50_20:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	2264(%rax), %edi
	callq	lwip_htonl
	addl	$2269, %eax             # imm = 0x8DD
.LBB50_21:
	cmpl	%eax, %r14d
	jne	.LBB50_158
.LBB50_22:
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	40(%rax), %rdi
	movl	$40, %esi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r14, %r14
	je	.LBB50_23
# %bb.24:
	movq	8(%r14), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	movq	-72(%rbp), %rbx         # 8-byte Reload
	je	.LBB50_25
# %bb.26:
	movb	$1, %al
	testb	$32, 48(%r13)
	jne	.LBB50_27
# %bb.28:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	callq	intrev64
	movq	%rax, %r14
	movq	24(%rbx), %rdi
	callq	intrev64
	movq	server+2944(%rip), %rcx
	cmpq	8(%rcx), %r14
	jbe	.LBB50_30
# %bb.29:
	movq	%r14, 8(%rcx)
.LBB50_30:
	cmpq	56(%r13), %rax
	jbe	.LBB50_32
# %bb.31:
	movq	%rax, 56(%r13)
	orb	$12, 524416(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_32:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rdi
	callq	intrev64
	movq	%rax, 2184(%r13)
	callq	mstime
	movq	%rax, 2168(%r13)
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	je	.LBB50_38
# %bb.33:
	movq	myself(%rip), %rcx
	testb	$2, 48(%rcx)
	je	.LBB50_38
# %bb.34:
	cmpq	%r13, 2128(%rcx)
	jne	.LBB50_38
# %bb.35:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testb	$1, 2253(%rcx)
	je	.LBB50_38
# %bb.36:
	cmpq	$0, 524392(%rax)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jne	.LBB50_39
# %bb.37:
	movq	2184(%r13), %rdx
	movq	%rdx, 524392(%rax)
	movl	$.L.str.51, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB50_38:
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB50_39:
	movb	$1, %al
	jmp	.LBB50_40
.LBB50_23:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB50_40
.LBB50_25:
	xorl	%eax, %eax
	xorl	%r13d, %r13d
.LBB50_27:
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
.LBB50_40:
	cmpw	$9, -42(%rbp)           # 2-byte Folded Reload
	ja	.LBB50_156
# %bb.41:
	jmpq	*.LJTI50_2(,%r15,8)
.LBB50_43:
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	32(%rbx), %r12
	movq	32(%rbx), %rdx
	movl	$.L.str.52, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	cmpw	$2, -42(%rbp)           # 2-byte Folded Reload
	jne	.LBB50_44
# %bb.46:
	cmpq	$0, server+2968(%rip)
	jne	.LBB50_50
	jmp	.LBB50_47
.LBB50_156:
	movl	$.L.str.65, %esi
	movl	$3, %edi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB50_157
.LBB50_42:
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	32(%rbx), %r12
	jmp	.LBB50_56
.LBB50_124:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	$2256, %rbx             # imm = 0x8D0
	testb	%al, %al
	je	.LBB50_130
# %bb.125:
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	sdsnewlen
	movq	%rax, %r15
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%r15, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	sdsfree
	testq	%r14, %r14
	je	.LBB50_126
# %bb.127:
	movq	8(%r14), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB50_157
# %bb.128:
	testb	$24, 48(%r14)
	jne	.LBB50_157
# %bb.129:
	movl	$.L.str.62, %esi
	movl	$2, %edi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	serverLog
	orb	$8, 48(%r14)
	callq	mstime
	movq	%rax, 2152(%r14)
	andb	$-5, 48(%r14)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_157
.LBB50_131:
	movq	server+2904(%rip), %rax
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	jne	.LBB50_133
# %bb.132:
	movq	server+2912(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB50_157
.LBB50_133:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	2256(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, %r15d
	movl	2260(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, %r14d
	leaq	2264(%rbx), %rdi
	movl	%r15d, %r12d
	movq	%r12, %rsi
	callq	createStringObject
	movq	%rax, %r15
	leaq	(%rbx,%r12), %rdi
	addq	$2264, %rdi             # imm = 0x8D8
	movl	%r14d, %esi
	callq	createStringObject
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	pubsubPublishMessage
	movq	%r15, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
	jmp	.LBB50_157
.LBB50_134:
	testb	%al, %al
	je	.LBB50_157
# %bb.135:
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	clusterSendFailoverAuthIfNeeded
	jmp	.LBB50_157
.LBB50_136:
	testb	%al, %al
	je	.LBB50_157
# %bb.137:
	testb	$1, 48(%r13)
	movq	%r13, %rax
	movl	$1, %r13d
	je	.LBB50_158
# %bb.138:
	cmpl	$0, 2112(%rax)
	jle	.LBB50_158
# %bb.139:
	movq	server+2944(%rip), %rax
	cmpq	524360(%rax), %r14
	jb	.LBB50_158
# %bb.140:
	addl	$1, 524344(%rax)
	orb	$1, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_158
.LBB50_147:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	2256(%rbx), %rdi
	movq	%rax, %r15
	callq	intrev64
	testb	%r15b, %r15b
	je	.LBB50_157
# %bb.148:
	movq	%rax, %r14
	leaq	2264(%rbx), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	je	.LBB50_126
# %bb.149:
	movq	8(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movl	$1, %r13d
	je	.LBB50_158
# %bb.150:
	cmpq	%r14, 56(%r15)
	jae	.LBB50_158
# %bb.151:
	testb	$2, 48(%r15)
	je	.LBB50_153
# %bb.152:
	movq	%r15, %rdi
	callq	clusterSetNodeAsMaster
.LBB50_153:
	movq	%r14, 56(%r15)
	movq	server+2944(%rip), %rax
	orl	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	$2304, %rdx             # imm = 0x900
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	clusterUpdateSlotsConfigWith
	jmp	.LBB50_158
.LBB50_141:
	testb	%al, %al
	je	.LBB50_157
# %bb.142:
	movq	2128(%r13), %rax
	cmpq	myself(%rip), %rax
	movq	%r13, %rbx
	movl	$1, %r13d
	jne	.LBB50_158
# %bb.143:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB50_146
# %bb.144:
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB50_146
# %bb.145:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
.LBB50_146:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
	callq	mstime
	addq	$5000, %rax             # imm = 0x1388
	movq	server+2944(%rip), %rcx
	movq	%rax, 524376(%rcx)
	movq	%rbx, 524384(%rcx)
	callq	mstime
	leaq	10000(%rax), %rdi
	callq	pauseClients
	addq	$8, %rbx
	movl	$.L.str.64, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB50_158
.LBB50_154:
	testb	%al, %al
	je	.LBB50_157
# %bb.155:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	2256(%rbx), %r14
	movl	2264(%rbx), %edi
	callq	lwip_htonl
	movzbl	2268(%rbx), %edx
	addq	$2269, %rbx             # imm = 0x8DD
	addq	$8, %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rcx
	movl	%eax, %r8d
	callq	moduleCallClusterReceivers
	jmp	.LBB50_157
.LBB50_44:
	movq	myself(%rip), %rax
	cmpb	$0, 2192(%rax)
	jne	.LBB50_55
# %bb.45:
	cmpq	$0, server+2968(%rip)
	jne	.LBB50_55
.LBB50_47:
	movl	8(%rbx), %edi
	leaq	-160(%rbp), %rsi
	movl	$46, %edx
	xorl	%ecx, %ecx
	callq	anetSockName
	cmpl	$-1, %eax
	je	.LBB50_50
# %bb.48:
	movl	$2192, %r14d            # imm = 0x890
	movq	myself(%rip), %rsi
	addq	%r14, %rsi
	leaq	-160(%rbp), %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB50_50
# %bb.49:
	movq	myself(%rip), %rdi
	addq	%r14, %rdi
	leaq	-160(%rbp), %rsi
	movl	$46, %edx
	callq	memcpy
	addq	myself(%rip), %r14
	movl	$.L.str.53, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_50:
	cmpw	$2, -42(%rbp)           # 2-byte Folded Reload
	setne	%al
	orb	-88(%rbp), %al          # 1-byte Folded Reload
	jne	.LBB50_55
# %bb.51:
	movq	%r12, -112(%rbp)        # 8-byte Spill
	movl	$2264, %edi             # imm = 0x8D8
	callq	zmalloc
	movq	%rax, %r14
	leaq	8(%rax), %rdi
	movl	$40, %esi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	getRandomHexChars
	callq	mstime
	movq	%rax, (%r14)
	movq	$0, 56(%r14)
	movl	$32, 48(%r14)
	leaq	64(%r14), %rdi
	movl	$2048, %edx             # imm = 0x800
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2112(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2120(%r14)
	movups	%xmm0, 2136(%r14)
	movq	$0, 2152(%r14)
	movq	$0, 2248(%r14)
	leaq	2192(%r14), %r15
	movl	$46, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2240(%r14)
	callq	listCreate
	movq	%rax, 2256(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2160(%r14)
	movups	%xmm0, 2176(%r14)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
	cmpb	$0, 2168(%r12)
	je	.LBB50_53
# %bb.52:
	leaq	2168(%r12), %rsi
	movl	$46, %edx
	movq	%r15, %rdi
	callq	memcpy
	movb	$0, 2237(%r14)
	jmp	.LBB50_54
.LBB50_130:
	movl	$.L.str.63, %esi
	movl	$2, %edi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB50_157
.LBB50_126:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_157
.LBB50_53:
	movl	8(%rbx), %edi
	movl	$46, %edx
	movq	%r15, %rsi
	xorl	%ecx, %ecx
	callq	anetPeerToString
.LBB50_54:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%r12), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, 2240(%r14)
	movzwl	2248(%r12), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, 2244(%r14)
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r15
	movl	$40, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	sdsnewlen
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	clusterProcessGossipSection
	movq	-112(%rbp), %r12        # 8-byte Reload
.LBB50_55:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	clusterSendPing
.LBB50_56:
	cmpw	$0, -42(%rbp)           # 2-byte Folded Reload
	movl	$.L.str.55, %eax
	movl	$.L.str.56, %edx
	cmoveq	%rax, %rdx
	movq	(%r12), %rcx
	movl	$.L.str.54, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB50_68
# %bb.57:
	testb	$32, 48(%rdi)
	jne	.LBB50_58
# %bb.62:
	addq	$8, %rdi
	movl	$40, %edx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB50_68
# %bb.63:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rbx
	addq	$8, %rbx
	callq	mstime
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	32(%rcx), %rcx
	subl	(%rcx), %eax
	movl	48(%rcx), %r8d
	movl	$.L.str.59, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	serverLog
	movq	32(%rbx), %rax
	orl	$64, 48(%rax)
	movb	$0, 2192(%rax)
	movq	32(%rbx), %rax
	movq	$0, 2240(%rax)
	movl	8(%rbx), %esi
	cmpl	$-1, %esi
	je	.LBB50_65
# %bb.64:
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB50_65:
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	24(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB50_67
# %bb.66:
	movq	$0, 2248(%rax)
.LBB50_67:
	movl	8(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB50_158
.LBB50_68:
	cmpb	$0, -88(%rbp)           # 1-byte Folded Reload
	je	.LBB50_69
# %bb.70:
	movl	-76(%rbp), %edx         # 4-byte Reload
	andl	$512, %edx              # imm = 0x200
	movl	48(%r13), %eax
	movl	%eax, %ecx
	andl	$-513, %ecx             # imm = 0xFDFF
	orl	%edx, %ecx
	movl	%ecx, 48(%r13)
	movb	$1, %bl
	cmpw	$0, -42(%rbp)           # 2-byte Folded Reload
	jne	.LBB50_75
# %bb.71:
	andl	$32, %eax
	jne	.LBB50_75
# %bb.72:
	movq	%r13, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	nodeUpdateAddressIfNeeded
	testl	%eax, %eax
	je	.LBB50_82
# %bb.73:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_82
.LBB50_58:
	cmpb	$0, -88(%rbp)           # 1-byte Folded Reload
	je	.LBB50_74
# %bb.59:
	leaq	8(%r13), %rdx
	movq	%r13, %r15
	xorl	%r13d, %r13d
	movl	$.L.str.57, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	nodeUpdateAddressIfNeeded
	testl	%eax, %eax
	je	.LBB50_61
# %bb.60:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_61:
	movq	(%r12), %rdi
	callq	clusterDelNode
	jmp	.LBB50_158
.LBB50_69:
	xorl	%ebx, %ebx
	jmp	.LBB50_75
.LBB50_74:
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	clusterRenameNode
	movq	(%r12), %rdx
	addq	$8, %rdx
	xorl	%ebx, %ebx
	movl	$.L.str.58, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	(%r12), %rax
	movl	48(%rax), %ecx
	andl	$-33, %ecx
	movl	-76(%rbp), %edx         # 4-byte Reload
	andl	$3, %edx
	orl	%ecx, %edx
	movl	%edx, 48(%rax)
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_75:
	cmpw	$1, -42(%rbp)           # 2-byte Folded Reload
	jne	.LBB50_81
# %bb.76:
	cmpq	$0, (%r12)
	je	.LBB50_81
# %bb.77:
	callq	mstime
	movq	(%r12), %rdi
	movq	%rax, 2144(%rdi)
	movq	$0, 2136(%rdi)
	movl	48(%rdi), %eax
	testb	$4, %al
	jne	.LBB50_78
# %bb.79:
	testb	$8, %al
	je	.LBB50_81
# %bb.80:
	callq	clearNodeFailureIfNeeded
	jmp	.LBB50_81
.LBB50_78:
	andl	$-5, %eax
	movl	%eax, 48(%rdi)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_81:
	testb	%bl, %bl
	je	.LBB50_157
.LBB50_82:
	addq	$2128, %r14             # imm = 0x850
	movl	$.L.str.60, %esi
	movl	$40, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB50_83
# %bb.84:
	movl	$40, %esi
	movq	%r14, %rdi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r14, %r14
	je	.LBB50_85
# %bb.86:
	movq	8(%r14), %r14
	jmp	.LBB50_87
.LBB50_83:
	movq	%r13, %rdi
	callq	clusterSetNodeAsMaster
	leaq	48(%r13), %r15
	jmp	.LBB50_106
.LBB50_85:
	xorl	%r14d, %r14d
.LBB50_87:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, 48(%r13)
	je	.LBB50_89
# %bb.88:
	movq	%r13, %rdi
	callq	clusterDelNodeSlots
	movl	$-260, %eax             # imm = 0xFEFC
	andl	48(%r13), %eax
	orl	$2, %eax
	movl	%eax, 48(%r13)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_89:
	leaq	48(%r13), %r15
	testq	%r14, %r14
	je	.LBB50_106
# %bb.90:
	movq	2128(%r13), %rbx
	cmpq	%r14, %rbx
	je	.LBB50_106
# %bb.91:
	testq	%rbx, %rbx
	je	.LBB50_100
# %bb.92:
	movslq	2116(%rbx), %rdx
	movl	%edx, %eax
	xorl	%ecx, %ecx
	xorl	%edi, %edi
.LBB50_93:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, %rdi
	jge	.LBB50_99
# %bb.94:                               #   in Loop: Header=BB50_93 Depth=1
	movq	2120(%rbx), %rsi
	addq	$-8, %rcx
	cmpq	%r13, (%rsi,%rdi,8)
	leaq	1(%rdi), %rdi
	jne	.LBB50_93
# %bb.95:
	cmpl	%edi, %edx
	jle	.LBB50_97
# %bb.96:
	subl	%edi, %eax
	subq	%rcx, %rsi
	leaq	-8(%rsi), %rdi
	movslq	%eax, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	2116(%rbx), %eax
.LBB50_97:
	addl	$-1, %eax
	movl	%eax, 2116(%rbx)
	jne	.LBB50_99
# %bb.98:
	andb	$-2, 49(%rbx)
.LBB50_99:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_100:
	movslq	2116(%r14), %rax
	movq	2120(%r14), %rdi
	testq	%rax, %rax
	jle	.LBB50_104
# %bb.101:
	xorl	%ecx, %ecx
.LBB50_103:                             # =>This Inner Loop Header: Depth=1
	cmpq	%r13, (%rdi,%rcx,8)
	je	.LBB50_105
# %bb.102:                              #   in Loop: Header=BB50_103 Depth=1
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB50_103
.LBB50_104:
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 2120(%r14)
	movslq	2116(%r14), %rcx
	movq	%r13, (%rax,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 2116(%r14)
	orb	$1, 49(%r14)
.LBB50_105:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, 2128(%r13)
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_106:
	testb	$1, (%r15)
	movq	%r13, %rdi
	jne	.LBB50_108
# %bb.107:
	movq	2128(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB50_119
.LBB50_108:
	addq	$64, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	80(%rax), %r14
	movl	$2048, %edx             # imm = 0x800
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB50_111
# %bb.109:
	movl	48(%r13), %ecx
	andl	$1, %ecx
	je	.LBB50_111
# %bb.110:
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	clusterUpdateSlotsConfigWith
	jmp	.LBB50_112
.LBB50_111:
	testl	%eax, %eax
	je	.LBB50_119
.LBB50_112:
	movq	server+2944(%rip), %rax
	xorl	%ebx, %ebx
	jmp	.LBB50_113
.LBB50_118:                             #   in Loop: Header=BB50_113 Depth=1
	addq	$1, %rbx
	cmpq	$16384, %rbx            # imm = 0x4000
	jae	.LBB50_119
.LBB50_113:                             # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	shrl	$3, %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movzbl	80(%rdx,%rcx), %ecx
	movl	%ebx, %edx
	andb	$7, %dl
	movzbl	%dl, %edx
	btl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB50_118
# %bb.114:                              #   in Loop: Header=BB50_113 Depth=1
	movq	262184(%rax,%rbx,8), %rcx
	cmpq	%r13, %rcx
	je	.LBB50_118
# %bb.115:                              #   in Loop: Header=BB50_113 Depth=1
	testq	%rcx, %rcx
	je	.LBB50_118
# %bb.116:                              #   in Loop: Header=BB50_113 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, 56(%rcx)
	jbe	.LBB50_118
# %bb.117:
	leaq	8(%r13), %rdx
	addq	$8, %rcx
	movl	$.L.str.61, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	2248(%r13), %rdi
	movq	server+2944(%rip), %rax
	movq	262184(%rax,%rbx,8), %rsi
	callq	clusterSendUpdate
.LBB50_119:
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	je	.LBB50_123
# %bb.120:
	testb	$1, (%r15)
	je	.LBB50_123
# %bb.121:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	56(%rax), %rcx
	jne	.LBB50_123
# %bb.122:
	movq	%r13, %rdi
	callq	clusterHandleConfigEpochCollision
.LBB50_123:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	clusterProcessGossipSection
.LBB50_157:
	movl	$1, %r13d
.LBB50_158:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	clusterProcessPacket, .Lfunc_end50-clusterProcessPacket
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI50_0:
	.quad	.LBB50_6
	.quad	.LBB50_7
	.quad	.LBB50_8
	.quad	.LBB50_9
	.quad	.LBB50_10
.LJTI50_1:
	.quad	.LBB50_15
	.quad	.LBB50_15
	.quad	.LBB50_15
	.quad	.LBB50_16
	.quad	.LBB50_17
	.quad	.LBB50_18
	.quad	.LBB50_18
	.quad	.LBB50_19
	.quad	.LBB50_18
	.quad	.LBB50_20
.LJTI50_2:
	.quad	.LBB50_43
	.quad	.LBB50_42
	.quad	.LBB50_43
	.quad	.LBB50_124
	.quad	.LBB50_131
	.quad	.LBB50_134
	.quad	.LBB50_136
	.quad	.LBB50_147
	.quad	.LBB50_141
	.quad	.LBB50_154
                                        # -- End function
	.text
	.globl	clusterSendPing         # -- Begin function clusterSendPing
	.p2align	4, 0x90
	.type	clusterSendPing,@function
clusterSendPing:                        # @clusterSendPing
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rax
	movq	72(%rax), %rcx
	addq	40(%rax), %rcx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%rdx
	leal	-2(%rcx), %ebx
	shrq	$3, %rdx
	cvtsi2sd	%rdx, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	$2, %eax
	movl	$3, %edx
	cmovgl	%eax, %edx
	cmpl	%ebx, %edx
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	cmovgl	%ebx, %edx
	movq	server+2944(%rip), %rax
	movl	524584(%rax), %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	addl	%edx, %eax
	imull	$104, %eax, %eax
	addl	$2256, %eax             # imm = 0x8D0
	cmpl	$4351, %eax             # imm = 0x10FF
	movl	$4352, %edi             # imm = 0x1100
	cmovgl	%eax, %edi
	callq	zcalloc
	movq	%rax, %r13
	testl	%r15d, %r15d
	jne	.LBB51_3
# %bb.1:
	cmpq	$0, 32(%r14)
	je	.LBB51_3
# %bb.2:
	callq	mstime
	movq	32(%r14), %rcx
	movq	%rax, 2136(%rcx)
.LBB51_3:
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	clusterBuildMessageHdr
	xorl	%r12d, %r12d
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	jle	.LBB51_4
# %bb.5:
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jle	.LBB51_24
# %bb.6:
	movq	-72(%rbp), %rax         # 8-byte Reload
	leal	(%rax,%rax,2), %r14d
	leaq	2256(%r13), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB51_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_17 Depth 2
	subl	$1, %r14d
	jb	.LBB51_24
# %bb.8:                                #   in Loop: Header=BB51_7 Depth=1
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetRandomKey
	movq	8(%rax), %r15
	cmpq	myself(%rip), %r15
	je	.LBB51_22
# %bb.9:                                #   in Loop: Header=BB51_7 Depth=1
	movl	48(%r15), %eax
	testb	$4, %al
	jne	.LBB51_22
# %bb.10:                               #   in Loop: Header=BB51_7 Depth=1
	testb	$96, %al
	je	.LBB51_11
.LBB51_13:                              #   in Loop: Header=BB51_7 Depth=1
	addl	$-1, -56(%rbp)          # 4-byte Folded Spill
.LBB51_22:                              #   in Loop: Header=BB51_7 Depth=1
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	jle	.LBB51_24
# %bb.23:                               #   in Loop: Header=BB51_7 Depth=1
	cmpl	-72(%rbp), %r12d        # 4-byte Folded Reload
	jl	.LBB51_7
	jmp	.LBB51_24
.LBB51_11:                              #   in Loop: Header=BB51_7 Depth=1
	cmpq	$0, 2248(%r15)
	jne	.LBB51_14
# %bb.12:                               #   in Loop: Header=BB51_7 Depth=1
	cmpl	$0, 2112(%r15)
	je	.LBB51_13
.LBB51_14:                              #   in Loop: Header=BB51_7 Depth=1
	movslq	%r12d, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r12, -104(%rbp)        # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB51_15
# %bb.16:                               #   in Loop: Header=BB51_7 Depth=1
	leaq	8(%r15), %r13
	movq	-80(%rbp), %rbx         # 8-byte Reload
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB51_17:                              #   Parent Loop BB51_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$40, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB51_19
# %bb.18:                               #   in Loop: Header=BB51_17 Depth=2
	addq	$1, %r12
	addq	$104, %rbx
	cmpq	-96(%rbp), %r12         # 8-byte Folded Reload
	jl	.LBB51_17
.LBB51_19:                              # %.loopexit1
                                        #   in Loop: Header=BB51_7 Depth=1
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB51_20
.LBB51_15:                              #   in Loop: Header=BB51_7 Depth=1
	xorl	%r12d, %r12d
.LBB51_20:                              #   in Loop: Header=BB51_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, %r12d
	movq	%rax, %r12
	jne	.LBB51_22
# %bb.21:                               #   in Loop: Header=BB51_7 Depth=1
	imulq	$104, -96(%rbp), %rbx   # 8-byte Folded Reload
	movq	-80(%rbp), %r13         # 8-byte Reload
	leaq	(%rbx,%r13), %rdi
	leaq	8(%r15), %rsi
	movl	$40, %edx
	callq	memcpy
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	2136(%r15)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 40(%r13,%rbx)
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	2144(%r15)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 44(%r13,%rbx)
	leaq	(%rbx,%r13), %rdi
	addq	$48, %rdi
	leaq	2192(%r15), %rsi
	movl	$46, %edx
	callq	memcpy
	movzwl	2240(%r15), %edi
	callq	lwip_htons
	movw	%ax, 94(%r13,%rbx)
	movzwl	2244(%r15), %edi
	callq	lwip_htons
	movw	%ax, 96(%r13,%rbx)
	movzwl	48(%r15), %edi
	callq	lwip_htons
	movw	%ax, 98(%r13,%rbx)
	movl	$0, 100(%r13,%rbx)
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, -56(%rbp)          # 4-byte Folded Spill
	addl	$1, %r12d
	jmp	.LBB51_22
.LBB51_4:
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB51_24:
	testl	%ebx, %ebx
	je	.LBB51_34
# %bb.25:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	movq	%r12, %r14
	testl	%ebx, %ebx
	jle	.LBB51_33
# %bb.26:
	testq	%rax, %rax
	je	.LBB51_33
# %bb.27:
	addq	$2256, %r13             # imm = 0x8D0
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movabsq	$2361183241434822607, %r12 # imm = 0x20C49BA5E353F7CF
	.p2align	4, 0x90
.LBB51_28:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	8(%rax), %rbx
	movl	48(%rbx), %eax
	andl	$100, %eax
	cmpl	$4, %eax
	jne	.LBB51_29
# %bb.30:                               #   in Loop: Header=BB51_28 Depth=1
	movslq	%r14d, %r14
	imulq	$104, %r14, %r15
	leaq	(%r15,%r13), %rdi
	leaq	8(%rbx), %rsi
	movl	$40, %edx
	callq	memcpy
	movq	%r12, %rax
	imulq	2136(%rbx)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 40(%r13,%r15)
	movq	%r12, %rax
	imulq	2144(%rbx)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 44(%r13,%r15)
	leaq	(%r15,%r13), %rdi
	addq	$48, %rdi
	leaq	2192(%rbx), %rsi
	movl	$46, %edx
	callq	memcpy
	movzwl	2240(%rbx), %edi
	callq	lwip_htons
	movw	%ax, 94(%r13,%r15)
	movzwl	2244(%rbx), %edi
	callq	lwip_htons
	movw	%ax, 96(%r13,%r15)
	movzwl	48(%rbx), %edi
	callq	lwip_htons
	movw	%ax, 98(%r13,%r15)
	movl	$0, 100(%r13,%r15)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r14d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	addl	$-1, %ebx
	jmp	.LBB51_31
	.p2align	4, 0x90
.LBB51_29:                              #   in Loop: Header=BB51_28 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB51_31:                              #   in Loop: Header=BB51_28 Depth=1
	movq	%r15, %rdi
	callq	dictNext
	testl	%ebx, %ebx
	jle	.LBB51_33
# %bb.32:                               #   in Loop: Header=BB51_28 Depth=1
	testq	%rax, %rax
	jne	.LBB51_28
.LBB51_33:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	%r14, %r12
.LBB51_34:
	movq	-88(%rbp), %r14         # 8-byte Reload
	imull	$104, %r12d, %ebx
	addl	$2256, %ebx             # imm = 0x8D0
	movzwl	%r12w, %edi
	callq	lwip_htons
	movw	%ax, 14(%r13)
	movl	%ebx, %edi
	callq	lwip_htonl
	movl	%eax, 4(%r13)
	movslq	%ebx, %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	clusterSendMessage
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	clusterSendPing, .Lfunc_end51-clusterSendPing
                                        # -- End function
	.globl	clusterDelNodeSlots     # -- Begin function clusterDelNodeSlots
	.p2align	4, 0x90
	.type	clusterDelNodeSlots,@function
clusterDelNodeSlots:                    # @clusterDelNodeSlots
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB52_1
	.p2align	4, 0x90
.LBB52_4:                               #   in Loop: Header=BB52_1 Depth=1
	addl	$-1, 2112(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	movq	$0, 262184(%rcx,%rdx,8)
.LBB52_5:                               #   in Loop: Header=BB52_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %eax
.LBB52_6:                               #   in Loop: Header=BB52_1 Depth=1
	addq	$1, %rdx
	cmpq	$16384, %rdx            # imm = 0x4000
	jae	.LBB52_7
.LBB52_1:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	shrl	$3, %esi
	andl	$8191, %esi             # imm = 0x1FFF
	movzbl	64(%rdi,%rsi), %r9d
	movl	%edx, %ecx
	andb	$7, %cl
	movl	$1, %r8d
	shll	%cl, %r8d
	movzbl	%cl, %ecx
	btl	%ecx, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB52_6
# %bb.2:                                #   in Loop: Header=BB52_1 Depth=1
	movq	server+2944(%rip), %rcx
	movq	262184(%rcx,%rdx,8), %r10
	testq	%r10, %r10
	je	.LBB52_5
# %bb.3:                                #   in Loop: Header=BB52_1 Depth=1
	movzbl	64(%r10,%rsi), %r9d
	movl	%r8d, %ecx
	notb	%cl
	andb	%r9b, %cl
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 64(%r10,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r8d
	jne	.LBB52_4
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB52_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end52:
	.size	clusterDelNodeSlots, .Lfunc_end52-clusterDelNodeSlots
                                        # -- End function
	.globl	clusterSendUpdate       # -- Begin function clusterSendUpdate
	.p2align	4, 0x90
	.type	clusterSendUpdate,@function
clusterSendUpdate:                      # @clusterSendUpdate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$4360, %rsp             # imm = 0x1108
	testq	%rdi, %rdi
	je	.LBB53_2
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	-4384(%rbp), %r14
	movq	%r14, %rdi
	movl	$7, %esi
	callq	clusterBuildMessageHdr
	leaq	-2120(%rbp), %rdi
	leaq	8(%rbx), %rsi
	movl	$40, %edx
	callq	memcpy
	movq	56(%rbx), %rdi
	callq	intrev64
	movq	%rax, -2128(%rbp)
	leaq	-2080(%rbp), %rdi
	addq	$64, %rbx
	movl	$2048, %edx             # imm = 0x800
	movq	%rbx, %rsi
	callq	memcpy
	movl	-4380(%rbp), %edi
	callq	lwip_htonl
	movl	%eax, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	clusterSendMessage
.LBB53_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4360, %rsp             # imm = 0x1108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	clusterSendUpdate, .Lfunc_end53-clusterSendUpdate
                                        # -- End function
	.globl	clusterSendFailoverAuthIfNeeded # -- Begin function clusterSendFailoverAuthIfNeeded
	.p2align	4, 0x90
	.type	clusterSendFailoverAuthIfNeeded,@function
clusterSendFailoverAuthIfNeeded:        # @clusterSendFailoverAuthIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4360, %rsp             # imm = 0x1108
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	2128(%rdi), %r13
	movq	16(%rsi), %rdi
	callq	intrev64
	movq	%rax, %rbx
	movq	24(%r12), %rdi
	callq	intrev64
	movq	%rax, %r14
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	jne	.LBB54_28
# %bb.1:
	cmpl	$0, 2112(%rax)
	je	.LBB54_28
# %bb.2:
	movq	server+2944(%rip), %rax
	movq	8(%rax), %r8
	cmpq	%r8, %rbx
	jae	.LBB54_4
# %bb.3:
	addq	$8, %r15
	movl	$.L.str.72, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB54_28
.LBB54_4:
	cmpq	%r8, 524408(%rax)
	jne	.LBB54_6
# %bb.5:
	addq	$8, %r15
	movl	$.L.str.73, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	movq	%r8, %rcx
.LBB54_27:
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB54_28
.LBB54_6:
	movl	48(%r15), %eax
	testq	%r13, %r13
	je	.LBB54_12
# %bb.7:
	movl	%eax, %ecx
	andl	$1, %ecx
	jne	.LBB54_12
# %bb.8:
	testb	$2, 2253(%r12)
	jne	.LBB54_17
# %bb.9:
	movl	48(%r13), %eax
	andl	$8, %eax
	je	.LBB54_10
.LBB54_17:
	callq	mstime
	movq	2128(%r15), %rcx
	subq	2160(%rcx), %rax
	movq	server+2928(%rip), %rbx
	addq	%rbx, %rbx
	cmpq	%rbx, %rax
	jge	.LBB54_18
# %bb.29:
	leaq	8(%r15), %r14
	callq	mstime
	movq	2128(%r15), %rcx
	subq	%rax, %rbx
	addq	2160(%rcx), %rbx
	movl	$.L.str.77, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	jmp	.LBB54_27
.LBB54_12:
	testb	$1, %al
	jne	.LBB54_13
.LBB54_10:
	testq	%r13, %r13
	je	.LBB54_11
# %bb.15:
	testb	$8, 48(%r13)
	jne	.LBB54_28
# %bb.16:
	addq	$8, %r15
	movl	$.L.str.76, %esi
	jmp	.LBB54_14
.LBB54_13:
	addq	$8, %r15
	movl	$.L.str.74, %esi
	jmp	.LBB54_14
.LBB54_11:
	addq	$8, %r15
	movl	$.L.str.75, %esi
.LBB54_14:
	movl	$3, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB54_28:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4360, %rsp             # imm = 0x1108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB54_18:
	movq	server+2944(%rip), %rax
	xorl	%ecx, %ecx
	jmp	.LBB54_19
	.p2align	4, 0x90
.LBB54_23:                              #   in Loop: Header=BB54_19 Depth=1
	addq	$1, %rcx
	cmpq	$16384, %rcx            # imm = 0x4000
	jae	.LBB54_24
.LBB54_19:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	shrl	$3, %edx
	andl	$8191, %edx             # imm = 0x1FFF
	movzbl	80(%r12,%rdx), %edx
	movl	%ecx, %ebx
	andb	$7, %bl
	movzbl	%bl, %esi
	btl	%esi, %edx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB54_23
# %bb.20:                               #   in Loop: Header=BB54_19 Depth=1
	movq	262184(%rax,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB54_23
# %bb.21:                               #   in Loop: Header=BB54_19 Depth=1
	movq	56(%rdx), %r8
	cmpq	%r14, %r8
	jbe	.LBB54_23
# %bb.22:
	addq	$8, %r15
	movl	$.L.str.78, %esi
	movl	$3, %edi
	movq	%r15, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB54_28
.LBB54_24:
	movq	8(%rax), %rcx
	movq	%rcx, 524408(%rax)
	callq	mstime
	movq	2128(%r15), %rcx
	movq	%rax, 2160(%rcx)
	movq	server+2944(%rip), %rax
	orl	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 2248(%r15)
	je	.LBB54_26
# %bb.25:
	leaq	-4400(%rbp), %rbx
	movq	%rbx, %rdi
	movl	$6, %esi
	callq	clusterBuildMessageHdr
	movl	$2256, %edi             # imm = 0x8D0
	callq	lwip_htonl
	movl	%eax, -4396(%rbp)
	movq	2248(%r15), %rdi
	movl	$2256, %edx             # imm = 0x8D0
	movq	%rbx, %rsi
	callq	clusterSendMessage
	movq	server+2944(%rip), %rax
.LBB54_26:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %r15
	movq	8(%rax), %rcx
	movl	$.L.str.79, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	jmp	.LBB54_27
.Lfunc_end54:
	.size	clusterSendFailoverAuthIfNeeded, .Lfunc_end54-clusterSendFailoverAuthIfNeeded
                                        # -- End function
	.globl	handleLinkIOError       # -- Begin function handleLinkIOError
	.p2align	4, 0x90
	.type	handleLinkIOError,@function
handleLinkIOError:                      # @handleLinkIOError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	8(%rdi), %esi
	cmpl	$-1, %esi
	je	.LBB55_2
# %bb.1:
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB55_2:
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	24(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB55_4
# %bb.3:
	movq	$0, 2248(%rax)
.LBB55_4:
	movl	8(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end55:
	.size	handleLinkIOError, .Lfunc_end55-handleLinkIOError
                                        # -- End function
	.globl	clusterWriteHandler     # -- Begin function clusterWriteHandler
	.p2align	4, 0x90
	.type	clusterWriteHandler,@function
clusterWriteHandler:                    # @clusterWriteHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movl	%esi, %edi
	movq	16(%rdx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB56_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI56_0(,%rax,8)
.LBB56_3:
	shrq	$3, %rdx
	jmp	.LBB56_8
.LBB56_1:
	xorl	%edx, %edx
	jmp	.LBB56_8
.LBB56_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB56_8
.LBB56_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB56_8
.LBB56_6:
	movl	-9(%rsi), %edx
	jmp	.LBB56_8
.LBB56_7:
	movq	-17(%rsi), %rdx
.LBB56_8:
	movl	$42, __A_VARIABLE(%rip)
	callq	write
	testq	%rax, %rax
	jle	.LBB56_9
# %bb.16:
	movq	16(%rbx), %rdi
	movq	%rax, %rsi
	movq	$-1, %rdx
	callq	sdsrange
	movq	16(%rbx), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB56_18
# %bb.17:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI56_1(,%rdx,8)
.LBB56_19:
	shrq	$3, %rax
	jmp	.LBB56_24
.LBB56_9:
	movl	$.L.str.67, %edx
	cmpq	$-1, %rax
	jne	.LBB56_11
# %bb.10:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rdx
.LBB56_11:
	movl	$.L.str.66, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	8(%rbx), %esi
	cmpl	$-1, %esi
	je	.LBB56_13
# %bb.12:
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB56_13:
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	24(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB56_15
# %bb.14:
	movq	$0, 2248(%rax)
.LBB56_15:
	movl	8(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB56_26
.LBB56_18:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB56_25
.LBB56_20:
	movzbl	-3(%rcx), %eax
	jmp	.LBB56_24
.LBB56_21:
	movzwl	-5(%rcx), %eax
	jmp	.LBB56_24
.LBB56_22:
	movl	-9(%rcx), %eax
	jmp	.LBB56_24
.LBB56_23:
	movq	-17(%rcx), %rax
.LBB56_24:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB56_26
.LBB56_25:
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
.LBB56_26:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end56:
	.size	clusterWriteHandler, .Lfunc_end56-clusterWriteHandler
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI56_0:
	.quad	.LBB56_3
	.quad	.LBB56_4
	.quad	.LBB56_5
	.quad	.LBB56_6
	.quad	.LBB56_7
.LJTI56_1:
	.quad	.LBB56_19
	.quad	.LBB56_20
	.quad	.LBB56_21
	.quad	.LBB56_22
	.quad	.LBB56_23
                                        # -- End function
	.text
	.globl	clusterSendMessage      # -- Begin function clusterSendMessage
	.p2align	4, 0x90
	.type	clusterSendMessage,@function
clusterSendMessage:                     # @clusterSendMessage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB57_1
# %bb.2:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI57_0(,%rcx,8)
.LBB57_3:
	shrq	$3, %rax
	jmp	.LBB57_8
.LBB57_1:
	xorl	%eax, %eax
	jmp	.LBB57_8
.LBB57_4:
	movzbl	-3(%rdi), %eax
	jmp	.LBB57_8
.LBB57_5:
	movzwl	-5(%rdi), %eax
	jmp	.LBB57_8
.LBB57_6:
	movl	-9(%rdi), %eax
	jmp	.LBB57_8
.LBB57_7:
	movq	-17(%rdi), %rax
.LBB57_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB57_11
# %bb.9:
	testq	%rax, %rax
	jne	.LBB57_11
# %bb.10:
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$clusterWriteHandler, %ecx
	movl	$6, %edx
	movq	%rbx, %r8
	callq	aeCreateFileEvent
	movq	16(%rbx), %rdi
.LBB57_11:
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	sdscatlen
	movq	%rax, 16(%rbx)
	movzwl	12(%r14), %edi
	callq	lwip_htons
	cmpw	$9, %ax
	ja	.LBB57_13
# %bb.12:
	movq	server+2944(%rip), %rcx
	movzwl	%ax, %eax
	addq	$1, 524424(%rcx,%rax,8)
.LBB57_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	clusterSendMessage, .Lfunc_end57-clusterSendMessage
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI57_0:
	.quad	.LBB57_3
	.quad	.LBB57_4
	.quad	.LBB57_5
	.quad	.LBB57_6
	.quad	.LBB57_7
                                        # -- End function
	.text
	.globl	clusterBroadcastMessage # -- Begin function clusterBroadcastMessage
	.p2align	4, 0x90
	.type	clusterBroadcastMessage,@function
clusterBroadcastMessage:                # @clusterBroadcastMessage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB58_1
	.p2align	4, 0x90
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	movq	%rbx, %rdi
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB58_6
# %bb.2:                                #   in Loop: Header=BB58_1 Depth=1
	movq	8(%rax), %rax
	movq	2248(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB58_5
# %bb.3:                                #   in Loop: Header=BB58_1 Depth=1
	testb	$48, 48(%rax)
	jne	.LBB58_5
# %bb.4:                                #   in Loop: Header=BB58_1 Depth=1
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	clusterSendMessage
	jmp	.LBB58_5
.LBB58_6:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end58:
	.size	clusterBroadcastMessage, .Lfunc_end58-clusterBroadcastMessage
                                        # -- End function
	.globl	clusterBuildMessageHdr  # -- Begin function clusterBuildMessageHdr
	.p2align	4, 0x90
	.type	clusterBuildMessageHdr,@function
clusterBuildMessageHdr:                 # @clusterBuildMessageHdr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	movq	%rdi, %r13
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	je	.LBB59_2
# %bb.1:
	movq	2128(%rax), %r12
	testq	%r12, %r12
	jne	.LBB59_3
.LBB59_2:
	movq	%rax, %r12
.LBB59_3:
	movl	$4352, %edx             # imm = 0x1100
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$1, %edi
	callq	lwip_htons
	movw	%ax, 8(%r13)
	movl	$1651327826, (%r13)     # imm = 0x626D4352
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movzwl	%bx, %edi
	callq	lwip_htons
	movw	%ax, 12(%r13)
	leaq	40(%r13), %rdi
	movq	myself(%rip), %rsi
	addq	$8, %rsi
	movl	$40, %edx
	callq	memcpy
	leaq	2168(%r13), %r15
	movl	$46, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	server+2968(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB59_5
# %bb.4:
	movl	$46, %edx
	movq	%r15, %rdi
	callq	strncpy
	movb	$0, 2213(%r13)
.LBB59_5:
	movl	server+2976(%rip), %r14d
	testl	%r14d, %r14d
	movl	server+216(%rip), %ebx
	cmovel	%ebx, %r14d
	movl	server+2980(%rip), %eax
	addl	$10000, %ebx            # imm = 0x2710
	testl	%eax, %eax
	cmovnel	%eax, %ebx
	leaq	80(%r13), %rdi
	leaq	64(%r12), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	leaq	2128(%r13), %r15
	movl	$40, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	myself(%rip), %rax
	movq	2128(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB59_7
# %bb.6:
	addq	$8, %rsi
	movl	$40, %edx
	movq	%r15, %rdi
	callq	memcpy
.LBB59_7:
	movzwl	%r14w, %edi
	callq	lwip_htons
	movw	%ax, 10(%r13)
	movzwl	%bx, %edi
	callq	lwip_htons
	movw	%ax, 2248(%r13)
	movq	myself(%rip), %rax
	movzwl	48(%rax), %edi
	callq	lwip_htons
	movw	%ax, 2250(%r13)
	movq	server+2944(%rip), %rax
	movb	16(%rax), %cl
	movb	%cl, 2252(%r13)
	movq	8(%rax), %rdi
	callq	intrev64
	movq	%rax, 16(%r13)
	movq	56(%r12), %rdi
	callq	intrev64
	movq	%rax, 24(%r13)
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	jne	.LBB59_8
# %bb.9:
	movq	server+2352(%rip), %rdi
	jmp	.LBB59_10
.LBB59_8:
	callq	replicationGetSlaveOffset
	movq	%rax, %rdi
.LBB59_10:
	movl	-44(%rbp), %ebx         # 4-byte Reload
	callq	intrev64
	movq	%rax, 32(%r13)
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	je	.LBB59_13
# %bb.11:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB59_13
# %bb.12:
	orb	$1, 2253(%r13)
.LBB59_13:
	xorl	%eax, %eax
	cmpl	$7, %ebx
	movl	$4352, %ecx             # imm = 0x1100
	cmovnel	%eax, %ecx
	cmpl	$3, %ebx
	movl	$2296, %edi             # imm = 0x8F8
	cmovnel	%ecx, %edi
	callq	lwip_htonl
	movl	%eax, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	clusterBuildMessageHdr, .Lfunc_end59-clusterBuildMessageHdr
                                        # -- End function
	.globl	clusterNodeIsInGossipSection # -- Begin function clusterNodeIsInGossipSection
	.p2align	4, 0x90
	.type	clusterNodeIsInGossipSection,@function
clusterNodeIsInGossipSection:           # @clusterNodeIsInGossipSection
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	testl	%esi, %esi
	jle	.LBB60_1
# %bb.2:
	movq	%rdx, %r15
	movq	%rdi, %rbx
	addq	$8, %r15
	movslq	%r14d, %r13
	addq	$2256, %rbx             # imm = 0x8D0
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB60_3:                               # =>This Inner Loop Header: Depth=1
	movl	$40, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB60_5
# %bb.4:                                #   in Loop: Header=BB60_3 Depth=1
	addq	$1, %r12
	addq	$104, %rbx
	cmpq	%r13, %r12
	jl	.LBB60_3
	jmp	.LBB60_5
.LBB60_1:
	xorl	%r12d, %r12d
.LBB60_5:
	xorl	%eax, %eax
	cmpl	%r14d, %r12d
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end60:
	.size	clusterNodeIsInGossipSection, .Lfunc_end60-clusterNodeIsInGossipSection
                                        # -- End function
	.globl	clusterSetGossipEntry   # -- Begin function clusterSetGossipEntry
	.p2align	4, 0x90
	.type	clusterSetGossipEntry,@function
clusterSetGossipEntry:                  # @clusterSetGossipEntry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rdi, %r12
	movslq	%esi, %rax
	imulq	$104, %rax, %rbx
	addq	%rbx, %rdi
	addq	$2256, %rdi             # imm = 0x8D0
	leaq	8(%rdx), %rsi
	movl	$40, %edx
	callq	memcpy
	movabsq	$2361183241434822607, %r15 # imm = 0x20C49BA5E353F7CF
	movq	%r15, %rax
	imulq	2136(%r14)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 2296(%r12,%rbx)
	movq	%r15, %rax
	imulq	2144(%r14)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 2300(%r12,%rbx)
	leaq	(%r12,%rbx), %rdi
	addq	$2304, %rdi             # imm = 0x900
	leaq	2192(%r14), %rsi
	movl	$46, %edx
	callq	memcpy
	movzwl	2240(%r14), %edi
	callq	lwip_htons
	movw	%ax, 2350(%r12,%rbx)
	movzwl	2244(%r14), %edi
	callq	lwip_htons
	movw	%ax, 2352(%r12,%rbx)
	movzwl	48(%r14), %edi
	callq	lwip_htons
	movw	%ax, 2354(%r12,%rbx)
	movl	$0, 2356(%r12,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	clusterSetGossipEntry, .Lfunc_end61-clusterSetGossipEntry
                                        # -- End function
	.globl	clusterBroadcastPong    # -- Begin function clusterBroadcastPong
	.p2align	4, 0x90
	.type	clusterBroadcastPong,@function
clusterBroadcastPong:                   # @clusterBroadcastPong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB62_1
.LBB62_10:                              #   in Loop: Header=BB62_1 Depth=1
	movl	$1, %esi
	callq	clusterSendPing
	.p2align	4, 0x90
.LBB62_11:                              #   in Loop: Header=BB62_1 Depth=1
	movq	%rbx, %rdi
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB62_12
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	movq	8(%rax), %rcx
	movq	2248(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB62_11
# %bb.3:                                #   in Loop: Header=BB62_1 Depth=1
	movq	myself(%rip), %rax
	cmpq	%rax, %rcx
	je	.LBB62_11
# %bb.4:                                #   in Loop: Header=BB62_1 Depth=1
	movl	48(%rcx), %edx
	testb	$32, %dl
	jne	.LBB62_11
# %bb.5:                                #   in Loop: Header=BB62_1 Depth=1
	cmpl	$1, %r14d
	jne	.LBB62_10
# %bb.6:                                #   in Loop: Header=BB62_1 Depth=1
	testb	$2, %dl
	je	.LBB62_11
# %bb.7:                                #   in Loop: Header=BB62_1 Depth=1
	movq	2128(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB62_11
# %bb.8:                                #   in Loop: Header=BB62_1 Depth=1
	cmpq	%rax, %rcx
	je	.LBB62_10
# %bb.9:                                #   in Loop: Header=BB62_1 Depth=1
	cmpq	2128(%rax), %rcx
	jne	.LBB62_11
	jmp	.LBB62_10
.LBB62_12:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end62:
	.size	clusterBroadcastPong, .Lfunc_end62-clusterBroadcastPong
                                        # -- End function
	.globl	clusterSendPublish      # -- Begin function clusterSendPublish
	.p2align	4, 0x90
	.type	clusterSendPublish,@function
clusterSendPublish:                     # @clusterSendPublish
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4376, %rsp             # imm = 0x1118
	movq	%rdx, %rbx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	getDecodedObject
	movq	%rbx, %rdi
	movq	%rax, %rbx
	callq	getDecodedObject
	movq	8(%rbx), %rdx
	movzbl	-1(%rdx), %r15d
	movl	%r15d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB63_1
# %bb.2:
	movl	%r15d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI63_0(,%rcx,8)
.LBB63_3:
	shrq	$3, %r15
	jmp	.LBB63_8
.LBB63_1:
	xorl	%r15d, %r15d
	jmp	.LBB63_8
.LBB63_4:
	movzbl	-3(%rdx), %r15d
	jmp	.LBB63_8
.LBB63_5:
	movzwl	-5(%rdx), %r15d
	jmp	.LBB63_8
.LBB63_6:
	movl	-9(%rdx), %r15d
	jmp	.LBB63_8
.LBB63_7:
	movq	-17(%rdx), %r15
.LBB63_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	8(%rax), %rax
	movzbl	-1(%rax), %r14d
	movl	%r14d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB63_9
# %bb.10:
	movl	%r14d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI63_1(,%rcx,8)
.LBB63_11:
	shrq	$3, %r14
	jmp	.LBB63_16
.LBB63_9:
	xorl	%r14d, %r14d
	jmp	.LBB63_16
.LBB63_12:
	movzbl	-3(%rax), %r14d
	jmp	.LBB63_16
.LBB63_13:
	movzwl	-5(%rax), %r14d
	jmp	.LBB63_16
.LBB63_14:
	movl	-9(%rax), %r14d
	jmp	.LBB63_16
.LBB63_15:
	movq	-17(%rax), %r14
.LBB63_16:
	leaq	-4416(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	$4, %esi
	callq	clusterBuildMessageHdr
	leal	(%r15,%r14), %r13d
	addl	$2264, %r13d            # imm = 0x8D8
	movl	%r15d, %edi
	callq	lwip_htonl
	movl	%eax, -2160(%rbp)
	movl	%r14d, %edi
	callq	lwip_htonl
	movl	%eax, -2156(%rbp)
	movl	%r13d, %edi
	callq	lwip_htonl
	movl	%eax, -4412(%rbp)
	cmpl	$4352, %r13d            # imm = 0x1100
	jb	.LBB63_18
# %bb.17:
	movq	%r13, %rdi
	callq	zmalloc
	movq	%rax, %r12
	leaq	-4416(%rbp), %rsi
	movl	$4352, %edx             # imm = 0x1100
	movq	%rax, %rdi
	callq	memcpy
.LBB63_18:
	leaq	2264(%r12), %rdi
	movq	%rbx, %r14
	movq	8(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	-48(%rbp), %rbx         # 8-byte Reload
	ja	.LBB63_19
# %bb.20:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI63_2(,%rax,8)
.LBB63_21:
	shrq	$3, %rdx
	jmp	.LBB63_26
.LBB63_19:
	xorl	%edx, %edx
	jmp	.LBB63_26
.LBB63_22:
	movzbl	-3(%rsi), %edx
	jmp	.LBB63_26
.LBB63_23:
	movzwl	-5(%rsi), %edx
	jmp	.LBB63_26
.LBB63_24:
	movl	-9(%rsi), %edx
	jmp	.LBB63_26
.LBB63_25:
	movq	-17(%rsi), %rdx
.LBB63_26:
	movl	$42, __A_VARIABLE(%rip)
	callq	memcpy
	movq	8(%r14), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB63_27
# %bb.28:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI63_3(,%rdx,8)
.LBB63_29:
	shrq	$3, %rax
	jmp	.LBB63_34
.LBB63_27:
	xorl	%eax, %eax
	jmp	.LBB63_34
.LBB63_30:
	movzbl	-3(%rcx), %eax
	jmp	.LBB63_34
.LBB63_31:
	movzwl	-5(%rcx), %eax
	jmp	.LBB63_34
.LBB63_32:
	movl	-9(%rcx), %eax
	jmp	.LBB63_34
.LBB63_33:
	movq	-17(%rcx), %rax
.LBB63_34:
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r12,%rax), %rdi
	addq	$2264, %rdi             # imm = 0x8D8
	movq	8(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB63_35
# %bb.36:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI63_4(,%rax,8)
.LBB63_37:
	shrq	$3, %rdx
	jmp	.LBB63_42
.LBB63_35:
	xorl	%edx, %edx
	jmp	.LBB63_42
.LBB63_38:
	movzbl	-3(%rsi), %edx
	jmp	.LBB63_42
.LBB63_39:
	movzwl	-5(%rsi), %edx
	jmp	.LBB63_42
.LBB63_40:
	movl	-9(%rsi), %edx
	jmp	.LBB63_42
.LBB63_41:
	movq	-17(%rsi), %rdx
.LBB63_42:
	movl	$42, __A_VARIABLE(%rip)
	callq	memcpy
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB63_44
# %bb.43:
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	clusterSendMessage
	jmp	.LBB63_51
.LBB63_44:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB63_45
	.p2align	4, 0x90
.LBB63_49:                              #   in Loop: Header=BB63_45 Depth=1
	movq	%rbx, %rdi
.LBB63_45:                              # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB63_50
# %bb.46:                               #   in Loop: Header=BB63_45 Depth=1
	movq	8(%rax), %rax
	movq	2248(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB63_49
# %bb.47:                               #   in Loop: Header=BB63_45 Depth=1
	testb	$48, 48(%rax)
	jne	.LBB63_49
# %bb.48:                               #   in Loop: Header=BB63_45 Depth=1
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	clusterSendMessage
	jmp	.LBB63_49
.LBB63_50:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB63_51:
	movq	%r14, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
	leaq	-4416(%rbp), %rax
	cmpq	%rax, %r12
	je	.LBB63_53
# %bb.52:
	movq	%r12, %rdi
	callq	zfree
.LBB63_53:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4376, %rsp             # imm = 0x1118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	clusterSendPublish, .Lfunc_end63-clusterSendPublish
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI63_0:
	.quad	.LBB63_3
	.quad	.LBB63_4
	.quad	.LBB63_5
	.quad	.LBB63_6
	.quad	.LBB63_7
.LJTI63_1:
	.quad	.LBB63_11
	.quad	.LBB63_12
	.quad	.LBB63_13
	.quad	.LBB63_14
	.quad	.LBB63_15
.LJTI63_2:
	.quad	.LBB63_21
	.quad	.LBB63_22
	.quad	.LBB63_23
	.quad	.LBB63_24
	.quad	.LBB63_25
.LJTI63_3:
	.quad	.LBB63_29
	.quad	.LBB63_30
	.quad	.LBB63_31
	.quad	.LBB63_32
	.quad	.LBB63_33
.LJTI63_4:
	.quad	.LBB63_37
	.quad	.LBB63_38
	.quad	.LBB63_39
	.quad	.LBB63_40
	.quad	.LBB63_41
                                        # -- End function
	.text
	.globl	clusterSendModule       # -- Begin function clusterSendModule
	.p2align	4, 0x90
	.type	clusterSendModule,@function
clusterSendModule:                      # @clusterSendModule
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4376, %rsp             # imm = 0x1118
	movl	%r8d, %ebx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	leaq	-4416(%rbp), %r12
	movq	%r12, %rdi
	movl	$9, %esi
	callq	clusterBuildMessageHdr
	movl	%ebx, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leal	2269(%rbx), %r14d
	movq	%r15, -2160(%rbp)
	movb	%r13b, -2148(%rbp)
	movl	%ebx, %edi
	callq	lwip_htonl
	movl	%eax, -2152(%rbp)
	movl	%r14d, %edi
	callq	lwip_htonl
	movl	%eax, -4412(%rbp)
	movq	%r12, %rdi
	cmpl	$4352, %r14d            # imm = 0x1100
	jb	.LBB64_2
# %bb.1:
	movq	%r14, %rdi
	callq	zmalloc
	movq	%rax, %r12
	leaq	-4416(%rbp), %rsi
	movl	$4352, %edx             # imm = 0x1100
	movq	%rax, %rdi
	callq	memcpy
	movq	%r12, %rdi
.LBB64_2:
	addq	$2269, %rdi             # imm = 0x8DD
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-64(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB64_4
# %bb.3:
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	clusterSendMessage
	jmp	.LBB64_11
.LBB64_4:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB64_5
	.p2align	4, 0x90
.LBB64_9:                               #   in Loop: Header=BB64_5 Depth=1
	movq	%rbx, %rdi
.LBB64_5:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB64_10
# %bb.6:                                #   in Loop: Header=BB64_5 Depth=1
	movq	8(%rax), %rax
	movq	2248(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB64_9
# %bb.7:                                #   in Loop: Header=BB64_5 Depth=1
	testb	$48, 48(%rax)
	jne	.LBB64_9
# %bb.8:                                #   in Loop: Header=BB64_5 Depth=1
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	clusterSendMessage
	jmp	.LBB64_9
.LBB64_10:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB64_11:
	leaq	-4416(%rbp), %rax
	cmpq	%rax, %r12
	je	.LBB64_13
# %bb.12:
	movq	%r12, %rdi
	callq	zfree
.LBB64_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4376, %rsp             # imm = 0x1118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	clusterSendModule, .Lfunc_end64-clusterSendModule
                                        # -- End function
	.globl	clusterSendModuleMessageToTarget # -- Begin function clusterSendModuleMessageToTarget
	.p2align	4, 0x90
	.type	clusterSendModuleMessageToTarget,@function
clusterSendModuleMessageToTarget:       # @clusterSendModuleMessageToTarget
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r15
	movl	%edx, %r13d
	movq	%rsi, %r12
	movq	%rdi, %rax
	xorl	%edi, %edi
	testq	%rax, %rax
	je	.LBB65_5
# %bb.1:
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	$40, %esi
	movq	%rax, %rdi
	callq	sdsnewlen
	movq	%rax, %r14
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%r14, %rsi
	callq	dictFind
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	je	.LBB65_2
# %bb.3:
	movq	8(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB65_6
# %bb.4:
	movq	2248(%rcx), %rdi
	testq	%rdi, %rdi
	movl	-44(%rbp), %r8d         # 4-byte Reload
	je	.LBB65_6
.LBB65_5:
	movzbl	%r13b, %edx
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	clusterSendModule
	xorl	%eax, %eax
	jmp	.LBB65_6
.LBB65_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB65_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	clusterSendModuleMessageToTarget, .Lfunc_end65-clusterSendModuleMessageToTarget
                                        # -- End function
	.globl	clusterPropagatePublish # -- Begin function clusterPropagatePublish
	.p2align	4, 0x90
	.type	clusterPropagatePublish,@function
clusterPropagatePublish:                # @clusterPropagatePublish
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	xorl	%edi, %edi
	callq	clusterSendPublish
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end66:
	.size	clusterPropagatePublish, .Lfunc_end66-clusterPropagatePublish
                                        # -- End function
	.globl	clusterRequestFailoverAuth # -- Begin function clusterRequestFailoverAuth
	.p2align	4, 0x90
	.type	clusterRequestFailoverAuth,@function
clusterRequestFailoverAuth:             # @clusterRequestFailoverAuth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$4352, %rsp             # imm = 0x1100
	leaq	-4368(%rbp), %rdi
	movl	$5, %esi
	callq	clusterBuildMessageHdr
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB67_2
# %bb.1:
	orb	$2, -2115(%rbp)
.LBB67_2:
	movl	$2256, %edi             # imm = 0x8D0
	callq	lwip_htonl
	movl	%eax, -4364(%rbp)
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB67_8
# %bb.3:                                # %.preheader
	leaq	-4368(%rbp), %r14
	jmp	.LBB67_4
	.p2align	4, 0x90
.LBB67_7:                               #   in Loop: Header=BB67_4 Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB67_8
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	2248(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB67_7
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
	testb	$48, 48(%rax)
	jne	.LBB67_7
# %bb.6:                                #   in Loop: Header=BB67_4 Depth=1
	movl	$2256, %edx             # imm = 0x8D0
	movq	%r14, %rsi
	callq	clusterSendMessage
	jmp	.LBB67_7
.LBB67_8:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4352, %rsp             # imm = 0x1100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end67:
	.size	clusterRequestFailoverAuth, .Lfunc_end67-clusterRequestFailoverAuth
                                        # -- End function
	.globl	clusterSendFailoverAuth # -- Begin function clusterSendFailoverAuth
	.p2align	4, 0x90
	.type	clusterSendFailoverAuth,@function
clusterSendFailoverAuth:                # @clusterSendFailoverAuth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$4352, %rsp             # imm = 0x1100
	cmpq	$0, 2248(%rdi)
	je	.LBB68_2
# %bb.1:
	movq	%rdi, %rbx
	leaq	-4368(%rbp), %r14
	movq	%r14, %rdi
	movl	$6, %esi
	callq	clusterBuildMessageHdr
	movl	$2256, %edi             # imm = 0x8D0
	callq	lwip_htonl
	movl	%eax, -4364(%rbp)
	movq	2248(%rbx), %rdi
	movl	$2256, %edx             # imm = 0x8D0
	movq	%r14, %rsi
	callq	clusterSendMessage
.LBB68_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4352, %rsp             # imm = 0x1100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end68:
	.size	clusterSendFailoverAuth, .Lfunc_end68-clusterSendFailoverAuth
                                        # -- End function
	.globl	clusterSendMFStart      # -- Begin function clusterSendMFStart
	.p2align	4, 0x90
	.type	clusterSendMFStart,@function
clusterSendMFStart:                     # @clusterSendMFStart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$4352, %rsp             # imm = 0x1100
	cmpq	$0, 2248(%rdi)
	je	.LBB69_2
# %bb.1:
	movq	%rdi, %rbx
	leaq	-4368(%rbp), %r14
	movq	%r14, %rdi
	movl	$8, %esi
	callq	clusterBuildMessageHdr
	movl	$2256, %edi             # imm = 0x8D0
	callq	lwip_htonl
	movl	%eax, -4364(%rbp)
	movq	2248(%rbx), %rdi
	movl	$2256, %edx             # imm = 0x8D0
	movq	%r14, %rsi
	callq	clusterSendMessage
.LBB69_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4352, %rsp             # imm = 0x1100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end69:
	.size	clusterSendMFStart, .Lfunc_end69-clusterSendMFStart
                                        # -- End function
	.globl	clusterGetSlaveRank     # -- Begin function clusterGetSlaveRank
	.p2align	4, 0x90
	.type	clusterGetSlaveRank,@function
clusterGetSlaveRank:                    # @clusterGetSlaveRank
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	je	.LBB70_18
# %bb.1:
	movq	2128(%rax), %r14
	xorl	%r15d, %r15d
	testq	%r14, %r14
	je	.LBB70_9
# %bb.2:
	callq	replicationGetSlaveOffset
	movslq	2116(%r14), %r9
	testq	%r9, %r9
	jle	.LBB70_9
# %bb.3:
	movq	2120(%r14), %rcx
	movq	myself(%rip), %rdx
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r9d
	jne	.LBB70_10
# %bb.4:
	xorl	%esi, %esi
	xorl	%r15d, %r15d
.LBB70_5:
	testq	%r8, %r8
	je	.LBB70_9
# %bb.6:
	movq	(%rcx,%rsi,8), %rcx
	cmpq	%rdx, %rcx
	je	.LBB70_9
# %bb.7:
	testb	$2, 49(%rcx)
	jne	.LBB70_9
# %bb.8:
	xorl	%edx, %edx
	cmpq	%rax, 2184(%rcx)
	setg	%dl
	addl	%edx, %r15d
.LBB70_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB70_10:
	subq	%r8, %r9
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	jmp	.LBB70_11
	.p2align	4, 0x90
.LBB70_17:                              #   in Loop: Header=BB70_11 Depth=1
	addq	$2, %rsi
	cmpq	%rsi, %r9
	je	.LBB70_5
.LBB70_11:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rsi,8), %rbx
	cmpq	%rdx, %rbx
	je	.LBB70_14
# %bb.12:                               #   in Loop: Header=BB70_11 Depth=1
	testb	$2, 49(%rbx)
	jne	.LBB70_14
# %bb.13:                               #   in Loop: Header=BB70_11 Depth=1
	xorl	%edi, %edi
	cmpq	%rax, 2184(%rbx)
	setg	%dil
	addl	%edi, %r15d
.LBB70_14:                              #   in Loop: Header=BB70_11 Depth=1
	movq	8(%rcx,%rsi,8), %rbx
	cmpq	%rdx, %rbx
	je	.LBB70_17
# %bb.15:                               #   in Loop: Header=BB70_11 Depth=1
	testb	$2, 49(%rbx)
	jne	.LBB70_17
# %bb.16:                               #   in Loop: Header=BB70_11 Depth=1
	xorl	%edi, %edi
	cmpq	%rax, 2184(%rbx)
	setg	%dil
	addl	%edi, %r15d
	jmp	.LBB70_17
.LBB70_18:
	movl	$.L.str.80, %edi
	movl	$.L.str.8, %esi
	movl	$2827, %edx             # imm = 0xB0B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end70:
	.size	clusterGetSlaveRank, .Lfunc_end70-clusterGetSlaveRank
                                        # -- End function
	.globl	clusterLogCantFailover  # -- Begin function clusterLogCantFailover
	.p2align	4, 0x90
	.type	clusterLogCantFailover,@function
clusterLogCantFailover:                 # @clusterLogCantFailover
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$5000, %r14d            # imm = 0x1388
	addq	server+2928(%rip), %r14
	movl	%edi, %ebx
	movq	server+2944(%rip), %rax
	cmpl	%edi, 524368(%rax)
	jne	.LBB71_1
# %bb.2:
	xorl	%edi, %edi
	callq	time
	subq	clusterLogCantFailover.lastlog_time(%rip), %rax
	cmpq	$300, %rax              # imm = 0x12C
	jl	.LBB71_10
# %bb.3:
	movl	$524368, %eax           # imm = 0x80050
	addq	server+2944(%rip), %rax
	jmp	.LBB71_4
.LBB71_1:
	addq	$524368, %rax           # imm = 0x80050
.LBB71_4:
	movl	%ebx, (%rax)
	movq	myself(%rip), %rax
	movq	2128(%rax), %rax
	testq	%rax, %rax
	je	.LBB71_7
# %bb.5:
	testb	$8, 48(%rax)
	je	.LBB71_7
# %bb.6:
	callq	mstime
	movq	myself(%rip), %rcx
	movq	2128(%rcx), %rcx
	subq	2152(%rcx), %rax
	cmpq	%r14, %rax
	jl	.LBB71_10
.LBB71_7:
	addl	$-1, %ebx
	movl	$.L.str.85, %r14d
	cmpl	$3, %ebx
	ja	.LBB71_9
# %bb.8:
	movslq	%ebx, %rax
	movq	.Lswitch.table.clusterLogCantFailover(,%rax,8), %r14
.LBB71_9:
	xorl	%edi, %edi
	callq	time
	movq	%rax, clusterLogCantFailover.lastlog_time(%rip)
	movl	$.L.str.86, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB71_10:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end71:
	.size	clusterLogCantFailover, .Lfunc_end71-clusterLogCantFailover
                                        # -- End function
	.globl	clusterFailoverReplaceYourMaster # -- Begin function clusterFailoverReplaceYourMaster
	.p2align	4, 0x90
	.type	clusterFailoverReplaceYourMaster,@function
clusterFailoverReplaceYourMaster:       # @clusterFailoverReplaceYourMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	myself(%rip), %rdi
	movq	2128(%rdi), %r15
	testq	%r15, %r15
	je	.LBB72_16
# %bb.1:
	movl	48(%rdi), %eax
	andl	$1, %eax
	jne	.LBB72_16
# %bb.2:
	callq	clusterSetNodeAsMaster
	callq	replicationUnsetMaster
	xorl	%ebx, %ebx
	jmp	.LBB72_3
	.p2align	4, 0x90
.LBB72_5:                               #   in Loop: Header=BB72_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB72_8:                               #   in Loop: Header=BB72_3 Depth=1
	movq	myself(%rip), %r14
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r14, 262184(%rax,%rbx,8)
.LBB72_9:                               #   in Loop: Header=BB72_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB72_10:                              #   in Loop: Header=BB72_3 Depth=1
	addq	$1, %rbx
	cmpq	$16384, %rbx            # imm = 0x4000
	jae	.LBB72_11
.LBB72_3:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	shrl	$3, %eax
	andl	$8191, %eax             # imm = 0x1FFF
	movzbl	64(%r15,%rax), %esi
	movl	%ebx, %ecx
	andb	$7, %cl
	movl	$1, %edx
	shll	%cl, %edx
	movzbl	%cl, %ecx
	btl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB72_10
# %bb.4:                                #   in Loop: Header=BB72_3 Depth=1
	movq	server+2944(%rip), %rcx
	movq	262184(%rcx,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB72_5
# %bb.6:                                #   in Loop: Header=BB72_3 Depth=1
	movzbl	64(%rdi,%rax), %esi
	movl	%edx, %ecx
	notb	%cl
	andb	%sil, %cl
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 64(%rdi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %edx
	je	.LBB72_17
# %bb.7:                                #   in Loop: Header=BB72_3 Depth=1
	addl	$-1, 2112(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%rbx,8)
	movq	server+2944(%rip), %rax
	cmpq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB72_9
	jmp	.LBB72_8
.LBB72_11:
	callq	clusterUpdateState
	movl	$1, %edi
	callq	clusterSaveConfig
	cmpl	$-1, %eax
	je	.LBB72_18
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	callq	clusterBroadcastPong
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB72_15
# %bb.13:
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB72_15
# %bb.14:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
.LBB72_15:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB72_16:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB72_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB72_18:
	movl	$.L.str.22, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end72:
	.size	clusterFailoverReplaceYourMaster, .Lfunc_end72-clusterFailoverReplaceYourMaster
                                        # -- End function
	.globl	clusterNodeGetSlotBit   # -- Begin function clusterNodeGetSlotBit
	.p2align	4, 0x90
	.type	clusterNodeGetSlotBit,@function
clusterNodeGetSlotBit:                  # @clusterNodeGetSlotBit
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	leal	7(%rsi), %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	sarl	$3, %eax
	cltq
	movzbl	64(%rdi,%rax), %ecx
	andb	$7, %sil
	movzbl	%sil, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end73:
	.size	clusterNodeGetSlotBit, .Lfunc_end73-clusterNodeGetSlotBit
                                        # -- End function
	.globl	clusterUpdateState      # -- Begin function clusterUpdateState
	.p2align	4, 0x90
	.type	clusterUpdateState,@function
clusterUpdateState:                     # @clusterUpdateState
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	server+2944(%rip), %rax
	andl	$-3, 524416(%rax)
	cmpq	$0, clusterUpdateState.first_call_time(%rip)
	jne	.LBB74_2
# %bb.1:
	callq	mstime
	movq	%rax, clusterUpdateState.first_call_time(%rip)
.LBB74_2:
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	je	.LBB74_5
# %bb.3:
	movq	server+2944(%rip), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB74_5
# %bb.4:
	callq	mstime
	subq	clusterUpdateState.first_call_time(%rip), %rax
	cmpq	$2000, %rax             # imm = 0x7D0
	jl	.LBB74_23
.LBB74_5:
	xorl	%r15d, %r15d
	cmpl	$0, server+2960(%rip)
	movq	server+2944(%rip), %rax
	movl	$0, %r14d
	je	.LBB74_10
# %bb.6:                                # %.preheader1
	xorl	%ecx, %ecx
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB74_7:                               # =>This Inner Loop Header: Depth=1
	movq	262184(%rax,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB74_10
# %bb.8:                                #   in Loop: Header=BB74_7 Depth=1
	testb	$8, 48(%rdx)
	jne	.LBB74_10
# %bb.9:                                #   in Loop: Header=BB74_7 Depth=1
	movq	262192(%rax,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB74_10
# %bb.24:                               #   in Loop: Header=BB74_7 Depth=1
	testb	$8, 48(%rdx)
	jne	.LBB74_10
# %bb.25:                               #   in Loop: Header=BB74_7 Depth=1
	addq	$2, %rcx
	cmpq	$16384, %rcx            # imm = 0x4000
	jb	.LBB74_7
# %bb.26:
	xorl	%r14d, %r14d
.LBB74_10:
	movl	$0, 20(%rax)
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB74_16
# %bb.11:                               # %.preheader
	xorl	%r15d, %r15d
	jmp	.LBB74_12
	.p2align	4, 0x90
.LBB74_15:                              #   in Loop: Header=BB74_12 Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB74_16
.LBB74_12:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rcx
	movl	48(%rcx), %eax
	testb	$1, %al
	je	.LBB74_15
# %bb.13:                               #   in Loop: Header=BB74_12 Depth=1
	cmpl	$0, 2112(%rcx)
	je	.LBB74_15
# %bb.14:                               #   in Loop: Header=BB74_12 Depth=1
	movq	server+2944(%rip), %rcx
	addl	$1, 20(%rcx)
	andl	$12, %eax
	cmpl	$1, %eax
	adcl	$0, %r15d
	jmp	.LBB74_15
.LBB74_16:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movq	server+2944(%rip), %rax
	movl	20(%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	cmpl	%edx, %r15d
	jg	.LBB74_18
# %bb.17:
	callq	mstime
	movq	%rax, clusterUpdateState.among_minority_time(%rip)
	movl	$1, %r14d
	movq	server+2944(%rip), %rax
.LBB74_18:
	cmpl	16(%rax), %r14d
	je	.LBB74_23
# %bb.19:
	movq	server+2928(%rip), %rax
	cmpq	$5001, %rax             # imm = 0x1389
	movl	$5000, %ecx             # imm = 0x1388
	cmovlq	%rax, %rcx
	cmpq	$499, %rcx              # imm = 0x1F3
	movl	$500, %ebx              # imm = 0x1F4
	cmovgq	%rcx, %rbx
	testl	%r14d, %r14d
	jne	.LBB74_22
# %bb.20:
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	je	.LBB74_22
# %bb.21:
	callq	mstime
	subq	clusterUpdateState.among_minority_time(%rip), %rax
	cmpq	%rbx, %rax
	jl	.LBB74_23
.LBB74_22:
	testl	%r14d, %r14d
	movl	$.L.str.101, %eax
	movl	$.L.str.12, %edx
	cmoveq	%rax, %rdx
	movl	$.L.str.100, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movl	%r14d, 16(%rax)
.LBB74_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end74:
	.size	clusterUpdateState, .Lfunc_end74-clusterUpdateState
                                        # -- End function
	.globl	clusterHandleSlaveFailover # -- Begin function clusterHandleSlaveFailover
	.p2align	4, 0x90
	.type	clusterHandleSlaveFailover,@function
clusterHandleSlaveFailover:             # @clusterHandleSlaveFailover
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	callq	mstime
	movq	%rax, %r15
	movq	server+2944(%rip), %rax
	subq	524336(%rax), %r15
	movl	20(%rax), %r14d
	movq	524376(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB75_1
# %bb.2:
	cmpl	$0, 524400(%rax)
	setne	%r10b
	jmp	.LBB75_3
.LBB75_1:
	xorl	%r10d, %r10d
.LBB75_3:
	andb	$-2, 524416(%rax)
	movq	server+2928(%rip), %rdi
	leaq	(%rdi,%rdi), %rdx
	cmpq	$1999, %rdx             # imm = 0x7CF
	movl	$2000, %r12d            # imm = 0x7D0
	cmovgq	%rdx, %r12
	movq	myself(%rip), %rbx
	movl	48(%rbx), %edx
	testb	$1, %dl
	jne	.LBB75_8
# %bb.4:
	movq	2128(%rbx), %r13
	testq	%r13, %r13
	je	.LBB75_8
# %bb.5:
	testb	$8, 48(%r13)
	sete	%cl
	movl	%r10d, %ebx
	notb	%bl
	testb	%cl, %bl
	jne	.LBB75_8
# %bb.6:
	cmpl	$0, server+2964(%rip)
	setne	%cl
	testb	%cl, %bl
	jne	.LBB75_8
# %bb.7:
	cmpl	$0, 2112(%r13)
	je	.LBB75_8
# %bb.9:
	movl	$144, %ecx
	addq	server+2480(%rip), %rcx
	cmpl	$15, server+2500(%rip)
	movl	$server+2568, %r9d
	cmoveq	%rcx, %r9
	movslq	server+2956(%rip), %r8
	testq	%r8, %r8
	je	.LBB75_12
# %bb.10:
	movq	server+2872(%rip), %rcx
	subq	(%r9), %rcx
	imulq	$1000, %rcx, %rcx       # imm = 0x3E8
	xorl	%ebx, %ebx
	cmpq	%rdi, %rcx
	cmovgq	%rdi, %rbx
	subq	%rbx, %rcx
	movslq	server+2372(%rip), %rbx
	imulq	$1000, %rbx, %rbx       # imm = 0x3E8
	imulq	%rdi, %r8
	addq	%rbx, %r8
	cmpq	%r8, %rcx
	setle	%cl
	orb	%cl, %r10b
	je	.LBB75_11
.LBB75_12:
	leaq	(%r12,%r12), %rcx
	cmpq	%rcx, %r15
	jle	.LBB75_33
# %bb.13:
	callq	mstime
	movq	%rax, %rbx
	callq	random
	movq	%rax, %rcx
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$6, %rdx
	addq	%rax, %rdx
	imulq	$500, %rdx, %rax        # imm = 0x1F4
	subq	%rax, %rcx
	leaq	(%rbx,%rcx), %rax
	addq	$500, %rax              # imm = 0x1F4
	movq	server+2944(%rip), %rcx
	movq	%rax, 524336(%rcx)
	movq	$0, 524344(%rcx)
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	je	.LBB75_67
# %bb.14:
	movq	2128(%rax), %r14
	xorl	%r15d, %r15d
	testq	%r14, %r14
	je	.LBB75_22
# %bb.15:
	callq	replicationGetSlaveOffset
	movslq	2116(%r14), %r9
	testq	%r9, %r9
	jle	.LBB75_22
# %bb.16:
	movq	2120(%r14), %rcx
	movq	myself(%rip), %rdx
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r9d
	jne	.LBB75_25
# %bb.17:
	xorl	%esi, %esi
	xorl	%r15d, %r15d
.LBB75_18:
	testq	%r8, %r8
	je	.LBB75_22
# %bb.19:
	movq	(%rcx,%rsi,8), %rcx
	cmpq	%rdx, %rcx
	je	.LBB75_22
# %bb.20:
	testb	$2, 49(%rcx)
	jne	.LBB75_22
# %bb.21:
	xorl	%edx, %edx
	cmpq	%rax, 2184(%rcx)
	setg	%dl
	addl	%edx, %r15d
.LBB75_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movl	%r15d, 524352(%rax)
	imull	$1000, %r15d, %ecx      # imm = 0x3E8
	movslq	%ecx, %rbx
	addq	524336(%rax), %rbx
	movq	%rbx, 524336(%rax)
	cmpq	$0, 524376(%rax)
	je	.LBB75_24
# %bb.23:
	callq	mstime
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	%rbx, 524336(%rax)
	movl	$0, 524352(%rax)
	orb	$1, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_24:
	callq	mstime
	subq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movl	524352(%rax), %r14d
	callq	replicationGetSlaveOffset
	movl	$.L.str.87, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	clusterBroadcastPong
	jmp	.LBB75_66
.LBB75_8:
	movl	$0, 524368(%rax)
.LBB75_66:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB75_33:
	cmpl	$0, 524348(%rax)
	jne	.LBB75_46
# %bb.34:
	testq	%rsi, %rsi
	jne	.LBB75_46
# %bb.35:
	testb	$2, %dl
	je	.LBB75_67
# %bb.36:
	callq	replicationGetSlaveOffset
	movslq	2116(%r13), %r9
	testq	%r9, %r9
	jle	.LBB75_37
# %bb.38:
	movq	2120(%r13), %r10
	movq	myself(%rip), %rsi
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r9d
	jne	.LBB75_48
# %bb.39:
	xorl	%ebx, %ebx
	xorl	%edx, %edx
.LBB75_40:
	testq	%r8, %r8
	je	.LBB75_44
# %bb.41:
	movq	(%r10,%rbx,8), %rcx
	cmpq	%rsi, %rcx
	je	.LBB75_44
# %bb.42:
	testb	$2, 49(%rcx)
	jne	.LBB75_44
# %bb.43:
	xorl	%esi, %esi
	cmpq	%rax, 2184(%rcx)
	setg	%sil
	addl	%esi, %edx
	jmp	.LBB75_44
.LBB75_11:
	movl	$1, %edi
	jmp	.LBB75_65
.LBB75_25:
	subq	%r8, %r9
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	jmp	.LBB75_26
.LBB75_32:                              #   in Loop: Header=BB75_26 Depth=1
	addq	$2, %rsi
	cmpq	%rsi, %r9
	je	.LBB75_18
.LBB75_26:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rsi,8), %rbx
	cmpq	%rdx, %rbx
	je	.LBB75_29
# %bb.27:                               #   in Loop: Header=BB75_26 Depth=1
	testb	$2, 49(%rbx)
	jne	.LBB75_29
# %bb.28:                               #   in Loop: Header=BB75_26 Depth=1
	xorl	%edi, %edi
	cmpq	%rax, 2184(%rbx)
	setg	%dil
	addl	%edi, %r15d
.LBB75_29:                              #   in Loop: Header=BB75_26 Depth=1
	movq	8(%rcx,%rsi,8), %rbx
	cmpq	%rdx, %rbx
	je	.LBB75_32
# %bb.30:                               #   in Loop: Header=BB75_26 Depth=1
	testb	$2, 49(%rbx)
	jne	.LBB75_32
# %bb.31:                               #   in Loop: Header=BB75_26 Depth=1
	xorl	%edi, %edi
	cmpq	%rax, 2184(%rbx)
	setg	%dil
	addl	%edi, %r15d
	jmp	.LBB75_32
.LBB75_37:
	xorl	%edx, %edx
.LBB75_44:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movl	%edx, %ecx
	subl	524352(%rax), %ecx
	jle	.LBB75_46
# %bb.45:
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	movslq	%ecx, %rcx
	addq	%rcx, 524336(%rax)
	movl	%edx, 524352(%rax)
	movl	$.L.str.88, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB75_46:
	callq	mstime
	movq	server+2944(%rip), %rcx
	cmpq	524336(%rcx), %rax
	jge	.LBB75_56
# %bb.47:
	movl	$2, %edi
	jmp	.LBB75_65
.LBB75_56:
	cmpq	%r12, %r15
	jle	.LBB75_58
# %bb.57:
	movl	$3, %edi
	jmp	.LBB75_65
.LBB75_58:
	cmpl	$0, 524348(%rcx)
	je	.LBB75_59
# %bb.60:
	movl	%r14d, %eax
	shrl	$31, %eax
	addl	%r14d, %eax
	sarl	%eax
	cmpl	%eax, 524344(%rcx)
	jle	.LBB75_64
# %bb.61:
	movl	$.L.str.90, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %rax
	movq	server+2944(%rip), %rcx
	movq	524360(%rcx), %rdx
	cmpq	%rdx, 56(%rax)
	jae	.LBB75_63
# %bb.62:
	movq	%rdx, 56(%rax)
	movl	$.L.str.91, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB75_63:
	callq	clusterFailoverReplaceYourMaster
	jmp	.LBB75_66
.LBB75_48:
	subq	%r8, %r9
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	jmp	.LBB75_49
.LBB75_55:                              #   in Loop: Header=BB75_49 Depth=1
	addq	$2, %rbx
	cmpq	%rbx, %r9
	je	.LBB75_40
.LBB75_49:                              # =>This Inner Loop Header: Depth=1
	movq	(%r10,%rbx,8), %rdi
	cmpq	%rsi, %rdi
	je	.LBB75_52
# %bb.50:                               #   in Loop: Header=BB75_49 Depth=1
	testb	$2, 49(%rdi)
	jne	.LBB75_52
# %bb.51:                               #   in Loop: Header=BB75_49 Depth=1
	xorl	%ecx, %ecx
	cmpq	%rax, 2184(%rdi)
	setg	%cl
	addl	%ecx, %edx
.LBB75_52:                              #   in Loop: Header=BB75_49 Depth=1
	movq	8(%r10,%rbx,8), %rdi
	cmpq	%rsi, %rdi
	je	.LBB75_55
# %bb.53:                               #   in Loop: Header=BB75_49 Depth=1
	testb	$2, 49(%rdi)
	jne	.LBB75_55
# %bb.54:                               #   in Loop: Header=BB75_49 Depth=1
	xorl	%ecx, %ecx
	cmpq	%rax, 2184(%rdi)
	setg	%cl
	addl	%ecx, %edx
	jmp	.LBB75_55
.LBB75_59:
	movq	8(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rdx, 524360(%rcx)
	movl	$.L.str.89, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	clusterRequestFailoverAuth
	movq	server+2944(%rip), %rax
	movl	$1, 524348(%rax)
	orb	$14, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB75_66
.LBB75_64:
	movl	$4, %edi
.LBB75_65:
	callq	clusterLogCantFailover
	jmp	.LBB75_66
.LBB75_67:
	movl	$.L.str.80, %edi
	movl	$.L.str.8, %esi
	movl	$2827, %edx             # imm = 0xB0B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end75:
	.size	clusterHandleSlaveFailover, .Lfunc_end75-clusterHandleSlaveFailover
                                        # -- End function
	.globl	clusterHandleSlaveMigration # -- Begin function clusterHandleSlaveMigration
	.p2align	4, 0x90
	.type	clusterHandleSlaveMigration,@function
clusterHandleSlaveMigration:            # @clusterHandleSlaveMigration
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	myself(%rip), %r13
	movq	2128(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB76_44
# %bb.1:
	movq	server+2944(%rip), %r8
	cmpl	$0, 16(%r8)
	jne	.LBB76_44
# %bb.2:
	movslq	2116(%rcx), %rdi
	testq	%rdi, %rdi
	jle	.LBB76_3
# %bb.4:
	movq	2120(%rcx), %rsi
	leaq	-1(%rdi), %rdx
	movl	%edi, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	.LBB76_6
# %bb.5:
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	jmp	.LBB76_8
.LBB76_3:
	xorl	%edx, %edx
	jmp	.LBB76_11
.LBB76_6:
	subq	%rcx, %rdi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB76_7:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rbx,8), %rax
	movzbl	48(%rax), %eax
	andb	$12, %al
	cmpb	$1, %al
	adcl	$0, %edx
	movq	8(%rsi,%rbx,8), %rax
	movzbl	48(%rax), %eax
	andb	$12, %al
	cmpb	$1, %al
	adcl	$0, %edx
	movq	16(%rsi,%rbx,8), %rax
	movzbl	48(%rax), %eax
	andb	$12, %al
	cmpb	$1, %al
	adcl	$0, %edx
	movq	24(%rsi,%rbx,8), %rax
	movzbl	48(%rax), %eax
	andb	$12, %al
	cmpb	$1, %al
	adcl	$0, %edx
	addq	$4, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB76_7
.LBB76_8:
	testq	%rcx, %rcx
	je	.LBB76_11
# %bb.9:                                # %.preheader3
	leaq	(%rsi,%rbx,8), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB76_10:                              # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdi,8), %rax
	movzbl	48(%rax), %eax
	andb	$12, %al
	cmpb	$1, %al
	adcl	$0, %edx
	addq	$1, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB76_10
.LBB76_11:
	cmpl	server+2952(%rip), %edx
	jle	.LBB76_44
# %bb.12:
	movq	24(%r8), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r12
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB76_13
# %bb.14:                               # %.preheader
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB76_15
	.p2align	4, 0x90
.LBB76_38:                              #   in Loop: Header=BB76_15 Depth=1
	movq	%r12, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB76_39
.LBB76_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_22 Depth 2
                                        #     Child Loop BB76_35 Depth 2
	movq	8(%rax), %r15
	movl	48(%r15), %ecx
	movl	%ecx, %eax
	andl	$266, %eax              # imm = 0x10A
	testb	$1, %cl
	je	.LBB76_18
# %bb.16:                               #   in Loop: Header=BB76_15 Depth=1
	movslq	2116(%r15), %rsi
	testq	%rsi, %rsi
	jle	.LBB76_17
# %bb.19:                               #   in Loop: Header=BB76_15 Depth=1
	movq	2120(%r15), %rcx
	movl	%esi, %edx
	andl	$1, %edx
	cmpl	$1, %esi
	jne	.LBB76_21
# %bb.20:                               #   in Loop: Header=BB76_15 Depth=1
	xorl	%edi, %edi
	xorl	%r14d, %r14d
	jmp	.LBB76_23
.LBB76_17:                              #   in Loop: Header=BB76_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB76_18:                              #   in Loop: Header=BB76_15 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB76_26
.LBB76_21:                              #   in Loop: Header=BB76_15 Depth=1
	subq	%rdx, %rsi
	xorl	%edi, %edi
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB76_22:                              #   Parent Loop BB76_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rdi,8), %rbx
	movzbl	48(%rbx), %ebx
	andb	$8, %bl
	cmpb	$1, %bl
	adcl	$0, %r14d
	movq	8(%rcx,%rdi,8), %rbx
	movzbl	48(%rbx), %ebx
	andb	$8, %bl
	cmpb	$1, %bl
	adcl	$0, %r14d
	addq	$2, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB76_22
.LBB76_23:                              #   in Loop: Header=BB76_15 Depth=1
	testq	%rdx, %rdx
	je	.LBB76_25
# %bb.24:                               #   in Loop: Header=BB76_15 Depth=1
	movq	(%rcx,%rdi,8), %rcx
	movb	48(%rcx), %cl
	andb	$8, %cl
	cmpb	$1, %cl
	adcl	$0, %r14d
.LBB76_25:                              #   in Loop: Header=BB76_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB76_31
.LBB76_26:                              #   in Loop: Header=BB76_15 Depth=1
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB76_31
# %bb.27:                               #   in Loop: Header=BB76_15 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	jne	.LBB76_29
# %bb.28:                               #   in Loop: Header=BB76_15 Depth=1
	cmpl	$0, 2112(%r15)
	movl	$0, %eax
	cmovgq	%r15, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB76_29:                              #   in Loop: Header=BB76_15 Depth=1
	xorl	%r14d, %r14d
	cmpq	$0, 2176(%r15)
	jne	.LBB76_32
# %bb.30:                               #   in Loop: Header=BB76_15 Depth=1
	callq	mstime
	movq	%rax, 2176(%r15)
	jmp	.LBB76_32
	.p2align	4, 0x90
.LBB76_31:                              #   in Loop: Header=BB76_15 Depth=1
	movq	$0, 2176(%r15)
.LBB76_32:                              #   in Loop: Header=BB76_15 Depth=1
	cmpl	-52(%rbp), %r14d        # 4-byte Folded Reload
	jne	.LBB76_38
# %bb.33:                               #   in Loop: Header=BB76_15 Depth=1
	cmpl	$0, 2116(%r15)
	jle	.LBB76_38
# %bb.34:                               #   in Loop: Header=BB76_15 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB76_35
	.p2align	4, 0x90
.LBB76_37:                              #   in Loop: Header=BB76_35 Depth=2
	addq	$1, %rbx
	movslq	2116(%r15), %rax
	cmpq	%rax, %rbx
	jge	.LBB76_38
.LBB76_35:                              #   Parent Loop BB76_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	2120(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	addq	$8, %rdi
	leaq	8(%r13), %rsi
	movl	$40, %edx
	callq	memcmp
	testl	%eax, %eax
	jns	.LBB76_37
# %bb.36:                               #   in Loop: Header=BB76_35 Depth=2
	movq	2120(%r15), %rax
	movq	(%rax,%rbx,8), %r13
	jmp	.LBB76_37
.LBB76_13:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB76_39:
	movq	%r12, %rdi
	callq	dictReleaseIterator
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB76_44
# %bb.40:
	cmpq	myself(%rip), %r13
	jne	.LBB76_44
# %bb.41:
	callq	mstime
	movq	-48(%rbp), %rcx         # 8-byte Reload
	subq	2176(%rcx), %rax
	cmpq	$5001, %rax             # imm = 0x1389
	jl	.LBB76_44
# %bb.42:
	testb	$2, server+2984(%rip)
	jne	.LBB76_44
# %bb.43:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	8(%rbx), %rdx
	movl	$.L.str.92, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	clusterSetMaster
.LBB76_44:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end76:
	.size	clusterHandleSlaveMigration, .Lfunc_end76-clusterHandleSlaveMigration
                                        # -- End function
	.globl	manualFailoverCheckTimeout # -- Begin function manualFailoverCheckTimeout
	.p2align	4, 0x90
	.type	manualFailoverCheckTimeout,@function
manualFailoverCheckTimeout:             # @manualFailoverCheckTimeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+2944(%rip), %rax
	movq	524376(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB77_6
# %bb.1:
	callq	mstime
	cmpq	%rax, %rbx
	jge	.LBB77_6
# %bb.2:
	movl	$.L.str.93, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB77_5
# %bb.3:
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB77_5
# %bb.4:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
.LBB77_5:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB77_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end77:
	.size	manualFailoverCheckTimeout, .Lfunc_end77-manualFailoverCheckTimeout
                                        # -- End function
	.globl	clusterHandleManualFailover # -- Begin function clusterHandleManualFailover
	.p2align	4, 0x90
	.type	clusterHandleManualFailover,@function
clusterHandleManualFailover:            # @clusterHandleManualFailover
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB78_5
# %bb.1:
	cmpl	$0, 524400(%rax)
	je	.LBB78_2
.LBB78_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB78_2:
	movq	524392(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB78_5
# %bb.3:
	callq	replicationGetSlaveOffset
	cmpq	%rax, %rbx
	jne	.LBB78_5
# %bb.4:
	movq	server+2944(%rip), %rax
	movl	$1, 524400(%rax)
	movl	$.L.str.94, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB78_5
.Lfunc_end78:
	.size	clusterHandleManualFailover, .Lfunc_end78-clusterHandleManualFailover
                                        # -- End function
	.globl	clusterCron             # -- Begin function clusterCron
	.p2align	4, 0x90
	.type	clusterCron,@function
clusterCron:                            # @clusterCron
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	callq	mstime
	addq	$1, clusterCron.iteration(%rip)
	movq	%rax, %r14
	movq	server+2968(%rip), %rbx
	movq	clusterCron.prev_ip(%rip), %rdi
	testq	%rbx, %rbx
	je	.LBB79_2
# %bb.1:
	testq	%rdi, %rdi
	je	.LBB79_5
.LBB79_2:
	testq	%rbx, %rbx
	jne	.LBB79_36
# %bb.3:
	testq	%rdi, %rdi
	je	.LBB79_36
.LBB79_4:
	callq	zfree
.LBB79_5:
	movq	%rbx, clusterCron.prev_ip(%rip)
	testq	%rbx, %rbx
	je	.LBB79_7
# %bb.6:
	movq	%rbx, %rdi
	callq	zstrdup
	movq	%rax, clusterCron.prev_ip(%rip)
	movl	$2192, %edi             # imm = 0x890
	addq	myself(%rip), %rdi
	movq	server+2968(%rip), %rsi
	movl	$46, %edx
	callq	strncpy
	movq	myself(%rip), %rax
	movb	$0, 2237(%rax)
	jmp	.LBB79_8
.LBB79_7:
	movq	myself(%rip), %rax
	movb	$0, 2192(%rax)
.LBB79_8:
	movq	server+2928(%rip), %rax
	cmpq	$999, %rax              # imm = 0x3E7
	movl	$1000, %r12d            # imm = 0x3E8
	cmovgq	%rax, %r12
	movq	myself(%rip), %rax
	xorl	%ecx, %ecx
	cmpl	$0, server+2964(%rip)
	movl	48(%rax), %edx
	setne	%cl
	shll	$9, %ecx
	movl	%edx, %esi
	andl	$-513, %esi             # imm = 0xFDFF
	orl	%ecx, %esi
	movl	%esi, 48(%rax)
	movq	server+2944(%rip), %rax
	cmpl	%edx, %esi
	je	.LBB79_10
# %bb.9:
	orb	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movq	server+2944(%rip), %rax
	movq	$0, 524584(%rax)
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB79_31
# %bb.11:                               # %.preheader2
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r12, -48(%rbp)         # 8-byte Spill
	jmp	.LBB79_14
.LBB79_12:                              #   in Loop: Header=BB79_14 Depth=1
	movq	%rbx, %rdi
	callq	clusterDelNode
	.p2align	4, 0x90
.LBB79_13:                              #   in Loop: Header=BB79_14 Depth=1
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB79_31
.LBB79_14:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rbx
	movl	48(%rbx), %eax
	testb	$80, %al
	jne	.LBB79_13
# %bb.15:                               #   in Loop: Header=BB79_14 Depth=1
	testb	$4, %al
	je	.LBB79_17
# %bb.16:                               #   in Loop: Header=BB79_14 Depth=1
	movq	server+2944(%rip), %rcx
	addq	$1, 524584(%rcx)
.LBB79_17:                              #   in Loop: Header=BB79_14 Depth=1
	testb	$32, %al
	je	.LBB79_19
# %bb.18:                               #   in Loop: Header=BB79_14 Depth=1
	movq	%r14, %rax
	subq	(%rbx), %rax
	cmpq	%r12, %rax
	jg	.LBB79_12
.LBB79_19:                              #   in Loop: Header=BB79_14 Depth=1
	cmpq	$0, 2248(%rbx)
	jne	.LBB79_13
# %bb.20:                               #   in Loop: Header=BB79_14 Depth=1
	leaq	2192(%rbx), %r12
	movl	2244(%rbx), %edx
	cmpl	$0, server+352(%rip)
	je	.LBB79_22
# %bb.21:                               #   in Loop: Header=BB79_14 Depth=1
	movq	server+224(%rip), %rcx
	jmp	.LBB79_23
.LBB79_22:                              #   in Loop: Header=BB79_14 Depth=1
	xorl	%ecx, %ecx
.LBB79_23:                              #   in Loop: Header=BB79_14 Depth=1
	movl	$server+584, %edi
	movq	%r12, %rsi
	callq	anetTcpNonBlockBindConnect
	cmpl	$-1, %eax
	je	.LBB79_27
# %bb.24:                               #   in Loop: Header=BB79_14 Depth=1
	movl	%eax, %r13d
	movl	$40, %edi
	callq	zmalloc
	movq	%rax, %r14
	callq	mstime
	movq	%rax, (%r14)
	callq	sdsempty
	movq	%rax, 16(%r14)
	callq	sdsempty
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, 8(%r14)
	movq	%r14, 2248(%rbx)
	movq	server+72(%rip), %rdi
	movl	$clusterReadHandler, %ecx
	movl	%r13d, %esi
	movl	$1, %edx
	movq	%r14, %r8
	callq	aeCreateFileEvent
	movq	2136(%rbx), %r13
	movl	48(%rbx), %esi
	shrl	$6, %esi
	andl	$2, %esi
	movq	%r14, %rdi
	callq	clusterSendPing
	testq	%r13, %r13
	je	.LBB79_26
# %bb.25:                               #   in Loop: Header=BB79_14 Depth=1
	movq	%r13, 2136(%rbx)
.LBB79_26:                              #   in Loop: Header=BB79_14 Depth=1
	andb	$127, 48(%rbx)
	movl	2244(%rbx), %r8d
	addq	$8, %rbx
	movl	$.L.str.96, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB79_30
.LBB79_27:                              #   in Loop: Header=BB79_14 Depth=1
	cmpq	$0, 2136(%rbx)
	jne	.LBB79_29
# %bb.28:                               #   in Loop: Header=BB79_14 Depth=1
	callq	mstime
	movq	%rax, 2136(%rbx)
.LBB79_29:                              #   in Loop: Header=BB79_14 Depth=1
	movl	2244(%rbx), %ecx
	movl	$.L.str.95, %esi
	movl	$server+584, %r8d
	xorl	%edi, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB79_30:                              #   in Loop: Header=BB79_14 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB79_13
.LBB79_31:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movabsq	$-3689348814741910323, %rax # imm = 0xCCCCCCCCCCCCCCCD
	imulq	clusterCron.iteration(%rip), %rax
	rorq	%rax
	movabsq	$1844674407370955161, %rcx # imm = 0x1999999999999999
	cmpq	%rcx, %rax
	ja	.LBB79_58
# %bb.32:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetRandomKey
	movq	8(%rax), %rax
	cmpq	$0, 2248(%rax)
	je	.LBB79_40
# %bb.33:
	xorl	%ebx, %ebx
	cmpq	$0, 2136(%rax)
	movl	$0, %r14d
	jne	.LBB79_41
# %bb.34:
	xorl	%ebx, %ebx
	testb	$48, 48(%rax)
	movl	$0, %r14d
	jne	.LBB79_41
# %bb.35:
	movq	2144(%rax), %r14
	movq	%rax, %rbx
	jmp	.LBB79_41
.LBB79_36:
	testq	%rbx, %rbx
	je	.LBB79_8
# %bb.37:
	testq	%rdi, %rdi
	je	.LBB79_8
# %bb.38:
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB79_8
# %bb.39:
	movq	clusterCron.prev_ip(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB79_4
	jmp	.LBB79_5
.LBB79_40:
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
.LBB79_41:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetRandomKey
	movq	8(%rax), %rax
	cmpq	$0, 2248(%rax)
	je	.LBB79_45
# %bb.42:
	cmpq	$0, 2136(%rax)
	jne	.LBB79_45
# %bb.43:
	testb	$48, 48(%rax)
	jne	.LBB79_45
# %bb.44:
	testq	%rbx, %rbx
	sete	%sil
	movq	2144(%rax), %rdx
	cmpq	%rdx, %r14
	setg	%cl
	orb	%sil, %cl
	cmovneq	%rax, %rbx
	cmovneq	%rdx, %r14
.LBB79_45:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetRandomKey
	movq	8(%rax), %rax
	cmpq	$0, 2248(%rax)
	je	.LBB79_49
# %bb.46:
	cmpq	$0, 2136(%rax)
	jne	.LBB79_49
# %bb.47:
	testb	$48, 48(%rax)
	jne	.LBB79_49
# %bb.48:
	testq	%rbx, %rbx
	sete	%sil
	movq	2144(%rax), %rdx
	cmpq	%rdx, %r14
	setg	%cl
	orb	%sil, %cl
	cmovneq	%rax, %rbx
	cmovneq	%rdx, %r14
.LBB79_49:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetRandomKey
	movq	8(%rax), %rax
	cmpq	$0, 2248(%rax)
	je	.LBB79_53
# %bb.50:
	cmpq	$0, 2136(%rax)
	jne	.LBB79_53
# %bb.51:
	testb	$48, 48(%rax)
	jne	.LBB79_53
# %bb.52:
	testq	%rbx, %rbx
	sete	%sil
	movq	2144(%rax), %rdx
	cmpq	%rdx, %r14
	setg	%cl
	orb	%sil, %cl
	cmovneq	%rax, %rbx
	cmovneq	%rdx, %r14
.LBB79_53:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetRandomKey
	movq	8(%rax), %rax
	cmpq	$0, 2248(%rax)
	je	.LBB79_56
# %bb.54:
	cmpq	$0, 2136(%rax)
	jne	.LBB79_56
# %bb.55:
	testb	$48, 48(%rax)
	je	.LBB79_129
.LBB79_56:
	testq	%rbx, %rbx
	je	.LBB79_58
.LBB79_57:
	leaq	8(%rbx), %rdx
	movl	$.L.str.97, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	2248(%rbx), %rdi
	xorl	%esi, %esi
	callq	clusterSendPing
.LBB79_58:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB79_101
# %bb.59:                               # %.preheader
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	jmp	.LBB79_62
.LBB79_60:                              #   in Loop: Header=BB79_62 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	clusterSendPing
	.p2align	4, 0x90
.LBB79_61:                              #   in Loop: Header=BB79_62 Depth=1
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB79_102
.LBB79_62:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_71 Depth 2
	movq	8(%rax), %r14
	callq	mstime
	movl	48(%r14), %edx
	testb	$112, %dl
	jne	.LBB79_61
# %bb.63:                               #   in Loop: Header=BB79_62 Depth=1
	movq	%rax, %r12
	testb	$8, %dl
	jne	.LBB79_79
# %bb.64:                               #   in Loop: Header=BB79_62 Depth=1
	movl	%edx, %eax
	andl	$1, %eax
	je	.LBB79_79
# %bb.65:                               #   in Loop: Header=BB79_62 Depth=1
	movq	myself(%rip), %r8
	movl	48(%r8), %r9d
	movl	%r9d, %eax
	andl	$2, %eax
	je	.LBB79_79
# %bb.66:                               #   in Loop: Header=BB79_62 Depth=1
	movslq	2116(%r14), %rbx
	testq	%rbx, %rbx
	jle	.LBB79_69
# %bb.67:                               #   in Loop: Header=BB79_62 Depth=1
	movq	2120(%r14), %rdi
	movl	%ebx, %r10d
	andl	$1, %r10d
	cmpl	$1, %ebx
	jne	.LBB79_70
# %bb.68:                               #   in Loop: Header=BB79_62 Depth=1
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.LBB79_72
.LBB79_69:                              #   in Loop: Header=BB79_62 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB79_75
.LBB79_70:                              #   in Loop: Header=BB79_62 Depth=1
	subq	%r10, %rbx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB79_71:                              #   Parent Loop BB79_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rcx,8), %rax
	movzbl	48(%rax), %eax
	andb	$8, %al
	cmpb	$1, %al
	adcl	$0, %esi
	movq	8(%rdi,%rcx,8), %rax
	movzbl	48(%rax), %eax
	andb	$8, %al
	cmpb	$1, %al
	adcl	$0, %esi
	addq	$2, %rcx
	cmpq	%rcx, %rbx
	jne	.LBB79_71
.LBB79_72:                              #   in Loop: Header=BB79_62 Depth=1
	testq	%r10, %r10
	je	.LBB79_74
# %bb.73:                               #   in Loop: Header=BB79_62 Depth=1
	movq	(%rdi,%rcx,8), %rax
	movb	48(%rax), %al
	andb	$8, %al
	cmpb	$1, %al
	adcl	$0, %esi
.LBB79_74:                              #   in Loop: Header=BB79_62 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jne	.LBB79_77
.LBB79_75:                              #   in Loop: Header=BB79_62 Depth=1
	xorl	%esi, %esi
	cmpl	$0, 2112(%r14)
	jle	.LBB79_77
# %bb.76:                               #   in Loop: Header=BB79_62 Depth=1
	shrl	$8, %edx
	andl	$1, %edx
	addl	%edx, -64(%rbp)         # 4-byte Folded Spill
.LBB79_77:                              #   in Loop: Header=BB79_62 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, %esi
	cmovgel	%esi, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	testb	$2, %r9b
	je	.LBB79_79
# %bb.78:                               #   in Loop: Header=BB79_62 Depth=1
	cmpq	%r14, 2128(%r8)
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmovel	%esi, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB79_79:                              #   in Loop: Header=BB79_62 Depth=1
	movq	2248(%r14), %rbx
	movb	$1, %r13b
	testq	%rbx, %rbx
	je	.LBB79_92
# %bb.80:                               #   in Loop: Header=BB79_62 Depth=1
	movq	%r12, %rcx
	subq	(%rbx), %rcx
	movq	server+2928(%rip), %rax
	cmpq	%rax, %rcx
	jle	.LBB79_89
# %bb.81:                               #   in Loop: Header=BB79_62 Depth=1
	movq	2136(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB79_89
# %bb.82:                               #   in Loop: Header=BB79_62 Depth=1
	cmpq	%rcx, 2144(%r14)
	jge	.LBB79_89
# %bb.83:                               #   in Loop: Header=BB79_62 Depth=1
	movq	%r12, %rdx
	subq	%rcx, %rdx
	movq	%rax, %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	sarq	%rcx
	cmpq	%rcx, %rdx
	jle	.LBB79_89
# %bb.84:                               #   in Loop: Header=BB79_62 Depth=1
	movl	8(%rbx), %esi
	cmpl	$-1, %esi
	je	.LBB79_86
# %bb.85:                               #   in Loop: Header=BB79_62 Depth=1
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB79_86:                              #   in Loop: Header=BB79_62 Depth=1
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	24(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB79_88
# %bb.87:                               #   in Loop: Header=BB79_62 Depth=1
	movq	$0, 2248(%rax)
.LBB79_88:                              #   in Loop: Header=BB79_62 Depth=1
	movl	8(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	2248(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB79_92
	.p2align	4, 0x90
.LBB79_89:                              #   in Loop: Header=BB79_62 Depth=1
	cmpq	$0, 2136(%r14)
	jne	.LBB79_91
# %bb.90:                               #   in Loop: Header=BB79_62 Depth=1
	movq	2144(%r14), %rax
	movq	%r12, %rcx
	subq	%rax, %rcx
	movq	server+2928(%rip), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	sarq	%rdx
	cmpq	%rdx, %rcx
	jg	.LBB79_60
.LBB79_91:                              #   in Loop: Header=BB79_62 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB79_93
.LBB79_92:                              #   in Loop: Header=BB79_62 Depth=1
	xorl	%ebx, %ebx
.LBB79_93:                              #   in Loop: Header=BB79_62 Depth=1
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB79_96
# %bb.94:                               #   in Loop: Header=BB79_62 Depth=1
	movq	myself(%rip), %rcx
	testb	$1, 48(%rcx)
	je	.LBB79_96
# %bb.95:                               #   in Loop: Header=BB79_62 Depth=1
	cmpq	%r14, 524384(%rax)
	setne	%al
	orb	%al, %r13b
	je	.LBB79_60
	.p2align	4, 0x90
.LBB79_96:                              #   in Loop: Header=BB79_62 Depth=1
	movq	2136(%r14), %rax
	testq	%rax, %rax
	je	.LBB79_61
# %bb.97:                               #   in Loop: Header=BB79_62 Depth=1
	subq	%rax, %r12
	cmpq	server+2928(%rip), %r12
	jle	.LBB79_61
# %bb.98:                               #   in Loop: Header=BB79_62 Depth=1
	testb	$12, 48(%r14)
	jne	.LBB79_61
# %bb.99:                               #   in Loop: Header=BB79_62 Depth=1
	leaq	8(%r14), %rdx
	movl	$.L.str.98, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	orb	$4, 48(%r14)
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB79_61
.LBB79_101:
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
.LBB79_102:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	je	.LBB79_107
# %bb.103:
	cmpq	$0, server+2464(%rip)
	jne	.LBB79_107
# %bb.104:
	movq	2128(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB79_107
# %bb.105:
	testb	$64, 48(%rdi)
	jne	.LBB79_107
# %bb.106:
	movl	2240(%rdi), %esi
	addq	$2192, %rdi             # imm = 0x890
	callq	replicationSetMaster
.LBB79_107:
	movq	server+2944(%rip), %rax
	movq	524376(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB79_113
# %bb.108:
	callq	mstime
	cmpq	%rax, %rbx
	jge	.LBB79_113
# %bb.109:
	movl	$.L.str.93, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB79_112
# %bb.110:
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB79_112
# %bb.111:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
.LBB79_112:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_113:
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	je	.LBB79_122
# %bb.114:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB79_116
# %bb.115:
	cmpl	$0, 524400(%rax)
	je	.LBB79_126
.LBB79_116:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, server+2984(%rip)
	jne	.LBB79_118
# %bb.117:
	callq	clusterHandleSlaveFailover
.LBB79_118:
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, -56(%rbp)         # 4-byte Folded Reload
	jne	.LBB79_122
# %bb.119:
	cmpl	$2, -48(%rbp)           # 4-byte Folded Reload
	jl	.LBB79_122
# %bb.120:
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB79_122
# %bb.121:
	movl	-56(%rbp), %edi         # 4-byte Reload
	callq	clusterHandleSlaveMigration
.LBB79_122:
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	jne	.LBB79_124
# %bb.123:
	movq	server+2944(%rip), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB79_125
.LBB79_124:
	callq	clusterUpdateState
.LBB79_125:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB79_126:
	movq	524392(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB79_116
# %bb.127:
	callq	replicationGetSlaveOffset
	cmpq	%rax, %rbx
	jne	.LBB79_116
# %bb.128:
	movq	server+2944(%rip), %rax
	movl	$1, 524400(%rax)
	movl	$.L.str.94, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB79_116
.LBB79_129:
	testq	%rbx, %rbx
	je	.LBB79_131
# %bb.130:
	cmpq	2144(%rax), %r14
	jle	.LBB79_57
.LBB79_131:
	movq	%rax, %rbx
	jmp	.LBB79_57
.Lfunc_end79:
	.size	clusterCron, .Lfunc_end79-clusterCron
                                        # -- End function
	.globl	clusterBeforeSleep      # -- Begin function clusterBeforeSleep
	.p2align	4, 0x90
	.type	clusterBeforeSleep,@function
clusterBeforeSleep:                     # @clusterBeforeSleep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+2944(%rip), %rax
	movl	524416(%rax), %edi
	testb	$1, %dil
	je	.LBB80_2
# %bb.1:
	callq	clusterHandleSlaveFailover
	movq	server+2944(%rip), %rax
	movl	524416(%rax), %edi
.LBB80_2:
	addq	$524416, %rax           # imm = 0x80080
	testb	$2, %dil
	je	.LBB80_4
# %bb.3:
	callq	clusterUpdateState
	movq	server+2944(%rip), %rax
	movl	524416(%rax), %edi
	addq	$524416, %rax           # imm = 0x80080
.LBB80_4:
	testb	$4, %dil
	je	.LBB80_7
# %bb.5:
	andl	$8, %edi
	callq	clusterSaveConfig
	cmpl	$-1, %eax
	je	.LBB80_8
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$524416, %eax           # imm = 0x80080
	addq	server+2944(%rip), %rax
.LBB80_7:
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB80_8:
	movl	$.L.str.22, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end80:
	.size	clusterBeforeSleep, .Lfunc_end80-clusterBeforeSleep
                                        # -- End function
	.globl	bitmapSetBit            # -- Begin function bitmapSetBit
	.p2align	4, 0x90
	.type	bitmapSetBit,@function
bitmapSetBit:                           # @bitmapSetBit
# %bb.0:
	movl	%esi, %ecx
	leal	7(%rcx), %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	sarl	$3, %eax
	cltq
	andb	$7, %cl
	movl	$1, %edx
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %edx
	orb	%dl, (%rdi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end81:
	.size	bitmapSetBit, .Lfunc_end81-bitmapSetBit
                                        # -- End function
	.globl	bitmapClearBit          # -- Begin function bitmapClearBit
	.p2align	4, 0x90
	.type	bitmapClearBit,@function
bitmapClearBit:                         # @bitmapClearBit
# %bb.0:
	movl	%esi, %ecx
	leal	7(%rcx), %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	sarl	$3, %eax
	cltq
	andb	$7, %cl
	movl	$1, %edx
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %edx
	notb	%dl
	andb	%dl, (%rdi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end82:
	.size	bitmapClearBit, .Lfunc_end82-bitmapClearBit
                                        # -- End function
	.globl	clusterMastersHaveSlaves # -- Begin function clusterMastersHaveSlaves
	.p2align	4, 0x90
	.type	clusterMastersHaveSlaves,@function
clusterMastersHaveSlaves:               # @clusterMastersHaveSlaves
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	xorl	%ebx, %ebx
	jmp	.LBB83_1
	.p2align	4, 0x90
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	movq	%r14, %rdi
	callq	dictNext
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB83_5
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	movq	8(%rax), %rax
	testb	$2, 48(%rax)
	jne	.LBB83_4
# %bb.3:                                #   in Loop: Header=BB83_1 Depth=1
	addl	2116(%rax), %ebx
	jmp	.LBB83_4
.LBB83_5:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	xorl	%eax, %eax
	testl	%ebx, %ebx
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end83:
	.size	clusterMastersHaveSlaves, .Lfunc_end83-clusterMastersHaveSlaves
                                        # -- End function
	.globl	clusterNodeSetSlotBit   # -- Begin function clusterNodeSetSlotBit
	.p2align	4, 0x90
	.type	clusterNodeSetSlotBit,@function
clusterNodeSetSlotBit:                  # @clusterNodeSetSlotBit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
                                        # kill: def $esi killed $esi def $rsi
	leal	7(%rsi), %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	sarl	$3, %eax
	cltq
	movzbl	64(%rdi,%rax), %ecx
	andb	$7, %sil
	movzbl	%sil, %edx
	movl	%ecx, %esi
	btsl	%edx, %esi
	xorl	%r15d, %r15d
	btl	%edx, %ecx
	setb	%r15b
	movl	$42, __A_VARIABLE(%rip)
	movb	%sil, 64(%rdi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB84_9
# %bb.1:
	movq	%rdi, %r14
	movl	2112(%rdi), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 2112(%rdi)
	testl	%eax, %eax
	je	.LBB84_2
.LBB84_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB84_2:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r12
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB84_10
# %bb.3:                                # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB84_4
	.p2align	4, 0x90
.LBB84_6:                               #   in Loop: Header=BB84_4 Depth=1
	movq	%r12, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB84_7
.LBB84_4:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	testb	$2, 48(%rax)
	jne	.LBB84_6
# %bb.5:                                #   in Loop: Header=BB84_4 Depth=1
	addl	2116(%rax), %ebx
	jmp	.LBB84_6
.LBB84_7:
	movq	%r12, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB84_9
# %bb.8:
	orb	$1, 49(%r14)
	jmp	.LBB84_9
.LBB84_10:
	movq	%r12, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB84_9
.Lfunc_end84:
	.size	clusterNodeSetSlotBit, .Lfunc_end84-clusterNodeSetSlotBit
                                        # -- End function
	.globl	clusterNodeClearSlotBit # -- Begin function clusterNodeClearSlotBit
	.p2align	4, 0x90
	.type	clusterNodeClearSlotBit,@function
clusterNodeClearSlotBit:                # @clusterNodeClearSlotBit
# %bb.0:
	movl	%esi, %ecx
	leal	7(%rcx), %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movzbl	64(%rdi,%rdx), %r8d
	andb	$7, %cl
	movl	$1, %esi
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %esi
	movl	%esi, %ecx
	notb	%cl
	andb	%r8b, %cl
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 64(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %esi
	setne	%al
	je	.LBB85_2
# %bb.1:
	addl	$-1, 2112(%rdi)
.LBB85_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end85:
	.size	clusterNodeClearSlotBit, .Lfunc_end85-clusterNodeClearSlotBit
                                        # -- End function
	.globl	verifyClusterConfigWithData # -- Begin function verifyClusterConfigWithData
	.p2align	4, 0x90
	.type	verifyClusterConfigWithData,@function
verifyClusterConfigWithData:            # @verifyClusterConfigWithData
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	xorl	%ebx, %ebx
	testb	$4, server+2984(%rip)
	jne	.LBB86_20
# %bb.1:
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	jne	.LBB86_20
# %bb.2:
	movslq	server+1792(%rip), %rax
	cmpq	$1, %rax
	jle	.LBB86_3
# %bb.11:
	movq	server+48(%rip), %rcx
	addq	$64, %rcx
	movl	$1, %edx
	.p2align	4, 0x90
.LBB86_13:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rsi
	movq	40(%rsi), %rdi
	addq	72(%rsi), %rdi
	jne	.LBB86_14
# %bb.12:                               #   in Loop: Header=BB86_13 Depth=1
	addq	$1, %rdx
	addq	$64, %rcx
	cmpq	%rax, %rdx
	jl	.LBB86_13
.LBB86_3:
	movq	$-16384, %rbx           # imm = 0xC000
	xorl	%r12d, %r12d
	jmp	.LBB86_4
.LBB86_15:                              #   in Loop: Header=BB86_4 Depth=1
	movl	$.L.str.103, %esi
	movl	$3, %edi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movq	393256(%rax,%rbx,8), %rcx
	movq	%rcx, 262184(%rax,%rbx,8)
	.p2align	4, 0x90
.LBB86_16:                              #   in Loop: Header=BB86_4 Depth=1
	incq	%rbx
	je	.LBB86_17
.LBB86_4:                               # =>This Inner Loop Header: Depth=1
	leaq	16384(%rbx), %r15
	movl	%r15d, %edi
	callq	countKeysInSlot
	testl	%eax, %eax
	je	.LBB86_16
# %bb.5:                                #   in Loop: Header=BB86_4 Depth=1
	movq	server+2944(%rip), %rcx
	movq	393256(%rcx,%rbx,8), %rax
	cmpq	myself(%rip), %rax
	je	.LBB86_16
# %bb.6:                                #   in Loop: Header=BB86_4 Depth=1
	cmpq	$0, 262184(%rcx,%rbx,8)
	jne	.LBB86_16
# %bb.7:                                #   in Loop: Header=BB86_4 Depth=1
	addl	$1, %r12d
	testq	%rax, %rax
	jne	.LBB86_15
# %bb.8:                                #   in Loop: Header=BB86_4 Depth=1
	movl	$.L.str.102, %esi
	movl	$3, %edi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	cmpq	$0, 393256(%rax,%rbx,8)
	jne	.LBB86_10
# %bb.9:                                #   in Loop: Header=BB86_4 Depth=1
	movq	myself(%rip), %r14
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r14, 393256(%rax,%rbx,8)
.LBB86_10:                              #   in Loop: Header=BB86_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB86_16
.LBB86_17:
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	je	.LBB86_20
# %bb.18:
	movl	$1, %edi
	callq	clusterSaveConfig
	cmpl	$-1, %eax
	je	.LBB86_21
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB86_20
.LBB86_14:
	movl	$-1, %ebx
.LBB86_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB86_21:
	movl	$.L.str.22, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end86:
	.size	verifyClusterConfigWithData, .Lfunc_end86-verifyClusterConfigWithData
                                        # -- End function
	.globl	clusterGenNodeDescription # -- Begin function clusterGenNodeDescription
	.p2align	4, 0x90
	.type	clusterGenNodeDescription,@function
clusterGenNodeDescription:              # @clusterGenNodeDescription
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	sdsempty
	leaq	8(%r14), %rdx
	leaq	2192(%r14), %rcx
	movl	2240(%r14), %r8d
	movl	2244(%r14), %r9d
	movl	$.L.str.107, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movzwl	48(%r14), %esi
	movq	%rax, %rdi
	callq	representClusterNodeFlags
	movq	2128(%r14), %rdx
	testq	%rdx, %rdx
	je	.LBB87_2
# %bb.1:
	addq	$8, %rdx
	movl	$.L.str.108, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB87_3
.LBB87_2:
	movl	$.L.str.109, %esi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	sdscatlen
.LBB87_3:
	movq	2136(%r14), %rdx
	movq	2144(%r14), %rcx
	movq	56(%r14), %r8
	movl	$.L.str.111, %r9d
	cmpq	$0, 2248(%r14)
	jne	.LBB87_5
# %bb.4:
	testb	$16, 48(%r14)
	movl	$.L.str.112, %esi
	movl	$.L.str.111, %r9d
	cmoveq	%rsi, %r9
.LBB87_5:
	movl	$.L.str.110, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$-1, %edx
	xorl	%ebx, %ebx
	jmp	.LBB87_6
.LBB87_11:                              #   in Loop: Header=BB87_6 Depth=1
	movl	$.L.str.114, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB87_12:                              #   in Loop: Header=BB87_6 Depth=1
	movl	$-1, %edx
.LBB87_13:                              #   in Loop: Header=BB87_6 Depth=1
	leal	1(%rbx), %ecx
	cmpl	$16383, %ebx            # imm = 0x3FFF
	movl	%ecx, %ebx
	jge	.LBB87_14
.LBB87_6:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %r8d
	leal	7(%rbx), %ecx
	testl	%ebx, %ebx
	cmovnsl	%ebx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	64(%r14,%rcx), %edi
	movl	%ebx, %ecx
	andb	$7, %cl
	movl	$1, %esi
	shll	%cl, %esi
	andl	%edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%ebx, %edx
	cmpl	$-1, %r8d
	cmovnel	%r8d, %edx
	cmpl	$-1, %edx
	je	.LBB87_12
# %bb.7:                                #   in Loop: Header=BB87_6 Depth=1
	cmpl	$16383, %ebx            # imm = 0x3FFF
	je	.LBB87_9
# %bb.8:                                #   in Loop: Header=BB87_6 Depth=1
	testl	%esi, %esi
	jne	.LBB87_13
.LBB87_9:                               #   in Loop: Header=BB87_6 Depth=1
	cmpl	$16383, %ebx            # imm = 0x3FFF
	sete	%dil
	testl	%esi, %esi
	setne	%cl
	andb	%dil, %cl
	movzbl	%cl, %ecx
	movl	%ebx, %esi
	addl	%ecx, %ebx
	addl	%esi, %ecx
	addl	$-1, %ecx
	cmpl	%ecx, %edx
	jne	.LBB87_11
# %bb.10:                               #   in Loop: Header=BB87_6 Depth=1
	movl	$.L.str.113, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB87_12
.LBB87_14:
	testb	$16, 48(%r14)
	jne	.LBB87_15
.LBB87_20:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB87_15:                              # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB87_16
	.p2align	4, 0x90
.LBB87_18:                              #   in Loop: Header=BB87_16 Depth=1
	addq	$8, %rcx
	movq	%rax, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB87_19:                              #   in Loop: Header=BB87_16 Depth=1
	addq	$1, %rbx
	cmpq	$16384, %rbx            # imm = 0x4000
	je	.LBB87_20
.LBB87_16:                              # =>This Inner Loop Header: Depth=1
	movq	server+2944(%rip), %rdx
	movq	40(%rdx,%rbx,8), %rcx
	movl	$.L.str.115, %esi
	testq	%rcx, %rcx
	jne	.LBB87_18
# %bb.17:                               #   in Loop: Header=BB87_16 Depth=1
	movq	131112(%rdx,%rbx,8), %rcx
	movl	$.L.str.116, %esi
	testq	%rcx, %rcx
	jne	.LBB87_18
	jmp	.LBB87_19
.Lfunc_end87:
	.size	clusterGenNodeDescription, .Lfunc_end87-clusterGenNodeDescription
                                        # -- End function
	.globl	clusterGetMessageTypeString # -- Begin function clusterGetMessageTypeString
	.p2align	4, 0x90
	.type	clusterGetMessageTypeString,@function
clusterGetMessageTypeString:            # @clusterGetMessageTypeString
# %bb.0:
	movl	$.L.str.125, %eax
	cmpl	$9, %edi
	ja	.LBB88_2
# %bb.1:
	movslq	%edi, %rax
	movq	.Lswitch.table.clusterCommand.284(,%rax,8), %rax
.LBB88_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end88:
	.size	clusterGetMessageTypeString, .Lfunc_end88-clusterGetMessageTypeString
                                        # -- End function
	.globl	getSlotOrReply          # -- Begin function getSlotOrReply
	.p2align	4, 0x90
	.type	getSlotOrReply,@function
getSlotOrReply:                         # @getSlotOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rax
	movq	%rdi, %rbx
	leaq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	getLongLongFromObject
	testl	%eax, %eax
	jne	.LBB89_2
# %bb.1:
	movq	-16(%rbp), %rax
	cmpq	$16384, %rax            # imm = 0x4000
	jb	.LBB89_3
.LBB89_2:
	movl	$.L.str.126, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	movl	$-1, %eax
.LBB89_3:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end89:
	.size	getSlotOrReply, .Lfunc_end89-getSlotOrReply
                                        # -- End function
	.globl	clusterReplyMultiBulkSlots # -- Begin function clusterReplyMultiBulkSlots
	.p2align	4, 0x90
	.type	clusterReplyMultiBulkSlots,@function
clusterReplyMultiBulkSlots:             # @clusterReplyMultiBulkSlots
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r15
	callq	addDeferredMultiBulkLength
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	dictNext
	xorl	%ebx, %ebx
	jmp	.LBB90_1
	.p2align	4, 0x90
.LBB90_19:                              #   in Loop: Header=BB90_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictNext
.LBB90_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_5 Depth 2
                                        #       Child Loop BB90_13 Depth 3
	testq	%rax, %rax
	je	.LBB90_20
# %bb.2:                                #   in Loop: Header=BB90_1 Depth=1
	movq	8(%rax), %r12
	testb	$1, 48(%r12)
	je	.LBB90_19
# %bb.3:                                #   in Loop: Header=BB90_1 Depth=1
	cmpl	$0, 2112(%r12)
	je	.LBB90_19
# %bb.4:                                #   in Loop: Header=BB90_1 Depth=1
	leaq	2192(%r12), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	8(%r12), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$-1, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB90_5
	.p2align	4, 0x90
.LBB90_16:                              #   in Loop: Header=BB90_5 Depth=2
	addl	-48(%rbp), %r14d        # 4-byte Folded Reload
	movslq	%r13d, %rdx
	movq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	setDeferredMultiBulkLength
	movq	-104(%rbp), %rbx        # 8-byte Reload
	addl	$1, %ebx
.LBB90_17:                              #   in Loop: Header=BB90_5 Depth=2
	movl	$-1, %r13d
.LBB90_18:                              #   in Loop: Header=BB90_5 Depth=2
	leal	1(%r14), %eax
	cmpl	$16383, %r14d           # imm = 0x3FFF
	movl	%eax, %r14d
	jge	.LBB90_19
.LBB90_5:                               #   Parent Loop BB90_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB90_13 Depth 3
	movl	%r13d, %edx
	leal	7(%r14), %eax
	testl	%r14d, %r14d
	cmovnsl	%r14d, %eax
	sarl	$3, %eax
	cltq
	movzbl	64(%r12,%rax), %esi
	movl	%r14d, %ecx
	andb	$7, %cl
	movl	$1, %eax
	shll	%cl, %eax
	andl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%r14d, %r13d
	cmpl	$-1, %edx
	cmovnel	%edx, %r13d
	cmpl	$-1, %r13d
	je	.LBB90_17
# %bb.6:                                #   in Loop: Header=BB90_5 Depth=2
	cmpl	$16383, %r14d           # imm = 0x3FFF
	je	.LBB90_8
# %bb.7:                                #   in Loop: Header=BB90_5 Depth=2
	testl	%eax, %eax
	jne	.LBB90_18
.LBB90_8:                               #   in Loop: Header=BB90_5 Depth=2
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	cmpl	$16383, %r14d           # imm = 0x3FFF
	sete	-48(%rbp)               # 1-byte Folded Spill
	testl	%eax, %eax
	setne	%bl
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -96(%rbp)         # 8-byte Spill
	andb	-48(%rbp), %bl          # 1-byte Folded Reload
	movzbl	%bl, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leal	(%r14,%rax), %ebx
	addl	$-1, %ebx
	movslq	%r13d, %rsi
	movq	%r15, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	addReplyLongLong
	cmpl	%ebx, %r13d
	jne	.LBB90_10
# %bb.9:                                #   in Loop: Header=BB90_5 Depth=2
	movq	%r15, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB90_11
.LBB90_10:                              #   in Loop: Header=BB90_5 Depth=2
	movslq	%ebx, %rsi
	movq	%r15, %rdi
.LBB90_11:                              #   in Loop: Header=BB90_5 Depth=2
	callq	addReplyLongLong
	movl	$3, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movq	%r15, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	addReplyBulkCString
	movslq	2240(%r12), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$40, %edx
	movq	%r15, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	addReplyBulkCBuffer
	movl	2116(%r12), %eax
	movl	$3, %r13d
	testl	%eax, %eax
	jle	.LBB90_16
# %bb.12:                               # %.preheader
                                        #   in Loop: Header=BB90_5 Depth=2
	xorl	%ebx, %ebx
	jmp	.LBB90_13
	.p2align	4, 0x90
.LBB90_15:                              #   in Loop: Header=BB90_13 Depth=3
	addq	$1, %rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jge	.LBB90_16
.LBB90_13:                              #   Parent Loop BB90_1 Depth=1
                                        #     Parent Loop BB90_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	2120(%r12), %rcx
	movq	(%rcx,%rbx,8), %rcx
	testb	$8, 48(%rcx)
	jne	.LBB90_15
# %bb.14:                               #   in Loop: Header=BB90_13 Depth=3
	movl	$3, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movq	2120(%r12), %rax
	movq	(%rax,%rbx,8), %rsi
	movl	$2192, %eax             # imm = 0x890
	addq	%rax, %rsi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movq	2120(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movslq	2240(%rax), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movq	2120(%r12), %rax
	movq	(%rax,%rbx,8), %rsi
	addq	$8, %rsi
	movl	$40, %edx
	movq	%r15, %rdi
	callq	addReplyBulkCBuffer
	addl	$1, %r13d
	movl	2116(%r12), %eax
	jmp	.LBB90_15
.LBB90_20:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictReleaseIterator
	movslq	%ebx, %rdx
	movq	%r15, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	setDeferredMultiBulkLength
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end90:
	.size	clusterReplyMultiBulkSlots, .Lfunc_end90-clusterReplyMultiBulkSlots
                                        # -- End function
	.globl	clusterCommand          # -- Begin function clusterCommand
	.p2align	4, 0x90
	.type	clusterCommand,@function
clusterCommand:                         # @clusterCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4376, %rsp             # imm = 0x1118
	movq	%rdi, %r14
	cmpl	$0, server+2924(%rip)
	je	.LBB91_9
# %bb.1:
	movl	64(%r14), %r12d
	movq	72(%r14), %rbx
	movq	8(%rbx), %rax
	movq	8(%rax), %r15
	cmpl	$2, %r12d
	jne	.LBB91_3
# %bb.2:
	movl	$.L.str.128, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB91_31
.LBB91_3:
	movl	$.L.str.118, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	%r12d, %r13d
	andl	$-2, %r13d
	cmpl	$4, %r13d
	jne	.LBB91_10
# %bb.4:
	testl	%eax, %eax
	jne	.LBB91_10
# %bb.5:
	movq	24(%rbx), %rdi
	leaq	-4416(%rbp), %rsi
	callq	getLongLongFromObject
	testl	%eax, %eax
	je	.LBB91_32
# %bb.6:
	movq	72(%r14), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.151, %esi
.LBB91_7:
	movq	%r14, %rdi
.LBB91_8:
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB91_75
.LBB91_9:
	movl	$.L.str.127, %esi
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB91_75
.LBB91_10:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%r14, -48(%rbp)         # 8-byte Spill
	cmpl	$2, %r12d
	setne	%r14b
	movl	$.L.str.154, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB91_13
# %bb.11:
	testb	%r14b, %r14b
	jne	.LBB91_13
# %bb.12:
	xorl	%edi, %edi
	callq	clusterGenNodesDescription
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %rbx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	callq	decrRefCount
	jmp	.LBB91_75
.LBB91_13:
	movl	$.L.str.155, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r14b, %al
	je	.LBB91_35
# %bb.14:
	movl	$.L.str.156, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r14b, %al
	je	.LBB91_49
# %bb.15:
	movl	$.L.str.157, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r14b, %al
	je	.LBB91_54
# %bb.16:
	movl	$.L.str.159, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB91_61
# %bb.17:
	movl	$.L.str.160, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r12d
	jl	.LBB91_62
# %bb.18:
	testl	%eax, %eax
	jne	.LBB91_62
.LBB91_19:
	movl	$16384, %edi            # imm = 0x4000
	callq	zmalloc
	movq	%rax, %r12
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	72(%r13), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.160, %esi
	callq	strcasecmp
	movl	%eax, %r15d
	movl	$16384, %edx            # imm = 0x4000
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	memset
	cmpl	$2, 64(%r13)
	jle	.LBB91_30
# %bb.20:
	movl	$2, %ebx
	leaq	-4416(%rbp), %r14
.LBB91_21:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r13), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	%r14, %rsi
	callq	getLongLongFromObject
	testl	%eax, %eax
	jne	.LBB91_113
# %bb.22:                               #   in Loop: Header=BB91_21 Depth=1
	movq	-4416(%rbp), %rdx
	cmpq	$16384, %rdx            # imm = 0x4000
	jae	.LBB91_113
# %bb.23:                               #   in Loop: Header=BB91_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edx
	je	.LBB91_136
# %bb.24:                               #   in Loop: Header=BB91_21 Depth=1
	movq	server+2944(%rip), %rcx
	movslq	%edx, %rax
	movq	262184(%rcx,%rax,8), %rcx
	testl	%r15d, %r15d
	je	.LBB91_27
# %bb.25:                               #   in Loop: Header=BB91_21 Depth=1
	testq	%rcx, %rcx
	je	.LBB91_28
	jmp	.LBB91_26
.LBB91_27:                              #   in Loop: Header=BB91_21 Depth=1
	testq	%rcx, %rcx
	je	.LBB91_134
.LBB91_28:                              #   in Loop: Header=BB91_21 Depth=1
	movzbl	(%r12,%rax), %ecx
	leal	1(%rcx), %esi
	movb	%sil, (%r12,%rax)
	cmpb	$1, %cl
	je	.LBB91_114
# %bb.29:                               #   in Loop: Header=BB91_21 Depth=1
	addq	$1, %rbx
	movq	-48(%rbp), %r13         # 8-byte Reload
	movslq	64(%r13), %rax
	cmpq	%rax, %rbx
	jl	.LBB91_21
.LBB91_30:
	xorl	%ebx, %ebx
	movq	%r13, %r14
	jmp	.LBB91_40
.LBB91_31:
	leaq	-4416(%rbp), %rbx
	movl	$.LclusterCommand.help, %esi
	movl	$184, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyHelp
	jmp	.LBB91_75
.LBB91_32:
	cmpl	$5, 64(%r14)
	jne	.LBB91_36
# %bb.33:
	movq	72(%r14), %rax
	movq	32(%rax), %rdi
	leaq	-64(%rbp), %rsi
	callq	getLongLongFromObject
	testl	%eax, %eax
	je	.LBB91_50
# %bb.34:
	movq	72(%r14), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.152, %esi
	jmp	.LBB91_7
.LBB91_35:
	movq	myself(%rip), %rsi
	addq	$8, %rsi
	movl	$40, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyBulkCBuffer
	jmp	.LBB91_75
.LBB91_36:
	movq	-4416(%rbp), %rsi
	leaq	10000(%rsi), %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB91_51
.LBB91_37:                              #   in Loop: Header=BB91_40 Depth=1
	addl	$-1, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%rbx,8)
.LBB91_38:                              #   in Loop: Header=BB91_40 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB91_39:                              #   in Loop: Header=BB91_40 Depth=1
	addq	$1, %rbx
	cmpq	$16384, %rbx            # imm = 0x4000
	jae	.LBB91_72
.LBB91_40:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r12,%rbx)
	je	.LBB91_39
# %bb.41:                               #   in Loop: Header=BB91_40 Depth=1
	movq	server+2944(%rip), %rax
	cmpq	$0, 131112(%rax,%rbx,8)
	je	.LBB91_43
# %bb.42:                               #   in Loop: Header=BB91_40 Depth=1
	movq	$0, 131112(%rax,%rbx,8)
.LBB91_43:                              #   in Loop: Header=BB91_40 Depth=1
	testl	%r15d, %r15d
	je	.LBB91_46
# %bb.44:                               #   in Loop: Header=BB91_40 Depth=1
	movq	server+2944(%rip), %rax
	cmpq	$0, 262184(%rax,%rbx,8)
	jne	.LBB91_285
# %bb.45:                               #   in Loop: Header=BB91_40 Depth=1
	movq	myself(%rip), %r13
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r13, 262184(%rax,%rbx,8)
	jmp	.LBB91_38
.LBB91_46:                              #   in Loop: Header=BB91_40 Depth=1
	movq	server+2944(%rip), %rax
	movq	262184(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB91_285
# %bb.47:                               #   in Loop: Header=BB91_40 Depth=1
	movl	%ebx, %edx
	shrl	$3, %edx
	andl	$8191, %edx             # imm = 0x1FFF
	movl	%ebx, %ecx
	andb	$7, %cl
	movl	$1, %esi
	shll	%cl, %esi
	movzbl	64(%rax,%rdx), %edi
	movzbl	%cl, %ecx
	notb	%sil
	andb	%dil, %sil
	btl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	movb	%sil, 64(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB91_37
.LBB91_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB91_49:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	clusterReplyMultiBulkSlots
	jmp	.LBB91_75
.LBB91_50:
	movq	-4416(%rbp), %rsi
	movq	-64(%rbp), %rdx
.LBB91_51:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	clusterStartHandshake
	testl	%eax, %eax
	jne	.LBB91_73
# %bb.52:
	callq	__errno
	cmpl	$22, (%rax)
	jne	.LBB91_73
# %bb.53:
	movq	72(%r14), %rax
	movq	16(%rax), %rcx
	movq	24(%rax), %rax
	movq	8(%rcx), %rdx
	movq	8(%rax), %rcx
	movl	$.L.str.153, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB91_75
.LBB91_54:
	movq	server+48(%rip), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	jne	.LBB91_59
# %bb.55:
	movq	myself(%rip), %rdi
	callq	clusterDelNodeSlots
.LBB91_56:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
.LBB91_57:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_58:
	movq	shared+8(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB91_74
.LBB91_59:
	movl	$.L.str.158, %esi
.LBB91_60:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	jmp	.LBB91_75
.LBB91_61:
	cmpl	$3, %r12d
	jge	.LBB91_19
.LBB91_62:
	movl	$.L.str.165, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$4, %r12d
	jl	.LBB91_76
# %bb.63:
	testl	%eax, %eax
	jne	.LBB91_76
# %bb.64:
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	jne	.LBB91_84
# %bb.65:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	leaq	-4416(%rbp), %rsi
	callq	getLongLongFromObject
	testl	%eax, %eax
	jne	.LBB91_86
# %bb.66:
	movq	-4416(%rbp), %r12
	cmpq	$16384, %r12            # imm = 0x4000
	jae	.LBB91_86
# %bb.67:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB91_75
# %bb.68:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %r14
	movq	24(%r14), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.167, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB91_115
# %bb.69:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$5, 64(%rax)
	jne	.LBB91_115
# %bb.70:
	movq	server+2944(%rip), %rax
	movslq	%r12d, %rbx
	movq	262184(%rax,%rbx,8), %rax
	cmpq	myself(%rip), %rax
	je	.LBB91_170
# %bb.71:
	movl	$.L.str.168, %esi
	jmp	.LBB91_180
.LBB91_72:
	movq	%r12, %rdi
	callq	zfree
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_73:
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
.LBB91_74:
	callq	addReply
.LBB91_75:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4376, %rsp             # imm = 0x1118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB91_76:
	movl	$.L.str.178, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r14b, %al
	je	.LBB91_85
# %bb.77:
	movl	$.L.str.182, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r14b, %al
	je	.LBB91_87
# %bb.78:
	movl	$.L.str.190, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r14b, %al
	je	.LBB91_121
# %bb.79:
	movl	$.L.str.192, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r12d
	movq	-48(%rbp), %r14         # 8-byte Reload
	jne	.LBB91_138
# %bb.80:
	testl	%eax, %eax
	jne	.LBB91_138
# %bb.81:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB91_177
# %bb.82:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI91_1(,%rax,8)
.LBB91_83:
	shrq	$3, %rsi
	jmp	.LBB91_178
.LBB91_84:
	movl	$.L.str.166, %esi
	jmp	.LBB91_60
.LBB91_85:
	callq	clusterBumpConfigEpochWithoutConsensus
	movl	%eax, %ebx
	callq	sdsempty
	testl	%ebx, %ebx
	movl	$.L.str.180, %ecx
	movl	$.L.str.181, %edx
	cmoveq	%rcx, %rdx
	movq	myself(%rip), %rcx
	movq	56(%rcx), %rcx
	movl	$.L.str.179, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB91_75
.LBB91_86:
	movl	$.L.str.126, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_75
.LBB91_87:
	xorl	%eax, %eax
	movq	server+2944(%rip), %rcx
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	jmp	.LBB91_90
.LBB91_88:                              #   in Loop: Header=BB91_90 Depth=1
	addl	$1, %r14d
.LBB91_89:                              #   in Loop: Header=BB91_90 Depth=1
	addq	$1, %rax
	cmpq	$16384, %rax            # imm = 0x4000
	je	.LBB91_95
.LBB91_90:                              # =>This Inner Loop Header: Depth=1
	movq	262184(%rcx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB91_89
# %bb.91:                               #   in Loop: Header=BB91_90 Depth=1
	addl	$1, %ebx
	movl	48(%rdx), %edx
	testb	$8, %dl
	jne	.LBB91_88
# %bb.92:                               #   in Loop: Header=BB91_90 Depth=1
	testb	$4, %dl
	jne	.LBB91_94
# %bb.93:                               #   in Loop: Header=BB91_90 Depth=1
	addl	$1, %r15d
	jmp	.LBB91_89
.LBB91_94:                              #   in Loop: Header=BB91_90 Depth=1
	addl	$1, %r12d
	jmp	.LBB91_89
.LBB91_95:
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	je	.LBB91_97
# %bb.96:
	movq	2128(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB91_98
.LBB91_97:
	movq	%rax, %rcx
.LBB91_98:
	movq	56(%rcx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	sdsempty
	movq	server+2944(%rip), %r10
	movslq	16(%r10), %rcx
	movq	.LclusterCommand.statestr(,%rcx,8), %rdx
	movq	24(%r10), %rcx
	movq	72(%rcx), %r11
	addq	40(%rcx), %r11
	movl	20(%r10), %r13d
	subq	$8, %rsp
	movl	$.L.str.184, %esi
	movq	%rax, %rdi
	movl	%ebx, %ecx
	movl	%r15d, %r8d
	movl	%r12d, %r9d
	movl	$0, %eax
	pushq	-56(%rbp)               # 8-byte Folded Reload
	pushq	8(%r10)
	pushq	%r13
	pushq	%r11
	pushq	%r14
	callq	sdscatprintf
	addq	$48, %rsp
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB91_101
.LBB91_99:                              #   in Loop: Header=BB91_101 Depth=1
	addq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.185, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB91_100:                             #   in Loop: Header=BB91_101 Depth=1
	addq	$1, %rbx
	cmpq	$10, %rbx
	je	.LBB91_104
.LBB91_101:                             # =>This Inner Loop Header: Depth=1
	movq	server+2944(%rip), %rcx
	movq	524424(%rcx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB91_100
# %bb.102:                              #   in Loop: Header=BB91_101 Depth=1
	movl	%ebx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movl	$.L.str.125, %edx
	cmpl	$9, %esi
	ja	.LBB91_99
# %bb.103:                              #   in Loop: Header=BB91_101 Depth=1
	movq	%rbx, %rdx
	shlq	$33, %rdx
	sarq	$33, %rdx
	movq	.Lswitch.table.clusterCommand.284(,%rdx,8), %rdx
	jmp	.LBB91_99
.LBB91_104:
	movl	$.L.str.186, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB91_107
.LBB91_105:                             #   in Loop: Header=BB91_107 Depth=1
	addq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.187, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB91_106:                             #   in Loop: Header=BB91_107 Depth=1
	addq	$1, %rbx
	cmpq	$10, %rbx
	je	.LBB91_110
.LBB91_107:                             # =>This Inner Loop Header: Depth=1
	movq	server+2944(%rip), %rcx
	movq	524504(%rcx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB91_106
# %bb.108:                              #   in Loop: Header=BB91_107 Depth=1
	movl	%ebx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movl	$.L.str.125, %edx
	cmpl	$9, %esi
	ja	.LBB91_105
# %bb.109:                              #   in Loop: Header=BB91_107 Depth=1
	movq	%rbx, %rdx
	shlq	$33, %rdx
	sarq	$33, %rdx
	movq	.Lswitch.table.clusterCommand.284(,%rdx,8), %rdx
	jmp	.LBB91_105
.LBB91_110:
	xorl	%r15d, %r15d
	movl	$.L.str.188, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r14
	callq	sdsempty
	movzbl	-1(%r14), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB91_148
# %bb.111:
	movl	%ecx, %edx
	andl	$7, %edx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmpq	*.LJTI91_0(,%rdx,8)
.LBB91_112:
	shrq	$3, %rcx
	movq	%rcx, %r15
	jmp	.LBB91_149
.LBB91_113:
	movl	$.L.str.126, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_136
.LBB91_114:
	movl	$.L.str.163, %esi
	jmp	.LBB91_135
.LBB91_115:
	movl	$.L.str.170, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB91_123
# %bb.116:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$5, 64(%rax)
	jne	.LBB91_123
# %bb.117:
	movq	server+2944(%rip), %rax
	movslq	%r12d, %r13
	movq	262184(%rax,%r13,8), %rax
	cmpq	myself(%rip), %rax
	je	.LBB91_179
# %bb.118:
	movq	32(%r14), %rax
	movq	8(%rax), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	je	.LBB91_204
# %bb.119:
	movq	8(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_205
# %bb.120:
	movq	server+2944(%rip), %rcx
	movq	%rax, 131112(%rcx,%r13,8)
	jmp	.LBB91_56
.LBB91_121:
	movl	$1, %edi
	callq	clusterSaveConfig
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB91_143
# %bb.122:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.191, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	jmp	.LBB91_8
.LBB91_26:
	movl	$.L.str.162, %esi
	jmp	.LBB91_135
.LBB91_123:
	movl	$.L.str.172, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB91_126
# %bb.124:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, 64(%rax)
	jne	.LBB91_126
# %bb.125:
	movq	server+2944(%rip), %rax
	movslq	%r12d, %rcx
	movq	$0, 131112(%rax,%rcx,8)
	movq	server+2944(%rip), %rax
	movq	$0, 40(%rax,%rcx,8)
	jmp	.LBB91_56
.LBB91_126:
	movl	$.L.str.173, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB91_137
# %bb.127:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$5, 64(%rax)
	jne	.LBB91_137
# %bb.128:
	movq	32(%r14), %rax
	movq	8(%rax), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	je	.LBB91_189
# %bb.129:
	movq	8(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_190
# %bb.130:
	movq	server+2944(%rip), %rcx
	movslq	%r12d, %rbx
	movq	myself(%rip), %rax
	cmpq	%rax, 262184(%rcx,%rbx,8)
	jne	.LBB91_193
# %bb.131:
	cmpq	%rax, %r15
	je	.LBB91_193
# %bb.132:
	movl	%r12d, %edi
	callq	countKeysInSlot
	testl	%eax, %eax
	je	.LBB91_193
# %bb.133:
	movl	$.L.str.175, %esi
	jmp	.LBB91_180
.LBB91_134:
	movl	$.L.str.161, %esi
.LBB91_135:
	movq	-48(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB91_136:
	movq	%r12, %rdi
	callq	zfree
	jmp	.LBB91_75
.LBB91_137:
	movl	$.L.str.177, %esi
	jmp	.LBB91_60
.LBB91_138:
	movl	$.L.str.193, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r12d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB91_150
# %bb.139:
	testl	%eax, %eax
	jne	.LBB91_150
# %bb.140:
	movq	16(%rbx), %rsi
	leaq	-4416(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB91_75
# %bb.141:
	movq	-4416(%rbp), %rdi
	cmpq	$16384, %rdi            # imm = 0x4000
	jb	.LBB91_191
# %bb.142:
	movl	$.L.str.194, %esi
	jmp	.LBB91_60
.LBB91_143:
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	jmp	.LBB91_74
.LBB91_144:
	movzbl	-3(%r14), %r15d
	jmp	.LBB91_149
.LBB91_145:
	movzwl	-5(%r14), %r15d
	jmp	.LBB91_149
.LBB91_146:
	movl	-9(%r14), %r15d
	jmp	.LBB91_149
.LBB91_147:
	movq	-17(%r14), %r15
	jmp	.LBB91_149
.LBB91_148:
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB91_149:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.189, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplySds
	movq	shared(%rip), %rsi
	movq	%rbx, %rdi
	jmp	.LBB91_74
.LBB91_150:
	movl	$.L.str.195, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$4, %r12d
	jne	.LBB91_162
# %bb.151:
	testl	%eax, %eax
	jne	.LBB91_162
# %bb.152:
	movq	16(%rbx), %rsi
	leaq	-64(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB91_75
# %bb.153:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	movq	24(%rax), %rsi
	leaq	-4416(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB91_75
# %bb.154:
	movq	-64(%rbp), %rdi
	cmpq	$16383, %rdi            # imm = 0x3FFF
	ja	.LBB91_231
# %bb.155:
	cmpq	$0, -4416(%rbp)
	js	.LBB91_231
# %bb.156:
                                        # kill: def $edi killed $edi killed $rdi
	callq	countKeysInSlot
	movq	-4416(%rbp), %rdi
	movl	%eax, %eax
	cmpq	%rax, %rdi
	jle	.LBB91_158
# %bb.157:
	movq	%rax, -4416(%rbp)
	movq	%rax, %rdi
.LBB91_158:
	shlq	$3, %rdi
	callq	zmalloc
	movq	%rax, %r14
	movl	-64(%rbp), %edi
	movl	-4416(%rbp), %edx
	movq	%rax, %rsi
	callq	getKeysInSlot
	movl	%eax, %r12d
	movl	%eax, %r15d
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	addReplyMultiBulkLen
	testl	%r12d, %r12d
	je	.LBB91_161
# %bb.159:                              # %.preheader
	xorl	%ebx, %ebx
.LBB91_160:                             # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rsi
	movq	%r13, %rdi
	callq	addReplyBulk
	movq	(%r14,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	cmpq	%rbx, %r15
	jne	.LBB91_160
.LBB91_161:
	movq	%r14, %rdi
	callq	zfree
	jmp	.LBB91_75
.LBB91_162:
	movl	$.L.str.197, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r12d
	jne	.LBB91_181
# %bb.163:
	testl	%eax, %eax
	jne	.LBB91_181
# %bb.164:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	je	.LBB91_251
# %bb.165:
	movq	8(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB91_252
# %bb.166:
	movq	myself(%rip), %rax
	cmpq	%rax, %rbx
	je	.LBB91_230
# %bb.167:
	testb	$2, 48(%rax)
	je	.LBB91_169
# %bb.168:
	cmpq	%rbx, 2128(%rax)
	je	.LBB91_241
.LBB91_169:
	movq	%rbx, %rdi
	callq	clusterBlacklistAddNode
	movq	%rbx, %rdi
	callq	clusterDelNode
	jmp	.LBB91_56
.LBB91_170:
	movq	32(%r14), %rax
	movq	8(%rax), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %r14
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%r14, %rsi
	callq	dictFind
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	sdsfree
	testq	%r15, %r15
	je	.LBB91_204
# %bb.171:
	movq	8(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_205
# %bb.172:
	movq	server+2944(%rip), %rcx
	movq	%rax, 40(%rcx,%rbx,8)
	jmp	.LBB91_56
.LBB91_173:
	movzbl	-3(%rdi), %esi
	jmp	.LBB91_178
.LBB91_174:
	movzwl	-5(%rdi), %esi
	jmp	.LBB91_178
.LBB91_175:
	movl	-9(%rdi), %esi
	jmp	.LBB91_178
.LBB91_176:
	movq	-17(%rdi), %rsi
	jmp	.LBB91_178
.LBB91_177:
	xorl	%esi, %esi
.LBB91_178:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	keyHashSlot
	movl	%eax, %esi
	movq	%r14, %rdi
	callq	addReplyLongLong
	jmp	.LBB91_75
.LBB91_204:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_205:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.169, %esi
	jmp	.LBB91_8
.LBB91_179:
	movl	$.L.str.171, %esi
.LBB91_180:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB91_75
.LBB91_181:
	movl	$.L.str.200, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r12d
	jne	.LBB91_206
# %bb.182:
	testl	%eax, %eax
	jne	.LBB91_206
# %bb.183:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	je	.LBB91_251
# %bb.184:
	movq	8(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB91_252
# %bb.185:
	movq	myself(%rip), %rax
	cmpq	%rax, %rdi
	je	.LBB91_238
# %bb.186:
	testb	$2, 48(%rdi)
	jne	.LBB91_239
# %bb.187:
	testb	$1, 48(%rax)
	jne	.LBB91_248
.LBB91_188:
	callq	clusterSetMaster
	jmp	.LBB91_56
.LBB91_189:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_190:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	movq	32(%rax), %rax
	jmp	.LBB91_253
.LBB91_191:
                                        # kill: def $edi killed $edi killed $rdi
	callq	countKeysInSlot
	movl	%eax, %esi
.LBB91_192:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyLongLong
	jmp	.LBB91_75
.LBB91_193:
	movl	%r12d, %edi
	callq	countKeysInSlot
	testl	%eax, %eax
	jne	.LBB91_196
# %bb.194:
	movq	server+2944(%rip), %rax
	cmpq	$0, 40(%rax,%rbx,8)
	je	.LBB91_196
# %bb.195:
	movq	$0, 40(%rax,%rbx,8)
.LBB91_196:
	cmpq	myself(%rip), %r15
	jne	.LBB91_201
# %bb.197:
	movq	server+2944(%rip), %rax
	cmpq	$0, 131112(%rax,%rbx,8)
	je	.LBB91_201
# %bb.198:
	callq	clusterBumpConfigEpochWithoutConsensus
	testl	%eax, %eax
	jne	.LBB91_200
# %bb.199:
	movl	$.L.str.176, %esi
	movl	$3, %edi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	serverLog
.LBB91_200:
	movq	server+2944(%rip), %rax
	movq	$0, 131112(%rax,%rbx,8)
.LBB91_201:
	movq	server+2944(%rip), %rax
	movq	262184(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB91_214
# %bb.202:
	movl	%r12d, %edx
	shrl	$3, %edx
	andl	$8191, %edx             # imm = 0x1FFF
	movl	%r12d, %ecx
	andb	$7, %cl
	movl	$1, %esi
	shll	%cl, %esi
	movzbl	64(%rax,%rdx), %edi
	movzbl	%cl, %ecx
	notb	%sil
	andb	%dil, %sil
	btl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	movb	%sil, 64(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB91_48
# %bb.203:
	addl	$-1, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%rbx,8)
	movq	server+2944(%rip), %rax
	cmpq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_216
	jmp	.LBB91_215
.LBB91_206:
	movl	$.L.str.204, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB91_217
# %bb.207:
	movl	$.L.str.205, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r12d
	jne	.LBB91_209
# %bb.208:
	testl	%eax, %eax
	je	.LBB91_218
.LBB91_209:
	movl	$.L.str.207, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r12d
	jne	.LBB91_224
# %bb.210:
	testl	%eax, %eax
	jne	.LBB91_224
# %bb.211:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	je	.LBB91_251
# %bb.212:
	movq	8(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB91_252
# %bb.213:
	callq	clusterNodeFailureReportsCount
	movslq	%eax, %rsi
	jmp	.LBB91_192
.LBB91_214:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_215:
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r15, 262184(%rax,%rbx,8)
.LBB91_216:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_56
.LBB91_217:
	cmpl	$3, %r12d
	jne	.LBB91_224
.LBB91_218:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	je	.LBB91_251
# %bb.219:
	movq	8(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB91_252
# %bb.220:
	testb	$2, 48(%r14)
	jne	.LBB91_240
# %bb.221:
	movslq	2116(%r14), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyMultiBulkLen
	cmpl	$0, 2116(%r14)
	jle	.LBB91_75
# %bb.222:
	xorl	%ebx, %ebx
.LBB91_223:                             # =>This Inner Loop Header: Depth=1
	movq	2120(%r14), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	clusterGenNodeDescription
	movq	%rax, %r15
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	addReplyBulkCString
	movq	%r15, %rdi
	callq	sdsfree
	addq	$1, %rbx
	movslq	2116(%r14), %rax
	cmpq	%rax, %rbx
	jl	.LBB91_223
	jmp	.LBB91_75
.LBB91_251:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_252:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	movq	16(%rax), %rax
.LBB91_253:
	movq	8(%rax), %rdx
	movl	$.L.str.174, %esi
	jmp	.LBB91_8
.LBB91_224:
	movl	$.L.str.208, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$2, %r13d
	jne	.LBB91_232
# %bb.225:
	testl	%eax, %eax
	jne	.LBB91_232
# %bb.226:
	xorl	%r14d, %r14d
	cmpl	$3, %r12d
	jne	.LBB91_242
# %bb.227:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.209, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB91_255
# %bb.228:
	movl	$.L.str.210, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB91_256
.LBB91_229:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB91_74
.LBB91_230:
	movl	$.L.str.198, %esi
	jmp	.LBB91_60
.LBB91_231:
	movl	$.L.str.196, %esi
	jmp	.LBB91_60
.LBB91_232:
	movl	$.L.str.217, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r12d
	jne	.LBB91_243
# %bb.233:
	testl	%eax, %eax
	jne	.LBB91_243
# %bb.234:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	leaq	-4416(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB91_75
# %bb.235:
	movq	-4416(%rbp), %rdx
	testq	%rdx, %rdx
	js	.LBB91_270
# %bb.236:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rax
	movq	72(%rax), %rcx
	addq	40(%rax), %rcx
	cmpq	$2, %rcx
	jb	.LBB91_273
# %bb.237:
	movl	$.L.str.219, %esi
	jmp	.LBB91_60
.LBB91_238:
	movl	$.L.str.201, %esi
	jmp	.LBB91_60
.LBB91_239:
	movl	$.L.str.202, %esi
	jmp	.LBB91_60
.LBB91_240:
	movl	$.L.str.206, %esi
	jmp	.LBB91_60
.LBB91_241:
	movl	$.L.str.199, %esi
	jmp	.LBB91_60
.LBB91_242:
	xorl	%ebx, %ebx
	jmp	.LBB91_257
.LBB91_243:
	movl	$.L.str.222, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$2, %r13d
	jne	.LBB91_254
# %bb.244:
	testl	%eax, %eax
	jne	.LBB91_254
# %bb.245:
	xorl	%r15d, %r15d
	cmpl	$3, %r12d
	jne	.LBB91_276
# %bb.246:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.223, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB91_275
# %bb.247:
	movl	$.L.str.224, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB91_229
	jmp	.LBB91_276
.LBB91_248:
	cmpl	$0, 2112(%rax)
	jne	.LBB91_250
# %bb.249:
	movq	server+48(%rip), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	je	.LBB91_188
.LBB91_250:
	movl	$.L.str.203, %esi
	jmp	.LBB91_60
.LBB91_254:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplySubcommandSyntaxError
	jmp	.LBB91_75
.LBB91_255:
	movl	$1, %ebx
	jmp	.LBB91_257
.LBB91_256:
	movl	$1, %ebx
	movl	$1, %r14d
.LBB91_257:
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	jne	.LBB91_265
# %bb.258:
	movq	2128(%rax), %rax
	testq	%rax, %rax
	je	.LBB91_266
# %bb.259:
	testl	%ebx, %ebx
	je	.LBB91_267
.LBB91_260:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB91_263
# %bb.261:
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB91_263
# %bb.262:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
.LBB91_263:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
	callq	mstime
	addq	$5000, %rax             # imm = 0x1388
	movq	server+2944(%rip), %rcx
	movq	%rax, 524376(%rcx)
	testl	%r14d, %r14d
	je	.LBB91_271
# %bb.264:
	movl	$.L.str.214, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	clusterBumpConfigEpochWithoutConsensus
	callq	clusterFailoverReplaceYourMaster
	jmp	.LBB91_58
.LBB91_265:
	movl	$.L.str.211, %esi
	jmp	.LBB91_60
.LBB91_266:
	movl	$.L.str.212, %esi
	jmp	.LBB91_60
.LBB91_267:
	testb	$8, 48(%rax)
	jne	.LBB91_269
# %bb.268:
	cmpq	$0, 2248(%rax)
	jne	.LBB91_260
.LBB91_269:
	movl	$.L.str.213, %esi
	jmp	.LBB91_60
.LBB91_270:
	movl	$.L.str.218, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB91_8
.LBB91_271:
	testl	%ebx, %ebx
	je	.LBB91_280
# %bb.272:
	movl	$.L.str.215, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movl	$1, 524400(%rax)
	jmp	.LBB91_58
.LBB91_273:
	movq	myself(%rip), %rax
	cmpq	$0, 56(%rax)
	je	.LBB91_282
# %bb.274:
	movl	$.L.str.220, %esi
	jmp	.LBB91_60
.LBB91_275:
	movl	$1, %r15d
.LBB91_276:
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	je	.LBB91_278
# %bb.277:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	jne	.LBB91_279
.LBB91_278:
	movl	%r15d, %edi
	callq	clusterReset
	jmp	.LBB91_58
.LBB91_279:
	movl	$.L.str.225, %esi
	jmp	.LBB91_60
.LBB91_280:
	movl	$.L.str.216, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %rax
	movq	2128(%rax), %rbx
	cmpq	$0, 2248(%rbx)
	je	.LBB91_57
# %bb.281:
	leaq	-4416(%rbp), %r14
	movq	%r14, %rdi
	movl	$8, %esi
	callq	clusterBuildMessageHdr
	movl	$2256, %edi             # imm = 0x8D0
	callq	lwip_htonl
	movl	%eax, -4412(%rbp)
	movq	2248(%rbx), %rdi
	movl	$2256, %edx             # imm = 0x8D0
	movq	%r14, %rsi
	callq	clusterSendMessage
	jmp	.LBB91_57
.LBB91_282:
	movq	%rdx, 56(%rax)
	movl	$.L.str.221, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movq	-4416(%rbp), %rcx
	cmpq	%rcx, 8(%rax)
	jae	.LBB91_284
# %bb.283:
	movq	%rcx, 8(%rax)
.LBB91_284:
	orb	$6, 524416(%rax)
	jmp	.LBB91_57
.LBB91_285:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.164, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$4320, %r8d             # imm = 0x10E0
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end91:
	.size	clusterCommand, .Lfunc_end91-clusterCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI91_0:
	.quad	.LBB91_112
	.quad	.LBB91_144
	.quad	.LBB91_145
	.quad	.LBB91_146
	.quad	.LBB91_147
.LJTI91_1:
	.quad	.LBB91_83
	.quad	.LBB91_173
	.quad	.LBB91_174
	.quad	.LBB91_175
	.quad	.LBB91_176
                                        # -- End function
	.text
	.globl	createDumpPayload       # -- Begin function createDumpPayload
	.p2align	4, 0x90
	.type	createDumpPayload,@function
createDumpPayload:                      # @createDumpPayload
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	sdsempty
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	rioInitWithBuffer
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveObjectType
	testl	%eax, %eax
	je	.LBB92_1
# %bb.3:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	rdbSaveObject
	testq	%rax, %rax
	je	.LBB92_4
# %bb.5:
	movw	$9, -26(%rbp)
	movq	64(%r15), %rdi
	leaq	-26(%rbp), %rsi
	movl	$2, %edx
	callq	sdscatlen
	movq	%rax, 64(%r15)
	movzbl	-1(%rax), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB92_6
# %bb.7:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI92_0(,%rcx,8)
.LBB92_8:
	shrq	$3, %rdx
	jmp	.LBB92_13
.LBB92_12:
	movq	-17(%rax), %rdx
	jmp	.LBB92_13
.LBB92_10:
	movzwl	-5(%rax), %edx
	jmp	.LBB92_13
.LBB92_9:
	movzbl	-3(%rax), %edx
	jmp	.LBB92_13
.LBB92_11:
	movl	-9(%rax), %edx
	jmp	.LBB92_13
.LBB92_6:
	xorl	%edx, %edx
.LBB92_13:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	crc64
	movq	%rax, -40(%rbp)
	movq	64(%r15), %rdi
	leaq	-40(%rbp), %rsi
	movl	$8, %edx
	callq	sdscatlen
	movq	%rax, 64(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB92_1:
	movl	$.L.str.226, %edi
	movl	$.L.str.8, %esi
	movl	$4787, %edx             # imm = 0x12B3
	jmp	.LBB92_2
.LBB92_4:
	movl	$.L.str.227, %edi
	movl	$.L.str.8, %esi
	movl	$4788, %edx             # imm = 0x12B4
.LBB92_2:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end92:
	.size	createDumpPayload, .Lfunc_end92-createDumpPayload
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI92_0:
	.quad	.LBB92_8
	.quad	.LBB92_9
	.quad	.LBB92_10
	.quad	.LBB92_11
	.quad	.LBB92_12
                                        # -- End function
	.text
	.globl	verifyDumpPayload       # -- Begin function verifyDumpPayload
	.p2align	4, 0x90
	.type	verifyDumpPayload,@function
verifyDumpPayload:                      # @verifyDumpPayload
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rdx
	movl	$-1, %eax
	cmpq	$10, %rsi
	jb	.LBB93_3
# %bb.1:
	movq	%rdi, %rsi
	movzwl	-10(%rdx,%rdi), %ecx
	cmpl	$9, %ecx
	ja	.LBB93_3
# %bb.2:
	leaq	(%rdx,%rsi), %rbx
	addq	$-10, %rbx
	addq	$-8, %rdx
	xorl	%edi, %edi
	callq	crc64
	movq	%rax, -16(%rbp)
	addq	$2, %rbx
	leaq	-16(%rbp), %rdi
	movl	$8, %edx
	movq	%rbx, %rsi
	callq	memcmp
	negl	%eax
	sbbl	%eax, %eax
.LBB93_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end93:
	.size	verifyDumpPayload, .Lfunc_end93-verifyDumpPayload
                                        # -- End function
	.globl	dumpCommand             # -- Begin function dumpCommand
	.p2align	4, 0x90
	.type	dumpCommand,@function
dumpCommand:                            # @dumpCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB94_1
# %bb.2:
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	leaq	-120(%rbp), %rdi
	movq	%rax, %rsi
	callq	createDumpPayload
	movq	-56(%rbp), %rsi
	xorl	%edi, %edi
	callq	createObject
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
	movq	%r14, %rdi
	callq	decrRefCount
	jmp	.LBB94_3
.LBB94_1:
	movq	shared+80(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB94_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end94:
	.size	dumpCommand, .Lfunc_end94-dumpCommand
                                        # -- End function
	.globl	restoreCommand          # -- Begin function restoreCommand
	.p2align	4, 0x90
	.type	restoreCommand,@function
restoreCommand:                         # @restoreCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdi, %rbx
	movq	$-1, -88(%rbp)
	movq	$-1, -80(%rbp)
	movl	64(%rdi), %r12d
	cmpl	$5, %r12d
	jl	.LBB95_20
# %bb.1:
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$4, %r15d
	movq	$-1, -64(%rbp)          # 8-byte Folded Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB95_5
	.p2align	4, 0x90
.LBB95_2:                               #   in Loop: Header=BB95_5 Depth=1
	movl	$1, -52(%rbp)           # 4-byte Folded Spill
.LBB95_3:                               #   in Loop: Header=BB95_5 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB95_4:                               #   in Loop: Header=BB95_5 Depth=1
	addl	$1, %r15d
	movl	64(%rbx), %r12d
	cmpl	%r15d, %r12d
	jle	.LBB95_23
.LBB95_5:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rbx), %r14
	movslq	%r15d, %r13
	movq	(%r14,%r13,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.228, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB95_2
# %bb.6:                                #   in Loop: Header=BB95_5 Depth=1
	movl	$.L.str.229, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB95_13
# %bb.7:                                #   in Loop: Header=BB95_5 Depth=1
	movl	%r15d, %eax
	notl	%eax
	addl	%eax, %r12d
	movl	$.L.str.230, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%r12d, %r12d
	jle	.LBB95_14
# %bb.8:                                #   in Loop: Header=BB95_5 Depth=1
	testl	%eax, %eax
	jne	.LBB95_14
# %bb.9:                                #   in Loop: Header=BB95_5 Depth=1
	cmpq	$-1, -88(%rbp)
	jne	.LBB95_14
# %bb.10:                               #   in Loop: Header=BB95_5 Depth=1
	movq	8(%r14,%r13,8), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB95_46
# %bb.11:                               #   in Loop: Header=BB95_5 Depth=1
	cmpq	$0, -80(%rbp)
	js	.LBB95_34
# %bb.12:                               #   in Loop: Header=BB95_5 Depth=1
	addl	$1, %r15d
	callq	LRU_CLOCK
	movl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB95_4
	.p2align	4, 0x90
.LBB95_13:                              #   in Loop: Header=BB95_5 Depth=1
	movl	$1, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB95_3
.LBB95_14:                              #   in Loop: Header=BB95_5 Depth=1
	movl	$.L.str.232, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%r12d, %r12d
	jle	.LBB95_33
# %bb.15:                               #   in Loop: Header=BB95_5 Depth=1
	testl	%eax, %eax
	jne	.LBB95_33
# %bb.16:                               #   in Loop: Header=BB95_5 Depth=1
	cmpq	$-1, -80(%rbp)
	jne	.LBB95_33
# %bb.17:                               #   in Loop: Header=BB95_5 Depth=1
	movq	8(%r14,%r13,8), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-88(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB95_46
# %bb.18:                               #   in Loop: Header=BB95_5 Depth=1
	cmpq	$256, -88(%rbp)         # imm = 0x100
	jae	.LBB95_35
# %bb.19:                               #   in Loop: Header=BB95_5 Depth=1
	addl	$1, %r15d
	jmp	.LBB95_4
.LBB95_20:
	xorl	%r15d, %r15d
	movq	$-1, %r14
.LBB95_21:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB95_25
# %bb.22:
	movq	shared+224(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB95_46
.LBB95_23:
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB95_31
# %bb.24:
	leaq	72(%rbx), %r12
	movb	$1, %r15b
	jmp	.LBB95_26
.LBB95_25:
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%r14, -64(%rbp)         # 8-byte Spill
	leaq	72(%rbx), %r12
	xorl	%r15d, %r15d
.LBB95_26:
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB95_46
# %bb.27:
	cmpq	$0, -96(%rbp)
	js	.LBB95_32
# %bb.28:
	movq	(%r12), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB95_36
# %bb.29:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI95_0(,%rax,8)
.LBB95_30:
	shrq	$3, %rdx
	jmp	.LBB95_41
.LBB95_31:
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB95_21
.LBB95_32:
	movl	$.L.str.234, %esi
	jmp	.LBB95_45
.LBB95_33:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB95_46
.LBB95_34:
	movl	$.L.str.231, %esi
	jmp	.LBB95_45
.LBB95_35:
	movl	$.L.str.233, %esi
	jmp	.LBB95_45
.LBB95_36:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB95_43
.LBB95_37:
	movzbl	-3(%rsi), %edx
	jmp	.LBB95_41
.LBB95_38:
	movzwl	-5(%rsi), %edx
	jmp	.LBB95_41
.LBB95_39:
	movl	-9(%rsi), %edx
	jmp	.LBB95_41
.LBB95_40:
	movq	-17(%rsi), %rdx
.LBB95_41:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %rdx
	jb	.LBB95_43
# %bb.42:
	movzwl	-10(%rdx,%rsi), %eax
	cmpl	$10, %eax
	jb	.LBB95_47
.LBB95_43:
	movl	$42, __A_VARIABLE(%rip)
.LBB95_44:
	movl	$.L.str.235, %esi
.LBB95_45:
	movq	%rbx, %rdi
	callq	addReplyError
.LBB95_46:
	movl	$42, __A_VARIABLE(%rip)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB95_47:
	leaq	(%rdx,%rsi), %r14
	addq	$-10, %r14
	addq	$-8, %rdx
	xorl	%edi, %edi
	callq	crc64
	movq	%rax, -200(%rbp)
	addq	$2, %r14
	leaq	-200(%rbp), %rdi
	movl	$8, %edx
	movq	%r14, %rsi
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB95_44
# %bb.49:
	movq	(%r12), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-200(%rbp), %r14
	movq	%r14, %rdi
	callq	rioInitWithBuffer
	movq	%r14, %rdi
	callq	rdbLoadObjectType
	cmpl	$-1, %eax
	je	.LBB95_58
# %bb.50:
	movq	(%r12), %rcx
	movq	8(%rcx), %rdx
	leaq	-200(%rbp), %rsi
	movl	%eax, %edi
	callq	rdbLoadObject
	testq	%rax, %rax
	je	.LBB95_58
# %bb.51:
	movq	%rax, %r14
	testb	%r15b, %r15b
	je	.LBB95_53
# %bb.52:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
.LBB95_53:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movq	-96(%rbp), %rcx
	testq	%rcx, %rcx
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB95_57
# %bb.54:
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	jne	.LBB95_56
# %bb.55:
	callq	mstime
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	%rcx, -96(%rbp)
.LBB95_56:
	movq	16(%rbx), %rsi
	movq	72(%rbx), %rax
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	callq	setExpire
.LBB95_57:
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	objectSetLRUOrLFU
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	addq	$1, server+2080(%rip)
	jmp	.LBB95_46
.LBB95_58:
	movl	$.L.str.236, %esi
	jmp	.LBB95_45
.Lfunc_end95:
	.size	restoreCommand, .Lfunc_end95-restoreCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI95_0:
	.quad	.LBB95_30
	.quad	.LBB95_37
	.quad	.LBB95_38
	.quad	.LBB95_39
	.quad	.LBB95_40
                                        # -- End function
	.text
	.globl	migrateGetSocket        # -- Begin function migrateGetSocket
	.p2align	4, 0x90
	.type	migrateGetSocket,@function
migrateGetSocket:                       # @migrateGetSocket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	sdsempty
	movq	8(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB96_1
# %bb.2:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI96_0(,%rcx,8)
.LBB96_3:
	shrq	$3, %rdx
	jmp	.LBB96_8
.LBB96_1:
	xorl	%edx, %edx
	jmp	.LBB96_8
.LBB96_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB96_8
.LBB96_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB96_8
.LBB96_6:
	movl	-9(%rsi), %edx
	jmp	.LBB96_8
.LBB96_7:
	movq	-17(%rsi), %rdx
.LBB96_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$.L.str.237, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	8(%r12), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB96_9
# %bb.10:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI96_1(,%rcx,8)
.LBB96_11:
	shrq	$3, %rdx
	jmp	.LBB96_16
.LBB96_9:
	xorl	%edx, %edx
	jmp	.LBB96_16
.LBB96_12:
	movzbl	-3(%rsi), %edx
	jmp	.LBB96_16
.LBB96_13:
	movzwl	-5(%rsi), %edx
	jmp	.LBB96_16
.LBB96_14:
	movl	-9(%rsi), %edx
	jmp	.LBB96_16
.LBB96_15:
	movq	-17(%rsi), %rdx
.LBB96_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r13
	movq	server+840(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB96_18
# %bb.17:
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	sdsfree
	movq	server+2872(%rip), %rax
	movq	%rax, 16(%rbx)
.LBB96_25:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB96_18:
	movq	server+840(%rip), %rdi
	movq	72(%rdi), %rax
	addq	40(%rdi), %rax
	cmpq	$64, %rax
	jne	.LBB96_20
# %bb.19:
	callq	dictGetRandomKey
	movq	%rax, %r12
	movq	8(%rax), %rbx
	movl	(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movq	server+840(%rip), %rdi
	movq	(%r12), %rsi
	callq	dictDelete
.LBB96_20:
	movq	72(%r15), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %rax
	movq	8(%rcx), %rbx
	movq	8(%rax), %rdi
	callq	atoi
	movl	$server+584, %edi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	anetTcpNonBlockConnect
	cmpl	$-1, %eax
	je	.LBB96_21
# %bb.22:
	movl	%eax, %r12d
	movl	$server+584, %edi
	movl	%eax, %esi
	callq	anetEnableTcpNoDelay
	movl	%r12d, %edi
	movl	$2, %esi
	movq	%r14, %rdx
	callq	aeWait
	testb	$2, %al
	jne	.LBB96_24
# %bb.23:
	movq	%r13, %rdi
	callq	sdsfree
	movl	$.L.str.239, %edi
	callq	sdsnew
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	%r12d, %edi
	callq	close
	xorl	%ebx, %ebx
	jmp	.LBB96_25
.LBB96_21:
	movq	%r13, %rdi
	callq	sdsfree
	xorl	%ebx, %ebx
	movl	$.L.str.238, %esi
	movl	$server+584, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB96_25
.LBB96_24:
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movl	%r12d, (%rax)
	movq	$-1, 8(%rax)
	movq	server+2872(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	server+840(%rip), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	jmp	.LBB96_25
.Lfunc_end96:
	.size	migrateGetSocket, .Lfunc_end96-migrateGetSocket
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI96_0:
	.quad	.LBB96_3
	.quad	.LBB96_4
	.quad	.LBB96_5
	.quad	.LBB96_6
	.quad	.LBB96_7
.LJTI96_1:
	.quad	.LBB96_11
	.quad	.LBB96_12
	.quad	.LBB96_13
	.quad	.LBB96_14
	.quad	.LBB96_15
                                        # -- End function
	.text
	.globl	migrateCloseSocket      # -- Begin function migrateCloseSocket
	.p2align	4, 0x90
	.type	migrateCloseSocket,@function
migrateCloseSocket:                     # @migrateCloseSocket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	sdsempty
	movq	8(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB97_1
# %bb.2:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI97_0(,%rcx,8)
.LBB97_3:
	shrq	$3, %rdx
	jmp	.LBB97_8
.LBB97_1:
	xorl	%edx, %edx
	jmp	.LBB97_8
.LBB97_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB97_8
.LBB97_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB97_8
.LBB97_6:
	movl	-9(%rsi), %edx
	jmp	.LBB97_8
.LBB97_7:
	movq	-17(%rsi), %rdx
.LBB97_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$.L.str.237, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	8(%r14), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB97_9
# %bb.10:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI97_1(,%rcx,8)
.LBB97_11:
	shrq	$3, %rdx
	jmp	.LBB97_16
.LBB97_9:
	xorl	%edx, %edx
	jmp	.LBB97_16
.LBB97_12:
	movzbl	-3(%rsi), %edx
	jmp	.LBB97_16
.LBB97_13:
	movzwl	-5(%rsi), %edx
	jmp	.LBB97_16
.LBB97_14:
	movl	-9(%rsi), %edx
	jmp	.LBB97_16
.LBB97_15:
	movq	-17(%rsi), %rdx
.LBB97_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r14
	movq	server+840(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB97_18
# %bb.17:
	movq	%rax, %rbx
	movl	(%rax), %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	movq	server+840(%rip), %rdi
	movq	%r14, %rsi
	callq	dictDelete
.LBB97_18:
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end97:
	.size	migrateCloseSocket, .Lfunc_end97-migrateCloseSocket
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI97_0:
	.quad	.LBB97_3
	.quad	.LBB97_4
	.quad	.LBB97_5
	.quad	.LBB97_6
	.quad	.LBB97_7
.LJTI97_1:
	.quad	.LBB97_11
	.quad	.LBB97_12
	.quad	.LBB97_13
	.quad	.LBB97_14
	.quad	.LBB97_15
                                        # -- End function
	.text
	.globl	migrateCloseTimedoutSockets # -- Begin function migrateCloseTimedoutSockets
	.p2align	4, 0x90
	.type	migrateCloseTimedoutSockets,@function
migrateCloseTimedoutSockets:            # @migrateCloseTimedoutSockets
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	server+840(%rip), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB98_5
# %bb.1:                                # %.preheader
	movq	%rax, %rbx
	jmp	.LBB98_2
	.p2align	4, 0x90
.LBB98_4:                               #   in Loop: Header=BB98_2 Depth=1
	movq	%r14, %rdi
	callq	dictNext
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB98_5
.LBB98_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %r15
	movq	server+2872(%rip), %rax
	subq	16(%r15), %rax
	cmpq	$11, %rax
	jl	.LBB98_4
# %bb.3:                                #   in Loop: Header=BB98_2 Depth=1
	movl	(%r15), %edi
	callq	close
	movq	%r15, %rdi
	callq	zfree
	movq	server+840(%rip), %rdi
	movq	(%rbx), %rsi
	callq	dictDelete
	jmp	.LBB98_4
.LBB98_5:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end98:
	.size	migrateCloseTimedoutSockets, .Lfunc_end98-migrateCloseTimedoutSockets
                                        # -- End function
	.globl	migrateCommand          # -- Begin function migrateCommand
	.p2align	4, 0x90
	.type	migrateCommand,@function
migrateCommand:                         # @migrateCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$3432, %rsp             # imm = 0xD68
	movl	64(%rdi), %r14d
	movq	72(%rdi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$3, %r12d
	cmpl	$7, %r14d
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jl	.LBB99_1
# %bb.2:
	leal	-1(%r14), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	$6, %r13d
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB99_3
	.p2align	4, 0x90
.LBB99_4:                               #   in Loop: Header=BB99_3 Depth=1
	movl	$1, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB99_23:                              #   in Loop: Header=BB99_3 Depth=1
	addl	$1, %r13d
	cmpl	%r14d, %r13d
	jge	.LBB99_24
.LBB99_3:                               # =>This Inner Loop Header: Depth=1
	movslq	%r13d, %r15
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r15,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.240, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB99_4
# %bb.5:                                #   in Loop: Header=BB99_3 Depth=1
	movl	$.L.str.228, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB99_6
# %bb.7:                                #   in Loop: Header=BB99_3 Depth=1
	movl	$.L.str.241, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB99_10
# %bb.8:                                #   in Loop: Header=BB99_3 Depth=1
	cmpl	-56(%rbp), %r13d        # 4-byte Folded Reload
	jge	.LBB99_9
# %bb.22:                               #   in Loop: Header=BB99_3 Depth=1
	addl	$1, %r13d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax,%r15,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB99_23
	.p2align	4, 0x90
.LBB99_6:                               #   in Loop: Header=BB99_3 Depth=1
	movl	$1, -92(%rbp)           # 4-byte Folded Spill
	jmp	.LBB99_23
.LBB99_1:
	movq	%rdi, %rbx
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$1, %r14d
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB99_25
.LBB99_24:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$1, %r14d
.LBB99_25:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	40(%rax), %rsi
	leaq	-112(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB99_166
# %bb.26:
	movq	72(%rbx), %rax
	movq	32(%rax), %rsi
	leaq	-168(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB99_166
# %bb.27:
	cmpq	$0, -112(%rbp)
	jg	.LBB99_29
# %bb.28:
	movq	$1000, -112(%rbp)       # imm = 0x3E8
.LBB99_29:
	movslq	%r14d, %r13
	leaq	(,%r13,8), %rbx
	movl	%r14d, %r15d
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	zrealloc
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	zrealloc
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testl	%r13d, %r13d
	movq	-48(%rbp), %r13         # 8-byte Reload
	jle	.LBB99_167
# %bb.30:
	movl	%r15d, %ebx
	jmp	.LBB99_31
	.p2align	4, 0x90
.LBB99_33:                              #   in Loop: Header=BB99_31 Depth=1
	addq	$1, %r12
	addq	$-1, %rbx
	je	.LBB99_34
.LBB99_31:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	(%rax,%r12,8), %rsi
	callq	lookupKeyRead
	movslq	%r14d, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	testq	%rax, %rax
	je	.LBB99_33
# %bb.32:                               #   in Loop: Header=BB99_31 Depth=1
	movq	72(%r13), %rax
	movq	(%rax,%r12,8), %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	addl	$1, %ecx
	movl	%ecx, %r14d
	jmp	.LBB99_33
.LBB99_10:
	movl	$.L.str.242, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB99_11
.LBB99_9:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB99_166
.LBB99_34:
	testl	%r14d, %r14d
	je	.LBB99_167
# %bb.35:
	xorl	%eax, %eax
	cmpl	$0, -92(%rbp)           # 4-byte Folded Reload
	setne	%al
	orq	$4, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	$1, %r13d
	leaq	-288(%rbp), %r12
	movl	$0, -132(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB99_36:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB99_63 Depth 2
                                        #     Child Loop BB99_103 Depth 2
                                        #     Child Loop BB99_134 Depth 2
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	%r15, %rdi
	callq	migrateGetSocket
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB99_37
# %bb.38:                               #   in Loop: Header=BB99_36 Depth=1
	callq	sdsempty
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	rioInitWithBuffer
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB99_54
# %bb.39:                               #   in Loop: Header=BB99_36 Depth=1
	movl	$2, %edx
	movq	%r12, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	testq	%rax, %rax
	je	.LBB99_40
# %bb.42:                               #   in Loop: Header=BB99_36 Depth=1
	movl	$.L.str.246, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	rioWriteBulkString
	testq	%rax, %rax
	je	.LBB99_43
# %bb.44:                               #   in Loop: Header=BB99_36 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB99_45
# %bb.46:                               #   in Loop: Header=BB99_36 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI99_1(,%rax,8)
.LBB99_47:                              #   in Loop: Header=BB99_36 Depth=1
	shrq	$3, %rdx
	jmp	.LBB99_52
.LBB99_51:                              #   in Loop: Header=BB99_36 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-17(%rax), %rdx
	jmp	.LBB99_52
.LBB99_49:                              #   in Loop: Header=BB99_36 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movzwl	-5(%rax), %edx
	jmp	.LBB99_52
.LBB99_50:                              #   in Loop: Header=BB99_36 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	-9(%rax), %edx
	jmp	.LBB99_52
.LBB99_48:                              #   in Loop: Header=BB99_36 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movzbl	-3(%rax), %edx
	jmp	.LBB99_52
.LBB99_45:                              #   in Loop: Header=BB99_36 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB99_52:                              #   in Loop: Header=BB99_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkString
	testq	%rax, %rax
	je	.LBB99_53
.LBB99_54:                              #   in Loop: Header=BB99_36 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rbx
	movq	-168(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	cmpq	%rax, %rbx
	je	.LBB99_61
# %bb.55:                               #   in Loop: Header=BB99_36 Depth=1
	movl	$2, %edx
	movq	%r12, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	testq	%rax, %rax
	je	.LBB99_56
# %bb.57:                               #   in Loop: Header=BB99_36 Depth=1
	movl	$.L.str.249, %esi
	movl	$6, %edx
	movq	%r12, %rdi
	callq	rioWriteBulkString
	testq	%rax, %rax
	je	.LBB99_58
# %bb.59:                               #   in Loop: Header=BB99_36 Depth=1
	movq	-168(%rbp), %rsi
	movq	%r12, %rdi
	callq	rioWriteBulkLongLong
	testq	%rax, %rax
	je	.LBB99_60
.LBB99_61:                              #   in Loop: Header=BB99_36 Depth=1
	movq	%rbx, -176(%rbp)        # 8-byte Spill
	movl	%r13d, -84(%rbp)        # 4-byte Spill
	movq	%r12, %r13
	xorl	%r15d, %r15d
	testl	%r14d, %r14d
	jg	.LBB99_62
.LBB99_102:                             #   in Loop: Header=BB99_36 Depth=1
	movl	%r15d, -136(%rbp)       # 4-byte Spill
	callq	__errno
	movl	$0, (%rax)
	movq	-224(%rbp), %r14
	xorl	%r12d, %r12d
	movq	-176(%rbp), %r15        # 8-byte Reload
	.p2align	4, 0x90
.LBB99_103:                             #   Parent Loop BB99_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r14), %ebx
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB99_104
# %bb.105:                              #   in Loop: Header=BB99_103 Depth=2
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI99_4(,%rax,8)
.LBB99_106:                             #   in Loop: Header=BB99_103 Depth=2
	shrq	$3, %rbx
	jmp	.LBB99_111
.LBB99_110:                             #   in Loop: Header=BB99_103 Depth=2
	movq	-17(%r14), %rbx
	jmp	.LBB99_111
.LBB99_108:                             #   in Loop: Header=BB99_103 Depth=2
	movzwl	-5(%r14), %ebx
	jmp	.LBB99_111
.LBB99_109:                             #   in Loop: Header=BB99_103 Depth=2
	movl	-9(%r14), %ebx
	jmp	.LBB99_111
.LBB99_107:                             #   in Loop: Header=BB99_103 Depth=2
	movzbl	-3(%r14), %ebx
	jmp	.LBB99_111
.LBB99_104:                             #   in Loop: Header=BB99_103 Depth=2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB99_111:                             #   in Loop: Header=BB99_103 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	%r12, %rbx
	je	.LBB99_116
# %bb.112:                              #   in Loop: Header=BB99_103 Depth=2
	cmpq	$65536, %rbx            # imm = 0x10000
	movl	$65536, %eax            # imm = 0x10000
	cmovaeq	%rax, %rbx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	leaq	(%r14,%r12), %rsi
	movq	-112(%rbp), %rcx
	movq	%rbx, %rdx
	callq	syncWrite
	cmpl	%ebx, %eax
	jne	.LBB99_113
# %bb.115:                              #   in Loop: Header=BB99_103 Depth=2
	cltq
	addq	%rax, %r12
	jmp	.LBB99_103
	.p2align	4, 0x90
.LBB99_116:                             #   in Loop: Header=BB99_36 Depth=1
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB99_119
# %bb.117:                              #   in Loop: Header=BB99_36 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movq	-112(%rbp), %rcx
	movl	$1024, %edx             # imm = 0x400
	leaq	-3472(%rbp), %rsi
	callq	syncReadLine
	testq	%rax, %rax
	jle	.LBB99_118
.LBB99_119:                             #   in Loop: Header=BB99_36 Depth=1
	cmpq	-152(%rbp), %r15        # 8-byte Folded Reload
	je	.LBB99_129
# %bb.120:                              #   in Loop: Header=BB99_36 Depth=1
	movq	%r13, %r12
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movq	-112(%rbp), %rcx
	movl	$1024, %edx             # imm = 0x400
	leaq	-2448(%rbp), %rsi
	callq	syncReadLine
	testq	%rax, %rax
	jle	.LBB99_121
.LBB99_129:                             #   in Loop: Header=BB99_36 Depth=1
	movl	-136(%rbp), %ebx        # 4-byte Reload
	movslq	%ebx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	cmpl	$0, -128(%rbp)          # 4-byte Folded Reload
	jne	.LBB99_131
# %bb.130:                              #   in Loop: Header=BB99_36 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	leaq	8(,%rax,8), %rdi
	callq	zmalloc
	movq	%rax, %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB99_131:                             #   in Loop: Header=BB99_36 Depth=1
	testl	%ebx, %ebx
	leaq	-1424(%rbp), %r14
	jle	.LBB99_132
# %bb.133:                              #   in Loop: Header=BB99_36 Depth=1
	cmpq	-152(%rbp), %r15        # 8-byte Folded Reload
	sete	-65(%rbp)               # 1-byte Folded Spill
	xorl	%ebx, %ebx
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	jmp	.LBB99_134
	.p2align	4, 0x90
.LBB99_113:                             #   in Loop: Header=BB99_36 Depth=1
	movl	$1, %eax
.LBB99_114:                             #   in Loop: Header=BB99_36 Depth=1
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%r13, %r12
.LBB99_122:                             #   in Loop: Header=BB99_36 Depth=1
	movl	-84(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB99_123
.LBB99_144:                             #   in Loop: Header=BB99_134 Depth=2
	cmpb	$45, -2448(%rbp)
	movq	%r14, %rdx
	leaq	-2448(%rbp), %rax
	cmoveq	%rax, %rdx
.LBB99_145:                             #   in Loop: Header=BB99_134 Depth=2
	addq	$1, %rdx
	movl	$.L.str.263, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	$1, %r12d
.LBB99_148:                             #   in Loop: Header=BB99_134 Depth=2
	addq	$1, %rbx
	cmpq	-104(%rbp), %rbx        # 8-byte Folded Reload
	jge	.LBB99_149
.LBB99_134:                             #   Parent Loop BB99_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movq	-112(%rbp), %rcx
	movl	$1024, %edx             # imm = 0x400
	movq	%r14, %rsi
	callq	syncReadLine
	testq	%rax, %rax
	jle	.LBB99_150
# %bb.135:                              #   in Loop: Header=BB99_134 Depth=2
	movzbl	-3472(%rbp), %eax
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB99_137
# %bb.136:                              #   in Loop: Header=BB99_134 Depth=2
	cmpb	$45, %al
	je	.LBB99_140
.LBB99_137:                             #   in Loop: Header=BB99_134 Depth=2
	cmpq	-152(%rbp), %r15        # 8-byte Folded Reload
	je	.LBB99_139
# %bb.138:                              #   in Loop: Header=BB99_134 Depth=2
	cmpb	$45, -2448(%rbp)
	je	.LBB99_140
.LBB99_139:                             #   in Loop: Header=BB99_134 Depth=2
	cmpb	$45, -1424(%rbp)
	je	.LBB99_140
# %bb.146:                              #   in Loop: Header=BB99_134 Depth=2
	cmpl	$0, -128(%rbp)          # 4-byte Folded Reload
	jne	.LBB99_148
# %bb.147:                              #   in Loop: Header=BB99_134 Depth=2
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	16(%r14), %rdi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15,%rbx,8), %rsi
	callq	dbDelete
	movq	16(%r14), %rdi
	leaq	-1424(%rbp), %r14
	movq	(%r15,%rbx,8), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	movq	(%r15,%rbx,8), %rax
	movl	-88(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rcx
	addl	$1, %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	movq	(%r15,%rbx,8), %rdi
	movq	-176(%rbp), %r15        # 8-byte Reload
	callq	incrRefCount
	jmp	.LBB99_148
	.p2align	4, 0x90
.LBB99_140:                             #   in Loop: Header=BB99_134 Depth=2
	testl	%r12d, %r12d
	jne	.LBB99_148
# %bb.141:                              #   in Loop: Header=BB99_134 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	$-1, 8(%rcx)
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB99_143
# %bb.142:                              #   in Loop: Header=BB99_134 Depth=2
	cmpb	$45, %al
	sete	%al
	movq	%r14, %rdx
	leaq	-3472(%rbp), %rcx
	cmoveq	%rcx, %rdx
	orb	-65(%rbp), %al          # 1-byte Folded Reload
	je	.LBB99_144
	jmp	.LBB99_145
.LBB99_143:                             #   in Loop: Header=BB99_134 Depth=2
	movq	%r14, %rdx
	cmpq	-152(%rbp), %r15        # 8-byte Folded Reload
	jne	.LBB99_144
	jmp	.LBB99_145
	.p2align	4, 0x90
.LBB99_62:                              #   in Loop: Header=BB99_36 Depth=1
	movslq	%r14d, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB99_63
	.p2align	4, 0x90
.LBB99_101:                             #   in Loop: Header=BB99_63 Depth=2
	addq	$1, %r14
	cmpq	-104(%rbp), %r14        # 8-byte Folded Reload
	jge	.LBB99_102
.LBB99_63:                              #   Parent Loop BB99_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r14,8), %rsi
	callq	getExpire
	cmpq	$-1, %rax
	je	.LBB99_64
# %bb.65:                               #   in Loop: Header=BB99_63 Depth=2
	movq	%rax, %r12
	callq	mstime
	subq	%rax, %r12
	js	.LBB99_101
# %bb.66:                               #   in Loop: Header=BB99_63 Depth=2
	testq	%r12, %r12
	movl	$1, %eax
	cmoveq	%rax, %r12
	jmp	.LBB99_67
	.p2align	4, 0x90
.LBB99_64:                              #   in Loop: Header=BB99_63 Depth=2
	xorl	%r12d, %r12d
.LBB99_67:                              #   in Loop: Header=BB99_63 Depth=2
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx,%r14,8), %rax
	movslq	%r15d, %rcx
	movq	%rax, (%rdx,%rcx,8)
	movq	%r13, %rdi
	movl	$42, %esi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	rioWriteBulkCount
	testq	%rax, %rax
	je	.LBB99_68
# %bb.69:                               #   in Loop: Header=BB99_63 Depth=2
	cmpl	$0, server+2924(%rip)
	je	.LBB99_72
# %bb.70:                               #   in Loop: Header=BB99_63 Depth=2
	movl	$.L.str.253, %esi
	movl	$14, %edx
	movq	%r13, %rdi
	callq	rioWriteBulkString
	testq	%rax, %rax
	jne	.LBB99_74
	jmp	.LBB99_71
	.p2align	4, 0x90
.LBB99_72:                              #   in Loop: Header=BB99_63 Depth=2
	movl	$.L.str.255, %esi
	movl	$7, %edx
	movq	%r13, %rdi
	callq	rioWriteBulkString
	testq	%rax, %rax
	je	.LBB99_73
.LBB99_74:                              #   in Loop: Header=BB99_63 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r14,8), %rax
	movzbl	(%rax), %ecx
	shrb	$4, %cl
	orb	$8, %cl
	cmpb	$8, %cl
	jne	.LBB99_75
# %bb.76:                               #   in Loop: Header=BB99_63 Depth=2
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB99_77
# %bb.78:                               #   in Loop: Header=BB99_63 Depth=2
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI99_2(,%rax,8)
.LBB99_79:                              #   in Loop: Header=BB99_63 Depth=2
	shrq	$3, %rdx
	jmp	.LBB99_84
.LBB99_83:                              #   in Loop: Header=BB99_63 Depth=2
	movq	-17(%rsi), %rdx
	jmp	.LBB99_84
.LBB99_81:                              #   in Loop: Header=BB99_63 Depth=2
	movzwl	-5(%rsi), %edx
	jmp	.LBB99_84
.LBB99_82:                              #   in Loop: Header=BB99_63 Depth=2
	movl	-9(%rsi), %edx
	jmp	.LBB99_84
.LBB99_80:                              #   in Loop: Header=BB99_63 Depth=2
	movzbl	-3(%rsi), %edx
	jmp	.LBB99_84
.LBB99_77:                              #   in Loop: Header=BB99_63 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB99_84:                              #   in Loop: Header=BB99_63 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	movq	%r13, %rdi
	callq	rioWriteBulkString
	testq	%rax, %rax
	je	.LBB99_85
# %bb.86:                               #   in Loop: Header=BB99_63 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	rioWriteBulkLongLong
	testq	%rax, %rax
	je	.LBB99_87
# %bb.88:                               #   in Loop: Header=BB99_63 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax,%r14,8), %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r14,8), %rdx
	leaq	-392(%rbp), %rdi
	callq	createDumpPayload
	movq	-328(%rbp), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	%r13, %rbx
	ja	.LBB99_89
# %bb.90:                               #   in Loop: Header=BB99_63 Depth=2
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI99_3(,%rax,8)
.LBB99_91:                              #   in Loop: Header=BB99_63 Depth=2
	shrq	$3, %rdx
	jmp	.LBB99_96
.LBB99_95:                              #   in Loop: Header=BB99_63 Depth=2
	movq	-17(%rsi), %rdx
	jmp	.LBB99_96
.LBB99_93:                              #   in Loop: Header=BB99_63 Depth=2
	movzwl	-5(%rsi), %edx
	jmp	.LBB99_96
.LBB99_94:                              #   in Loop: Header=BB99_63 Depth=2
	movl	-9(%rsi), %edx
	jmp	.LBB99_96
.LBB99_92:                              #   in Loop: Header=BB99_63 Depth=2
	movzbl	-3(%rsi), %edx
	jmp	.LBB99_96
.LBB99_89:                              #   in Loop: Header=BB99_63 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB99_96:                              #   in Loop: Header=BB99_63 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	rioWriteBulkString
	testq	%rax, %rax
	je	.LBB99_97
# %bb.98:                               #   in Loop: Header=BB99_63 Depth=2
	addl	$1, %r15d
	movq	-328(%rbp), %rdi
	callq	sdsfree
	cmpl	$0, -92(%rbp)           # 4-byte Folded Reload
	je	.LBB99_101
# %bb.99:                               #   in Loop: Header=BB99_63 Depth=2
	movl	$.L.str.261, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	rioWriteBulkString
	testq	%rax, %rax
	jne	.LBB99_101
	jmp	.LBB99_100
.LBB99_118:                             #   in Loop: Header=BB99_36 Depth=1
	xorl	%eax, %eax
	jmp	.LBB99_114
.LBB99_132:                             #   in Loop: Header=BB99_36 Depth=1
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
.LBB99_149:                             #   in Loop: Header=BB99_36 Depth=1
	testl	%r12d, %r12d
	sete	-104(%rbp)              # 1-byte Folded Spill
	xorl	%r14d, %r14d
	jmp	.LBB99_155
.LBB99_150:                             #   in Loop: Header=BB99_36 Depth=1
	testl	%r12d, %r12d
	sete	%r14b
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	je	.LBB99_154
# %bb.151:                              #   in Loop: Header=BB99_36 Depth=1
	orl	%ebx, %r12d
	jne	.LBB99_154
# %bb.152:                              #   in Loop: Header=BB99_36 Depth=1
	callq	__errno
	cmpl	$116, (%rax)
	jne	.LBB99_153
.LBB99_154:                             #   in Loop: Header=BB99_36 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	callq	migrateCloseSocket
	movb	%r14b, -104(%rbp)       # 1-byte Spill
                                        # kill: def $r14b killed $r14b def $r14d
.LBB99_155:                             #   in Loop: Header=BB99_36 Depth=1
	movq	-144(%rbp), %r15        # 8-byte Reload
	cmpl	$0, -128(%rbp)          # 4-byte Folded Reload
	movl	-88(%rbp), %ebx         # 4-byte Reload
	jne	.LBB99_160
# %bb.156:                              #   in Loop: Header=BB99_36 Depth=1
	cmpl	$2, %ebx
	jl	.LBB99_158
# %bb.157:                              #   in Loop: Header=BB99_36 Depth=1
	movl	$.L.str.264, %edi
	movl	$3, %esi
	callq	createStringObject
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	callq	replaceClientCommandVector
	movl	$1, -132(%rbp)          # 4-byte Folded Spill
	jmp	.LBB99_159
.LBB99_121:                             #   in Loop: Header=BB99_36 Depth=1
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB99_122
.LBB99_158:                             #   in Loop: Header=BB99_36 Depth=1
	movq	%r15, %rdi
	callq	zfree
.LBB99_159:                             #   in Loop: Header=BB99_36 Depth=1
	xorl	%r15d, %r15d
.LBB99_160:                             #   in Loop: Header=BB99_36 Depth=1
	movq	%r13, %r12
	testb	%r14b, %r14b
	je	.LBB99_162
# %bb.161:                              #   in Loop: Header=BB99_36 Depth=1
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
.LBB99_123:                             #   in Loop: Header=BB99_36 Depth=1
	movq	-224(%rbp), %rdi
	callq	sdsfree
	cmpl	$0, -132(%rbp)          # 4-byte Folded Reload
	jne	.LBB99_125
# %bb.124:                              #   in Loop: Header=BB99_36 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	callq	migrateCloseSocket
.LBB99_125:                             #   in Loop: Header=BB99_36 Depth=1
	movq	%r15, %rdi
	callq	zfree
	callq	__errno
	testl	%ebx, %ebx
	je	.LBB99_127
# %bb.126:                              #   in Loop: Header=BB99_36 Depth=1
	xorl	%r13d, %r13d
	cmpl	$116, (%rax)
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, %r14d
	jne	.LBB99_36
	jmp	.LBB99_127
.LBB99_153:                             #   in Loop: Header=BB99_36 Depth=1
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r13, %r12
	movl	-84(%rbp), %ebx         # 4-byte Reload
	movq	-144(%rbp), %r15        # 8-byte Reload
	jmp	.LBB99_123
.LBB99_167:
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	zfree
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movl	$.L.str.244, %edi
	callq	sdsnew
	movq	%r13, %rdi
	jmp	.LBB99_128
.LBB99_11:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB99_20
# %bb.12:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI99_0(,%rdx,8)
.LBB99_13:
	shrq	$3, %rax
	jmp	.LBB99_18
.LBB99_37:
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	zfree
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB99_165
.LBB99_127:
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	zfree
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	callq	sdsempty
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	movl	$.L.str.267, %ecx
	movl	$.L.str.266, %edx
	cmoveq	%rcx, %rdx
	movl	$.L.str.265, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB99_128:
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB99_166
.LBB99_20:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB99_21
.LBB99_14:
	movzbl	-3(%rcx), %eax
	jmp	.LBB99_18
.LBB99_15:
	movzwl	-5(%rcx), %eax
	jmp	.LBB99_18
.LBB99_16:
	movl	-9(%rcx), %eax
	jmp	.LBB99_18
.LBB99_17:
	movq	-17(%rcx), %rax
.LBB99_18:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_21
# %bb.19:
	movl	$.L.str.243, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	jmp	.LBB99_166
.LBB99_21:
	leal	1(%r13), %eax
	notl	%r13d
	addl	%r13d, %r14d
	movslq	%eax, %r12
                                        # kill: def $r14d killed $r14d killed $r14
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB99_25
.LBB99_162:
	cmpb	$0, -104(%rbp)          # 1-byte Folded Reload
	je	.LBB99_164
# %bb.163:
	movq	-168(%rbp), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	shared+8(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
.LBB99_164:
	movq	-224(%rbp), %rdi
	callq	sdsfree
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	zfree
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	%r15, %rdi
.LBB99_165:
	callq	zfree
.LBB99_166:
	movl	$42, __A_VARIABLE(%rip)
	addq	$3432, %rsp             # imm = 0xD68
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB99_68:
	movl	$.L.str.252, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5193, %r8d             # imm = 0x1449
	jmp	.LBB99_41
.LBB99_75:
	movl	$.L.str.257, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5200, %r8d             # imm = 0x1450
	jmp	.LBB99_41
.LBB99_85:
	movl	$.L.str.258, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5202, %r8d             # imm = 0x1452
	jmp	.LBB99_41
.LBB99_87:
	movl	$.L.str.259, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5203, %r8d             # imm = 0x1453
	jmp	.LBB99_41
.LBB99_97:
	movl	$.L.str.260, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5210, %r8d             # imm = 0x145A
	jmp	.LBB99_41
.LBB99_100:
	movl	$.L.str.262, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5216, %r8d             # imm = 0x1460
	jmp	.LBB99_41
.LBB99_71:
	movl	$.L.str.254, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5197, %r8d             # imm = 0x144D
	jmp	.LBB99_41
.LBB99_73:
	movl	$.L.str.256, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5199, %r8d             # imm = 0x144F
.LBB99_41:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB99_40:
	movl	$.L.str.245, %edx
	movl	$.L.str.8, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$5155, %r8d             # imm = 0x1423
	jmp	.LBB99_41
.LBB99_43:
	movl	$.L.str.247, %edx
	movl	$.L.str.8, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$5156, %r8d             # imm = 0x1424
	jmp	.LBB99_41
.LBB99_53:
	movl	$.L.str.248, %edx
	movl	$.L.str.8, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$5158, %r8d             # imm = 0x1426
	jmp	.LBB99_41
.LBB99_56:
	movl	$.L.str.245, %edx
	movl	$.L.str.8, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$5164, %r8d             # imm = 0x142C
	jmp	.LBB99_41
.LBB99_58:
	movl	$.L.str.250, %edx
	movl	$.L.str.8, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$5165, %r8d             # imm = 0x142D
	jmp	.LBB99_41
.LBB99_60:
	movl	$.L.str.251, %edx
	movl	$.L.str.8, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$5166, %r8d             # imm = 0x142E
	jmp	.LBB99_41
.Lfunc_end99:
	.size	migrateCommand, .Lfunc_end99-migrateCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI99_0:
	.quad	.LBB99_13
	.quad	.LBB99_14
	.quad	.LBB99_15
	.quad	.LBB99_16
	.quad	.LBB99_17
.LJTI99_1:
	.quad	.LBB99_47
	.quad	.LBB99_48
	.quad	.LBB99_49
	.quad	.LBB99_50
	.quad	.LBB99_51
.LJTI99_2:
	.quad	.LBB99_79
	.quad	.LBB99_80
	.quad	.LBB99_81
	.quad	.LBB99_82
	.quad	.LBB99_83
.LJTI99_3:
	.quad	.LBB99_91
	.quad	.LBB99_92
	.quad	.LBB99_93
	.quad	.LBB99_94
	.quad	.LBB99_95
.LJTI99_4:
	.quad	.LBB99_106
	.quad	.LBB99_107
	.quad	.LBB99_108
	.quad	.LBB99_109
	.quad	.LBB99_110
                                        # -- End function
	.text
	.globl	askingCommand           # -- Begin function askingCommand
	.p2align	4, 0x90
	.type	askingCommand,@function
askingCommand:                          # @askingCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, server+2924(%rip)
	je	.LBB100_1
# %bb.2:
	orb	$2, 161(%rdi)
	movq	shared+8(%rip), %rsi
	callq	addReply
	jmp	.LBB100_3
.LBB100_1:
	movl	$.L.str.127, %esi
	callq	addReplyError
.LBB100_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end100:
	.size	askingCommand, .Lfunc_end100-askingCommand
                                        # -- End function
	.globl	readonlyCommand         # -- Begin function readonlyCommand
	.p2align	4, 0x90
	.type	readonlyCommand,@function
readonlyCommand:                        # @readonlyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, server+2924(%rip)
	je	.LBB101_1
# %bb.2:
	orb	$2, 162(%rdi)
	movq	shared+8(%rip), %rsi
	callq	addReply
	jmp	.LBB101_3
.LBB101_1:
	movl	$.L.str.127, %esi
	callq	addReplyError
.LBB101_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end101:
	.size	readonlyCommand, .Lfunc_end101-readonlyCommand
                                        # -- End function
	.globl	readwriteCommand        # -- Begin function readwriteCommand
	.p2align	4, 0x90
	.type	readwriteCommand,@function
readwriteCommand:                       # @readwriteCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	andb	$-3, 162(%rdi)
	movq	shared+8(%rip), %rsi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end102:
	.size	readwriteCommand, .Lfunc_end102-readwriteCommand
                                        # -- End function
	.globl	getNodeByQuery          # -- Begin function getNodeByQuery
	.p2align	4, 0x90
	.type	getNodeByQuery,@function
getNodeByQuery:                         # @getNodeByQuery
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	testb	$4, server+2984(%rip)
	jne	.LBB103_29
# %bb.1:
	testq	%r9, %r9
	je	.LBB103_3
# %bb.2:
	movl	$0, (%r9)
.LBB103_3:
	movl	$execCommand, %eax
	cmpq	%rax, 8(%rsi)
	je	.LBB103_32
# %bb.4:
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, -72(%rbp)          # 8-byte Spill
	leaq	-160(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$1, -184(%rbp)
	movq	%rdx, -160(%rbp)
	movl	%ecx, -152(%rbp)
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB103_5:
	xorl	%ecx, %ecx
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB103_7
	.p2align	4, 0x90
.LBB103_6:                              #   in Loop: Header=BB103_7 Depth=1
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	getKeysFreeResult
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-112(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	cmpq	%rax, %rcx
	jge	.LBB103_40
.LBB103_7:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB103_10 Depth 2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rcx
	movq	16(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %edx
	movq	(%rax,%rcx,8), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	leaq	-64(%rbp), %rcx
	callq	getKeysFromCommand
	movq	%rax, -80(%rbp)         # 8-byte Spill
	cmpl	$0, -64(%rbp)
	jle	.LBB103_6
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB103_7 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB103_10
	.p2align	4, 0x90
.LBB103_9:                              #   in Loop: Header=BB103_10 Depth=2
	addq	$1, %r15
	movslq	-64(%rbp), %rax
	cmpq	%rax, %r15
	jge	.LBB103_6
.LBB103_10:                             #   Parent Loop BB103_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movslq	(%rax,%r15,4), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx,%rax,8), %r12
	movq	8(%r12), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB103_13
# %bb.11:                               #   in Loop: Header=BB103_10 Depth=2
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI103_0(,%rax,8)
.LBB103_12:                             #   in Loop: Header=BB103_10 Depth=2
	shrq	$3, %rsi
	jmp	.LBB103_18
.LBB103_13:                             #   in Loop: Header=BB103_10 Depth=2
	xorl	%esi, %esi
	jmp	.LBB103_18
.LBB103_14:                             #   in Loop: Header=BB103_10 Depth=2
	movzbl	-3(%rdi), %esi
	jmp	.LBB103_18
.LBB103_15:                             #   in Loop: Header=BB103_10 Depth=2
	movzwl	-5(%rdi), %esi
	jmp	.LBB103_18
.LBB103_16:                             #   in Loop: Header=BB103_10 Depth=2
	movl	-9(%rdi), %esi
	jmp	.LBB103_18
.LBB103_17:                             #   in Loop: Header=BB103_10 Depth=2
	movq	-17(%rdi), %rsi
	.p2align	4, 0x90
.LBB103_18:                             #   in Loop: Header=BB103_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	keyHashSlot
	movl	%eax, %ebx
	testq	%r14, %r14
	je	.LBB103_21
# %bb.19:                               #   in Loop: Header=BB103_10 Depth=2
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	equalStringObjects
	testl	%eax, %eax
	jne	.LBB103_27
# %bb.20:                               #   in Loop: Header=BB103_10 Depth=2
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	cmpl	%ebx, -44(%rbp)         # 4-byte Folded Reload
	je	.LBB103_27
	jmp	.LBB103_34
	.p2align	4, 0x90
.LBB103_21:                             #   in Loop: Header=BB103_10 Depth=2
	movq	server+2944(%rip), %rax
	movslq	%ebx, %rcx
	movq	262184(%rax,%rcx,8), %r13
	testq	%r13, %r13
	je	.LBB103_30
# %bb.22:                               #   in Loop: Header=BB103_10 Depth=2
	cmpq	myself(%rip), %r13
	je	.LBB103_24
.LBB103_23:                             #   in Loop: Header=BB103_10 Depth=2
	cmpq	$0, 131112(%rax,%rcx,8)
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	cmovnel	%ecx, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB103_26
.LBB103_24:                             #   in Loop: Header=BB103_10 Depth=2
	cmpq	$0, 40(%rax,%rcx,8)
	je	.LBB103_23
# %bb.25:                               #   in Loop: Header=BB103_10 Depth=2
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	$1, -52(%rbp)           # 4-byte Folded Spill
.LBB103_26:                             #   in Loop: Header=BB103_10 Depth=2
	movq	%r12, %r14
.LBB103_27:                             #   in Loop: Header=BB103_10 Depth=2
	movl	-48(%rbp), %eax         # 4-byte Reload
	orl	-52(%rbp), %eax         # 4-byte Folded Reload
	je	.LBB103_9
# %bb.28:                               #   in Loop: Header=BB103_10 Depth=2
	movq	server+48(%rip), %rdi
	movq	%r12, %rsi
	callq	lookupKeyRead
	cmpq	$1, %rax
	adcl	$0, -56(%rbp)           # 4-byte Folded Spill
	jmp	.LBB103_9
.LBB103_30:
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	getKeysFreeResult
	movq	-72(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB103_36
# %bb.31:
	movl	$6, (%rax)
	jmp	.LBB103_36
.LBB103_32:
	testb	$8, 160(%rdi)
	je	.LBB103_29
# %bb.38:
	cmpl	$0, 360(%rdi)
	jle	.LBB103_29
# %bb.39:
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r9, -72(%rbp)          # 8-byte Spill
	leaq	352(%rdi), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	leaq	360(%rdi), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB103_5
.LBB103_34:
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	getKeysFreeResult
	movq	-72(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB103_36
# %bb.35:
	movl	$1, (%rax)
.LBB103_36:
	xorl	%eax, %eax
	jmp	.LBB103_37
.LBB103_40:
	testq	%r13, %r13
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	je	.LBB103_29
# %bb.41:
	movq	server+2944(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB103_45
# %bb.42:
	testq	%rdx, %rdx
	je	.LBB103_36
# %bb.43:
	movl	$5, (%rdx)
	jmp	.LBB103_36
.LBB103_45:
	testq	%rcx, %rcx
	je	.LBB103_47
# %bb.46:
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, (%rcx)
.LBB103_47:
	movl	-48(%rbp), %ecx         # 4-byte Reload
	orl	-52(%rbp), %ecx         # 4-byte Folded Reload
	je	.LBB103_49
# %bb.48:
	movl	$migrateCommand, %ecx
	cmpq	%rcx, 8(%rsi)
	je	.LBB103_29
.LBB103_49:
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB103_55
# %bb.50:
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB103_55
# %bb.51:
	testq	%rdx, %rdx
	je	.LBB103_53
# %bb.52:
	movl	$3, (%rdx)
.LBB103_53:
	movslq	-44(%rbp), %rcx         # 4-byte Folded Reload
	movq	40(%rax,%rcx,8), %rax
	jmp	.LBB103_37
.LBB103_55:
	movl	160(%rdi), %eax
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB103_58
# %bb.56:
	testl	$512, %eax              # imm = 0x200
	jne	.LBB103_69
# %bb.57:
	testb	$16, 33(%rsi)
	jne	.LBB103_69
.LBB103_58:
	testl	$131072, %eax           # imm = 0x20000
	je	.LBB103_64
# %bb.59:
	testb	$2, 32(%rsi)
	jne	.LBB103_62
# %bb.60:
	movq	8(%rsi), %rax
	movl	$evalCommand, %ecx
	cmpq	%rcx, %rax
	je	.LBB103_62
# %bb.61:
	movl	$evalShaCommand, %ecx
	cmpq	%rcx, %rax
	jne	.LBB103_64
.LBB103_62:
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	je	.LBB103_64
# %bb.63:
	cmpq	%r13, 2128(%rax)
	je	.LBB103_37
.LBB103_64:
	testq	%rdx, %rdx
	je	.LBB103_67
# %bb.65:
	cmpq	myself(%rip), %r13
	je	.LBB103_67
# %bb.66:
	movl	$4, (%rdx)
.LBB103_67:
	movq	%r13, %rax
	jmp	.LBB103_37
.LBB103_69:
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB103_29
# %bb.70:
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB103_29
# %bb.71:
	testq	%rdx, %rdx
	je	.LBB103_36
# %bb.72:
	movl	$2, (%rdx)
	jmp	.LBB103_36
.LBB103_29:
	movq	myself(%rip), %rax
.LBB103_37:
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end103:
	.size	getNodeByQuery, .Lfunc_end103-getNodeByQuery
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI103_0:
	.quad	.LBB103_12
	.quad	.LBB103_14
	.quad	.LBB103_15
	.quad	.LBB103_16
	.quad	.LBB103_17
                                        # -- End function
	.text
	.globl	clusterRedirectClient   # -- Begin function clusterRedirectClient
	.p2align	4, 0x90
	.type	clusterRedirectClient,@function
clusterRedirectClient:                  # @clusterRedirectClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %ebx
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %r15
	leal	-1(%rbx), %eax
	cmpl	$5, %eax
	ja	.LBB104_8
# %bb.1:
	jmpq	*.LJTI104_0(,%rax,8)
.LBB104_2:
	movl	$.L.str.268, %edi
	jmp	.LBB104_3
.LBB104_6:
	movl	$.L.str.270, %edi
	jmp	.LBB104_3
.LBB104_5:
	movl	$.L.str.269, %edi
	jmp	.LBB104_3
.LBB104_7:
	movl	$.L.str.271, %edi
.LBB104_3:
	callq	sdsnew
.LBB104_4:
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB104_8:
	leal	-3(%rbx), %eax
	cmpl	$1, %eax
	ja	.LBB104_10
# %bb.9:
	callq	sdsempty
	cmpl	$3, %ebx
	movl	$.L.str.273, %ecx
	movl	$.L.str.274, %edx
	cmoveq	%rcx, %rdx
	movl	2240(%r12), %r9d
	addq	$2192, %r12             # imm = 0x890
	movl	$.L.str.272, %esi
	movq	%rax, %rdi
	movl	%r14d, %ecx
	movq	%r12, %r8
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB104_4
.LBB104_10:
	movl	$.L.str.8, %edi
	movl	$.L.str.275, %edx
	movl	$5652, %esi             # imm = 0x1614
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end104:
	.size	clusterRedirectClient, .Lfunc_end104-clusterRedirectClient
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI104_0:
	.quad	.LBB104_2
	.quad	.LBB104_5
	.quad	.LBB104_8
	.quad	.LBB104_8
	.quad	.LBB104_6
	.quad	.LBB104_7
                                        # -- End function
	.text
	.globl	clusterRedirectBlockedClientIfNeeded # -- Begin function clusterRedirectBlockedClientIfNeeded
	.p2align	4, 0x90
	.type	clusterRedirectBlockedClientIfNeeded,@function
clusterRedirectBlockedClientIfNeeded:   # @clusterRedirectBlockedClientIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	xorl	%r15d, %r15d
	testb	$16, 160(%rdi)
	je	.LBB105_21
# %bb.1:
	movq	%rdi, %rbx
	movl	384(%rdi), %eax
	cmpl	$5, %eax
	ja	.LBB105_21
# %bb.2:
	movl	$50, %ecx
	btl	%eax, %ecx
	jae	.LBB105_21
# %bb.3:
	movq	server+2944(%rip), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB105_5
# %bb.4:
	movl	$.L.str.270, %edi
	callq	sdsnew
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jmp	.LBB105_21
.LBB105_5:
	movq	400(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB105_20
# %bb.6:
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB105_7
# %bb.8:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI105_0(,%rax,8)
.LBB105_9:
	shrq	$3, %rsi
	jmp	.LBB105_14
.LBB105_7:
	xorl	%esi, %esi
	jmp	.LBB105_14
.LBB105_10:
	movzbl	-3(%rdi), %esi
	jmp	.LBB105_14
.LBB105_11:
	movzwl	-5(%rdi), %esi
	jmp	.LBB105_14
.LBB105_12:
	movl	-9(%rdi), %esi
	jmp	.LBB105_14
.LBB105_13:
	movq	-17(%rdi), %rsi
.LBB105_14:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	keyHashSlot
	movl	%eax, %r12d
	movq	server+2944(%rip), %rax
	movslq	%r12d, %rcx
	movq	262184(%rax,%rcx,8), %r13
	cmpq	myself(%rip), %r13
	je	.LBB105_20
# %bb.15:
	cmpq	$0, 131112(%rax,%rcx,8)
	je	.LBB105_16
.LBB105_20:
	movq	%r14, %rdi
	callq	dictReleaseIterator
.LBB105_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB105_16:
	testq	%r13, %r13
	je	.LBB105_17
# %bb.18:
	callq	sdsempty
	movl	2240(%r13), %r9d
	addq	$2192, %r13             # imm = 0x890
	movl	$.L.str.272, %esi
	movl	$.L.str.274, %edx
	movq	%rax, %rdi
	movl	%r12d, %ecx
	movq	%r13, %r8
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB105_19
.LBB105_17:
	movl	$.L.str.271, %edi
	callq	sdsnew
.LBB105_19:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$1, %r15d
	jmp	.LBB105_21
.Lfunc_end105:
	.size	clusterRedirectBlockedClientIfNeeded, .Lfunc_end105-clusterRedirectBlockedClientIfNeeded
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI105_0:
	.quad	.LBB105_9
	.quad	.LBB105_10
	.quad	.LBB105_11
	.quad	.LBB105_12
	.quad	.LBB105_13
                                        # -- End function
	.type	myself,@object          # @myself
	.bss
	.globl	myself
	.p2align	3
myself:
	.quad	0
	.size	myself, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Loading the cluster node config from %s: %s"
	.size	.L.str.1, 44

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"vars"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"currentEpoch"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"lastVoteEpoch"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Skipping unknown cluster config variable '%s'"
	.size	.L.str.5, 46

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"myself"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"server.cluster->myself == NULL"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/cluster.c"
	.size	.L.str.8, 75

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"master"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"slave"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fail?"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"fail"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"handshake"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"noaddr"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"nofailover"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"noflags"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unknown flag in redis cluster config file"
	.size	.L.str.17, 42

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"p != NULL"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Node configuration loaded, I'm %.40s"
	.size	.L.str.19, 37

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Unrecoverable error: corrupted cluster config file."
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"vars currentEpoch %llu lastVoteEpoch %llu\n"
	.size	.L.str.21, 43

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Fatal: can't update cluster config file."
	.size	.L.str.22, 41

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Can't open %s in order to acquire a lock: %s"
	.size	.L.str.23, 45

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Sorry, the cluster configuration file %s is already used by a different Redis Cluster node. Please make sure that different nodes use different cluster configuration files."
	.size	.L.str.24, 173

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Impossible to lock %s: %s"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"No cluster configuration found, I'm %.40s"
	.size	.L.str.26, 42

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Redis port number too high. Cluster communication port is 10,000 port numbers higher than your Redis port. Your Redis port number must be lower than 55535."
	.size	.L.str.27, 156

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Unrecoverable error creating Redis Cluster file event."
	.size	.L.str.28, 55

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"configEpoch set to 0 via CLUSTER RESET HARD"
	.size	.L.str.29, 44

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Node hard reset, now I'm %.40s"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Error accepting cluster node: %s"
	.size	.L.str.31, 33

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Accepted cluster node %s:%d"
	.size	.L.str.32, 28

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"dictDelete(server.cluster->nodes,nodename) == DICT_OK"
	.size	.L.str.33, 54

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Renaming node %.40s into %.40s"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"retval == DICT_OK"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"New configEpoch set to %llu"
	.size	.L.str.36, 28

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"WARNING: configEpoch collision with node %.40s. configEpoch set to %llu"
	.size	.L.str.37, 72

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Marking node %.40s as failing (quorum reached)."
	.size	.L.str.38, 48

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"nodeFailed(node)"
	.size	.L.str.39, 17

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Clear FAIL state for node %.40s: %s is reachable again."
	.size	.L.str.40, 56

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"replica"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"master without slots"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Clear FAIL state for node %.40s: is reachable again and nobody is serving its slots after some time."
	.size	.L.str.43, 101

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"GOSSIP %.40s %s:%d@%d %s"
	.size	.L.str.44, 25

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Node %.40s reported node %.40s as not reachable."
	.size	.L.str.45, 49

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Node %.40s reported node %.40s is back online."
	.size	.L.str.46, 47

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Address updated for node %.40s, now %s:%d"
	.size	.L.str.47, 42

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Discarding UPDATE message about myself."
	.size	.L.str.48, 40

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Configuration change detected. Reconfiguring myself as a replica of %.40s"
	.size	.L.str.49, 74

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"--- Processing packet of type %d, %lu bytes"
	.size	.L.str.50, 44

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Received replication offset for paused master manual failover: %lld"
	.size	.L.str.51, 68

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Ping packet received: %p"
	.size	.L.str.52, 25

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"IP address for this node updated to %s"
	.size	.L.str.53, 39

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%s packet received: %p"
	.size	.L.str.54, 23

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"ping"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"pong"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Handshake: we already know node %.40s, updating the address if needed."
	.size	.L.str.57, 71

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Handshake with node %.40s completed."
	.size	.L.str.58, 37

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"PONG contains mismatching sender ID. About node %.40s added %d ms ago, having flags %d"
	.size	.L.str.59, 87

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata,"a",@progbits
.L.str.60:
	.zero	41
	.size	.L.str.60, 41

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"Node %.40s has old slots configuration, sending an UPDATE message about %.40s"
	.size	.L.str.61, 78

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"FAIL message received from %.40s about %.40s"
	.size	.L.str.62, 45

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Ignoring FAIL message from unknown node %.40s about %.40s"
	.size	.L.str.63, 58

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Manual failover requested by replica %.40s."
	.size	.L.str.64, 44

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Received unknown packet type: %d"
	.size	.L.str.65, 33

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"I/O error writing to node link: %s"
	.size	.L.str.66, 35

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"short write"
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"RCmb"
	.size	.L.str.68, 5

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Bad message length or signature received from Cluster bus."
	.size	.L.str.69, 59

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"I/O error reading from node link: %s"
	.size	.L.str.70, 37

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"connection closed"
	.size	.L.str.71, 18

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Failover auth denied to %.40s: reqEpoch (%llu) < curEpoch(%llu)"
	.size	.L.str.72, 64

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Failover auth denied to %.40s: already voted for epoch %llu"
	.size	.L.str.73, 60

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Failover auth denied to %.40s: it is a master node"
	.size	.L.str.74, 51

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Failover auth denied to %.40s: I don't know its master"
	.size	.L.str.75, 55

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Failover auth denied to %.40s: its master is up"
	.size	.L.str.76, 48

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Failover auth denied to %.40s: can't vote about this master before %lld milliseconds"
	.size	.L.str.77, 85

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Failover auth denied to %.40s: slot %d epoch (%llu) > reqEpoch (%llu)"
	.size	.L.str.78, 70

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Failover auth granted to %.40s for epoch %llu"
	.size	.L.str.79, 46

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"nodeIsSlave(myself)"
	.size	.L.str.80, 20

	.type	clusterLogCantFailover.lastlog_time,@object # @clusterLogCantFailover.lastlog_time
	.local	clusterLogCantFailover.lastlog_time
	.comm	clusterLogCantFailover.lastlog_time,8,8
	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Disconnected from master for longer than allowed. Please check the 'cluster-replica-validity-factor' configuration option."
	.size	.L.str.81, 123

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Waiting the delay before I can start a new failover."
	.size	.L.str.82, 53

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Failover attempt expired."
	.size	.L.str.83, 26

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Waiting for votes, but majority still not reached."
	.size	.L.str.84, 51

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Unknown reason code."
	.size	.L.str.85, 21

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Currently unable to failover: %s"
	.size	.L.str.86, 33

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Start of election delayed for %lld milliseconds (rank #%d, offset %lld)."
	.size	.L.str.87, 73

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Replica rank updated to #%d, added %lld milliseconds of delay."
	.size	.L.str.88, 63

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Starting a failover election for epoch %llu."
	.size	.L.str.89, 45

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Failover election won: I'm the new master."
	.size	.L.str.90, 43

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"configEpoch set to %llu after successful failover"
	.size	.L.str.91, 50

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Migrating to orphaned master %.40s"
	.size	.L.str.92, 35

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Manual failover timed out."
	.size	.L.str.93, 27

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"All master replication stream processed, manual failover can start."
	.size	.L.str.94, 68

	.type	clusterCron.iteration,@object # @clusterCron.iteration
	.local	clusterCron.iteration
	.comm	clusterCron.iteration,8,8
	.type	clusterCron.prev_ip,@object # @clusterCron.prev_ip
	.local	clusterCron.prev_ip
	.comm	clusterCron.prev_ip,8,8
	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Unable to connect to Cluster Node [%s]:%d -> %s"
	.size	.L.str.95, 48

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Connecting with Node %.40s at %s:%d"
	.size	.L.str.96, 36

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Pinging node %.40s"
	.size	.L.str.97, 19

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"*** NODE %.40s possibly failing"
	.size	.L.str.98, 32

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"clusterNodeClearSlotBit(n,slot) == 1"
	.size	.L.str.99, 37

	.type	clusterUpdateState.among_minority_time,@object # @clusterUpdateState.among_minority_time
	.local	clusterUpdateState.among_minority_time
	.comm	clusterUpdateState.among_minority_time,8,8
	.type	clusterUpdateState.first_call_time,@object # @clusterUpdateState.first_call_time
	.local	clusterUpdateState.first_call_time
	.comm	clusterUpdateState.first_call_time,8,8
	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Cluster state changed: %s"
	.size	.L.str.100, 26

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"ok"
	.size	.L.str.101, 3

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"I have keys for unassigned slot %d. Taking responsibility for it."
	.size	.L.str.102, 66

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"I have keys for slot %d, but the slot is assigned to another node. Setting it to importing state."
	.size	.L.str.103, 98

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"n != myself"
	.size	.L.str.104, 12

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"myself->numslots == 0"
	.size	.L.str.105, 22

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"noflags,"
	.size	.L.str.106, 9

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"%.40s %s:%d@%d "
	.size	.L.str.107, 16

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	" %.40s "
	.size	.L.str.108, 8

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	" - "
	.size	.L.str.109, 4

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"%lld %lld %llu %s"
	.size	.L.str.110, 18

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"connected"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"disconnected"
	.size	.L.str.112, 13

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	" %d"
	.size	.L.str.113, 4

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	" %d-%d"
	.size	.L.str.114, 7

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	" [%d->-%.40s]"
	.size	.L.str.115, 14

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	" [%d-<-%.40s]"
	.size	.L.str.116, 14

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"\n"
	.size	.L.str.117, 2

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"meet"
	.size	.L.str.118, 5

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"publish"
	.size	.L.str.119, 8

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"auth-req"
	.size	.L.str.120, 9

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"auth-ack"
	.size	.L.str.121, 9

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"update"
	.size	.L.str.122, 7

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"mfstart"
	.size	.L.str.123, 8

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"module"
	.size	.L.str.124, 7

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"unknown"
	.size	.L.str.125, 8

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Invalid or out of range slot"
	.size	.L.str.126, 29

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"This instance has cluster support disabled"
	.size	.L.str.127, 43

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"help"
	.size	.L.str.128, 5

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"ADDSLOTS <slot> [slot ...] -- Assign slots to current node."
	.size	.L.str.129, 60

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"BUMPEPOCH -- Advance the cluster config epoch."
	.size	.L.str.130, 47

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"COUNT-failure-reports <node-id> -- Return number of failure reports for <node-id>."
	.size	.L.str.131, 83

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"COUNTKEYSINSLOT <slot> - Return the number of keys in <slot>."
	.size	.L.str.132, 62

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"DELSLOTS <slot> [slot ...] -- Delete slots information from current node."
	.size	.L.str.133, 74

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"FAILOVER [force|takeover] -- Promote current replica node to being a master."
	.size	.L.str.134, 77

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"FORGET <node-id> -- Remove a node from the cluster."
	.size	.L.str.135, 52

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"GETKEYSINSLOT <slot> <count> -- Return key names stored by current node in a slot."
	.size	.L.str.136, 83

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"FLUSHSLOTS -- Delete current node own slots information."
	.size	.L.str.137, 57

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"INFO - Return onformation about the cluster."
	.size	.L.str.138, 45

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"KEYSLOT <key> -- Return the hash slot for <key>."
	.size	.L.str.139, 49

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"MEET <ip> <port> [bus-port] -- Connect nodes into a working cluster."
	.size	.L.str.140, 69

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"MYID -- Return the node id."
	.size	.L.str.141, 28

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"NODES -- Return cluster configuration seen by node. Output format:"
	.size	.L.str.142, 67

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"    <id> <ip:port> <flags> <master> <pings> <pongs> <epoch> <link> <slot> ... <slot>"
	.size	.L.str.143, 85

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"REPLICATE <node-id> -- Configure current node as replica to <node-id>."
	.size	.L.str.144, 71

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"RESET [hard|soft] -- Reset current node (default: soft)."
	.size	.L.str.145, 57

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"SET-config-epoch <epoch> - Set config epoch of current node."
	.size	.L.str.146, 61

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"SETSLOT <slot> (importing|migrating|stable|node <node-id>) -- Set slot state."
	.size	.L.str.147, 78

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"REPLICAS <node-id> -- Return <node-id> replicas."
	.size	.L.str.148, 49

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"SLOTS -- Return information about slots range mappings. Each range is made of:"
	.size	.L.str.149, 79

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"    start, end, master and replicas IP addresses, ports and ids"
	.size	.L.str.150, 64

	.type	.LclusterCommand.help,@object # @clusterCommand.help
	.section	.rodata,"a",@progbits
	.p2align	4
.LclusterCommand.help:
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	0
	.size	.LclusterCommand.help, 184

	.type	.L.str.151,@object      # @.str.151
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.151:
	.asciz	"Invalid TCP base port specified: %s"
	.size	.L.str.151, 36

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Invalid TCP bus port specified: %s"
	.size	.L.str.152, 35

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"Invalid node address specified: %s:%s"
	.size	.L.str.153, 38

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"nodes"
	.size	.L.str.154, 6

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"myid"
	.size	.L.str.155, 5

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"slots"
	.size	.L.str.156, 6

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"flushslots"
	.size	.L.str.157, 11

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"DB must be empty to perform CLUSTER FLUSHSLOTS."
	.size	.L.str.158, 48

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"addslots"
	.size	.L.str.159, 9

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"delslots"
	.size	.L.str.160, 9

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Slot %d is already unassigned"
	.size	.L.str.161, 30

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Slot %d is already busy"
	.size	.L.str.162, 24

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Slot %d specified multiple times"
	.size	.L.str.163, 33

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"retval == C_OK"
	.size	.L.str.164, 15

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"setslot"
	.size	.L.str.165, 8

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"Please use SETSLOT only with masters."
	.size	.L.str.166, 38

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"migrating"
	.size	.L.str.167, 10

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"I'm not the owner of hash slot %u"
	.size	.L.str.168, 34

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"I don't know about node %s"
	.size	.L.str.169, 27

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"importing"
	.size	.L.str.170, 10

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"I'm already the owner of hash slot %u"
	.size	.L.str.171, 38

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"stable"
	.size	.L.str.172, 7

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"node"
	.size	.L.str.173, 5

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"Unknown node %s"
	.size	.L.str.174, 16

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"Can't assign hashslot %d to a different node while I still hold keys for this hash slot."
	.size	.L.str.175, 89

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"configEpoch updated after importing slot %d"
	.size	.L.str.176, 44

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Invalid CLUSTER SETSLOT action or number of arguments. Try CLUSTER HELP"
	.size	.L.str.177, 72

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"bumpepoch"
	.size	.L.str.178, 10

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"+%s %llu\r\n"
	.size	.L.str.179, 11

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"BUMPED"
	.size	.L.str.180, 7

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"STILL"
	.size	.L.str.181, 6

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"info"
	.size	.L.str.182, 5

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"needhelp"
	.size	.L.str.183, 9

	.type	.LclusterCommand.statestr,@object # @clusterCommand.statestr
	.section	.rodata,"a",@progbits
	.p2align	4
.LclusterCommand.statestr:
	.quad	.L.str.101
	.quad	.L.str.12
	.quad	.L.str.183
	.size	.LclusterCommand.statestr, 24

	.type	.L.str.184,@object      # @.str.184
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.184:
	.asciz	"cluster_state:%s\r\ncluster_slots_assigned:%d\r\ncluster_slots_ok:%d\r\ncluster_slots_pfail:%d\r\ncluster_slots_fail:%d\r\ncluster_known_nodes:%lu\r\ncluster_size:%d\r\ncluster_current_epoch:%llu\r\ncluster_my_epoch:%llu\r\n"
	.size	.L.str.184, 207

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"cluster_stats_messages_%s_sent:%lld\r\n"
	.size	.L.str.185, 38

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"cluster_stats_messages_sent:%lld\r\n"
	.size	.L.str.186, 35

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"cluster_stats_messages_%s_received:%lld\r\n"
	.size	.L.str.187, 42

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"cluster_stats_messages_received:%lld\r\n"
	.size	.L.str.188, 39

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"$%lu\r\n"
	.size	.L.str.189, 7

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"saveconfig"
	.size	.L.str.190, 11

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"error saving the cluster node config: %s"
	.size	.L.str.191, 41

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"keyslot"
	.size	.L.str.192, 8

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"countkeysinslot"
	.size	.L.str.193, 16

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Invalid slot"
	.size	.L.str.194, 13

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"getkeysinslot"
	.size	.L.str.195, 14

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"Invalid slot or number of keys"
	.size	.L.str.196, 31

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"forget"
	.size	.L.str.197, 7

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"I tried hard but I can't forget myself..."
	.size	.L.str.198, 42

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"Can't forget my master!"
	.size	.L.str.199, 24

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"replicate"
	.size	.L.str.200, 10

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"Can't replicate myself"
	.size	.L.str.201, 23

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"I can only replicate a master, not a replica."
	.size	.L.str.202, 46

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"To set a master the node must be empty and without assigned slots."
	.size	.L.str.203, 67

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"slaves"
	.size	.L.str.204, 7

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"replicas"
	.size	.L.str.205, 9

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"The specified node is not a master"
	.size	.L.str.206, 35

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"count-failure-reports"
	.size	.L.str.207, 22

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"failover"
	.size	.L.str.208, 9

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"force"
	.size	.L.str.209, 6

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"takeover"
	.size	.L.str.210, 9

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"You should send CLUSTER FAILOVER to a replica"
	.size	.L.str.211, 46

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"I'm a replica but my master is unknown to me"
	.size	.L.str.212, 45

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"Master is down or failed, please use CLUSTER FAILOVER FORCE"
	.size	.L.str.213, 60

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"Taking over the master (user request)."
	.size	.L.str.214, 39

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"Forced failover user request accepted."
	.size	.L.str.215, 39

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"Manual failover user request accepted."
	.size	.L.str.216, 39

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"set-config-epoch"
	.size	.L.str.217, 17

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"Invalid config epoch specified: %lld"
	.size	.L.str.218, 37

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"The user can assign a config epoch only when the node does not know any other node."
	.size	.L.str.219, 84

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"Node config epoch is already non-zero"
	.size	.L.str.220, 38

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"configEpoch set to %llu via CLUSTER SET-CONFIG-EPOCH"
	.size	.L.str.221, 53

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"reset"
	.size	.L.str.222, 6

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"hard"
	.size	.L.str.223, 5

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"soft"
	.size	.L.str.224, 5

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"CLUSTER RESET can't be called with master nodes containing keys"
	.size	.L.str.225, 64

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"rdbSaveObjectType(payload,o)"
	.size	.L.str.226, 29

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"rdbSaveObject(payload,o,key)"
	.size	.L.str.227, 29

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"replace"
	.size	.L.str.228, 8

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"absttl"
	.size	.L.str.229, 7

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"idletime"
	.size	.L.str.230, 9

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"Invalid IDLETIME value, must be >= 0"
	.size	.L.str.231, 37

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"freq"
	.size	.L.str.232, 5

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Invalid FREQ value, must be >= 0 and <= 255"
	.size	.L.str.233, 44

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"Invalid TTL value, must be >= 0"
	.size	.L.str.234, 32

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"DUMP payload version or checksum are wrong"
	.size	.L.str.235, 43

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"Bad data format"
	.size	.L.str.236, 16

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	":"
	.size	.L.str.237, 2

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"Can't connect to target node: %s"
	.size	.L.str.238, 33

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"-IOERR error or timeout connecting to the client\r\n"
	.size	.L.str.239, 51

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"copy"
	.size	.L.str.240, 5

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"auth"
	.size	.L.str.241, 5

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"keys"
	.size	.L.str.242, 5

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"When using MIGRATE KEYS option, the key argument must be set to the empty string"
	.size	.L.str.243, 81

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"+NOKEY\r\n"
	.size	.L.str.244, 9

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"rioWriteBulkCount(&cmd,'*',2)"
	.size	.L.str.245, 30

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"AUTH"
	.size	.L.str.246, 5

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"rioWriteBulkString(&cmd,\"AUTH\",4)"
	.size	.L.str.247, 34

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"rioWriteBulkString(&cmd,password, sdslen(password))"
	.size	.L.str.248, 52

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"SELECT"
	.size	.L.str.249, 7

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"rioWriteBulkString(&cmd,\"SELECT\",6)"
	.size	.L.str.250, 36

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"rioWriteBulkLongLong(&cmd,dbid)"
	.size	.L.str.251, 32

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"rioWriteBulkCount(&cmd,'*',replace ? 5 : 4)"
	.size	.L.str.252, 44

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"RESTORE-ASKING"
	.size	.L.str.253, 15

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"rioWriteBulkString(&cmd,\"RESTORE-ASKING\",14)"
	.size	.L.str.254, 45

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"RESTORE"
	.size	.L.str.255, 8

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"rioWriteBulkString(&cmd,\"RESTORE\",7)"
	.size	.L.str.256, 37

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"sdsEncodedObject(kv[j])"
	.size	.L.str.257, 24

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"rioWriteBulkString(&cmd,kv[j]->ptr, sdslen(kv[j]->ptr))"
	.size	.L.str.258, 56

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"rioWriteBulkLongLong(&cmd,ttl)"
	.size	.L.str.259, 31

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"rioWriteBulkString(&cmd,payload.io.buffer.ptr, sdslen(payload.io.buffer.ptr))"
	.size	.L.str.260, 78

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"REPLACE"
	.size	.L.str.261, 8

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"rioWriteBulkString(&cmd,\"REPLACE\",7)"
	.size	.L.str.262, 37

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"Target instance replied with error: %s"
	.size	.L.str.263, 39

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"DEL"
	.size	.L.str.264, 4

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"-IOERR error or timeout %s to target instance\r\n"
	.size	.L.str.265, 48

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"writing"
	.size	.L.str.266, 8

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"reading"
	.size	.L.str.267, 8

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"-CROSSSLOT Keys in request don't hash to the same slot\r\n"
	.size	.L.str.268, 57

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"-TRYAGAIN Multiple keys request during rehashing of slot\r\n"
	.size	.L.str.269, 59

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"-CLUSTERDOWN The cluster is down\r\n"
	.size	.L.str.270, 35

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"-CLUSTERDOWN Hash slot not served\r\n"
	.size	.L.str.271, 36

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"-%s %d %s:%d\r\n"
	.size	.L.str.272, 15

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"ASK"
	.size	.L.str.273, 4

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"MOVED"
	.size	.L.str.274, 6

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"getNodeByQuery() unknown error."
	.size	.L.str.275, 32

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"myself,"
	.size	.L.str.276, 8

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"master,"
	.size	.L.str.277, 8

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"slave,"
	.size	.L.str.278, 7

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"fail?,"
	.size	.L.str.279, 7

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"fail,"
	.size	.L.str.280, 6

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"handshake,"
	.size	.L.str.281, 11

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"noaddr,"
	.size	.L.str.282, 8

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"nofailover,"
	.size	.L.str.283, 12

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.clusterLogCantFailover,@object # @switch.table.clusterLogCantFailover
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.clusterLogCantFailover:
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.size	.Lswitch.table.clusterLogCantFailover, 32

	.type	.Lswitch.table.clusterCommand.284,@object # @switch.table.clusterCommand.284
	.p2align	4
.Lswitch.table.clusterCommand.284:
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.118
	.quad	.L.str.12
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.size	.Lswitch.table.clusterCommand.284, 80

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
