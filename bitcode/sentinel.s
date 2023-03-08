	.text
	.file	"sentinel.c"
	.globl	dictInstancesValDestructor # -- Begin function dictInstancesValDestructor
	.p2align	4, 0x90
	.type	dictInstancesValDestructor,@function
dictInstancesValDestructor:             # @dictInstancesValDestructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	callq	releaseSentinelRedisInstance
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dictInstancesValDestructor, .Lfunc_end0-dictInstancesValDestructor
                                        # -- End function
	.globl	releaseSentinelRedisInstance # -- Begin function releaseSentinelRedisInstance
	.p2align	4, 0x90
	.type	releaseSentinelRedisInstance,@function
releaseSentinelRedisInstance:           # @releaseSentinelRedisInstance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	136(%rdi), %rdi
	callq	dictRelease
	movq	144(%rbx), %rdi
	callq	dictRelease
	movq	40(%rbx), %rdi
	movq	%rbx, %rsi
	callq	releaseInstanceLink
	movq	8(%rbx), %rdi
	callq	sdsfree
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	296(%rbx), %rdi
	callq	sdsfree
	movq	304(%rbx), %rdi
	callq	sdsfree
	movq	200(%rbx), %rdi
	callq	sdsfree
	movq	224(%rbx), %rdi
	callq	sdsfree
	movq	160(%rbx), %rdi
	callq	sdsfree
	movq	312(%rbx), %rdi
	callq	sdsfree
	movq	32(%rbx), %r14
	movq	(%r14), %rdi
	callq	sdsfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	104(%rbx), %rdi
	callq	dictRelease
	movl	$130, %eax
	andl	(%rbx), %eax
	cmpl	$130, %eax
	jne	.LBB1_3
