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
	movq	%rdi, %r14
	movl	$.L.str, %esi
	callq	fopen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.3:
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	fileno
	leaq	-176(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_7
# %bb.4:
	cmpq	$0, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
.LBB0_7:
	movl	$2098176, %edi          # imm = 0x200400
	callq	zmalloc
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movl	$2098176, %esi          # imm = 0x200400
	movq	%r15, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_108
# %bb.8:
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%r13, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_9
.LBB0_105:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
.LBB0_106:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%r12, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	sdsfreesplitres
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_107:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	$2098176, %esi          # imm = 0x200400
	movq	%r15, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_108
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #     Child Loop BB0_80 Depth 2
                                        #       Child Loop BB0_101 Depth 3
                                        #     Child Loop BB0_16 Depth 2
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %al
	je	.LBB0_107
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_107
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%r13, %rdi
	leaq	-56(%rbp), %rsi
	callq	sdssplitargs
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_86
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, %r12
	movq	(%rax), %rbx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	-56(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.23:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %esi
	jl	.LBB0_86
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_9 Depth=1
	movq	8(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB0_28
	jmp	.LBB0_27
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB0_87
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jl	.LBB0_22
# %bb.15:                               # %.preheader
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
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	-56(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %esi
	jle	.LBB0_22
.LBB0_16:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12,%rbx,8), %r14
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$.L.str.5, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	movq	8(%r12,%rbx,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	server+2944(%rip), %rcx
	movq	%rax, 524408(%rcx)
	jmp	.LBB0_21
.LBB0_22:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%r12, %rdi
	callq	sdsfreesplitres
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_107
.LBB0_25:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:                               #   in Loop: Header=BB0_9 Depth=1
	movq	(%r12), %rdi
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
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:                               #   in Loop: Header=BB0_9 Depth=1
	movq	8(%r12), %rdi
	movl	$58, %esi
	callq	strrchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_86
# %bb.29:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	2192(%rax), %r15
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	8(%r12), %r12
	movq	%r12, %rdi
	callq	strlen
	leaq	1(%rax), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	addq	$1, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_30
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, %r15
	movb	$0, (%rax)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_9 Depth=1
	xorl	%r15d, %r15d
.LBB0_32:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, %rdi
	callq	atoi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%eax, 2240(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movq	-80(%rbp), %r12         # 8-byte Reload
	je	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%r15, %rdi
	callq	atoi
	jmp	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_9 Depth=1
	addl	$10000, %eax            # imm = 0x2710
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%eax, 2244(%rcx)
	movq	16(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_63
	.p2align	4, 0x90
.LBB0_36:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movl	$44, %esi
	callq	strchr
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	movb	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_38:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_39
# %bb.42:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_43
# %bb.44:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_45
# %bb.46:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_47
# %bb.48:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_49
# %bb.50:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_51
# %bb.52:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_53
# %bb.54:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_55
# %bb.56:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_60
	jmp	.LBB0_57
	.p2align	4, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_36 Depth=2
	movq	server+2944(%rip), %rax
	cmpq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_40
# %bb.58:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rcx, myself(%rip)
	orb	$16, 48(%rcx)
	jmp	.LBB0_59
	.p2align	4, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$1, 48(%rax)
	jmp	.LBB0_59
.LBB0_45:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$2, 48(%rax)
	jmp	.LBB0_59
.LBB0_47:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$4, 48(%rax)
	jmp	.LBB0_59
.LBB0_49:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rbx         # 8-byte Reload
	orb	$8, 48(%rbx)
	callq	mstime
	movq	%rax, 2152(%rbx)
	jmp	.LBB0_59
.LBB0_51:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$32, 48(%rax)
	jmp	.LBB0_59
.LBB0_53:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$64, 48(%rax)
	jmp	.LBB0_59
.LBB0_55:                               #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$2, 49(%rax)
	.p2align	4, 0x90
.LBB0_59:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_60:                               #   in Loop: Header=BB0_36 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_36 Depth=2
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	jmp	.LBB0_36
.LBB0_62:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_63:                               #   in Loop: Header=BB0_9 Depth=1
	movq	24(%r12), %rdi
	cmpb	$45, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_74
# %bb.64:                               #   in Loop: Header=BB0_9 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_65
# %bb.66:                               #   in Loop: Header=BB0_9 Depth=1
	movq	8(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_68
	jmp	.LBB0_67
.LBB0_65:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_67:                               #   in Loop: Header=BB0_9 Depth=1
	movq	24(%r12), %rdi
	xorl	%esi, %esi
	callq	createClusterNode
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %r15
	leaq	8(%rbx), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_68:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rbx, 2128(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%rbx), %rax
	movq	2120(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB0_72
# %bb.69:                               #   in Loop: Header=BB0_9 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_70:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, (%rdi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_73
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB0_70
.LBB0_72:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 2120(%rbx)
	movslq	2116(%rbx), %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, (%rax,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 2116(%rbx)
	orb	$1, 49(%rbx)
.LBB0_73:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_74:                               #   in Loop: Header=BB0_9 Depth=1
	movq	32(%r12), %rdi
	callq	atoi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_9 Depth=1
	callq	mstime
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 2136(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_76:                               #   in Loop: Header=BB0_9 Depth=1
	movq	40(%r12), %rdi
	callq	atoi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_9 Depth=1
	callq	mstime
	movq	%rax, 2144(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_78:                               #   in Loop: Header=BB0_9 Depth=1
	movq	48(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	%rax, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	-56(%rbp), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %esi
	jl	.LBB0_106
# %bb.79:                               # %.preheader2
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$8, %r14d
	jmp	.LBB0_80
.LBB0_90:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_92:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$2264, %edi             # imm = 0x8D8
	callq	zmalloc
	movq	%rax, %r12
	leaq	8(%rax), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %edx
	movq	%r13, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	callq	mstime
	movq	%rax, (%r12)
	movq	$0, 56(%r12)
	movl	$0, 48(%r12)
	leaq	64(%r12), %rdi
	movl	$2048, %edx             # imm = 0x800
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2112(%r12)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2120(%r12)
	movups	%xmm0, 2136(%r12)
	movq	$0, 2152(%r12)
	movq	$0, 2248(%r12)
	leaq	2192(%r12), %rdi
	movl	$46, %edx
	xorl	%esi, %esi
	callq	memset
	movq	$0, 2240(%r12)
	callq	listCreate
	movq	%rax, 2256(%r12)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2160(%r12)
	movups	%xmm0, 2176(%r12)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rbx
	movl	$40, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	sdsnewlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r12, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_93:                               #   in Loop: Header=BB0_80 Depth=2
	cmpb	$62, -49(%rbp)          # 1-byte Folded Reload
	movq	server+2944(%rip), %rax
	movslq	%r15d, %rcx
	leaq	40(%rax,%rcx,8), %rdx
	leaq	131112(%rax,%rcx,8), %rax
	cmoveq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_104:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	-56(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r14
	movq	-80(%rbp), %r12         # 8-byte Reload
	jge	.LBB0_105
.LBB0_80:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_101 Depth 3
	movq	(%r12,%r14,8), %rdi
	movb	(%rdi), %bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$45, %esi
	callq	strchr
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$91, %bl
	jne	.LBB0_94
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=2
	testq	%r13, %r13
	je	.LBB0_82
# %bb.83:                               #   in Loop: Header=BB0_80 Depth=2
	movb	$0, (%r13)
	movb	1(%r13), %al
	movb	%al, -49(%rbp)          # 1-byte Spill
	movq	(%r12,%r14,8), %rdi
	addq	$1, %rdi
	callq	atoi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16384, %eax            # imm = 0x4000
	jae	.LBB0_84
# %bb.89:                               #   in Loop: Header=BB0_80 Depth=2
	movl	%eax, %r15d
	addq	$3, %r13
	movl	$40, %esi
	movq	%r13, %rdi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_90
# %bb.91:                               #   in Loop: Header=BB0_80 Depth=2
	movq	8(%r12), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB0_93
	jmp	.LBB0_92
	.p2align	4, 0x90
.LBB0_94:                               #   in Loop: Header=BB0_80 Depth=2
	testq	%r13, %r13
	je	.LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_80 Depth=2
	movb	$0, (%r13)
	movq	(%r12,%r14,8), %rdi
	callq	atoi
	movl	%eax, %r15d
	addq	$1, %r13
	movq	%r13, %rdi
	callq	atoi
	jmp	.LBB0_97
.LBB0_96:                               #   in Loop: Header=BB0_80 Depth=2
	movq	(%r12,%r14,8), %rdi
	callq	atoi
	movl	%eax, %r15d
.LBB0_97:                               #   in Loop: Header=BB0_80 Depth=2
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16383, %r15d           # imm = 0x3FFF
	ja	.LBB0_85
# %bb.98:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16383, %eax            # imm = 0x3FFF
	ja	.LBB0_85
# %bb.99:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	jg	.LBB0_104
# %bb.100:                              #   in Loop: Header=BB0_80 Depth=2
	movslq	%r15d, %rbx
	movslq	%eax, %r12
	addq	$-1, %rbx
	jmp	.LBB0_101
	.p2align	4, 0x90
.LBB0_103:                              #   in Loop: Header=BB0_101 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	addl	$1, %r15d
	cmpq	%r12, %rbx
	jge	.LBB0_104
.LBB0_101:                              #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	server+2944(%rip), %rax
	cmpq	$0, 262192(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_101 Depth=3
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r13, 262192(%rax,%rbx,8)
	jmp	.LBB0_103
.LBB0_108:
	movq	server+2944(%rip), %rax
	cmpq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_88
# %bb.109:
	movq	%r13, %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	fclose
	movq	myself(%rip), %rdx
	addq	$8, %rdx
	xorl	%ebx, %ebx
	movl	$.L.str.19, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	clusterGetMaxEpoch
	movq	server+2944(%rip), %rcx
	cmpq	8(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_6
# %bb.110:
	callq	clusterGetMaxEpoch
	movq	server+2944(%rip), %rcx
	movq	%rax, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_6
.LBB0_1:
	callq	__errno
	cmpl	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	je	.LBB0_6
# %bb.2:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.1, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB0_5:
	movq	%r15, %rdi
	callq	fclose
	movl	$-1, %ebx
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_82:
	movl	$.L.str.18, %edi
	movl	$.L.str.8, %esi
	movl	$246, %edx
	jmp	.LBB0_41
.LBB0_84:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_85:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_86:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_87:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
.LBB0_88:
	movl	$.L.str.20, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	fclose
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	callq	exit
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_1
# %bb.2:
	movq	8(%r14), %rax
	jmp	.LBB1_3
.LBB1_1:
	xorl	%eax, %eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%rdi), %rax
	movq	2120(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB4_5
# %bb.1:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, (%rdi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_3
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB4_2
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
.LBB4_3:
	movl	$-1, %eax
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	server+2944(%rip), %rax
	movslq	%esi, %rbx
	cmpq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB6_5
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jbe	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
	jmp	.LBB6_4
.LBB6_5:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jae	.LBB6_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
.LBB6_7:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2936(%rip), %rdi
	movl	$513, %esi              # imm = 0x201
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB7_42
# %bb.8:
	movl	%eax, %r12d
	addq	$-1, %rbx
	leaq	-128(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB7_11
# %bb.9:
	movq	-112(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	addq	$-1, %rbx
.LBB7_11:
	movzbl	-1(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %edi
	movq	%r13, %rsi
	callq	write
	movzbl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jne	.LBB7_41
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB7_30
# %bb.29:
	movq	server+2944(%rip), %rax
	andl	$-9, 524416(%rax)
	movl	%r12d, %edi
	callq	fsync
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %cl
.LBB7_30:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %edi
	callq	close
.LBB7_42:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	je	.LBB7_40
# %bb.39:
	movl	%r12d, %edi
	movq	%r14, %rsi
	callq	ftruncate
	movl	$42, __A_VARIABLE(%rip)
.LBB7_40:
	movl	%r12d, %edi
	callq	close
	movq	%r13, %rdi
	callq	sdsfree
	xorl	%eax, %eax
.LBB7_43:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB8_1
	.p2align	4, 0x90
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_5
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movq	8(%rax), %rdi
	movl	48(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	%r14d, %eax
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_1
# %bb.2:
	movl	%eax, %r15d
	movl	%eax, %edi
	movl	$6, %esi
	callq	flock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB10_8
# %bb.3:
	callq	__errno
	cmpl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %edi
	callq	close
.LBB10_7:
	movl	$-1, %ebx
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
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
	xorl	%ecx, %ecx
	cmpl	$0, server+2964(%rip)
	movl	48(%rax), %edx
	setne	%cl
	shll	$9, %ecx
	movl	%edx, %esi
	andl	$-513, %esi             # imm = 0xFDFF
	orl	%ecx, %esi
	movl	%esi, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	je	.LBB11_2
# %bb.1:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524424(%rdi)
	movq	$0, 524504(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524432(%rdi)
	movq	$0, 524512(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524440(%rdi)
	movq	$0, 524520(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524448(%rdi)
	movq	$0, 524528(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524456(%rdi)
	movq	$0, 524536(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524464(%rdi)
	movq	$0, 524544(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524472(%rdi)
	movq	$0, 524552(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524480(%rdi)
	movq	$0, 524560(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524488(%rdi)
	movq	$0, 524568(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 524496(%rdi)
	movq	$0, 524576(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB13_20
# %bb.1:
	movq	server+2936(%rip), %rdi
	callq	clusterLoadConfig
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB13_6
# %bb.2:
	movl	$2264, %edi             # imm = 0x8D8
	callq	zmalloc
	movq	%rax, %rbx
	leaq	8(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %esi
	movq	%r14, %rdi
	callq	getRandomHexChars
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	callq	clusterSaveConfig
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB13_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, server+508(%rip)
	movl	server+216(%rip), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$55536, %edi            # imm = 0xD8F0
	jge	.LBB13_7
# %bb.8:
	addl	$10000, %edi            # imm = 0x2710
	movl	$server+444, %esi
	movl	$server+508, %edx
	callq	listenToPort
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB13_20
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+508(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB13_13
# %bb.10:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB13_11:                              # =>This Inner Loop Header: Depth=1
	movq	server+72(%rip), %rdi
	movl	server+444(,%rbx,4), %esi
	movl	$clusterAcceptHandler, %ecx
	movl	$1, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB13_21
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	server+508(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB13_11
.LBB13_13:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB13_15
# %bb.14:
	movl	%ecx, 2240(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_15:
	movl	server+2980(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB13_17
# %bb.16:
	movl	%ecx, 2244(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_17:
	movq	server+2944(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rcx)
	movl	$0, 524400(%rcx)
	movq	$0, 524392(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	cmpl	$0, server+2964(%rip)
	movl	48(%rax), %esi
	setne	%dl
	shll	$9, %edx
	movl	%esi, %edi
	andl	$-513, %edi             # imm = 0xFDFF
	orl	%edx, %edi
	movl	%edi, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edi
	je	.LBB13_19
# %bb.18:
	orb	$6, 524416(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB13_21:
	movl	$.L.str.8, %edi
	movl	$.L.str.28, %edx
	movl	$500, %esi              # imm = 0x1F4
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB13_20:
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
	cmpq	$0, server+2464(%rip)
	movl	%esi, %r14d
	movl	server+860(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_2
# %bb.1:
	testl	%eax, %eax
	jne	.LBB15_8
.LBB15_2:                               # %.preheader
	movl	$-1000, %r15d           # imm = 0xFC18
	leaq	-96(%rbp), %r12
	.p2align	4, 0x90
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	movl	$server+584, %edi
	movl	$46, %ecx
	movl	%r14d, %esi
	movq	%r12, %rdx
	leaq	-44(%rbp), %r8
	callq	anetTcpAccept
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%r12, %rdx
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incl	%r15d
	jne	.LBB15_3
	jmp	.LBB15_7
.LBB15_4:
	callq	__errno
	cmpl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_7
# %bb.5:
	movl	$.L.str.31, %esi
	movl	$server+584, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB15_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_8:
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB16_3
# %bb.1:
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB16_3
# %bb.2:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_2
# %bb.1:
	callq	clusterSetNodeAsMaster
	callq	replicationUnsetMaster
	movl	$-1, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	emptyDb
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_5
# %bb.3:
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_5
# %bb.4:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
.LBB17_5:
	movq	server+2944(%rip), %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rcx)
	movl	$0, 524400(%rcx)
	movq	$0, 524392(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB17_6
	.p2align	4, 0x90
.LBB17_7:                               #   in Loop: Header=BB17_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB17_10:                              #   in Loop: Header=BB17_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rax            # imm = 0x4000
	jae	.LBB17_11
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	movq	262184(%rcx,%rax,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB17_7
# %bb.8:                                #   in Loop: Header=BB17_6 Depth=1
	movl	%eax, %esi
	shrl	$3, %esi
	andl	$8191, %esi             # imm = 0x1FFF
	movzbl	64(%rdx,%rsi), %edi
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$1, %ebx
	shll	%cl, %ebx
	movzbl	%cl, %ecx
	notb	%bl
	andb	%dil, %bl
	btl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	movb	%bl, 64(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB17_19
# %bb.9:                                #   in Loop: Header=BB17_6 Depth=1
	addl	$-1, 2112(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	movq	$0, 262184(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	jmp	.LBB17_10
.LBB17_11:
	movq	24(%rcx), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB17_12
	.p2align	4, 0x90
.LBB17_15:                              #   in Loop: Header=BB17_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
.LBB17_12:                              # =>This Inner Loop Header: Depth=1
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_16
# %bb.13:                               #   in Loop: Header=BB17_12 Depth=1
	movq	8(%rax), %rdi
	cmpq	myself(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_15
# %bb.14:                               #   in Loop: Header=BB17_12 Depth=1
	callq	clusterDelNode
	jmp	.LBB17_15
.LBB17_16:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB17_18
# %bb.17:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB17_18:
	movq	server+2944(%rip), %rax
	orl	$14, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB17_19:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB18_13
# %bb.1:
	movq	%rdi, %rbx
	movq	2128(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB18_12
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB18_10
# %bb.3:
	movq	2120(%r14), %rdi
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_5
# %bb.9:                                #   in Loop: Header=BB18_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	leal	1(%rcx), %edx
	cmpl	%ecx, %eax
	movl	%edx, %ecx
	jg	.LBB18_4
	jmp	.LBB18_10
.LBB18_5:
	movl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %edx
	jle	.LBB18_7
# %bb.6:
	leaq	8(%rdi), %rsi
	movslq	%edx, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r14), %eax
.LBB18_7:
	addl	$-1, %eax
	movl	%eax, 2116(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_10
# %bb.8:
	andb	$-2, 49(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, myself(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%rbx), %eax
	je	.LBB18_12
# %bb.11:
	orl	$256, %eax              # imm = 0x100
	movl	%eax, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_12:
	andl	$-4, %eax
	orl	$1, %eax
	movl	%eax, 48(%rbx)
	movq	$0, 2128(%rbx)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_13:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB19_1
# %bb.2:
	leal	7(%rdi), %ecx
	testl	%edi, %edi
	cmovnsl	%edi, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r9
	movzbl	64(%rdx,%r9), %eax
	andb	$7, %dil
	movl	$1, %esi
	movl	%edi, %ecx
	shll	%cl, %esi
	movzbl	%dil, %ecx
	notb	%sil
	andb	%al, %sil
	btl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movb	%sil, 64(%rdx,%r9)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB19_5
# %bb.3:
	addl	$-1, 2112(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%r8,8)
	xorl	%eax, %eax
	jmp	.LBB19_4
.LBB19_1:
	movl	$-1, %eax
.LBB19_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB19_5:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB20_1
.LBB20_7:                               #   in Loop: Header=BB20_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB20_10:                              #   in Loop: Header=BB20_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_11:                              #   in Loop: Header=BB20_1 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rax            # imm = 0x4000
	jae	.LBB20_12
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 131112(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_3
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	movq	$0, 131112(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
.LBB20_3:                               #   in Loop: Header=BB20_1 Depth=1
	cmpq	%rbx, 40(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_5
# %bb.4:                                #   in Loop: Header=BB20_1 Depth=1
	movq	$0, 40(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
.LBB20_5:                               #   in Loop: Header=BB20_1 Depth=1
	cmpq	%rbx, 262184(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_11
# %bb.6:                                #   in Loop: Header=BB20_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB20_7
# %bb.8:                                #   in Loop: Header=BB20_1 Depth=1
	movl	%eax, %edx
	shrl	$3, %edx
	andl	$8191, %edx             # imm = 0x1FFF
	movzbl	64(%rbx,%rdx), %esi
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$1, %edi
	shll	%cl, %edi
	movzbl	%cl, %ecx
	notb	%dil
	andb	%sil, %dil
	btl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movb	%dil, 64(%rbx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB20_22
# %bb.9:                                #   in Loop: Header=BB20_1 Depth=1
	addl	$-1, 2112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	movq	$0, 262184(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	jmp	.LBB20_10
.LBB20_12:
	movq	24(%rcx), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_21
# %bb.13:
	leaq	-56(%rbp), %r15
	jmp	.LBB20_14
	.p2align	4, 0x90
.LBB20_23:                              #   in Loop: Header=BB20_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB20_19:                              #   in Loop: Header=BB20_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_20:                              #   in Loop: Header=BB20_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_21
.LBB20_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_16 Depth 2
	movq	8(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	je	.LBB20_20
# %bb.15:                               #   in Loop: Header=BB20_14 Depth=1
	movq	2256(%r12), %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB20_16:                              #   Parent Loop BB20_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_23
# %bb.17:                               #   in Loop: Header=BB20_16 Depth=2
	movq	16(%rax), %rcx
	cmpq	%rbx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_16
# %bb.18:                               #   in Loop: Header=BB20_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movq	%r12, %rdi
	callq	clusterNodeCleanupFailureReports
	jmp	.LBB20_19
.LBB20_21:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movq	%rbx, %rdi
	callq	freeClusterNode
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB22_2
# %bb.1:
	movq	server+72(%rip), %rdi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB22_2:
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	24(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_4
# %bb.3:
	movq	$0, 2248(%rax)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	leaq	-4400(%rbp), %r15
	jmp	.LBB23_1
	.p2align	4, 0x90
.LBB23_30:                              #   in Loop: Header=BB23_1 Depth=1
	movq	24(%r12), %rdi
	callq	sdsfree
	callq	sdsempty
	movq	%rax, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_31:                              #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	movq	24(%r12), %rbx
	movzbl	-1(%rbx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB23_7
# %bb.2:                                #   in Loop: Header=BB23_1 Depth=1
	movl	%r13d, %eax
	andl	$7, %eax
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_8:                               #   in Loop: Header=BB23_1 Depth=1
	shrq	$3, %r13
	jmp	.LBB23_9
.LBB23_7:                               #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB23_10
.LBB23_3:                               #   in Loop: Header=BB23_1 Depth=1
	movzbl	-3(%rbx), %r13d
	jmp	.LBB23_9
.LBB23_4:                               #   in Loop: Header=BB23_1 Depth=1
	movzwl	-5(%rbx), %r13d
	jmp	.LBB23_9
.LBB23_5:                               #   in Loop: Header=BB23_1 Depth=1
	movl	-9(%rbx), %r13d
	jmp	.LBB23_9
.LBB23_6:                               #   in Loop: Header=BB23_1 Depth=1
	movq	-17(%rbx), %r13
	.p2align	4, 0x90
.LBB23_9:                               #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %r13d
	ja	.LBB23_11
.LBB23_10:                              #   in Loop: Header=BB23_1 Depth=1
	movl	$8, %eax
	subl	%r13d, %eax
	jmp	.LBB23_13
	.p2align	4, 0x90
.LBB23_11:                              #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %r13d
	jne	.LBB23_12
# %bb.17:                               #   in Loop: Header=BB23_1 Depth=1
	movl	$.L.str.68, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB23_19
# %bb.18:                               #   in Loop: Header=BB23_1 Depth=1
	movl	4(%rbx), %edi
	callq	lwip_htonl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2255, %eax             # imm = 0x8CF
	jbe	.LBB23_19
.LBB23_12:                              #   in Loop: Header=BB23_1 Depth=1
	addq	$4, %rbx
	movl	(%rbx), %edi
	callq	lwip_htonl
	subl	%r13d, %eax
	cmpl	$4352, %eax             # imm = 0x1100
	movl	$4352, %ecx             # imm = 0x1100
	cmovael	%ecx, %eax
.LBB23_13:                              #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	movl	%r14d, %edi
	movq	%r15, %rsi
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB23_14
# %bb.23:                               #   in Loop: Header=BB23_1 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB23_24
# %bb.27:                               #   in Loop: Header=BB23_1 Depth=1
	movq	24(%r12), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	sdscatlen
	movq	%rax, 24(%r12)
	addl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ebx
	jb	.LBB23_31
# %bb.28:                               #   in Loop: Header=BB23_1 Depth=1
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jne	.LBB23_31
# %bb.29:                               #   in Loop: Header=BB23_1 Depth=1
	movq	%r12, %rdi
	callq	clusterProcessPacket
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB23_30
	jmp	.LBB23_21
.LBB23_14:
	callq	__errno
	cmpl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_22
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_16
.LBB23_24:
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_25
.LBB23_16:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_26
.LBB23_19:
	movl	$.L.str.69, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB23_20
.LBB23_25:
	movl	$.L.str.71, %edx
.LBB23_26:
	movl	$.L.str.70, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB23_20:
	movq	%r12, %rdi
	callq	freeClusterLink
	movl	$42, __A_VARIABLE(%rip)
.LBB23_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_22:
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
	.quad	.LBB23_8
	.quad	.LBB23_3
	.quad	.LBB23_4
	.quad	.LBB23_5
	.quad	.LBB23_6
                                        # -- End function
	.text
	.globl	keyHashSlot             # -- Begin function keyHashSlot
	.p2align	4, 0x90
	.type	keyHashSlot,@function
keyHashSlot:                            # @keyHashSlot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB24_1
# %bb.2:
	movslq	%esi, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	cmpb	$123, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_5
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB24_3
	jmp	.LBB24_5
.LBB24_1:
	xorl	%ecx, %ecx
.LBB24_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %ecx
	je	.LBB24_13
# %bb.6:
	leal	1(%rcx), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %eax
	cmpl	%esi, %r8d
	jge	.LBB24_10
# %bb.7:
	movslq	%r8d, %rax
	movslq	%esi, %rdx
	.p2align	4, 0x90
.LBB24_8:                               # =>This Inner Loop Header: Depth=1
	cmpb	$125, (%rdi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_10
# %bb.9:                                #   in Loop: Header=BB24_8 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jl	.LBB24_8
.LBB24_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	je	.LBB24_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_4
# %bb.2:                                #   in Loop: Header=BB25_1 Depth=1
	movq	16(%rax), %rbx
	cmpq	%r12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_5
# %bb.1:                                # %.preheader
	addq	%r12, %r12
	leaq	-48(%rbp), %r15
	jmp	.LBB26_2
	.p2align	4, 0x90
.LBB26_4:                               #   in Loop: Header=BB26_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_5
.LBB26_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rcx
	movq	%rbx, %rdx
	subq	8(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdx
	jle	.LBB26_4
# %bb.3:                                #   in Loop: Header=BB26_2 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	2256(%rdi), %r15
	leaq	-48(%rbp), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_5
# %bb.2:                                #   in Loop: Header=BB27_1 Depth=1
	movq	16(%rax), %rcx
	cmpq	%rbx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movq	%r14, %rdi
	callq	clusterNodeCleanupFailureReports
	movl	$1, %eax
	jmp	.LBB27_4
.LBB27_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB27_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
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
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	clusterNodeCleanupFailureReports
	movq	2256(%rbx), %rax
	movl	40(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%ecx, %ecx
	jle	.LBB29_8
# %bb.1:
	movq	%rdi, %r14
	movq	2120(%rdi), %rdi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB29_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB29_3
# %bb.7:                                #   in Loop: Header=BB29_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	leal	1(%rdx), %ebx
	cmpl	%edx, %ecx
	movl	%ebx, %edx
	jg	.LBB29_2
	jmp	.LBB29_8
.LBB29_3:
	movl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%edx, %eax
	jle	.LBB29_5
# %bb.4:
	leaq	8(%rdi), %rsi
	movslq	%eax, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r14), %ecx
.LBB29_5:
	xorl	%eax, %eax
	addl	$-1, %ecx
	movl	%ecx, 2116(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_8
# %bb.6:
	andb	$-2, 49(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jle	.LBB30_1
# %bb.2:
	movq	2120(%rdi), %rcx
	movl	%esi, %r8d
	andl	$1, %r8d
	cmpl	$1, %esi
	jne	.LBB30_9
# %bb.3:
	xorl	%edi, %edi
	xorl	%eax, %eax
.LBB30_4:
	testq	%r8, %r8
	je	.LBB30_8
# %bb.5:
	movq	(%rcx,%rdi,8), %rcx
	testb	$8, 48(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_7
# %bb.6:
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB30_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_8:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB30_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB30_9:
	subq	%r8, %rsi
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	.LBB30_10
	.p2align	4, 0x90
.LBB30_14:                              #   in Loop: Header=BB30_10 Depth=1
	addq	$2, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB30_4
.LBB30_10:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %rdx
	testb	$8, 48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_12
# %bb.11:                               #   in Loop: Header=BB30_10 Depth=1
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB30_12:                              #   in Loop: Header=BB30_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx,%rdi,8), %rdx
	testb	$8, 48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_14
# %bb.13:                               #   in Loop: Header=BB30_10 Depth=1
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_14
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jle	.LBB31_8
# %bb.1:
	movq	2120(%r14), %rcx
	leaq	-1(%rdx), %rsi
	movl	%edx, %eax
	andl	$3, %eax
	cmpq	$3, %rsi
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rcx,%rsi,8), %rdi
	movq	$0, 2128(%rdi)
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.LBB31_7
.LBB31_8:
	testb	$2, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB31_19
# %bb.9:
	movq	2128(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB31_19
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB31_18
# %bb.11:
	movq	2120(%rbx), %rdi
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB31_12:                              # =>This Inner Loop Header: Depth=1
	cmpq	%r14, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB31_13
# %bb.17:                               #   in Loop: Header=BB31_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	leal	1(%rcx), %edx
	cmpl	%ecx, %eax
	movl	%edx, %ecx
	jg	.LBB31_12
	jmp	.LBB31_18
.LBB31_13:
	movl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %edx
	jle	.LBB31_15
# %bb.14:
	leaq	8(%rdi), %rsi
	movslq	%edx, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%rbx), %eax
.LBB31_15:
	addl	$-1, %eax
	movl	%eax, 2116(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB31_18
# %bb.16:
	andb	$-2, 49(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_19:
	leaq	8(%r14), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB31_23
# %bb.20:
	movq	%rbx, %rdi
	callq	sdsfree
	movq	2248(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB31_22
# %bb.21:
	callq	freeClusterLink
	movl	$42, __A_VARIABLE(%rip)
.LBB31_22:
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
.LBB31_23:
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
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbx
	pushq	%rax
	callq	clusterGetMaxEpoch
	movq	myself(%rip), %rcx
	movq	56(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB33_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	cmpq	%rax, %rdx
	je	.LBB33_3
.LBB33_2:
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	movq	%rdx, 56(%rcx)
	orb	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movl	$.L.str.36, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB33_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_6
# %bb.1:
	movq	%rdi, %rbx
	testb	$1, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_6
# %bb.2:
	testb	$1, 48(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_6
# %bb.3:
	addq	$8, %rbx
	addq	$8, %rsi
	movl	$40, %edx
	movq	%rbx, %rdi
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB35_1
	.p2align	4, 0x90
.LBB35_4:                               #   in Loop: Header=BB35_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
.LBB35_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB35_5
# %bb.2:                                #   in Loop: Header=BB35_1 Depth=1
	movq	8(%rax), %rcx
	cmpq	server+2872(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB35_4
# %bb.3:                                #   in Loop: Header=BB35_1 Depth=1
	movq	server+2944(%rip), %rcx
	movq	32(%rcx), %rdi
	movq	(%rax), %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rax, %rbx
	callq	clusterBlacklistCleanup
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB36_2
# %bb.1:
	movq	%rbx, %rdi
	callq	sdsdup
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB36_2:
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	xorl	%edi, %edi
	callq	time
	addq	$60, %rax
	movq	%rax, 8(%r14)
	movq	%rbx, %rdi
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
	callq	clusterBlacklistCleanup
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
	subq	$4360, %rsp             # imm = 0x1108
	movq	server+2944(%rip), %rax
	movl	20(%rax), %eax
	movl	48(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB38_8
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	jne	.LBB38_8
# %bb.2:
	movq	%rdi, %r15
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	callq	clusterNodeCleanupFailureReports
	movq	2256(%r15), %rax
	movl	40(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rcx
	testb	$1, 48(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB38_4
# %bb.3:
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB38_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jle	.LBB38_8
# %bb.5:
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB38_7
# %bb.6:
	leaq	-4384(%rbp), %rbx
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	clusterBuildMessageHdr
	leaq	-2128(%rbp), %rdi
	movl	$40, %edx
	movq	%r14, %rsi
	callq	memcpy
	movl	-4380(%rbp), %edi
	callq	lwip_htonl
	movl	%eax, %esi
	movq	%rbx, %rdi
	callq	clusterBroadcastMessage
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB38_7:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB38_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4360, %rsp             # imm = 0x1108
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
	pushq	%r14
	pushq	%rbx
	subq	$4352, %rsp             # imm = 0x1100
	movq	%rdi, %rbx
	leaq	-4368(%rbp), %r14
	movq	%r14, %rdi
	movl	$3, %esi
	callq	clusterBuildMessageHdr
	leaq	-2112(%rbp), %rdi
	movl	$40, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movl	-4364(%rbp), %edi
	callq	lwip_htonl
	movl	%eax, %esi
	movq	%r14, %rdi
	callq	clusterBroadcastMessage
	movl	$42, __A_VARIABLE(%rip)
	addq	$4352, %rsp             # imm = 0x1100
	popq	%rbx
	popq	%r14
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB40_9
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB40_3
# %bb.2:
	cmpl	$0, 2112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB40_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB40_8
# %bb.5:
	cmpl	$0, 2112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB40_8
# %bb.6:
	subq	2152(%rbx), %r14
	movq	server+2928(%rip), %rax
	addq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdi, %r12
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB41_1
	jmp	.LBB41_8
	.p2align	4, 0x90
.LBB41_6:                               #   in Loop: Header=BB41_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_7
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %r13
	testb	$32, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB41_6
# %bb.2:                                #   in Loop: Header=BB41_1 Depth=1
	leaq	2192(%r13), %rdi
	movq	%r12, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB41_6
# %bb.3:                                #   in Loop: Header=BB41_1 Depth=1
	cmpl	%r15d, 2240(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB41_6
# %bb.4:                                #   in Loop: Header=BB41_1 Depth=1
	cmpl	%r14d, 2244(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB41_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jmp	.LBB41_8
.LBB41_7:
	xorl	%r13d, %r13d
.LBB41_8:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
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
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %cl
	testl	%eax, %eax
	jne	.LBB42_3
# %bb.1:
	leaq	-64(%rbp), %rdx
	movl	$10, %edi
	movq	%rbx, %rsi
	callq	inet_pton
	movl	$42, __A_VARIABLE(%rip)
	movb	$10, %cl
	testl	%eax, %eax
	je	.LBB42_2
.LBB42_3:
	movb	%cl, -71(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	leaq	-128(%rbp), %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	clusterHandshakeInProgress
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %esi
	movq	%r12, %rdi
	callq	getRandomHexChars
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$56, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movzwl	14(%rdi), %edi
	callq	lwip_htons
	movl	%eax, %ebx
	movq	32(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	testq	%rcx, %rcx
	jne	.LBB43_5
# %bb.1:
	leaq	40(%r15), %rdi
	movl	$40, %esi
	callq	sdsnewlen
	movq	%rax, %r14
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%r14, %rsi
	callq	dictFind
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB43_2
# %bb.3:
	movq	8(%r12), %rax
	jmp	.LBB43_4
.LBB43_2:
	xorl	%eax, %eax
.LBB43_4:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB43_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%bx, %bx
	je	.LBB43_46
# %bb.6:
	addq	$2256, %r15             # imm = 0x8D0
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$8, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB43_7
.LBB43_43:                              #   in Loop: Header=BB43_7 Depth=1
	movl	$46, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movzwl	94(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, 2240(%r12)
	movzwl	96(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, 2244(%r12)
	andb	$-65, 48(%r12)
.LBB43_44:                              #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB43_45:                              #   in Loop: Header=BB43_7 Depth=1
	addq	$104, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	testw	%bx, %bx
	je	.LBB43_46
.LBB43_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_24 Depth 2
	addl	$-1, %ebx
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movzwl	98(%r15), %edi
	callq	lwip_htons
	movl	%eax, %r13d
	cmpl	$0, server+1728(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_9
# %bb.8:                                #   in Loop: Header=BB43_7 Depth=1
	callq	sdsempty
	movzwl	%r13w, %esi
	movq	%rax, %rdi
	callq	representClusterNodeFlags
	movq	%rax, %rbx
	leaq	48(%r15), %r12
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
	movq	%r12, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB43_10
# %bb.15:                               #   in Loop: Header=BB43_7 Depth=1
	movq	8(%r14), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB43_11
# %bb.16:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB43_28
# %bb.17:                               #   in Loop: Header=BB43_7 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB43_28
# %bb.18:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	myself(%rip), %r12
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB43_28
# %bb.19:                               #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$12, %r13b
	je	.LBB43_23
# %bb.20:                               #   in Loop: Header=BB43_7 Depth=1
	movq	%r12, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	clusterNodeAddFailureReport
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB43_22
# %bb.21:                               #   in Loop: Header=BB43_7 Depth=1
	leaq	8(%r12), %rcx
	movl	$.L.str.45, %esi
	movl	$1, %edi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB43_22:                              #   in Loop: Header=BB43_7 Depth=1
	movq	%r12, %rdi
	callq	markNodeAsFailingIfNeeded
	jmp	.LBB43_27
	.p2align	4, 0x90
.LBB43_10:                              #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB43_11:                              #   in Loop: Header=BB43_7 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB43_45
# %bb.12:                               #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r13b
	jne	.LBB43_45
# %bb.13:                               #   in Loop: Header=BB43_7 Depth=1
	movl	$40, %esi
	movq	%r15, %rdi
	callq	sdsnewlen
	movq	%rax, %rbx
	callq	clusterBlacklistCleanup
	movq	server+2944(%rip), %rax
	movq	32(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB43_45
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
	jmp	.LBB43_44
.LBB43_23:                              #   in Loop: Header=BB43_7 Depth=1
	movq	2256(%r12), %r14
	movq	%r14, %rdi
	leaq	-80(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB43_24:                              #   Parent Loop BB43_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB43_47
# %bb.25:                               #   in Loop: Header=BB43_24 Depth=2
	movq	16(%rax), %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_24
# %bb.26:                               #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movq	%r12, %rdi
	callq	clusterNodeCleanupFailureReports
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r12), %rcx
	movl	$.L.str.46, %esi
	movl	$1, %edi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB43_27
.LBB43_47:                              #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB43_27:                              #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB43_28:                              #   in Loop: Header=BB43_7 Depth=1
	movzwl	%r13w, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$12, %bl
	jne	.LBB43_35
# %bb.29:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	$0, 2136(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_35
# %bb.30:                               #   in Loop: Header=BB43_7 Depth=1
	movq	%r12, %rdi
	callq	clusterNodeCleanupFailureReports
	movq	2256(%r12), %rax
	cmpl	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_35
# %bb.31:                               #   in Loop: Header=BB43_7 Depth=1
	movl	44(%r15), %edi
	callq	lwip_htonl
	movl	%eax, %eax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	server+2896(%rip), %rcx
	movl	$500, %edx              # imm = 0x1F4
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jg	.LBB43_34
# %bb.32:                               #   in Loop: Header=BB43_7 Depth=1
	cmpq	2144(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB43_34
# %bb.33:                               #   in Loop: Header=BB43_7 Depth=1
	movq	%rax, 2144(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB43_34:                              #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB43_35:                              #   in Loop: Header=BB43_7 Depth=1
	testb	$12, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB43_45
# %bb.36:                               #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %bl
	jne	.LBB43_45
# %bb.37:                               #   in Loop: Header=BB43_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$12, %bl
	jne	.LBB43_45
# %bb.38:                               #   in Loop: Header=BB43_7 Depth=1
	leaq	2192(%r12), %rbx
	leaq	48(%r15), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB43_41
# %bb.39:                               #   in Loop: Header=BB43_7 Depth=1
	movl	2240(%r12), %r14d
	movzwl	94(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	jne	.LBB43_41
# %bb.40:                               #   in Loop: Header=BB43_7 Depth=1
	movl	2244(%r12), %r14d
	movzwl	96(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	je	.LBB43_45
.LBB43_41:                              #   in Loop: Header=BB43_7 Depth=1
	movq	2248(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB43_43
# %bb.42:                               #   in Loop: Header=BB43_7 Depth=1
	callq	freeClusterLink
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB43_43
.LBB43_46:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	je	.LBB44_10
# %bb.9:
	movl	$.L.str.276, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB44_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r14b
	je	.LBB44_12
# %bb.11:
	movl	$.L.str.277, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB44_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r14b
	je	.LBB44_14
# %bb.13:
	movl	$.L.str.278, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB44_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r14b
	je	.LBB44_16
# %bb.15:
	movl	$.L.str.279, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB44_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r14b
	je	.LBB44_18
# %bb.17:
	movl	$.L.str.280, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB44_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r14b
	je	.LBB44_20
# %bb.19:
	movl	$.L.str.281, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB44_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r14b
	je	.LBB44_22
# %bb.21:
	movl	$.L.str.282, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB44_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r14d             # imm = 0x200
	je	.LBB44_24
# %bb.23:
	movl	$.L.str.283, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB44_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jne	.LBB44_33
# %bb.32:
	movl	$.L.str.106, %esi
	movq	%rbx, %rdi
	callq	sdscat
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rsi, %r15
	movq	%rdi, %r13
	xorps	%xmm0, %xmm0
	movups	%xmm0, -66(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movzwl	10(%rdx), %edi
	callq	lwip_htons
	movl	%eax, %r14d
	movzwl	2248(%rbx), %edi
	callq	lwip_htons
	xorl	%ecx, %ecx
	cmpq	%r15, 2248(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB46_12
# %bb.1:
	movl	%eax, %r12d
	movzwl	%r14w, %r14d
	cmpb	$0, 2168(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	8(%r15), %edi
	leaq	-96(%rbp), %rsi
	movl	$46, %edx
	xorl	%ecx, %ecx
	callq	anetPeerToString
.LBB46_4:
	movzwl	%r12w, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, 2240(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_7
# %bb.5:
	cmpl	%ebx, 2244(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_7
# %bb.6:
	leaq	2192(%r13), %rsi
	leaq	-96(%rbp), %rdi
	callq	strcmp
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB46_12
.LBB46_7:
	leaq	2192(%r13), %r12
	leaq	-96(%rbp), %rsi
	movl	$46, %edx
	movq	%r12, %rdi
	callq	memcpy
	movl	%r14d, 2240(%r13)
	movl	%ebx, 2244(%r13)
	movq	2248(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB46_9
# %bb.8:
	callq	freeClusterLink
	movl	$42, __A_VARIABLE(%rip)
	movl	2240(%r13), %r14d
.LBB46_9:
	andb	$-65, 48(%r13)
	leaq	8(%r13), %rdx
	movl	$.L.str.47, %esi
	movl	$3, %edi
	movq	%r12, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	je	.LBB46_12
# %bb.10:
	cmpq	%r13, 2128(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_12
# %bb.11:
	movl	2240(%r13), %esi
	movq	%r12, %rdi
	callq	replicationSetMaster
	movl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB46_12:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB47_2
# %bb.1:
	movq	2128(%rax), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB47_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	je	.LBB47_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB47_5
.LBB47_21:                              #   in Loop: Header=BB47_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB47_22:                              #   in Loop: Header=BB47_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	orb	$14, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB47_23:                              #   in Loop: Header=BB47_5 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %r15            # imm = 0x4000
	jae	.LBB47_24
.LBB47_5:                               # =>This Inner Loop Header: Depth=1
	movl	%r15d, %ebx
	shrl	$3, %ebx
	andl	$8191, %ebx             # imm = 0x1FFF
	movzbl	(%r12,%rbx), %eax
	movl	%r15d, %ecx
	andb	$7, %cl
	movl	$1, %r13d
	shll	%cl, %r13d
	movzbl	%cl, %ecx
	btl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB47_23
# %bb.6:                                #   in Loop: Header=BB47_5 Depth=1
	movq	server+2944(%rip), %rcx
	movq	262184(%rcx,%r15,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	je	.LBB47_23
# %bb.7:                                #   in Loop: Header=BB47_5 Depth=1
	cmpq	$0, 131112(%rcx,%r15,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB47_23
# %bb.8:                                #   in Loop: Header=BB47_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB47_10
# %bb.9:                                #   in Loop: Header=BB47_5 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB47_23
.LBB47_10:                              #   in Loop: Header=BB47_5 Depth=1
	cmpq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB47_11
.LBB47_14:                              #   in Loop: Header=BB47_5 Depth=1
	movq	server+2944(%rip), %rax
	movq	262184(%rax,%r15,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-56(%rbp), %rax         # 8-byte Folded Reload
	jne	.LBB47_16
# %bb.15:                               #   in Loop: Header=BB47_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rcx
	movq	%r14, -64(%rbp)         # 8-byte Spill
.LBB47_16:                              #   in Loop: Header=BB47_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB47_17
# %bb.19:                               #   in Loop: Header=BB47_5 Depth=1
	movzbl	64(%rax,%rbx), %ecx
	movl	%r13d, %edx
	notb	%dl
	andb	%cl, %dl
	movl	$42, __A_VARIABLE(%rip)
	movb	%dl, 64(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %r13d
	je	.LBB47_33
# %bb.20:                               #   in Loop: Header=BB47_5 Depth=1
	addl	$-1, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%r15,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	cmpq	$0, 262184(%rax,%r15,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB47_21
	jmp	.LBB47_18
.LBB47_11:                              #   in Loop: Header=BB47_5 Depth=1
	movl	%r15d, %edi
	callq	countKeysInSlot
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB47_14
# %bb.12:                               #   in Loop: Header=BB47_5 Depth=1
	cmpq	%r14, myself(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB47_14
# %bb.13:                               #   in Loop: Header=BB47_5 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cltq
	movw	%r15w, -32848(%rbp,%rax,2)
	addl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB47_14
.LBB47_17:                              #   in Loop: Header=BB47_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB47_18:                              #   in Loop: Header=BB47_5 Depth=1
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r14, 262184(%rax,%r15,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	jmp	.LBB47_22
.LBB47_24:
	testb	$4, server+2984(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB47_32
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB47_28
# %bb.26:
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB47_27
.LBB47_28:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB47_32
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB47_32
# %bb.30:
	movl	-48(%rbp), %r14d        # 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB47_31:                              # =>This Inner Loop Header: Depth=1
	movzwl	-32848(%rbp,%rbx,2), %edi
	callq	delKeysInSlot
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jne	.LBB47_31
	jmp	.LBB47_32
.LBB47_3:
	movl	$.L.str.48, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB47_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32808, %rsp            # imm = 0x8028
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB47_27:
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB47_32
.LBB47_33:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	je	.LBB49_1
# %bb.3:
	cmpl	$0, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB49_4
# %bb.5:
	movq	%rdi, %r15
	movl	48(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB49_6
# %bb.7:
	movq	2128(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB49_18
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB49_16
# %bb.9:
	movq	2120(%r14), %rdi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB49_10:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rax, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB49_11
# %bb.15:                               #   in Loop: Header=BB49_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	leal	1(%rdx), %esi
	cmpl	%edx, %ecx
	movl	%esi, %edx
	jg	.LBB49_10
	jmp	.LBB49_16
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
	jmp	.LBB49_17
.LBB49_11:
	movl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%edx, %eax
	jle	.LBB49_13
# %bb.12:
	leaq	8(%rdi), %rsi
	movslq	%eax, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r14), %ecx
.LBB49_13:
	addl	$-1, %ecx
	movl	%ecx, 2116(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB49_16
# %bb.14:
	andb	$-2, 49(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB49_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB49_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB49_18:
	movq	myself(%rip), %rbx
	movq	%r15, 2128(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%r15), %rax
	movq	2120(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB49_22
# %bb.19:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB49_20:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, (%rdi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB49_23
# %bb.21:                               #   in Loop: Header=BB49_20 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB49_20
.LBB49_22:
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 2120(%r15)
	movslq	2116(%r15), %rcx
	movq	%rbx, (%rax,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 2116(%r15)
	orb	$1, 49(%r15)
.LBB49_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	2240(%r15), %esi
	addq	$2192, %r15             # imm = 0x890
	movq	%r15, %rdi
	callq	replicationSetMaster
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB49_26
# %bb.24:
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB49_26
# %bb.25:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
.LBB49_26:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	24(%rdi), %rbx
	movl	4(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, %r14d
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movzwl	12(%rbx), %edi
	callq	lwip_htons
	movl	%eax, %r13d
	movzwl	%ax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$9, %r12w
	ja	.LBB50_2
# %bb.1:
	movq	server+2944(%rip), %rax
	movl	%r12d, %ecx
	addq	$1, 524504(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_2:
	movl	%r14d, %r15d
	movl	$.L.str.50, %esi
	xorl	%edi, %edi
	movl	%r12d, %edx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	cmpl	$16, %r14d
	jb	.LBB50_164
# %bb.3:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB50_6
# %bb.4:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI50_0(,%rdx,8)
.LBB50_5:
	shrq	$3, %rax
	jmp	.LBB50_11
.LBB50_6:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jb	.LBB50_164
# %bb.12:
	movq	-96(%rbp), %r15         # 8-byte Reload
	movzwl	8(%r15), %edi
	callq	lwip_htons
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %ax
	jne	.LBB50_164
# %bb.13:
	movzwl	2250(%r15), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB50_16
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %r13w
	je	.LBB50_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %r13w
	jne	.LBB50_33
.LBB50_16:
	movzwl	14(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	imull	$104, %eax, %eax
	addl	$2256, %eax             # imm = 0x8D0
.LBB50_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	jne	.LBB50_164
.LBB50_18:
	leaq	40(%r15), %rdi
	movl	$40, %esi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	sdsnewlen
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB50_31
# %bb.19:
	movq	8(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB50_32
# %bb.20:
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testb	$32, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB50_35
# %bb.21:
	movq	16(%r15), %rdi
	callq	intrev64
	movq	%rax, %rbx
	movq	24(%r15), %rdi
	callq	intrev64
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	server+2944(%rip), %rax
	cmpq	8(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB50_23
# %bb.22:
	movq	%rbx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_23:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	56(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB50_25
# %bb.24:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 56(%rbx)
	orb	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_25:
	movq	32(%r15), %rdi
	callq	intrev64
	movq	%rax, 2184(%rbx)
	callq	mstime
	movq	%rax, 2168(%rbx)
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_42
# %bb.26:
	movq	myself(%rip), %rcx
	testb	$2, 48(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
	je	.LBB50_43
# %bb.27:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, 2128(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_43
# %bb.28:
	testb	$1, 2253(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_43
# %bb.29:
	cmpq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_43
# %bb.30:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	2184(%rcx), %rdx
	movq	%rdx, 524392(%rax)
	movl	$.L.str.51, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_43
.LBB50_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_32:
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB50_43
.LBB50_33:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %r13w
	jne	.LBB50_36
# %bb.34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2296, %r14d            # imm = 0x8F8
	je	.LBB50_18
	jmp	.LBB50_164
.LBB50_35:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB50_43
.LBB50_36:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$4, %r13w
	jne	.LBB50_38
# %bb.37:
	movl	2256(%r15), %edi
	callq	lwip_htonl
	movl	%eax, %ebx
	movl	2260(%r15), %edi
	callq	lwip_htonl
                                        # kill: def $eax killed $eax def $rax
	addl	%ebx, %eax
	addl	$2264, %eax             # imm = 0x8D8
	movl	$1, %ebx
	jmp	.LBB50_17
.LBB50_38:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$5, %r13w
	je	.LBB50_41
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$6, %r13w
	je	.LBB50_41
# %bb.40:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$8, %r13w
	jne	.LBB50_172
.LBB50_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2256, %r14d            # imm = 0x8D0
	je	.LBB50_18
	jmp	.LBB50_164
.LBB50_42:
	movb	$1, %bl
.LBB50_43:
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	je	.LBB50_45
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %r13w
	jne	.LBB50_57
.LBB50_45:
	movq	32(%r14), %rdx
	movl	$.L.str.52, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %r13w
	jne	.LBB50_47
# %bb.46:
	cmpq	$0, server+2968(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_53
	jmp	.LBB50_49
.LBB50_47:
	movq	myself(%rip), %rax
	cmpb	$0, 2192(%rax)
	movq	server+2968(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_53
# %bb.48:
	testq	%rax, %rax
	jne	.LBB50_53
.LBB50_49:
	movl	8(%r14), %edi
	leaq	-160(%rbp), %rsi
	movl	$46, %edx
	xorl	%ecx, %ecx
	callq	anetSockName
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB50_52
# %bb.50:
	movl	$2192, %r14d            # imm = 0x890
	movq	myself(%rip), %rsi
	addq	%r14, %rsi
	leaq	-160(%rbp), %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_52
# %bb.51:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB50_52:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB50_53:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jne	.LBB50_62
# %bb.54:
	cmpw	$2, %r13w
	jne	.LBB50_58
# %bb.55:
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movl	$2264, %edi             # imm = 0x8D8
	callq	zmalloc
	movq	%rax, %r14
	leaq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %esi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	getRandomHexChars
	movl	$42, __A_VARIABLE(%rip)
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
	leaq	2192(%r14), %rbx
	movl	$46, %edx
	movq	%rbx, %rdi
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
	cmpb	$0, 2168(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_59
# %bb.56:
	leaq	2168(%r15), %rsi
	movl	$46, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movb	$0, 2237(%r14)
	jmp	.LBB50_60
.LBB50_57:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_63
.LBB50_58:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_61
.LBB50_59:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %edi
	movl	$46, %edx
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	anetPeerToString
.LBB50_60:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, 2240(%r14)
	movzwl	2248(%r15), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, 2244(%r14)
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rbx
	movl	$40, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	sdsnewlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	callq	clusterProcessGossipSection
	movq	-112(%rbp), %rbx        # 8-byte Reload
.LBB50_61:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_62:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	clusterSendPing
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	je	.LBB50_65
.LBB50_63:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %r13w
	je	.LBB50_65
# %bb.64:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %r13w
	jne	.LBB50_78
.LBB50_65:
	testw	%r13w, %r13w
	movl	$.L.str.55, %eax
	movl	$.L.str.56, %edx
	cmoveq	%rax, %rdx
	movq	32(%r14), %rcx
	movl	$.L.str.54, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	32(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB50_69
# %bb.66:
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_74
# %bb.67:
	addq	$8, %rdi
	movl	$40, %edx
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_69
# %bb.68:
	movq	32(%r14), %rbx
	addq	$8, %rbx
	callq	mstime
	movq	32(%r14), %rcx
	subl	(%rcx), %eax
	movl	48(%rcx), %r8d
	movl	$.L.str.59, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	serverLog
	movq	32(%r14), %rax
	orl	$64, 48(%rax)
	movb	$0, 2192(%rax)
	movq	32(%r14), %rax
	movq	$0, 2240(%rax)
	movq	%r14, %rdi
	callq	freeClusterLink
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	jmp	.LBB50_162
.LBB50_69:
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB50_85
# %bb.70:
	movl	-68(%rbp), %edx         # 4-byte Reload
	andl	$512, %edx              # imm = 0x200
	movl	48(%r12), %eax
	movl	%eax, %ecx
	andl	$-513, %ecx             # imm = 0xFDFF
	orl	%edx, %ecx
	movl	%ecx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
	testw	%r13w, %r13w
	jne	.LBB50_86
# %bb.71:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	jne	.LBB50_86
# %bb.72:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	nodeUpdateAddressIfNeeded
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_86
# %bb.73:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_86
.LBB50_74:
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB50_84
# %bb.75:
	leaq	8(%r12), %rdx
	xorl	%ebx, %ebx
	movl	$.L.str.57, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	nodeUpdateAddressIfNeeded
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_77
# %bb.76:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_77:
	movq	32(%r14), %rdi
	callq	clusterDelNode
	jmp	.LBB50_163
.LBB50_78:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %r13w
	jne	.LBB50_91
# %bb.79:
	movl	$42, __A_VARIABLE(%rip)
	addq	$2256, %r15             # imm = 0x8D0
	testb	%bl, %bl
	je	.LBB50_113
# %bb.80:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB50_123
# %bb.81:
	movq	8(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB50_126
# %bb.82:
	testb	$24, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_126
# %bb.83:
	movl	$.L.str.62, %esi
	movl	$2, %edi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	serverLog
	orb	$8, 48(%rbx)
	callq	mstime
	movq	%rax, 2152(%rbx)
	andb	$-5, 48(%rbx)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	jmp	.LBB50_124
.LBB50_84:
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	clusterRenameNode
	movq	32(%r14), %rdx
	addq	$8, %rdx
	movl	$.L.str.58, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	32(%r14), %rax
	movl	48(%rax), %ecx
	andl	$-33, %ecx
	movl	-68(%rbp), %edx         # 4-byte Reload
	andl	$3, %edx
	orl	%ecx, %edx
	movl	%edx, 48(%rax)
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_85:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB50_86:
	cmpq	$0, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_97
# %bb.87:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %r13w
	jne	.LBB50_97
# %bb.88:
	callq	mstime
	movq	32(%r14), %rdi
	movq	%rax, 2144(%rdi)
	movq	$0, 2136(%rdi)
	movl	48(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB50_95
# %bb.89:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB50_97
# %bb.90:
	callq	clearNodeFailureIfNeeded
	jmp	.LBB50_96
.LBB50_91:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$4, %r13w
	jne	.LBB50_114
# %bb.92:
	movq	server+2904(%rip), %rax
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_94
# %bb.93:
	movq	server+2912(%rip), %rax
	cmpq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_126
.LBB50_94:
	movl	2256(%r15), %edi
	callq	lwip_htonl
	movl	%eax, %ebx
	movl	2260(%r15), %edi
	callq	lwip_htonl
	movl	%eax, %r14d
	leaq	2264(%r15), %rdi
	movl	%ebx, %ebx
	movq	%rbx, %rsi
	callq	createStringObject
	movq	%r15, %rcx
	movq	%rax, %r15
	leaq	(%rcx,%rbx), %rdi
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
	jmp	.LBB50_125
.LBB50_95:
	andl	$-5, %eax
	movl	%eax, 48(%rdi)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_96:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_97:
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB50_101
# %bb.98:
	leaq	2128(%r15), %r14
	movl	$.L.str.60, %esi
	movl	$40, %edx
	movq	%r14, %rdi
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_102
# %bb.99:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	-64(%rbp), %r13         # 8-byte Reload
	je	.LBB50_103
# %bb.100:
	movq	8(%r14), %rbx
	jmp	.LBB50_104
.LBB50_101:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB50_161
.LBB50_102:
	movq	%r12, %rdi
	callq	clusterSetNodeAsMaster
	movl	$42, __A_VARIABLE(%rip)
	leaq	48(%r12), %r14
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB50_139
.LBB50_103:
	xorl	%ebx, %ebx
.LBB50_104:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_106
# %bb.105:
	movq	%r12, %rdi
	callq	clusterDelNodeSlots
	movl	$-260, %eax             # imm = 0xFEFC
	andl	48(%r12), %eax
	orl	$2, %eax
	movl	%eax, 48(%r12)
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_106:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB50_138
# %bb.107:
	movq	2128(%r12), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB50_138
# %bb.108:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB50_132
# %bb.109:
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB50_131
# %bb.110:
	movq	2120(%r14), %rdi
	movl	$1, %ecx
.LBB50_111:                             # =>This Inner Loop Header: Depth=1
	cmpq	%r12, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_127
# %bb.112:                              #   in Loop: Header=BB50_111 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	leal	1(%rcx), %edx
	cmpl	%ecx, %eax
	movl	%edx, %ecx
	jg	.LBB50_111
	jmp	.LBB50_131
.LBB50_113:
	movl	$.L.str.63, %esi
	movl	$2, %edi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB50_125
.LBB50_114:
	movq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$5, %r13w
	movl	$1, %ebx
	jne	.LBB50_117
# %bb.115:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB50_163
# %bb.116:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	clusterSendFailoverAuthIfNeeded
	jmp	.LBB50_162
.LBB50_117:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$6, %r13w
	jne	.LBB50_165
# %bb.118:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB50_163
# %bb.119:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_163
# %bb.120:
	cmpl	$0, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB50_163
# %bb.121:
	movq	server+2944(%rip), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	524360(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB50_163
# %bb.122:
	addl	$1, 524344(%rax)
	orb	$1, 524416(%rax)
	jmp	.LBB50_161
.LBB50_123:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_124:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_125:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_126:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB50_163
.LBB50_127:
	movl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %edx
	jle	.LBB50_129
# %bb.128:
	leaq	8(%rdi), %rsi
	movslq	%edx, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r14), %eax
.LBB50_129:
	addl	$-1, %eax
	movl	%eax, 2116(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_131
# %bb.130:
	andb	$-2, 49(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_131:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_132:
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%rbx), %rax
	movq	2120(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB50_136
# %bb.133:
	xorl	%ecx, %ecx
.LBB50_134:                             # =>This Inner Loop Header: Depth=1
	cmpq	%r12, (%rdi,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_137
# %bb.135:                              #   in Loop: Header=BB50_134 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB50_134
.LBB50_136:
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 2120(%rbx)
	movslq	2116(%rbx), %rcx
	movq	%r12, (%rax,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 2116(%rbx)
	orb	$1, 49(%rbx)
.LBB50_137:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, 2128(%r12)
	movq	server+2944(%rip), %rax
	orl	$4, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_138:
	leaq	48(%r12), %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB50_139:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jne	.LBB50_142
# %bb.140:
	movq	2128(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB50_143
# %bb.141:
	xorl	%ecx, %ecx
	jmp	.LBB50_144
.LBB50_142:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
.LBB50_143:
	addq	$64, %rdi
	leaq	80(%r15), %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	memcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
.LBB50_144:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB50_147
# %bb.145:
	andl	$1, %eax
	je	.LBB50_147
# %bb.146:
	leaq	80(%r15), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	clusterUpdateSlotsConfigWith
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB50_148
.LBB50_147:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB50_156
.LBB50_148:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	xorl	%ebx, %ebx
	jmp	.LBB50_150
	.p2align	4, 0x90
.LBB50_149:                             #   in Loop: Header=BB50_150 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rbx            # imm = 0x4000
	jae	.LBB50_155
.LBB50_150:                             # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	shrl	$3, %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	movzbl	80(%r15,%rcx), %ecx
	movl	%ebx, %edx
	andb	$7, %dl
	movzbl	%dl, %edx
	btl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB50_149
# %bb.151:                              #   in Loop: Header=BB50_150 Depth=1
	movq	262184(%rax,%rbx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	je	.LBB50_149
# %bb.152:                              #   in Loop: Header=BB50_150 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB50_149
# %bb.153:                              #   in Loop: Header=BB50_150 Depth=1
	cmpq	%r13, 56(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB50_149
# %bb.154:
	leaq	8(%r12), %rdx
	addq	$8, %rcx
	movl	$.L.str.61, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	2248(%r12), %rdi
	movq	server+2944(%rip), %rax
	movq	262184(%rax,%rbx,8), %rsi
	callq	clusterSendUpdate
	movl	$42, __A_VARIABLE(%rip)
.LBB50_155:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB50_156:
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_160
# %bb.157:
	testb	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_160
# %bb.158:
	cmpq	56(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_160
# %bb.159:
	movq	%r12, %rdi
	callq	clusterHandleConfigEpochCollision
	movl	$42, __A_VARIABLE(%rip)
.LBB50_160:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	clusterProcessGossipSection
.LBB50_161:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_162:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_163:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_164:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB50_165:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$8, %r13w
	jne	.LBB50_174
# %bb.166:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB50_163
# %bb.167:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	2128(%rax), %rax
	cmpq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_163
# %bb.168:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_171
# %bb.169:
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB50_171
# %bb.170:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
.LBB50_171:
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
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, 524384(%rcx)
	callq	mstime
	leaq	10000(%rax), %rdi
	callq	pauseClients
	addq	$8, %r14
	movl	$.L.str.64, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB50_162
.LBB50_172:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$7, %r13w
	jne	.LBB50_182
# %bb.173:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4352, %r14d            # imm = 0x1100
	je	.LBB50_18
	jmp	.LBB50_164
.LBB50_174:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$7, %r13w
	jne	.LBB50_184
# %bb.175:
	movq	2256(%r15), %rdi
	callq	intrev64
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB50_162
# %bb.176:
	movq	%rax, %r12
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	2264(%rax), %rdi
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_188
# %bb.177:
	movq	8(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movl	$1, %ebx
	je	.LBB50_162
# %bb.178:
	cmpq	%r12, 56(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB50_189
# %bb.179:
	testb	$2, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_181
# %bb.180:
	movq	%r15, %rdi
	callq	clusterSetNodeAsMaster
	movl	$42, __A_VARIABLE(%rip)
.LBB50_181:
	movq	%r12, 56(%r15)
	movq	server+2944(%rip), %rax
	orl	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$2304, %rdx             # imm = 0x900
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	clusterUpdateSlotsConfigWith
	jmp	.LBB50_125
.LBB50_182:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$9, %r13w
	jne	.LBB50_18
# %bb.183:
	movl	2264(%r15), %edi
	callq	lwip_htonl
	addl	$2269, %eax             # imm = 0x8DD
	jmp	.LBB50_17
.LBB50_184:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$9, %r13w
	jne	.LBB50_187
# %bb.185:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB50_190
# %bb.186:
	movq	2256(%r15), %rbx
	movl	2264(%r15), %edi
	callq	lwip_htonl
	movzbl	2268(%r15), %edx
	addq	$2269, %r15             # imm = 0x8DD
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	$8, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	moduleCallClusterReceivers
	jmp	.LBB50_126
.LBB50_187:
	movl	$.L.str.65, %esi
	movl	$3, %edi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB50_162
.LBB50_188:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB50_162
.LBB50_189:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_190:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB50_164
.Lfunc_end50:
	.size	clusterProcessPacket, .Lfunc_end50-clusterProcessPacket
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI50_0:
	.quad	.LBB50_5
	.quad	.LBB50_7
	.quad	.LBB50_8
	.quad	.LBB50_9
	.quad	.LBB50_10
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
	movl	%esi, %r13d
	movq	%rdi, %r15
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%rdx
	leal	-2(%rcx), %ebx
	shrq	$3, %rdx
	cvtsi2sd	%rdx, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	$2, %eax
	movl	$3, %ecx
	cmovgl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	cmpl	%ebx, %ecx
	jle	.LBB51_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
.LBB51_2:
	movq	server+2944(%rip), %rax
	movl	524584(%rax), %r12d
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leal	(%rcx,%r12), %eax
	imull	$104, %eax, %eax
	addl	$2256, %eax             # imm = 0x8D0
	cmpl	$4351, %eax             # imm = 0x10FF
	movl	$4352, %edi             # imm = 0x1100
	cmovgl	%eax, %edi
	callq	zcalloc
	movq	%rax, %r14
	movq	32(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB51_5
# %bb.3:
	testq	%rax, %rax
	je	.LBB51_5
# %bb.4:
	callq	mstime
	movq	32(%r15), %rcx
	movq	%rax, 2136(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB51_5:
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	clusterBuildMessageHdr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	testl	%ebx, %ebx
	movq	%r14, -80(%rbp)         # 8-byte Spill
	jle	.LBB51_6
# %bb.7:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx,2), %r15d
	leaq	2256(%r14), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%r12, -64(%rbp)         # 8-byte Spill
	jmp	.LBB51_8
	.p2align	4, 0x90
.LBB51_11:                              #   in Loop: Header=BB51_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB51_26:                              #   in Loop: Header=BB51_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB51_27
.LBB51_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_20 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r13d
	jge	.LBB51_27
# %bb.9:                                #   in Loop: Header=BB51_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	$1, %r15d
	jb	.LBB51_27
# %bb.10:                               #   in Loop: Header=BB51_8 Depth=1
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetRandomKey
	movq	8(%rax), %r12
	cmpq	myself(%rip), %r12
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB51_11
# %bb.12:                               #   in Loop: Header=BB51_8 Depth=1
	movl	48(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB51_11
# %bb.13:                               #   in Loop: Header=BB51_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$96, %al
	movq	-56(%rbp), %rcx         # 8-byte Reload
	je	.LBB51_14
.LBB51_16:                              #   in Loop: Header=BB51_8 Depth=1
	addl	$-1, %ebx
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB51_26
.LBB51_14:                              #   in Loop: Header=BB51_8 Depth=1
	cmpq	$0, 2248(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB51_17
# %bb.15:                               #   in Loop: Header=BB51_8 Depth=1
	cmpl	$0, 2112(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB51_16
.LBB51_17:                              #   in Loop: Header=BB51_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r13         # 8-byte Reload
	movslq	%r13d, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	testl	%r13d, %r13d
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	jle	.LBB51_18
# %bb.19:                               #   in Loop: Header=BB51_8 Depth=1
	leaq	8(%r12), %r13
	movq	-88(%rbp), %rbx         # 8-byte Reload
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB51_20:                              #   Parent Loop BB51_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$40, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB51_22
# %bb.21:                               #   in Loop: Header=BB51_20 Depth=2
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rbx
	cmpq	-104(%rbp), %r14        # 8-byte Folded Reload
	jl	.LBB51_20
.LBB51_22:                              # %.loopexit1
                                        #   in Loop: Header=BB51_8 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB51_23
.LBB51_18:                              #   in Loop: Header=BB51_8 Depth=1
	xorl	%r14d, %r14d
.LBB51_23:                              #   in Loop: Header=BB51_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %r14d
	jne	.LBB51_25
# %bb.24:                               #   in Loop: Header=BB51_8 Depth=1
	imulq	$104, -104(%rbp), %rbx  # 8-byte Folded Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
	leaq	(%r14,%rbx), %rdi
	leaq	8(%r12), %rsi
	movl	$40, %edx
	callq	memcpy
	movabsq	$2361183241434822607, %r13 # imm = 0x20C49BA5E353F7CF
	movq	%r13, %rax
	imulq	2136(%r12)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 40(%r14,%rbx)
	movq	%r13, %rax
	imulq	2144(%r12)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 44(%r14,%rbx)
	leaq	(%r14,%rbx), %rdi
	addq	$48, %rdi
	leaq	2192(%r12), %rsi
	movl	$46, %edx
	callq	memcpy
	movzwl	2240(%r12), %edi
	callq	lwip_htons
	movw	%ax, 94(%r14,%rbx)
	movzwl	2244(%r12), %edi
	callq	lwip_htons
	movw	%ax, 96(%r14,%rbx)
	movzwl	48(%r12), %edi
	callq	lwip_htons
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movw	%ax, 98(%r14,%rbx)
	movq	-72(%rbp), %r13         # 8-byte Reload
	movl	$0, 100(%r14,%rbx)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	addl	$1, %r13d
.LBB51_25:                              #   in Loop: Header=BB51_8 Depth=1
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB51_26
.LBB51_6:
	xorl	%r13d, %r13d
.LBB51_27:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	-96(%rbp), %r15         # 8-byte Reload
	je	.LBB51_38
# %bb.28:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB51_37
# %bb.29:
	testq	%rax, %rax
	je	.LBB51_37
# %bb.30:
	movq	-80(%rbp), %r15         # 8-byte Reload
	addq	$2256, %r15             # imm = 0x8D0
	.p2align	4, 0x90
.LBB51_31:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rbx
	movl	48(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	jne	.LBB51_35
# %bb.32:                               #   in Loop: Header=BB51_31 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %al
	jne	.LBB51_35
# %bb.33:                               #   in Loop: Header=BB51_31 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB51_35
# %bb.34:                               #   in Loop: Header=BB51_31 Depth=1
	movslq	%r13d, %r13
	movq	%r12, -64(%rbp)         # 8-byte Spill
	imulq	$104, %r13, %r12
	leaq	(%r15,%r12), %rdi
	leaq	8(%rbx), %rsi
	movl	$40, %edx
	callq	memcpy
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	2136(%rbx)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 40(%r15,%r12)
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	2144(%rbx)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$7, %rdx
	leal	(%rdx,%rax), %edi
	callq	lwip_htonl
	movl	%eax, 44(%r15,%r12)
	leaq	(%r15,%r12), %rdi
	addq	$48, %rdi
	leaq	2192(%rbx), %rsi
	movl	$46, %edx
	callq	memcpy
	movzwl	2240(%rbx), %edi
	callq	lwip_htons
	movw	%ax, 94(%r15,%r12)
	movzwl	2244(%rbx), %edi
	callq	lwip_htons
	movw	%ax, 96(%r15,%r12)
	movzwl	48(%rbx), %edi
	callq	lwip_htons
	movw	%ax, 98(%r15,%r12)
	movl	$0, 100(%r15,%r12)
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r13d
	addl	$-1, %r12d
	.p2align	4, 0x90
.LBB51_35:                              #   in Loop: Header=BB51_31 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB51_37
# %bb.36:                               #   in Loop: Header=BB51_31 Depth=1
	testq	%rax, %rax
	jne	.LBB51_31
.LBB51_37:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
.LBB51_38:
	imull	$104, %r13d, %ebx
	addl	$2256, %ebx             # imm = 0x8D0
	movzwl	%r13w, %edi
	callq	lwip_htons
	movw	%ax, 14(%r14)
	movl	%ebx, %edi
	callq	lwip_htonl
	movl	%eax, 4(%r14)
	movslq	%ebx, %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	clusterSendMessage
	movq	%r14, %rdi
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB52_1
	.p2align	4, 0x90
.LBB52_4:                               #   in Loop: Header=BB52_1 Depth=1
	addl	$-1, 2112(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	movq	$0, 262184(%rcx,%rdx,8)
.LBB52_5:                               #   in Loop: Header=BB52_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB52_6:                               #   in Loop: Header=BB52_1 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB52_6
# %bb.2:                                #   in Loop: Header=BB52_1 Depth=1
	movq	server+2944(%rip), %rcx
	movq	262184(%rcx,%rdx,8), %r10
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r8d
	jne	.LBB52_4
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	2128(%rdi), %r13
	movq	16(%rsi), %rdi
	callq	intrev64
	movq	%rax, %r12
	movq	24(%rbx), %rdi
	callq	intrev64
	movq	%rax, %r14
	movb	2253(%rbx), %al
	movq	myself(%rip), %rcx
	testb	$2, 48(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB54_31
# %bb.1:
	cmpl	$0, 2112(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB54_31
# %bb.2:
	movq	server+2944(%rip), %rcx
	movq	8(%rcx), %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %r12
	jae	.LBB54_4
# %bb.3:
	addq	$8, %r15
	movl	$.L.str.72, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB54_31
.LBB54_4:
	cmpq	%r8, 524408(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB54_6
# %bb.5:
	addq	$8, %r15
	movl	$.L.str.73, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	movq	%r8, %rcx
.LBB54_30:
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB54_31
.LBB54_6:
	movl	48(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB54_13
# %bb.7:
	movl	%ecx, %edx
	andl	$1, %edx
	jne	.LBB54_13
# %bb.8:
	movl	48(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB54_18
# %bb.9:
	andl	$8, %ecx
	jne	.LBB54_18
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB54_11
.LBB54_13:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB54_14
.LBB54_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB54_12
# %bb.16:
	testb	$8, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB54_31
# %bb.17:
	addq	$8, %r15
	movl	$.L.str.76, %esi
	jmp	.LBB54_15
.LBB54_18:
	callq	mstime
	movq	2128(%r15), %rcx
	subq	2160(%rcx), %rax
	movq	server+2928(%rip), %r12
	addq	%r12, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jge	.LBB54_20
# %bb.19:
	leaq	8(%r15), %rbx
	callq	mstime
	movq	2128(%r15), %rcx
	subq	%rax, %r12
	addq	2160(%rcx), %r12
	movl	$.L.str.77, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	jmp	.LBB54_30
.LBB54_14:
	addq	$8, %r15
	movl	$.L.str.74, %esi
	jmp	.LBB54_15
.LBB54_12:
	addq	$8, %r15
	movl	$.L.str.75, %esi
.LBB54_15:
	movl	$3, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB54_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4360, %rsp             # imm = 0x1108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB54_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rsi
	xorl	%ecx, %ecx
	jmp	.LBB54_21
	.p2align	4, 0x90
.LBB54_25:                              #   in Loop: Header=BB54_21 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rcx            # imm = 0x4000
	jae	.LBB54_26
.LBB54_21:                              # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	shrl	$3, %edx
	andl	$8191, %edx             # imm = 0x1FFF
	movzbl	80(%rbx,%rdx), %edx
	movl	%ecx, %eax
	andb	$7, %al
	movzbl	%al, %eax
	btl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB54_25
# %bb.22:                               #   in Loop: Header=BB54_21 Depth=1
	movq	262184(%rsi,%rcx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB54_25
# %bb.23:                               #   in Loop: Header=BB54_21 Depth=1
	movq	56(%rdx), %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r8
	jbe	.LBB54_25
# %bb.24:
	addq	$8, %r15
	movl	$.L.str.78, %esi
	movl	$3, %edi
	movq	%r15, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB54_31
.LBB54_26:
	movq	8(%rsi), %rax
	movq	%rax, 524408(%rsi)
	callq	mstime
	movq	2128(%r15), %rcx
	movq	%rax, 2160(%rcx)
	movq	server+2944(%rip), %rax
	orl	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 2248(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB54_27
# %bb.28:
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
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	jmp	.LBB54_29
.LBB54_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB54_29:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %r15
	movq	8(%rax), %rcx
	movl	$.L.str.79, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	jmp	.LBB54_30
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
	callq	freeClusterLink
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB56_9
# %bb.12:
	movq	16(%rbx), %rdi
	movq	%rax, %rsi
	movq	$-1, %rdx
	callq	sdsrange
	movq	16(%rbx), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB56_18
# %bb.13:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI56_1(,%rdx,8)
.LBB56_19:
	shrq	$3, %rax
	jmp	.LBB56_20
.LBB56_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.67, %edx
	cmpq	$-1, %rax
	jne	.LBB56_11
# %bb.10:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB56_11:
	movl	$.L.str.66, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	freeClusterLink
	jmp	.LBB56_22
.LBB56_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB56_21
.LBB56_14:
	movzbl	-3(%rcx), %eax
	jmp	.LBB56_20
.LBB56_15:
	movzwl	-5(%rcx), %eax
	jmp	.LBB56_20
.LBB56_16:
	movl	-9(%rcx), %eax
	jmp	.LBB56_20
.LBB56_17:
	movq	-17(%rcx), %rax
.LBB56_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB56_23
.LBB56_21:
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
.LBB56_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB56_23:
	movl	$42, __A_VARIABLE(%rip)
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
	.quad	.LBB56_14
	.quad	.LBB56_15
	.quad	.LBB56_16
	.quad	.LBB56_17
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdi
.LBB57_11:
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	sdscatlen
	movq	%rax, 16(%rbx)
	movzwl	12(%r14), %edi
	callq	lwip_htons
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$9, %ax
	ja	.LBB57_13
# %bb.12:
	movq	server+2944(%rip), %rcx
	movzwl	%ax, %eax
	addq	$1, 524424(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB58_1
	.p2align	4, 0x90
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB58_6
# %bb.2:                                #   in Loop: Header=BB58_1 Depth=1
	movq	8(%rax), %rax
	movq	2248(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB58_5
# %bb.3:                                #   in Loop: Header=BB58_1 Depth=1
	testb	$48, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB59_2
# %bb.1:
	movq	2128(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB59_3
.LBB59_2:
	movq	%rax, %r12
.LBB59_3:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB59_5
# %bb.4:
	movl	$46, %edx
	movq	%r15, %rdi
	callq	strncpy
	movb	$0, 2213(%r13)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB59_7
# %bb.6:
	addq	$8, %rsi
	movl	$40, %edx
	movq	%r15, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_8
# %bb.9:
	movq	server+2352(%rip), %rdi
	jmp	.LBB59_10
.LBB59_8:
	callq	replicationGetSlaveOffset
	movq	%rax, %rdi
.LBB59_10:
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	callq	intrev64
	movq	%rax, 32(%r13)
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB59_13
# %bb.11:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB59_13
# %bb.12:
	orb	$1, 2253(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB59_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2296, %eax             # imm = 0x8F8
	cmpl	$3, %ebx
	je	.LBB59_15
# %bb.14:
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$4352, %eax             # imm = 0x1100
	cmpl	$7, %ebx
	jne	.LBB59_16
.LBB59_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edi
.LBB59_16:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB60_5
# %bb.4:                                #   in Loop: Header=BB60_3 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB62_1
.LBB62_9:                               #   in Loop: Header=BB62_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB62_12:                              #   in Loop: Header=BB62_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB62_13:                              #   in Loop: Header=BB62_1 Depth=1
	movl	$1, %esi
	callq	clusterSendPing
	.p2align	4, 0x90
.LBB62_14:                              #   in Loop: Header=BB62_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB62_15
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	movq	8(%rax), %rcx
	movq	2248(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB62_14
# %bb.3:                                #   in Loop: Header=BB62_1 Depth=1
	movq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	je	.LBB62_14
# %bb.4:                                #   in Loop: Header=BB62_1 Depth=1
	movl	48(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %dl
	jne	.LBB62_14
# %bb.5:                                #   in Loop: Header=BB62_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	jne	.LBB62_13
# %bb.6:                                #   in Loop: Header=BB62_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB62_10
# %bb.7:                                #   in Loop: Header=BB62_1 Depth=1
	movq	2128(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB62_10
# %bb.8:                                #   in Loop: Header=BB62_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	je	.LBB62_9
# %bb.11:                               #   in Loop: Header=BB62_1 Depth=1
	cmpq	2128(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB62_14
	jmp	.LBB62_12
.LBB62_10:                              #   in Loop: Header=BB62_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB62_14
.LBB62_15:
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
	movq	%rdx, %r14
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	getDecodedObject
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	getDecodedObject
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	8(%rbx), %rdx
	movzbl	-1(%rdx), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
	movq	8(%rax), %rax
	movzbl	-1(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
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
	leaq	-4416(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4352, %r13d            # imm = 0x1100
	jb	.LBB63_18
# %bb.17:
	movq	%r13, %rdi
	callq	zmalloc
	movq	%rax, %rbx
	leaq	-4416(%rbp), %rsi
	movl	$4352, %edx             # imm = 0x1100
	movq	%rax, %rdi
	callq	memcpy
.LBB63_18:
	movl	$42, __A_VARIABLE(%rip)
	leaq	2264(%rbx), %rdi
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	8(%r15), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
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
	movl	$42, __A_VARIABLE(%rip)
	callq	memcpy
	movq	8(%r15), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%rax), %rdi
	addq	$2264, %rdi             # imm = 0x8D8
	movq	8(%r12), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB63_44
# %bb.43:
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	clusterSendMessage
	jmp	.LBB63_45
.LBB63_44:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	clusterBroadcastMessage
.LBB63_45:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	decrRefCount
	movq	%r12, %rdi
	callq	decrRefCount
	leaq	-4416(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	je	.LBB63_47
# %bb.46:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB63_47:
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
	movl	%r8d, %r15d
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	leaq	-4416(%rbp), %rbx
	movq	%rbx, %rdi
	movl	$9, %esi
	callq	clusterBuildMessageHdr
	movl	%r15d, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leal	2269(%r15), %r12d
	movq	%r14, -2160(%rbp)
	movb	%r13b, -2148(%rbp)
	movl	%r15d, %edi
	callq	lwip_htonl
	movl	%eax, -2152(%rbp)
	movl	%r12d, %edi
	callq	lwip_htonl
	movl	%eax, -4412(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	cmpl	$4352, %r12d            # imm = 0x1100
	jb	.LBB64_2
# %bb.1:
	movq	%r12, %rdi
	callq	zmalloc
	movq	%rax, %rbx
	leaq	-4416(%rbp), %rsi
	movl	$4352, %edx             # imm = 0x1100
	movq	%rax, %rdi
	callq	memcpy
	movq	%rbx, %rdi
.LBB64_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$2269, %rdi             # imm = 0x8DD
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB64_4
# %bb.3:
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	clusterSendMessage
	jmp	.LBB64_5
.LBB64_4:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	clusterBroadcastMessage
.LBB64_5:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-4416(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	je	.LBB64_7
# %bb.6:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB64_7:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB65_6
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB65_2
# %bb.3:
	movq	8(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB65_7
# %bb.4:
	movq	2248(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB65_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB65_6:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r13b, %edx
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	clusterSendModule
	xorl	%eax, %eax
	jmp	.LBB65_7
.LBB65_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB65_7:
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
	subq	$4352, %rsp             # imm = 0x1100
	leaq	-4352(%rbp), %rdi
	movl	$5, %esi
	callq	clusterBuildMessageHdr
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB67_2
# %bb.1:
	orb	$2, -2099(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB67_2:
	movl	$2256, %edi             # imm = 0x8D0
	callq	lwip_htonl
	movl	%eax, -4348(%rbp)
	leaq	-4352(%rbp), %rdi
	movl	$2256, %esi             # imm = 0x8D0
	callq	clusterBroadcastMessage
	movl	$42, __A_VARIABLE(%rip)
	addq	$4352, %rsp             # imm = 0x1100
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB70_10
# %bb.1:
	movq	2128(%rax), %r14
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB70_9
# %bb.2:
	callq	replicationGetSlaveOffset
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB70_9
# %bb.3:
	movq	2120(%r14), %rdx
	xorl	%esi, %esi
	movq	myself(%rip), %rdi
	xorl	%r15d, %r15d
	jmp	.LBB70_4
	.p2align	4, 0x90
.LBB70_8:                               #   in Loop: Header=BB70_4 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	jge	.LBB70_9
.LBB70_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rbx
	je	.LBB70_8
# %bb.5:                                #   in Loop: Header=BB70_4 Depth=1
	testl	$512, 48(%rbx)          # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB70_8
# %bb.6:                                #   in Loop: Header=BB70_4 Depth=1
	cmpq	%rax, 2184(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB70_8
# %bb.7:                                #   in Loop: Header=BB70_4 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB70_8
.LBB70_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB70_10:
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
	movl	%edi, %ebx
	movl	$5000, %r14d            # imm = 0x1388
	addq	server+2928(%rip), %r14
	movq	server+2944(%rip), %rax
	cmpl	%edi, 524368(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB71_1
# %bb.2:
	xorl	%edi, %edi
	callq	time
	subq	clusterLogCantFailover.lastlog_time(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB71_7
# %bb.5:
	testb	$8, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB71_7
# %bb.6:
	callq	mstime
	movq	myself(%rip), %rcx
	movq	2128(%rcx), %rcx
	subq	2152(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jl	.LBB71_10
.LBB71_7:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	movl	$.L.str.85, %r14d
	cmpl	$3, %ebx
	ja	.LBB71_9
# %bb.8:
	movslq	%ebx, %rax
	movq	.Lswitch.table.clusterLogCantFailover(,%rax,8), %r14
.LBB71_9:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	48(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB72_16
# %bb.1:
	andl	$1, %eax
	jne	.LBB72_16
# %bb.2:
	callq	clusterSetNodeAsMaster
	callq	replicationUnsetMaster
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB72_3
	.p2align	4, 0x90
.LBB72_5:                               #   in Loop: Header=BB72_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB72_8:                               #   in Loop: Header=BB72_3 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r14, 262184(%rax,%rbx,8)
.LBB72_9:                               #   in Loop: Header=BB72_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB72_10:                              #   in Loop: Header=BB72_3 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB72_10
# %bb.4:                                #   in Loop: Header=BB72_3 Depth=1
	movq	server+2944(%rip), %rcx
	movq	262184(%rcx,%rbx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %edx
	je	.LBB72_17
# %bb.7:                                #   in Loop: Header=BB72_3 Depth=1
	addl	$-1, 2112(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	cmpq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %r14
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB72_9
	jmp	.LBB72_8
.LBB72_11:
	callq	clusterUpdateState
	movl	$1, %edi
	callq	clusterSaveConfig
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB72_18
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	callq	clusterBroadcastPong
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB72_15
# %bb.13:
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB72_15
# %bb.14:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
.LBB72_15:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB72_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB72_17:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB74_2
# %bb.1:
	callq	mstime
	movq	%rax, clusterUpdateState.first_call_time(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB74_2:
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB74_5
# %bb.3:
	movq	server+2944(%rip), %rax
	cmpl	$1, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB74_5
# %bb.4:
	callq	mstime
	subq	clusterUpdateState.first_call_time(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2000, %rax             # imm = 0x7D0
	jl	.LBB74_26
.LBB74_5:
	cmpl	$0, server+2960(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB74_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB74_8:                               # =>This Inner Loop Header: Depth=1
	movq	262184(%rax,%rcx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB74_10
# %bb.9:                                #   in Loop: Header=BB74_8 Depth=1
	testb	$8, 48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB74_10
# %bb.27:                               #   in Loop: Header=BB74_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	262192(%rax,%rcx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB74_10
# %bb.28:                               #   in Loop: Header=BB74_8 Depth=1
	testb	$8, 48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB74_10
# %bb.29:                               #   in Loop: Header=BB74_8 Depth=1
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rcx            # imm = 0x4000
	jb	.LBB74_8
# %bb.30:
	xorl	%r14d, %r14d
	jmp	.LBB74_11
.LBB74_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB74_11
.LBB74_6:
	xorl	%r14d, %r14d
	movq	server+2944(%rip), %rax
.LBB74_11:
	movl	$0, 20(%rax)
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB74_12
	.p2align	4, 0x90
.LBB74_17:                              #   in Loop: Header=BB74_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
.LBB74_12:                              # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB74_18
# %bb.13:                               #   in Loop: Header=BB74_12 Depth=1
	movq	8(%rax), %rcx
	movl	48(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB74_17
# %bb.14:                               #   in Loop: Header=BB74_12 Depth=1
	cmpl	$0, 2112(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB74_17
# %bb.15:                               #   in Loop: Header=BB74_12 Depth=1
	movq	server+2944(%rip), %rcx
	addl	$1, 20(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testb	$12, %al
	jne	.LBB74_17
# %bb.16:                               #   in Loop: Header=BB74_12 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB74_17
.LBB74_18:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movq	server+2944(%rip), %rax
	movl	20(%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r15d
	jg	.LBB74_20
# %bb.19:
	callq	mstime
	movq	%rax, clusterUpdateState.among_minority_time(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	movq	server+2944(%rip), %rax
.LBB74_20:
	cmpl	16(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB74_26
# %bb.21:
	movq	server+2928(%rip), %rax
	cmpq	$5001, %rax             # imm = 0x1389
	movl	$5000, %ecx             # imm = 0x1388
	cmovlq	%rax, %rcx
	cmpq	$499, %rcx              # imm = 0x1F3
	movl	$500, %ebx              # imm = 0x1F4
	cmovgq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB74_24
# %bb.22:
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB74_24
# %bb.23:
	callq	mstime
	subq	clusterUpdateState.among_minority_time(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jl	.LBB74_25
.LBB74_24:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB74_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB74_26:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbx
	subq	$4360, %rsp             # imm = 0x1108
	callq	mstime
	movq	%rax, %r15
	movq	server+2944(%rip), %rcx
	subq	524336(%rcx), %r15
	movl	20(%rcx), %r14d
	movq	524376(%rcx), %r9
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB75_1
# %bb.2:
	cmpl	$0, 524400(%rcx)
	setne	%r8b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB75_3
.LBB75_1:
	xorl	%r8d, %r8d
.LBB75_3:
	andb	$-2, 524416(%rcx)
	movq	server+2928(%rip), %rsi
	leaq	(%rsi,%rsi), %rdx
	cmpq	$1999, %rdx             # imm = 0x7CF
	movl	$2000, %ebx             # imm = 0x7D0
	cmovgq	%rdx, %rbx
	movq	myself(%rip), %rdx
	testb	$1, 48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB75_8
# %bb.4:
	movq	2128(%rdx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB75_8
# %bb.5:
	testb	$8, 48(%rdi)
	sete	%al
	movl	%r8d, %edx
	notb	%dl
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %dl
	jne	.LBB75_8
# %bb.6:
	cmpl	$0, server+2964(%rip)
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %dl
	jne	.LBB75_8
# %bb.7:
	cmpl	$0, 2112(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB75_8
# %bb.9:
	movl	$144, %eax
	addq	server+2480(%rip), %rax
	cmpl	$15, server+2500(%rip)
	movq	server+2872(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$server+2568, %edi
	cmoveq	%rax, %rdi
	subq	(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	imulq	$1000, %rdx, %rdi       # imm = 0x3E8
	movq	%rdi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rsi, %rdx
	jle	.LBB75_11
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rdi
.LBB75_11:
	movslq	server+2956(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB75_14
# %bb.12:
	movslq	server+2372(%rip), %rax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	imulq	%rdx, %rsi
	addq	%rax, %rsi
	cmpq	%rsi, %rdi
	setle	%al
	orb	%al, %r8b
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB75_13
.LBB75_14:
	leaq	(%rbx,%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jle	.LBB75_18
# %bb.15:
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
	callq	clusterGetSlaveRank
	movq	server+2944(%rip), %rcx
	movl	%eax, 524352(%rcx)
	imull	$1000, %eax, %eax       # imm = 0x3E8
	movslq	%eax, %rbx
	addq	524336(%rcx), %rbx
	movq	%rbx, 524336(%rcx)
	cmpq	$0, 524376(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB75_17
# %bb.16:
	callq	mstime
	movq	%rax, %rbx
	movq	server+2944(%rip), %rax
	movq	%rbx, 524336(%rax)
	movl	$0, 524352(%rax)
	orb	$1, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_17:
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
	jmp	.LBB75_37
.LBB75_8:
	movl	$0, 524368(%rcx)
.LBB75_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4360, %rsp             # imm = 0x1108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB75_18:
	cmpl	$0, 524348(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB75_23
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	jne	.LBB75_23
# %bb.20:
	callq	clusterGetSlaveRank
	movq	server+2944(%rip), %rdx
	movl	%eax, %ecx
	subl	524352(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB75_22
# %bb.21:
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	movslq	%ecx, %rcx
	addq	%rcx, 524336(%rdx)
	movl	%eax, 524352(%rdx)
	movl	$.L.str.88, %esi
	movl	$3, %edi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB75_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB75_23:
	callq	mstime
	movq	server+2944(%rip), %rcx
	cmpq	524336(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB75_25
# %bb.24:
	movl	$2, %edi
	callq	clusterLogCantFailover
	jmp	.LBB75_37
.LBB75_13:
	movl	$1, %edi
	callq	clusterLogCantFailover
	jmp	.LBB75_37
.LBB75_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jle	.LBB75_27
# %bb.26:
	movl	$3, %edi
	callq	clusterLogCantFailover
	jmp	.LBB75_37
.LBB75_27:
	cmpl	$0, 524348(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB75_28
# %bb.31:
	movl	%r14d, %eax
	shrl	$31, %eax
	addl	%r14d, %eax
	sarl	%eax
	cmpl	%eax, 524344(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB75_35
# %bb.32:
	movl	$.L.str.90, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %rax
	movq	server+2944(%rip), %rcx
	movq	524360(%rcx), %rdx
	cmpq	%rdx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB75_34
# %bb.33:
	movq	%rdx, 56(%rax)
	movl	$.L.str.91, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB75_34:
	callq	clusterFailoverReplaceYourMaster
	jmp	.LBB75_36
.LBB75_28:
	movq	8(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rcx)
	movq	%rdx, 524360(%rcx)
	movl	$.L.str.89, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	leaq	-4384(%rbp), %rdi
	movl	$5, %esi
	callq	clusterBuildMessageHdr
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB75_30
# %bb.29:
	orb	$2, -2131(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_30:
	movl	$2256, %edi             # imm = 0x8D0
	callq	lwip_htonl
	movl	%eax, -4380(%rbp)
	leaq	-4384(%rbp), %rdi
	movl	$2256, %esi             # imm = 0x8D0
	callq	clusterBroadcastMessage
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movl	$1, 524348(%rax)
	orb	$14, 524416(%rax)
	jmp	.LBB75_36
.LBB75_35:
	movl	$4, %edi
	callq	clusterLogCantFailover
.LBB75_36:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB75_37
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
	movq	2128(%r13), %rdx
	movq	server+2944(%rip), %rax
	cmpl	$0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB76_1
.LBB76_56:
	movl	$42, __A_VARIABLE(%rip)
.LBB76_57:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB76_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB76_57
# %bb.2:
	movslq	2116(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB76_3
# %bb.4:
	movq	2120(%rdx), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB76_5
	.p2align	4, 0x90
.LBB76_8:                               #   in Loop: Header=BB76_5 Depth=1
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	jge	.LBB76_9
.LBB76_5:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdi,8), %rbx
	movl	48(%rbx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %bl
	jne	.LBB76_8
# %bb.6:                                #   in Loop: Header=BB76_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	jne	.LBB76_8
# %bb.7:                                #   in Loop: Header=BB76_5 Depth=1
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB76_8
.LBB76_3:
	xorl	%edx, %edx
.LBB76_9:
	cmpl	server+2952(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB76_56
# %bb.10:
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB76_58
# %bb.11:                               # %.preheader
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB76_12
	.p2align	4, 0x90
.LBB76_49:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB76_50
.LBB76_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_34 Depth 2
                                        #     Child Loop BB76_46 Depth 2
	movq	8(%rax), %r15
	movl	48(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB76_14
# %bb.13:                               #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testb	$8, %cl
	je	.LBB76_15
.LBB76_14:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB76_15:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB76_17
# %bb.16:                               #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB76_17:                              #   in Loop: Header=BB76_12 Depth=1
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB76_20
# %bb.18:                               #   in Loop: Header=BB76_12 Depth=1
	movslq	2116(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jle	.LBB76_19
# %bb.24:                               #   in Loop: Header=BB76_12 Depth=1
	movq	2120(%r15), %rcx
	movl	%esi, %edx
	andl	$1, %edx
	cmpl	$1, %esi
	jne	.LBB76_33
# %bb.25:                               #   in Loop: Header=BB76_12 Depth=1
	xorl	%edi, %edi
	xorl	%r14d, %r14d
.LBB76_26:                              #   in Loop: Header=BB76_12 Depth=1
	testq	%rdx, %rdx
	je	.LBB76_30
# %bb.27:                               #   in Loop: Header=BB76_12 Depth=1
	movq	(%rcx,%rdi,8), %rcx
	testb	$8, 48(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB76_29
# %bb.28:                               #   in Loop: Header=BB76_12 Depth=1
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB76_29:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB76_30:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB76_20
# %bb.31:                               #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB76_32
.LBB76_19:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB76_20:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB76_32
# %bb.21:                               #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	jne	.LBB76_40
# %bb.22:                               #   in Loop: Header=BB76_12 Depth=1
	cmpl	$0, 2112(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB76_23
# %bb.39:                               #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	movq	%r15, -48(%rbp)         # 8-byte Spill
	jmp	.LBB76_40
	.p2align	4, 0x90
.LBB76_32:                              #   in Loop: Header=BB76_12 Depth=1
	movq	$0, 2176(%r15)
	jmp	.LBB76_42
.LBB76_33:                              #   in Loop: Header=BB76_12 Depth=1
	subq	%rdx, %rsi
	xorl	%edi, %edi
	xorl	%r14d, %r14d
	jmp	.LBB76_34
	.p2align	4, 0x90
.LBB76_38:                              #   in Loop: Header=BB76_34 Depth=2
	addq	$2, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB76_26
.LBB76_34:                              #   Parent Loop BB76_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rdi,8), %rbx
	testb	$8, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB76_36
# %bb.35:                               #   in Loop: Header=BB76_34 Depth=2
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB76_36:                              #   in Loop: Header=BB76_34 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx,%rdi,8), %rbx
	testb	$8, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB76_38
# %bb.37:                               #   in Loop: Header=BB76_34 Depth=2
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB76_38
.LBB76_23:                              #   in Loop: Header=BB76_12 Depth=1
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB76_40:                              #   in Loop: Header=BB76_12 Depth=1
	cmpq	$0, 2176(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB76_43
# %bb.41:                               #   in Loop: Header=BB76_12 Depth=1
	callq	mstime
	movq	%rax, 2176(%r15)
.LBB76_42:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB76_43:                              #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-52(%rbp), %r14d        # 4-byte Folded Reload
	jne	.LBB76_49
# %bb.44:                               #   in Loop: Header=BB76_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 2116(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB76_49
# %bb.45:                               #   in Loop: Header=BB76_12 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB76_46
	.p2align	4, 0x90
.LBB76_48:                              #   in Loop: Header=BB76_46 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB76_49
.LBB76_46:                              #   Parent Loop BB76_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	2120(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	addq	$8, %rdi
	leaq	8(%r13), %rsi
	movl	$40, %edx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB76_48
# %bb.47:                               #   in Loop: Header=BB76_46 Depth=2
	movq	2120(%r15), %rax
	movq	(%rax,%rbx,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB76_48
.LBB76_50:
	movq	%r12, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB76_56
# %bb.51:
	cmpq	myself(%rip), %r13
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB76_56
# %bb.52:
	callq	mstime
	movq	-48(%rbp), %rcx         # 8-byte Reload
	subq	2176(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5001, %rax             # imm = 0x1389
	jl	.LBB76_56
# %bb.53:
	testb	$2, server+2984(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB76_56
# %bb.54:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	8(%rbx), %rdx
	movl	$.L.str.92, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	clusterSetMaster
	jmp	.LBB76_55
.LBB76_58:
	movq	%r12, %rdi
	callq	dictReleaseIterator
.LBB76_55:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB76_56
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB77_6
# %bb.1:
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB77_6
# %bb.2:
	movl	$.L.str.93, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB77_5
# %bb.3:
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB77_5
# %bb.4:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
.LBB77_5:
	movq	server+2944(%rip), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 524376(%rax)
	movl	$0, 524400(%rax)
	movq	$0, 524392(%rax)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB78_5
# %bb.1:
	cmpl	$0, 524400(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB78_2
.LBB78_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB78_2:
	movq	524392(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB78_5
# %bb.3:
	callq	replicationGetSlaveOffset
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jne	.LBB78_5
# %bb.4:
	movq	server+2944(%rip), %rax
	movl	$1, 524400(%rax)
	movl	$.L.str.94, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rax, %r14
	addq	$1, clusterCron.iteration(%rip)
	movq	server+2968(%rip), %rbx
	movq	clusterCron.prev_ip(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB79_3
# %bb.1:
	testq	%rdi, %rdi
	jne	.LBB79_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB79_12
.LBB79_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB79_6
# %bb.4:
	testq	%rdi, %rdi
	je	.LBB79_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_11:
	callq	zfree
.LBB79_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB79_13:
	movq	%rbx, clusterCron.prev_ip(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB79_15
# %bb.14:
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
	jmp	.LBB79_16
.LBB79_15:
	movq	myself(%rip), %rax
	movb	$0, 2192(%rax)
.LBB79_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB79_17:
	movq	server+2928(%rip), %rcx
	cmpq	$999, %rcx              # imm = 0x3E7
	movl	$1000, %r12d            # imm = 0x3E8
	cmovgq	%rcx, %r12
	movl	48(%rax), %ecx
	xorl	%edx, %edx
	cmpl	$0, server+2964(%rip)
	setne	%dl
	shll	$9, %edx
	movl	%ecx, %esi
	andl	$-513, %esi             # imm = 0xFDFF
	orl	%edx, %esi
	movl	%esi, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	cmpl	%ecx, %esi
	je	.LBB79_19
# %bb.18:
	orb	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movq	server+2944(%rip), %rax
	movq	$0, 524584(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB79_40
# %bb.20:                               # %.preheader2
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	jmp	.LBB79_21
.LBB79_26:                              #   in Loop: Header=BB79_21 Depth=1
	movq	%rbx, %rdi
	callq	clusterDelNode
	.p2align	4, 0x90
.LBB79_39:                              #   in Loop: Header=BB79_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB79_40
.LBB79_21:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rbx
	movl	48(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$80, %al
	jne	.LBB79_39
# %bb.22:                               #   in Loop: Header=BB79_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB79_24
# %bb.23:                               #   in Loop: Header=BB79_21 Depth=1
	movq	server+2944(%rip), %rcx
	addq	$1, 524584(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_24:                              #   in Loop: Header=BB79_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	je	.LBB79_27
# %bb.25:                               #   in Loop: Header=BB79_21 Depth=1
	movq	%r14, %rax
	subq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jg	.LBB79_26
.LBB79_27:                              #   in Loop: Header=BB79_21 Depth=1
	cmpq	$0, 2248(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_39
# %bb.28:                               #   in Loop: Header=BB79_21 Depth=1
	leaq	2192(%rbx), %r12
	movl	2244(%rbx), %edx
	cmpl	$0, server+352(%rip)
	je	.LBB79_29
# %bb.30:                               #   in Loop: Header=BB79_21 Depth=1
	movq	server+224(%rip), %rcx
	jmp	.LBB79_31
.LBB79_29:                              #   in Loop: Header=BB79_21 Depth=1
	xorl	%ecx, %ecx
.LBB79_31:                              #   in Loop: Header=BB79_21 Depth=1
	movl	$server+584, %edi
	movq	%r12, %rsi
	callq	anetTcpNonBlockBindConnect
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB79_32
# %bb.35:                               #   in Loop: Header=BB79_21 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB79_37
# %bb.36:                               #   in Loop: Header=BB79_21 Depth=1
	movq	%r13, 2136(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_37:                              #   in Loop: Header=BB79_21 Depth=1
	andb	$127, 48(%rbx)
	movl	2244(%rbx), %r8d
	addq	$8, %rbx
	movl	$.L.str.96, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB79_38
.LBB79_32:                              #   in Loop: Header=BB79_21 Depth=1
	cmpq	$0, 2136(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_34
# %bb.33:                               #   in Loop: Header=BB79_21 Depth=1
	callq	mstime
	movq	%rax, 2136(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_34:                              #   in Loop: Header=BB79_21 Depth=1
	movl	2244(%rbx), %ecx
	movl	$.L.str.95, %esi
	movl	$server+584, %r8d
	xorl	%edi, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB79_38:                              #   in Loop: Header=BB79_21 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB79_39
.LBB79_40:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movabsq	$-3689348814741910323, %rax # imm = 0xCCCCCCCCCCCCCCCD
	imulq	clusterCron.iteration(%rip), %rax
	rorq	%rax
	movabsq	$1844674407370955161, %rcx # imm = 0x1999999999999999
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	ja	.LBB79_52
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %ebx
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB79_42
.LBB79_47:                              #   in Loop: Header=BB79_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
	movq	%rcx, %r15
	.p2align	4, 0x90
.LBB79_48:                              #   in Loop: Header=BB79_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	je	.LBB79_49
.LBB79_42:                              # =>This Inner Loop Header: Depth=1
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetRandomKey
	movq	8(%rax), %rax
	cmpq	$0, 2248(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB79_48
# %bb.43:                               #   in Loop: Header=BB79_42 Depth=1
	cmpq	$0, 2136(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_48
# %bb.44:                               #   in Loop: Header=BB79_42 Depth=1
	testb	$48, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_48
# %bb.45:                               #   in Loop: Header=BB79_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	2144(%rax), %rcx
	testq	%r14, %r14
	je	.LBB79_47
# %bb.46:                               #   in Loop: Header=BB79_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r15
	jg	.LBB79_47
	jmp	.LBB79_48
.LBB79_49:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB79_51
# %bb.50:
	leaq	8(%r14), %rdx
	movl	$.L.str.97, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	2248(%r14), %rdi
	xorl	%esi, %esi
	callq	clusterSendPing
	movl	$42, __A_VARIABLE(%rip)
.LBB79_51:
	movl	$42, __A_VARIABLE(%rip)
.LBB79_52:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB79_53
# %bb.54:                               # %.preheader
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	jmp	.LBB79_55
.LBB79_98:                              #   in Loop: Header=BB79_55 Depth=1
	xorl	%esi, %esi
	callq	clusterSendPing
	.p2align	4, 0x90
.LBB79_103:                             #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB79_104
.LBB79_55:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_79 Depth 2
	movq	8(%rax), %r14
	callq	mstime
	movl	48(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$112, %cl
	jne	.LBB79_103
# %bb.56:                               #   in Loop: Header=BB79_55 Depth=1
	movq	%rax, %r12
	movq	myself(%rip), %r9
	testb	$2, 48(%r9)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB79_69
# %bb.57:                               #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB79_69
# %bb.58:                               #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	jne	.LBB79_69
# %bb.59:                               #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jle	.LBB79_60
# %bb.71:                               #   in Loop: Header=BB79_55 Depth=1
	movq	2120(%r14), %rsi
	movl	%edi, %r8d
	andl	$1, %r8d
	cmpl	$1, %edi
	jne	.LBB79_78
# %bb.72:                               #   in Loop: Header=BB79_55 Depth=1
	xorl	%eax, %eax
	xorl	%edx, %edx
.LBB79_73:                              #   in Loop: Header=BB79_55 Depth=1
	testq	%r8, %r8
	je	.LBB79_77
# %bb.74:                               #   in Loop: Header=BB79_55 Depth=1
	movq	(%rsi,%rax,8), %rax
	testb	$8, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_76
# %bb.75:                               #   in Loop: Header=BB79_55 Depth=1
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB79_76:                              #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_77:                              #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB79_64
	jmp	.LBB79_61
.LBB79_60:                              #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB79_61:                              #   in Loop: Header=BB79_55 Depth=1
	xorl	%edx, %edx
	cmpl	$0, 2112(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB79_64
# %bb.62:                               #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	je	.LBB79_64
# %bb.63:                               #   in Loop: Header=BB79_55 Depth=1
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB79_64:                              #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %edx
	jle	.LBB79_66
# %bb.65:                               #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r13d
.LBB79_66:                              #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, 2128(%r9)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_68
# %bb.67:                               #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, -56(%rbp)         # 4-byte Spill
.LBB79_68:                              #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB79_69:                              #   in Loop: Header=BB79_55 Depth=1
	movq	2248(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB79_70
# %bb.84:                               #   in Loop: Header=BB79_55 Depth=1
	movq	%r12, %rcx
	subq	(%rdi), %rcx
	movq	server+2928(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jle	.LBB79_88
# %bb.85:                               #   in Loop: Header=BB79_55 Depth=1
	movq	2136(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB79_88
# %bb.86:                               #   in Loop: Header=BB79_55 Depth=1
	cmpq	%rcx, 2144(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB79_88
# %bb.87:                               #   in Loop: Header=BB79_55 Depth=1
	movq	%r12, %rdx
	subq	%rcx, %rdx
	movq	%rax, %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	sarq	%rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jle	.LBB79_88
# %bb.92:                               #   in Loop: Header=BB79_55 Depth=1
	callq	freeClusterLink
	movl	$42, __A_VARIABLE(%rip)
	movq	2248(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB79_89
	jmp	.LBB79_93
	.p2align	4, 0x90
.LBB79_88:                              #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB79_89:                              #   in Loop: Header=BB79_55 Depth=1
	cmpq	$0, 2136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_91
# %bb.90:                               #   in Loop: Header=BB79_55 Depth=1
	movq	2144(%r14), %rax
	movq	%r12, %rcx
	subq	%rax, %rcx
	movq	server+2928(%rip), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	sarq	%rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jg	.LBB79_98
.LBB79_91:                              #   in Loop: Header=BB79_55 Depth=1
	xorl	%eax, %eax
	jmp	.LBB79_94
.LBB79_70:                              #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB79_93:                              #   in Loop: Header=BB79_55 Depth=1
	movb	$1, %al
	xorl	%edi, %edi
.LBB79_94:                              #   in Loop: Header=BB79_55 Depth=1
	movq	server+2944(%rip), %rcx
	cmpq	$0, 524376(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB79_99
# %bb.95:                               #   in Loop: Header=BB79_55 Depth=1
	movq	myself(%rip), %rdx
	testb	$1, 48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB79_99
# %bb.96:                               #   in Loop: Header=BB79_55 Depth=1
	cmpq	%r14, 524384(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_99
# %bb.97:                               #   in Loop: Header=BB79_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB79_98
	.p2align	4, 0x90
.LBB79_99:                              #   in Loop: Header=BB79_55 Depth=1
	movq	2136(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB79_103
# %bb.100:                              #   in Loop: Header=BB79_55 Depth=1
	subq	%rax, %r12
	cmpq	server+2928(%rip), %r12
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB79_103
# %bb.101:                              #   in Loop: Header=BB79_55 Depth=1
	testb	$12, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_103
# %bb.102:                              #   in Loop: Header=BB79_55 Depth=1
	leaq	8(%r14), %rdx
	movl	$.L.str.98, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	orb	$4, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -64(%rbp)           # 4-byte Folded Spill
	jmp	.LBB79_103
.LBB79_78:                              #   in Loop: Header=BB79_55 Depth=1
	subq	%r8, %rdi
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.LBB79_79
	.p2align	4, 0x90
.LBB79_83:                              #   in Loop: Header=BB79_79 Depth=2
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB79_73
.LBB79_79:                              #   Parent Loop BB79_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rax,8), %rbx
	testb	$8, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_81
# %bb.80:                               #   in Loop: Header=BB79_79 Depth=2
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB79_81:                              #   in Loop: Header=BB79_79 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rsi,%rax,8), %rbx
	testb	$8, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_83
# %bb.82:                               #   in Loop: Header=BB79_79 Depth=2
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB79_83
.LBB79_53:
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
.LBB79_104:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	movq	server+2464(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB79_109
# %bb.105:
	testq	%rcx, %rcx
	jne	.LBB79_109
# %bb.106:
	movq	2128(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB79_109
# %bb.107:
	testb	$64, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_109
# %bb.108:
	movl	2240(%rdi), %esi
	addq	$2192, %rdi             # imm = 0x890
	callq	replicationSetMaster
	movl	$42, __A_VARIABLE(%rip)
.LBB79_109:
	callq	manualFailoverCheckTimeout
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB79_121
# %bb.110:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB79_115
# %bb.111:
	cmpl	$0, 524400(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB79_112
.LBB79_115:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, server+2984(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_117
# %bb.116:
	callq	clusterHandleSlaveFailover
	movl	$42, __A_VARIABLE(%rip)
.LBB79_117:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r13d
	jl	.LBB79_121
# %bb.118:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB79_121
# %bb.119:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, -56(%rbp)        # 4-byte Folded Reload
	jne	.LBB79_121
# %bb.120:
	movl	-56(%rbp), %edi         # 4-byte Reload
	callq	clusterHandleSlaveMigration
	movl	$42, __A_VARIABLE(%rip)
.LBB79_121:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jne	.LBB79_123
# %bb.122:
	movq	server+2944(%rip), %rax
	cmpl	$1, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB79_124
.LBB79_123:
	callq	clusterUpdateState
	movl	$42, __A_VARIABLE(%rip)
.LBB79_124:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB79_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB79_9
# %bb.7:
	testq	%rdi, %rdi
	je	.LBB79_9
# %bb.8:
	movq	%rbx, %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB79_9
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	clusterCron.prev_ip(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB79_11
	jmp	.LBB79_13
.LBB79_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rax
	jmp	.LBB79_17
.LBB79_112:
	movq	524392(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB79_115
# %bb.113:
	callq	replicationGetSlaveOffset
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jne	.LBB79_115
# %bb.114:
	movq	server+2944(%rip), %rax
	movl	$1, 524400(%rax)
	movl	$.L.str.94, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB79_115
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	je	.LBB80_2
# %bb.1:
	callq	clusterHandleSlaveFailover
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movl	524416(%rax), %edi
.LBB80_2:
	addq	$524416, %rax           # imm = 0x80080
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dil
	je	.LBB80_4
# %bb.3:
	callq	clusterUpdateState
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movl	524416(%rax), %edi
	addq	$524416, %rax           # imm = 0x80080
.LBB80_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dil
	je	.LBB80_7
# %bb.5:
	andl	$8, %edi
	callq	clusterSaveConfig
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB80_8
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB83_1
	.p2align	4, 0x90
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB83_5
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	movq	8(%rax), %rax
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB84_9
# %bb.1:
	movq	%rdi, %r14
	movl	2112(%rdi), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 2112(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB84_9
# %bb.2:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB84_3
	.p2align	4, 0x90
.LBB84_6:                               #   in Loop: Header=BB84_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB84_7
# %bb.4:                                #   in Loop: Header=BB84_3 Depth=1
	movq	8(%rax), %rax
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB84_6
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
	addl	2116(%rax), %ebx
	jmp	.LBB84_6
.LBB84_7:
	movq	%r12, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB84_9
# %bb.8:
	orb	$1, 49(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB84_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %esi
	setne	%al
	je	.LBB85_2
# %bb.1:
	addl	$-1, 2112(%rdi)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB86_21
# %bb.1:
	movq	myself(%rip), %rax
	xorl	%ebx, %ebx
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB86_22
# %bb.2:
	movslq	server+1792(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	jl	.LBB86_7
# %bb.3:
	movq	server+48(%rip), %rcx
	addq	$64, %rcx
	movl	$1, %edx
	.p2align	4, 0x90
.LBB86_4:                               # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rsi
	movq	40(%rsi), %rdi
	addq	72(%rsi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB86_5
# %bb.6:                                #   in Loop: Header=BB86_4 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rcx
	cmpq	%rax, %rdx
	jl	.LBB86_4
.LBB86_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-16384, %rbx           # imm = 0xC000
	xorl	%r12d, %r12d
	jmp	.LBB86_8
.LBB86_15:                              #   in Loop: Header=BB86_8 Depth=1
	movl	$.L.str.103, %esi
	movl	$3, %edi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movq	393256(%rax,%rbx,8), %rcx
	movq	%rcx, 262184(%rax,%rbx,8)
.LBB86_16:                              #   in Loop: Header=BB86_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB86_17:                              #   in Loop: Header=BB86_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%rbx
	je	.LBB86_18
.LBB86_8:                               # =>This Inner Loop Header: Depth=1
	leaq	16384(%rbx), %r15
	movl	%r15d, %edi
	callq	countKeysInSlot
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB86_17
# %bb.9:                                #   in Loop: Header=BB86_8 Depth=1
	movq	server+2944(%rip), %rcx
	movq	393256(%rcx,%rbx,8), %rax
	cmpq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB86_17
# %bb.10:                               #   in Loop: Header=BB86_8 Depth=1
	cmpq	$0, 262184(%rcx,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB86_17
# %bb.11:                               #   in Loop: Header=BB86_8 Depth=1
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB86_15
# %bb.12:                               #   in Loop: Header=BB86_8 Depth=1
	movl	$.L.str.102, %esi
	movl	$3, %edi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %r14
	movq	server+2944(%rip), %rax
	cmpq	$0, 393256(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB86_14
# %bb.13:                               #   in Loop: Header=BB86_8 Depth=1
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r14, 393256(%rax,%rbx,8)
.LBB86_14:                              #   in Loop: Header=BB86_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB86_16
.LBB86_18:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB86_21
# %bb.19:
	movl	$1, %edi
	callq	clusterSaveConfig
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB86_23
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB86_21
.LBB86_5:
	movl	$-1, %ebx
.LBB86_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB86_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB86_23:
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	2136(%r14), %rdx
	movq	2144(%r14), %rcx
	movq	56(%r14), %r8
	cmpq	$0, 2248(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.111, %r9d
	jne	.LBB87_5
# %bb.4:
	testb	$16, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.112, %esi
	movl	$.L.str.111, %r9d
	cmoveq	%rsi, %r9
.LBB87_5:
	movl	$.L.str.110, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edx
	xorl	%ebx, %ebx
	jmp	.LBB87_6
.LBB87_18:                              #   in Loop: Header=BB87_6 Depth=1
	movl	$.L.str.114, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB87_19:                              #   in Loop: Header=BB87_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB87_20:                              #   in Loop: Header=BB87_6 Depth=1
	leal	1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %edx
	cmpl	$16383, %ebx            # imm = 0x3FFF
	movl	%ecx, %ebx
	jge	.LBB87_21
.LBB87_6:                               # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edx
	jne	.LBB87_9
# %bb.7:                                #   in Loop: Header=BB87_6 Depth=1
	testl	%esi, %esi
	je	.LBB87_9
# %bb.8:                                #   in Loop: Header=BB87_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %edx
.LBB87_9:                               #   in Loop: Header=BB87_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	cmpl	$-1, %edx
	je	.LBB87_20
# %bb.10:                               #   in Loop: Header=BB87_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16383, %ebx            # imm = 0x3FFF
	je	.LBB87_13
# %bb.11:                               #   in Loop: Header=BB87_6 Depth=1
	testl	%esi, %esi
	je	.LBB87_13
# %bb.12:                               #   in Loop: Header=BB87_6 Depth=1
	movl	%edx, %r15d
	jmp	.LBB87_20
	.p2align	4, 0x90
.LBB87_13:                              #   in Loop: Header=BB87_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16383, %ebx            # imm = 0x3FFF
	jne	.LBB87_16
# %bb.14:                               #   in Loop: Header=BB87_6 Depth=1
	testl	%esi, %esi
	je	.LBB87_16
# %bb.15:                               #   in Loop: Header=BB87_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$16384, %ebx            # imm = 0x4000
.LBB87_16:                              #   in Loop: Header=BB87_6 Depth=1
	leal	-1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edx
	jne	.LBB87_18
# %bb.17:                               #   in Loop: Header=BB87_6 Depth=1
	movl	$.L.str.113, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB87_19
.LBB87_21:
	testb	$16, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB87_22
.LBB87_27:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB87_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB87_23
	.p2align	4, 0x90
.LBB87_25:                              #   in Loop: Header=BB87_23 Depth=1
	addq	$8, %rcx
	movq	%rax, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
.LBB87_26:                              #   in Loop: Header=BB87_23 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rbx            # imm = 0x4000
	je	.LBB87_27
.LBB87_23:                              # =>This Inner Loop Header: Depth=1
	movq	server+2944(%rip), %rdx
	movq	40(%rdx,%rbx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.115, %esi
	testq	%rcx, %rcx
	jne	.LBB87_25
# %bb.24:                               #   in Loop: Header=BB87_23 Depth=1
	movq	131112(%rdx,%rbx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.116, %esi
	testq	%rcx, %rcx
	jne	.LBB87_25
	jmp	.LBB87_26
.Lfunc_end87:
	.size	clusterGenNodeDescription, .Lfunc_end87-clusterGenNodeDescription
                                        # -- End function
	.globl	clusterGetMessageTypeString # -- Begin function clusterGetMessageTypeString
	.p2align	4, 0x90
	.type	clusterGetMessageTypeString,@function
clusterGetMessageTypeString:            # @clusterGetMessageTypeString
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.125, %eax
	cmpl	$9, %edi
	ja	.LBB88_2
# %bb.1:
	movslq	%edi, %rax
	movq	.Lswitch.table.clusterCommand.284(,%rax,8), %rax
.LBB88_2:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB89_2
# %bb.1:
	cmpq	$16384, %rax            # imm = 0x4000
	jb	.LBB89_3
.LBB89_2:
	movl	$.L.str.126, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	movl	$-1, %eax
.LBB89_3:
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$56, %rsp
	movq	%rdi, %r15
	callq	addDeferredMultiBulkLength
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetSafeIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB90_1
# %bb.2:                                # %.preheader2
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB90_3
	.p2align	4, 0x90
.LBB90_26:                              #   in Loop: Header=BB90_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB90_27
.LBB90_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_6 Depth 2
                                        #       Child Loop BB90_21 Depth 3
	movq	8(%rax), %r12
	testb	$1, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB90_26
# %bb.4:                                #   in Loop: Header=BB90_3 Depth=1
	cmpl	$0, 2112(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB90_26
# %bb.5:                                #   in Loop: Header=BB90_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	2192(%r12), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	8(%r12), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$-1, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB90_6
	.p2align	4, 0x90
.LBB90_24:                              #   in Loop: Header=BB90_6 Depth=2
	movslq	%r13d, %rdx
	movq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	setDeferredMultiBulkLength
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
.LBB90_25:                              #   in Loop: Header=BB90_6 Depth=2
	leal	1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r13d
	cmpl	$16383, %r14d           # imm = 0x3FFF
	movl	%eax, %r14d
	jge	.LBB90_26
.LBB90_6:                               #   Parent Loop BB90_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB90_21 Depth 3
	leal	7(%r14), %eax
	testl	%r14d, %r14d
	cmovnsl	%r14d, %eax
	sarl	$3, %eax
	cltq
	movzbl	64(%r12,%rax), %eax
	movl	%r14d, %ecx
	andb	$7, %cl
	movl	$1, %ebx
	shll	%cl, %ebx
	andl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	jne	.LBB90_9
# %bb.7:                                #   in Loop: Header=BB90_6 Depth=2
	testl	%ebx, %ebx
	je	.LBB90_9
# %bb.8:                                #   in Loop: Header=BB90_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r13d
.LBB90_9:                               #   in Loop: Header=BB90_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
	cmpl	$-1, %r13d
	je	.LBB90_25
# %bb.10:                               #   in Loop: Header=BB90_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16383, %r14d           # imm = 0x3FFF
	je	.LBB90_13
# %bb.11:                               #   in Loop: Header=BB90_6 Depth=2
	testl	%ebx, %ebx
	je	.LBB90_13
# %bb.12:                               #   in Loop: Header=BB90_6 Depth=2
	movl	%r13d, %ecx
	jmp	.LBB90_25
	.p2align	4, 0x90
.LBB90_13:                              #   in Loop: Header=BB90_6 Depth=2
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16383, %r14d           # imm = 0x3FFF
	jne	.LBB90_16
# %bb.14:                               #   in Loop: Header=BB90_6 Depth=2
	testl	%ebx, %ebx
	je	.LBB90_16
# %bb.15:                               #   in Loop: Header=BB90_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$16384, %r14d           # imm = 0x4000
.LBB90_16:                              #   in Loop: Header=BB90_6 Depth=2
	leal	-1(%r14), %ebx
	movslq	%r13d, %rsi
	movq	%r15, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r13d
	jne	.LBB90_18
# %bb.17:                               #   in Loop: Header=BB90_6 Depth=2
	movq	%r15, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB90_19
.LBB90_18:                              #   in Loop: Header=BB90_6 Depth=2
	movslq	%ebx, %rsi
	movq	%r15, %rdi
.LBB90_19:                              #   in Loop: Header=BB90_6 Depth=2
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %r13d
	testl	%eax, %eax
	jle	.LBB90_24
# %bb.20:                               # %.preheader
                                        #   in Loop: Header=BB90_6 Depth=2
	xorl	%ebx, %ebx
	jmp	.LBB90_21
	.p2align	4, 0x90
.LBB90_23:                              #   in Loop: Header=BB90_21 Depth=3
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jge	.LBB90_24
.LBB90_21:                              #   Parent Loop BB90_3 Depth=1
                                        #     Parent Loop BB90_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	2120(%r12), %rcx
	movq	(%rcx,%rbx,8), %rcx
	testb	$8, 48(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB90_23
# %bb.22:                               #   in Loop: Header=BB90_21 Depth=3
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
	movl	$42, __A_VARIABLE(%rip)
	movl	2116(%r12), %eax
	jmp	.LBB90_23
.LBB90_1:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB90_27:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictReleaseIterator
	movslq	-48(%rbp), %rdx         # 4-byte Folded Reload
	movq	%r15, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	setDeferredMultiBulkLength
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_7
# %bb.1:
	movl	64(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r14), %r15
	movq	8(%r15), %rax
	movq	8(%rax), %rbx
	cmpl	$2, %r12d
	jne	.LBB91_3
# %bb.2:
	movl	$.L.str.128, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_50
.LBB91_3:
	movl	$.L.str.118, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_19
.LBB91_4:
	movl	$.L.str.154, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_9
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_9
# %bb.6:
	xorl	%edi, %edi
	callq	clusterGenNodesDescription
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	callq	decrRefCount
	jmp	.LBB91_303
.LBB91_7:
	movl	$.L.str.127, %esi
.LBB91_8:
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB91_303
.LBB91_9:
	movl	$.L.str.155, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_12
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_12
# %bb.11:
	movq	myself(%rip), %rsi
	addq	$8, %rsi
	movl	$40, %edx
	movq	%r14, %rdi
	callq	addReplyBulkCBuffer
	jmp	.LBB91_303
.LBB91_12:
	movl	$.L.str.156, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_15
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_15
# %bb.14:
	movq	%r14, %rdi
	callq	clusterReplyMultiBulkSlots
	jmp	.LBB91_303
.LBB91_15:
	movl	$.L.str.157, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_24
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_24
# %bb.17:
	movq	server+48(%rip), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_126
# %bb.18:
	movq	myself(%rip), %rdi
	callq	clusterDelNodeSlots
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+8(%rip), %rsi
	jmp	.LBB91_206
.LBB91_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r12d
	je	.LBB91_21
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %r12d
	jne	.LBB91_4
.LBB91_21:
	movq	24(%r15), %rdi
	leaq	-4416(%rbp), %rsi
	callq	getLongLongFromObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_82
# %bb.22:
	movq	72(%r14), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.151, %esi
.LBB91_23:
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB91_303
.LBB91_24:
	movl	$.L.str.159, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_26
# %bb.25:
	movl	$.L.str.160, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_51
.LBB91_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jl	.LBB91_51
# %bb.27:
	movl	$16384, %edi            # imm = 0x4000
	callq	zmalloc
	movq	%rax, %r12
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.160, %esi
	callq	strcasecmp
	movl	%eax, %r15d
	movl	$16384, %edx            # imm = 0x4000
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB91_38
# %bb.28:
	movl	$2, %ebx
	leaq	-4416(%rbp), %r13
.LBB91_29:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	getLongLongFromObject
	movq	-4416(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_179
# %bb.30:                               #   in Loop: Header=BB91_29 Depth=1
	cmpq	$16384, %rdx            # imm = 0x4000
	jae	.LBB91_179
# %bb.31:                               #   in Loop: Header=BB91_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edx
	je	.LBB91_216
# %bb.32:                               #   in Loop: Header=BB91_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB91_34
# %bb.33:                               #   in Loop: Header=BB91_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rcx
	movslq	%edx, %rax
	cmpq	$0, 262184(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_36
	jmp	.LBB91_194
.LBB91_34:                              #   in Loop: Header=BB91_29 Depth=1
	movq	server+2944(%rip), %rcx
	movslq	%edx, %rax
	cmpq	$0, 262184(%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_214
# %bb.35:                               #   in Loop: Header=BB91_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB91_36:                              #   in Loop: Header=BB91_29 Depth=1
	movzbl	(%r12,%rax), %ecx
	leal	1(%rcx), %esi
	movb	%sil, (%r12,%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	je	.LBB91_180
# %bb.37:                               #   in Loop: Header=BB91_29 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB91_29
.LBB91_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB91_41
	.p2align	4, 0x90
.LBB91_39:                              #   in Loop: Header=BB91_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_40:                              #   in Loop: Header=BB91_41 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rbx            # imm = 0x4000
	jae	.LBB91_107
.LBB91_41:                              # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r12,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_40
# %bb.42:                               #   in Loop: Header=BB91_41 Depth=1
	movq	server+2944(%rip), %rax
	cmpq	$0, 131112(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_44
# %bb.43:                               #   in Loop: Header=BB91_41 Depth=1
	movq	$0, 131112(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_44:                              #   in Loop: Header=BB91_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB91_47
# %bb.45:                               #   in Loop: Header=BB91_41 Depth=1
	movq	myself(%rip), %r13
	movq	server+2944(%rip), %rax
	cmpq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_304
# %bb.46:                               #   in Loop: Header=BB91_41 Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r13, 262184(%rax,%rbx,8)
	jmp	.LBB91_39
	.p2align	4, 0x90
.LBB91_47:                              #   in Loop: Header=BB91_41 Depth=1
	movq	server+2944(%rip), %rax
	movq	262184(%rax,%rbx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_304
# %bb.48:                               #   in Loop: Header=BB91_41 Depth=1
	movl	%ebx, %edx
	shrl	$3, %edx
	andl	$8191, %edx             # imm = 0x1FFF
	movzbl	64(%rax,%rdx), %esi
	movl	%ebx, %ecx
	andb	$7, %cl
	movl	$1, %edi
	shll	%cl, %edi
	movzbl	%cl, %ecx
	notb	%dil
	andb	%sil, %dil
	btl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movb	%dil, 64(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB91_305
# %bb.49:                               #   in Loop: Header=BB91_41 Depth=1
	addl	$-1, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%rbx,8)
	jmp	.LBB91_39
.LBB91_50:
	leaq	-4416(%rbp), %rbx
	movl	$.LclusterCommand.help, %esi
	movl	$184, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyHelp
	jmp	.LBB91_303
.LBB91_51:
	movl	$.L.str.165, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_61
# %bb.52:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r12d
	jl	.LBB91_61
# %bb.53:
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_159
# %bb.54:
	movq	16(%r15), %rdi
	leaq	-4416(%rbp), %rsi
	callq	getLongLongFromObject
	movq	-4416(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_178
# %bb.55:
	cmpq	$16384, %r12            # imm = 0x4000
	jae	.LBB91_178
# %bb.56:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB91_302
# %bb.57:
	movq	72(%r14), %r15
	movq	24(%r15), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.167, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_195
# %bb.58:
	cmpl	$5, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_195
# %bb.59:
	movq	server+2944(%rip), %rax
	movslq	%r12d, %r13
	movq	262184(%rax,%r13,8), %rax
	cmpq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_262
# %bb.60:
	movl	$.L.str.168, %esi
	jmp	.LBB91_272
.LBB91_61:
	movl	$.L.str.178, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_67
# %bb.62:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_67
# %bb.63:
	callq	clusterGetMaxEpoch
	movq	myself(%rip), %rcx
	movq	56(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB91_65
# %bb.64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.181, %ebx
	cmpq	%rax, %rdx
	je	.LBB91_66
.LBB91_65:
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	movq	%rdx, 56(%rcx)
	orb	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.36, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.180, %ebx
.LBB91_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsempty
	movq	myself(%rip), %rcx
	movq	56(%rcx), %rcx
	movl	$.L.str.179, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB91_303
.LBB91_67:
	movl	$.L.str.182, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_78
# %bb.68:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_78
# %bb.69:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	server+2944(%rip), %rcx
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.LBB91_73
.LBB91_70:                              #   in Loop: Header=BB91_73 Depth=1
	addl	$1, %r13d
.LBB91_71:                              #   in Loop: Header=BB91_73 Depth=1
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB91_72:                              #   in Loop: Header=BB91_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rax            # imm = 0x4000
	je	.LBB91_136
.LBB91_73:                              # =>This Inner Loop Header: Depth=1
	movq	262184(%rcx,%rax,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB91_72
# %bb.74:                               #   in Loop: Header=BB91_73 Depth=1
	movl	48(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dl
	jne	.LBB91_70
# %bb.75:                               #   in Loop: Header=BB91_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	jne	.LBB91_77
# %bb.76:                               #   in Loop: Header=BB91_73 Depth=1
	addl	$1, %r12d
	jmp	.LBB91_71
.LBB91_77:                              #   in Loop: Header=BB91_73 Depth=1
	addl	$1, %r15d
	jmp	.LBB91_71
.LBB91_78:
	movl	$.L.str.190, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_85
# %bb.79:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_85
# %bb.80:
	movl	$1, %edi
	callq	clusterSaveConfig
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_300
# %bb.81:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.191, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	jmp	.LBB91_175
.LBB91_82:
	cmpl	$5, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_109
# %bb.83:
	movq	72(%r14), %rax
	movq	32(%rax), %rdi
	leaq	-48(%rbp), %rsi
	callq	getLongLongFromObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_161
# %bb.84:
	movq	72(%r14), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.152, %esi
	jmp	.LBB91_23
.LBB91_85:
	movl	$.L.str.192, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_90
# %bb.86:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_90
# %bb.87:
	movq	16(%r15), %rax
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB91_234
# %bb.88:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI91_0(,%rax,8)
.LBB91_89:
	shrq	$3, %rsi
	jmp	.LBB91_239
.LBB91_90:
	movl	$.L.str.193, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_95
# %bb.91:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_95
# %bb.92:
	movq	16(%r15), %rsi
	leaq	-4416(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_302
# %bb.93:
	movq	-4416(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16384, %rdi            # imm = 0x4000
	jb	.LBB91_241
# %bb.94:
	movl	$.L.str.194, %esi
	jmp	.LBB91_160
.LBB91_95:
	movl	$.L.str.195, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_110
# %bb.96:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r12d
	jne	.LBB91_110
# %bb.97:
	movq	16(%r15), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_302
# %bb.98:
	movq	72(%r14), %rax
	movq	24(%rax), %rsi
	leaq	-4416(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_302
# %bb.99:
	movq	-48(%rbp), %rdi
	movq	-4416(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16383, %rdi            # imm = 0x3FFF
	ja	.LBB91_253
# %bb.100:
	testq	%rax, %rax
	js	.LBB91_253
# %bb.101:
                                        # kill: def $edi killed $edi killed $rdi
	callq	countKeysInSlot
	movq	-4416(%rbp), %rdi
	movl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	jle	.LBB91_103
# %bb.102:
	movq	%rax, -4416(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
.LBB91_103:
	shlq	$3, %rdi
	callq	zmalloc
	movq	%rax, %r13
	movl	-48(%rbp), %edi
	movl	-4416(%rbp), %edx
	movq	%rax, %rsi
	callq	getKeysInSlot
	movl	%eax, %r12d
	movl	%eax, %r15d
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB91_106
# %bb.104:                              # %.preheader
	xorl	%ebx, %ebx
.LBB91_105:                             # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	addReplyBulk
	movq	(%r13,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jne	.LBB91_105
.LBB91_106:
	movq	%r13, %rdi
	callq	zfree
	jmp	.LBB91_302
.LBB91_107:
	movq	%r12, %rdi
	callq	zfree
.LBB91_298:
	movq	server+2944(%rip), %rax
	orl	$6, 524416(%rax)
.LBB91_299:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_300
.LBB91_109:
	movq	-4416(%rbp), %rsi
	leaq	10000(%rsi), %rdx
	movq	%rdx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_162
.LBB91_110:
	movl	$.L.str.197, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_118
# %bb.111:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_118
# %bb.112:
	movq	16(%r15), %rax
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_172
# %bb.113:
	movq	8(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB91_173
# %bb.114:
	movq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	je	.LBB91_249
# %bb.115:
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_117
# %bb.116:
	cmpq	%rbx, 2128(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_265
.LBB91_117:
	movq	%rbx, %rdi
	callq	clusterBlacklistAddNode
	movq	%rbx, %rdi
	callq	clusterDelNode
	jmp	.LBB91_298
.LBB91_118:
	movl	$.L.str.200, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_127
# %bb.119:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_127
# %bb.120:
	movq	16(%r15), %rax
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_172
# %bb.121:
	movq	8(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB91_173
# %bb.122:
	movq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB91_250
# %bb.123:
	testb	$2, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_251
# %bb.124:
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_259
.LBB91_125:
	callq	clusterSetMaster
	jmp	.LBB91_298
.LBB91_126:
	movl	$.L.str.158, %esi
	jmp	.LBB91_8
.LBB91_127:
	movl	$.L.str.204, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_129
# %bb.128:
	movl	$.L.str.205, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_154
.LBB91_129:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_154
# %bb.130:
	movq	16(%r15), %rax
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_172
# %bb.131:
	movq	8(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_173
# %bb.132:
	testb	$2, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_248
# %bb.133:
	movslq	2116(%r15), %rsi
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 2116(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB91_302
# %bb.134:
	xorl	%ebx, %ebx
.LBB91_135:                             # =>This Inner Loop Header: Depth=1
	movq	2120(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	clusterGenNodeDescription
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	callq	sdsfree
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	2116(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB91_135
	jmp	.LBB91_302
.LBB91_136:
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_138
# %bb.137:
	movq	2128(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB91_139
.LBB91_138:
	movq	%rax, %rcx
.LBB91_139:
	movq	56(%rcx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsempty
	movq	server+2944(%rip), %r10
	movslq	16(%r10), %rcx
	movq	.LclusterCommand.statestr(,%rcx,8), %rdx
	movq	24(%r10), %rcx
	movq	72(%rcx), %r11
	addq	40(%rcx), %r11
	movl	20(%r10), %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	subq	$8, %rsp
	movl	$.L.str.184, %esi
	movq	%rax, %rdi
	movl	%ebx, %ecx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	movl	$0, %eax
	pushq	-64(%rbp)               # 8-byte Folded Reload
	pushq	8(%r10)
	pushq	-56(%rbp)               # 8-byte Folded Reload
	pushq	%r11
	pushq	%r13
	callq	sdscatprintf
	addq	$48, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	jmp	.LBB91_142
	.p2align	4, 0x90
.LBB91_140:                             #   in Loop: Header=BB91_142 Depth=1
	addq	%rcx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.185, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
.LBB91_141:                             #   in Loop: Header=BB91_142 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %rbx
	je	.LBB91_145
.LBB91_142:                             # =>This Inner Loop Header: Depth=1
	movq	server+2944(%rip), %rcx
	movq	524424(%rcx,%rbx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB91_141
# %bb.143:                              #   in Loop: Header=BB91_142 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movl	$.L.str.125, %edx
	cmpl	$9, %esi
	ja	.LBB91_140
# %bb.144:                              #   in Loop: Header=BB91_142 Depth=1
	movq	%rbx, %rdx
	shlq	$33, %rdx
	sarq	$33, %rdx
	movq	.Lswitch.table.clusterCommand.284(,%rdx,8), %rdx
	jmp	.LBB91_140
.LBB91_145:
	movl	$.L.str.186, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB91_148
	.p2align	4, 0x90
.LBB91_146:                             #   in Loop: Header=BB91_148 Depth=1
	addq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.187, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$42, __A_VARIABLE(%rip)
.LBB91_147:                             #   in Loop: Header=BB91_148 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %rbx
	je	.LBB91_151
.LBB91_148:                             # =>This Inner Loop Header: Depth=1
	movq	server+2944(%rip), %rcx
	movq	524504(%rcx,%rbx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB91_147
# %bb.149:                              #   in Loop: Header=BB91_148 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movl	$.L.str.125, %edx
	cmpl	$9, %esi
	ja	.LBB91_146
# %bb.150:                              #   in Loop: Header=BB91_148 Depth=1
	movq	%rbx, %rdx
	shlq	$33, %rdx
	sarq	$33, %rdx
	movq	.Lswitch.table.clusterCommand.284(,%rdx,8), %rdx
	jmp	.LBB91_146
.LBB91_151:
	xorl	%r15d, %r15d
	movl	$.L.str.188, %esi
	movq	%rax, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rbx
	callq	sdsempty
	movzbl	-1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB91_205
# %bb.152:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI91_1(,%rdx,8)
.LBB91_153:
	shrq	$3, %rcx
	movq	%rcx, %r15
	jmp	.LBB91_205
.LBB91_154:
	movl	$.L.str.207, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_165
# %bb.155:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_165
# %bb.156:
	movq	16(%r15), %rax
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_172
# %bb.157:
	movq	8(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB91_173
# %bb.158:
	movq	%rbx, %rdi
	callq	clusterNodeCleanupFailureReports
	movq	2256(%rbx), %rax
	movslq	40(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_242
.LBB91_159:
	movl	$.L.str.166, %esi
.LBB91_160:
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB91_302
.LBB91_161:
	movq	-4416(%rbp), %rsi
	movq	-48(%rbp), %rdx
.LBB91_162:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	clusterStartHandshake
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_300
# %bb.163:
	callq	__errno
	cmpl	$22, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_300
# %bb.164:
	movq	72(%r14), %rax
	movq	16(%rax), %rcx
	movq	24(%rax), %rax
	movq	8(%rcx), %rdx
	movq	8(%rax), %rcx
	movl	$.L.str.153, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB91_302
.LBB91_165:
	movl	$.L.str.208, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_181
.LBB91_166:
	movl	$.L.str.217, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_176
# %bb.167:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_176
# %bb.168:
	movq	16(%r15), %rsi
	leaq	-4416(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_302
# %bb.169:
	movq	-4416(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	js	.LBB91_273
# %bb.170:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rax
	movq	72(%rax), %rcx
	addq	40(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rcx
	jb	.LBB91_275
# %bb.171:
	movl	$.L.str.219, %esi
	jmp	.LBB91_277
.LBB91_172:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_173:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.174, %esi
.LBB91_174:
	movq	%r14, %rdi
.LBB91_175:
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB91_302
.LBB91_176:
	movl	$.L.str.222, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_210
.LBB91_177:
	movq	%r14, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB91_303
.LBB91_178:
	movl	$.L.str.126, %esi
	movq	%r14, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_302
.LBB91_179:
	movl	$.L.str.126, %esi
	movq	%r14, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_216
.LBB91_180:
	movl	$.L.str.163, %esi
	jmp	.LBB91_215
.LBB91_181:
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_217
# %bb.182:
	xorl	%ebx, %ebx
.LBB91_183:
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_243
# %bb.184:
	movq	2128(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_252
# %bb.185:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB91_256
.LBB91_186:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_189
# %bb.187:
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_189
# %bb.188:
	movq	$0, server+576(%rip)
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
.LBB91_189:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB91_266
# %bb.190:
	movl	$.L.str.214, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	clusterGetMaxEpoch
	movq	myself(%rip), %rcx
	movq	56(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB91_192
# %bb.191:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	je	.LBB91_193
.LBB91_192:
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	movq	%rdx, 56(%rcx)
	orb	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.36, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB91_193:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	clusterFailoverReplaceYourMaster
	jmp	.LBB91_299
.LBB91_194:
	movl	$.L.str.162, %esi
	jmp	.LBB91_215
.LBB91_195:
	movl	$.L.str.170, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_207
# %bb.196:
	cmpl	$5, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_207
# %bb.197:
	movq	server+2944(%rip), %rax
	movslq	%r12d, %r13
	movq	262184(%rax,%r13,8), %rax
	cmpq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_271
# %bb.198:
	movq	32(%r15), %rax
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_268
# %bb.199:
	movq	8(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_269
# %bb.200:
	movq	server+2944(%rip), %rcx
	movq	%rax, 131112(%rcx,%r13,8)
	jmp	.LBB91_297
.LBB91_201:
	movzbl	-3(%rbx), %r15d
	jmp	.LBB91_205
.LBB91_202:
	movzwl	-5(%rbx), %r15d
	jmp	.LBB91_205
.LBB91_203:
	movl	-9(%rbx), %r15d
	jmp	.LBB91_205
.LBB91_204:
	movq	-17(%rbx), %r15
.LBB91_205:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.189, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplySds
	movq	shared(%rip), %rsi
.LBB91_206:
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB91_303
.LBB91_207:
	movl	$.L.str.172, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_221
# %bb.208:
	cmpl	$4, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_221
# %bb.209:
	movq	server+2944(%rip), %rax
	movslq	%r12d, %rcx
	movq	$0, 131112(%rax,%rcx,8)
	movq	server+2944(%rip), %rax
	movq	$0, 40(%rax,%rcx,8)
	jmp	.LBB91_297
.LBB91_210:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jne	.LBB91_244
.LBB91_211:
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rax
	testb	$1, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_213
# %bb.212:
	movq	16(%r14), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_254
.LBB91_213:
	movl	%ebx, %edi
	callq	clusterReset
.LBB91_300:
	movq	shared+8(%rip), %rsi
.LBB91_301:
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB91_302
.LBB91_214:
	movl	$.L.str.161, %esi
.LBB91_215:
	movq	%r14, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB91_216:
	movq	%r12, %rdi
	callq	zfree
.LBB91_302:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_303:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4376, %rsp             # imm = 0x1118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB91_217:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_166
# %bb.218:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.209, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_255
# %bb.219:
	movl	$.L.str.210, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_247
# %bb.220:
	movl	$1, %ebx
	movl	$1, %r13d
	jmp	.LBB91_183
.LBB91_221:
	movl	$.L.str.173, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_240
# %bb.222:
	cmpl	$5, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_240
# %bb.223:
	movq	32(%r15), %rax
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_278
# %bb.224:
	movq	8(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_279
# %bb.225:
	movq	server+2944(%rip), %rax
	movslq	%r12d, %rbx
	movq	262184(%rax,%rbx,8), %rax
	cmpq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_286
.LBB91_226:
	movl	%r12d, %edi
	callq	countKeysInSlot
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB91_229
# %bb.227:
	movq	server+2944(%rip), %rax
	cmpq	$0, 40(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_229
# %bb.228:
	movq	$0, 40(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_229:
	cmpq	myself(%rip), %r15
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_291
# %bb.230:
	movq	server+2944(%rip), %rax
	cmpq	$0, 131112(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_291
# %bb.231:
	callq	clusterGetMaxEpoch
	movq	myself(%rip), %rcx
	movq	56(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB91_289
# %bb.232:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jne	.LBB91_289
# %bb.233:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_290
.LBB91_234:
	xorl	%esi, %esi
	jmp	.LBB91_239
.LBB91_235:
	movzbl	-3(%rdi), %esi
	jmp	.LBB91_239
.LBB91_236:
	movzwl	-5(%rdi), %esi
	jmp	.LBB91_239
.LBB91_237:
	movl	-9(%rdi), %esi
	jmp	.LBB91_239
.LBB91_238:
	movq	-17(%rdi), %rsi
.LBB91_239:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	keyHashSlot
	movl	%eax, %esi
	movq	%r14, %rdi
	callq	addReplyLongLong
	jmp	.LBB91_303
.LBB91_240:
	movl	$.L.str.177, %esi
	jmp	.LBB91_160
.LBB91_241:
                                        # kill: def $edi killed $edi killed $rdi
	callq	countKeysInSlot
	movl	%eax, %esi
.LBB91_242:
	movq	%r14, %rdi
	callq	addReplyLongLong
	jmp	.LBB91_302
.LBB91_243:
	movl	$.L.str.211, %esi
	jmp	.LBB91_160
.LBB91_244:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r12d
	jne	.LBB91_177
# %bb.245:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rax
	movq	8(%rax), %r15
	movl	$.L.str.223, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_270
# %bb.246:
	movl	$.L.str.224, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_211
.LBB91_247:
	movq	shared+128(%rip), %rsi
	jmp	.LBB91_301
.LBB91_248:
	movl	$.L.str.206, %esi
	jmp	.LBB91_160
.LBB91_249:
	movl	$.L.str.198, %esi
	jmp	.LBB91_160
.LBB91_250:
	movl	$.L.str.201, %esi
	jmp	.LBB91_160
.LBB91_251:
	movl	$.L.str.202, %esi
	jmp	.LBB91_160
.LBB91_252:
	movl	$.L.str.212, %esi
	jmp	.LBB91_160
.LBB91_253:
	movl	$.L.str.196, %esi
	jmp	.LBB91_160
.LBB91_254:
	movl	$.L.str.225, %esi
	jmp	.LBB91_160
.LBB91_255:
	movl	$1, %ebx
	jmp	.LBB91_183
.LBB91_256:
	testb	$8, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_258
# %bb.257:
	cmpq	$0, 2248(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_186
.LBB91_258:
	movl	$.L.str.213, %esi
	jmp	.LBB91_160
.LBB91_259:
	cmpl	$0, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_261
# %bb.260:
	movq	server+48(%rip), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_125
.LBB91_261:
	movl	$.L.str.203, %esi
	jmp	.LBB91_160
.LBB91_262:
	movq	32(%r15), %rax
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB91_268
# %bb.263:
	movq	8(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_269
# %bb.264:
	movq	server+2944(%rip), %rcx
	movq	%rax, 40(%rcx,%r13,8)
	jmp	.LBB91_297
.LBB91_265:
	movl	$.L.str.199, %esi
	jmp	.LBB91_160
.LBB91_266:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB91_280
# %bb.267:
	movl	$.L.str.215, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movl	$1, 524400(%rax)
	jmp	.LBB91_299
.LBB91_268:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_269:
	movq	72(%r14), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.169, %esi
	jmp	.LBB91_174
.LBB91_270:
	movl	$1, %ebx
	jmp	.LBB91_211
.LBB91_271:
	movl	$.L.str.171, %esi
.LBB91_272:
	movq	%r14, %rdi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB91_302
.LBB91_273:
	movl	$.L.str.218, %esi
	jmp	.LBB91_274
.LBB91_275:
	movq	myself(%rip), %rax
	cmpq	$0, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_283
# %bb.276:
	movl	$.L.str.220, %esi
.LBB91_277:
	movq	%r14, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_302
.LBB91_278:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_279:
	movq	72(%r14), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.174, %esi
.LBB91_274:
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_302
.LBB91_280:
	movl	$.L.str.216, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	myself(%rip), %rax
	movq	2128(%rax), %rbx
	cmpq	$0, 2248(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_282
# %bb.281:
	leaq	-4416(%rbp), %r15
	movq	%r15, %rdi
	movl	$8, %esi
	callq	clusterBuildMessageHdr
	movl	$2256, %edi             # imm = 0x8D0
	callq	lwip_htonl
	movl	%eax, -4412(%rbp)
	movq	2248(%rbx), %rdi
	movl	$2256, %edx             # imm = 0x8D0
	movq	%r15, %rsi
	callq	clusterSendMessage
.LBB91_282:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_299
.LBB91_283:
	movq	%rdx, 56(%rax)
	movl	$.L.str.221, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2944(%rip), %rax
	movq	-4416(%rbp), %rcx
	cmpq	%rcx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB91_285
# %bb.284:
	movq	%rcx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_285:
	orb	$6, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_302
.LBB91_286:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	je	.LBB91_226
# %bb.287:
	movl	%r12d, %edi
	callq	countKeysInSlot
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB91_226
# %bb.288:
	movl	$.L.str.175, %esi
	movq	%r14, %rdi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_302
.LBB91_289:
	movq	server+2944(%rip), %rax
	movq	8(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 8(%rax)
	movq	%rdx, 56(%rcx)
	orb	$12, 524416(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.36, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.176, %esi
	movl	$3, %edi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	serverLog
.LBB91_290:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 131112(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_291:
	movq	server+2944(%rip), %rax
	movq	262184(%rax,%rbx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_294
# %bb.292:
	movl	%r12d, %edx
	shrl	$3, %edx
	andl	$8191, %edx             # imm = 0x1FFF
	movzbl	64(%rax,%rdx), %esi
	movl	%r12d, %ecx
	andb	$7, %cl
	movl	$1, %edi
	shll	%cl, %edi
	movzbl	%cl, %ecx
	notb	%dil
	andb	%sil, %dil
	btl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movb	%dil, 64(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB91_305
# %bb.293:
	addl	$-1, 2112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	cmpq	$0, 262184(%rax,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB91_296
	jmp	.LBB91_295
.LBB91_294:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_295:
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	clusterNodeSetSlotBit
	movq	server+2944(%rip), %rax
	movq	%r15, 262184(%rax,%rbx,8)
.LBB91_296:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_297:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_298
.LBB91_304:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.164, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$4320, %r8d             # imm = 0x10E0
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB91_305:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.99, %edi
	movl	$.L.str.8, %esi
	movl	$3720, %edx             # imm = 0xE88
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end91:
	.size	clusterCommand, .Lfunc_end91-clusterCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI91_0:
	.quad	.LBB91_89
	.quad	.LBB91_235
	.quad	.LBB91_236
	.quad	.LBB91_237
	.quad	.LBB91_238
.LJTI91_1:
	.quad	.LBB91_153
	.quad	.LBB91_201
	.quad	.LBB91_202
	.quad	.LBB91_203
	.quad	.LBB91_204
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB92_1
# %bb.3:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	rdbSaveObject
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	$10, %rsi
	jb	.LBB93_3
# %bb.1:
	movq	%rdi, %rsi
	movzwl	-10(%rdx,%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rdi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r12d
	jle	.LBB95_20
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rbx), %r12d
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB95_2
# %bb.6:                                #   in Loop: Header=BB95_5 Depth=1
	movl	$.L.str.229, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB95_13
# %bb.7:                                #   in Loop: Header=BB95_5 Depth=1
	movl	%r15d, %eax
	notl	%eax
	addl	%eax, %r12d
	movl	$.L.str.230, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movq	-88(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB95_14
# %bb.8:                                #   in Loop: Header=BB95_5 Depth=1
	testl	%eax, %eax
	jne	.LBB95_14
# %bb.9:                                #   in Loop: Header=BB95_5 Depth=1
	cmpq	$-1, %rcx
	jne	.LBB95_14
# %bb.10:                               #   in Loop: Header=BB95_5 Depth=1
	movq	8(%r14,%r13,8), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB95_34
# %bb.11:                               #   in Loop: Header=BB95_5 Depth=1
	cmpq	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB95_35
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
	movq	-80(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB95_33
# %bb.15:                               #   in Loop: Header=BB95_5 Depth=1
	testl	%eax, %eax
	jne	.LBB95_33
# %bb.16:                               #   in Loop: Header=BB95_5 Depth=1
	cmpq	$-1, %rcx
	jne	.LBB95_33
# %bb.17:                               #   in Loop: Header=BB95_5 Depth=1
	movq	8(%r14,%r13,8), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-88(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB95_34
# %bb.18:                               #   in Loop: Header=BB95_5 Depth=1
	cmpq	$256, -88(%rbp)         # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB95_36
# %bb.19:                               #   in Loop: Header=BB95_5 Depth=1
	addl	$1, %r15d
	jmp	.LBB95_4
.LBB95_20:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movq	$-1, %r14
.LBB95_21:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB95_25
# %bb.22:
	movq	shared+224(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB95_48
.LBB95_23:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB95_48
# %bb.27:
	cmpq	$0, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB95_32
# %bb.28:
	movq	(%r12), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB95_38
# %bb.29:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI95_0(,%rax,8)
.LBB95_30:
	shrq	$3, %rdx
	jmp	.LBB95_43
.LBB95_31:
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB95_21
.LBB95_32:
	movl	$.L.str.234, %esi
	jmp	.LBB95_47
.LBB95_33:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
.LBB95_34:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB95_48
.LBB95_35:
	movl	$.L.str.231, %esi
	jmp	.LBB95_37
.LBB95_36:
	movl	$.L.str.233, %esi
.LBB95_37:
	movq	%rbx, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB95_48
.LBB95_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB95_45
.LBB95_39:
	movzbl	-3(%rsi), %edx
	jmp	.LBB95_43
.LBB95_40:
	movzwl	-5(%rsi), %edx
	jmp	.LBB95_43
.LBB95_41:
	movl	-9(%rsi), %edx
	jmp	.LBB95_43
.LBB95_42:
	movq	-17(%rsi), %rdx
.LBB95_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %rdx
	jb	.LBB95_45
# %bb.44:
	movzwl	-10(%rdx,%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jb	.LBB95_49
.LBB95_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB95_46:
	movl	$.L.str.235, %esi
.LBB95_47:
	movq	%rbx, %rdi
	callq	addReplyError
.LBB95_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB95_49:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB95_46
# %bb.51:
	movq	(%r12), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-200(%rbp), %r14
	movq	%r14, %rdi
	callq	rioInitWithBuffer
	movq	%r14, %rdi
	callq	rdbLoadObjectType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB95_60
# %bb.52:
	movq	(%r12), %rcx
	movq	8(%rcx), %rdx
	leaq	-200(%rbp), %rsi
	movl	%eax, %edi
	callq	rdbLoadObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB95_60
# %bb.53:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB95_55
# %bb.54:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB95_55:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movq	-96(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB95_59
# %bb.56:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	jne	.LBB95_58
# %bb.57:
	callq	mstime
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB95_58:
	movq	16(%rbx), %rsi
	movq	72(%rbx), %rax
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	callq	setExpire
	movl	$42, __A_VARIABLE(%rip)
.LBB95_59:
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
	jmp	.LBB95_48
.LBB95_60:
	movl	$.L.str.236, %esi
	jmp	.LBB95_47
.Lfunc_end95:
	.size	restoreCommand, .Lfunc_end95-restoreCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI95_0:
	.quad	.LBB95_30
	.quad	.LBB95_39
	.quad	.LBB95_40
	.quad	.LBB95_41
	.quad	.LBB95_42
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$.L.str.237, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	8(%r12), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r13
	movq	server+840(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$.L.str.237, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	8(%r14), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r14
	movq	server+840(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB98_5
# %bb.1:                                # %.preheader
	movq	%rax, %rbx
	jmp	.LBB98_2
	.p2align	4, 0x90
.LBB98_4:                               #   in Loop: Header=BB98_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB98_5
.LBB98_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %r15
	movq	server+2872(%rip), %rax
	subq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rdi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	72(%rdi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$3, %r15d
	cmpl	$7, %r14d
	jl	.LBB99_10
# %bb.1:
	leal	-1(%r14), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	$6, %r13d
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB99_4
	.p2align	4, 0x90
.LBB99_2:                               #   in Loop: Header=BB99_4 Depth=1
	movl	$1, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB99_3:                               #   in Loop: Header=BB99_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %r13d
	jge	.LBB99_11
.LBB99_4:                               # =>This Inner Loop Header: Depth=1
	movslq	%r13d, %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r12,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.240, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB99_2
# %bb.5:                                #   in Loop: Header=BB99_4 Depth=1
	movl	$.L.str.228, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB99_9
# %bb.6:                                #   in Loop: Header=BB99_4 Depth=1
	movl	$.L.str.241, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB99_21
# %bb.7:                                #   in Loop: Header=BB99_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-52(%rbp), %r13d        # 4-byte Folded Reload
	jge	.LBB99_22
# %bb.8:                                #   in Loop: Header=BB99_4 Depth=1
	addl	$1, %r13d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax,%r12,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB99_3
	.p2align	4, 0x90
.LBB99_9:                               #   in Loop: Header=BB99_4 Depth=1
	movl	$1, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB99_3
.LBB99_10:
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$1, %r13d
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB99_12
.LBB99_11:
	movl	$1, %r13d
.LBB99_12:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	40(%rax), %rsi
	leaq	-88(%rbp), %rdx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB99_156
# %bb.13:
	movq	72(%rbx), %rax
	movq	32(%rax), %rsi
	leaq	-168(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB99_156
# %bb.14:
	cmpq	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB99_16
# %bb.15:
	movq	$1000, -88(%rbp)        # imm = 0x3E8
	movl	$42, __A_VARIABLE(%rip)
.LBB99_16:
	movslq	%r13d, %rbx
	leaq	(,%rbx,8), %r14
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	zrealloc
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	zrealloc
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB99_141
# %bb.17:
	movl	%r13d, %ebx
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB99_19
	.p2align	4, 0x90
.LBB99_18:                              #   in Loop: Header=BB99_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r15
	addq	$-1, %rbx
	je	.LBB99_23
.LBB99_19:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	(%rax,%r15,8), %rsi
	callq	lookupKeyRead
	movslq	%r12d, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_18
# %bb.20:                               #   in Loop: Header=BB99_19 Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%r15,8), %rax
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r12d
	jmp	.LBB99_18
.LBB99_21:
	movl	$.L.str.242, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB99_144
.LBB99_22:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB99_155
.LBB99_23:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB99_142
# %bb.24:
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rcx
	movq	%r14, %rdi
	callq	migrateGetSocket
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB99_140
# %bb.25:
	xorl	%eax, %eax
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	setne	%al
	orq	$4, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	$1, -72(%rbp)           # 4-byte Folded Spill
	leaq	-288(%rbp), %r13
	movl	$0, -132(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB99_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB99_83 Depth 2
                                        #     Child Loop BB99_44 Depth 2
                                        #     Child Loop BB99_65 Depth 2
	callq	sdsempty
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	rioInitWithBuffer
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB99_38
# %bb.27:                               #   in Loop: Header=BB99_26 Depth=1
	movl	$2, %edx
	movq	%r13, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_170
# %bb.28:                               #   in Loop: Header=BB99_26 Depth=1
	movl	$.L.str.246, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_171
# %bb.29:                               #   in Loop: Header=BB99_26 Depth=1
	movzbl	-1(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB99_36
# %bb.30:                               #   in Loop: Header=BB99_26 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI99_1(,%rax,8)
.LBB99_31:                              #   in Loop: Header=BB99_26 Depth=1
	shrq	$3, %rdx
	jmp	.LBB99_37
.LBB99_32:                              #   in Loop: Header=BB99_26 Depth=1
	movq	-17(%rbx), %rdx
	jmp	.LBB99_37
.LBB99_33:                              #   in Loop: Header=BB99_26 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB99_37
.LBB99_34:                              #   in Loop: Header=BB99_26 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB99_37
.LBB99_35:                              #   in Loop: Header=BB99_26 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB99_37
.LBB99_36:                              #   in Loop: Header=BB99_26 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB99_37:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_172
.LBB99_38:                              #   in Loop: Header=BB99_26 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	-168(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	cmpq	%rcx, %rax
	je	.LBB99_42
# %bb.39:                               #   in Loop: Header=BB99_26 Depth=1
	movl	$2, %edx
	movq	%r13, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_173
# %bb.40:                               #   in Loop: Header=BB99_26 Depth=1
	movl	$.L.str.249, %esi
	movl	$6, %edx
	movq	%r13, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_174
# %bb.41:                               #   in Loop: Header=BB99_26 Depth=1
	movq	-168(%rbp), %rsi
	movq	%r13, %rdi
	callq	rioWriteBulkLongLong
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_175
.LBB99_42:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	-128(%rbp), %r15        # 8-byte Reload
	jg	.LBB99_80
.LBB99_43:                              #   in Loop: Header=BB99_26 Depth=1
	callq	__errno
	movl	$0, (%rax)
	movq	-224(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB99_44:                              #   Parent Loop BB99_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r14), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB99_51
# %bb.45:                               #   in Loop: Header=BB99_44 Depth=2
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI99_4(,%rax,8)
.LBB99_46:                              #   in Loop: Header=BB99_44 Depth=2
	shrq	$3, %rbx
	jmp	.LBB99_52
.LBB99_47:                              #   in Loop: Header=BB99_44 Depth=2
	movq	-17(%r14), %rbx
	jmp	.LBB99_52
.LBB99_48:                              #   in Loop: Header=BB99_44 Depth=2
	movzwl	-5(%r14), %ebx
	jmp	.LBB99_52
.LBB99_49:                              #   in Loop: Header=BB99_44 Depth=2
	movl	-9(%r14), %ebx
	jmp	.LBB99_52
.LBB99_50:                              #   in Loop: Header=BB99_44 Depth=2
	movzbl	-3(%r14), %ebx
	jmp	.LBB99_52
.LBB99_51:                              #   in Loop: Header=BB99_44 Depth=2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB99_52:                              #   in Loop: Header=BB99_44 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r12, %rbx
	je	.LBB99_55
# %bb.53:                               #   in Loop: Header=BB99_44 Depth=2
	cmpq	$65536, %rbx            # imm = 0x10000
	movl	$65536, %eax            # imm = 0x10000
	cmovaeq	%rax, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	leaq	(%r14,%r12), %rsi
	movq	-88(%rbp), %rcx
	movq	%rbx, %rdx
	callq	syncWrite
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jne	.LBB99_79
# %bb.54:                               #   in Loop: Header=BB99_44 Depth=2
	cltq
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB99_44
	.p2align	4, 0x90
.LBB99_55:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	je	.LBB99_57
# %bb.56:                               #   in Loop: Header=BB99_26 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movq	-88(%rbp), %rcx
	movl	$1024, %edx             # imm = 0x400
	leaq	-2448(%rbp), %rsi
	callq	syncReadLine
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB99_115
.LBB99_57:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB99_59
# %bb.58:                               #   in Loop: Header=BB99_26 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movq	-88(%rbp), %rcx
	movl	$1024, %edx             # imm = 0x400
	leaq	-1424(%rbp), %rsi
	callq	syncReadLine
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB99_115
.LBB99_59:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movslq	%ebx, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	jne	.LBB99_61
# %bb.60:                               #   in Loop: Header=BB99_26 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	leaq	8(,%rax,8), %rdi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB99_61:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB99_116
# %bb.62:                               #   in Loop: Header=BB99_26 Depth=1
	xorl	%ebx, %ebx
	movl	$1, %r14d
	xorl	%r12d, %r12d
	jmp	.LBB99_65
	.p2align	4, 0x90
.LBB99_63:                              #   in Loop: Header=BB99_65 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB99_73
.LBB99_64:                              #   in Loop: Header=BB99_65 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-176(%rbp), %rbx        # 8-byte Folded Reload
	jge	.LBB99_118
.LBB99_65:                              #   Parent Loop BB99_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movq	-88(%rbp), %rcx
	movl	$1024, %edx             # imm = 0x400
	leaq	-3472(%rbp), %rsi
	callq	syncReadLine
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB99_117
# %bb.66:                               #   in Loop: Header=BB99_65 Depth=2
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB99_68
# %bb.67:                               #   in Loop: Header=BB99_65 Depth=2
	cmpb	$45, -2448(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB99_63
.LBB99_68:                              #   in Loop: Header=BB99_65 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB99_70
# %bb.69:                               #   in Loop: Header=BB99_65 Depth=2
	cmpb	$45, -1424(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB99_63
.LBB99_70:                              #   in Loop: Header=BB99_65 Depth=2
	cmpb	$45, -3472(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB99_63
# %bb.71:                               #   in Loop: Header=BB99_65 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	jne	.LBB99_64
# %bb.72:                               #   in Loop: Header=BB99_65 Depth=2
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	16(%r14), %rdi
	movq	(%r15,%rbx,8), %rsi
	callq	dbDelete
	movq	16(%r14), %rdi
	movl	-68(%rbp), %r14d        # 4-byte Reload
	movq	(%r15,%rbx,8), %rsi
	callq	signalModifiedKey
	addq	$1, server+2080(%rip)
	movq	(%r15,%rbx,8), %rax
	movslq	%r14d, %rcx
	addl	$1, %r14d
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	movq	(%r15,%rbx,8), %rdi
	callq	incrRefCount
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB99_64
	.p2align	4, 0x90
.LBB99_73:                              #   in Loop: Header=BB99_65 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	$-1, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB99_75
# %bb.74:                               #   in Loop: Header=BB99_65 Depth=2
	cmpb	$45, -2448(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2448(%rbp), %rdx
	je	.LBB99_78
.LBB99_75:                              #   in Loop: Header=BB99_65 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB99_77
# %bb.76:                               #   in Loop: Header=BB99_65 Depth=2
	cmpb	$45, -1424(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1424(%rbp), %rdx
	je	.LBB99_78
.LBB99_77:                              #   in Loop: Header=BB99_65 Depth=2
	leaq	-3472(%rbp), %rdx
.LBB99_78:                              #   in Loop: Header=BB99_65 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	movl	$.L.str.263, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jmp	.LBB99_64
.LBB99_79:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB99_134
.LBB99_80:                              #   in Loop: Header=BB99_26 Depth=1
	movslq	%r12d, %rbx
	xorl	%r12d, %r12d
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB99_83
	.p2align	4, 0x90
.LBB99_81:                              #   in Loop: Header=BB99_83 Depth=2
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB99_82:                              #   in Loop: Header=BB99_83 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	jge	.LBB99_43
.LBB99_83:                              #   Parent Loop BB99_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%r14), %rdi
	movq	(%r15,%r12,8), %rsi
	callq	getExpire
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB99_87
# %bb.84:                               #   in Loop: Header=BB99_83 Depth=2
	movq	%rax, %r14
	callq	mstime
	subq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB99_81
# %bb.85:                               #   in Loop: Header=BB99_83 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB99_88
# %bb.86:                               #   in Loop: Header=BB99_83 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB99_88
	.p2align	4, 0x90
.LBB99_87:                              #   in Loop: Header=BB99_83 Depth=2
	xorl	%r14d, %r14d
.LBB99_88:                              #   in Loop: Header=BB99_83 Depth=2
	movq	(%r15,%r12,8), %rax
	movslq	-52(%rbp), %rcx         # 4-byte Folded Reload
	movq	%rax, (%r15,%rcx,8)
	movq	%r13, %rdi
	movl	$42, %esi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_161
# %bb.89:                               #   in Loop: Header=BB99_83 Depth=2
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB99_91
# %bb.90:                               #   in Loop: Header=BB99_83 Depth=2
	movl	$.L.str.253, %esi
	movl	$14, %edx
	movq	%r13, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB99_92
	jmp	.LBB99_166
	.p2align	4, 0x90
.LBB99_91:                              #   in Loop: Header=BB99_83 Depth=2
	movl	$.L.str.255, %esi
	movl	$7, %edx
	movq	%r13, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_168
.LBB99_92:                              #   in Loop: Header=BB99_83 Depth=2
	movq	(%r15,%r12,8), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB99_94
# %bb.93:                               #   in Loop: Header=BB99_83 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB99_167
.LBB99_94:                              #   in Loop: Header=BB99_83 Depth=2
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB99_101
# %bb.95:                               #   in Loop: Header=BB99_83 Depth=2
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI99_2(,%rax,8)
.LBB99_96:                              #   in Loop: Header=BB99_83 Depth=2
	shrq	$3, %rdx
	jmp	.LBB99_102
.LBB99_97:                              #   in Loop: Header=BB99_83 Depth=2
	movq	-17(%rsi), %rdx
	jmp	.LBB99_102
.LBB99_98:                              #   in Loop: Header=BB99_83 Depth=2
	movzwl	-5(%rsi), %edx
	jmp	.LBB99_102
.LBB99_99:                              #   in Loop: Header=BB99_83 Depth=2
	movl	-9(%rsi), %edx
	jmp	.LBB99_102
.LBB99_100:                             #   in Loop: Header=BB99_83 Depth=2
	movzbl	-3(%rsi), %edx
	jmp	.LBB99_102
.LBB99_101:                             #   in Loop: Header=BB99_83 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB99_102:                             #   in Loop: Header=BB99_83 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
	movq	%r13, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_162
# %bb.103:                              #   in Loop: Header=BB99_83 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	rioWriteBulkLongLong
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_163
# %bb.104:                              #   in Loop: Header=BB99_83 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r12,8), %rsi
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	(%r15,%r12,8), %rdx
	leaq	-392(%rbp), %rdi
	callq	createDumpPayload
	movq	-328(%rbp), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	-48(%rbp), %r14         # 8-byte Reload
	ja	.LBB99_111
# %bb.105:                              #   in Loop: Header=BB99_83 Depth=2
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI99_3(,%rax,8)
.LBB99_106:                             #   in Loop: Header=BB99_83 Depth=2
	shrq	$3, %rdx
	jmp	.LBB99_112
.LBB99_107:                             #   in Loop: Header=BB99_83 Depth=2
	movq	-17(%rsi), %rdx
	jmp	.LBB99_112
.LBB99_108:                             #   in Loop: Header=BB99_83 Depth=2
	movzwl	-5(%rsi), %edx
	jmp	.LBB99_112
.LBB99_109:                             #   in Loop: Header=BB99_83 Depth=2
	movl	-9(%rsi), %edx
	jmp	.LBB99_112
.LBB99_110:                             #   in Loop: Header=BB99_83 Depth=2
	movzbl	-3(%rsi), %edx
	jmp	.LBB99_112
.LBB99_111:                             #   in Loop: Header=BB99_83 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB99_112:                             #   in Loop: Header=BB99_83 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_164
# %bb.113:                              #   in Loop: Header=BB99_83 Depth=2
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
	movq	-328(%rbp), %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	je	.LBB99_82
# %bb.114:                              #   in Loop: Header=BB99_83 Depth=2
	movl	$.L.str.261, %esi
	movl	$7, %edx
	movq	%r13, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB99_82
	jmp	.LBB99_165
.LBB99_115:                             #   in Loop: Header=BB99_26 Depth=1
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB99_135
.LBB99_116:                             #   in Loop: Header=BB99_26 Depth=1
	xorl	%ebx, %ebx
	movl	$1, -68(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	jmp	.LBB99_119
.LBB99_117:                             #   in Loop: Header=BB99_26 Depth=1
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	movb	$1, %r14b
	jmp	.LBB99_120
.LBB99_118:                             #   in Loop: Header=BB99_26 Depth=1
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	movl	$1, %ebx
.LBB99_119:                             #   in Loop: Header=BB99_26 Depth=1
	xorl	%r14d, %r14d
.LBB99_120:                             #   in Loop: Header=BB99_26 Depth=1
	movl	%r12d, -112(%rbp)       # 4-byte Spill
	testl	%r12d, %r12d
	sete	%al
	andb	%r14b, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB99_124
# %bb.121:                              #   in Loop: Header=BB99_26 Depth=1
	testl	%ebx, %ebx
	jne	.LBB99_124
# %bb.122:                              #   in Loop: Header=BB99_26 Depth=1
	testb	%al, %al
	je	.LBB99_124
# %bb.123:                              #   in Loop: Header=BB99_26 Depth=1
	movl	%eax, %ebx
	callq	__errno
	xorl	%r12d, %r12d
	cmpl	$116, (%rax)
	movl	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB99_129
.LBB99_124:                             #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB99_126
# %bb.125:                              #   in Loop: Header=BB99_26 Depth=1
	movl	%eax, %ebx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	callq	migrateCloseSocket
	movl	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB99_126:                             #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movl	-68(%rbp), %r14d        # 4-byte Reload
	jne	.LBB99_132
# %bb.127:                              #   in Loop: Header=BB99_26 Depth=1
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jl	.LBB99_130
# %bb.128:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$.L.str.264, %edi
	movl	$3, %esi
	callq	createStringObject
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	callq	replaceClientCommandVector
	movl	$1, -132(%rbp)          # 4-byte Folded Spill
	jmp	.LBB99_131
.LBB99_129:                             #   in Loop: Header=BB99_26 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-144(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB99_135
.LBB99_130:                             #   in Loop: Header=BB99_26 Depth=1
	movq	%rbx, %rdi
	callq	zfree
.LBB99_131:                             #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movl	%r12d, %eax
.LBB99_132:                             #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	testb	%al, %al
	je	.LBB99_158
# %bb.133:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
.LBB99_134:                             #   in Loop: Header=BB99_26 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB99_135:                             #   in Loop: Header=BB99_26 Depth=1
	movq	-224(%rbp), %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -132(%rbp)          # 4-byte Folded Reload
	jne	.LBB99_137
# %bb.136:                              #   in Loop: Header=BB99_26 Depth=1
	movq	72(%r14), %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	callq	migrateCloseSocket
	movl	$42, __A_VARIABLE(%rip)
.LBB99_137:                             #   in Loop: Header=BB99_26 Depth=1
	movq	%rbx, %rdi
	callq	zfree
	callq	__errno
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB99_147
# %bb.138:                              #   in Loop: Header=BB99_26 Depth=1
	cmpl	$116, %eax
	je	.LBB99_147
# %bb.139:                              #   in Loop: Header=BB99_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rcx
	movq	%r14, %rdi
	callq	migrateGetSocket
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %r12d
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB99_26
.LBB99_140:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	zfree
	jmp	.LBB99_155
.LBB99_141:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB99_142:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	zfree
	movl	$.L.str.244, %edi
	callq	sdsnew
.LBB99_143:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB99_155
.LBB99_144:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB99_149
# %bb.145:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI99_0(,%rdx,8)
.LBB99_146:
	shrq	$3, %rax
	jmp	.LBB99_153
.LBB99_147:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
	callq	sdsempty
	testl	%r12d, %r12d
	movl	$.L.str.267, %ecx
	movl	$.L.str.266, %edx
	cmoveq	%rcx, %rdx
	movl	$.L.str.265, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB99_143
.LBB99_148:
	movq	-17(%rcx), %rax
	jmp	.LBB99_153
.LBB99_149:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB99_157
.LBB99_150:
	movzbl	-3(%rcx), %eax
	jmp	.LBB99_153
.LBB99_151:
	movzwl	-5(%rcx), %eax
	jmp	.LBB99_153
.LBB99_152:
	movl	-9(%rcx), %eax
.LBB99_153:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB99_157
# %bb.154:
	movl	$.L.str.243, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
.LBB99_155:
	movl	$42, __A_VARIABLE(%rip)
.LBB99_156:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$3432, %rsp             # imm = 0xD68
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB99_157:
	leal	1(%r13), %eax
	notl	%r13d
	addl	%r13d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %r15
	movl	%r14d, %r13d
	jmp	.LBB99_12
.LBB99_158:
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	jne	.LBB99_160
# %bb.159:
	movq	-168(%rbp), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	shared+8(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
.LBB99_160:
	movq	-224(%rbp), %rdi
	callq	sdsfree
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	jmp	.LBB99_155
.LBB99_161:
	movl	$.L.str.252, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5193, %r8d             # imm = 0x1449
	jmp	.LBB99_169
.LBB99_162:
	movl	$.L.str.258, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5202, %r8d             # imm = 0x1452
	jmp	.LBB99_169
.LBB99_163:
	movl	$.L.str.259, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5203, %r8d             # imm = 0x1453
	jmp	.LBB99_169
.LBB99_164:
	movl	$.L.str.260, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$5210, %r8d             # imm = 0x145A
	jmp	.LBB99_169
.LBB99_165:
	movl	$.L.str.262, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$5216, %r8d             # imm = 0x1460
	jmp	.LBB99_169
.LBB99_166:
	movl	$.L.str.254, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5197, %r8d             # imm = 0x144D
	jmp	.LBB99_169
.LBB99_167:
	movl	$.L.str.257, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5200, %r8d             # imm = 0x1450
	jmp	.LBB99_169
.LBB99_168:
	movl	$.L.str.256, %edx
	movl	$.L.str.8, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movl	$5199, %r8d             # imm = 0x144F
.LBB99_169:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB99_170:
	movl	$.L.str.245, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$5155, %r8d             # imm = 0x1423
	jmp	.LBB99_169
.LBB99_171:
	movl	$.L.str.247, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$5156, %r8d             # imm = 0x1424
	jmp	.LBB99_169
.LBB99_172:
	movl	$.L.str.248, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$5158, %r8d             # imm = 0x1426
	jmp	.LBB99_169
.LBB99_173:
	movl	$.L.str.245, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$5164, %r8d             # imm = 0x142C
	jmp	.LBB99_169
.LBB99_174:
	movl	$.L.str.250, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$5165, %r8d             # imm = 0x142D
	jmp	.LBB99_169
.LBB99_175:
	movl	$.L.str.251, %edx
	movl	$.L.str.8, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$5166, %r8d             # imm = 0x142E
	jmp	.LBB99_169
.Lfunc_end99:
	.size	migrateCommand, .Lfunc_end99-migrateCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI99_0:
	.quad	.LBB99_146
	.quad	.LBB99_150
	.quad	.LBB99_151
	.quad	.LBB99_152
	.quad	.LBB99_148
.LJTI99_1:
	.quad	.LBB99_31
	.quad	.LBB99_35
	.quad	.LBB99_33
	.quad	.LBB99_34
	.quad	.LBB99_32
.LJTI99_2:
	.quad	.LBB99_96
	.quad	.LBB99_100
	.quad	.LBB99_98
	.quad	.LBB99_99
	.quad	.LBB99_97
.LJTI99_3:
	.quad	.LBB99_106
	.quad	.LBB99_110
	.quad	.LBB99_108
	.quad	.LBB99_109
	.quad	.LBB99_107
.LJTI99_4:
	.quad	.LBB99_46
	.quad	.LBB99_50
	.quad	.LBB99_48
	.quad	.LBB99_49
	.quad	.LBB99_47
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$168, %rsp
	testb	$4, server+2984(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB103_32
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB103_3
# %bb.2:
	movl	$0, (%r9)
	movl	$42, __A_VARIABLE(%rip)
.LBB103_3:
	movl	$execCommand, %eax
	cmpq	%rax, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_35
# %bb.4:
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	leaq	-168(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$1, -192(%rbp)
	movq	%rdx, -168(%rbp)
	movl	%ecx, -160(%rbp)
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB103_5:
	xorl	%ecx, %ecx
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB103_7
	.p2align	4, 0x90
.LBB103_6:                              #   in Loop: Header=BB103_7 Depth=1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	getKeysFreeResult
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jge	.LBB103_47
.LBB103_7:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB103_10 Depth 2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rcx
	movq	16(%rax,%rcx,8), %rdi
	movl	8(%rax,%rcx,8), %edx
	movq	(%rax,%rcx,8), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	leaq	-76(%rbp), %rcx
	callq	getKeysFromCommand
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB103_6
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB103_7 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB103_10
	.p2align	4, 0x90
.LBB103_9:                              #   in Loop: Header=BB103_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movslq	-76(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jge	.LBB103_6
.LBB103_10:                             #   Parent Loop BB103_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movslq	(%rax,%r15,4), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx,%rax,8), %r12
	movq	8(%r12), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	keyHashSlot
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB103_22
# %bb.19:                               #   in Loop: Header=BB103_10 Depth=2
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	equalStringObjects
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB103_29
# %bb.20:                               #   in Loop: Header=BB103_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, -44(%rbp)         # 4-byte Folded Reload
	jne	.LBB103_37
# %bb.21:                               #   in Loop: Header=BB103_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -72(%rbp)           # 4-byte Folded Spill
	jmp	.LBB103_29
	.p2align	4, 0x90
.LBB103_22:                             #   in Loop: Header=BB103_10 Depth=2
	movq	server+2944(%rip), %rax
	movslq	%ebx, %rcx
	movq	262184(%rax,%rcx,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB103_33
# %bb.23:                               #   in Loop: Header=BB103_10 Depth=2
	cmpq	myself(%rip), %r13
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_26
.LBB103_24:                             #   in Loop: Header=BB103_10 Depth=2
	cmpq	$0, 131112(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_28
# %bb.25:                               #   in Loop: Header=BB103_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB103_28
.LBB103_26:                             #   in Loop: Header=BB103_10 Depth=2
	cmpq	$0, 40(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_24
# %bb.27:                               #   in Loop: Header=BB103_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -48(%rbp)           # 4-byte Folded Spill
.LBB103_28:                             #   in Loop: Header=BB103_10 Depth=2
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movq	%r12, %r14
.LBB103_29:                             #   in Loop: Header=BB103_10 Depth=2
	movl	-52(%rbp), %eax         # 4-byte Reload
	orl	-48(%rbp), %eax         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_9
# %bb.30:                               #   in Loop: Header=BB103_10 Depth=2
	movq	server+48(%rip), %rdi
	movq	%r12, %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB103_9
# %bb.31:                               #   in Loop: Header=BB103_10 Depth=2
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB103_9
.LBB103_33:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	getKeysFreeResult
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB103_40
# %bb.34:
	movl	$6, (%rax)
	jmp	.LBB103_39
.LBB103_35:
	testb	$8, 160(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB103_44
.LBB103_32:
	movq	myself(%rip), %rax
	jmp	.LBB103_43
.LBB103_37:
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	getKeysFreeResult
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB103_40
# %bb.38:
	movl	$1, (%rax)
.LBB103_39:
	movl	$42, __A_VARIABLE(%rip)
.LBB103_40:
	movl	$42, __A_VARIABLE(%rip)
.LBB103_41:
	movl	$42, __A_VARIABLE(%rip)
.LBB103_42:
	xorl	%eax, %eax
.LBB103_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB103_44:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 360(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB103_46
# %bb.45:
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	leaq	352(%rdi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	leaq	360(%rdi), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB103_5
.LBB103_46:
	movl	$42, __A_VARIABLE(%rip)
	movq	myself(%rip), %rax
	jmp	.LBB103_43
.LBB103_47:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB103_32
# %bb.48:
	movq	server+2944(%rip), %rax
	cmpl	$0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_52
# %bb.49:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB103_42
# %bb.50:
	movl	$5, (%rax)
	jmp	.LBB103_41
.LBB103_52:
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rcx        # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB103_54
# %bb.53:
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%edx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB103_54:
	movl	-52(%rbp), %ecx         # 4-byte Reload
	orl	-48(%rbp), %ecx         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rdx        # 8-byte Reload
	je	.LBB103_56
# %bb.55:
	movl	$migrateCommand, %ecx
	cmpq	%rcx, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_32
.LBB103_56:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB103_62
# %bb.57:
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB103_62
# %bb.58:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB103_60
# %bb.59:
	movl	$3, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB103_60:
	movslq	-44(%rbp), %rcx         # 4-byte Folded Reload
	movq	40(%rax,%rcx,8), %rax
	jmp	.LBB103_43
.LBB103_62:
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	160(%rax), %eax
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB103_65
# %bb.63:
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %eax              # imm = 0x200
	jne	.LBB103_76
# %bb.64:
	testl	$4096, 32(%rdx)         # imm = 0x1000
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB103_76
.LBB103_65:
	movl	$42, __A_VARIABLE(%rip)
	testl	$131072, %eax           # imm = 0x20000
	je	.LBB103_71
# %bb.66:
	testb	$2, 32(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB103_69
# %bb.67:
	movq	8(%rdx), %rax
	movl	$evalCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB103_69
# %bb.68:
	movl	$evalShaCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB103_71
.LBB103_69:
	movq	myself(%rip), %rax
	testb	$2, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_71
# %bb.70:
	cmpq	%r13, 2128(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB103_43
.LBB103_71:
	movq	myself(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB103_74
# %bb.72:
	cmpq	%rax, %r13
	je	.LBB103_74
# %bb.73:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB103_74:
	movq	%r13, %rax
	jmp	.LBB103_43
.LBB103_76:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB103_32
# %bb.77:
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB103_32
# %bb.78:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB103_42
# %bb.79:
	movl	$2, (%rax)
	jmp	.LBB103_41
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
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB104_4
# %bb.1:
	movl	$.L.str.268, %edi
	jmp	.LBB104_2
.LBB104_4:
	movl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB104_6
# %bb.5:
	movl	$.L.str.269, %edi
	jmp	.LBB104_2
.LBB104_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ebx
	jne	.LBB104_8
# %bb.7:
	movl	$.L.str.270, %edi
	jmp	.LBB104_2
.LBB104_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ebx
	jne	.LBB104_10
# %bb.9:
	movl	$.L.str.271, %edi
.LBB104_2:
	callq	sdsnew
.LBB104_3:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB104_10:
	leal	-3(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	ja	.LBB104_12
# %bb.11:
	movl	%edx, %r15d
	movq	%rsi, %r14
	callq	sdsempty
	cmpl	$3, %ebx
	movl	$.L.str.273, %ecx
	movl	$.L.str.274, %edx
	cmoveq	%rcx, %rdx
	movl	2240(%r14), %r9d
	addq	$2192, %r14             # imm = 0x890
	movl	$.L.str.272, %esi
	movq	%rax, %rdi
	movl	%r15d, %ecx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	sdscatprintf
	jmp	.LBB104_3
.LBB104_12:
	movl	$.L.str.8, %edi
	movl	$.L.str.275, %edx
	movl	$5652, %esi             # imm = 0x1614
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end104:
	.size	clusterRedirectClient, .Lfunc_end104-clusterRedirectClient
                                        # -- End function
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB105_24
# %bb.1:
	movq	%rdi, %rbx
	movl	384(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB105_4
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB105_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB105_24
.LBB105_4:
	movq	server+2944(%rip), %rax
	cmpl	$1, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB105_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.270, %edi
	callq	sdsnew
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$42, __A_VARIABLE(%rip)
.LBB105_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jmp	.LBB105_24
.LBB105_7:
	movq	400(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB105_23
# %bb.8:
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB105_9
# %bb.10:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI105_0(,%rax,8)
.LBB105_11:
	shrq	$3, %rsi
	jmp	.LBB105_16
.LBB105_9:
	xorl	%esi, %esi
	jmp	.LBB105_16
.LBB105_12:
	movzbl	-3(%rdi), %esi
	jmp	.LBB105_16
.LBB105_13:
	movzwl	-5(%rdi), %esi
	jmp	.LBB105_16
.LBB105_14:
	movl	-9(%rdi), %esi
	jmp	.LBB105_16
.LBB105_15:
	movq	-17(%rdi), %rsi
.LBB105_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	keyHashSlot
	movl	%eax, %r12d
	movq	server+2944(%rip), %rax
	movslq	%r12d, %rcx
	movq	262184(%rax,%rcx,8), %r13
	cmpq	myself(%rip), %r13
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB105_22
# %bb.17:
	cmpq	$0, 131112(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB105_18
.LBB105_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB105_23:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB105_24:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB105_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB105_19
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB105_20
.LBB105_19:
	movl	$.L.str.271, %edi
	callq	sdsnew
.LBB105_20:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictReleaseIterator
	jmp	.LBB105_6
.Lfunc_end105:
	.size	clusterRedirectBlockedClientIfNeeded, .Lfunc_end105-clusterRedirectBlockedClientIfNeeded
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI105_0:
	.quad	.LBB105_11
	.quad	.LBB105_12
	.quad	.LBB105_13
	.quad	.LBB105_14
	.quad	.LBB105_15
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