# %bb.1:
	movq	192(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_3
# %bb.2:
	movq	$0, 288(%rax)
.LBB1_3:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	releaseSentinelRedisInstance, .Lfunc_end1-releaseSentinelRedisInstance
                                        # -- End function
	.globl	sentinelCommand         # -- Begin function sentinelCommand
	.p2align	4, 0x90
	.type	sentinelCommand,@function
sentinelCommand:                        # @sentinelCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r12
	movq	72(%rdi), %r14
	movq	8(%r14), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.220, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_18
# %bb.1:
	movl	$.L.str.53, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_24
# %bb.2:
	movl	$.L.str.221, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_20
# %bb.3:
	movl	$.L.str.222, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_20
# %bb.4:
	movl	$.L.str.223, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_27
# %bb.5:
	movl	$.L.str.224, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_30
# %bb.6:
	movl	$.L.str.226, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_40
# %bb.7:
	movl	$.L.str.227, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_42
# %bb.8:
	movl	$.L.str.228, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_49
# %bb.9:
	movl	$.L.str.232, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_54
# %bb.10:
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_56
# %bb.11:
	movl	$.L.str.238, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_64
# %bb.12:
	movl	$.L.str.239, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_68
# %bb.13:
	movl	$.L.str.241, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_77
# %bb.14:
	movl	$.L.str.247, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_90
# %bb.15:
	movl	$.L.str.248, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_95
# %bb.16:
	movl	$.L.str.249, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_99
# %bb.17:
	movl	$.L.str.256, %esi
	jmp	.LBB2_97
.LBB2_18:
	cmpl	$2, 64(%r12)
	jne	.LBB2_96
# %bb.19:
	movq	sentinel+56(%rip), %rsi
	jmp	.LBB2_23
.LBB2_20:
	cmpl	$3, 64(%r12)
	jne	.LBB2_96
# %bb.21:
	movq	16(%r14), %rax
	movq	sentinel+56(%rip), %rdi
	movq	8(%rax), %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB2_89
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movq	144(%rax), %rsi
.LBB2_23:
	movq	%r12, %rdi
	callq	addReplyDictOfRedisInstances
	jmp	.LBB2_98
.LBB2_24:
	cmpl	$3, 64(%r12)
	jne	.LBB2_96
# %bb.25:
	movq	16(%r14), %rax
	movq	sentinel+56(%rip), %rdi
	movq	8(%rax), %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB2_89
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySentinelRedisInstance
	jmp	.LBB2_98
.LBB2_27:
	cmpl	$3, 64(%r12)
	jne	.LBB2_96
# %bb.28:
	movq	16(%r14), %rax
	movq	sentinel+56(%rip), %rdi
	movq	8(%rax), %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB2_89
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movq	136(%rax), %rsi
	jmp	.LBB2_23
.LBB2_30:
	movq	$0, -56(%rbp)
	cmpl	$6, 64(%r12)
	jne	.LBB2_96
# %bb.31:
	movq	24(%r14), %rsi
	leaq	-64(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB2_98
# %bb.32:
	movq	72(%r12), %rax
	movq	32(%rax), %rsi
	xorl	%r13d, %r13d
	leaq	-112(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB2_98
# %bb.33:
	movq	sentinel+56(%rip), %rdi
	movq	72(%r12), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	movl	-64(%rbp), %edx
	xorl	%ecx, %ecx
	callq	getSentinelRedisInstanceByAddrAndRunID
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB2_36
# %bb.34:
	cmpl	$0, sentinel+64(%rip)
	jne	.LBB2_36
# %bb.35:
	movl	(%r15), %eax
	andl	$9, %eax
	xorl	%r13d, %r13d
	cmpl	$9, %eax
	sete	%r13b
.LBB2_36:
	testq	%r15, %r15
	je	.LBB2_74
# %bb.37:
	xorl	%r14d, %r14d
	testb	$1, (%r15)
	movl	$0, %ebx
	je	.LBB2_75
# %bb.38:
	movq	72(%r12), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.225, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_74
# %bb.39:
	movq	-112(%rbp), %rsi
	leaq	-56(%rbp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	sentinelVoteLeader
	movq	%rax, %rbx
	movq	-56(%rbp), %r14
	jmp	.LBB2_75
.LBB2_40:
	cmpl	$3, 64(%r12)
	jne	.LBB2_96
# %bb.41:
	movq	16(%r14), %rax
	movq	8(%rax), %rdi
	movl	$65536, %esi            # imm = 0x10000
	callq	sentinelResetMastersByPattern
	movslq	%eax, %rsi
	movq	%r12, %rdi
	callq	addReplyLongLong
	jmp	.LBB2_98
.LBB2_42:
	cmpl	$3, 64(%r12)
	jne	.LBB2_96
# %bb.43:
	movq	16(%r14), %rax
	movq	8(%rax), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_63
# %bb.44:
	testb	$64, (%r14)
	je	.LBB2_47
# %bb.45:
	movq	288(%r14), %rax
	testq	%rax, %rax
	je	.LBB2_47
# %bb.46:
	cmpl	$4, 248(%r14)
	jg	.LBB2_48
.LBB2_47:
	movq	%r14, %rax
.LBB2_48:
	movq	32(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %esi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	(%rbx), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movslq	8(%rbx), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkLongLong
	jmp	.LBB2_98
.LBB2_49:
	cmpl	$3, 64(%r12)
	jne	.LBB2_96
# %bb.50:
	movq	16(%r14), %rax
	movq	sentinel+56(%rip), %rdi
	movq	8(%rax), %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB2_89
# %bb.51:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, (%rax)
	jne	.LBB2_67
# %bb.52:
	movq	%rbx, %rdi
	callq	sentinelSelectSlave
	testq	%rax, %rax
	je	.LBB2_92
# %bb.53:
	movq	8(%rbx), %rdx
	movl	$.L.str.231, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	sentinelStartFailover
	orb	$8, 1(%rbx)
	jmp	.LBB2_72
.LBB2_54:
	cmpl	$2, 64(%r12)
	jne	.LBB2_96
# %bb.55:
	movq	%r12, %rdi
	callq	sentinelPendingScriptsCommand
	jmp	.LBB2_98
.LBB2_56:
	cmpl	$6, 64(%r12)
	jne	.LBB2_66
# %bb.57:
	movq	40(%r14), %rsi
	leaq	-56(%rbp), %rdx
	movl	$.L.str.233, %ecx
	movq	%r12, %rdi
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB2_98
# %bb.58:
	movq	72(%r12), %rax
	movq	32(%rax), %rsi
	leaq	-64(%rbp), %rdx
	movl	$.L.str.234, %ecx
	movq	%r12, %rdi
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB2_98
# %bb.59:
	cmpq	$0, -56(%rbp)
	jle	.LBB2_117
# %bb.60:
	movq	72(%r12), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-112(%rbp), %rdx
	movl	$46, %ecx
	xorl	%edi, %edi
	callq	anetResolveIP
	cmpl	$-1, %eax
	je	.LBB2_149
# %bb.61:
	movq	72(%r12), %rax
	movq	16(%rax), %rcx
	movq	24(%rax), %rax
	movq	8(%rcx), %rdi
	movq	8(%rax), %rdx
	movl	-64(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	$1, %esi
	xorl	%r9d, %r9d
	callq	createSentinelRedisInstance
	testq	%rax, %rax
	je	.LBB2_150
# %bb.62:
	movq	%rax, %rbx
	callq	sentinelFlushConfig
	movl	152(%rbx), %r8d
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	jmp	.LBB2_72
.LBB2_63:
	movq	shared+88(%rip), %rsi
	jmp	.LBB2_73
.LBB2_64:
	cmpl	$2, 64(%r12)
	je	.LBB2_71
	jmp	.LBB2_96
.LBB2_66:
	movq	8(%r14), %rax
	movq	8(%rax), %rbx
	jmp	.LBB2_96
.LBB2_67:
	movl	$.L.str.229, %edi
	jmp	.LBB2_93
.LBB2_68:
	cmpl	$3, 64(%r12)
	jne	.LBB2_96
# %bb.69:
	movq	16(%r14), %rax
	movq	sentinel+56(%rip), %rdi
	movq	8(%rax), %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB2_89
# %bb.70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.240, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	sentinel+56(%rip), %rdi
	movq	72(%r12), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	callq	dictDelete
.LBB2_71:
	callq	sentinelFlushConfig
.LBB2_72:
	movq	shared+8(%rip), %rsi
.LBB2_73:
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB2_98
.LBB2_74:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB2_75:
	movl	$3, %esi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	testl	%r13d, %r13d
	movl	$shared+32, %eax
	movl	$shared+40, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rsi
	movq	%r12, %rdi
	callq	addReply
	testq	%rbx, %rbx
	movl	$.L.str.225, %esi
	cmovneq	%rbx, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	addReplyLongLong
	testq	%rbx, %rbx
	je	.LBB2_98
# %bb.76:
	movq	%rbx, %rdi
	callq	sdsfree
	jmp	.LBB2_98
.LBB2_77:
	cmpl	$3, 64(%r12)
	jne	.LBB2_96
# %bb.78:
	movq	16(%r14), %rax
	movq	sentinel+56(%rip), %rdi
	movq	8(%rax), %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB2_89
# %bb.79:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	136(%rax), %rdi
	movl	40(%rdi), %eax
	movl	72(%rdi), %ecx
	leal	(%rcx,%rax), %r13d
	addl	$1, %r13d
	callq	dictGetIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	movl	$1, %ebx
	testq	%rax, %rax
	je	.LBB2_81
.LBB2_80:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movl	(%rax), %eax
	andl	$24, %eax
	cmpl	$1, %eax
	adcl	$0, %ebx
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB2_80
.LBB2_81:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	xorl	%eax, %eax
	cmpl	152(%r14), %ebx
	setl	%al
	movl	%r13d, %ecx
	shrl	$31, %ecx
	addl	%r13d, %ecx
	sarl	%ecx
	leal	2(%rax), %r14d
	cmpl	%ecx, %ebx
	cmovgl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsempty
	testl	%r14d, %r14d
	je	.LBB2_116
# %bb.82:
	movl	$.L.str.243, %esi
	movq	%rax, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	sdscatfmt
	testb	$1, %r14b
	je	.LBB2_84
# %bb.83:
	movl	$.L.str.244, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB2_84:
	testb	$2, %r14b
	je	.LBB2_88
# %bb.85:
	testb	$1, %r14b
	je	.LBB2_87
# %bb.86:
	movl	$.L.str.245, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB2_87:
	movl	$.L.str.246, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB2_88:
	movl	$.L.str.123, %esi
	movq	%rax, %rdi
	callq	sdscat
	jmp	.LBB2_94
.LBB2_89:
	movl	$.L.str.219, %esi
	movq	%r12, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_98
.LBB2_90:
	cmpl	$3, 64(%r12)
	jl	.LBB2_96
# %bb.91:
	movq	%r12, %rdi
	callq	sentinelSetCommand
	jmp	.LBB2_98
.LBB2_92:
	movl	$.L.str.230, %edi
.LBB2_93:
	callq	sdsnew
.LBB2_94:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB2_98
.LBB2_95:
	cmpl	$2, 64(%r12)
	jge	.LBB2_110
.LBB2_96:
	movl	$.L.str.257, %esi
.LBB2_97:
	movq	%r12, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB2_98:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_99:
	movq	$0, sentinel+112(%rip)
	cmpl	$3, 64(%r12)
	jl	.LBB2_72
# %bb.100:                              # %.preheader7
	movl	$3, %r15d
.LBB2_101:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%r14,%r15,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.250, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_105
# %bb.102:                              #   in Loop: Header=BB2_101 Depth=1
	movl	$.L.str.252, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_106
# %bb.103:                              #   in Loop: Header=BB2_101 Depth=1
	movl	$.L.str.254, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB2_153
# %bb.104:                              #   in Loop: Header=BB2_101 Depth=1
	movl	$2, %esi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.250, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.252, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	jmp	.LBB2_108
.LBB2_105:                              #   in Loop: Header=BB2_101 Depth=1
	orb	$1, sentinel+112(%rip)
	movl	$.L.str.251, %esi
	jmp	.LBB2_107
.LBB2_106:                              #   in Loop: Header=BB2_101 Depth=1
	orb	$2, sentinel+112(%rip)
	movl	$.L.str.253, %esi
.LBB2_107:                              #   in Loop: Header=BB2_101 Depth=1
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB2_108:                              #   in Loop: Header=BB2_101 Depth=1
	movslq	64(%r12), %rax
	cmpq	%rax, %r15
	jge	.LBB2_72
# %bb.109:                              #   in Loop: Header=BB2_101 Depth=1
	movq	72(%r12), %r14
	addq	$1, %r15
	jmp	.LBB2_101
.LBB2_110:
	callq	mstime
	movq	%rax, %r14
	movq	instancesDictType+32(%rip), %rax
	movq	%rax, -80(%rbp)
	movups	instancesDictType+16(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movups	instancesDictType(%rip), %xmm0
	movaps	%xmm0, -112(%rbp)
	movq	$0, -72(%rbp)
	cmpl	$3, 64(%r12)
	jl	.LBB2_118
# %bb.111:
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, -48(%rbp)         # 8-byte Spill
	cmpl	$3, 64(%r12)
	jl	.LBB2_119
# %bb.112:                              # %.preheader5
	movl	$2, %ebx
	jmp	.LBB2_114
.LBB2_113:                              #   in Loop: Header=BB2_114 Depth=1
	addq	$1, %rbx
	movslq	64(%r12), %rax
	cmpq	%rax, %rbx
	jge	.LBB2_119
.LBB2_114:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rdi
	callq	sdsnew
	movq	%rax, %r15
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r13
	movq	%r15, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB2_113
# %bb.115:                              #   in Loop: Header=BB2_114 Depth=1
	movq	8(%r13), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rdx
	callq	dictAdd
	jmp	.LBB2_113
.LBB2_116:
	movl	$.L.str.242, %esi
	movq	%rax, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	sdscatfmt
	jmp	.LBB2_94
.LBB2_117:
	movl	$.L.str.61, %esi
	jmp	.LBB2_156
.LBB2_118:
	movq	sentinel+56(%rip), %rbx
	jmp	.LBB2_120
.LBB2_119:
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB2_120:
	movq	72(%rbx), %rsi
	addq	40(%rbx), %rsi
	addq	%rsi, %rsi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	dictGetIterator
	movq	%rax, %r13
	movq	%rax, %rdi
	jmp	.LBB2_122
.LBB2_121:                              #   in Loop: Header=BB2_122 Depth=1
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	%r13, %rdi
.LBB2_122:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_137 Depth 2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB2_147
# %bb.123:                              #   in Loop: Header=BB2_122 Depth=1
	movq	8(%rax), %r15
	movq	8(%r15), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	addReplyBulkCBuffer
	movq	144(%r15), %rax
	movq	40(%rax), %rcx
	movq	72(%rax), %rax
	leaq	(%rcx,%rax), %rsi
	addq	$1, %rsi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movl	$2, %esi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	%r14, %rsi
	subq	96(%r15), %rsi
	movq	%r12, %rdi
	callq	addReplyLongLong
	movq	312(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_127
# %bb.124:                              #   in Loop: Header=BB2_122 Depth=1
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB2_128
# %bb.125:                              #   in Loop: Header=BB2_122 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_126:                              #   in Loop: Header=BB2_122 Depth=1
	shrq	$3, %rdx
	jmp	.LBB2_133
.LBB2_127:                              #   in Loop: Header=BB2_122 Depth=1
	movq	shared+80(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB2_134
.LBB2_128:                              #   in Loop: Header=BB2_122 Depth=1
	xorl	%edx, %edx
	jmp	.LBB2_133
.LBB2_129:                              #   in Loop: Header=BB2_122 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB2_133
.LBB2_130:                              #   in Loop: Header=BB2_122 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB2_133
.LBB2_131:                              #   in Loop: Header=BB2_122 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB2_133
.LBB2_132:                              #   in Loop: Header=BB2_122 Depth=1
	movq	-17(%rsi), %rdx
.LBB2_133:                              #   in Loop: Header=BB2_122 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCBuffer
.LBB2_134:                              #   in Loop: Header=BB2_122 Depth=1
	movq	144(%r15), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	jmp	.LBB2_137
.LBB2_135:                              #   in Loop: Header=BB2_137 Depth=2
	movq	-17(%rsi), %rdx
.LBB2_136:                              #   in Loop: Header=BB2_137 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	addReplyBulkCBuffer
	movq	%r15, %rdi
.LBB2_137:                              #   Parent Loop BB2_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB2_121
# %bb.138:                              #   in Loop: Header=BB2_137 Depth=2
	movq	8(%rax), %rbx
	movl	$2, %esi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	%r14, %rsi
	subq	96(%rbx), %rsi
	movq	%r12, %rdi
	callq	addReplyLongLong
	movq	312(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_142
# %bb.139:                              #   in Loop: Header=BB2_137 Depth=2
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB2_143
# %bb.140:                              #   in Loop: Header=BB2_137 Depth=2
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI2_1(,%rax,8)
.LBB2_141:                              #   in Loop: Header=BB2_137 Depth=2
	shrq	$3, %rdx
	jmp	.LBB2_136
.LBB2_142:                              #   in Loop: Header=BB2_137 Depth=2
	movq	shared+80(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	movq	%r15, %rdi
	jmp	.LBB2_137
.LBB2_143:                              #   in Loop: Header=BB2_137 Depth=2
	xorl	%edx, %edx
	jmp	.LBB2_136
.LBB2_144:                              #   in Loop: Header=BB2_137 Depth=2
	movzbl	-3(%rsi), %edx
	jmp	.LBB2_136
.LBB2_145:                              #   in Loop: Header=BB2_137 Depth=2
	movzwl	-5(%rsi), %edx
	jmp	.LBB2_136
.LBB2_146:                              #   in Loop: Header=BB2_137 Depth=2
	movl	-9(%rsi), %edx
	jmp	.LBB2_136
.LBB2_147:
	movq	%r13, %rdi
	callq	dictReleaseIterator
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	sentinel+56(%rip), %rdi
	je	.LBB2_98
# %bb.148:
	callq	dictRelease
	jmp	.LBB2_98
.LBB2_149:
	movl	$.L.str.235, %esi
	jmp	.LBB2_156
.LBB2_150:
	callq	__errno
	movl	(%rax), %eax
	cmpl	$22, %eax
	je	.LBB2_154
# %bb.151:
	cmpl	$16, %eax
	jne	.LBB2_155
# %bb.152:
	movl	$.L.str.236, %esi
	jmp	.LBB2_156
.LBB2_153:
	movl	$.L.str.255, %esi
	jmp	.LBB2_156
.LBB2_154:
	movl	$.L.str.64, %esi
	jmp	.LBB2_156
.LBB2_155:
	movl	$.L.str.237, %esi
.LBB2_156:
	movq	%r12, %rdi
	callq	addReplyError
	jmp	.LBB2_98
.Lfunc_end2:
	.size	sentinelCommand, .Lfunc_end2-sentinelCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_126
	.quad	.LBB2_129
	.quad	.LBB2_130
	.quad	.LBB2_131
	.quad	.LBB2_132
.LJTI2_1:
	.quad	.LBB2_141
	.quad	.LBB2_144
	.quad	.LBB2_145
	.quad	.LBB2_146
	.quad	.LBB2_135
                                        # -- End function
	.text
	.globl	sentinelPublishCommand  # -- Begin function sentinelPublishCommand
	.p2align	4, 0x90
	.type	sentinelPublishCommand,@function
sentinelPublishCommand:                 # @sentinelPublishCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.122, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_2
# %bb.1:
	movl	$.L.str.277, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB3_11
.LBB3_2:
	movq	72(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB3_3
# %bb.4:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_5:
	shrq	$3, %rsi
	jmp	.LBB3_10
.LBB3_3:
	xorl	%esi, %esi
	jmp	.LBB3_10
.LBB3_6:
	movzbl	-3(%rdi), %esi
	jmp	.LBB3_10
.LBB3_7:
	movzwl	-5(%rdi), %esi
	jmp	.LBB3_10
.LBB3_8:
	movl	-9(%rdi), %esi
	jmp	.LBB3_10
.LBB3_9:
	movq	-17(%rdi), %rsi
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	sentinelProcessHelloMessage
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	addReplyLongLong
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sentinelPublishCommand, .Lfunc_end3-sentinelPublishCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_5
	.quad	.LBB3_6
	.quad	.LBB3_7
	.quad	.LBB3_8
	.quad	.LBB3_9
                                        # -- End function
	.text
	.globl	sentinelInfoCommand     # -- Begin function sentinelInfoCommand
	.p2align	4, 0x90
	.type	sentinelInfoCommand,@function
sentinelInfoCommand:                    # @sentinelInfoCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	64(%rdi), %eax
	cmpl	$3, %eax
	jl	.LBB4_2
# %bb.1:
	movq	shared+128(%rip), %rsi
	callq	addReply
	jmp	.LBB4_68
.LBB4_2:
	cmpl	$2, %eax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB4_4
# %bb.3:
	movq	72(%rdi), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	.LBB4_4
# %bb.5:
	movl	$.L.str.258, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	%eax, %ebx
	movl	$.L.str.259, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	movl	%eax, %r13d
	callq	sdsempty
	movq	%rax, %r12
	movb	$1, %r14b
	testl	%ebx, %ebx
	je	.LBB4_9
# %bb.6:
	testl	%r13d, %r13d
	je	.LBB4_9
# %bb.7:
	movl	$.L.str.260, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	xorl	%r13d, %r13d
	testl	%eax, %eax
	jne	.LBB4_19
# %bb.8:
	xorl	%r14d, %r14d
	jmp	.LBB4_9
.LBB4_4:
	movb	$1, %r14b
	xorl	%r15d, %r15d
	callq	sdsempty
	movq	%rax, %r12
.LBB4_9:
	movl	$.L.str.260, %edi
	callq	genRedisInfoString
	movq	%rax, %rbx
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_10
# %bb.11:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_12:
	shrq	$3, %rdx
	jmp	.LBB4_17
.LBB4_10:
	xorl	%edx, %edx
	jmp	.LBB4_17
.LBB4_13:
	movzbl	-3(%rbx), %edx
	jmp	.LBB4_17
.LBB4_14:
	movzwl	-5(%rbx), %edx
	jmp	.LBB4_17
.LBB4_15:
	movl	-9(%rbx), %edx
	jmp	.LBB4_17
.LBB4_16:
	movq	-17(%rbx), %rdx
.LBB4_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	sdscatlen
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$1, %r13d
	testb	%r14b, %r14b
	je	.LBB4_19
# %bb.18:
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movb	$1, %r15b
	movl	$2, %r13d
	jmp	.LBB4_22
.LBB4_19:
	movl	$.L.str.261, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB4_32
# %bb.20:
	movq	%r15, -48(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	je	.LBB4_69
# %bb.21:
	addl	$1, %r13d
.LBB4_22:
	movl	$.L.str.123, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB4_23:
	movl	$.L.str.261, %edi
	callq	genRedisInfoString
	movq	%rax, %rbx
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_24
# %bb.25:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_1(,%rax,8)
.LBB4_26:
	shrq	$3, %rdx
	jmp	.LBB4_31
.LBB4_24:
	xorl	%edx, %edx
	jmp	.LBB4_31
.LBB4_27:
	movzbl	-3(%rbx), %edx
	jmp	.LBB4_31
.LBB4_28:
	movzwl	-5(%rbx), %edx
	jmp	.LBB4_31
.LBB4_29:
	movl	-9(%rbx), %edx
	jmp	.LBB4_31
.LBB4_30:
	movq	-17(%rbx), %rdx
.LBB4_31:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	sdscatlen
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	sdsfree
	movb	$1, %r14b
	testb	%r15b, %r15b
	movq	-48(%rbp), %r15         # 8-byte Reload
	jne	.LBB4_35
.LBB4_32:
	movl	$.L.str.262, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB4_45
# %bb.33:
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	je	.LBB4_34
.LBB4_35:
	addl	$1, %r13d
	movl	$.L.str.123, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB4_36:
	movl	$.L.str.262, %edi
	callq	genRedisInfoString
	movq	%rax, %rbx
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_37
# %bb.38:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_2(,%rax,8)
.LBB4_39:
	shrq	$3, %rdx
	jmp	.LBB4_44
.LBB4_37:
	xorl	%edx, %edx
	jmp	.LBB4_44
.LBB4_40:
	movzbl	-3(%rbx), %edx
	jmp	.LBB4_44
.LBB4_41:
	movzwl	-5(%rbx), %edx
	jmp	.LBB4_44
.LBB4_42:
	movl	-9(%rbx), %edx
	jmp	.LBB4_44
.LBB4_43:
	movq	-17(%rbx), %rdx
.LBB4_44:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	sdscatlen
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	sdsfree
	movb	$1, %al
	testb	%r14b, %r14b
	jne	.LBB4_48
.LBB4_45:
	movl	$.L.str.263, %esi
	movq	%r15, %rbx
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB4_58
# %bb.46:
	xorl	%eax, %eax
	testl	%r13d, %r13d
	je	.LBB4_47
.LBB4_48:
	movl	%eax, %r14d
	addl	$1, %r13d
	movl	$.L.str.123, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB4_49:
	movl	$.L.str.263, %edi
	callq	genRedisInfoString
	movq	%rax, %rbx
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_50
# %bb.51:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_3(,%rax,8)
.LBB4_52:
	shrq	$3, %rdx
	jmp	.LBB4_57
.LBB4_47:
	xorl	%r14d, %r14d
	movl	$1, %r13d
	jmp	.LBB4_49
.LBB4_34:
	movl	$1, %r13d
	jmp	.LBB4_36
.LBB4_50:
	xorl	%edx, %edx
	jmp	.LBB4_57
.LBB4_53:
	movzbl	-3(%rbx), %edx
	jmp	.LBB4_57
.LBB4_54:
	movzwl	-5(%rbx), %edx
	jmp	.LBB4_57
.LBB4_55:
	movl	-9(%rbx), %edx
	jmp	.LBB4_57
.LBB4_56:
	movq	-17(%rbx), %rdx
.LBB4_57:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	sdscatlen
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	sdsfree
	testb	%r14b, %r14b
	movq	%r15, %rbx
	jne	.LBB4_60
.LBB4_58:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB4_67
# %bb.59:
	testl	%r13d, %r13d
	je	.LBB4_61
.LBB4_60:
	movl	$.L.str.123, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB4_61:
	movq	sentinel+56(%rip), %rax
	movq	72(%rax), %rdx
	addq	40(%rax), %rdx
	movl	sentinel+64(%rip), %ecx
	movl	sentinel+68(%rip), %r8d
	movq	sentinel+88(%rip), %rax
	movq	40(%rax), %r9
	subq	$8, %rsp
	movl	$.L.str.264, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	pushq	sentinel+112(%rip)
	callq	sdscatprintf
	addq	$16, %rsp
	movq	%rax, %r12
	movq	sentinel+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB4_66
# %bb.62:                               # %.preheader
	movl	$.L.str.209, %r14d
	xorl	%edx, %edx
	jmp	.LBB4_63
	.p2align	4, 0x90
.LBB4_65:                               #   in Loop: Header=BB4_63 Depth=1
	leal	1(%rdx), %r13d
	movq	8(%rax), %rcx
	movq	32(%rax), %rsi
	movq	(%rsi), %r9
	movl	8(%rsi), %r10d
	movq	144(%rax), %rsi
	movq	72(%rsi), %rbx
	addq	40(%rsi), %rbx
	movq	136(%rax), %rax
	movq	40(%rax), %rsi
	movq	72(%rax), %rax
	leaq	(%rsi,%rax), %r11
	addq	$1, %r11
	subq	$8, %rsp
	movl	$.L.str.267, %esi
	movq	%r12, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	pushq	%r11
	pushq	%rbx
	pushq	%r10
	callq	sdscatprintf
	addq	$32, %rsp
	movq	%rax, %r12
	movq	%r15, %rdi
	callq	dictNext
	movl	%r13d, %edx
	testq	%rax, %rax
	je	.LBB4_66
.LBB4_63:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movl	$.L.str.265, %r8d
	testb	$16, %cl
	jne	.LBB4_65
# %bb.64:                               #   in Loop: Header=BB4_63 Depth=1
	testb	$8, %cl
	movl	$.L.str.266, %r8d
	cmoveq	%r14, %r8
	jmp	.LBB4_65
.LBB4_66:
	movq	%r15, %rdi
	callq	dictReleaseIterator
.LBB4_67:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	addReplyBulkSds
.LBB4_68:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_69:
	movl	$1, %r13d
	jmp	.LBB4_23
.Lfunc_end4:
	.size	sentinelInfoCommand, .Lfunc_end4-sentinelInfoCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_12
	.quad	.LBB4_13
	.quad	.LBB4_14
	.quad	.LBB4_15
	.quad	.LBB4_16
.LJTI4_1:
	.quad	.LBB4_26
	.quad	.LBB4_27
	.quad	.LBB4_28
	.quad	.LBB4_29
	.quad	.LBB4_30
.LJTI4_2:
	.quad	.LBB4_39
	.quad	.LBB4_40
	.quad	.LBB4_41
	.quad	.LBB4_42
	.quad	.LBB4_43
.LJTI4_3:
	.quad	.LBB4_52
	.quad	.LBB4_53
	.quad	.LBB4_54
	.quad	.LBB4_55
	.quad	.LBB4_56
                                        # -- End function
	.text
	.globl	sentinelRoleCommand     # -- Begin function sentinelRoleCommand
	.p2align	4, 0x90
	.type	sentinelRoleCommand,@function
sentinelRoleCommand:                    # @sentinelRoleCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$2, %esi
	callq	addReplyMultiBulkLen
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	addReplyBulkCBuffer
	movq	sentinel+56(%rip), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	movq	sentinel+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB5_3
# %bb.1:                                #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	addReplyBulkCString
	movq	%rbx, %rdi
	jmp	.LBB5_2
.LBB5_3:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sentinelRoleCommand, .Lfunc_end5-sentinelRoleCommand
                                        # -- End function
	.globl	initSentinelConfig      # -- Begin function initSentinelConfig
	.p2align	4, 0x90
	.type	initSentinelConfig,@function
initSentinelConfig:                     # @initSentinelConfig
# %bb.0:
	movl	$26379, server+216(%rip) # imm = 0x670B
	movl	$0, server+856(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	initSentinelConfig, .Lfunc_end6-initSentinelConfig
                                        # -- End function
	.globl	initSentinel            # -- Begin function initSentinel
	.p2align	4, 0x90
	.type	initSentinel,@function
initSentinel:                           # @initSentinel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+56(%rip), %rdi
	xorl	%esi, %esi
	callq	dictEmpty
	movq	server+56(%rip), %rbx
	movq	sentinelcmds(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.1:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+80(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+80, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.2:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+160(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+160, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.3:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+240(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+240, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.4:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+320(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+320, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.5:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+400(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+400, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.6:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+480(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+480, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.7:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+560(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+560, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.8:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+640(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+640, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.9:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+720(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+720, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.10:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+800(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+800, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.11:
	movq	server+56(%rip), %rbx
	movq	sentinelcmds+880(%rip), %rdi
	callq	sdsnew
	movl	$sentinelcmds+880, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB7_13
# %bb.12:
	movq	$0, sentinel+48(%rip)
	movl	$instancesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, sentinel+56(%rip)
	movl	$0, sentinel+64(%rip)
	movq	$0, sentinel+72(%rip)
	callq	mstime
	movq	%rax, sentinel+80(%rip)
	movl	$0, sentinel+68(%rip)
	callq	listCreate
	movq	%rax, sentinel+88(%rip)
	movq	$0, sentinel+96(%rip)
	movl	$0, sentinel+104(%rip)
	movq	$0, sentinel+112(%rip)
	movl	$1, sentinel+120(%rip)
	movl	$sentinel, %edi
	movl	$41, %edx
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB7_13:
	movl	$.L.str.16, %edi
	movl	$.L.str.17, %esi
	movl	$478, %edx              # imm = 0x1DE
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end7:
	.size	initSentinel, .Lfunc_end7-initSentinel
                                        # -- End function
	.globl	sentinelIsRunning       # -- Begin function sentinelIsRunning
	.p2align	4, 0x90
	.type	sentinelIsRunning,@function
sentinelIsRunning:                      # @sentinelIsRunning
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+8(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB8_15
# %bb.1:
	movl	$2, %esi
	callq	access
	cmpl	$-1, %eax
	je	.LBB8_16
# %bb.2:                                # %.preheader1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, sentinel(%rax)
	jne	.LBB8_11
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	cmpb	$0, sentinel+1(%rax)
	jne	.LBB8_11
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	cmpb	$0, sentinel+2(%rax)
	jne	.LBB8_11
# %bb.6:                                #   in Loop: Header=BB8_3 Depth=1
	cmpb	$0, sentinel+3(%rax)
	jne	.LBB8_11
# %bb.7:                                #   in Loop: Header=BB8_3 Depth=1
	cmpb	$0, sentinel+4(%rax)
	jne	.LBB8_11
# %bb.8:                                #   in Loop: Header=BB8_3 Depth=1
	addq	$5, %rax
	cmpq	$40, %rax
	jb	.LBB8_3
# %bb.9:
	cmpl	$40, %eax
	jne	.LBB8_11
# %bb.10:
	movl	$sentinel, %edi
	movl	$40, %esi
	callq	getRandomHexChars
	callq	sentinelFlushConfig
.LBB8_11:
	movl	$.L.str.20, %esi
	movl	$sentinel, %edx
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	sentinel+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB8_13:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB8_14
# %bb.12:                               #   in Loop: Header=BB8_13 Depth=1
	movq	8(%rax), %rdx
	movl	152(%rdx), %r8d
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$3, %edi
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	%rbx, %rdi
	jmp	.LBB8_13
.LBB8_14:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB8_15:
	movl	$.L.str.18, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB8_16:
	movq	server+8(%rip), %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.19, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end8:
	.size	sentinelIsRunning, .Lfunc_end8-sentinelIsRunning
                                        # -- End function
	.globl	sentinelFlushConfig     # -- Begin function sentinelFlushConfig
	.p2align	4, 0x90
	.type	sentinelFlushConfig,@function
sentinelFlushConfig:                    # @sentinelFlushConfig
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	server+40(%rip), %ebx
	movl	$10, server+40(%rip)
	movq	server+8(%rip), %rdi
	callq	rewriteConfig
	movl	%ebx, server+40(%rip)
	cmpl	$-1, %eax
	je	.LBB9_5
# %bb.1:
	movq	server+8(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	cmpl	$-1, %eax
	je	.LBB9_5
# %bb.2:
	movl	%eax, %ebx
	movl	%eax, %edi
	callq	fsync
	cmpl	$-1, %eax
	je	.LBB9_4
# %bb.3:
	movl	%ebx, %edi
	callq	close
	cmpl	$-1, %eax
	jne	.LBB9_6
.LBB9_4:
	movl	%ebx, %edi
	callq	close
.LBB9_5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.111, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB9_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	sentinelFlushConfig, .Lfunc_end9-sentinelFlushConfig
                                        # -- End function
	.globl	sentinelGenerateInitialMonitorEvents # -- Begin function sentinelGenerateInitialMonitorEvents
	.p2align	4, 0x90
	.type	sentinelGenerateInitialMonitorEvents,@function
sentinelGenerateInitialMonitorEvents:   # @sentinelGenerateInitialMonitorEvents
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	sentinel+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB10_3
# %bb.1:                                #   in Loop: Header=BB10_2 Depth=1
	movq	8(%rax), %rdx
	movl	152(%rdx), %r8d
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %ecx
	movl	$3, %edi
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	%rbx, %rdi
	jmp	.LBB10_2
.LBB10_3:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sentinelGenerateInitialMonitorEvents, .Lfunc_end10-sentinelGenerateInitialMonitorEvents
                                        # -- End function
	.globl	createSentinelAddr      # -- Begin function createSentinelAddr
	.p2align	4, 0x90
	.type	createSentinelAddr,@function
createSentinelAddr:                     # @createSentinelAddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	movl	%esi, %r14d
	cmpl	$65536, %esi            # imm = 0x10000
	jb	.LBB11_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB11_5
.LBB11_2:
	movq	%rdi, %rsi
	leaq	-64(%rbp), %rdx
	movl	$46, %ecx
	xorl	%edi, %edi
	callq	anetResolve
	cmpl	$-1, %eax
	je	.LBB11_4
# %bb.3:
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	sdsnew
	movq	%rax, (%rbx)
	movl	%r14d, 8(%rbx)
	jmp	.LBB11_6
.LBB11_4:
	callq	__errno
	movl	$2, (%rax)
.LBB11_5:
	xorl	%ebx, %ebx
.LBB11_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	createSentinelAddr, .Lfunc_end11-createSentinelAddr
                                        # -- End function
	.globl	dupSentinelAddr         # -- Begin function dupSentinelAddr
	.p2align	4, 0x90
	.type	dupSentinelAddr,@function
dupSentinelAddr:                        # @dupSentinelAddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	(%r14), %rdi
	callq	sdsnew
	movq	%rax, (%rbx)
	movl	8(%r14), %eax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dupSentinelAddr, .Lfunc_end12-dupSentinelAddr
                                        # -- End function
	.globl	releaseSentinelAddr     # -- Begin function releaseSentinelAddr
	.p2align	4, 0x90
	.type	releaseSentinelAddr,@function
releaseSentinelAddr:                    # @releaseSentinelAddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	releaseSentinelAddr, .Lfunc_end13-releaseSentinelAddr
                                        # -- End function
	.globl	sentinelAddrIsEqual     # -- Begin function sentinelAddrIsEqual
	.p2align	4, 0x90
	.type	sentinelAddrIsEqual,@function
sentinelAddrIsEqual:                    # @sentinelAddrIsEqual
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	8(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	8(%rsi), %ecx
	jne	.LBB14_2
# %bb.1:
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	callq	strcasecmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	sentinelAddrIsEqual, .Lfunc_end14-sentinelAddrIsEqual
                                        # -- End function
	.globl	sentinelEvent           # -- Begin function sentinelEvent
	.p2align	4, 0x90
	.type	sentinelEvent,@function
sentinelEvent:                          # @sentinelEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1240, %rsp             # imm = 0x4D8
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	%edi, %r12d
	testb	%al, %al
	je	.LBB15_2
# %bb.1:
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm1, -192(%rbp)
	movaps	%xmm2, -176(%rbp)
	movaps	%xmm3, -160(%rbp)
	movaps	%xmm4, -144(%rbp)
	movaps	%xmm5, -128(%rbp)
	movaps	%xmm6, -112(%rbp)
	movaps	%xmm7, -96(%rbp)
.LBB15_2:
	movq	%r8, -224(%rbp)
	movq	%r9, -216(%rbp)
	movb	(%r13), %al
	cmpb	$37, %al
	jne	.LBB15_12
# %bb.3:
	cmpb	$64, 1(%r13)
	jne	.LBB15_12
# %bb.4:
	movl	(%r15), %edx
	testb	$1, %dl
	jne	.LBB15_5
# %bb.6:
	movq	192(%r15), %r10
	testq	%r10, %r10
	sete	%al
	movl	$.L.str.54, %ecx
	testb	$2, %dl
	jne	.LBB15_8
# %bb.7:
	testb	$4, %dl
	movl	$.L.str.55, %edx
	movl	$.L.str.2, %ecx
	cmoveq	%rdx, %rcx
	jmp	.LBB15_8
.LBB15_12:
	movb	$0, -1280(%rbp)
	testb	%al, %al
	je	.LBB15_15
.LBB15_14:
	leaq	-256(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$206158430240, %rax     # imm = 0x3000000020
	movq	%rax, -80(%rbp)
	leaq	-1280(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rax,%rbp), %r14
	addq	$-1280, %r14            # imm = 0xFB00
	movq	%rbx, %rdi
	callq	strlen
	movl	$1024, %esi             # imm = 0x400
	subq	%rax, %rsi
	leaq	-80(%rbp), %rcx
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	vsnprintf
.LBB15_15:
	cmpl	%r12d, server+1728(%rip)
	jg	.LBB15_17
# %bb.16:
	leaq	-1280(%rbp), %rcx
	movl	$.L.str.23, %esi
	movl	%r12d, %edi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	serverLog
.LBB15_17:
	testl	%r12d, %r12d
	je	.LBB15_24
# %bb.18:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	createStringObject
	movq	%rax, %r13
	leaq	-1280(%rbp), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	createStringObject
	movq	%rax, %rbx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	pubsubPublishMessage
	movq	%r13, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
	cmpl	$3, %r12d
	jne	.LBB15_24
# %bb.19:
	testq	%r15, %r15
	je	.LBB15_24
# %bb.20:
	testb	$1, (%r15)
	jne	.LBB15_22
# %bb.21:
	movq	192(%r15), %r15
	testq	%r15, %r15
	je	.LBB15_24
.LBB15_22:
	movq	296(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB15_24
# %bb.23:
	leaq	-1280(%rbp), %rdx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	sentinelScheduleScriptExecution
.LBB15_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1240, %rsp             # imm = 0x4D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_5:
	movl	$.L.str.53, %ecx
	movb	$1, %al
	xorl	%r10d, %r10d
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %r8
	movq	32(%r15), %rdx
	movq	(%rdx), %r9
	movl	8(%rdx), %r11d
	testb	%al, %al
	je	.LBB15_9
# %bb.10:
	subq	$8, %rsp
	leaq	-1280(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.22, %edx
	xorl	%eax, %eax
	pushq	%r11
	callq	snprintf
	addq	$16, %rsp
	jmp	.LBB15_11
.LBB15_9:
	movq	32(%r10), %rbx
	movl	8(%rbx), %r14d
	leaq	-1280(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.21, %edx
	movl	$0, %eax
	pushq	%r14
	pushq	(%rbx)
	pushq	8(%r10)
	pushq	%r11
	callq	snprintf
	addq	$32, %rsp
.LBB15_11:
	movb	2(%r13), %al
	addq	$2, %r13
	testb	%al, %al
	jne	.LBB15_14
	jmp	.LBB15_15
.Lfunc_end15:
	.size	sentinelEvent, .Lfunc_end15-sentinelEvent
                                        # -- End function
	.globl	sentinelRedisInstanceTypeStr # -- Begin function sentinelRedisInstanceTypeStr
	.p2align	4, 0x90
	.type	sentinelRedisInstanceTypeStr,@function
sentinelRedisInstanceTypeStr:           # @sentinelRedisInstanceTypeStr
# %bb.0:
	movl	(%rdi), %ecx
	movl	$.L.str.53, %eax
	testb	$1, %cl
	jne	.LBB16_3
# %bb.1:
	movl	$.L.str.54, %eax
	testb	$2, %cl
	jne	.LBB16_3
# %bb.2:
	testb	$4, %cl
	movl	$.L.str.55, %ecx
	movl	$.L.str.2, %eax
	cmoveq	%rcx, %rax
.LBB16_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end16:
	.size	sentinelRedisInstanceTypeStr, .Lfunc_end16-sentinelRedisInstanceTypeStr
                                        # -- End function
	.globl	sentinelScheduleScriptExecution # -- Begin function sentinelScheduleScriptExecution
	.p2align	4, 0x90
	.type	sentinelScheduleScriptExecution,@function
sentinelScheduleScriptExecution:        # @sentinelScheduleScriptExecution
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB17_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB17_2:
	movq	%rsi, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rcx
	cmpq	$40, %rcx
	ja	.LBB17_5
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	movq	%rcx, %rax
	addq	-32(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB17_6
	.p2align	4, 0x90
.LBB17_5:                               #   in Loop: Header=BB17_3 Depth=1
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -40(%rbp)
.LBB17_6:                               #   in Loop: Header=BB17_3 Depth=1
	movq	(%rax), %rdi
	movq	%rdi, -384(%rbp,%rbx,8)
	testq	%rdi, %rdi
	je	.LBB17_8
# %bb.7:                                #   in Loop: Header=BB17_3 Depth=1
	callq	sdsnew
	movq	%rax, -384(%rbp,%rbx,8)
	addq	$1, %rbx
	cmpq	$16, %rbx
	jb	.LBB17_3
.LBB17_8:
	movq	%r14, %rdi
	callq	sdsnew
	movq	%rax, -384(%rbp)
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	$0, (%rax)
	movl	%ebx, %eax
	leaq	8(,%rax,8), %r14
	movq	%r14, %rdi
	callq	zmalloc
	movq	%rax, 8(%r15)
	movq	$0, 16(%r15)
	movl	$0, 24(%r15)
	leaq	-384(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	memcpy
	movq	sentinel+88(%rip), %rdi
	movq	%r15, %rsi
	callq	listAddNodeTail
	movq	sentinel+88(%rip), %rdi
	cmpq	$257, 40(%rdi)          # imm = 0x101
	jb	.LBB17_17
# %bb.9:
	leaq	-240(%rbp), %r14
	movq	%r14, %rsi
	callq	listRewind
	.p2align	4, 0x90
.LBB17_10:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB17_16
# %bb.11:                               #   in Loop: Header=BB17_10 Depth=1
	movq	16(%rax), %r15
	testb	$1, (%r15)
	jne	.LBB17_10
# %bb.12:
	movq	sentinel+88(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movq	8(%r15), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB17_15
# %bb.13:                               # %.preheader
	movl	$8, %ebx
	.p2align	4, 0x90
.LBB17_14:                              # =>This Inner Loop Header: Depth=1
	callq	sdsfree
	movq	8(%r15), %rax
	movq	(%rax,%rbx), %rdi
	addq	$8, %rbx
	testq	%rdi, %rdi
	jne	.LBB17_14
.LBB17_15:
	movq	%rax, %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB17_16:
	movq	sentinel+88(%rip), %rax
	cmpq	$257, 40(%rax)          # imm = 0x101
	jae	.LBB17_18
.LBB17_17:
	movl	$42, __A_VARIABLE(%rip)
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_18:
	movl	$.L.str.26, %edi
	movl	$.L.str.17, %esi
	movl	$731, %edx              # imm = 0x2DB
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end17:
	.size	sentinelScheduleScriptExecution, .Lfunc_end17-sentinelScheduleScriptExecution
                                        # -- End function
	.globl	sentinelReleaseScriptJob # -- Begin function sentinelReleaseScriptJob
	.p2align	4, 0x90
	.type	sentinelReleaseScriptJob,@function
sentinelReleaseScriptJob:               # @sentinelReleaseScriptJob
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	8(%rdi), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB18_3
# %bb.1:                                # %.preheader
	movl	$8, %ebx
	.p2align	4, 0x90
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	callq	sdsfree
	movq	8(%r14), %rax
	movq	(%rax,%rbx), %rdi
	addq	$8, %rbx
	testq	%rdi, %rdi
	jne	.LBB18_2
.LBB18_3:
	movq	%rax, %rdi
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	sentinelReleaseScriptJob, .Lfunc_end18-sentinelReleaseScriptJob
                                        # -- End function
	.globl	sentinelGetScriptListNodeByPid # -- Begin function sentinelGetScriptListNodeByPid
	.p2align	4, 0x90
	.type	sentinelGetScriptListNodeByPid,@function
sentinelGetScriptListNodeByPid:         # @sentinelGetScriptListNodeByPid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movl	%edi, %r14d
	movq	sentinel+88(%rip), %rdi
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB19_5
# %bb.1:                                # %.preheader
	leaq	-32(%rbp), %rbx
	jmp	.LBB19_2
	.p2align	4, 0x90
.LBB19_4:                               #   in Loop: Header=BB19_2 Depth=1
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB19_5
.LBB19_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rcx
	testb	$1, (%rcx)
	je	.LBB19_4
# %bb.3:                                #   in Loop: Header=BB19_2 Depth=1
	cmpl	%r14d, 24(%rcx)
	jne	.LBB19_4
	jmp	.LBB19_6
.LBB19_5:
	xorl	%eax, %eax
.LBB19_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	sentinelGetScriptListNodeByPid, .Lfunc_end19-sentinelGetScriptListNodeByPid
                                        # -- End function
	.globl	sentinelRunPendingScripts # -- Begin function sentinelRunPendingScripts
	.p2align	4, 0x90
	.type	sentinelRunPendingScripts,@function
sentinelRunPendingScripts:              # @sentinelRunPendingScripts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	callq	mstime
	movq	%rax, %r14
	movq	sentinel+88(%rip), %rdi
	leaq	-40(%rbp), %rsi
	callq	listRewind
	cmpl	$15, sentinel+68(%rip)
	jg	.LBB20_10
# %bb.1:                                # %.preheader
	leaq	-40(%rbp), %r15
	jmp	.LBB20_2
.LBB20_11:                              #   in Loop: Header=BB20_2 Depth=1
	movq	8(%rbx), %rax
	movq	(%rax), %r8
	movl	$0, (%rsp)
	movl	$.L.str.27, %esi
	movl	$.L.str.28, %ecx
	movl	$3, %edi
	movl	$0, %edx
	movl	$99, %r9d
	xorl	%eax, %eax
	callq	sentinelEvent
	andb	$-2, (%rbx)
	movl	$0, 24(%rbx)
	.p2align	4, 0x90
.LBB20_9:                               #   in Loop: Header=BB20_2 Depth=1
	cmpl	$16, sentinel+68(%rip)
	jge	.LBB20_10
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB20_10
# %bb.3:                                #   in Loop: Header=BB20_2 Depth=1
	movq	16(%rax), %rbx
	movl	(%rbx), %eax
	testb	$1, %al
	jne	.LBB20_9
# %bb.4:                                #   in Loop: Header=BB20_2 Depth=1
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB20_6
# %bb.5:                                #   in Loop: Header=BB20_2 Depth=1
	cmpq	%r14, %rcx
	jg	.LBB20_9
.LBB20_6:                               #   in Loop: Header=BB20_2 Depth=1
	orl	$1, %eax
	movl	%eax, (%rbx)
	callq	mstime
	movq	%rax, 16(%rbx)
	addl	$1, 4(%rbx)
	callq	fork
	cmpl	$-1, %eax
	je	.LBB20_11
# %bb.7:                                #   in Loop: Header=BB20_2 Depth=1
	testl	%eax, %eax
	je	.LBB20_12
# %bb.8:                                #   in Loop: Header=BB20_2 Depth=1
	addl	$1, sentinel+68(%rip)
	movl	%eax, 24(%rbx)
	movslq	%eax, %r8
	movl	$.L.str.29, %esi
	movl	$.L.str.30, %ecx
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sentinelEvent
	jmp	.LBB20_9
.LBB20_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_12:
	movq	8(%rbx), %rsi
	movq	(%rsi), %rdi
	movq	environ(%rip), %rdx
	callq	execve
	movl	$2, %edi
	callq	_exit
.Lfunc_end20:
	.size	sentinelRunPendingScripts, .Lfunc_end20-sentinelRunPendingScripts
                                        # -- End function
	.globl	sentinelScriptRetryDelay # -- Begin function sentinelScriptRetryDelay
	.p2align	4, 0x90
	.type	sentinelScriptRetryDelay,@function
sentinelScriptRetryDelay:               # @sentinelScriptRetryDelay
# %bb.0:
	movl	$30000, %eax            # imm = 0x7530
	cmpl	$2, %edi
	jl	.LBB21_3
# %bb.1:                                # %.preheader
	addl	$1, %edi
	movl	$30000, %eax            # imm = 0x7530
	.p2align	4, 0x90
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	addq	%rax, %rax
	addl	$-1, %edi
	cmpl	$2, %edi
	jg	.LBB21_2
.LBB21_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end21:
	.size	sentinelScriptRetryDelay, .Lfunc_end21-sentinelScriptRetryDelay
                                        # -- End function
	.globl	sentinelCollectTerminatedScripts # -- Begin function sentinelCollectTerminatedScripts
	.p2align	4, 0x90
	.type	sentinelCollectTerminatedScripts,@function
sentinelCollectTerminatedScripts:       # @sentinelCollectTerminatedScripts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	leaq	-48(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	wait3
	testl	%eax, %eax
	jle	.LBB22_25
# %bb.1:
	movl	%eax, %r12d
	leaq	-72(%rbp), %rbx
	jmp	.LBB22_2
	.p2align	4, 0x90
.LBB22_10:                              #   in Loop: Header=BB22_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.33, %esi
	movl	$3, %edi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB22_24:                              #   in Loop: Header=BB22_2 Depth=1
	leaq	-48(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	wait3
	movl	%eax, %r12d
	testl	%eax, %eax
	jle	.LBB22_25
.LBB22_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_7 Depth 2
                                        #     Child Loop BB22_16 Depth 2
                                        #     Child Loop BB22_22 Depth 2
	movl	-48(%rbp), %eax
	movzbl	%ah, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, %edx
	andb	$127, %cl
	je	.LBB22_5
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	movl	$0, %edx
	cmpb	$127, %cl
	je	.LBB22_5
# %bb.4:                                #   in Loop: Header=BB22_2 Depth=1
	andl	$127, %eax
	movl	%eax, %edx
.LBB22_5:                               #   in Loop: Header=BB22_2 Depth=1
	movslq	%r12d, %r13
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%edx, (%rsp)
	movl	$.L.str.31, %esi
	movl	$.L.str.32, %ecx
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%r13, %r8
	movl	-44(%rbp), %r9d         # 4-byte Reload
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	sentinel+88(%rip), %rdi
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB22_10
# %bb.6:                                # %.preheader3
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	%rax, %r14
	jmp	.LBB22_7
	.p2align	4, 0x90
.LBB22_9:                               #   in Loop: Header=BB22_7 Depth=2
	movq	%rbx, %rdi
	callq	listNext
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB22_10
.LBB22_7:                               #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%r14), %r15
	testb	$1, (%r15)
	je	.LBB22_9
# %bb.8:                                #   in Loop: Header=BB22_7 Depth=2
	cmpl	%r12d, 24(%r15)
	jne	.LBB22_9
# %bb.11:                               #   in Loop: Header=BB22_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	$1, %ecx
	movl	-52(%rbp), %r9d         # 4-byte Reload
	je	.LBB22_13
# %bb.12:                               #   in Loop: Header=BB22_2 Depth=1
	testl	%r9d, %r9d
	je	.LBB22_18
.LBB22_13:                              #   in Loop: Header=BB22_2 Depth=1
	cmpl	$10, 4(%r15)
	jne	.LBB22_14
.LBB22_18:                              #   in Loop: Header=BB22_2 Depth=1
	movq	%rbx, %r12
	movl	%ecx, %eax
	orl	%r9d, %eax
	je	.LBB22_20
# %bb.19:                               #   in Loop: Header=BB22_2 Depth=1
	movq	8(%r15), %rax
	movq	(%rax), %r8
	movl	%ecx, (%rsp)
	movl	$.L.str.27, %esi
	movl	$.L.str.28, %ecx
	movl	$3, %edi
	movl	$0, %edx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB22_20:                              #   in Loop: Header=BB22_2 Depth=1
	movq	sentinel+88(%rip), %rdi
	movq	%r14, %rsi
	callq	listDelNode
	movq	8(%r15), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB22_23
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	$8, %ebx
	.p2align	4, 0x90
.LBB22_22:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	sdsfree
	movq	8(%r15), %rax
	movq	(%rax,%rbx), %rdi
	addq	$8, %rbx
	testq	%rdi, %rdi
	jne	.LBB22_22
.LBB22_23:                              #   in Loop: Header=BB22_2 Depth=1
	movq	%rax, %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, sentinel+68(%rip)
	movq	%r12, %rbx
	jmp	.LBB22_24
.LBB22_14:                              #   in Loop: Header=BB22_2 Depth=1
	andb	$-2, (%r15)
	movl	$0, 24(%r15)
	callq	mstime
	movl	4(%r15), %edx
	movl	$30000, %ecx            # imm = 0x7530
	cmpl	$2, %edx
	jl	.LBB22_17
# %bb.15:                               # %.preheader1
                                        #   in Loop: Header=BB22_2 Depth=1
	addl	$1, %edx
	movl	$30000, %ecx            # imm = 0x7530
	.p2align	4, 0x90
.LBB22_16:                              #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%rcx, %rcx
	addl	$-1, %edx
	cmpl	$2, %edx
	jg	.LBB22_16
.LBB22_17:                              #   in Loop: Header=BB22_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rcx
	movq	%rcx, 16(%r15)
	jmp	.LBB22_24
.LBB22_25:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	sentinelCollectTerminatedScripts, .Lfunc_end22-sentinelCollectTerminatedScripts
                                        # -- End function
	.globl	sentinelKillTimedoutScripts # -- Begin function sentinelKillTimedoutScripts
	.p2align	4, 0x90
	.type	sentinelKillTimedoutScripts,@function
sentinelKillTimedoutScripts:            # @sentinelKillTimedoutScripts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	callq	mstime
	movq	%rax, %r14
	movq	sentinel+88(%rip), %rdi
	leaq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB23_6
# %bb.1:                                # %.preheader
	leaq	-40(%rbp), %r15
	jmp	.LBB23_2
	.p2align	4, 0x90
.LBB23_5:                               #   in Loop: Header=BB23_2 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB23_6
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	testb	$1, (%rbx)
	je	.LBB23_5
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	movq	%r14, %rax
	subq	16(%rbx), %rax
	cmpq	$60001, %rax            # imm = 0xEA61
	jl	.LBB23_5
# %bb.4:                                #   in Loop: Header=BB23_2 Depth=1
	movq	8(%rbx), %rax
	movq	(%rax), %r8
	movslq	24(%rbx), %r9
	movl	$.L.str.34, %esi
	movl	$.L.str.35, %ecx
	movl	$3, %edi
	movl	$0, %edx
	xorl	%eax, %eax
	callq	sentinelEvent
	movl	24(%rbx), %edi
	movl	$9, %esi
	callq	kill
	jmp	.LBB23_5
.LBB23_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	sentinelKillTimedoutScripts, .Lfunc_end23-sentinelKillTimedoutScripts
                                        # -- End function
	.globl	sentinelPendingScriptsCommand # -- Begin function sentinelPendingScriptsCommand
	.p2align	4, 0x90
	.type	sentinelPendingScriptsCommand,@function
sentinelPendingScriptsCommand:          # @sentinelPendingScriptsCommand
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
	movq	sentinel+88(%rip), %rax
	movq	40(%rax), %rsi
	callq	addReplyMultiBulkLen
	movq	sentinel+88(%rip), %rdi
	leaq	-56(%rbp), %r14
	movq	%r14, %rsi
	callq	listRewind
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB24_14
# %bb.1:                                # %.preheader1
	movl	$.L.str.39, %r15d
	leaq	-56(%rbp), %r14
	jmp	.LBB24_2
	.p2align	4, 0x90
.LBB24_8:                               #   in Loop: Header=BB24_2 Depth=1
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	callq	mstime
	subq	16(%r13), %rax
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
.LBB24_13:                              #   in Loop: Header=BB24_2 Depth=1
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movslq	4(%r13), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkLongLong
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB24_14
.LBB24_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_3 Depth 2
                                        #     Child Loop BB24_6 Depth 2
	movq	16(%rax), %r13
	movl	$10, %esi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.36, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	8(%r13), %rcx
	movq	$-1, %rax
	.p2align	4, 0x90
.LBB24_3:                               #   Parent Loop BB24_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, 8(%rcx,%rax,8)
	leaq	1(%rax), %rax
	jne	.LBB24_3
# %bb.4:                                #   in Loop: Header=BB24_2 Depth=1
	movl	%eax, %esi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	8(%r13), %rax
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB24_7
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	$8, %ebx
	.p2align	4, 0x90
.LBB24_6:                               #   Parent Loop BB24_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	8(%r13), %rax
	movq	(%rax,%rbx), %rsi
	addq	$8, %rbx
	testq	%rsi, %rsi
	jne	.LBB24_6
.LBB24_7:                               #   in Loop: Header=BB24_2 Depth=1
	movl	$.L.str.37, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	testb	$1, (%r13)
	movl	$.L.str.38, %esi
	cmoveq	%r15, %rsi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.40, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movslq	24(%r13), %rsi
	movq	%r12, %rdi
	callq	addReplyBulkLongLong
	testb	$1, (%r13)
	jne	.LBB24_8
# %bb.9:                                #   in Loop: Header=BB24_2 Depth=1
	movq	16(%r13), %r15
	testq	%r15, %r15
	je	.LBB24_10
# %bb.11:                               #   in Loop: Header=BB24_2 Depth=1
	callq	mstime
	subq	%rax, %r15
	movl	$0, %eax
	cmovsq	%rax, %r15
	jmp	.LBB24_12
.LBB24_10:                              #   in Loop: Header=BB24_2 Depth=1
	xorl	%r15d, %r15d
.LBB24_12:                              #   in Loop: Header=BB24_2 Depth=1
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	addReplyBulkLongLong
	movl	$.L.str.39, %r15d
	jmp	.LBB24_13
.LBB24_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	sentinelPendingScriptsCommand, .Lfunc_end24-sentinelPendingScriptsCommand
                                        # -- End function
	.globl	sentinelCallClientReconfScript # -- Begin function sentinelCallClientReconfScript
	.p2align	4, 0x90
	.type	sentinelCallClientReconfScript,@function
sentinelCallClientReconfScript:         # @sentinelCallClientReconfScript
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	cmpq	$0, 304(%rdi)
	je	.LBB25_2
# %bb.1:
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movslq	8(%rcx), %rdx
	leaq	-112(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	movslq	8(%r15), %rdx
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	movq	8(%rbx), %rsi
	movq	304(%rbx), %rdi
	cmpl	$131072, %r12d          # imm = 0x20000
	movl	$.L.str.44, %eax
	movl	$.L.str.45, %edx
	cmoveq	%rax, %rdx
	movq	(%r13), %r8
	subq	$8, %rsp
	movq	%r14, %rcx
	leaq	-112(%rbp), %r9
	xorl	%eax, %eax
	pushq	$0
	leaq	-80(%rbp), %rbx
	pushq	%rbx
	pushq	(%r15)
	callq	sentinelScheduleScriptExecution
	addq	$32, %rsp
.LBB25_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	sentinelCallClientReconfScript, .Lfunc_end25-sentinelCallClientReconfScript
                                        # -- End function
	.globl	createInstanceLink      # -- Begin function createInstanceLink
	.p2align	4, 0x90
	.type	createInstanceLink,@function
createInstanceLink:                     # @createInstanceLink
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$96, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, (%rbx)
	movl	$0, 8(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	movups	%xmm0, 32(%rbx)
	movq	$0, 88(%rbx)
	movq	$0, 48(%rbx)
	callq	mstime
	movq	%rax, 64(%rbx)
	movq	$0, 72(%rbx)
	callq	mstime
	movq	%rax, 56(%rbx)
	callq	mstime
	movq	%rax, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	createInstanceLink, .Lfunc_end26-createInstanceLink
                                        # -- End function
	.globl	instanceLinkCloseConnection # -- Begin function instanceLinkCloseConnection
	.p2align	4, 0x90
	.type	instanceLinkCloseConnection,@function
instanceLinkCloseConnection:            # @instanceLinkCloseConnection
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rsi, %rsi
	je	.LBB27_6
# %bb.1:
	cmpq	%rsi, 16(%rdi)
	je	.LBB27_2
# %bb.3:
	cmpq	%rsi, 24(%rdi)
	je	.LBB27_4
.LBB27_5:
	movq	$0, 224(%rsi)
	movl	$1, 4(%rdi)
	movq	%rsi, %rdi
	callq	redisAsyncFree
.LBB27_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB27_2:
	movq	$0, 16(%rdi)
	movl	$0, 8(%rdi)
	cmpq	%rsi, 24(%rdi)
	jne	.LBB27_5
.LBB27_4:
	movq	$0, 24(%rdi)
	jmp	.LBB27_5
.Lfunc_end27:
	.size	instanceLinkCloseConnection, .Lfunc_end27-instanceLinkCloseConnection
                                        # -- End function
	.globl	releaseInstanceLink     # -- Begin function releaseInstanceLink
	.p2align	4, 0x90
	.type	releaseInstanceLink,@function
releaseInstanceLink:                    # @releaseInstanceLink
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB28_20
# %bb.1:
	movq	%rdi, %rbx
	addl	$-1, %eax
	movl	%eax, (%rdi)
	je	.LBB28_9
# %bb.2:
	testq	%rsi, %rsi
	je	.LBB28_19
# %bb.3:
	movq	40(%rsi), %rax
	cmpq	$0, 16(%rax)
	je	.LBB28_19
# %bb.4:
	movq	16(%rbx), %rax
	movq	296(%rax), %rax
	jmp	.LBB28_5
	.p2align	4, 0x90
.LBB28_8:                               #   in Loop: Header=BB28_5 Depth=1
	movq	(%rax), %rax
.LBB28_5:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB28_19
# %bb.6:                                #   in Loop: Header=BB28_5 Depth=1
	cmpq	%rsi, 16(%rax)
	jne	.LBB28_8
# %bb.7:                                #   in Loop: Header=BB28_5 Depth=1
	movq	$sentinelDiscardReplyCallback, 8(%rax)
	movq	$0, 16(%rax)
	jmp	.LBB28_8
.LBB28_9:
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB28_10
# %bb.11:
	movq	$0, 16(%rbx)
	movl	$0, 8(%rbx)
	leaq	24(%rbx), %r14
	cmpq	%rdi, 24(%rbx)
	jne	.LBB28_13
# %bb.12:
	movq	$0, (%r14)
.LBB28_13:
	movq	$0, 224(%rdi)
	movl	$1, 4(%rbx)
	callq	redisAsyncFree
	jmp	.LBB28_14
.LBB28_10:
	leaq	24(%rbx), %r14
.LBB28_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB28_18
# %bb.15:
	cmpq	%rdi, 16(%rbx)
	jne	.LBB28_17
# %bb.16:
	movq	$0, 16(%rbx)
	movl	$0, 8(%rbx)
.LBB28_17:
	movq	$0, 24(%rbx)
	movq	$0, 224(%rdi)
	movl	$1, 4(%rbx)
	callq	redisAsyncFree
.LBB28_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	zfree
	xorl	%ebx, %ebx
.LBB28_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB28_20:
	movl	$.L.str.46, %edi
	movl	$.L.str.17, %esi
	movl	$998, %edx              # imm = 0x3E6
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end28:
	.size	releaseInstanceLink, .Lfunc_end28-releaseInstanceLink
                                        # -- End function
	.globl	sentinelDiscardReplyCallback # -- Begin function sentinelDiscardReplyCallback
	.p2align	4, 0x90
	.type	sentinelDiscardReplyCallback,@function
sentinelDiscardReplyCallback:           # @sentinelDiscardReplyCallback
# %bb.0:
	movq	224(%rdi), %rax
	testq	%rax, %rax
	je	.LBB29_2
# %bb.1:
	addl	$-1, 8(%rax)
.LBB29_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end29:
	.size	sentinelDiscardReplyCallback, .Lfunc_end29-sentinelDiscardReplyCallback
                                        # -- End function
	.globl	sentinelTryConnectionSharing # -- Begin function sentinelTryConnectionSharing
	.p2align	4, 0x90
	.type	sentinelTryConnectionSharing,@function
sentinelTryConnectionSharing:           # @sentinelTryConnectionSharing
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testb	$4, (%rdi)
	je	.LBB30_11
# %bb.1:
	movq	%rdi, %r12
	movl	$-1, %r14d
	cmpq	$0, 16(%rdi)
	je	.LBB30_10
# %bb.2:
	movq	40(%r12), %rax
	cmpl	$1, (%rax)
	jg	.LBB30_10
# %bb.3:
	movq	sentinel+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_8:                               #   in Loop: Header=BB30_4 Depth=1
	movq	%r15, %rdi
.LBB30_4:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB30_9
# %bb.5:                                #   in Loop: Header=BB30_4 Depth=1
	movq	8(%rax), %rax
	cmpq	192(%r12), %rax
	je	.LBB30_8
# %bb.6:                                #   in Loop: Header=BB30_4 Depth=1
	movq	136(%rax), %rdi
	movq	16(%r12), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	getSentinelRedisInstanceByAddrAndRunID
	testq	%rax, %rax
	je	.LBB30_8
# %bb.7:                                #   in Loop: Header=BB30_4 Depth=1
	movq	%rax, %rbx
	cmpq	%r12, %rax
	je	.LBB30_8
# %bb.12:
	movq	40(%r12), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	releaseInstanceLink
	movq	40(%rbx), %rax
	movq	%rax, 40(%r12)
	movq	40(%rbx), %rax
	addl	$1, (%rax)
	jmp	.LBB30_10
.LBB30_9:
	movq	%r15, %rdi
	callq	dictReleaseIterator
.LBB30_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_11:
	movl	$.L.str.47, %edi
	movl	$.L.str.17, %esi
	movl	$1041, %edx             # imm = 0x411
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end30:
	.size	sentinelTryConnectionSharing, .Lfunc_end30-sentinelTryConnectionSharing
                                        # -- End function
	.globl	getSentinelRedisInstanceByAddrAndRunID # -- Begin function getSentinelRedisInstanceByAddrAndRunID
	.p2align	4, 0x90
	.type	getSentinelRedisInstanceByAddrAndRunID,@function
getSentinelRedisInstanceByAddrAndRunID: # @getSentinelRedisInstanceByAddrAndRunID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rax
	orq	%rcx, %rax
	je	.LBB31_12
# %bb.1:
	movq	%rcx, %r13
	movl	%edx, %r15d
	movq	%rsi, %r12
	callq	dictGetIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	jmp	.LBB31_2
	.p2align	4, 0x90
.LBB31_9:                               #   in Loop: Header=BB31_2 Depth=1
	movq	%r14, %rdi
.LBB31_2:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB31_10
# %bb.3:                                #   in Loop: Header=BB31_2 Depth=1
	movq	8(%rax), %rbx
	testq	%r13, %r13
	je	.LBB31_6
# %bb.4:                                #   in Loop: Header=BB31_2 Depth=1
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB31_9
# %bb.5:                                #   in Loop: Header=BB31_2 Depth=1
	movq	%r13, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB31_9
.LBB31_6:                               #   in Loop: Header=BB31_2 Depth=1
	testq	%r12, %r12
	je	.LBB31_11
# %bb.7:                                #   in Loop: Header=BB31_2 Depth=1
	movq	32(%rbx), %rax
	movq	(%rax), %rdi
	movq	%r12, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB31_9
# %bb.8:                                #   in Loop: Header=BB31_2 Depth=1
	movq	32(%rbx), %rax
	cmpl	%r15d, 8(%rax)
	jne	.LBB31_9
	jmp	.LBB31_11
.LBB31_10:
	xorl	%ebx, %ebx
.LBB31_11:
	movq	%r14, %rdi
	callq	dictReleaseIterator
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
.LBB31_12:
	movl	$.L.str.56, %edi
	movl	$.L.str.17, %esi
	movl	$1355, %edx             # imm = 0x54B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end31:
	.size	getSentinelRedisInstanceByAddrAndRunID, .Lfunc_end31-getSentinelRedisInstanceByAddrAndRunID
                                        # -- End function
	.globl	sentinelUpdateSentinelAddressInAllMasters # -- Begin function sentinelUpdateSentinelAddressInAllMasters
	.p2align	4, 0x90
	.type	sentinelUpdateSentinelAddressInAllMasters,@function
sentinelUpdateSentinelAddressInAllMasters: # @sentinelUpdateSentinelAddressInAllMasters
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testb	$4, (%rdi)
	je	.LBB32_20
# %bb.1:
	movq	%rdi, %r12
	movq	sentinel+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r13
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB32_17
# %bb.2:
	xorl	%r15d, %r15d
	movq	%r13, -48(%rbp)         # 8-byte Spill
	jmp	.LBB32_4
	.p2align	4, 0x90
.LBB32_3:                               #   in Loop: Header=BB32_4 Depth=1
	movq	%r13, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB32_15
.LBB32_4:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	136(%rax), %rdi
	movq	16(%r12), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	getSentinelRedisInstanceByAddrAndRunID
	testq	%rax, %rax
	je	.LBB32_3
# %bb.5:                                #   in Loop: Header=BB32_4 Depth=1
	movq	%rax, %r14
	movq	40(%rax), %rax
	movq	16(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB32_9
# %bb.6:                                #   in Loop: Header=BB32_4 Depth=1
	movq	$0, 16(%rax)
	movl	$0, 8(%rax)
	cmpq	%rdi, 24(%rax)
	jne	.LBB32_8
# %bb.7:                                #   in Loop: Header=BB32_4 Depth=1
	movq	$0, 24(%rax)
.LBB32_8:                               #   in Loop: Header=BB32_4 Depth=1
	movq	$0, 224(%rdi)
	movl	$1, 4(%rax)
	callq	redisAsyncFree
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rax
.LBB32_9:                               #   in Loop: Header=BB32_4 Depth=1
	movq	24(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB32_13
# %bb.10:                               #   in Loop: Header=BB32_4 Depth=1
	cmpq	%rdi, 16(%rax)
	jne	.LBB32_12
# %bb.11:                               #   in Loop: Header=BB32_4 Depth=1
	movq	$0, 16(%rax)
	movl	$0, 8(%rax)
.LBB32_12:                              #   in Loop: Header=BB32_4 Depth=1
	movq	$0, 24(%rax)
	movq	$0, 224(%rdi)
	movl	$1, 4(%rax)
	callq	redisAsyncFree
	movl	$42, __A_VARIABLE(%rip)
.LBB32_13:                              #   in Loop: Header=BB32_4 Depth=1
	cmpq	%r12, %r14
	je	.LBB32_3
# %bb.14:                               #   in Loop: Header=BB32_4 Depth=1
	movq	32(%r14), %r13
	movq	(%r13), %rdi
	callq	sdsfree
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r12), %r13
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	(%r13), %rdi
	callq	sdsnew
	movq	%rax, (%rbx)
	movl	8(%r13), %eax
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, 32(%r14)
	addl	$1, %r15d
	jmp	.LBB32_3
.LBB32_15:
	movq	%r13, %rdi
	callq	dictReleaseIterator
	testl	%r15d, %r15d
	je	.LBB32_18
# %bb.16:
	movl	$.L.str.48, %esi
	movl	$.L.str.49, %ecx
	movl	$2, %edi
	movq	%r12, %rdx
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	sentinelEvent
	jmp	.LBB32_19
.LBB32_17:
	movq	%r13, %rdi
	callq	dictReleaseIterator
.LBB32_18:
	xorl	%r15d, %r15d
.LBB32_19:
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
.LBB32_20:
	movl	$.L.str.47, %edi
	movl	$.L.str.17, %esi
	movl	$1077, %edx             # imm = 0x435
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end32:
	.size	sentinelUpdateSentinelAddressInAllMasters, .Lfunc_end32-sentinelUpdateSentinelAddressInAllMasters
                                        # -- End function
	.globl	instanceLinkConnectionError # -- Begin function instanceLinkConnectionError
	.p2align	4, 0x90
	.type	instanceLinkConnectionError,@function
instanceLinkConnectionError:            # @instanceLinkConnectionError
# %bb.0:
	movq	224(%rdi), %rax
	testq	%rax, %rax
	je	.LBB33_2
# %bb.1:
	xorl	%ecx, %ecx
	cmpq	%rdi, 24(%rax)
	sete	%cl
	movq	$0, 16(%rax,%rcx,8)
	movl	$1, 4(%rax)
.LBB33_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end33:
	.size	instanceLinkConnectionError, .Lfunc_end33-instanceLinkConnectionError
                                        # -- End function
	.globl	sentinelLinkEstablishedCallback # -- Begin function sentinelLinkEstablishedCallback
	.p2align	4, 0x90
	.type	sentinelLinkEstablishedCallback,@function
sentinelLinkEstablishedCallback:        # @sentinelLinkEstablishedCallback
# %bb.0:
	testl	%esi, %esi
	je	.LBB34_4
# %bb.1:
	movq	224(%rdi), %rax
	testq	%rax, %rax
	je	.LBB34_3
# %bb.2:
	xorl	%ecx, %ecx
	cmpq	%rdi, 24(%rax)
	sete	%cl
	movq	$0, 16(%rax,%rcx,8)
	movl	$1, 4(%rax)
.LBB34_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end34:
	.size	sentinelLinkEstablishedCallback, .Lfunc_end34-sentinelLinkEstablishedCallback
                                        # -- End function
	.globl	sentinelDisconnectCallback # -- Begin function sentinelDisconnectCallback
	.p2align	4, 0x90
	.type	sentinelDisconnectCallback,@function
sentinelDisconnectCallback:             # @sentinelDisconnectCallback
# %bb.0:
	movq	224(%rdi), %rax
	testq	%rax, %rax
	je	.LBB35_2
# %bb.1:
	xorl	%ecx, %ecx
	cmpq	%rdi, 24(%rax)
	sete	%cl
	movq	$0, 16(%rax,%rcx,8)
	movl	$1, 4(%rax)
.LBB35_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end35:
	.size	sentinelDisconnectCallback, .Lfunc_end35-sentinelDisconnectCallback
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function createSentinelRedisInstance
.LCPI36_0:
	.zero	16
	.text
	.globl	createSentinelRedisInstance
	.p2align	4, 0x90
	.type	createSentinelRedisInstance,@function
createSentinelRedisInstance:            # @createSentinelRedisInstance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%esi, %r13d
	testb	$7, %r13b
	je	.LBB36_27
# %bb.1:
	movq	%r9, %rbx
	movl	%r8d, %r15d
	movl	%ecx, %r14d
	movq	%rdx, %r12
	testb	$1, %r13b
	jne	.LBB36_3
# %bb.2:
	testq	%rbx, %rbx
	je	.LBB36_28
.LBB36_3:
	cmpl	$65536, %r14d           # imm = 0x10000
	jb	.LBB36_5
# %bb.4:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB36_13
.LBB36_5:
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	leaq	-144(%rbp), %rdx
	movl	$46, %ecx
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	anetResolve
	cmpl	$-1, %eax
	je	.LBB36_12
# %bb.6:
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r15
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	callq	sdsnew
	movq	%rax, (%r15)
	movl	%r14d, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB36_14
# %bb.7:
	testb	$2, %r13b
	movq	-64(%rbp), %rdi         # 8-byte Reload
	je	.LBB36_9
# %bb.8:
	movl	$78, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	anetFormatAddr
	movq	%rbx, %rdi
.LBB36_9:
	movl	$sentinel+56, %eax
	testb	$1, %r13b
	jne	.LBB36_20
# %bb.10:
	testb	$2, %r13b
	je	.LBB36_17
# %bb.11:
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$144, %rax
	jmp	.LBB36_20
.LBB36_12:
	callq	__errno
	movl	$2, (%rax)
.LBB36_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB36_14:
	xorl	%ebx, %ebx
.LBB36_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_17:
	testb	$4, %r13b
	jne	.LBB36_19
# %bb.18:
	xorl	%r12d, %r12d
	jmp	.LBB36_21
.LBB36_19:
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$136, %rax
.LBB36_20:
	movq	(%rax), %r12
.LBB36_21:
	callq	sdsnew
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB36_23
# %bb.22:
	movq	(%r15), %rdi
	callq	sdsfree
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	sdsfree
	callq	__errno
	movl	$16, (%rax)
	jmp	.LBB36_14
.LBB36_23:
	movl	$320, %edi              # imm = 0x140
	callq	zmalloc
	movq	%rax, %rbx
	movl	%r13d, (%rax)
	movq	%r14, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movq	%r15, 32(%rax)
	movl	$96, %edi
	callq	zmalloc
	movq	%rax, %r14
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, (%r14)
	movl	$0, 8(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r14)
	movups	%xmm0, 32(%r14)
	movq	$0, 88(%r14)
	movq	$0, 48(%r14)
	callq	mstime
	movq	%rax, 64(%r14)
	movq	$0, 72(%r14)
	callq	mstime
	movq	%rax, 56(%r14)
	callq	mstime
	movq	%rax, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, 40(%rbx)
	callq	mstime
	movq	%rax, 48(%rbx)
	callq	mstime
	movq	%rax, 56(%rbx)
	callq	mstime
	movq	%rax, 64(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rbx)
	movq	-56(%rbp), %r14         # 8-byte Reload
	testq	%r14, %r14
	je	.LBB36_25
# %bb.24:
	movq	88(%r14), %rax
	jmp	.LBB36_26
.LBB36_25:
	movl	$30000, %eax            # imm = 0x7530
.LBB36_26:
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	%rax, 88(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 160(%rbx)
	movl	$100, 176(%rbx)
	movq	$0, 184(%rbx)
	movq	$0, 200(%rbx)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 208(%rbx)
	movq	$0, 216(%rbx)
	movl	$instancesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 136(%rbx)
	movl	%r15d, 152(%rbx)
	movl	$1, 156(%rbx)
	movq	%r14, 192(%rbx)
	movl	$instancesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 144(%rbx)
	movq	$0, 96(%rbx)
	movl	$renamedCommandsDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 104(%rbx)
	movq	$0, 224(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 232(%rbx)
	movl	$0, 248(%rbx)
	movups	%xmm0, 256(%rbx)
	xorps	%xmm1, %xmm1
	movl	$180000, %eax           # imm = 0x2BF20
	movq	%rax, %xmm0
	movdqu	%xmm0, 272(%rbx)
	movq	$0, 288(%rbx)
	movups	%xmm1, 296(%rbx)
	movq	$0, 312(%rbx)
	movl	(%rbx), %eax
	andl	$3, %eax
	movl	%eax, 112(%rbx)
	callq	mstime
	movq	%rax, 120(%rbx)
	callq	mstime
	movq	%rax, 128(%rbx)
	movq	8(%rbx), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	dictAdd
	jmp	.LBB36_15
.LBB36_27:
	movl	$.L.str.50, %edi
	movl	$.L.str.17, %esi
	movl	$1173, %edx             # imm = 0x495
	jmp	.LBB36_29
.LBB36_28:
	movl	$.L.str.51, %edi
	movl	$.L.str.17, %esi
	movl	$1174, %edx             # imm = 0x496
.LBB36_29:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end36:
	.size	createSentinelRedisInstance, .Lfunc_end36-createSentinelRedisInstance
                                        # -- End function
	.globl	sentinelRedisInstanceLookupSlave # -- Begin function sentinelRedisInstanceLookupSlave
	.p2align	4, 0x90
	.type	sentinelRedisInstanceLookupSlave,@function
sentinelRedisInstanceLookupSlave:       # @sentinelRedisInstanceLookupSlave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
	testb	$1, (%rdi)
	je	.LBB37_2
# %bb.1:
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rdi, %r15
	leaq	-112(%rbp), %r14
	movl	$78, %esi
	movq	%r14, %rdi
	callq	anetFormatAddr
	movq	%r14, %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	144(%r15), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB37_2:
	movl	$.L.str.52, %edi
	movl	$.L.str.17, %esi
	movl	$1297, %edx             # imm = 0x511
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end37:
	.size	sentinelRedisInstanceLookupSlave, .Lfunc_end37-sentinelRedisInstanceLookupSlave
                                        # -- End function
	.globl	removeMatchingSentinelFromMaster # -- Begin function removeMatchingSentinelFromMaster
	.p2align	4, 0x90
	.type	removeMatchingSentinelFromMaster,@function
removeMatchingSentinelFromMaster:       # @removeMatchingSentinelFromMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rsi, %rsi
	je	.LBB38_1
# %bb.2:
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	136(%rdi), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r13
	movq	%rax, %rdi
	callq	dictNext
	xorl	%r12d, %r12d
	jmp	.LBB38_3
	.p2align	4, 0x90
.LBB38_7:                               #   in Loop: Header=BB38_3 Depth=1
	movq	%r13, %rdi
	callq	dictNext
.LBB38_3:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB38_8
# %bb.4:                                #   in Loop: Header=BB38_3 Depth=1
	movq	8(%rax), %rbx
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB38_7
# %bb.5:                                #   in Loop: Header=BB38_3 Depth=1
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB38_7
# %bb.6:                                #   in Loop: Header=BB38_3 Depth=1
	movq	136(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	dictDelete
	addl	$1, %r12d
	jmp	.LBB38_7
.LBB38_8:
	movq	%r13, %rdi
	callq	dictReleaseIterator
	jmp	.LBB38_9
.LBB38_1:
	xorl	%r12d, %r12d
.LBB38_9:
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
.Lfunc_end38:
	.size	removeMatchingSentinelFromMaster, .Lfunc_end38-removeMatchingSentinelFromMaster
                                        # -- End function
	.globl	sentinelGetMasterByName # -- Begin function sentinelGetMasterByName
	.p2align	4, 0x90
	.type	sentinelGetMasterByName,@function
sentinelGetMasterByName:                # @sentinelGetMasterByName
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end39:
	.size	sentinelGetMasterByName, .Lfunc_end39-sentinelGetMasterByName
                                        # -- End function
	.globl	sentinelAddFlagsToDictOfRedisInstances # -- Begin function sentinelAddFlagsToDictOfRedisInstances
	.p2align	4, 0x90
	.type	sentinelAddFlagsToDictOfRedisInstances,@function
sentinelAddFlagsToDictOfRedisInstances: # @sentinelAddFlagsToDictOfRedisInstances
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB40_2:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB40_3
# %bb.1:                                #   in Loop: Header=BB40_2 Depth=1
	movq	8(%rax), %rax
	orl	%r14d, (%rax)
	movq	%rbx, %rdi
	jmp	.LBB40_2
.LBB40_3:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end40:
	.size	sentinelAddFlagsToDictOfRedisInstances, .Lfunc_end40-sentinelAddFlagsToDictOfRedisInstances
                                        # -- End function
	.globl	sentinelDelFlagsToDictOfRedisInstances # -- Begin function sentinelDelFlagsToDictOfRedisInstances
	.p2align	4, 0x90
	.type	sentinelDelFlagsToDictOfRedisInstances,@function
sentinelDelFlagsToDictOfRedisInstances: # @sentinelDelFlagsToDictOfRedisInstances
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB41_3
# %bb.1:
	notl	%r14d
	.p2align	4, 0x90
.LBB41_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	andl	%r14d, (%rax)
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB41_2
.LBB41_3:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end41:
	.size	sentinelDelFlagsToDictOfRedisInstances, .Lfunc_end41-sentinelDelFlagsToDictOfRedisInstances
                                        # -- End function
	.globl	sentinelResetMaster     # -- Begin function sentinelResetMaster
	.p2align	4, 0x90
	.type	sentinelResetMaster,@function
sentinelResetMaster:                    # @sentinelResetMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testb	$1, (%rdi)
	je	.LBB42_16
# %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	144(%rdi), %rdi
	callq	dictRelease
	movl	$instancesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 144(%rbx)
	testb	$1, %r14b
	jne	.LBB42_3
# %bb.2:
	movq	136(%rbx), %rdi
	callq	dictRelease
	movl	$instancesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 136(%rbx)
.LBB42_3:
	movq	40(%rbx), %rax
	movq	16(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB42_7
# %bb.4:
	movq	$0, 16(%rax)
	movl	$0, 8(%rax)
	cmpq	%rdi, 24(%rax)
	jne	.LBB42_6
# %bb.5:
	movq	$0, 24(%rax)
.LBB42_6:
	movq	$0, 224(%rdi)
	movl	$1, 4(%rax)
	callq	redisAsyncFree
	movq	40(%rbx), %rax
.LBB42_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB42_11
# %bb.8:
	cmpq	%rdi, 16(%rax)
	jne	.LBB42_10
# %bb.9:
	movq	$0, 16(%rax)
	movl	$0, 8(%rax)
.LBB42_10:
	movq	$0, 24(%rax)
	movq	$0, 224(%rdi)
	movl	$1, 4(%rax)
	callq	redisAsyncFree
.LBB42_11:
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, (%rbx)
	movq	224(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB42_13
# %bb.12:
	callq	sdsfree
	movq	$0, 224(%rbx)
.LBB42_13:
	movl	$0, 248(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 256(%rbx)
	movq	$0, 288(%rbx)
	movq	16(%rbx), %rdi
	callq	sdsfree
	movq	200(%rbx), %rdi
	callq	sdsfree
	movq	$0, 16(%rbx)
	movq	$0, 200(%rbx)
	callq	mstime
	movq	40(%rbx), %rcx
	movq	%rax, 64(%rcx)
	movq	$0, 72(%rcx)
	callq	mstime
	movq	40(%rbx), %rcx
	movq	%rax, 56(%rcx)
	callq	mstime
	movq	40(%rbx), %rcx
	movq	%rax, 80(%rcx)
	callq	mstime
	movq	%rax, 120(%rbx)
	movl	$1, 112(%rbx)
	testl	$65536, %r14d           # imm = 0x10000
	je	.LBB42_15
# %bb.14:
	movl	$.L.str.57, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB42_15:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB42_16:
	movl	$.L.str.52, %edi
	movl	$.L.str.17, %esi
	movl	$1423, %edx             # imm = 0x58F
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end42:
	.size	sentinelResetMaster, .Lfunc_end42-sentinelResetMaster
                                        # -- End function
	.globl	sentinelResetMastersByPattern # -- Begin function sentinelResetMastersByPattern
	.p2align	4, 0x90
	.type	sentinelResetMastersByPattern,@function
sentinelResetMastersByPattern:          # @sentinelResetMastersByPattern
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
	movq	%rdi, %r15
	movq	sentinel+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r13
	movq	%rax, %rdi
	callq	dictNext
	xorl	%r12d, %r12d
	jmp	.LBB43_1
	.p2align	4, 0x90
.LBB43_5:                               #   in Loop: Header=BB43_1 Depth=1
	movq	%r13, %rdi
	callq	dictNext
.LBB43_1:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB43_6
# %bb.2:                                #   in Loop: Header=BB43_1 Depth=1
	movq	8(%rax), %rbx
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB43_5
# %bb.3:                                #   in Loop: Header=BB43_1 Depth=1
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	stringmatch
	testl	%eax, %eax
	je	.LBB43_5
# %bb.4:                                #   in Loop: Header=BB43_1 Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	sentinelResetMaster
	addl	$1, %r12d
	jmp	.LBB43_5
.LBB43_6:
	movq	%r13, %rdi
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
.Lfunc_end43:
	.size	sentinelResetMastersByPattern, .Lfunc_end43-sentinelResetMastersByPattern
                                        # -- End function
	.globl	sentinelResetMasterAndChangeAddress # -- Begin function sentinelResetMasterAndChangeAddress
	.p2align	4, 0x90
	.type	sentinelResetMasterAndChangeAddress,@function
sentinelResetMasterAndChangeAddress:    # @sentinelResetMasterAndChangeAddress
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	cmpl	$65536, %edx            # imm = 0x10000
	jb	.LBB44_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB44_18
.LBB44_2:
	movl	%edx, %ebx
	leaq	-128(%rbp), %rdx
	movl	$46, %ecx
	xorl	%edi, %edi
	callq	anetResolve
	cmpl	$-1, %eax
	je	.LBB44_17
# %bb.3:
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r15
	leaq	-128(%rbp), %rdi
	callq	sdsnew
	movq	%rax, (%r15)
	movl	%ebx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB44_19
# %bb.4:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	144(%rax), %rdi
	callq	dictGetIterator
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB44_20
# %bb.5:                                # %.preheader
	xorl	%r14d, %r14d
	leaq	-128(%rbp), %r12
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jmp	.LBB44_9
	.p2align	4, 0x90
.LBB44_6:                               #   in Loop: Header=BB44_9 Depth=1
	callq	__errno
	movl	$22, (%rax)
	xorl	%ebx, %ebx
.LBB44_7:                               #   in Loop: Header=BB44_9 Depth=1
	leal	1(%r15), %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, (%r13,%r15,8)
	movq	%r13, %r14
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB44_8:                               #   in Loop: Header=BB44_9 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	dictNext
	testq	%rax, %rax
	je	.LBB44_21
.LBB44_9:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rbx
	movq	32(%rbx), %rax
	movl	8(%rax), %ecx
	cmpl	8(%r15), %ecx
	jne	.LBB44_11
# %bb.10:                               #   in Loop: Header=BB44_9 Depth=1
	movq	(%rax), %rdi
	movq	(%r15), %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB44_12
	jmp	.LBB44_8
	.p2align	4, 0x90
.LBB44_11:                              #   in Loop: Header=BB44_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB44_12:                              #   in Loop: Header=BB44_9 Depth=1
	movslq	-48(%rbp), %r15         # 4-byte Folded Reload
	leaq	8(,%r15,8), %rsi
	movq	%r14, %rdi
	callq	zrealloc
	movq	%rax, %r13
	movq	32(%rbx), %rax
	movl	8(%rax), %r14d
	cmpl	$65536, %r14d           # imm = 0x10000
	jae	.LBB44_6
# %bb.13:                               #   in Loop: Header=BB44_9 Depth=1
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movq	(%rax), %rsi
	movl	$46, %ecx
	xorl	%edi, %edi
	movq	%r12, %r13
	movq	%r12, %rdx
	callq	anetResolve
	cmpl	$-1, %eax
	je	.LBB44_15
# %bb.14:                               #   in Loop: Header=BB44_9 Depth=1
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	sdsnew
	movq	%rax, (%rbx)
	movl	%r14d, 8(%rbx)
	jmp	.LBB44_16
.LBB44_15:                              #   in Loop: Header=BB44_9 Depth=1
	callq	__errno
	movl	$2, (%rax)
	xorl	%ebx, %ebx
.LBB44_16:                              #   in Loop: Header=BB44_9 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB44_7
.LBB44_17:
	callq	__errno
	movl	$2, (%rax)
.LBB44_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB44_19:
	movl	$-1, %eax
.LBB44_38:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_20:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
.LBB44_21:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	dictReleaseIterator
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rax
	movl	8(%r15), %ecx
	cmpl	8(%rax), %ecx
	jne	.LBB44_24
# %bb.22:
	movq	(%r15), %rdi
	movq	(%rax), %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB44_25
# %bb.23:
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB44_32
.LBB44_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB44_25:
	movq	%r15, %r12
	movslq	-48(%rbp), %rax         # 4-byte Folded Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	8(,%rax,8), %rsi
	movq	%r13, %rdi
	callq	zrealloc
	movq	%rax, %r14
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rax
	movl	8(%rax), %r15d
	cmpl	$65536, %r15d           # imm = 0x10000
	jb	.LBB44_27
# %bb.26:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB44_30
.LBB44_27:
	movq	(%rax), %rsi
	leaq	-128(%rbp), %rdx
	movl	$46, %ecx
	xorl	%edi, %edi
	callq	anetResolve
	cmpl	$-1, %eax
	je	.LBB44_29
# %bb.28:
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	leaq	-128(%rbp), %rdi
	callq	sdsnew
	movq	%rax, (%rbx)
	movl	%r15d, 8(%rbx)
	jmp	.LBB44_31
.LBB44_29:
	callq	__errno
	movl	$2, (%rax)
.LBB44_30:
	xorl	%ebx, %ebx
.LBB44_31:
	movq	%r12, %r15
	movq	-48(%rbp), %rax         # 8-byte Reload
	leal	1(%rax), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, (%r14,%rax,8)
.LBB44_32:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	sentinelResetMaster
	movq	32(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r15, 32(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rbx)
	testl	%r12d, %r12d
	jle	.LBB44_37
# %bb.33:
	movl	%r12d, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB44_35
	.p2align	4, 0x90
.LBB44_34:                              #   in Loop: Header=BB44_35 Depth=1
	addq	$1, %rbx
	cmpq	%rbx, %r15
	je	.LBB44_37
.LBB44_35:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rax
	movq	(%rax), %rdx
	movl	8(%rax), %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movl	152(%r9), %r8d
	xorl	%edi, %edi
	movl	$2, %esi
	callq	createSentinelRedisInstance
	movq	%rax, %r13
	movq	(%r14,%rbx,8), %r12
	movq	(%r12), %rdi
	callq	sdsfree
	movq	%r12, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB44_34
# %bb.36:                               #   in Loop: Header=BB44_35 Depth=1
	movl	$.L.str.59, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	jmp	.LBB44_34
.LBB44_37:
	movq	%r14, %rdi
	callq	zfree
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	callq	sentinelFlushConfig
	xorl	%eax, %eax
	jmp	.LBB44_38
.Lfunc_end44:
	.size	sentinelResetMasterAndChangeAddress, .Lfunc_end44-sentinelResetMasterAndChangeAddress
                                        # -- End function
	.globl	sentinelRedisInstanceNoDownFor # -- Begin function sentinelRedisInstanceNoDownFor
	.p2align	4, 0x90
	.type	sentinelRedisInstanceNoDownFor,@function
sentinelRedisInstanceNoDownFor:         # @sentinelRedisInstanceNoDownFor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	72(%rdi), %rbx
	movq	80(%rdi), %rax
	cmpq	%rbx, %rax
	cmovgeq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB45_1
# %bb.2:
	movq	%rsi, %r14
	callq	mstime
	movq	%rax, %rcx
	subq	%rbx, %rcx
	xorl	%eax, %eax
	cmpq	%r14, %rcx
	setg	%al
	jmp	.LBB45_3
.LBB45_1:
	movl	$1, %eax
.LBB45_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end45:
	.size	sentinelRedisInstanceNoDownFor, .Lfunc_end45-sentinelRedisInstanceNoDownFor
                                        # -- End function
	.globl	sentinelGetCurrentMasterAddress # -- Begin function sentinelGetCurrentMasterAddress
	.p2align	4, 0x90
	.type	sentinelGetCurrentMasterAddress,@function
sentinelGetCurrentMasterAddress:        # @sentinelGetCurrentMasterAddress
# %bb.0:
	testb	$64, (%rdi)
	je	.LBB46_3
# %bb.1:
	movq	288(%rdi), %rax
	testq	%rax, %rax
	je	.LBB46_3
# %bb.2:
	cmpl	$4, 248(%rdi)
	jg	.LBB46_4
.LBB46_3:
	movq	%rdi, %rax
.LBB46_4:
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end46:
	.size	sentinelGetCurrentMasterAddress, .Lfunc_end46-sentinelGetCurrentMasterAddress
                                        # -- End function
	.globl	sentinelPropagateDownAfterPeriod # -- Begin function sentinelPropagateDownAfterPeriod
	.p2align	4, 0x90
	.type	sentinelPropagateDownAfterPeriod,@function
sentinelPropagateDownAfterPeriod:       # @sentinelPropagateDownAfterPeriod
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movq	144(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	136(%r14), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	testq	%rdi, %rdi
	je	.LBB47_6
# %bb.1:
	xorl	%r15d, %r15d
	jmp	.LBB47_2
	.p2align	4, 0x90
.LBB47_5:                               #   in Loop: Header=BB47_2 Depth=1
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movq	-40(%rbp,%r15,8), %rdi
	addq	$1, %r15
	testq	%rdi, %rdi
	je	.LBB47_6
.LBB47_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_4 Depth 2
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB47_4:                               #   Parent Loop BB47_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB47_5
# %bb.3:                                #   in Loop: Header=BB47_4 Depth=2
	movq	8(%rax), %rax
	movq	88(%r14), %rcx
	movq	%rcx, 88(%rax)
	movq	%rbx, %rdi
	jmp	.LBB47_4
.LBB47_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	sentinelPropagateDownAfterPeriod, .Lfunc_end47-sentinelPropagateDownAfterPeriod
                                        # -- End function
	.globl	sentinelGetInstanceTypeString # -- Begin function sentinelGetInstanceTypeString
	.p2align	4, 0x90
	.type	sentinelGetInstanceTypeString,@function
sentinelGetInstanceTypeString:          # @sentinelGetInstanceTypeString
# %bb.0:
	movl	(%rdi), %ecx
	movl	$.L.str.53, %eax
	testb	$1, %cl
	jne	.LBB48_3
# %bb.1:
	movl	$.L.str.54, %eax
	testb	$2, %cl
	jne	.LBB48_3
# %bb.2:
	testb	$4, %cl
	movl	$.L.str.55, %ecx
	movl	$.L.str.2, %eax
	cmoveq	%rcx, %rax
.LBB48_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end48:
	.size	sentinelGetInstanceTypeString, .Lfunc_end48-sentinelGetInstanceTypeString
                                        # -- End function
	.globl	sentinelInstanceMapCommand # -- Begin function sentinelInstanceMapCommand
	.p2align	4, 0x90
	.type	sentinelInstanceMapCommand,@function
sentinelInstanceMapCommand:             # @sentinelInstanceMapCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	sdsnew
	movq	%rax, %r15
	movq	192(%rbx), %rax
	testq	%rax, %rax
	cmoveq	%rbx, %rax
	movq	104(%rax), %rdi
	movq	%r15, %rsi
	callq	dictFetchValue
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	cmoveq	%r14, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	sentinelInstanceMapCommand, .Lfunc_end49-sentinelInstanceMapCommand
                                        # -- End function
	.globl	sentinelHandleConfiguration # -- Begin function sentinelHandleConfiguration
	.p2align	4, 0x90
	.type	sentinelHandleConfiguration,@function
sentinelHandleConfiguration:            # @sentinelHandleConfiguration
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$5, %r15d
	jne	.LBB50_8
# %bb.1:
	testl	%eax, %eax
	jne	.LBB50_8
# %bb.2:
	movq	32(%r14), %rdi
	callq	atoi
	testl	%eax, %eax
	jle	.LBB50_23
# %bb.3:
	movl	%eax, %ebx
	movq	8(%r14), %r15
	movq	16(%r14), %r12
	movq	24(%r14), %rdi
	callq	atoi
	movq	%r15, %rdi
	movl	$1, %esi
	movq	%r12, %rdx
	movl	%eax, %ecx
	movl	%ebx, %r8d
	xorl	%r9d, %r9d
	callq	createSentinelRedisInstance
	testq	%rax, %rax
	jne	.LBB50_29
# %bb.4:
	callq	__errno
	movl	(%rax), %eax
	cmpl	$22, %eax
	je	.LBB50_44
# %bb.5:
	cmpl	$16, %eax
	je	.LBB50_45
# %bb.6:
	cmpl	$2, %eax
	jne	.LBB50_29
# %bb.7:
	movl	$.L.str.63, %eax
	jmp	.LBB50_30
.LBB50_8:
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB50_18
# %bb.9:
	testl	%eax, %eax
	jne	.LBB50_18
# %bb.10:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.11:
	movq	16(%r14), %rdi
	callq	atoi
	cltq
	movq	%rax, 88(%r15)
	testl	%eax, %eax
	jle	.LBB50_37
# %bb.12:
	movq	144(%r15), %rdi
	movq	%rdi, -64(%rbp)
	movq	136(%r15), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	testq	%rdi, %rdi
	je	.LBB50_28
# %bb.13:
	xorl	%r14d, %r14d
	jmp	.LBB50_15
	.p2align	4, 0x90
.LBB50_14:                              #   in Loop: Header=BB50_15 Depth=1
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movq	-56(%rbp,%r14,8), %rdi
	addq	$1, %r14
	testq	%rdi, %rdi
	je	.LBB50_28
.LBB50_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_16 Depth 2
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB50_16:                              #   Parent Loop BB50_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB50_14
# %bb.17:                               #   in Loop: Header=BB50_16 Depth=2
	movq	8(%rax), %rax
	movq	88(%r15), %rcx
	movq	%rcx, 88(%rax)
	movq	%rbx, %rdi
	jmp	.LBB50_16
.LBB50_18:
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB50_24
# %bb.19:
	testl	%eax, %eax
	jne	.LBB50_24
# %bb.20:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.21:
	movq	16(%r14), %rdi
	callq	atoi
	cltq
	movq	%rax, 272(%r15)
	testl	%eax, %eax
	jg	.LBB50_29
.LBB50_37:
	movl	$.L.str.67, %eax
	jmp	.LBB50_30
.LBB50_23:
	movl	$.L.str.61, %eax
	jmp	.LBB50_30
.LBB50_24:
	movl	$.L.str.69, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB50_32
# %bb.25:
	testl	%eax, %eax
	jne	.LBB50_32
# %bb.26:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.27:
	movq	16(%r14), %rdi
	callq	atoi
	movl	%eax, 156(%r15)
	jmp	.LBB50_29
.LBB50_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB50_29:
	xorl	%eax, %eax
	jmp	.LBB50_30
.LBB50_32:
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB50_39
# %bb.33:
	testl	%eax, %eax
	jne	.LBB50_39
# %bb.34:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.35:
	movq	16(%r14), %rdi
	movl	$1, %esi
	callq	access
	cmpl	$-1, %eax
	je	.LBB50_56
# %bb.36:
	movq	16(%r14), %rdi
	callq	sdsnew
	movq	%rax, 296(%r15)
	jmp	.LBB50_29
.LBB50_39:
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB50_47
# %bb.40:
	testl	%eax, %eax
	jne	.LBB50_47
# %bb.41:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.42:
	movq	16(%r14), %rdi
	movl	$1, %esi
	callq	access
	cmpl	$-1, %eax
	je	.LBB50_62
# %bb.43:
	movq	16(%r14), %rdi
	callq	sdsnew
	movq	%rax, 304(%r15)
	jmp	.LBB50_29
.LBB50_44:
	movl	$.L.str.64, %eax
	jmp	.LBB50_30
.LBB50_45:
	movl	$.L.str.62, %eax
	jmp	.LBB50_30
.LBB50_47:
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB50_52
# %bb.48:
	testl	%eax, %eax
	jne	.LBB50_52
# %bb.49:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.50:
	movq	16(%r14), %rdi
	callq	sdsnew
	movq	%rax, 160(%r15)
	jmp	.LBB50_29
.LBB50_52:
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r15d
	jne	.LBB50_58
# %bb.53:
	testl	%eax, %eax
	jne	.LBB50_58
# %bb.54:
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	cmpq	sentinel+48(%rip), %rax
	jbe	.LBB50_29
.LBB50_55:
	movq	%rax, sentinel+48(%rip)
	jmp	.LBB50_29
.LBB50_56:
	movl	$.L.str.71, %eax
	jmp	.LBB50_30
.LBB50_58:
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r15d
	jne	.LBB50_64
# %bb.59:
	testl	%eax, %eax
	jne	.LBB50_64
# %bb.60:
	movq	8(%r14), %rdi
	callq	strlen
	movq	%rax, %rcx
	movl	$.L.str.77, %eax
	cmpq	$40, %rcx
	jne	.LBB50_30
# %bb.61:
	movq	8(%r14), %rsi
	movl	$sentinel, %edi
	movl	$40, %edx
	callq	memcpy
	jmp	.LBB50_29
.LBB50_62:
	movl	$.L.str.73, %eax
	jmp	.LBB50_30
.LBB50_64:
	movl	$.L.str.78, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB50_69
# %bb.65:
	testl	%eax, %eax
	jne	.LBB50_69
# %bb.66:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.67:
	movq	16(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	%rax, 24(%r15)
	cmpq	sentinel+48(%rip), %rax
	jbe	.LBB50_29
	jmp	.LBB50_55
.LBB50_69:
	movl	$.L.str.79, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB50_73
# %bb.70:
	testl	%eax, %eax
	jne	.LBB50_73
# %bb.71:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.72:
	movq	16(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	%rax, 232(%r15)
	jmp	.LBB50_29
.LBB50_73:
	movl	$.L.str.80, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB50_81
# %bb.74:
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$4, %r15d
	jne	.LBB50_82
# %bb.75:
	testl	%eax, %eax
	jne	.LBB50_82
.LBB50_76:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.77:
	movq	16(%r14), %rbx
	movq	24(%r14), %rdi
	callq	atoi
	movl	152(%r15), %r8d
	xorl	%edi, %edi
	movl	$2, %esi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	movq	%r15, %r9
	callq	createSentinelRedisInstance
	testq	%rax, %rax
	jne	.LBB50_29
# %bb.78:
	movl	$.L.str.82, %eax
	jmp	.LBB50_30
.LBB50_81:
	cmpl	$4, %r15d
	je	.LBB50_76
.LBB50_82:
	movl	$.L.str.83, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	%r15d, %ecx
	orl	$1, %ecx
	cmpl	$5, %ecx
	jne	.LBB50_88
# %bb.83:
	testl	%eax, %eax
	jne	.LBB50_88
# %bb.84:
	cmpl	$5, %r15d
	jne	.LBB50_29
# %bb.85:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB50_31
# %bb.86:
	movq	32(%r14), %rbx
	movq	16(%r14), %r12
	movq	24(%r14), %rdi
	callq	atoi
	movl	152(%r15), %r8d
	movq	%rbx, %rdi
	movl	$4, %esi
	movq	%r12, %rdx
	movl	%eax, %ecx
	movq	%r15, %r9
	callq	createSentinelRedisInstance
	testq	%rax, %rax
	je	.LBB50_107
# %bb.87:
	movq	%rax, %rbx
	movq	32(%r14), %rdi
	callq	sdsnew
	movq	%rax, 16(%rbx)
	movq	%rbx, %rdi
	callq	sentinelTryConnectionSharing
	jmp	.LBB50_29
.LBB50_88:
	movl	$.L.str.85, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$4, %r15d
	jne	.LBB50_94
# %bb.89:
	testl	%eax, %eax
	jne	.LBB50_94
# %bb.90:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB50_31
# %bb.91:
	movq	16(%r14), %rdi
	callq	sdsnew
	movq	%rax, %r15
	movq	24(%r14), %rdi
	callq	sdsnew
	movq	%rax, %r14
	movq	104(%r12), %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	dictAdd
	testl	%eax, %eax
	je	.LBB50_29
# %bb.92:
	movq	%r15, %rdi
	callq	sdsfree
	movq	%r14, %rdi
	callq	sdsfree
	movl	$.L.str.86, %eax
	jmp	.LBB50_30
.LBB50_31:
	movl	$.L.str.66, %eax
.LBB50_30:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB50_94:
	movl	$.L.str.87, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r15d
	jne	.LBB50_98
# %bb.95:
	testl	%eax, %eax
	jne	.LBB50_98
# %bb.96:
	movq	8(%r14), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB50_29
# %bb.97:
	movq	8(%r14), %rdi
	callq	sdsnew
	movq	%rax, sentinel+96(%rip)
	jmp	.LBB50_29
.LBB50_98:
	movl	$.L.str.88, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r15d
	jne	.LBB50_103
# %bb.99:
	testl	%eax, %eax
	jne	.LBB50_103
# %bb.100:
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, sentinel+104(%rip)
	jmp	.LBB50_29
.LBB50_103:
	movl	$.L.str.89, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	%eax, %ecx
	movl	$.L.str.91, %eax
	cmpl	$2, %r15d
	jne	.LBB50_30
# %bb.104:
	testl	%ecx, %ecx
	jne	.LBB50_30
# %bb.105:
	movq	8(%r14), %rdi
	callq	yesnotoi
	movl	%eax, sentinel+120(%rip)
	cmpl	$-1, %eax
	jne	.LBB50_29
# %bb.106:
	movl	$.L.str.90, %eax
	jmp	.LBB50_30
.LBB50_107:
	movl	$.L.str.84, %eax
	jmp	.LBB50_30
.Lfunc_end50:
	.size	sentinelHandleConfiguration, .Lfunc_end50-sentinelHandleConfiguration
                                        # -- End function
	.globl	rewriteConfigSentinelOption # -- Begin function rewriteConfigSentinelOption
	.p2align	4, 0x90
	.type	rewriteConfigSentinelOption,@function
rewriteConfigSentinelOption:            # @rewriteConfigSentinelOption
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
	callq	sdsempty
	movl	$.L.str.92, %esi
	movl	$sentinel, %edx
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	callq	sdsempty
	cmpl	$0, sentinel+120(%rip)
	movl	$.L.str.95, %ecx
	movl	$.L.str.94, %edx
	cmoveq	%rcx, %rdx
	movl	$.L.str.93, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	xorl	%ecx, %ecx
	cmpl	$1, sentinel+120(%rip)
	setne	%cl
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	rewriteConfigRewriteLine
	movq	sentinel+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	jmp	.LBB51_1
	.p2align	4, 0x90
.LBB51_33:                              #   in Loop: Header=BB51_1 Depth=1
	movq	%r12, %rdi
	callq	dictReleaseIterator
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB51_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_19 Depth 2
                                        #     Child Loop BB51_26 Depth 2
                                        #     Child Loop BB51_32 Depth 2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB51_34
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	movq	8(%rax), %r14
	testb	$64, (%r14)
	je	.LBB51_5
# %bb.3:                                #   in Loop: Header=BB51_1 Depth=1
	movq	288(%r14), %rax
	testq	%rax, %rax
	je	.LBB51_5
# %bb.4:                                #   in Loop: Header=BB51_1 Depth=1
	cmpl	$4, 248(%r14)
	jg	.LBB51_6
	.p2align	4, 0x90
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
	movq	%r14, %rax
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	movq	32(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	(%r12), %rcx
	movl	8(%r12), %r8d
	movl	152(%r14), %r9d
	movl	$.L.str.96, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	cmpq	$30000, 88(%r14)        # imm = 0x7530
	jne	.LBB51_7
# %bb.8:                                #   in Loop: Header=BB51_1 Depth=1
	cmpq	$180000, 272(%r14)      # imm = 0x2BF20
	jne	.LBB51_9
.LBB51_10:                              #   in Loop: Header=BB51_1 Depth=1
	cmpl	$1, 156(%r14)
	jne	.LBB51_11
.LBB51_12:                              #   in Loop: Header=BB51_1 Depth=1
	cmpq	$0, 296(%r14)
	je	.LBB51_14
.LBB51_13:                              #   in Loop: Header=BB51_1 Depth=1
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	296(%r14), %rcx
	movl	$.L.str.100, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
.LBB51_14:                              #   in Loop: Header=BB51_1 Depth=1
	cmpq	$0, 304(%r14)
	je	.LBB51_16
# %bb.15:                               #   in Loop: Header=BB51_1 Depth=1
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	304(%r14), %rcx
	movl	$.L.str.101, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
.LBB51_16:                              #   in Loop: Header=BB51_1 Depth=1
	cmpq	$0, 160(%r14)
	je	.LBB51_18
# %bb.17:                               #   in Loop: Header=BB51_1 Depth=1
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	160(%r14), %rcx
	movl	$.L.str.102, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
.LBB51_18:                              #   in Loop: Header=BB51_1 Depth=1
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	24(%r14), %rcx
	movl	$.L.str.103, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	232(%r14), %rcx
	movl	$.L.str.104, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	movq	144(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, %r13
	movq	%rax, %rdi
	jmp	.LBB51_19
	.p2align	4, 0x90
.LBB51_21:                              #   in Loop: Header=BB51_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB51_24:                              #   in Loop: Header=BB51_19 Depth=2
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	(%rbx), %rcx
	movl	8(%rbx), %r8d
	movl	$.L.str.105, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	movq	%r13, %rdi
.LBB51_19:                              #   Parent Loop BB51_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB51_25
# %bb.20:                               #   in Loop: Header=BB51_19 Depth=2
	movq	8(%rax), %rax
	movq	32(%rax), %rbx
	movl	8(%rbx), %eax
	cmpl	8(%r12), %eax
	jne	.LBB51_21
# %bb.22:                               #   in Loop: Header=BB51_19 Depth=2
	movq	(%rbx), %rdi
	movq	(%r12), %rsi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB51_24
# %bb.23:                               #   in Loop: Header=BB51_19 Depth=2
	movq	32(%r14), %rbx
	jmp	.LBB51_24
	.p2align	4, 0x90
.LBB51_25:                              #   in Loop: Header=BB51_1 Depth=1
	movq	%r13, %rdi
	callq	dictReleaseIterator
	movq	136(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, %r12
	movq	%rax, %rdi
	jmp	.LBB51_26
	.p2align	4, 0x90
.LBB51_29:                              #   in Loop: Header=BB51_26 Depth=2
	movq	%r12, %rdi
.LBB51_26:                              #   Parent Loop BB51_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB51_30
# %bb.27:                               #   in Loop: Header=BB51_26 Depth=2
	movq	8(%rax), %rbx
	cmpq	$0, 16(%rbx)
	je	.LBB51_29
# %bb.28:                               #   in Loop: Header=BB51_26 Depth=2
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	16(%rbx), %r9
	movq	32(%rbx), %rsi
	movq	(%rsi), %rcx
	movl	8(%rsi), %r8d
	movl	$.L.str.106, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	jmp	.LBB51_29
	.p2align	4, 0x90
.LBB51_30:                              #   in Loop: Header=BB51_1 Depth=1
	movq	%r12, %rdi
	callq	dictReleaseIterator
	movq	104(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, %r12
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB51_32:                              #   Parent Loop BB51_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	dictNext
	testq	%rax, %rax
	je	.LBB51_33
# %bb.31:                               #   in Loop: Header=BB51_32 Depth=2
	movq	(%rax), %rbx
	movq	8(%rax), %r13
	callq	sdsempty
	movq	8(%r14), %rdx
	movl	$.L.str.107, %esi
	movq	%rax, %rdi
	movq	%rbx, %rcx
	movq	%r13, %r8
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	movq	%r12, %rdi
	jmp	.LBB51_32
	.p2align	4, 0x90
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	88(%r14), %rcx
	movl	$.L.str.97, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	cmpq	$180000, 272(%r14)      # imm = 0x2BF20
	je	.LBB51_10
.LBB51_9:                               #   in Loop: Header=BB51_1 Depth=1
	callq	sdsempty
	movq	8(%r14), %rdx
	movq	272(%r14), %rcx
	movl	$.L.str.98, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	cmpl	$1, 156(%r14)
	je	.LBB51_12
.LBB51_11:                              #   in Loop: Header=BB51_1 Depth=1
	callq	sdsempty
	movq	8(%r14), %rdx
	movl	156(%r14), %ecx
	movl	$.L.str.99, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	cmpq	$0, 296(%r14)
	jne	.LBB51_13
	jmp	.LBB51_14
.LBB51_34:
	callq	sdsempty
	movq	sentinel+48(%rip), %rdx
	movl	$.L.str.108, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
	cmpq	$0, sentinel+96(%rip)
	je	.LBB51_44
# %bb.35:
	movl	$.L.str.109, %edi
	callq	sdsnew
	movq	sentinel+96(%rip), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB51_36
# %bb.37:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI51_0(,%rcx,8)
.LBB51_38:
	shrq	$3, %rdx
	jmp	.LBB51_43
.LBB51_36:
	xorl	%edx, %edx
	jmp	.LBB51_43
.LBB51_39:
	movzbl	-3(%rsi), %edx
	jmp	.LBB51_43
.LBB51_40:
	movzwl	-5(%rsi), %edx
	jmp	.LBB51_43
.LBB51_41:
	movl	-9(%rsi), %edx
	jmp	.LBB51_43
.LBB51_42:
	movq	-17(%rsi), %rdx
.LBB51_43:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatrepr
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
.LBB51_44:
	cmpl	$0, sentinel+104(%rip)
	je	.LBB51_46
# %bb.45:
	callq	sdsempty
	movl	sentinel+104(%rip), %edx
	movl	$.L.str.110, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	rewriteConfigRewriteLine
.LBB51_46:
	movq	-48(%rbp), %rdi         # 8-byte Reload
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
.Lfunc_end51:
	.size	rewriteConfigSentinelOption, .Lfunc_end51-rewriteConfigSentinelOption
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI51_0:
	.quad	.LBB51_38
	.quad	.LBB51_39
	.quad	.LBB51_40
	.quad	.LBB51_41
	.quad	.LBB51_42
                                        # -- End function
	.text
	.globl	sentinelSendAuthIfNeeded # -- Begin function sentinelSendAuthIfNeeded
	.p2align	4, 0x90
	.type	sentinelSendAuthIfNeeded,@function
sentinelSendAuthIfNeeded:               # @sentinelSendAuthIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	movq	%rdi, %rcx
	testb	$1, %al
	jne	.LBB52_3
# %bb.1:
	testb	$2, %al
	jne	.LBB52_2
# %bb.4:
	testb	$4, %al
	je	.LBB52_9
# %bb.5:
	movq	server+96(%rip), %r15
	testq	%r15, %r15
	jne	.LBB52_7
	jmp	.LBB52_9
.LBB52_2:
	movq	192(%rbx), %rcx
.LBB52_3:
	movq	160(%rcx), %r15
	testq	%r15, %r15
	je	.LBB52_9
.LBB52_7:
	movl	$.L.str.112, %r12d
	movl	$.L.str.112, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	sdsnew
	movq	%rax, %r13
	movq	192(%rbx), %rax
	testq	%rax, %rax
	cmoveq	%rbx, %rax
	movq	104(%rax), %rdi
	movq	%r13, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%r13, %rdi
	callq	sdsfree
	testq	%r14, %r14
	cmovneq	%r14, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelDiscardReplyCallback, %esi
	movl	$.L.str.23, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r12, %r8
	movq	%r15, %r9
	xorl	%eax, %eax
	callq	redisAsyncCommand
	testl	%eax, %eax
	jne	.LBB52_9
# %bb.8:
	movq	40(%rbx), %rax
	addl	$1, 8(%rax)
.LBB52_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	sentinelSendAuthIfNeeded, .Lfunc_end52-sentinelSendAuthIfNeeded
                                        # -- End function
	.globl	sentinelSetClientName   # -- Begin function sentinelSetClientName
	.p2align	4, 0x90
	.type	sentinelSetClientName,@function
sentinelSetClientName:                  # @sentinelSetClientName
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %r8
	movq	%rsi, %r14
	movq	%rdi, %r12
	leaq	-112(%rbp), %rdi
	movl	$64, %esi
	movl	$.L.str.113, %edx
	movl	$sentinel, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movl	$.L.str.115, %r13d
	movl	$.L.str.115, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	192(%r12), %rax
	testq	%rax, %rax
	cmoveq	%r12, %rax
	movq	104(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	cmovneq	%r15, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelDiscardReplyCallback, %esi
	movl	$.L.str.114, %ecx
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r13, %r8
	leaq	-112(%rbp), %r9
	xorl	%eax, %eax
	callq	redisAsyncCommand
	testl	%eax, %eax
	jne	.LBB53_2
# %bb.1:
	movq	40(%r12), %rax
	addl	$1, 8(%rax)
.LBB53_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	sentinelSetClientName, .Lfunc_end53-sentinelSetClientName
                                        # -- End function
	.globl	sentinelReconnectInstance # -- Begin function sentinelReconnectInstance
	.p2align	4, 0x90
	.type	sentinelReconnectInstance,@function
sentinelReconnectInstance:              # @sentinelReconnectInstance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	40(%rdi), %r15
	cmpl	$0, 4(%r15)
	je	.LBB54_39
# %bb.1:
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	cmpl	$0, 8(%rax)
	je	.LBB54_39
# %bb.2:
	callq	mstime
	movq	40(%rbx), %rcx
	movq	%rax, %rdx
	subq	88(%rcx), %rdx
	cmpq	$1000, %rdx             # imm = 0x3E8
	jl	.LBB54_39
# %bb.3:
	movq	%rax, 88(%rcx)
	cmpq	$0, 16(%r15)
	jne	.LBB54_16
# %bb.4:
	movq	32(%rbx), %rax
	movq	(%rax), %rdi
	movl	8(%rax), %esi
	cmpl	$0, server+352(%rip)
	je	.LBB54_5
# %bb.6:
	movq	server+224(%rip), %rdx
	jmp	.LBB54_7
.LBB54_5:
	xorl	%edx, %edx
.LBB54_7:
	callq	redisAsyncConnectBind
	movq	%rax, 16(%r15)
	cmpl	$0, 208(%rax)
	je	.LBB54_13
# %bb.8:
	movq	216(%rax), %r8
	movl	$.L.str.116, %esi
	movl	$.L.str.117, %ecx
	xorl	%edi, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	16(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB54_12
# %bb.9:
	movq	$0, 16(%r15)
	movl	$0, 8(%r15)
	cmpq	%rdi, 24(%r15)
	jne	.LBB54_11
# %bb.10:
	movq	$0, 24(%r15)
.LBB54_11:
	movq	$0, 224(%rdi)
	movl	$1, 4(%r15)
	callq	redisAsyncFree
.LBB54_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB54_16:
	testb	$3, (%rbx)
	je	.LBB54_27
.LBB54_17:
	cmpq	$0, 24(%r15)
	jne	.LBB54_27
# %bb.18:
	movq	32(%rbx), %rax
	movq	(%rax), %rdi
	movl	8(%rax), %esi
	cmpl	$0, server+352(%rip)
	je	.LBB54_19
# %bb.20:
	movq	server+224(%rip), %rdx
	jmp	.LBB54_21
.LBB54_13:
	movl	$0, 8(%r15)
	callq	mstime
	movq	%rax, 32(%r15)
	movq	16(%r15), %r14
	movq	%r15, 224(%r14)
	cmpq	$0, 232(%r14)
	jne	.LBB54_15
# %bb.14:
	movq	server+72(%rip), %r12
	movl	$32, %edi
	callq	zmalloc
	movq	%r14, (%rax)
	movq	%r12, 8(%rax)
	movl	132(%r14), %ecx
	movl	%ecx, 16(%rax)
	movq	$0, 20(%rax)
	movl	$redisAeDelRead, %ecx
	movq	%rcx, %xmm0
	movl	$redisAeAddRead, %ecx
	movq	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 240(%r14)
	movl	$redisAeDelWrite, %ecx
	movq	%rcx, %xmm0
	movl	$redisAeAddWrite, %ecx
	movq	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 256(%r14)
	movq	$redisAeCleanup, 272(%r14)
	movq	%rax, 232(%r14)
	movq	16(%r15), %r14
.LBB54_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelLinkEstablishedCallback, %esi
	movq	%r14, %rdi
	callq	redisAsyncSetConnectCallback
	movq	16(%r15), %rdi
	movl	$sentinelDisconnectCallback, %esi
	callq	redisAsyncSetDisconnectCallback
	movq	16(%r15), %rsi
	movq	%rbx, %rdi
	callq	sentinelSendAuthIfNeeded
	movq	16(%r15), %rsi
	movl	$.L.str.118, %edx
	movq	%rbx, %rdi
	callq	sentinelSetClientName
	movq	%rbx, %rdi
	callq	sentinelSendPing
	testb	$3, (%rbx)
	jne	.LBB54_17
	jmp	.LBB54_27
.LBB54_19:
	xorl	%edx, %edx
.LBB54_21:
	callq	redisAsyncConnectBind
	movq	%rax, 24(%r15)
	cmpl	$0, 208(%rax)
	je	.LBB54_31
# %bb.22:
	movq	216(%rax), %r8
	movl	$.L.str.119, %esi
	movl	$.L.str.117, %ecx
	xorl	%edi, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB54_26
# %bb.23:
	cmpq	%rdi, 16(%r15)
	jne	.LBB54_25
# %bb.24:
	movq	$0, 16(%r15)
	movl	$0, 8(%r15)
.LBB54_25:
	movq	$0, 24(%r15)
	movq	$0, 224(%rdi)
	movl	$1, 4(%r15)
	callq	redisAsyncFree
.LBB54_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB54_27:
	cmpq	$0, 16(%r15)
	je	.LBB54_39
# %bb.28:
	testb	$4, (%rbx)
	jne	.LBB54_30
# %bb.29:
	cmpq	$0, 24(%r15)
	je	.LBB54_39
.LBB54_30:
	movl	$0, 4(%r15)
.LBB54_39:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB54_31:
	callq	mstime
	movq	%rax, 40(%r15)
	movq	24(%r15), %r14
	movq	%r15, 224(%r14)
	cmpq	$0, 232(%r14)
	jne	.LBB54_33
# %bb.32:
	movq	server+72(%rip), %r12
	movl	$32, %edi
	callq	zmalloc
	movq	%r14, (%rax)
	movq	%r12, 8(%rax)
	movl	132(%r14), %ecx
	movl	%ecx, 16(%rax)
	movq	$0, 20(%rax)
	movl	$redisAeDelRead, %ecx
	movq	%rcx, %xmm0
	movl	$redisAeAddRead, %ecx
	movq	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 240(%r14)
	movl	$redisAeDelWrite, %ecx
	movq	%rcx, %xmm0
	movl	$redisAeAddWrite, %ecx
	movq	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 256(%r14)
	movq	$redisAeCleanup, 272(%r14)
	movq	%rax, 232(%r14)
	movq	24(%r15), %r14
.LBB54_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelLinkEstablishedCallback, %esi
	movq	%r14, %rdi
	callq	redisAsyncSetConnectCallback
	movq	24(%r15), %rdi
	movl	$sentinelDisconnectCallback, %esi
	callq	redisAsyncSetDisconnectCallback
	movq	24(%r15), %rsi
	movq	%rbx, %rdi
	callq	sentinelSendAuthIfNeeded
	movq	24(%r15), %rsi
	movl	$.L.str.120, %edx
	movq	%rbx, %rdi
	callq	sentinelSetClientName
	movq	24(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.121, %r14d
	movl	$.L.str.121, %edi
	callq	sdsnew
	movq	%rax, %r12
	movq	192(%rbx), %rax
	testq	%rax, %rax
	cmoveq	%rbx, %rax
	movq	104(%rax), %rdi
	movq	%r12, %rsi
	callq	dictFetchValue
	movq	%rax, %r13
	movq	%r12, %rdi
	callq	sdsfree
	testq	%r13, %r13
	cmovneq	%r13, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelReceiveHelloMessages, %esi
	movl	$.L.str.23, %ecx
	movl	$.L.str.122, %r9d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	redisAsyncCommand
	testl	%eax, %eax
	je	.LBB54_27
# %bb.34:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB54_38
# %bb.35:
	cmpq	%rdi, 16(%r15)
	jne	.LBB54_37
# %bb.36:
	movq	$0, 16(%r15)
	movl	$0, 8(%r15)
.LBB54_37:
	movq	$0, 24(%r15)
	movq	$0, 224(%rdi)
	movl	$1, 4(%r15)
	callq	redisAsyncFree
.LBB54_38:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB54_39
.Lfunc_end54:
	.size	sentinelReconnectInstance, .Lfunc_end54-sentinelReconnectInstance
                                        # -- End function
	.globl	sentinelSendPing        # -- Begin function sentinelSendPing
	.p2align	4, 0x90
	.type	sentinelSendPing,@function
sentinelSendPing:                       # @sentinelSendPing
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r13
	movq	40(%rdi), %rax
	movq	16(%rax), %r15
	movl	$.L.str.168, %r12d
	movl	$.L.str.168, %edi
	callq	sdsnew
	movq	%rax, %r14
	movq	192(%r13), %rax
	testq	%rax, %rax
	cmoveq	%r13, %rax
	movq	104(%rax), %rdi
	movq	%r14, %rsi
	callq	dictFetchValue
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	cmovneq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	movl	$sentinelPingReplyCallback, %esi
	movl	$.L.str.167, %ecx
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %r8
	xorl	%eax, %eax
	callq	redisAsyncCommand
	testl	%eax, %eax
	jne	.LBB55_3
# %bb.1:
	movq	40(%r13), %rax
	addl	$1, 8(%rax)
	callq	mstime
	movq	40(%r13), %rcx
	movq	%rax, 72(%rcx)
	movl	$1, %r14d
	cmpq	$0, 64(%rcx)
	jne	.LBB55_3
# %bb.2:
	movq	%rax, 64(%rcx)
.LBB55_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end55:
	.size	sentinelSendPing, .Lfunc_end55-sentinelSendPing
                                        # -- End function
	.globl	sentinelReceiveHelloMessages # -- Begin function sentinelReceiveHelloMessages
	.p2align	4, 0x90
	.type	sentinelReceiveHelloMessages,@function
sentinelReceiveHelloMessages:           # @sentinelReceiveHelloMessages
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rsi, %rsi
	je	.LBB56_10
# %bb.1:
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.LBB56_10
# %bb.2:
	movq	%rsi, %r14
	callq	mstime
	movq	40(%rbx), %rcx
	movq	%rax, 48(%rcx)
	cmpl	$2, (%r14)
	jne	.LBB56_10
# %bb.3:
	cmpq	$3, 32(%r14)
	jne	.LBB56_10
# %bb.4:
	movq	40(%r14), %rcx
	movq	(%rcx), %rax
	cmpl	$1, (%rax)
	jne	.LBB56_10
# %bb.5:
	movq	8(%rcx), %rdx
	cmpl	$1, (%rdx)
	jne	.LBB56_10
# %bb.6:
	movq	16(%rcx), %rcx
	cmpl	$1, (%rcx)
	jne	.LBB56_10
# %bb.7:
	movq	24(%rax), %rdi
	movl	$.L.str.163, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB56_10
# %bb.8:
	movq	40(%r14), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdi
	movl	$sentinel, %esi
	callq	strstr
	testq	%rax, %rax
	jne	.LBB56_10
# %bb.9:
	movq	40(%r14), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdi
	movl	16(%rax), %esi
	callq	sentinelProcessHelloMessage
.LBB56_10:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end56:
	.size	sentinelReceiveHelloMessages, .Lfunc_end56-sentinelReceiveHelloMessages
                                        # -- End function
	.globl	sentinelMasterLooksSane # -- Begin function sentinelMasterLooksSane
	.p2align	4, 0x90
	.type	sentinelMasterLooksSane,@function
sentinelMasterLooksSane:                # @sentinelMasterLooksSane
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	(%rdi), %ecx
	xorl	%eax, %eax
	testb	$1, %cl
	je	.LBB57_4
# %bb.1:
	testb	$24, %cl
	jne	.LBB57_4
# %bb.2:
	movq	%rdi, %rbx
	cmpl	$1, 112(%rdi)
	jne	.LBB57_4
# %bb.3:
	callq	mstime
	movq	%rax, %rcx
	subq	96(%rbx), %rcx
	xorl	%eax, %eax
	cmpq	$20000, %rcx            # imm = 0x4E20
	setl	%al
.LBB57_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end57:
	.size	sentinelMasterLooksSane, .Lfunc_end57-sentinelMasterLooksSane
                                        # -- End function
	.globl	sentinelRefreshInstanceInfo # -- Begin function sentinelRefreshInstanceInfo
	.p2align	4, 0x90
	.type	sentinelRefreshInstanceInfo,@function
sentinelRefreshInstanceInfo:            # @sentinelRefreshInstanceInfo
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
	movq	%rdi, %r15
	movq	312(%rdi), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	sdsnew
	movq	%rax, 312(%r15)
	movq	$0, 168(%r15)
	movq	%rbx, %rdi
	callq	strlen
	leaq	-44(%rbp), %r8
	movl	$.L.str.123, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$2, %ecx
	callq	sdssplitlen
	movq	%rax, -64(%rbp)         # 8-byte Spill
	cmpl	$0, -44(%rbp)
	jle	.LBB58_1
# %bb.2:
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB58_3
	.p2align	4, 0x90
.LBB58_52:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$1, %r13d
.LBB58_113:                             #   in Loop: Header=BB58_3 Depth=1
	addq	$1, %r14
	movslq	-44(%rbp), %rax
	cmpq	%rax, %r14
	jge	.LBB58_114
.LBB58_3:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r14,8), %rbx
	movzbl	-1(%rbx), %eax
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB58_8
# %bb.4:                                #   in Loop: Header=BB58_3 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI58_0(,%rax,8)
.LBB58_9:                               #   in Loop: Header=BB58_3 Depth=1
	movzbl	-3(%rbx), %eax
	jmp	.LBB58_10
	.p2align	4, 0x90
.LBB58_6:                               #   in Loop: Header=BB58_3 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB58_10
	.p2align	4, 0x90
.LBB58_7:                               #   in Loop: Header=BB58_3 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB58_10
.LBB58_5:                               #   in Loop: Header=BB58_3 Depth=1
	movzwl	-5(%rbx), %eax
.LBB58_10:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$47, %rax
	jb	.LBB58_16
# %bb.11:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.124, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB58_16
# %bb.12:                               #   in Loop: Header=BB58_3 Depth=1
	movq	16(%r15), %rdi
	leaq	7(%rbx), %r12
	testq	%rdi, %rdi
	je	.LBB58_15
# %bb.13:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$40, %edx
	movq	%r12, %rsi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB58_16
# %bb.14:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.125, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	16(%r15), %rdi
	callq	sdsfree
.LBB58_15:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$40, %esi
	movq	%r12, %rdi
	callq	sdsnewlen
	movq	%rax, 16(%r15)
	.p2align	4, 0x90
.LBB58_16:                              #   in Loop: Header=BB58_3 Depth=1
	testb	$1, (%r15)
	je	.LBB58_41
.LBB58_17:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB58_19
# %bb.18:                               #   in Loop: Header=BB58_3 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI58_1(,%rcx,8)
.LBB58_20:                              #   in Loop: Header=BB58_3 Depth=1
	shrq	$3, %rax
	jmp	.LBB58_25
.LBB58_8:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, (%r15)
	jne	.LBB58_17
	jmp	.LBB58_41
.LBB58_24:                              #   in Loop: Header=BB58_3 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB58_25
.LBB58_22:                              #   in Loop: Header=BB58_3 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB58_25
.LBB58_23:                              #   in Loop: Header=BB58_3 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB58_25
.LBB58_21:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-3(%rbx), %eax
	.p2align	4, 0x90
.LBB58_25:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rax
	jb	.LBB58_41
# %bb.26:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.54, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB58_41
# %bb.27:                               #   in Loop: Header=BB58_3 Depth=1
	callq	__locale_ctype_ptr
	movsbq	5(%rbx), %rcx
	testb	$4, 1(%rax,%rcx)
	je	.LBB58_41
# %bb.28:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.126, %esi
	movq	%rbx, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB58_29
# %bb.32:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.126, %esi
	movq	%rbx, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB58_113
# %bb.33:                               #   in Loop: Header=BB58_3 Depth=1
	movq	%rax, %r12
	movl	$.L.str.127, %esi
	movq	%rbx, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB58_113
# %bb.34:                               #   in Loop: Header=BB58_3 Depth=1
	addq	$3, %r12
	addq	$5, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movl	$44, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB58_36
# %bb.35:                               #   in Loop: Header=BB58_3 Depth=1
	movb	$0, (%rax)
.LBB58_36:                              #   in Loop: Header=BB58_3 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$44, %esi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB58_37
	jmp	.LBB58_38
.LBB58_19:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB58_41:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-1(%rbx), %eax
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB58_46
# %bb.42:                               #   in Loop: Header=BB58_3 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI58_2(,%rax,8)
.LBB58_47:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-3(%rbx), %eax
	jmp	.LBB58_48
.LBB58_44:                              #   in Loop: Header=BB58_3 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB58_48
.LBB58_45:                              #   in Loop: Header=BB58_3 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB58_48
.LBB58_43:                              #   in Loop: Header=BB58_3 Depth=1
	movzwl	-5(%rbx), %eax
.LBB58_48:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rax
	jb	.LBB58_51
# %bb.49:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.128, %esi
	movl	$30, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB58_51
# %bb.50:                               #   in Loop: Header=BB58_3 Depth=1
	leaq	31(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	%rax, 168(%r15)
	jmp	.LBB58_51
.LBB58_46:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB58_51:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.129, %esi
	movl	$11, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB58_52
# %bb.53:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.130, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	memcmp
	cmpl	$2, %r13d
	je	.LBB58_55
# %bb.54:                               #   in Loop: Header=BB58_3 Depth=1
	testl	%eax, %eax
	jne	.LBB58_113
.LBB58_55:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB58_57
# %bb.56:                               #   in Loop: Header=BB58_3 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI58_3(,%rcx,8)
.LBB58_58:                              #   in Loop: Header=BB58_3 Depth=1
	shrq	$3, %rax
	jmp	.LBB58_63
.LBB58_62:                              #   in Loop: Header=BB58_3 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB58_63
.LBB58_60:                              #   in Loop: Header=BB58_3 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB58_63
.LBB58_61:                              #   in Loop: Header=BB58_3 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB58_63
.LBB58_59:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-3(%rbx), %eax
	.p2align	4, 0x90
.LBB58_63:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$12, %rax
	jb	.LBB58_68
# %bb.64:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.131, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB58_68
# %bb.65:                               #   in Loop: Header=BB58_3 Depth=1
	movq	200(%r15), %r13
	leaq	12(%rbx), %r12
	testq	%r13, %r13
	je	.LBB58_67
# %bb.66:                               #   in Loop: Header=BB58_3 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB58_68
.LBB58_67:                              #   in Loop: Header=BB58_3 Depth=1
	movq	%r13, %rdi
	callq	sdsfree
	movq	%r12, %rdi
	callq	sdsnew
	movq	%rax, 200(%r15)
	callq	mstime
	movq	%rax, 128(%r15)
	jmp	.LBB58_68
.LBB58_57:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB58_68:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB58_70
# %bb.69:                               #   in Loop: Header=BB58_3 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI58_4(,%rcx,8)
.LBB58_71:                              #   in Loop: Header=BB58_3 Depth=1
	shrq	$3, %rax
	jmp	.LBB58_76
.LBB58_75:                              #   in Loop: Header=BB58_3 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB58_76
.LBB58_73:                              #   in Loop: Header=BB58_3 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB58_76
.LBB58_74:                              #   in Loop: Header=BB58_3 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB58_76
.LBB58_72:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-3(%rbx), %eax
	.p2align	4, 0x90
.LBB58_76:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$12, %rax
	jb	.LBB58_80
# %bb.77:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.132, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB58_80
# %bb.78:                               #   in Loop: Header=BB58_3 Depth=1
	leaq	12(%rbx), %rdi
	callq	atoi
	cmpl	%eax, 208(%r15)
	je	.LBB58_80
# %bb.79:                               #   in Loop: Header=BB58_3 Depth=1
	movl	%eax, 208(%r15)
	callq	mstime
	movq	%rax, 128(%r15)
	jmp	.LBB58_80
.LBB58_70:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB58_80:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB58_82
# %bb.81:                               #   in Loop: Header=BB58_3 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI58_5(,%rcx,8)
.LBB58_83:                              #   in Loop: Header=BB58_3 Depth=1
	shrq	$3, %rax
	jmp	.LBB58_88
.LBB58_87:                              #   in Loop: Header=BB58_3 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB58_88
.LBB58_85:                              #   in Loop: Header=BB58_3 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB58_88
.LBB58_86:                              #   in Loop: Header=BB58_3 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB58_88
.LBB58_84:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-3(%rbx), %eax
	.p2align	4, 0x90
.LBB58_88:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$19, %rax
	jb	.LBB58_91
# %bb.89:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.133, %esi
	movl	$19, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB58_91
# %bb.90:                               #   in Loop: Header=BB58_3 Depth=1
	leaq	19(%rbx), %rdi
	movl	$.L.str.134, %esi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	%ecx, 212(%r15)
	jmp	.LBB58_91
.LBB58_82:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB58_91:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB58_93
# %bb.92:                               #   in Loop: Header=BB58_3 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI58_6(,%rcx,8)
.LBB58_94:                              #   in Loop: Header=BB58_3 Depth=1
	shrq	$3, %rax
	jmp	.LBB58_99
.LBB58_98:                              #   in Loop: Header=BB58_3 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB58_99
.LBB58_96:                              #   in Loop: Header=BB58_3 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB58_99
.LBB58_97:                              #   in Loop: Header=BB58_3 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB58_99
.LBB58_95:                              #   in Loop: Header=BB58_3 Depth=1
	movzbl	-3(%rbx), %eax
	.p2align	4, 0x90
.LBB58_99:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$15, %rax
	jb	.LBB58_102
# %bb.100:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.135, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB58_102
# %bb.101:                              #   in Loop: Header=BB58_3 Depth=1
	leaq	15(%rbx), %rdi
	callq	atoi
	movl	%eax, 176(%r15)
	jmp	.LBB58_102
.LBB58_93:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB58_102:                             #   in Loop: Header=BB58_3 Depth=1
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB58_104
# %bb.103:                              #   in Loop: Header=BB58_3 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI58_7(,%rcx,8)
.LBB58_105:                             #   in Loop: Header=BB58_3 Depth=1
	shrq	$3, %rax
	jmp	.LBB58_110
.LBB58_109:                             #   in Loop: Header=BB58_3 Depth=1
	movq	-17(%rbx), %rax
	jmp	.LBB58_110
.LBB58_107:                             #   in Loop: Header=BB58_3 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB58_110
.LBB58_108:                             #   in Loop: Header=BB58_3 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB58_110
.LBB58_106:                             #   in Loop: Header=BB58_3 Depth=1
	movzbl	-3(%rbx), %eax
	.p2align	4, 0x90
.LBB58_110:                             #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r13d
	cmpq	$18, %rax
	jb	.LBB58_113
# %bb.111:                              #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.136, %esi
	movl	$18, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB58_113
# %bb.112:                              #   in Loop: Header=BB58_3 Depth=1
	addq	$18, %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	%rax, 216(%r15)
	jmp	.LBB58_113
.LBB58_104:                             #   in Loop: Header=BB58_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r13d
	jmp	.LBB58_113
.LBB58_29:                              #   in Loop: Header=BB58_3 Depth=1
	movq	%rbx, %rdi
	movl	$58, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB58_113
# %bb.30:                               #   in Loop: Header=BB58_3 Depth=1
	movq	%rax, %r12
	addq	$1, %r12
	movq	%r12, %rdi
	movl	$44, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB58_113
# %bb.31:                               #   in Loop: Header=BB58_3 Depth=1
	movb	$0, (%rax)
	addq	$1, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	$44, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB58_113
.LBB58_37:                              #   in Loop: Header=BB58_3 Depth=1
	movb	$0, (%rax)
.LBB58_38:                              #   in Loop: Header=BB58_3 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	atoi
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	sentinelRedisInstanceLookupSlave
	testq	%rax, %rax
	jne	.LBB58_41
# %bb.39:                               #   in Loop: Header=BB58_3 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	atoi
	movl	152(%r15), %r8d
	xorl	%edi, %edi
	movl	$2, %esi
	movq	%r12, %rdx
	movl	%eax, %ecx
	movq	%r15, %r9
	callq	createSentinelRedisInstance
	testq	%rax, %rax
	je	.LBB58_41
# %bb.40:                               #   in Loop: Header=BB58_3 Depth=1
	movl	$.L.str.59, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	callq	sentinelFlushConfig
	jmp	.LBB58_41
.LBB58_1:
	xorl	%r13d, %r13d
.LBB58_114:
	callq	mstime
	movq	%rax, 96(%r15)
	movl	-44(%rbp), %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	sdsfreesplitres
	cmpl	112(%r15), %r13d
	je	.LBB58_118
# %bb.115:
	callq	mstime
	movq	%rax, 120(%r15)
	movl	%r13d, 112(%r15)
	cmpl	$2, %r13d
	jne	.LBB58_117
# %bb.116:
	callq	mstime
	movq	%rax, 128(%r15)
.LBB58_117:
	movl	(%r15), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	%r13d, %ecx
	movl	$.L.str.137, %ecx
	movl	$.L.str.138, %esi
	cmoveq	%rcx, %rsi
	cmpl	$1, %r13d
	movl	$.L.str.53, %r9d
	movl	$.L.str.54, %r8d
	cmoveq	%r9, %r8
	movl	$.L.str.54, %ecx
	testb	$1, %al
	cmoveq	%rcx, %r9
	movl	$.L.str.139, %ecx
	movl	$1, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB58_118:
	cmpl	$0, sentinel+64(%rip)
	je	.LBB58_119
.LBB58_165:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB58_119:
	cmpl	$1, %r13d
	jne	.LBB58_139
# %bb.120:
	movl	(%r15), %ecx
	movl	%ecx, %eax
	andl	$2, %eax
	je	.LBB58_139
# %bb.121:
	movq	192(%r15), %rbx
	movl	(%rbx), %eax
	testb	%cl, %cl
	js	.LBB58_122
# %bb.128:
	testb	$1, %al
	jne	.LBB58_129
.LBB58_131:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB58_139
.LBB58_122:
	testb	$64, %al
	je	.LBB58_139
# %bb.123:
	cmpl	$4, 248(%rbx)
	jne	.LBB58_139
# %bb.124:
	movq	240(%rbx), %rax
	movq	%rax, 24(%rbx)
	movl	$5, 248(%rbx)
	callq	mstime
	movq	192(%r15), %rcx
	movq	%rax, 256(%rcx)
	callq	sentinelFlushConfig
	movl	$.L.str.140, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	testb	$2, sentinel+112(%rip)
	jne	.LBB58_166
# %bb.125:
	movq	192(%r15), %rdx
	movl	$.L.str.141, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	192(%r15), %rbx
	cmpq	$0, 304(%rbx)
	je	.LBB58_127
# %bb.126:
	movq	32(%r15), %r14
	movq	32(%rbx), %r12
	movslq	8(%r12), %rdx
	leaq	-128(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	movslq	8(%r14), %rdx
	leaq	-96(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	movq	8(%rbx), %rsi
	movq	304(%rbx), %rdi
	movq	(%r12), %r8
	subq	$8, %rsp
	movl	$.L.str.44, %edx
	movl	$.L.str.142, %ecx
	leaq	-128(%rbp), %r9
	xorl	%eax, %eax
	pushq	$0
	leaq	-96(%rbp), %rbx
	pushq	%rbx
	pushq	(%r14)
	callq	sentinelScheduleScriptExecution
	addq	$32, %rsp
	movq	192(%r15), %rbx
.LBB58_127:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	sentinelForceHelloUpdateForMaster
	jmp	.LBB58_139
.LBB58_129:
	testb	$24, %al
	jne	.LBB58_131
# %bb.130:
	cmpl	$1, 112(%rbx)
	jne	.LBB58_131
# %bb.132:
	callq	mstime
	subq	96(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$19999, %rax            # imm = 0x4E1F
	jg	.LBB58_139
# %bb.133:
	movq	72(%r15), %rbx
	movq	80(%r15), %rax
	cmpq	%rbx, %rax
	cmovgeq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB58_134
# %bb.135:
	callq	mstime
	subq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8001, %rax             # imm = 0x1F41
	jge	.LBB58_136
	jmp	.LBB58_139
.LBB58_134:
	movl	$42, __A_VARIABLE(%rip)
.LBB58_136:
	callq	mstime
	subq	120(%r15), %rax
	cmpq	$8001, %rax             # imm = 0x1F41
	jl	.LBB58_139
# %bb.137:
	movq	192(%r15), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	%r15, %rdi
	callq	sentinelSendSlaveOf
	testl	%eax, %eax
	jne	.LBB58_139
# %bb.138:
	movl	$.L.str.143, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB58_139:
	cmpl	$2, %r13d
	jne	.LBB58_154
# %bb.140:
	movl	(%r15), %eax
	andl	$2, %eax
	je	.LBB58_154
# %bb.141:
	movl	208(%r15), %ecx
	movq	192(%r15), %rbx
	movq	32(%rbx), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB58_143
# %bb.142:
	movq	200(%r15), %rdi
	movq	(%rax), %rsi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB58_154
.LBB58_143:
	movl	(%rbx), %eax
	testb	$1, %al
	jne	.LBB58_144
.LBB58_146:
	movl	$42, __A_VARIABLE(%rip)
.LBB58_154:
	movl	(%r15), %eax
	testl	$768, %eax              # imm = 0x300
	je	.LBB58_165
# %bb.155:
	cmpl	$2, %r13d
	jne	.LBB58_165
# %bb.156:
	movl	%eax, %ecx
	andl	$2, %ecx
	je	.LBB58_165
# %bb.157:
	testl	$256, %eax              # imm = 0x100
	je	.LBB58_162
# %bb.158:
	movq	200(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB58_162
# %bb.159:
	movq	192(%r15), %rax
	movq	288(%rax), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB58_162
# %bb.160:
	movl	208(%r15), %eax
	movq	192(%r15), %rcx
	movq	288(%rcx), %rcx
	movq	32(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB58_162
# %bb.161:
	movl	$-769, %eax             # imm = 0xFCFF
	andl	(%r15), %eax
	orl	$512, %eax              # imm = 0x200
	movl	%eax, (%r15)
	movl	$.L.str.145, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB58_162:
	movl	(%r15), %eax
	testl	$512, %eax              # imm = 0x200
	je	.LBB58_165
# %bb.163:
	cmpl	$0, 212(%r15)
	jne	.LBB58_165
# %bb.164:
	andl	$-1537, %eax            # imm = 0xF9FF
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, (%r15)
	movl	$.L.str.146, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	jmp	.LBB58_165
.LBB58_144:
	testb	$24, %al
	jne	.LBB58_146
# %bb.145:
	cmpl	$1, 112(%rbx)
	jne	.LBB58_146
# %bb.147:
	movq	272(%rbx), %r14
	callq	mstime
	subq	96(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$19999, %rax            # imm = 0x4E1F
	jg	.LBB58_154
# %bb.148:
	movq	72(%r15), %rbx
	movq	80(%r15), %rax
	cmpq	%rbx, %rax
	cmovgeq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB58_149
# %bb.150:
	callq	mstime
	subq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jle	.LBB58_154
	jmp	.LBB58_151
.LBB58_149:
	movl	$42, __A_VARIABLE(%rip)
.LBB58_151:
	callq	mstime
	subq	128(%r15), %rax
	cmpq	%r14, %rax
	jle	.LBB58_154
# %bb.152:
	movq	192(%r15), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	%r15, %rdi
	callq	sentinelSendSlaveOf
	testl	%eax, %eax
	jne	.LBB58_154
# %bb.153:
	movl	$.L.str.144, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	jmp	.LBB58_154
.LBB58_166:
	callq	sentinelSimFailureCrash
.Lfunc_end58:
	.size	sentinelRefreshInstanceInfo, .Lfunc_end58-sentinelRefreshInstanceInfo
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI58_0:
	.quad	.LBB58_9
	.quad	.LBB58_5
	.quad	.LBB58_6
	.quad	.LBB58_7
.LJTI58_1:
	.quad	.LBB58_20
	.quad	.LBB58_21
	.quad	.LBB58_22
	.quad	.LBB58_23
	.quad	.LBB58_24
.LJTI58_2:
	.quad	.LBB58_47
	.quad	.LBB58_43
	.quad	.LBB58_44
	.quad	.LBB58_45
.LJTI58_3:
	.quad	.LBB58_58
	.quad	.LBB58_59
	.quad	.LBB58_60
	.quad	.LBB58_61
	.quad	.LBB58_62
.LJTI58_4:
	.quad	.LBB58_71
	.quad	.LBB58_72
	.quad	.LBB58_73
	.quad	.LBB58_74
	.quad	.LBB58_75
.LJTI58_5:
	.quad	.LBB58_83
	.quad	.LBB58_84
	.quad	.LBB58_85
	.quad	.LBB58_86
	.quad	.LBB58_87
.LJTI58_6:
	.quad	.LBB58_94
	.quad	.LBB58_95
	.quad	.LBB58_96
	.quad	.LBB58_97
	.quad	.LBB58_98
.LJTI58_7:
	.quad	.LBB58_105
	.quad	.LBB58_106
	.quad	.LBB58_107
	.quad	.LBB58_108
	.quad	.LBB58_109
                                        # -- End function
	.text
	.globl	sentinelSimFailureCrash # -- Begin function sentinelSimFailureCrash
	.p2align	4, 0x90
	.type	sentinelSimFailureCrash,@function
sentinelSimFailureCrash:                # @sentinelSimFailureCrash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.286, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$99, %edi
	callq	exit
.Lfunc_end59:
	.size	sentinelSimFailureCrash, .Lfunc_end59-sentinelSimFailureCrash
                                        # -- End function
	.globl	sentinelForceHelloUpdateForMaster # -- Begin function sentinelForceHelloUpdateForMaster
	.p2align	4, 0x90
	.type	sentinelForceHelloUpdateForMaster,@function
sentinelForceHelloUpdateForMaster:      # @sentinelForceHelloUpdateForMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$-1, %eax
	testb	$1, (%rdi)
	je	.LBB60_14
# %bb.1:
	movq	%rdi, %r14
	movq	48(%rdi), %rax
	cmpq	$2001, %rax             # imm = 0x7D1
	jl	.LBB60_3
# %bb.2:
	addq	$-2001, %rax            # imm = 0xF82F
	movq	%rax, 48(%r14)
.LBB60_3:
	movq	136(%r14), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB60_4
	.p2align	4, 0x90
.LBB60_7:                               #   in Loop: Header=BB60_4 Depth=1
	movq	%rbx, %rdi
.LBB60_4:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB60_8
# %bb.5:                                #   in Loop: Header=BB60_4 Depth=1
	movq	8(%rax), %rax
	movq	48(%rax), %rcx
	cmpq	$2001, %rcx             # imm = 0x7D1
	jl	.LBB60_7
# %bb.6:                                #   in Loop: Header=BB60_4 Depth=1
	addq	$-2001, %rcx            # imm = 0xF82F
	movq	%rcx, 48(%rax)
	jmp	.LBB60_7
.LBB60_8:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	144(%r14), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB60_9
	.p2align	4, 0x90
.LBB60_12:                              #   in Loop: Header=BB60_9 Depth=1
	movq	%rbx, %rdi
.LBB60_9:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB60_13
# %bb.10:                               #   in Loop: Header=BB60_9 Depth=1
	movq	8(%rax), %rax
	movq	48(%rax), %rcx
	cmpq	$2001, %rcx             # imm = 0x7D1
	jl	.LBB60_12
# %bb.11:                               #   in Loop: Header=BB60_9 Depth=1
	addq	$-2001, %rcx            # imm = 0xF82F
	movq	%rcx, 48(%rax)
	jmp	.LBB60_12
.LBB60_13:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB60_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end60:
	.size	sentinelForceHelloUpdateForMaster, .Lfunc_end60-sentinelForceHelloUpdateForMaster
                                        # -- End function
	.globl	sentinelSendSlaveOf     # -- Begin function sentinelSendSlaveOf
	.p2align	4, 0x90
	.type	sentinelSendSlaveOf,@function
sentinelSendSlaveOf:                    # @sentinelSendSlaveOf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movslq	%edx, %rdx
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	testq	%rbx, %rbx
	jne	.LBB61_2
# %bb.1:
	leaq	-80(%rbp), %rdi
	movl	$.L.str.292, %esi
	movl	$4, %edx
	callq	memcpy
	movl	$.L.str.291, %ebx
.LBB61_2:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	40(%r12), %rax
	movq	16(%rax), %r14
	movl	$.L.str.293, %r13d
	movl	$.L.str.293, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	192(%r12), %rax
	testq	%rax, %rax
	cmoveq	%r12, %rax
	movq	104(%rax), %rdi
	movq	%rbx, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	testq	%r15, %r15
	cmovneq	%r15, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelDiscardReplyCallback, %esi
	movl	$.L.str.167, %ecx
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r13, %r8
	xorl	%eax, %eax
	callq	redisAsyncCommand
	movl	$-1, %ecx
	cmpl	$-1, %eax
	je	.LBB61_11
# %bb.3:
	movq	40(%r12), %rax
	addl	$1, 8(%rax)
	movq	16(%rax), %r13
	movl	$.L.str.294, %r14d
	movl	$.L.str.294, %edi
	callq	sdsnew
	movq	%rax, %r15
	movq	192(%r12), %rax
	testq	%rax, %rax
	cmoveq	%r12, %rax
	movq	104(%rax), %rdi
	movq	%r15, %rsi
	callq	dictFetchValue
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	cmovneq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$sentinelDiscardReplyCallback, %esi
	movl	$.L.str.165, %ecx
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r14, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	xorl	%eax, %eax
	callq	redisAsyncCommand
	cmpl	$-1, %eax
	je	.LBB61_10
# %bb.4:
	movq	40(%r12), %rax
	addl	$1, 8(%rax)
	movq	16(%rax), %r14
	movl	$.L.str.296, %r15d
	movl	$.L.str.296, %edi
	callq	sdsnew
	movq	%rax, %r13
	movq	192(%r12), %rax
	testq	%rax, %rax
	cmoveq	%r12, %rax
	movq	104(%rax), %rdi
	movq	%r13, %rsi
	callq	dictFetchValue
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	cmovneq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelDiscardReplyCallback, %esi
	movl	$.L.str.295, %ecx
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	redisAsyncCommand
	cmpl	$-1, %eax
	je	.LBB61_10
# %bb.5:
	movq	40(%r12), %rax
	addl	$1, 8(%rax)
	movq	16(%rax), %r14
	movl	$.L.str.115, %r15d
	movl	$.L.str.115, %edi
	callq	sdsnew
	movq	%rax, %r13
	movq	192(%r12), %rax
	testq	%rax, %rax
	cmoveq	%r12, %rax
	movq	104(%rax), %rdi
	movq	%r13, %rsi
	callq	dictFetchValue
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	cmovneq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelDiscardReplyCallback, %esi
	movl	$.L.str.297, %ecx
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	redisAsyncCommand
	cmpl	$-1, %eax
	je	.LBB61_10
# %bb.6:
	movq	40(%r12), %rax
	addl	$1, 8(%rax)
	movq	16(%rax), %r14
	movl	$.L.str.298, %r15d
	movl	$.L.str.298, %edi
	callq	sdsnew
	movq	%rax, %r13
	movq	192(%r12), %rax
	testq	%rax, %rax
	cmoveq	%r12, %rax
	movq	104(%rax), %rdi
	movq	%r13, %rsi
	callq	dictFetchValue
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	cmovneq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelDiscardReplyCallback, %esi
	movl	$.L.str.167, %ecx
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	redisAsyncCommand
	cmpl	$-1, %eax
	movl	$-1, %ecx
	je	.LBB61_11
# %bb.7:
	movq	40(%r12), %rax
	addl	$1, 8(%rax)
	xorl	%ecx, %ecx
	jmp	.LBB61_11
.LBB61_10:
	movl	$-1, %ecx
.LBB61_11:
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
.Lfunc_end61:
	.size	sentinelSendSlaveOf, .Lfunc_end61-sentinelSendSlaveOf
                                        # -- End function
	.globl	sentinelInfoReplyCallback # -- Begin function sentinelInfoReplyCallback
	.p2align	4, 0x90
	.type	sentinelInfoReplyCallback,@function
sentinelInfoReplyCallback:              # @sentinelInfoReplyCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rsi, %rsi
	je	.LBB62_4
# %bb.1:
	movq	224(%rdi), %rax
	testq	%rax, %rax
	je	.LBB62_4
# %bb.2:
	addl	$-1, 8(%rax)
	cmpl	$1, (%rsi)
	jne	.LBB62_4
# %bb.3:
	movq	24(%rsi), %rsi
	movq	%rdx, %rdi
	callq	sentinelRefreshInstanceInfo
.LBB62_4:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end62:
	.size	sentinelInfoReplyCallback, .Lfunc_end62-sentinelInfoReplyCallback
                                        # -- End function
	.globl	sentinelPingReplyCallback # -- Begin function sentinelPingReplyCallback
	.p2align	4, 0x90
	.type	sentinelPingReplyCallback,@function
sentinelPingReplyCallback:              # @sentinelPingReplyCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rsi, %rsi
	je	.LBB63_13
# %bb.1:
	movq	224(%rdi), %r15
	testq	%r15, %r15
	je	.LBB63_13
# %bb.2:
	movq	%rsi, %rbx
	addl	$-1, 8(%r15)
	movl	(%rsi), %eax
	addl	$-5, %eax
	cmpl	$1, %eax
	ja	.LBB63_12
# %bb.3:
	movq	%rdx, %r14
	movq	24(%rbx), %rdi
	movl	$.L.str.147, %esi
	movl	$4, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB63_6
# %bb.4:
	movq	24(%rbx), %rdi
	movl	$.L.str.148, %esi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB63_6
# %bb.5:
	movq	24(%rbx), %rdi
	movl	$.L.str.149, %esi
	movl	$10, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB63_6
# %bb.7:
	movq	24(%rbx), %rdi
	movl	$.L.str.150, %esi
	movl	$4, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB63_12
# %bb.8:
	movl	$4104, %eax             # imm = 0x1008
	andl	(%r14), %eax
	cmpl	$8, %eax
	jne	.LBB63_12
# %bb.9:
	movq	40(%r14), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.152, %r12d
	movl	$.L.str.152, %edi
	callq	sdsnew
	movq	%rax, %r13
	movq	192(%r14), %rax
	testq	%rax, %rax
	cmoveq	%r14, %rax
	movq	104(%rax), %rdi
	movq	%r13, %rsi
	callq	dictFetchValue
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	cmovneq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelDiscardReplyCallback, %esi
	movl	$.L.str.151, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%r12, %r8
	xorl	%eax, %eax
	callq	redisAsyncCommand
	testl	%eax, %eax
	jne	.LBB63_11
# %bb.10:
	movq	40(%r14), %rax
	addl	$1, 8(%rax)
.LBB63_11:
	orb	$16, 1(%r14)
	jmp	.LBB63_12
.LBB63_6:
	callq	mstime
	movq	%rax, 56(%r15)
	movq	$0, 64(%r15)
.LBB63_12:
	callq	mstime
	movq	%rax, 80(%r15)
.LBB63_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	sentinelPingReplyCallback, .Lfunc_end63-sentinelPingReplyCallback
                                        # -- End function
	.globl	sentinelPublishReplyCallback # -- Begin function sentinelPublishReplyCallback
	.p2align	4, 0x90
	.type	sentinelPublishReplyCallback,@function
sentinelPublishReplyCallback:           # @sentinelPublishReplyCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rsi, %rsi
	je	.LBB64_4
# %bb.1:
	movq	224(%rdi), %rax
	testq	%rax, %rax
	je	.LBB64_4
# %bb.2:
	addl	$-1, 8(%rax)
	cmpl	$6, (%rsi)
	je	.LBB64_4
# %bb.3:
	movq	%rdx, %rbx
	callq	mstime
	movq	%rax, 48(%rbx)
.LBB64_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end64:
	.size	sentinelPublishReplyCallback, .Lfunc_end64-sentinelPublishReplyCallback
                                        # -- End function
	.globl	sentinelProcessHelloMessage # -- Begin function sentinelProcessHelloMessage
	.p2align	4, 0x90
	.type	sentinelProcessHelloMessage,@function
sentinelProcessHelloMessage:            # @sentinelProcessHelloMessage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movslq	%esi, %rsi
	leaq	-44(%rbp), %r8
	movl	$.L.str.153, %edx
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, %r15
	cmpl	$8, -44(%rbp)
	jne	.LBB65_23
# %bb.1:
	movq	32(%r15), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB65_23
# %bb.2:
	movq	8(%r15), %rdi
	callq	atoi
	movl	%eax, %r13d
	movq	48(%r15), %rdi
	callq	atoi
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	136(%r14), %rdi
	movq	(%r15), %rsi
	movq	16(%r15), %rcx
	movl	%r13d, %edx
	callq	getSentinelRedisInstanceByAddrAndRunID
	movq	%rax, %r12
	movq	24(%r15), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	%rax, %rbx
	movq	56(%r15), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoull
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%r12, %r12
	je	.LBB65_3
# %bb.13:
	cmpq	sentinel+48(%rip), %rbx
	ja	.LBB65_14
.LBB65_15:
	testq	%r12, %r12
	jne	.LBB65_16
	jmp	.LBB65_23
.LBB65_3:
	movq	16(%r15), %rsi
	movq	%r14, %rdi
	callq	removeMatchingSentinelFromMaster
	testl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB65_5
# %bb.4:
	movq	(%r15), %r8
	subq	$8, %rsp
	movl	$.L.str.154, %esi
	movl	$.L.str.155, %ecx
	movl	$2, %edi
	movq	%r14, %rdx
	movl	%r13d, %r9d
	xorl	%eax, %eax
	pushq	16(%r15)
	callq	sentinelEvent
	addq	$16, %rsp
	jmp	.LBB65_7
.LBB65_5:
	movq	136(%r14), %rdi
	movq	(%r15), %rsi
	movl	%r13d, %edx
	xorl	%ecx, %ecx
	callq	getSentinelRedisInstanceByAddrAndRunID
	testq	%rax, %rax
	je	.LBB65_7
# %bb.6:
	movq	%rax, %r12
	movl	$.L.str.156, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	32(%r12), %rax
	movl	$0, 8(%rax)
	movq	%r12, %rdi
	callq	sentinelUpdateSentinelAddressInAllMasters
.LBB65_7:
	movq	(%r15), %rdx
	movq	16(%r15), %rdi
	movl	152(%r14), %r8d
	movl	$4, %esi
	movl	%r13d, %ecx
	movq	%r14, %r9
	callq	createSentinelRedisInstance
	testq	%rax, %rax
	je	.LBB65_8
# %bb.9:
	movq	%rax, %r12
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB65_10
# %bb.11:
	movq	16(%r15), %rdi
	callq	sdsnew
	movq	%rax, 16(%r12)
	movq	%r12, %rdi
	callq	sentinelTryConnectionSharing
	movq	%r12, %rdi
	callq	sentinelUpdateSentinelAddressInAllMasters
	jmp	.LBB65_12
.LBB65_8:
	xorl	%r12d, %r12d
	cmpq	sentinel+48(%rip), %rbx
	jbe	.LBB65_15
	jmp	.LBB65_14
.LBB65_10:
	movl	$.L.str.157, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	16(%r15), %rdi
	callq	sdsnew
	movq	%rax, 16(%r12)
	movq	%r12, %rdi
	callq	sentinelTryConnectionSharing
.LBB65_12:
	callq	sentinelFlushConfig
	cmpq	sentinel+48(%rip), %rbx
	jbe	.LBB65_15
.LBB65_14:
	movq	%rbx, sentinel+48(%rip)
	callq	sentinelFlushConfig
	movq	sentinel+48(%rip), %r8
	movl	$.L.str.158, %esi
	movl	$.L.str.159, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	testq	%r12, %r12
	je	.LBB65_23
.LBB65_16:
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 24(%r14)
	jae	.LBB65_22
# %bb.17:
	movq	%rax, 24(%r14)
	movq	32(%r14), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpl	8(%rax), %ecx
	jne	.LBB65_19
# %bb.18:
	movq	(%rax), %rdi
	movq	40(%r15), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB65_22
.LBB65_19:
	movq	%r15, %r13
	addq	$40, %r13
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movl	$.L.str.160, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	8(%r14), %r8
	movq	32(%r14), %rax
	movq	(%rax), %r9
	movl	8(%rax), %r10d
	subq	$8, %rsp
	movl	$.L.str.161, %esi
	movl	$.L.str.162, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	movq	-64(%rbp), %rbx         # 8-byte Reload
	pushq	%rbx
	pushq	(%r13)
	pushq	%r10
	callq	sentinelEvent
	addq	$32, %rsp
	movq	32(%r14), %r13
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	(%r13), %rdi
	callq	sdsnew
	movq	%rax, (%rbx)
	movl	8(%r13), %eax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	%r14, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	sentinelResetMasterAndChangeAddress
	cmpq	$0, 304(%r14)
	je	.LBB65_21
# %bb.20:
	movq	32(%r14), %r13
	movslq	8(%rbx), %rdx
	leaq	-144(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	movslq	8(%r13), %rdx
	leaq	-112(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	movq	8(%r14), %rsi
	movq	304(%r14), %rdi
	movq	(%rbx), %r8
	subq	$8, %rsp
	movl	$.L.str.45, %edx
	movl	$.L.str.142, %ecx
	leaq	-144(%rbp), %r9
	xorl	%eax, %eax
	pushq	$0
	movq	%rbx, %r10
	leaq	-112(%rbp), %rbx
	pushq	%rbx
	movq	%r10, %rbx
	pushq	(%r13)
	callq	sentinelScheduleScriptExecution
	addq	$32, %rsp
.LBB65_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB65_22:
	callq	mstime
	movq	%rax, 56(%r12)
.LBB65_23:
	movl	-44(%rbp), %esi
	movq	%r15, %rdi
	callq	sdsfreesplitres
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	sentinelProcessHelloMessage, .Lfunc_end65-sentinelProcessHelloMessage
                                        # -- End function
	.globl	sentinelSendHello       # -- Begin function sentinelSendHello
	.p2align	4, 0x90
	.type	sentinelSendHello,@function
sentinelSendHello:                      # @sentinelSendHello
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1128, %rsp             # imm = 0x468
	movq	%rdi, %r14
	movl	(%rdi), %eax
	movq	%rdi, %r13
	testb	$1, %al
	jne	.LBB66_2
# %bb.1:
	movq	192(%r14), %r13
	movl	(%r13), %eax
.LBB66_2:
	testb	$64, %al
	je	.LBB66_5
# %bb.3:
	movq	288(%r13), %rax
	testq	%rax, %rax
	je	.LBB66_5
# %bb.4:
	cmpl	$4, 248(%r13)
	jg	.LBB66_6
.LBB66_5:
	movq	%r13, %rax
.LBB66_6:
	movq	32(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rax
	movl	$-1, %ebx
	cmpl	$0, 4(%rax)
	jne	.LBB66_13
# %bb.7:
	movq	sentinel+96(%rip), %r12
	testq	%r12, %r12
	jne	.LBB66_9
# %bb.8:
	leaq	-96(%rbp), %r12
	movq	16(%rax), %rax
	movl	132(%rax), %edi
	movl	$46, %edx
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	callq	anetSockName
	cmpl	$-1, %eax
	je	.LBB66_13
.LBB66_9:
	movl	sentinel+104(%rip), %r8d
	testl	%r8d, %r8d
	jne	.LBB66_11
# %bb.10:
	movl	server+216(%rip), %r8d
.LBB66_11:
	movl	8(%r15), %r10d
	subq	$8, %rsp
	leaq	-1168(%rbp), %rbx
	movl	$1070, %esi             # imm = 0x42E
	movl	$.L.str.164, %edx
	movl	$sentinel, %r9d
	movq	%rbx, %rdi
	movq	%r12, %rcx
	movl	$0, %eax
	pushq	24(%r13)
	pushq	%r10
	pushq	(%r15)
	pushq	8(%r13)
	pushq	sentinel+48(%rip)
	callq	snprintf
	addq	$48, %rsp
	movq	40(%r14), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.166, %r13d
	movl	$.L.str.166, %edi
	callq	sdsnew
	movq	%rax, %r15
	movq	192(%r14), %rax
	testq	%rax, %rax
	cmoveq	%r14, %rax
	movq	104(%rax), %rdi
	movq	%r15, %rsi
	callq	dictFetchValue
	movq	%rax, %r12
	movq	%r15, %rdi
	callq	sdsfree
	testq	%r12, %r12
	cmovneq	%r12, %r13
	movl	$42, __A_VARIABLE(%rip)
	subq	$8, %rsp
	movl	$sentinelPublishReplyCallback, %esi
	movl	$.L.str.165, %ecx
	movl	$.L.str.122, %r9d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%r13, %r8
	xorl	%eax, %eax
	pushq	%rbx
	callq	redisAsyncCommand
	addq	$16, %rsp
	testl	%eax, %eax
	movl	$-1, %ebx
	jne	.LBB66_13
# %bb.12:
	movq	40(%r14), %rax
	addl	$1, 8(%rax)
	xorl	%ebx, %ebx
.LBB66_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$1128, %rsp             # imm = 0x468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	sentinelSendHello, .Lfunc_end66-sentinelSendHello
                                        # -- End function
	.globl	sentinelForceHelloUpdateDictOfRedisInstances # -- Begin function sentinelForceHelloUpdateDictOfRedisInstances
	.p2align	4, 0x90
	.type	sentinelForceHelloUpdateDictOfRedisInstances,@function
sentinelForceHelloUpdateDictOfRedisInstances: # @sentinelForceHelloUpdateDictOfRedisInstances
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB67_1
	.p2align	4, 0x90
.LBB67_4:                               #   in Loop: Header=BB67_1 Depth=1
	movq	%rbx, %rdi
.LBB67_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB67_5
# %bb.2:                                #   in Loop: Header=BB67_1 Depth=1
	movq	8(%rax), %rax
	movq	48(%rax), %rcx
	cmpq	$2001, %rcx             # imm = 0x7D1
	jl	.LBB67_4
# %bb.3:                                #   in Loop: Header=BB67_1 Depth=1
	addq	$-2001, %rcx            # imm = 0xF82F
	movq	%rcx, 48(%rax)
	jmp	.LBB67_4
.LBB67_5:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end67:
	.size	sentinelForceHelloUpdateDictOfRedisInstances, .Lfunc_end67-sentinelForceHelloUpdateDictOfRedisInstances
                                        # -- End function
	.globl	sentinelSendPeriodicCommands # -- Begin function sentinelSendPeriodicCommands
	.p2align	4, 0x90
	.type	sentinelSendPeriodicCommands,@function
sentinelSendPeriodicCommands:           # @sentinelSendPeriodicCommands
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	mstime
	movq	40(%rbx), %rcx
	cmpl	$0, 4(%rcx)
	jne	.LBB68_16
# %bb.1:
	movq	%rax, %r14
	imull	$100, (%rcx), %eax
	cmpl	%eax, 8(%rcx)
	jge	.LBB68_16
# %bb.2:
	movl	(%rbx), %edx
	testb	$2, %dl
	jne	.LBB68_3
.LBB68_5:
	movl	$10000, %eax            # imm = 0x2710
	jmp	.LBB68_6
.LBB68_3:
	movq	192(%rbx), %rsi
	movl	$1000, %eax             # imm = 0x3E8
	testb	$80, (%rsi)
	jne	.LBB68_6
# %bb.4:
	cmpq	$0, 168(%rbx)
	je	.LBB68_5
.LBB68_6:
	movq	88(%rbx), %rsi
	cmpq	$1001, %rsi             # imm = 0x3E9
	movl	$1000, %r12d            # imm = 0x3E8
	cmovlq	%rsi, %r12
	testb	$4, %dl
	jne	.LBB68_11
# %bb.7:
	movq	96(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB68_9
# %bb.8:
	movq	%r14, %rsi
	subq	%rdx, %rsi
	cmpq	%rax, %rsi
	jle	.LBB68_11
.LBB68_9:
	movq	16(%rcx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.169, %edi
	callq	sdsnew
	movq	%rax, %r13
	movq	192(%rbx), %rax
	testq	%rax, %rax
	cmoveq	%rbx, %rax
	movq	104(%rax), %rdi
	movq	%r13, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	sdsfree
	testq	%r15, %r15
	movl	$.L.str.169, %r8d
	cmovneq	%r15, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$sentinelInfoReplyCallback, %esi
	movl	$.L.str.167, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	redisAsyncCommand
	movq	40(%rbx), %rcx
	testl	%eax, %eax
	jne	.LBB68_11
# %bb.10:
	addl	$1, 8(%rcx)
.LBB68_11:
	movq	%r14, %rax
	subq	80(%rcx), %rax
	cmpq	%r12, %rax
	jle	.LBB68_14
# %bb.12:
	movq	%r14, %rax
	subq	72(%rcx), %rax
	movq	%r12, %rcx
	shrq	$63, %rcx
	addq	%r12, %rcx
	sarq	%rcx
	cmpq	%rcx, %rax
	jle	.LBB68_14
# %bb.13:
	movq	%rbx, %rdi
	callq	sentinelSendPing
.LBB68_14:
	movq	48(%rbx), %rax
	subq	%rax, %r14
	cmpq	$2001, %r14             # imm = 0x7D1
	jl	.LBB68_16
# %bb.15:
	movq	%rbx, %rdi
	callq	sentinelSendHello
.LBB68_16:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end68:
	.size	sentinelSendPeriodicCommands, .Lfunc_end68-sentinelSendPeriodicCommands
                                        # -- End function
	.globl	sentinelFailoverStateStr # -- Begin function sentinelFailoverStateStr
	.p2align	4, 0x90
	.type	sentinelFailoverStateStr,@function
sentinelFailoverStateStr:               # @sentinelFailoverStateStr
# %bb.0:
	movl	$.L.str.55, %eax
	cmpl	$6, %edi
	ja	.LBB69_2
# %bb.1:
	movslq	%edi, %rax
	movq	.Lswitch.table.addReplySentinelRedisInstance(,%rax,8), %rax
.LBB69_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end69:
	.size	sentinelFailoverStateStr, .Lfunc_end69-sentinelFailoverStateStr
                                        # -- End function
	.globl	addReplySentinelRedisInstance # -- Begin function addReplySentinelRedisInstance
	.p2align	4, 0x90
	.type	addReplySentinelRedisInstance,@function
addReplySentinelRedisInstance:          # @addReplySentinelRedisInstance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	sdsempty
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, %r14
	movl	$.L.str.177, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	8(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.178, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	32(%r15), %rax
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.179, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	32(%r15), %rax
	movslq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.180, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	16(%r15), %rax
	testq	%rax, %rax
	movl	$.L.str.1, %esi
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	(%r15), %eax
	testb	$8, %al
	jne	.LBB70_1
# %bb.2:
	testb	$16, %al
	jne	.LBB70_3
.LBB70_4:
	testb	$1, %al
	jne	.LBB70_5
.LBB70_6:
	testb	$2, %al
	jne	.LBB70_7
.LBB70_8:
	testb	$4, %al
	je	.LBB70_10
.LBB70_9:
	movl	$.L.str.185, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB70_10:
	movq	40(%r15), %rax
	cmpl	$0, 4(%rax)
	je	.LBB70_12
# %bb.11:
	movl	$.L.str.186, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB70_12:
	movl	(%r15), %eax
	testb	$32, %al
	jne	.LBB70_13
# %bb.14:
	testb	$64, %al
	jne	.LBB70_15
.LBB70_16:
	testb	%al, %al
	js	.LBB70_17
.LBB70_18:
	testl	$256, %eax              # imm = 0x100
	jne	.LBB70_19
.LBB70_20:
	testl	$512, %eax              # imm = 0x200
	jne	.LBB70_21
.LBB70_22:
	testl	$1024, %eax             # imm = 0x400
	je	.LBB70_24
.LBB70_23:
	movl	$.L.str.192, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB70_24:
	movzbl	-1(%r12), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB70_26
# %bb.25:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI70_0(,%rcx,8)
.LBB70_27:
	shrq	$3, %rax
	jmp	.LBB70_32
.LBB70_1:
	movl	$.L.str.181, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testb	$16, %al
	je	.LBB70_4
.LBB70_3:
	movl	$.L.str.182, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testb	$1, %al
	je	.LBB70_6
.LBB70_5:
	movl	$.L.str.183, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testb	$2, %al
	je	.LBB70_8
.LBB70_7:
	movl	$.L.str.184, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testb	$4, %al
	jne	.LBB70_9
	jmp	.LBB70_10
.LBB70_13:
	movl	$.L.str.187, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testb	$64, %al
	je	.LBB70_16
.LBB70_15:
	movl	$.L.str.188, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testb	%al, %al
	jns	.LBB70_18
.LBB70_17:
	movl	$.L.str.189, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testl	$256, %eax              # imm = 0x100
	je	.LBB70_20
.LBB70_19:
	movl	$.L.str.190, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testl	$512, %eax              # imm = 0x200
	je	.LBB70_22
.LBB70_21:
	movl	$.L.str.191, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
	movl	(%r15), %eax
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB70_23
	jmp	.LBB70_24
.LBB70_26:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB70_34
.LBB70_28:
	movzbl	-3(%r12), %eax
	jmp	.LBB70_32
.LBB70_29:
	movzwl	-5(%r12), %eax
	jmp	.LBB70_32
.LBB70_30:
	movl	-9(%r12), %eax
	jmp	.LBB70_32
.LBB70_31:
	movq	-17(%r12), %rax
.LBB70_32:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB70_34
# %bb.33:
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	$-2, %rdx
	callq	sdsrange
.LBB70_34:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	addReplyBulkCString
	movq	%r12, %rdi
	callq	sdsfree
	movl	$.L.str.193, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	40(%r15), %rax
	movslq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.194, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	40(%r15), %rax
	movslq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$10, %r12d
	testb	$64, (%r15)
	je	.LBB70_38
# %bb.35:
	movl	$.L.str.195, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movslq	248(%r15), %rax
	movl	$.L.str.55, %esi
	cmpq	$6, %rax
	ja	.LBB70_37
# %bb.36:
	movq	.Lswitch.table.addReplySentinelRedisInstance(,%rax,8), %rsi
.LBB70_37:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$11, %r12d
.LBB70_38:
	movl	$.L.str.196, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	40(%r15), %rax
	cmpq	$0, 64(%rax)
	je	.LBB70_39
# %bb.40:
	callq	mstime
	movq	%rax, %rsi
	movq	40(%r15), %rax
	subq	64(%rax), %rsi
	jmp	.LBB70_41
.LBB70_39:
	xorl	%esi, %esi
.LBB70_41:
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.197, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	callq	mstime
	movq	40(%r15), %rcx
	subq	56(%rcx), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	movl	$.L.str.198, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	callq	mstime
	movq	40(%r15), %rcx
	subq	80(%rcx), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	movl	(%r15), %eax
	testb	$8, %al
	je	.LBB70_43
# %bb.42:
	movl	$.L.str.199, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	callq	mstime
	subq	72(%r15), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	addl	$1, %r12d
	movl	(%r15), %eax
.LBB70_43:
	testb	$16, %al
	je	.LBB70_45
# %bb.44:
	movl	$.L.str.200, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	callq	mstime
	subq	80(%r15), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	addl	$1, %r12d
.LBB70_45:
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	88(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	(%r15), %eax
	testb	$3, %al
	je	.LBB70_46
# %bb.47:
	movl	$.L.str.201, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	callq	mstime
	subq	96(%r15), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	movl	$.L.str.202, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	cmpl	$1, 112(%r15)
	movl	$.L.str.53, %eax
	movl	$.L.str.54, %esi
	cmoveq	%rax, %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.203, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	callq	mstime
	subq	120(%r15), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	addl	$4, %r12d
	movl	(%r15), %eax
	testb	$1, %al
	jne	.LBB70_49
	jmp	.LBB70_54
.LBB70_46:
	addl	$1, %r12d
	testb	$1, %al
	je	.LBB70_54
.LBB70_49:
	movl	$.L.str.78, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	24(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.204, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	144(%r15), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.205, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	136(%r15), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.206, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	152(%r15), %esi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	272(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.69, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movslq	156(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	cmpq	$0, 296(%r15)
	je	.LBB70_50
# %bb.51:
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	296(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	addl	$7, %r12d
	cmpq	$0, 304(%r15)
	je	.LBB70_54
.LBB70_53:
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	304(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	addl	$1, %r12d
.LBB70_54:
	movl	(%r15), %eax
	testb	$2, %al
	je	.LBB70_56
# %bb.55:
	movl	$.L.str.207, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	168(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.208, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	cmpl	$0, 212(%r15)
	movl	$.L.str.209, %eax
	movl	$.L.str.210, %esi
	cmoveq	%rax, %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.211, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	200(%r15), %rax
	testq	%rax, %rax
	movl	$.L.str.212, %esi
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.213, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movslq	208(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.214, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movslq	176(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	movl	$.L.str.215, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	216(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	addl	$6, %r12d
	movl	(%r15), %eax
.LBB70_56:
	testb	$4, %al
	je	.LBB70_58
# %bb.57:
	movl	$.L.str.216, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	callq	mstime
	subq	56(%r15), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLongLong
	movl	$.L.str.217, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	224(%r15), %rax
	testq	%rax, %rax
	movl	$.L.str.212, %esi
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.218, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	232(%r15), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	addl	$3, %r12d
.LBB70_58:
	addl	%r12d, %r12d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	setDeferredMultiBulkLength
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB70_50:
	addl	$6, %r12d
	cmpq	$0, 304(%r15)
	jne	.LBB70_53
	jmp	.LBB70_54
.Lfunc_end70:
	.size	addReplySentinelRedisInstance, .Lfunc_end70-addReplySentinelRedisInstance
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI70_0:
	.quad	.LBB70_27
	.quad	.LBB70_28
	.quad	.LBB70_29
	.quad	.LBB70_30
	.quad	.LBB70_31
                                        # -- End function
	.text
	.globl	addReplyDictOfRedisInstances # -- Begin function addReplyDictOfRedisInstances
	.p2align	4, 0x90
	.type	addReplyDictOfRedisInstances,@function
addReplyDictOfRedisInstances:           # @addReplyDictOfRedisInstances
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	72(%r15), %rsi
	addq	40(%r15), %rsi
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	.p2align	4, 0x90
.LBB71_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB71_3
# %bb.1:                                #   in Loop: Header=BB71_2 Depth=1
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	addReplySentinelRedisInstance
	jmp	.LBB71_2
.LBB71_3:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end71:
	.size	addReplyDictOfRedisInstances, .Lfunc_end71-addReplyDictOfRedisInstances
                                        # -- End function
	.globl	sentinelGetMasterByNameOrReplyError # -- Begin function sentinelGetMasterByNameOrReplyError
	.p2align	4, 0x90
	.type	sentinelGetMasterByNameOrReplyError,@function
sentinelGetMasterByNameOrReplyError:    # @sentinelGetMasterByNameOrReplyError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	sentinel+56(%rip), %rdi
	movq	8(%rsi), %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	jne	.LBB72_2
# %bb.1:
	movl	$.L.str.219, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	xorl	%eax, %eax
.LBB72_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end72:
	.size	sentinelGetMasterByNameOrReplyError, .Lfunc_end72-sentinelGetMasterByNameOrReplyError
                                        # -- End function
	.globl	sentinelIsQuorumReachable # -- Begin function sentinelIsQuorumReachable
	.p2align	4, 0x90
	.type	sentinelIsQuorumReachable,@function
sentinelIsQuorumReachable:              # @sentinelIsQuorumReachable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	136(%rdi), %rdi
	movl	40(%rdi), %eax
	movl	72(%rdi), %ecx
	leal	(%rcx,%rax), %r12d
	addl	$1, %r12d
	callq	dictGetIterator
	movq	%rax, %r13
	movq	%rax, %rdi
	callq	dictNext
	movl	$1, %ebx
	testq	%rax, %rax
	je	.LBB73_3
	.p2align	4, 0x90
.LBB73_1:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movl	(%rax), %eax
	andl	$24, %eax
	cmpl	$1, %eax
	adcl	$0, %ebx
	movq	%r13, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB73_1
.LBB73_3:
	movq	%r13, %rdi
	callq	dictReleaseIterator
	xorl	%ecx, %ecx
	cmpl	152(%r15), %ebx
	setl	%cl
	movl	%r12d, %edx
	shrl	$31, %edx
	addl	%r12d, %edx
	sarl	%edx
	leal	2(%rcx), %eax
	cmpl	%edx, %ebx
	cmovgl	%ecx, %eax
	testq	%r14, %r14
	je	.LBB73_5
# %bb.4:
	movl	%ebx, (%r14)
.LBB73_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end73:
	.size	sentinelIsQuorumReachable, .Lfunc_end73-sentinelIsQuorumReachable
                                        # -- End function
	.globl	sentinelVoteLeader      # -- Begin function sentinelVoteLeader
	.p2align	4, 0x90
	.type	sentinelVoteLeader,@function
sentinelVoteLeader:                     # @sentinelVoteLeader
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	sentinel+48(%rip), %rax
	cmpq	%rsi, %rax
	jae	.LBB74_2
# %bb.1:
	movq	%rbx, sentinel+48(%rip)
	callq	sentinelFlushConfig
	movq	sentinel+48(%rip), %r8
	movl	$.L.str.158, %esi
	movl	$.L.str.159, %ecx
	movl	$3, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	sentinel+48(%rip), %rax
.LBB74_2:
	cmpq	%rbx, 232(%r12)
	jae	.LBB74_6
# %bb.3:
	cmpq	%rbx, %rax
	ja	.LBB74_6
# %bb.4:
	movq	224(%r12), %rdi
	callq	sdsfree
	movq	%r15, %rdi
	callq	sdsnew
	movq	%rax, 224(%r12)
	movq	sentinel+48(%rip), %rax
	movq	%rax, 232(%r12)
	callq	sentinelFlushConfig
	movq	224(%r12), %r8
	movq	232(%r12), %r9
	movl	$.L.str.287, %esi
	movl	$.L.str.288, %ecx
	movl	$3, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	224(%r12), %rdi
	movl	$sentinel, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB74_6
# %bb.5:
	callq	mstime
	movq	%rax, %rbx
	callq	rand
	cltq
	imulq	$274877907, %rax, %rcx  # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %eax
	cltq
	addq	%rbx, %rax
	movq	%rax, 264(%r12)
.LBB74_6:
	movq	232(%r12), %rax
	movq	%rax, (%r14)
	movq	224(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB74_7
# %bb.8:
	callq	sdsnew
	jmp	.LBB74_9
.LBB74_7:
	xorl	%eax, %eax
.LBB74_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end74:
	.size	sentinelVoteLeader, .Lfunc_end74-sentinelVoteLeader
                                        # -- End function
	.globl	sentinelSelectSlave     # -- Begin function sentinelSelectSlave
	.p2align	4, 0x90
	.type	sentinelSelectSlave,@function
sentinelSelectSlave:                    # @sentinelSelectSlave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r15
	movq	144(%rdi), %rax
	movq	72(%rax), %rdi
	addq	40(%rax), %rdi
	shlq	$3, %rdi
	callq	zmalloc
	movq	%rax, %r14
	testb	$8, (%r15)
	jne	.LBB75_2
# %bb.1:
	xorl	%r12d, %r12d
	jmp	.LBB75_3
.LBB75_2:
	callq	mstime
	movq	%rax, %r12
	subq	72(%r15), %r12
.LBB75_3:
	movq	88(%r15), %r13
	movq	144(%r15), %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB75_17
# %bb.4:                                # %.preheader
	leaq	(,%r13,4), %rcx
	addq	%r13, %rcx
	leaq	(%r12,%rcx,2), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB75_7
.LBB75_5:                               #   in Loop: Header=BB75_7 Depth=1
	movq	%r12, %r14
	.p2align	4, 0x90
.LBB75_6:                               #   in Loop: Header=BB75_7 Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB75_15
.LBB75_7:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %r13
	testb	$24, (%r13)
	jne	.LBB75_6
# %bb.8:                                #   in Loop: Header=BB75_7 Depth=1
	movq	40(%r13), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB75_6
# %bb.9:                                #   in Loop: Header=BB75_7 Depth=1
	callq	mstime
	movq	40(%r13), %rcx
	subq	56(%rcx), %rax
	cmpq	$5000, %rax             # imm = 0x1388
	jg	.LBB75_6
# %bb.10:                               #   in Loop: Header=BB75_7 Depth=1
	cmpl	$0, 176(%r13)
	je	.LBB75_6
# %bb.11:                               #   in Loop: Header=BB75_7 Depth=1
	movq	%r14, %r12
	testb	$8, (%r15)
	movl	$5000, %r14d            # imm = 0x1388
	movl	$30000, %eax            # imm = 0x7530
	cmoveq	%rax, %r14
	callq	mstime
	subq	96(%r13), %rax
	cmpq	%r14, %rax
	jg	.LBB75_5
# %bb.12:                               #   in Loop: Header=BB75_7 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 168(%r13)
	jg	.LBB75_5
# %bb.14:                               #   in Loop: Header=BB75_7 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movslq	%ecx, %rax
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%r12, %r14
	movq	%r13, (%r12,%rax,8)
	jmp	.LBB75_6
.LBB75_15:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB75_18
# %bb.16:
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compareSlavesForPromotion, %ecx
	movq	%r14, %rdi
	callq	qsort
	movq	(%r14), %rbx
	jmp	.LBB75_19
.LBB75_17:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
.LBB75_18:
	xorl	%ebx, %ebx
.LBB75_19:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end75:
	.size	sentinelSelectSlave, .Lfunc_end75-sentinelSelectSlave
                                        # -- End function
	.globl	sentinelStartFailover   # -- Begin function sentinelStartFailover
	.p2align	4, 0x90
	.type	sentinelStartFailover,@function
sentinelStartFailover:                  # @sentinelStartFailover
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	(%rdi), %eax
	testb	$1, %al
	je	.LBB76_2
# %bb.1:
	movq	%rdi, %rbx
	movl	$1, 248(%rdi)
	orl	$64, %eax
	movl	%eax, (%rdi)
	movq	sentinel+48(%rip), %r8
	addq	$1, %r8
	movq	%r8, sentinel+48(%rip)
	movq	%r8, 240(%rdi)
	movl	$.L.str.158, %esi
	movl	$.L.str.159, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movl	$.L.str.300, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	callq	mstime
	movq	%rax, %r14
	callq	rand
	cltq
	imulq	$274877907, %rax, %rcx  # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %eax
	cltq
	addq	%r14, %rax
	movq	%rax, 264(%rbx)
	callq	mstime
	movq	%rax, 256(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB76_2:
	movl	$.L.str.299, %edi
	movl	$.L.str.17, %esi
	movl	$3978, %edx             # imm = 0xF8A
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end76:
	.size	sentinelStartFailover, .Lfunc_end76-sentinelStartFailover
                                        # -- End function
	.globl	sentinelSetCommand      # -- Begin function sentinelSetCommand
	.p2align	4, 0x90
	.type	sentinelSetCommand,@function
sentinelSetCommand:                     # @sentinelSetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	16(%rax), %rax
	movq	sentinel+56(%rip), %rdi
	movq	8(%rax), %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB77_80
# %bb.1:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%r12), %eax
	cmpl	$4, %eax
	jl	.LBB77_82
# %bb.2:
	movl	$3, %r14d
	xorl	%ebx, %ebx
	movq	%r12, -56(%rbp)         # 8-byte Spill
	jmp	.LBB77_6
	.p2align	4, 0x90
.LBB77_3:                               #   in Loop: Header=BB77_6 Depth=1
	movq	72(%r12), %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rax,%rdx,8), %rcx
	movq	8(%rax,%rdx,8), %rax
	movq	8(%rcx), %r8
	movq	8(%rax), %r9
	movl	$.L.str.272, %esi
	movl	$.L.str.273, %ecx
.LBB77_4:                               #   in Loop: Header=BB77_6 Depth=1
	movl	$3, %edi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB77_5:                               #   in Loop: Header=BB77_6 Depth=1
	addl	$1, %ebx
	addl	$1, %r15d
	movl	64(%r12), %eax
	movl	%r15d, %r14d
	cmpl	%eax, %r15d
	jge	.LBB77_81
.LBB77_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_13 Depth 2
                                        #       Child Loop BB77_14 Depth 3
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	%r14d, %ebx
	notl	%ebx
	addl	%eax, %ebx
	movq	72(%r12), %r12
	movslq	%r14d, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%r12,%rax,8), %rax
	movq	8(%rax), %r15
	movl	$.L.str.65, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%ebx, %ebx
	jle	.LBB77_16
# %bb.7:                                #   in Loop: Header=BB77_6 Depth=1
	testl	%eax, %eax
	jne	.LBB77_16
# %bb.8:                                #   in Loop: Header=BB77_6 Depth=1
	movq	%r15, -72(%rbp)         # 8-byte Spill
	leal	1(%r14), %r15d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%r12,%rax,8), %rdi
	leaq	-80(%rbp), %rsi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	je	.LBB77_83
# %bb.9:                                #   in Loop: Header=BB77_6 Depth=1
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB77_83
# %bb.10:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%rax, 88(%r13)
	movq	144(%r13), %rdi
	movq	%rdi, -112(%rbp)
	movq	136(%r13), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -96(%rbp)
	testq	%rdi, %rdi
	je	.LBB77_21
# %bb.11:                               #   in Loop: Header=BB77_6 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB77_13
	.p2align	4, 0x90
.LBB77_12:                              #   in Loop: Header=BB77_13 Depth=2
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movq	-104(%rbp,%r12,8), %rdi
	addq	$1, %r12
	testq	%rdi, %rdi
	je	.LBB77_21
.LBB77_13:                              #   Parent Loop BB77_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB77_14 Depth 3
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB77_14:                              #   Parent Loop BB77_6 Depth=1
                                        #     Parent Loop BB77_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	dictNext
	testq	%rax, %rax
	je	.LBB77_12
# %bb.15:                               #   in Loop: Header=BB77_14 Depth=3
	movq	8(%rax), %rax
	movq	88(%r13), %rcx
	movq	%rcx, 88(%rax)
	movq	%rbx, %rdi
	jmp	.LBB77_14
	.p2align	4, 0x90
.LBB77_16:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$.L.str.68, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%ebx, %ebx
	jle	.LBB77_22
# %bb.17:                               #   in Loop: Header=BB77_6 Depth=1
	testl	%eax, %eax
	jne	.LBB77_22
# %bb.18:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%r15, -72(%rbp)         # 8-byte Spill
	leal	1(%r14), %r15d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%r12,%rax,8), %rdi
	leaq	-80(%rbp), %rsi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	je	.LBB77_83
# %bb.19:                               #   in Loop: Header=BB77_6 Depth=1
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jle	.LBB77_84
# %bb.20:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%rax, 272(%r13)
	jmp	.LBB77_76
	.p2align	4, 0x90
.LBB77_21:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB77_76
	.p2align	4, 0x90
.LBB77_22:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$.L.str.69, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%ebx, %ebx
	jle	.LBB77_27
# %bb.23:                               #   in Loop: Header=BB77_6 Depth=1
	testl	%eax, %eax
	jne	.LBB77_27
# %bb.24:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%r15, -72(%rbp)         # 8-byte Spill
	leal	1(%r14), %r15d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%r12,%rax,8), %rdi
	leaq	-80(%rbp), %rsi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	je	.LBB77_83
# %bb.25:                               #   in Loop: Header=BB77_6 Depth=1
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jle	.LBB77_84
# %bb.26:                               #   in Loop: Header=BB77_6 Depth=1
	movl	%eax, 156(%r13)
	jmp	.LBB77_76
.LBB77_27:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$.L.str.70, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%ebx, %ebx
	jle	.LBB77_34
# %bb.28:                               #   in Loop: Header=BB77_6 Depth=1
	testl	%eax, %eax
	jne	.LBB77_34
# %bb.29:                               #   in Loop: Header=BB77_6 Depth=1
	cmpl	$0, sentinel+120(%rip)
	jne	.LBB77_88
# %bb.30:                               #   in Loop: Header=BB77_6 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%r12,%rax,8), %rax
	movq	8(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB77_32
# %bb.31:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	access
	cmpl	$-1, %eax
	je	.LBB77_89
.LBB77_32:                              #   in Loop: Header=BB77_6 Depth=1
	movq	296(%r13), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB77_45
# %bb.33:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%rbx, %rdi
	callq	sdsnew
	jmp	.LBB77_46
.LBB77_34:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$.L.str.72, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%ebx, %ebx
	jle	.LBB77_41
# %bb.35:                               #   in Loop: Header=BB77_6 Depth=1
	testl	%eax, %eax
	jne	.LBB77_41
# %bb.36:                               #   in Loop: Header=BB77_6 Depth=1
	cmpl	$0, sentinel+120(%rip)
	jne	.LBB77_88
# %bb.37:                               #   in Loop: Header=BB77_6 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%r12,%rax,8), %rax
	movq	8(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB77_39
# %bb.38:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	access
	cmpl	$-1, %eax
	je	.LBB77_92
.LBB77_39:                              #   in Loop: Header=BB77_6 Depth=1
	movq	304(%r13), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB77_52
# %bb.40:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%rbx, %rdi
	callq	sdsnew
	jmp	.LBB77_53
.LBB77_41:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%ebx, %ebx
	jle	.LBB77_47
# %bb.42:                               #   in Loop: Header=BB77_6 Depth=1
	testl	%eax, %eax
	jne	.LBB77_47
# %bb.43:                               #   in Loop: Header=BB77_6 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%r12,%rax,8), %rax
	movq	8(%rax), %rbx
	movq	160(%r13), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB77_59
# %bb.44:                               #   in Loop: Header=BB77_6 Depth=1
	movq	%rbx, %rdi
	callq	sdsnew
	jmp	.LBB77_60
.LBB77_45:                              #   in Loop: Header=BB77_6 Depth=1
	xorl	%eax, %eax
.LBB77_46:                              #   in Loop: Header=BB77_6 Depth=1
	leal	1(%r14), %r15d
	movq	%rax, 296(%r13)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB77_76
.LBB77_47:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$.L.str.206, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%ebx, %ebx
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jle	.LBB77_54
# %bb.48:                               #   in Loop: Header=BB77_6 Depth=1
	testl	%eax, %eax
	jne	.LBB77_54
# %bb.49:                               #   in Loop: Header=BB77_6 Depth=1
	leal	1(%r14), %r15d
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%r12,%rax,8), %rdi
	leaq	-80(%rbp), %rsi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	je	.LBB77_83
# %bb.50:                               #   in Loop: Header=BB77_6 Depth=1
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jle	.LBB77_84
# %bb.51:                               #   in Loop: Header=BB77_6 Depth=1
	movl	%eax, 152(%r13)
	jmp	.LBB77_76
.LBB77_52:                              #   in Loop: Header=BB77_6 Depth=1
	xorl	%eax, %eax
.LBB77_53:                              #   in Loop: Header=BB77_6 Depth=1
	leal	1(%r14), %r15d
	movq	%rax, 304(%r13)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB77_76
.LBB77_54:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$.L.str.85, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$2, %ebx
	jl	.LBB77_93
# %bb.55:                               #   in Loop: Header=BB77_6 Depth=1
	testl	%eax, %eax
	jne	.LBB77_93
# %bb.56:                               #   in Loop: Header=BB77_6 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	8(%r12,%rcx,8), %rax
	movq	16(%r12,%rcx,8), %rcx
	movq	8(%rax), %rsi
	leal	2(%r14), %r15d
	movq	8(%rcx), %rdx
	movzbl	-1(%rsi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movl	-44(%rbp), %ebx         # 4-byte Reload
	ja	.LBB77_94
# %bb.57:                               #   in Loop: Header=BB77_6 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI77_0(,%rcx,8)
.LBB77_58:                              #   in Loop: Header=BB77_6 Depth=1
	shrq	$3, %rax
	jmp	.LBB77_65
.LBB77_59:                              #   in Loop: Header=BB77_6 Depth=1
	xorl	%eax, %eax
.LBB77_60:                              #   in Loop: Header=BB77_6 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %ebx         # 4-byte Reload
	leal	1(%r14), %r15d
	movq	%rax, 160(%r13)
	jmp	.LBB77_76
.LBB77_61:                              #   in Loop: Header=BB77_6 Depth=1
	movzbl	-3(%rsi), %eax
	jmp	.LBB77_65
.LBB77_62:                              #   in Loop: Header=BB77_6 Depth=1
	movzwl	-5(%rsi), %eax
	jmp	.LBB77_65
.LBB77_63:                              #   in Loop: Header=BB77_6 Depth=1
	movl	-9(%rsi), %eax
	jmp	.LBB77_65
.LBB77_64:                              #   in Loop: Header=BB77_6 Depth=1
	movq	-17(%rsi), %rax
.LBB77_65:                              #   in Loop: Header=BB77_6 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB77_96
# %bb.66:                               #   in Loop: Header=BB77_6 Depth=1
	movzbl	-1(%rdx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB77_95
# %bb.67:                               #   in Loop: Header=BB77_6 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI77_1(,%rcx,8)
.LBB77_68:                              #   in Loop: Header=BB77_6 Depth=1
	shrq	$3, %rax
	jmp	.LBB77_73
.LBB77_69:                              #   in Loop: Header=BB77_6 Depth=1
	movzbl	-3(%rdx), %eax
	jmp	.LBB77_73
.LBB77_70:                              #   in Loop: Header=BB77_6 Depth=1
	movzwl	-5(%rdx), %eax
	jmp	.LBB77_73
.LBB77_71:                              #   in Loop: Header=BB77_6 Depth=1
	movl	-9(%rdx), %eax
	jmp	.LBB77_73
.LBB77_72:                              #   in Loop: Header=BB77_6 Depth=1
	movq	-17(%rdx), %rax
.LBB77_73:                              #   in Loop: Header=BB77_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB77_96
# %bb.74:                               #   in Loop: Header=BB77_6 Depth=1
	movq	104(%r13), %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	dictDelete
	xorl	%edi, %edi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	dictSdsKeyCaseCompare
	testl	%eax, %eax
	jne	.LBB77_76
# %bb.75:                               #   in Loop: Header=BB77_6 Depth=1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	sdsdup
	movq	%rax, %rbx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	sdsdup
	movq	104(%r13), %rdi
	movq	%rbx, %rsi
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movq	%rax, %rdx
	callq	dictAdd
	.p2align	4, 0x90
.LBB77_76:                              #   in Loop: Header=BB77_6 Depth=1
	movl	%r15d, %eax
	subl	%r14d, %eax
	cmpl	$2, %eax
	je	.LBB77_79
# %bb.77:                               #   in Loop: Header=BB77_6 Depth=1
	cmpl	$1, %eax
	je	.LBB77_3
# %bb.78:                               #   in Loop: Header=BB77_6 Depth=1
	movq	72(%r12), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %r8
	movl	$.L.str.272, %esi
	movl	$.L.str.275, %ecx
	movl	$3, %edi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	jmp	.LBB77_5
	.p2align	4, 0x90
.LBB77_79:                              #   in Loop: Header=BB77_6 Depth=1
	movq	72(%r12), %rax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rax,%rsi,8), %rcx
	movq	8(%rax,%rsi,8), %rdx
	movq	8(%rcx), %r8
	movq	8(%rdx), %r9
	movq	16(%rax,%rsi,8), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movl	$.L.str.272, %esi
	movl	$.L.str.274, %ecx
	jmp	.LBB77_4
.LBB77_80:
	movl	$.L.str.219, %esi
	movq	%r12, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB77_87
.LBB77_81:
	callq	sentinelFlushConfig
.LBB77_82:
	movq	shared+8(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	jmp	.LBB77_87
.LBB77_83:
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %ebx         # 4-byte Reload
.LBB77_84:
	testl	%ebx, %ebx
	je	.LBB77_86
# %bb.85:
	callq	sentinelFlushConfig
.LBB77_86:
	movq	72(%r12), %rax
	movslq	%r15d, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.276, %esi
	movq	%r12, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB77_87:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB77_88:
	movl	$.L.str.268, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	jmp	.LBB77_87
.LBB77_89:
	movl	$.L.str.269, %esi
	jmp	.LBB77_90
.LBB77_92:
	movl	$.L.str.270, %esi
.LBB77_90:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB77_87
.LBB77_91:
	callq	sentinelFlushConfig
	jmp	.LBB77_87
.LBB77_93:
	movl	$.L.str.271, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB77_91
	jmp	.LBB77_87
.LBB77_94:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB77_96
.LBB77_95:
	movl	$42, __A_VARIABLE(%rip)
.LBB77_96:
	movzbl	-1(%rdx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB77_105
# %bb.97:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI77_2(,%rcx,8)
.LBB77_98:
	shrq	$3, %rax
	jmp	.LBB77_103
.LBB77_99:
	movzbl	-3(%rdx), %eax
	jmp	.LBB77_103
.LBB77_100:
	movzwl	-5(%rdx), %eax
	jmp	.LBB77_103
.LBB77_101:
	movl	-9(%rdx), %eax
	jmp	.LBB77_103
.LBB77_102:
	movq	-17(%rdx), %rax
.LBB77_103:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB77_84
# %bb.104:
	addl	$1, %r14d
	movl	%r14d, %r15d
	jmp	.LBB77_84
.LBB77_105:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB77_84
.Lfunc_end77:
	.size	sentinelSetCommand, .Lfunc_end77-sentinelSetCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI77_0:
	.quad	.LBB77_58
	.quad	.LBB77_61
	.quad	.LBB77_62
	.quad	.LBB77_63
	.quad	.LBB77_64
.LJTI77_1:
	.quad	.LBB77_68
	.quad	.LBB77_69
	.quad	.LBB77_70
	.quad	.LBB77_71
	.quad	.LBB77_72
.LJTI77_2:
	.quad	.LBB77_98
	.quad	.LBB77_99
	.quad	.LBB77_100
	.quad	.LBB77_101
	.quad	.LBB77_102
                                        # -- End function
	.text
	.globl	sentinelCheckSubjectivelyDown # -- Begin function sentinelCheckSubjectivelyDown
	.p2align	4, 0x90
	.type	sentinelCheckSubjectivelyDown,@function
sentinelCheckSubjectivelyDown:          # @sentinelCheckSubjectivelyDown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	40(%rdi), %rcx
	cmpq	$0, 64(%rcx)
	je	.LBB78_2
# %bb.1:
	callq	mstime
	movq	%rax, %r14
	movq	40(%rbx), %rcx
	leaq	64(%rcx), %rax
	jmp	.LBB78_5
.LBB78_2:
	cmpl	$0, 4(%rcx)
	je	.LBB78_3
# %bb.4:
	callq	mstime
	movq	%rax, %r14
	movq	40(%rbx), %rcx
	leaq	56(%rcx), %rax
.LBB78_5:
	subq	(%rax), %r14
	cmpq	$0, 16(%rcx)
	je	.LBB78_16
.LBB78_7:
	callq	mstime
	movq	40(%rbx), %rcx
	subq	32(%rcx), %rax
	cmpq	$15001, %rax            # imm = 0x3A99
	jl	.LBB78_16
# %bb.8:
	cmpq	$0, 64(%rcx)
	je	.LBB78_16
# %bb.9:
	callq	mstime
	movq	40(%rbx), %rcx
	movq	88(%rbx), %rdx
	subq	64(%rcx), %rax
	movq	%rdx, %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	sarq	%rsi
	cmpq	%rsi, %rax
	jle	.LBB78_16
# %bb.10:
	callq	mstime
	movq	40(%rbx), %rcx
	movq	88(%rbx), %rdx
	subq	80(%rcx), %rax
	movq	%rdx, %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	sarq	%rsi
	cmpq	%rsi, %rax
	jle	.LBB78_16
# %bb.11:
	movq	16(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB78_15
# %bb.12:
	movq	$0, 16(%rcx)
	movl	$0, 8(%rcx)
	cmpq	%rdi, 24(%rcx)
	jne	.LBB78_14
# %bb.13:
	movq	$0, 24(%rcx)
.LBB78_14:
	movq	$0, 224(%rdi)
	movl	$1, 4(%rcx)
	callq	redisAsyncFree
	movq	40(%rbx), %rcx
.LBB78_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB78_16
.LBB78_3:
	xorl	%r14d, %r14d
	cmpq	$0, 16(%rcx)
	jne	.LBB78_7
.LBB78_16:
	cmpq	$0, 24(%rcx)
	je	.LBB78_24
# %bb.17:
	callq	mstime
	movq	40(%rbx), %rcx
	subq	40(%rcx), %rax
	cmpq	$15001, %rax            # imm = 0x3A99
	jl	.LBB78_24
# %bb.18:
	callq	mstime
	movq	40(%rbx), %rcx
	subq	48(%rcx), %rax
	cmpq	$6001, %rax             # imm = 0x1771
	jl	.LBB78_24
# %bb.19:
	movq	24(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB78_23
# %bb.20:
	cmpq	%rdi, 16(%rcx)
	jne	.LBB78_22
# %bb.21:
	movq	$0, 16(%rcx)
	movl	$0, 8(%rcx)
.LBB78_22:
	movq	$0, 24(%rcx)
	movq	$0, 224(%rdi)
	movl	$1, 4(%rcx)
	callq	redisAsyncFree
.LBB78_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB78_24:
	cmpq	88(%rbx), %r14
	jle	.LBB78_25
.LBB78_31:
	testb	$8, (%rbx)
	jne	.LBB78_33
# %bb.32:
	movl	$.L.str.278, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	callq	mstime
	movq	%rax, 72(%rbx)
	orb	$8, (%rbx)
	jmp	.LBB78_33
.LBB78_25:
	movl	(%rbx), %eax
	testb	$1, %al
	je	.LBB78_29
# %bb.26:
	cmpl	$2, 112(%rbx)
	jne	.LBB78_29
# %bb.27:
	callq	mstime
	subq	120(%rbx), %rax
	movl	$20000, %ecx            # imm = 0x4E20
	addq	88(%rbx), %rcx
	cmpq	%rcx, %rax
	jg	.LBB78_31
# %bb.28:
	movl	(%rbx), %eax
.LBB78_29:
	testb	$8, %al
	je	.LBB78_33
# %bb.30:
	movl	$.L.str.279, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	andl	$-4105, (%rbx)          # imm = 0xEFF7
.LBB78_33:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end78:
	.size	sentinelCheckSubjectivelyDown, .Lfunc_end78-sentinelCheckSubjectivelyDown
                                        # -- End function
	.globl	sentinelCheckObjectivelyDown # -- Begin function sentinelCheckObjectivelyDown
	.p2align	4, 0x90
	.type	sentinelCheckObjectivelyDown,@function
sentinelCheckObjectivelyDown:           # @sentinelCheckObjectivelyDown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	(%rdi), %eax
	testb	$8, %al
	je	.LBB79_7
# %bb.1:
	movq	136(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	movl	$1, %ebx
	testq	%rax, %rax
	je	.LBB79_4
	.p2align	4, 0x90
.LBB79_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movl	(%rax), %eax
	shrl	$5, %eax
	andl	$1, %eax
	addl	%eax, %ebx
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB79_2
.LBB79_4:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movl	(%r14), %eax
	movl	152(%r14), %r9d
	cmpl	%r9d, %ebx
	jae	.LBB79_5
.LBB79_7:
	testb	$16, %al
	je	.LBB79_9
# %bb.8:
	movl	$.L.str.282, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	andb	$-17, (%r14)
	jmp	.LBB79_9
.LBB79_5:
	testb	$16, %al
	jne	.LBB79_9
# %bb.6:
	movl	$.L.str.280, %esi
	movl	$.L.str.281, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	movl	%ebx, %r8d
	xorl	%eax, %eax
	callq	sentinelEvent
	orb	$16, (%r14)
	callq	mstime
	movq	%rax, 80(%r14)
.LBB79_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end79:
	.size	sentinelCheckObjectivelyDown, .Lfunc_end79-sentinelCheckObjectivelyDown
                                        # -- End function
	.globl	sentinelReceiveIsMasterDownReply # -- Begin function sentinelReceiveIsMasterDownReply
	.p2align	4, 0x90
	.type	sentinelReceiveIsMasterDownReply,@function
sentinelReceiveIsMasterDownReply:       # @sentinelReceiveIsMasterDownReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rsi, %rsi
	je	.LBB80_11
# %bb.1:
	movq	224(%rdi), %rax
	testq	%rax, %rax
	je	.LBB80_11
# %bb.2:
	movq	%rsi, %rbx
	addl	$-1, 8(%rax)
	cmpl	$2, (%rsi)
	jne	.LBB80_11
# %bb.3:
	cmpq	$3, 32(%rbx)
	jne	.LBB80_11
# %bb.4:
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	cmpl	$3, (%rcx)
	jne	.LBB80_11
# %bb.5:
	movq	8(%rax), %rcx
	cmpl	$1, (%rcx)
	jne	.LBB80_11
# %bb.6:
	movq	16(%rax), %rax
	cmpl	$3, (%rax)
	jne	.LBB80_11
# %bb.7:
	movq	%rdx, %r14
	callq	mstime
	movq	%rax, 64(%r14)
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	movl	(%r14), %edx
	movl	%edx, %esi
	andl	$-33, %esi
	orl	$32, %edx
	cmpq	$1, 8(%rcx)
	cmovnel	%esi, %edx
	movl	%edx, (%r14)
	movq	8(%rax), %rax
	movq	24(%rax), %rdi
	movl	$.L.str.225, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB80_11
# %bb.8:
	movq	224(%r14), %rdi
	callq	sdsfree
	movq	40(%rbx), %rax
	movq	16(%rax), %rcx
	movq	8(%rcx), %r8
	cmpq	%r8, 232(%r14)
	je	.LBB80_10
# %bb.9:
	movq	8(%r14), %rdx
	movq	8(%rax), %rax
	movq	24(%rax), %rcx
	movl	$.L.str.283, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	40(%rbx), %rax
.LBB80_10:
	movq	8(%rax), %rax
	movq	24(%rax), %rdi
	callq	sdsnew
	movq	%rax, 224(%r14)
	movq	40(%rbx), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, 232(%r14)
.LBB80_11:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end80:
	.size	sentinelReceiveIsMasterDownReply, .Lfunc_end80-sentinelReceiveIsMasterDownReply
                                        # -- End function
	.globl	sentinelAskMasterStateToOtherSentinels # -- Begin function sentinelAskMasterStateToOtherSentinels
	.p2align	4, 0x90
	.type	sentinelAskMasterStateToOtherSentinels,@function
sentinelAskMasterStateToOtherSentinels: # @sentinelAskMasterStateToOtherSentinels
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rdi, %r13
	movq	136(%rdi), %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	jmp	.LBB81_1
.LBB81_8:                               #   in Loop: Header=BB81_1 Depth=1
	movq	32(%r13), %rax
	movslq	8(%rax), %rdx
	movl	$32, %esi
	leaq	-96(%rbp), %rdi
	callq	ll2string
	movq	40(%r15), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$.L.str.285, %edi
	callq	sdsnew
	movq	%rax, %r14
	movq	192(%r15), %rax
	testq	%rax, %rax
	cmoveq	%r15, %rax
	movq	104(%rax), %rdi
	movq	%r14, %rsi
	callq	dictFetchValue
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	sdsfree
	testq	%r12, %r12
	movl	$.L.str.285, %eax
	cmoveq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	cmpl	$0, 248(%r13)
	movq	(%rax), %r9
	movl	$.L.str.225, %r10d
	movl	$sentinel, %eax
	cmovgq	%rax, %r10
	subq	$8, %rsp
	movl	$sentinelReceiveIsMasterDownReply, %esi
	movl	$.L.str.284, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rdx
	movq	%r12, %r8
	xorl	%eax, %eax
	pushq	%r10
	pushq	sentinel+48(%rip)
	movq	%rbx, %r10
	leaq	-96(%rbp), %rbx
	pushq	%rbx
	movq	%r10, %rbx
	callq	redisAsyncCommand
	addq	$32, %rsp
	testl	%eax, %eax
	je	.LBB81_9
	.p2align	4, 0x90
.LBB81_10:                              #   in Loop: Header=BB81_1 Depth=1
	movq	%rbx, %rdi
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB81_11
# %bb.2:                                #   in Loop: Header=BB81_1 Depth=1
	movq	8(%rax), %r15
	callq	mstime
	subq	64(%r15), %rax
	cmpq	$5001, %rax             # imm = 0x1389
	jl	.LBB81_4
# %bb.3:                                #   in Loop: Header=BB81_1 Depth=1
	andb	$-33, (%r15)
	movq	224(%r15), %rdi
	callq	sdsfree
	movq	$0, 224(%r15)
.LBB81_4:                               #   in Loop: Header=BB81_1 Depth=1
	testb	$8, (%r13)
	je	.LBB81_10
# %bb.5:                                #   in Loop: Header=BB81_1 Depth=1
	movq	40(%r15), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB81_10
# %bb.6:                                #   in Loop: Header=BB81_1 Depth=1
	testb	$1, -44(%rbp)           # 1-byte Folded Reload
	jne	.LBB81_8
# %bb.7:                                #   in Loop: Header=BB81_1 Depth=1
	callq	mstime
	subq	64(%r15), %rax
	cmpq	$1000, %rax             # imm = 0x3E8
	jge	.LBB81_8
	jmp	.LBB81_10
.LBB81_9:                               #   in Loop: Header=BB81_1 Depth=1
	movq	40(%r15), %rax
	addl	$1, 8(%rax)
	jmp	.LBB81_10
.LBB81_11:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end81:
	.size	sentinelAskMasterStateToOtherSentinels, .Lfunc_end81-sentinelAskMasterStateToOtherSentinels
                                        # -- End function
	.globl	sentinelLeaderIncr      # -- Begin function sentinelLeaderIncr
	.p2align	4, 0x90
	.type	sentinelLeaderIncr,@function
sentinelLeaderIncr:                     # @sentinelLeaderIncr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdx
	callq	dictAddRaw
	movq	-8(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB82_2
# %bb.1:
	movq	8(%rcx), %rax
	addq	$1, %rax
	movq	%rax, 8(%rcx)
	jmp	.LBB82_4
.LBB82_2:
	testq	%rax, %rax
	je	.LBB82_5
# %bb.3:
	movq	$1, 8(%rax)
	movl	$1, %eax
.LBB82_4:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB82_5:
	movl	$.L.str.289, %edi
	movl	$.L.str.17, %esi
	movl	$3827, %edx             # imm = 0xEF3
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end82:
	.size	sentinelLeaderIncr, .Lfunc_end82-sentinelLeaderIncr
                                        # -- End function
	.globl	sentinelGetLeader       # -- Begin function sentinelGetLeader
	.p2align	4, 0x90
	.type	sentinelGetLeader,@function
sentinelGetLeader:                      # @sentinelGetLeader
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	testb	$80, (%rdi)
	je	.LBB83_37
# %bb.1:
	movq	%rdi, %r13
	movl	$leaderVotesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, %r12
	movq	136(%r13), %rdi
	movl	40(%rdi), %r14d
	movl	72(%rdi), %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB83_11
# %bb.2:
	leaq	-56(%rbp), %r15
	jmp	.LBB83_6
.LBB83_3:                               #   in Loop: Header=BB83_6 Depth=1
	addq	$1, 8(%rcx)
.LBB83_4:                               #   in Loop: Header=BB83_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB83_5:                               #   in Loop: Header=BB83_6 Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB83_11
.LBB83_6:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	224(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB83_5
# %bb.7:                                #   in Loop: Header=BB83_6 Depth=1
	movq	232(%rax), %rax
	cmpq	sentinel+48(%rip), %rax
	jne	.LBB83_5
# %bb.8:                                #   in Loop: Header=BB83_6 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	dictAddRaw
	movq	-56(%rbp), %rcx
	testq	%rcx, %rcx
	jne	.LBB83_3
# %bb.9:                                #   in Loop: Header=BB83_6 Depth=1
	testq	%rax, %rax
	je	.LBB83_36
# %bb.10:                               #   in Loop: Header=BB83_6 Depth=1
	movq	$1, 8(%rax)
	jmp	.LBB83_4
.LBB83_11:
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movq	%r12, %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	movq	%r13, -72(%rbp)         # 8-byte Spill
	je	.LBB83_18
# %bb.12:                               # %.preheader
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB83_14
	.p2align	4, 0x90
.LBB83_13:                              #   in Loop: Header=BB83_14 Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB83_16
.LBB83_14:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rcx
	cmpq	%r14, %rcx
	jbe	.LBB83_13
# %bb.15:                               #   in Loop: Header=BB83_14 Depth=1
	movq	(%rax), %r15
	movq	%rcx, %r14
	jmp	.LBB83_13
.LBB83_16:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	testq	%r15, %r15
	je	.LBB83_19
# %bb.17:
	leaq	-64(%rbp), %rcx
	movq	%r13, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	sentinelVoteLeader
	movq	%rax, %r13
	xorl	%ebx, %ebx
	testq	%r13, %r13
	jne	.LBB83_20
	jmp	.LBB83_23
.LBB83_18:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	xorl	%r14d, %r14d
.LBB83_19:
	leaq	-64(%rbp), %rcx
	movl	$sentinel, %edx
	movq	%r13, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	sentinelVoteLeader
	movq	%rax, %r13
	movb	$1, %bl
	xorl	%r15d, %r15d
	testq	%r13, %r13
	je	.LBB83_23
.LBB83_20:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, -64(%rbp)
	jne	.LBB83_23
# %bb.21:
	leaq	-56(%rbp), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	dictAddRaw
	movq	-56(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB83_25
# %bb.22:
	movq	8(%rcx), %rax
	addq	$1, %rax
	movq	%rax, 8(%rcx)
	cltq
	jmp	.LBB83_27
.LBB83_23:
	testb	%bl, %bl
	jne	.LBB83_29
	jmp	.LBB83_30
.LBB83_25:
	testq	%rax, %rax
	je	.LBB83_36
# %bb.26:
	movq	$1, 8(%rax)
	movl	$1, %eax
.LBB83_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	cmovbq	%rax, %r14
	cmovbq	%r13, %r15
	jb	.LBB83_30
# %bb.28:
	xorb	$1, %bl
	je	.LBB83_29
.LBB83_30:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	addl	$1, %eax
	shrl	%eax
	addl	$1, %eax
	cmpq	%rax, %r14
	jb	.LBB83_29
# %bb.32:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	152(%rax), %eax
	cmpq	%rax, %r14
	jae	.LBB83_34
.LBB83_29:
	xorl	%ebx, %ebx
.LBB83_35:
	movq	%r13, %rdi
	callq	sdsfree
	movq	%r12, %rdi
	callq	dictRelease
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB83_34:
	movq	%r15, %rdi
	callq	sdsnew
	movq	%rax, %rbx
	jmp	.LBB83_35
.LBB83_36:
	movl	$.L.str.289, %edi
	movl	$.L.str.17, %esi
	movl	$3827, %edx             # imm = 0xEF3
	jmp	.LBB83_38
.LBB83_37:
	movl	$.L.str.290, %edi
	movl	$.L.str.17, %esi
	movl	$3849, %edx             # imm = 0xF09
.LBB83_38:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end83:
	.size	sentinelGetLeader, .Lfunc_end83-sentinelGetLeader
                                        # -- End function
	.globl	sentinelStartFailoverIfNeeded # -- Begin function sentinelStartFailoverIfNeeded
	.p2align	4, 0x90
	.type	sentinelStartFailoverIfNeeded,@function
sentinelStartFailoverIfNeeded:          # @sentinelStartFailoverIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movl	(%rdi), %eax
	andl	$80, %eax
	xorl	%r14d, %r14d
	cmpl	$16, %eax
	jne	.LBB84_5
# %bb.1:
	movq	%rdi, %rbx
	callq	mstime
	movq	%rax, %rcx
	movq	264(%rbx), %rdx
	movq	272(%rbx), %rax
	subq	%rdx, %rcx
	addq	%rax, %rax
	cmpq	%rax, %rcx
	jge	.LBB84_4
# %bb.2:
	cmpq	%rdx, 280(%rbx)
	je	.LBB84_5
# %bb.3:
	addq	%rdx, %rax
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %r15
	movq	%r15, %rsi
	callq	ctime_r
	movb	$0, -40(%rbp)
	movq	264(%rbx), %rax
	movq	%rax, 280(%rbx)
	xorl	%r14d, %r14d
	movl	$.L.str.301, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB84_5
.LBB84_4:
	movq	%rbx, %rdi
	callq	sentinelStartFailover
	movl	$1, %r14d
.LBB84_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end84:
	.size	sentinelStartFailoverIfNeeded, .Lfunc_end84-sentinelStartFailoverIfNeeded
                                        # -- End function
	.globl	compareSlavesForPromotion # -- Begin function compareSlavesForPromotion
	.p2align	4, 0x90
	.type	compareSlavesForPromotion,@function
compareSlavesForPromotion:              # @compareSlavesForPromotion
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rcx
	movl	176(%rcx), %eax
	movq	(%rsi), %rdx
	subl	176(%rdx), %eax
	jne	.LBB85_6
# %bb.1:
	movq	216(%rdx), %rsi
	movl	$-1, %eax
	cmpq	%rsi, 216(%rcx)
	ja	.LBB85_6
# %bb.2:
	movl	$1, %eax
	jb	.LBB85_6
# %bb.3:
	movq	16(%rcx), %rdi
	movq	16(%rdx), %rsi
	xorl	%ecx, %ecx
	movq	%rdi, %rax
	orq	%rsi, %rax
	setne	%cl
	xorl	%eax, %eax
	cmpq	$1, %rdi
	sbbl	%eax, %eax
	notl	%eax
	orl	%ecx, %eax
	testq	%rdi, %rdi
	je	.LBB85_6
# %bb.4:
	testq	%rsi, %rsi
	je	.LBB85_6
# %bb.5:
	callq	strcasecmp
.LBB85_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end85:
	.size	compareSlavesForPromotion, .Lfunc_end85-compareSlavesForPromotion
                                        # -- End function
	.globl	sentinelFailoverWaitStart # -- Begin function sentinelFailoverWaitStart
	.p2align	4, 0x90
	.type	sentinelFailoverWaitStart,@function
sentinelFailoverWaitStart:              # @sentinelFailoverWaitStart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	240(%rdi), %rsi
	callq	sentinelGetLeader
	testq	%rax, %rax
	je	.LBB86_4
# %bb.1:
	movq	%rax, %rbx
	movl	$sentinel, %esi
	movq	%rax, %rdi
	callq	strcasecmp
	movl	%eax, %r15d
	movq	%rbx, %rdi
	callq	sdsfree
	testl	%r15d, %r15d
	je	.LBB86_2
# %bb.5:
	testb	$8, 1(%r14)
	jne	.LBB86_2
.LBB86_6:
	movq	272(%r14), %rax
	cmpq	$10000, %rax            # imm = 0x2710
	cltq
	movl	$10000, %ebx            # imm = 0x2710
	cmovlq	%rax, %rbx
	callq	mstime
	subq	264(%r14), %rax
	cmpq	%rbx, %rax
	jle	.LBB86_9
# %bb.7:
	movl	$.L.str.302, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	%r14, %rdi
	callq	sentinelAbortFailover
	jmp	.LBB86_9
.LBB86_4:
	xorl	%edi, %edi
	callq	sdsfree
	testb	$8, 1(%r14)
	je	.LBB86_6
.LBB86_2:
	movl	$.L.str.303, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	testb	$1, sentinel+112(%rip)
	jne	.LBB86_3
# %bb.8:
	movl	$2, 248(%r14)
	callq	mstime
	movq	%rax, 256(%r14)
	movl	$.L.str.304, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB86_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB86_3:
	callq	sentinelSimFailureCrash
.Lfunc_end86:
	.size	sentinelFailoverWaitStart, .Lfunc_end86-sentinelFailoverWaitStart
                                        # -- End function
	.globl	sentinelAbortFailover   # -- Begin function sentinelAbortFailover
	.p2align	4, 0x90
	.type	sentinelAbortFailover,@function
sentinelAbortFailover:                  # @sentinelAbortFailover
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	(%rdi), %eax
	testb	$64, %al
	je	.LBB87_1
# %bb.3:
	movq	%rdi, %rbx
	cmpl	$5, 248(%rdi)
	jge	.LBB87_4
# %bb.5:
	andl	$-2113, %eax            # imm = 0xF7BF
	movl	%eax, (%rbx)
	movl	$0, 248(%rbx)
	callq	mstime
	movq	%rax, 256(%rbx)
	movq	288(%rbx), %rax
	testq	%rax, %rax
	je	.LBB87_7
# %bb.6:
	andb	$127, (%rax)
	movq	$0, 288(%rbx)
.LBB87_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB87_1:
	movl	$.L.str.315, %edi
	movl	$.L.str.17, %esi
	movl	$4393, %edx             # imm = 0x1129
	jmp	.LBB87_2
.LBB87_4:
	movl	$.L.str.316, %edi
	movl	$.L.str.17, %esi
	movl	$4394, %edx             # imm = 0x112A
.LBB87_2:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end87:
	.size	sentinelAbortFailover, .Lfunc_end87-sentinelAbortFailover
                                        # -- End function
	.globl	sentinelFailoverSelectSlave # -- Begin function sentinelFailoverSelectSlave
	.p2align	4, 0x90
	.type	sentinelFailoverSelectSlave,@function
sentinelFailoverSelectSlave:            # @sentinelFailoverSelectSlave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	sentinelSelectSlave
	testq	%rax, %rax
	je	.LBB88_1
# %bb.2:
	movq	%rax, %rbx
	movl	$.L.str.306, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	orb	$-128, (%rbx)
	movq	%rbx, 288(%r14)
	movl	$3, 248(%r14)
	callq	mstime
	movq	%rax, 256(%r14)
	movl	$.L.str.307, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	jmp	.LBB88_3
.LBB88_1:
	movl	$.L.str.305, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	%r14, %rdi
	callq	sentinelAbortFailover
.LBB88_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end88:
	.size	sentinelFailoverSelectSlave, .Lfunc_end88-sentinelFailoverSelectSlave
                                        # -- End function
	.globl	sentinelFailoverSendSlaveOfNoOne # -- Begin function sentinelFailoverSendSlaveOfNoOne
	.p2align	4, 0x90
	.type	sentinelFailoverSendSlaveOfNoOne,@function
sentinelFailoverSendSlaveOfNoOne:       # @sentinelFailoverSendSlaveOfNoOne
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	288(%rdi), %rdi
	movq	40(%rdi), %rax
	cmpl	$0, 4(%rax)
	je	.LBB89_3
# %bb.1:
	callq	mstime
	subq	256(%rbx), %rax
	cmpq	272(%rbx), %rax
	jle	.LBB89_5
# %bb.2:
	movl	$.L.str.308, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	%rbx, %rdi
	callq	sentinelAbortFailover
	jmp	.LBB89_5
.LBB89_3:
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	sentinelSendSlaveOf
	testl	%eax, %eax
	jne	.LBB89_5
# %bb.4:
	movq	288(%rbx), %rdx
	movl	$.L.str.309, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	xorl	%eax, %eax
	callq	sentinelEvent
	movl	$4, 248(%rbx)
	callq	mstime
	movq	%rax, 256(%rbx)
.LBB89_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end89:
	.size	sentinelFailoverSendSlaveOfNoOne, .Lfunc_end89-sentinelFailoverSendSlaveOfNoOne
                                        # -- End function
	.globl	sentinelFailoverWaitPromotion # -- Begin function sentinelFailoverWaitPromotion
	.p2align	4, 0x90
	.type	sentinelFailoverWaitPromotion,@function
sentinelFailoverWaitPromotion:          # @sentinelFailoverWaitPromotion
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	mstime
	subq	256(%rbx), %rax
	cmpq	272(%rbx), %rax
	jle	.LBB90_2
# %bb.1:
	movl	$.L.str.308, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	%rbx, %rdi
	callq	sentinelAbortFailover
.LBB90_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end90:
	.size	sentinelFailoverWaitPromotion, .Lfunc_end90-sentinelFailoverWaitPromotion
                                        # -- End function
	.globl	sentinelFailoverDetectEnd # -- Begin function sentinelFailoverDetectEnd
	.p2align	4, 0x90
	.type	sentinelFailoverDetectEnd,@function
sentinelFailoverDetectEnd:              # @sentinelFailoverDetectEnd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	callq	mstime
	movq	%rax, %r15
	movq	288(%r14), %rax
	testq	%rax, %rax
	je	.LBB91_16
# %bb.1:
	testb	$8, (%rax)
	jne	.LBB91_16
# %bb.2:
	subq	256(%r14), %r15
	movq	144(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, %r12
	movq	%rax, %rdi
	callq	dictNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB91_5
# %bb.3:                                # %.preheader1
	movl	$1160, %r13d            # imm = 0x488
	.p2align	4, 0x90
.LBB91_4:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movl	(%rax), %eax
	andl	%r13d, %eax
	cmpl	$1, %eax
	adcl	$0, %ebx
	movq	%r12, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB91_4
.LBB91_5:
	movq	%r12, %rdi
	callq	dictReleaseIterator
	cmpq	272(%r14), %r15
	jle	.LBB91_14
# %bb.6:
	movl	$.L.str.310, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movl	$.L.str.311, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movl	$6, 248(%r14)
	callq	mstime
	movq	%rax, 256(%r14)
	movq	144(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	jmp	.LBB91_7
	.p2align	4, 0x90
.LBB91_12:                              #   in Loop: Header=BB91_7 Depth=1
	movq	%r15, %rdi
.LBB91_7:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB91_13
# %bb.8:                                #   in Loop: Header=BB91_7 Depth=1
	movq	8(%rax), %rbx
	testb	$5, 1(%rbx)
	jne	.LBB91_12
# %bb.9:                                #   in Loop: Header=BB91_7 Depth=1
	movq	40(%rbx), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB91_12
# %bb.10:                               #   in Loop: Header=BB91_7 Depth=1
	movq	288(%r14), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	sentinelSendSlaveOf
	testl	%eax, %eax
	jne	.LBB91_12
# %bb.11:                               #   in Loop: Header=BB91_7 Depth=1
	movl	$.L.str.312, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	orb	$1, 1(%rbx)
	jmp	.LBB91_12
.LBB91_14:
	testl	%ebx, %ebx
	jne	.LBB91_16
# %bb.15:
	movl	$.L.str.311, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movl	$6, 248(%r14)
	callq	mstime
	movq	%rax, 256(%r14)
	jmp	.LBB91_16
.LBB91_13:
	movq	%r15, %rdi
	callq	dictReleaseIterator
.LBB91_16:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end91:
	.size	sentinelFailoverDetectEnd, .Lfunc_end91-sentinelFailoverDetectEnd
                                        # -- End function
	.globl	sentinelFailoverReconfNextSlave # -- Begin function sentinelFailoverReconfNextSlave
	.p2align	4, 0x90
	.type	sentinelFailoverReconfNextSlave,@function
sentinelFailoverReconfNextSlave:        # @sentinelFailoverReconfNextSlave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	144(%rdi), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB92_3
# %bb.1:                                # %.preheader
	movl	$768, %r12d             # imm = 0x300
	.p2align	4, 0x90
.LBB92_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movl	(%rax), %eax
	andl	%r12d, %eax
	cmpl	$1, %eax
	sbbl	$-1, %ebx
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	jne	.LBB92_2
.LBB92_3:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	144(%r14), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	cmpl	156(%r14), %ebx
	jge	.LBB92_16
# %bb.4:
	movl	$-1281, %r13d           # imm = 0xFAFF
	jmp	.LBB92_5
.LBB92_10:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$.L.str.313, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movl	(%r12), %eax
	andl	%r13d, %eax
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, (%r12)
.LBB92_11:                              #   in Loop: Header=BB92_5 Depth=1
	testl	$768, %eax              # imm = 0x300
	je	.LBB92_12
.LBB92_15:                              #   in Loop: Header=BB92_5 Depth=1
	cmpl	156(%r14), %ebx
	jge	.LBB92_16
.LBB92_5:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB92_16
# %bb.6:                                #   in Loop: Header=BB92_5 Depth=1
	movq	8(%rax), %r12
	movl	(%r12), %eax
	testl	$1152, %eax             # imm = 0x480
	jne	.LBB92_15
# %bb.7:                                #   in Loop: Header=BB92_5 Depth=1
	testl	$256, %eax              # imm = 0x100
	je	.LBB92_11
# %bb.8:                                #   in Loop: Header=BB92_5 Depth=1
	callq	mstime
	subq	184(%r12), %rax
	cmpq	$10000, %rax            # imm = 0x2710
	jg	.LBB92_10
# %bb.9:                                #   in Loop: Header=BB92_5 Depth=1
	movl	(%r12), %eax
	jmp	.LBB92_11
.LBB92_12:                              #   in Loop: Header=BB92_5 Depth=1
	movq	40(%r12), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB92_15
# %bb.13:                               #   in Loop: Header=BB92_5 Depth=1
	movq	288(%r14), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	%r12, %rdi
	callq	sentinelSendSlaveOf
	testl	%eax, %eax
	jne	.LBB92_15
# %bb.14:                               #   in Loop: Header=BB92_5 Depth=1
	orb	$1, 1(%r12)
	callq	mstime
	movq	%rax, 184(%r12)
	movl	$.L.str.314, %esi
	movl	$.L.str.58, %ecx
	movl	$2, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	addl	$1, %ebx
	jmp	.LBB92_15
.LBB92_16:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	%r14, %rdi
	callq	sentinelFailoverDetectEnd
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end92:
	.size	sentinelFailoverReconfNextSlave, .Lfunc_end92-sentinelFailoverReconfNextSlave
                                        # -- End function
	.globl	sentinelFailoverSwitchToPromotedSlave # -- Begin function sentinelFailoverSwitchToPromotedSlave
	.p2align	4, 0x90
	.type	sentinelFailoverSwitchToPromotedSlave,@function
sentinelFailoverSwitchToPromotedSlave:  # @sentinelFailoverSwitchToPromotedSlave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	288(%rdi), %r14
	testq	%r14, %r14
	cmoveq	%rdi, %r14
	movq	8(%rdi), %r8
	movq	32(%rdi), %rax
	movq	(%rax), %r9
	movl	8(%rax), %r10d
	movq	32(%r14), %r11
	movl	8(%r11), %r15d
	subq	$8, %rsp
	movl	$.L.str.161, %esi
	movl	$.L.str.162, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	pushq	%r15
	pushq	(%r11)
	pushq	%r10
	callq	sentinelEvent
	addq	$32, %rsp
	movq	32(%r14), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	%rbx, %rdi
	callq	sentinelResetMasterAndChangeAddress
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end93:
	.size	sentinelFailoverSwitchToPromotedSlave, .Lfunc_end93-sentinelFailoverSwitchToPromotedSlave
                                        # -- End function
	.globl	sentinelFailoverStateMachine # -- Begin function sentinelFailoverStateMachine
	.p2align	4, 0x90
	.type	sentinelFailoverStateMachine,@function
sentinelFailoverStateMachine:           # @sentinelFailoverStateMachine
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	(%rdi), %eax
	testb	$1, %al
	je	.LBB94_12
# %bb.1:
	testb	$64, %al
	jne	.LBB94_2
.LBB94_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB94_2:
	movq	%rdi, %rbx
	movl	248(%rdi), %eax
	addl	$-1, %eax
	cmpl	$4, %eax
	ja	.LBB94_11
# %bb.3:
	jmpq	*.LJTI94_0(,%rax,8)
.LBB94_4:
	movq	%rbx, %rdi
	callq	sentinelFailoverWaitStart
	jmp	.LBB94_11
.LBB94_10:
	movq	%rbx, %rdi
	callq	sentinelFailoverReconfNextSlave
	jmp	.LBB94_11
.LBB94_6:
	movq	%rbx, %rdi
	callq	sentinelFailoverSendSlaveOfNoOne
	jmp	.LBB94_11
.LBB94_5:
	movq	%rbx, %rdi
	callq	sentinelFailoverSelectSlave
	jmp	.LBB94_11
.LBB94_7:
	callq	mstime
	subq	256(%rbx), %rax
	cmpq	272(%rbx), %rax
	jle	.LBB94_9
# %bb.8:
	movl	$.L.str.308, %esi
	movl	$.L.str.58, %ecx
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	sentinelEvent
	movq	%rbx, %rdi
	callq	sentinelAbortFailover
.LBB94_9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB94_11
.LBB94_12:
	movl	$.L.str.52, %edi
	movl	$.L.str.17, %esi
	movl	$4364, %edx             # imm = 0x110C
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end94:
	.size	sentinelFailoverStateMachine, .Lfunc_end94-sentinelFailoverStateMachine
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI94_0:
	.quad	.LBB94_4
	.quad	.LBB94_5
	.quad	.LBB94_6
	.quad	.LBB94_7
	.quad	.LBB94_10
                                        # -- End function
	.text
	.globl	sentinelHandleRedisInstance # -- Begin function sentinelHandleRedisInstance
	.p2align	4, 0x90
	.type	sentinelHandleRedisInstance,@function
sentinelHandleRedisInstance:            # @sentinelHandleRedisInstance
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	sentinelReconnectInstance
	movq	%rbx, %rdi
	callq	sentinelSendPeriodicCommands
	cmpl	$0, sentinel+64(%rip)
	je	.LBB95_3
# %bb.1:
	callq	mstime
	subq	sentinel+72(%rip), %rax
	cmpq	$30000, %rax            # imm = 0x7530
	jl	.LBB95_7
# %bb.2:
	movl	$0, sentinel+64(%rip)
	movl	$.L.str.317, %esi
	movl	$.L.str.318, %ecx
	movl	$3, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB95_3:
	movq	%rbx, %rdi
	callq	sentinelCheckSubjectivelyDown
	testb	$1, (%rbx)
	je	.LBB95_7
# %bb.4:
	movq	%rbx, %rdi
	callq	sentinelCheckObjectivelyDown
	movq	%rbx, %rdi
	callq	sentinelStartFailoverIfNeeded
	testl	%eax, %eax
	je	.LBB95_6
# %bb.5:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	sentinelAskMasterStateToOtherSentinels
.LBB95_6:
	movq	%rbx, %rdi
	callq	sentinelFailoverStateMachine
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	sentinelAskMasterStateToOtherSentinels
.LBB95_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end95:
	.size	sentinelHandleRedisInstance, .Lfunc_end95-sentinelHandleRedisInstance
                                        # -- End function
	.globl	sentinelHandleDictOfRedisInstances # -- Begin function sentinelHandleDictOfRedisInstances
	.p2align	4, 0x90
	.type	sentinelHandleDictOfRedisInstances,@function
sentinelHandleDictOfRedisInstances:     # @sentinelHandleDictOfRedisInstances
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	callq	dictGetIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB96_7
# %bb.1:                                # %.preheader
	xorl	%r15d, %r15d
	jmp	.LBB96_2
	.p2align	4, 0x90
.LBB96_4:                               #   in Loop: Header=BB96_2 Depth=1
	movq	%r14, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB96_5
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rbx
	movq	%rbx, %rdi
	callq	sentinelHandleRedisInstance
	testb	$1, (%rbx)
	je	.LBB96_4
# %bb.3:                                #   in Loop: Header=BB96_2 Depth=1
	movq	144(%rbx), %rdi
	callq	sentinelHandleDictOfRedisInstances
	movq	136(%rbx), %rdi
	callq	sentinelHandleDictOfRedisInstances
	cmpl	$6, 248(%rbx)
	cmoveq	%rbx, %r15
	jmp	.LBB96_4
.LBB96_5:
	testq	%r15, %r15
	je	.LBB96_7
# %bb.6:
	movq	288(%r15), %rbx
	testq	%rbx, %rbx
	cmoveq	%r15, %rbx
	movq	8(%r15), %r8
	movq	32(%r15), %rax
	movq	(%rax), %r9
	movl	8(%rax), %r10d
	movq	32(%rbx), %r11
	movl	8(%r11), %r12d
	subq	$8, %rsp
	movl	$.L.str.161, %esi
	movl	$.L.str.162, %ecx
	movl	$3, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	pushq	%r12
	pushq	(%r11)
	pushq	%r10
	callq	sentinelEvent
	addq	$32, %rsp
	movq	32(%rbx), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	%r15, %rdi
	callq	sentinelResetMasterAndChangeAddress
	movl	$42, __A_VARIABLE(%rip)
.LBB96_7:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end96:
	.size	sentinelHandleDictOfRedisInstances, .Lfunc_end96-sentinelHandleDictOfRedisInstances
                                        # -- End function
	.globl	sentinelCheckTiltCondition # -- Begin function sentinelCheckTiltCondition
	.p2align	4, 0x90
	.type	sentinelCheckTiltCondition,@function
sentinelCheckTiltCondition:             # @sentinelCheckTiltCondition
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	mstime
	subq	sentinel+80(%rip), %rax
	cmpq	$2001, %rax             # imm = 0x7D1
	jb	.LBB97_2
# %bb.1:
	movl	$1, sentinel+64(%rip)
	callq	mstime
	movq	%rax, sentinel+72(%rip)
	movl	$.L.str.319, %esi
	movl	$.L.str.320, %ecx
	movl	$3, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB97_2:
	callq	mstime
	movq	%rax, sentinel+80(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end97:
	.size	sentinelCheckTiltCondition, .Lfunc_end97-sentinelCheckTiltCondition
                                        # -- End function
	.globl	sentinelTimer           # -- Begin function sentinelTimer
	.p2align	4, 0x90
	.type	sentinelTimer,@function
sentinelTimer:                          # @sentinelTimer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	mstime
	subq	sentinel+80(%rip), %rax
	cmpq	$2001, %rax             # imm = 0x7D1
	jb	.LBB98_2
# %bb.1:
	movl	$1, sentinel+64(%rip)
	callq	mstime
	movq	%rax, sentinel+72(%rip)
	movl	$.L.str.319, %esi
	movl	$.L.str.320, %ecx
	movl	$3, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sentinelEvent
.LBB98_2:
	callq	mstime
	movq	%rax, sentinel+80(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	sentinel+56(%rip), %rdi
	callq	sentinelHandleDictOfRedisInstances
	callq	sentinelRunPendingScripts
	callq	sentinelCollectTerminatedScripts
	callq	sentinelKillTimedoutScripts
	callq	rand
	cltq
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	negl	%ecx
	addl	%ecx, %eax
	addl	$10, %eax
	movl	%eax, server+40(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end98:
	.size	sentinelTimer, .Lfunc_end98-sentinelTimer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisAeAddRead
	.type	redisAeAddRead,@function
redisAeAddRead:                         # @redisAeAddRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, 20(%rdi)
	jne	.LBB99_2
# %bb.1:
	movq	%rdi, %r8
	movq	8(%rdi), %rdi
	movl	$1, 20(%r8)
	movl	16(%r8), %esi
	movl	$redisAeReadEvent, %ecx
	movl	$1, %edx
	callq	aeCreateFileEvent
.LBB99_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end99:
	.size	redisAeAddRead, .Lfunc_end99-redisAeAddRead
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisAeDelRead
	.type	redisAeDelRead,@function
redisAeDelRead:                         # @redisAeDelRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, 20(%rdi)
	je	.LBB100_2
# %bb.1:
	movq	8(%rdi), %rax
	movl	$0, 20(%rdi)
	movl	16(%rdi), %esi
	movq	%rax, %rdi
	movl	$1, %edx
	callq	aeDeleteFileEvent
.LBB100_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end100:
	.size	redisAeDelRead, .Lfunc_end100-redisAeDelRead
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisAeAddWrite
	.type	redisAeAddWrite,@function
redisAeAddWrite:                        # @redisAeAddWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, 24(%rdi)
	jne	.LBB101_2
# %bb.1:
	movq	%rdi, %r8
	movq	8(%rdi), %rdi
	movl	$1, 24(%r8)
	movl	16(%r8), %esi
	movl	$redisAeWriteEvent, %ecx
	movl	$2, %edx
	callq	aeCreateFileEvent
.LBB101_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end101:
	.size	redisAeAddWrite, .Lfunc_end101-redisAeAddWrite
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisAeDelWrite
	.type	redisAeDelWrite,@function
redisAeDelWrite:                        # @redisAeDelWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, 24(%rdi)
	je	.LBB102_2
# %bb.1:
	movq	8(%rdi), %rax
	movl	$0, 24(%rdi)
	movl	16(%rdi), %esi
	movq	%rax, %rdi
	movl	$2, %edx
	callq	aeDeleteFileEvent
.LBB102_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end102:
	.size	redisAeDelWrite, .Lfunc_end102-redisAeDelWrite
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisAeCleanup
	.type	redisAeCleanup,@function
redisAeCleanup:                         # @redisAeCleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$0, 20(%rdi)
	je	.LBB103_2
# %bb.1:
	movq	8(%rbx), %rdi
	movl	$0, 20(%rbx)
	movl	16(%rbx), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
.LBB103_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 24(%rbx)
	je	.LBB103_4
# %bb.3:
	movq	8(%rbx), %rdi
	movl	$0, 24(%rbx)
	movl	16(%rbx), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
.LBB103_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end103:
	.size	redisAeCleanup, .Lfunc_end103-redisAeCleanup
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisAeReadEvent
	.type	redisAeReadEvent,@function
redisAeReadEvent:                       # @redisAeReadEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdx), %rdi
	callq	redisAsyncHandleRead
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end104:
	.size	redisAeReadEvent, .Lfunc_end104-redisAeReadEvent
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisAeWriteEvent
	.type	redisAeWriteEvent,@function
redisAeWriteEvent:                      # @redisAeWriteEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdx), %rdi
	callq	redisAsyncHandleWrite
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end105:
	.size	redisAeWriteEvent, .Lfunc_end105-redisAeWriteEvent
                                        # -- End function
	.type	instancesDictType,@object # @instancesDictType
	.data
	.globl	instancesDictType
	.p2align	3
instancesDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	0
	.quad	dictInstancesValDestructor
	.size	instancesDictType, 48

	.type	leaderVotesDictType,@object # @leaderVotesDictType
	.globl	leaderVotesDictType
	.p2align	3
leaderVotesDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	0
	.quad	0
	.size	leaderVotesDictType, 48

	.type	renamedCommandsDictType,@object # @renamedCommandsDictType
	.globl	renamedCommandsDictType
	.p2align	3
renamedCommandsDictType:
	.quad	dictSdsCaseHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCaseCompare
	.quad	dictSdsDestructor
	.quad	dictSdsDestructor
	.size	renamedCommandsDictType, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ping"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sentinel"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"subscribe"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"unsubscribe"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"psubscribe"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"punsubscribe"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"publish"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"info"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"role"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"l"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"client"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"rs"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"shutdown"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"auth"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"sltF"
	.size	.L.str.15, 5

	.type	sentinelcmds,@object    # @sentinelcmds
	.data
	.globl	sentinelcmds
	.p2align	4
sentinelcmds:
	.quad	.L.str
	.quad	pingCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.2
	.quad	sentinelCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.3
	.quad	subscribeCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.4
	.quad	unsubscribeCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.5
	.quad	psubscribeCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.6
	.quad	punsubscribeCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.7
	.quad	sentinelPublishCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.8
	.quad	sentinelInfoCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.9
	.quad	sentinelRoleCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.11
	.quad	clientCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.12
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.13
	.quad	shutdownCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.14
	.quad	authCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.size	sentinelcmds, 960

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"retval == DICT_OK"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sentinel.c"
	.size	.L.str.17, 76

	.type	sentinel,@object        # @sentinel
	.comm	sentinel,128,8
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Sentinel started without a config file. Exiting..."
	.size	.L.str.18, 51

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Sentinel config file %s is not writable: %s. Exiting..."
	.size	.L.str.19, 56

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Sentinel ID is %s"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s %s %s %d @ %s %s %d"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s %s %s %d"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s %s"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"+monitor"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%@ quorum %d"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"listLength(sentinel.scripts_queue) <= SENTINEL_SCRIPT_MAX_QUEUE"
	.size	.L.str.26, 64

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"-script-error"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s %d %d"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"+script-child"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%ld"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"-script-child"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%ld %d %d"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"wait3() returned a pid (%ld) we can't find in our scripts execution queue!"
	.size	.L.str.33, 75

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"-script-timeout"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s %ld"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"argv"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"flags"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"running"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"scheduled"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"pid"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"run-time"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"run-delay"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"retry-num"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"leader"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"observer"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"link->refcount > 0"
	.size	.L.str.46, 19

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"ri->flags & SRI_SENTINEL"
	.size	.L.str.47, 25

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"+sentinel-address-update"
	.size	.L.str.48, 25

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%@ %d additional matching instances"
	.size	.L.str.49, 36

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"flags & (SRI_MASTER|SRI_SLAVE|SRI_SENTINEL)"
	.size	.L.str.50, 44

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"(flags & SRI_MASTER) || master != NULL"
	.size	.L.str.51, 39

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"ri->flags & SRI_MASTER"
	.size	.L.str.52, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"master"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"slave"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"unknown"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"ip || runid"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"+reset-master"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%@"
	.size	.L.str.58, 3

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"+slave"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"monitor"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Quorum must be 1 or greater."
	.size	.L.str.61, 29

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Duplicated master name."
	.size	.L.str.62, 24

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Can't resolve master instance hostname."
	.size	.L.str.63, 40

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Invalid port number"
	.size	.L.str.64, 20

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"down-after-milliseconds"
	.size	.L.str.65, 24

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"No such master with specified name."
	.size	.L.str.66, 36

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"negative or zero time parameter."
	.size	.L.str.67, 33

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"failover-timeout"
	.size	.L.str.68, 17

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"parallel-syncs"
	.size	.L.str.69, 15

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"notification-script"
	.size	.L.str.70, 20

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Notification script seems non existing or non executable."
	.size	.L.str.71, 58

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"client-reconfig-script"
	.size	.L.str.72, 23

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Client reconfiguration script seems non existing or non executable."
	.size	.L.str.73, 68

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"auth-pass"
	.size	.L.str.74, 10

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"current-epoch"
	.size	.L.str.75, 14

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"myid"
	.size	.L.str.76, 5

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Malformed Sentinel id in myid option."
	.size	.L.str.77, 38

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"config-epoch"
	.size	.L.str.78, 13

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"leader-epoch"
	.size	.L.str.79, 13

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"known-slave"
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"known-replica"
	.size	.L.str.81, 14

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Wrong hostname or port for replica."
	.size	.L.str.82, 36

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"known-sentinel"
	.size	.L.str.83, 15

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Wrong hostname or port for sentinel."
	.size	.L.str.84, 37

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"rename-command"
	.size	.L.str.85, 15

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Same command renamed multiple times with rename-command."
	.size	.L.str.86, 57

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"announce-ip"
	.size	.L.str.87, 12

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"announce-port"
	.size	.L.str.88, 14

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"deny-scripts-reconfig"
	.size	.L.str.89, 22

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Please specify yes or no for the deny-scripts-reconfig options."
	.size	.L.str.90, 64

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Unrecognized sentinel configuration statement."
	.size	.L.str.91, 47

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"sentinel myid %s"
	.size	.L.str.92, 17

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"sentinel deny-scripts-reconfig %s"
	.size	.L.str.93, 34

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"yes"
	.size	.L.str.94, 4

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"no"
	.size	.L.str.95, 3

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"sentinel monitor %s %s %d %d"
	.size	.L.str.96, 29

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"sentinel down-after-milliseconds %s %ld"
	.size	.L.str.97, 40

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"sentinel failover-timeout %s %ld"
	.size	.L.str.98, 33

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"sentinel parallel-syncs %s %d"
	.size	.L.str.99, 30

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"sentinel notification-script %s %s"
	.size	.L.str.100, 35

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"sentinel client-reconfig-script %s %s"
	.size	.L.str.101, 38

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"sentinel auth-pass %s %s"
	.size	.L.str.102, 25

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"sentinel config-epoch %s %llu"
	.size	.L.str.103, 30

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"sentinel leader-epoch %s %llu"
	.size	.L.str.104, 30

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"sentinel known-replica %s %s %d"
	.size	.L.str.105, 32

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"sentinel known-sentinel %s %s %d %s"
	.size	.L.str.106, 36

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"sentinel rename-command %s %s %s"
	.size	.L.str.107, 33

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"sentinel current-epoch %llu"
	.size	.L.str.108, 28

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"sentinel announce-ip "
	.size	.L.str.109, 22

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"sentinel announce-port %d"
	.size	.L.str.110, 26

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"WARNING: Sentinel was not able to save the new configuration on disk!!!: %s"
	.size	.L.str.111, 76

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"AUTH"
	.size	.L.str.112, 5

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"sentinel-%.8s-%s"
	.size	.L.str.113, 17

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"%s SETNAME %s"
	.size	.L.str.114, 14

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"CLIENT"
	.size	.L.str.115, 7

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"-cmd-link-reconnection"
	.size	.L.str.116, 23

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"%@ #%s"
	.size	.L.str.117, 7

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"cmd"
	.size	.L.str.118, 4

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"-pubsub-link-reconnection"
	.size	.L.str.119, 26

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"pubsub"
	.size	.L.str.120, 7

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"SUBSCRIBE"
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"__sentinel__:hello"
	.size	.L.str.122, 19

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"\r\n"
	.size	.L.str.123, 3

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"run_id:"
	.size	.L.str.124, 8

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"+reboot"
	.size	.L.str.125, 8

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"ip="
	.size	.L.str.126, 4

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"port="
	.size	.L.str.127, 6

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"master_link_down_since_seconds"
	.size	.L.str.128, 31

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"role:master"
	.size	.L.str.129, 12

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"role:slave"
	.size	.L.str.130, 11

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"master_host:"
	.size	.L.str.131, 13

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"master_port:"
	.size	.L.str.132, 13

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"master_link_status:"
	.size	.L.str.133, 20

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"up"
	.size	.L.str.134, 3

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"slave_priority:"
	.size	.L.str.135, 16

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"slave_repl_offset:"
	.size	.L.str.136, 19

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"+role-change"
	.size	.L.str.137, 13

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"-role-change"
	.size	.L.str.138, 13

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"%@ new reported role is %s"
	.size	.L.str.139, 27

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"+promoted-slave"
	.size	.L.str.140, 16

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"+failover-state-reconf-slaves"
	.size	.L.str.141, 30

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"start"
	.size	.L.str.142, 6

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"+convert-to-slave"
	.size	.L.str.143, 18

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"+fix-slave-config"
	.size	.L.str.144, 18

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"+slave-reconf-inprog"
	.size	.L.str.145, 21

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"+slave-reconf-done"
	.size	.L.str.146, 19

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"PONG"
	.size	.L.str.147, 5

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"LOADING"
	.size	.L.str.148, 8

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"MASTERDOWN"
	.size	.L.str.149, 11

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"BUSY"
	.size	.L.str.150, 5

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"%s KILL"
	.size	.L.str.151, 8

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"SCRIPT"
	.size	.L.str.152, 7

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	","
	.size	.L.str.153, 2

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"+sentinel-address-switch"
	.size	.L.str.154, 25

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"%@ ip %s port %d for %s"
	.size	.L.str.155, 24

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"+sentinel-invalid-addr"
	.size	.L.str.156, 23

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"+sentinel"
	.size	.L.str.157, 10

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"+new-epoch"
	.size	.L.str.158, 11

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"%llu"
	.size	.L.str.159, 5

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"+config-update-from"
	.size	.L.str.160, 20

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"+switch-master"
	.size	.L.str.161, 15

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"%s %s %d %s %d"
	.size	.L.str.162, 15

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"message"
	.size	.L.str.163, 8

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"%s,%d,%s,%llu,%s,%s,%d,%llu"
	.size	.L.str.164, 28

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"%s %s %s"
	.size	.L.str.165, 9

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"PUBLISH"
	.size	.L.str.166, 8

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"%s"
	.size	.L.str.167, 3

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"PING"
	.size	.L.str.168, 5

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"INFO"
	.size	.L.str.169, 5

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"none"
	.size	.L.str.170, 5

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"wait_start"
	.size	.L.str.171, 11

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"select_slave"
	.size	.L.str.172, 13

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"send_slaveof_noone"
	.size	.L.str.173, 19

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"wait_promotion"
	.size	.L.str.174, 15

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"reconf_slaves"
	.size	.L.str.175, 14

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"update_config"
	.size	.L.str.176, 14

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"name"
	.size	.L.str.177, 5

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"ip"
	.size	.L.str.178, 3

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"port"
	.size	.L.str.179, 5

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"runid"
	.size	.L.str.180, 6

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"s_down,"
	.size	.L.str.181, 8

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"o_down,"
	.size	.L.str.182, 8

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"master,"
	.size	.L.str.183, 8

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"slave,"
	.size	.L.str.184, 7

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"sentinel,"
	.size	.L.str.185, 10

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"disconnected,"
	.size	.L.str.186, 14

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"master_down,"
	.size	.L.str.187, 13

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"failover_in_progress,"
	.size	.L.str.188, 22

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"promoted,"
	.size	.L.str.189, 10

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"reconf_sent,"
	.size	.L.str.190, 13

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"reconf_inprog,"
	.size	.L.str.191, 15

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"reconf_done,"
	.size	.L.str.192, 13

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"link-pending-commands"
	.size	.L.str.193, 22

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"link-refcount"
	.size	.L.str.194, 14

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"failover-state"
	.size	.L.str.195, 15

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"last-ping-sent"
	.size	.L.str.196, 15

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"last-ok-ping-reply"
	.size	.L.str.197, 19

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"last-ping-reply"
	.size	.L.str.198, 16

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"s-down-time"
	.size	.L.str.199, 12

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"o-down-time"
	.size	.L.str.200, 12

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"info-refresh"
	.size	.L.str.201, 13

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"role-reported"
	.size	.L.str.202, 14

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"role-reported-time"
	.size	.L.str.203, 19

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"num-slaves"
	.size	.L.str.204, 11

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"num-other-sentinels"
	.size	.L.str.205, 20

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"quorum"
	.size	.L.str.206, 7

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"master-link-down-time"
	.size	.L.str.207, 22

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"master-link-status"
	.size	.L.str.208, 19

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"ok"
	.size	.L.str.209, 3

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"err"
	.size	.L.str.210, 4

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"master-host"
	.size	.L.str.211, 12

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"?"
	.size	.L.str.212, 2

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"master-port"
	.size	.L.str.213, 12

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"slave-priority"
	.size	.L.str.214, 15

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"slave-repl-offset"
	.size	.L.str.215, 18

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"last-hello-message"
	.size	.L.str.216, 19

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"voted-leader"
	.size	.L.str.217, 13

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"voted-leader-epoch"
	.size	.L.str.218, 19

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"No such master with that name"
	.size	.L.str.219, 30

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"masters"
	.size	.L.str.220, 8

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"slaves"
	.size	.L.str.221, 7

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"replicas"
	.size	.L.str.222, 9

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"sentinels"
	.size	.L.str.223, 10

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"is-master-down-by-addr"
	.size	.L.str.224, 23

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"*"
	.size	.L.str.225, 2

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"reset"
	.size	.L.str.226, 6

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"get-master-addr-by-name"
	.size	.L.str.227, 24

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"failover"
	.size	.L.str.228, 9

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"-INPROG Failover already in progress\r\n"
	.size	.L.str.229, 39

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"-NOGOODSLAVE No suitable replica to promote\r\n"
	.size	.L.str.230, 46

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"Executing user requested FAILOVER of '%s'"
	.size	.L.str.231, 42

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"pending-scripts"
	.size	.L.str.232, 16

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Invalid quorum"
	.size	.L.str.233, 15

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"Invalid port"
	.size	.L.str.234, 13

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"Invalid IP address specified"
	.size	.L.str.235, 29

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"Duplicated master name"
	.size	.L.str.236, 23

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"Unspecified error adding the instance"
	.size	.L.str.237, 38

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"flushconfig"
	.size	.L.str.238, 12

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"remove"
	.size	.L.str.239, 7

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"-monitor"
	.size	.L.str.240, 9

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"ckquorum"
	.size	.L.str.241, 9

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"+OK %i usable Sentinels. Quorum and failover authorization can be reached\r\n"
	.size	.L.str.242, 76

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"-NOQUORUM %i usable Sentinels. "
	.size	.L.str.243, 32

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"Not enough available Sentinels to reach the specified quorum for this master"
	.size	.L.str.244, 77

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	". "
	.size	.L.str.245, 3

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"Not enough available Sentinels to reach the majority and authorize a failover"
	.size	.L.str.246, 78

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"set"
	.size	.L.str.247, 4

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"info-cache"
	.size	.L.str.248, 11

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"simulate-failure"
	.size	.L.str.249, 17

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"crash-after-election"
	.size	.L.str.250, 21

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"Failure simulation: this Sentinel will crash after being successfully elected as failover leader"
	.size	.L.str.251, 97

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"crash-after-promotion"
	.size	.L.str.252, 22

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"Failure simulation: this Sentinel will crash after promoting the selected replica to master"
	.size	.L.str.253, 92

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"help"
	.size	.L.str.254, 5

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"Unknown failure simulation specified"
	.size	.L.str.255, 37

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"Unknown sentinel subcommand '%s'"
	.size	.L.str.256, 33

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"Wrong number of arguments for 'sentinel %s'"
	.size	.L.str.257, 44

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"all"
	.size	.L.str.258, 4

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"default"
	.size	.L.str.259, 8

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"server"
	.size	.L.str.260, 7

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"clients"
	.size	.L.str.261, 8

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"cpu"
	.size	.L.str.262, 4

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"stats"
	.size	.L.str.263, 6

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"# Sentinel\r\nsentinel_masters:%lu\r\nsentinel_tilt:%d\r\nsentinel_running_scripts:%d\r\nsentinel_scripts_queue_length:%ld\r\nsentinel_simulate_failure_flags:%lu\r\n"
	.size	.L.str.264, 154

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"odown"
	.size	.L.str.265, 6

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"sdown"
	.size	.L.str.266, 6

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"master%d:name=%s,status=%s,address=%s:%d,slaves=%lu,sentinels=%lu\r\n"
	.size	.L.str.267, 68

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"Reconfiguration of scripts path is denied for security reasons. Check the deny-scripts-reconfig configuration directive in your Sentinel configuration"
	.size	.L.str.268, 151

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"Notification script seems non existing or non executable"
	.size	.L.str.269, 57

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"Client reconfiguration script seems non existing or non executable"
	.size	.L.str.270, 67

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"Unknown option or number of arguments for SENTINEL SET '%s'"
	.size	.L.str.271, 60

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"+set"
	.size	.L.str.272, 5

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"%@ %s %s"
	.size	.L.str.273, 9

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"%@ %s %s %s"
	.size	.L.str.274, 12

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"%@ %s"
	.size	.L.str.275, 6

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"Invalid argument '%s' for SENTINEL SET '%s'"
	.size	.L.str.276, 44

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"Only HELLO messages are accepted by Sentinel instances."
	.size	.L.str.277, 56

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"+sdown"
	.size	.L.str.278, 7

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"-sdown"
	.size	.L.str.279, 7

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"+odown"
	.size	.L.str.280, 7

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"%@ #quorum %d/%d"
	.size	.L.str.281, 17

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"-odown"
	.size	.L.str.282, 7

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"%s voted for %s %llu"
	.size	.L.str.283, 21

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"%s is-master-down-by-addr %s %s %llu %s"
	.size	.L.str.284, 40

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"SENTINEL"
	.size	.L.str.285, 9

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"Sentinel CRASH because of SENTINEL simulate-failure"
	.size	.L.str.286, 52

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"+vote-for-leader"
	.size	.L.str.287, 17

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"%s %llu"
	.size	.L.str.288, 8

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"de != NULL"
	.size	.L.str.289, 11

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"master->flags & (SRI_O_DOWN|SRI_FAILOVER_IN_PROGRESS)"
	.size	.L.str.290, 54

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"NO"
	.size	.L.str.291, 3

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"ONE"
	.size	.L.str.292, 4

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"MULTI"
	.size	.L.str.293, 6

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"SLAVEOF"
	.size	.L.str.294, 8

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"%s REWRITE"
	.size	.L.str.295, 11

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"CONFIG"
	.size	.L.str.296, 7

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"%s KILL TYPE normal"
	.size	.L.str.297, 20

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"EXEC"
	.size	.L.str.298, 5

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"master->flags & SRI_MASTER"
	.size	.L.str.299, 27

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"+try-failover"
	.size	.L.str.300, 14

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"Next failover delay: I will not start a failover before %s"
	.size	.L.str.301, 59

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"-failover-abort-not-elected"
	.size	.L.str.302, 28

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"+elected-leader"
	.size	.L.str.303, 16

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"+failover-state-select-slave"
	.size	.L.str.304, 29

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"-failover-abort-no-good-slave"
	.size	.L.str.305, 30

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"+selected-slave"
	.size	.L.str.306, 16

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"+failover-state-send-slaveof-noone"
	.size	.L.str.307, 35

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"-failover-abort-slave-timeout"
	.size	.L.str.308, 30

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"+failover-state-wait-promotion"
	.size	.L.str.309, 31

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"+failover-end-for-timeout"
	.size	.L.str.310, 26

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"+failover-end"
	.size	.L.str.311, 14

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"+slave-reconf-sent-be"
	.size	.L.str.312, 22

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"-slave-reconf-sent-timeout"
	.size	.L.str.313, 27

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"+slave-reconf-sent"
	.size	.L.str.314, 19

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"ri->flags & SRI_FAILOVER_IN_PROGRESS"
	.size	.L.str.315, 37

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"ri->failover_state <= SENTINEL_FAILOVER_STATE_WAIT_PROMOTION"
	.size	.L.str.316, 61

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"-tilt"
	.size	.L.str.317, 6

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"#tilt mode exited"
	.size	.L.str.318, 18

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"+tilt"
	.size	.L.str.319, 6

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"#tilt mode entered"
	.size	.L.str.320, 19

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.addReplySentinelRedisInstance,@object # @switch.table.addReplySentinelRedisInstance
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.addReplySentinelRedisInstance:
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.size	.Lswitch.table.addReplySentinelRedisInstance, 56

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
