	.text
	.file	"server.c"
	.globl	authCommand             # -- Begin function authCommand
	.p2align	4, 0x90
	.type	authCommand,@function
authCommand:                            # @authCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	server+96(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	time_independent_strcmp
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	movl	$0, 164(%rbx)
	movl	$.L.str.360, %esi
	jmp	.LBB0_5
.LBB0_1:
	movl	$.L.str.359, %esi
.LBB0_5:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB0_6
.LBB0_3:
	movl	$1, 164(%rbx)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	authCommand, .Lfunc_end0-authCommand
                                        # -- End function
	.globl	pingCommand             # -- Begin function pingCommand
	.p2align	4, 0x90
	.type	pingCommand,@function
pingCommand:                            # @pingCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	64(%rdi), %eax
	cmpl	$3, %eax
	jl	.LBB1_2
# %bb.1:
	movq	80(%rbx), %rax
	movq	(%rax), %rdx
	movl	$.L.str.344, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB1_8
.LBB1_2:
	testb	$4, 162(%rbx)
	jne	.LBB1_3
# %bb.5:
	cmpl	$1, %eax
	jne	.LBB1_7
# %bb.6:
	movq	shared+56(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB1_8
.LBB1_3:
	movq	shared+80464(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$.L.str.361, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	addReplyBulkCBuffer
	cmpl	$1, 64(%rbx)
	jne	.LBB1_7
# %bb.4:
	movl	$.L.str.309, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	addReplyBulkCBuffer
	jmp	.LBB1_8
.LBB1_7:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulk
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pingCommand, .Lfunc_end1-pingCommand
                                        # -- End function
	.globl	echoCommand             # -- Begin function echoCommand
	.p2align	4, 0x90
	.type	echoCommand,@function
echoCommand:                            # @echoCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	callq	addReplyBulk
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	echoCommand, .Lfunc_end2-echoCommand
                                        # -- End function
	.globl	infoCommand             # -- Begin function infoCommand
	.p2align	4, 0x90
	.type	infoCommand,@function
infoCommand:                            # @infoCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	64(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB3_3
# %bb.1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	jmp	.LBB3_2
.LBB3_3:
	movl	$.L.str.384, %edi
	cmpl	$3, %eax
	jl	.LBB3_2
# %bb.4:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB3_5
.LBB3_2:
	callq	genRedisInfoString
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	infoCommand, .Lfunc_end3-infoCommand
                                        # -- End function
	.globl	monitorCommand          # -- Begin function monitorCommand
	.p2align	4, 0x90
	.type	monitorCommand,@function
monitorCommand:                         # @monitorCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	160(%rdi), %eax
	testb	$1, %al
	jne	.LBB4_2
# %bb.1:
	movq	%rdi, %rbx
	orl	$5, %eax
	movl	%eax, 160(%rdi)
	movq	server+544(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	monitorCommand, .Lfunc_end4-monitorCommand
                                        # -- End function
	.globl	timeCommand             # -- Begin function timeCommand
	.p2align	4, 0x90
	.type	timeCommand,@function
timeCommand:                            # @timeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	leaq	65496(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65496(%rbp), %r14
	movq	65504(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulkLongLong
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	addReplyBulkLongLong
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	timeCommand, .Lfunc_end5-timeCommand
                                        # -- End function
	.globl	commandCommand          # -- Begin function commandCommand
	.p2align	4, 0x90
	.type	commandCommand,@function
commandCommand:                         # @commandCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r12
	movslq	64(%rdi), %r14
	cmpq	$2, %r14
	jne	.LBB6_4
# %bb.1:
	movq	72(%r12), %rbx
	movq	8(%rbx), %rax
	movq	8(%rax), %r15
	movl	$.L.str.373, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB6_3
# %bb.2:
	leaq	72(%r12), %r13
	jmp	.LBB6_6
.LBB6_4:
	cmpl	$1, %r14d
	jne	.LBB6_5
# %bb.10:
	movq	server+56(%rip), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	server+56(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB6_13
# %bb.11:                               #   in Loop: Header=BB6_12 Depth=1
	movq	8(%rax), %rsi
	movq	%r12, %rdi
	callq	addReplyCommand
	movq	%rbx, %rdi
	jmp	.LBB6_12
.LBB6_5:
	leaq	72(%r12), %r13
	movq	72(%r12), %rbx
	movq	8(%rbx), %rax
	movq	8(%rax), %r15
.LBB6_6:
	movl	$.L.str.151, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB6_7
# %bb.14:
	movl	$.L.str.378, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$2, %r14d
	jne	.LBB6_17
# %bb.15:
	testl	%eax, %eax
	jne	.LBB6_17
# %bb.16:
	movq	server+56(%rip), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	movq	%r12, %rdi
	callq	addReplyLongLong
	jmp	.LBB6_35
.LBB6_13:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	jmp	.LBB6_35
.LBB6_7:
	addq	$-2, %r14
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	addReplyMultiBulkLen
	cmpl	$3, 64(%r12)
	jl	.LBB6_35
# %bb.8:                                # %.preheader
	movl	$2, %ebx
	.p2align	4, 0x90
.LBB6_9:                                # =>This Inner Loop Header: Depth=1
	movq	server+56(%rip), %rdi
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rsi
	callq	dictFetchValue
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplyCommand
	addq	$1, %rbx
	movslq	64(%r12), %rax
	cmpq	%rax, %rbx
	jl	.LBB6_9
	jmp	.LBB6_35
.LBB6_3:
	movq	$0, -48(%rbp)
	movl	$.L.str.375, %eax
	movq	%rax, %xmm0
	movl	$.L.str.374, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -80(%rbp)
	movl	$.L.str.377, %eax
	movq	%rax, %xmm0
	movl	$.L.str.376, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -64(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyHelp
	jmp	.LBB6_35
.LBB6_17:
	movl	$.L.str.379, %esi
	movq	%r15, %rdi
	callq	strcasecmp
	cmpl	$3, %r14d
	jl	.LBB6_34
# %bb.18:
	testl	%eax, %eax
	jne	.LBB6_34
# %bb.19:
	movq	16(%rbx), %rax
	movq	8(%rax), %rsi
	movq	server+56(%rip), %rdi
	callq	dictFetchValue
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_20
# %bb.22:
	cmpq	$0, 40(%rax)
	jne	.LBB6_25
# %bb.23:
	cmpl	$0, 48(%rax)
	je	.LBB6_24
.LBB6_25:
	movl	16(%rax), %ecx
	testl	%ecx, %ecx
	setg	%sil
	movl	64(%r12), %edx
	addl	$-2, %edx
	cmpl	%edx, %ecx
	setne	%bl
	testb	%sil, %bl
	jne	.LBB6_27
# %bb.26:
	negl	%ecx
	cmpl	%ecx, %edx
	jl	.LBB6_27
# %bb.28:
	movq	(%r13), %rsi
	addq	$16, %rsi
	leaq	-80(%rbp), %rcx
	movq	%rax, %rdi
	callq	getKeysFromCommand
	testq	%rax, %rax
	je	.LBB6_29
# %bb.30:
	movq	%rax, %r14
	movslq	-80(%rbp), %rsi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	cmpl	$0, -80(%rbp)
	jle	.LBB6_33
# %bb.31:                               # %.preheader1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB6_32:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movslq	(%r14,%rbx,4), %rcx
	movq	16(%rax,%rcx,8), %rsi
	movq	%r12, %rdi
	callq	addReplyBulk
	addq	$1, %rbx
	movslq	-80(%rbp), %rax
	cmpq	%rax, %rbx
	jl	.LBB6_32
.LBB6_33:
	movq	%r14, %rdi
	callq	getKeysFreeResult
	jmp	.LBB6_35
.LBB6_34:
	movq	%r12, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB6_35
.LBB6_20:
	movl	$.L.str.380, %esi
	jmp	.LBB6_21
.LBB6_27:
	movl	$.L.str.382, %esi
	jmp	.LBB6_21
.LBB6_29:
	movl	$.L.str.383, %esi
	jmp	.LBB6_21
.LBB6_24:
	movl	$.L.str.381, %esi
.LBB6_21:
	movq	%r12, %rdi
	callq	addReplyError
.LBB6_35:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	commandCommand, .Lfunc_end6-commandCommand
                                        # -- End function
	.globl	serverLogRaw            # -- Begin function serverLogRaw
	.p2align	4, 0x90
	.type	serverLogRaw,@function
serverLogRaw:                           # @serverLogRaw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movl	%edi, %ebx
	movzbl	%bl, %r15d
	cmpl	server+1728(%rip), %r15d
	jl	.LBB7_15
# %bb.1:
	movq	%rsi, %r14
	movq	server+2240(%rip), %rdi
	movb	(%rdi), %r13b
	testb	%r13b, %r13b
	je	.LBB7_2
# %bb.3:
	movl	$.L.str.179, %esi
	callq	fopen
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB7_5
	jmp	.LBB7_15
.LBB7_2:
	callq	__getreent
	movq	16(%rax), %r12
	testq	%r12, %r12
	je	.LBB7_15
.LBB7_5:
	testl	$1024, %ebx             # imm = 0x400
	jne	.LBB7_6
# %bb.7:
	callq	getpid
	movl	%eax, -44(%rbp)         # 4-byte Spill
	leaq	65408(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65408(%rbp), %rsi
	movslq	65416(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2880(%rip), %rdx
	movl	server+2888(%rip), %ecx
	leaq	-184(%rbp), %rdi
	callq	nolocks_localtime
	leaq	-128(%rbp), %rdi
	movl	$64, %ebx
	movl	$64, %esi
	movl	$.L.str.241, %edx
	leaq	-184(%rbp), %rcx
	callq	strftime
	cltq
	leaq	(%rax,%rbp), %rdi
	addq	$-128, %rdi
	subq	%rax, %rbx
	imulq	$274877907, -56(%rbp), %rcx # 8-byte Folded Reload
                                        # imm = 0x10624DD3
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$38, %rcx
	addl	%eax, %ecx
	movl	$.L.str.242, %edx
	movq	%rbx, %rsi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	snprintf
	movl	$88, %ebx
	cmpl	$0, server+164(%rip)
	jne	.LBB7_10
# %bb.8:
	movl	$67, %ebx
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	server(%rip), %eax
	jne	.LBB7_10
# %bb.9:
	cmpq	$0, server+2464(%rip)
	movl	$77, %eax
	movl	$83, %ebx
	cmovel	%eax, %ebx
.LBB7_10:
	callq	getpid
	movsbl	.L.str.239(%r15), %r9d
	movq	%r14, (%rsp)
	leaq	-128(%rbp), %r8
	movl	$.L.str.243, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB7_11
.LBB7_6:
	movl	$.L.str.240, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	fprintf
.LBB7_11:
	movq	%r12, %rdi
	callq	fflush
	testb	%r13b, %r13b
	je	.LBB7_13
# %bb.12:
	movq	%r12, %rdi
	callq	fclose
.LBB7_13:
	cmpl	$0, server+2248(%rip)
	je	.LBB7_15
# %bb.14:
	movl	%r15d, %eax
	movl	.LserverLogRaw.syslogLevelMap(,%rax,4), %edi
	movl	$.L.str.240, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	syslog
.LBB7_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	serverLogRaw, .Lfunc_end7-serverLogRaw
                                        # -- End function
	.globl	serverLog               # -- Begin function serverLog
	.p2align	4, 0x90
	.type	serverLog,@function
serverLog:                              # @serverLog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1232, %rsp             # imm = 0x4D0
	movq	%rsi, %r10
	movl	%edi, %ebx
	testb	%al, %al
	je	.LBB8_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB8_2:
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	movzbl	%bl, %eax
	cmpl	server+1728(%rip), %eax
	jl	.LBB8_4
# %bb.3:
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -48(%rbp)
	leaq	-1248(%rbp), %r14
	leaq	-48(%rbp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%r14, %rdi
	movq	%r10, %rdx
	callq	vsnprintf
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	serverLogRaw
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	serverLog, .Lfunc_end8-serverLog
                                        # -- End function
	.globl	serverLogFromHandler    # -- Begin function serverLogFromHandler
	.p2align	4, 0x90
	.type	serverLogFromHandler,@function
serverLogFromHandler:                   # @serverLogFromHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movzbl	%dil, %eax
	cmpl	server+1728(%rip), %eax
	jl	.LBB9_14
# %bb.1:
	movq	%rsi, %r14
	movq	server+2240(%rip), %rdi
	movb	(%rdi), %r12b
	testb	%r12b, %r12b
	jne	.LBB9_3
# %bb.2:
	cmpl	$0, server+1804(%rip)
	jne	.LBB9_14
.LBB9_3:
	testb	%r12b, %r12b
	je	.LBB9_4
# %bb.5:
	movl	$521, %esi              # imm = 0x209
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r15d
	cmpl	$-1, %eax
	jne	.LBB9_6
	jmp	.LBB9_14
.LBB9_4:
	movl	$1, %r15d
.LBB9_6:
	callq	getpid
	movslq	%eax, %rdx
	leaq	-96(%rbp), %rbx
	movl	$64, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	%rbx, %rdi
	callq	strlen
	movl	%r15d, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	write
	cmpq	$-1, %rax
	je	.LBB9_12
# %bb.7:
	movl	$.L.str.244, %esi
	movl	$17, %edx
	movl	%r15d, %edi
	callq	write
	cmpq	$-1, %rax
	je	.LBB9_12
# %bb.8:
	xorl	%edi, %edi
	callq	time
	leaq	-96(%rbp), %rbx
	movl	$64, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	ll2string
	movq	%rbx, %rdi
	callq	strlen
	movl	%r15d, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	write
	cmpq	$-1, %rax
	je	.LBB9_12
# %bb.9:
	movl	$.L.str.245, %esi
	movl	$2, %edx
	movl	%r15d, %edi
	callq	write
	cmpq	$-1, %rax
	je	.LBB9_12
# %bb.10:
	movq	%r14, %rdi
	callq	strlen
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	write
	cmpq	$-1, %rax
	je	.LBB9_12
# %bb.11:
	movl	$.L.str.246, %esi
	movl	$1, %edx
	movl	%r15d, %edi
	callq	write
.LBB9_12:
	testb	%r12b, %r12b
	je	.LBB9_14
# %bb.13:
	movl	%r15d, %edi
	callq	close
.LBB9_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	serverLogFromHandler, .Lfunc_end9-serverLogFromHandler
                                        # -- End function
	.globl	ustime                  # -- Begin function ustime
	.p2align	4, 0x90
	.type	ustime,@function
ustime:                                 # @ustime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	65520(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65520(%rbp), %rax # imm = 0xF4240
	addq	65528(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ustime, .Lfunc_end10-ustime
                                        # -- End function
	.globl	mstime                  # -- Begin function mstime
	.p2align	4, 0x90
	.type	mstime,@function
mstime:                                 # @mstime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	65520(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65520(%rbp), %rax # imm = 0xF4240
	addq	65528(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mstime, .Lfunc_end11-mstime
                                        # -- End function
	.globl	exitFromChild           # -- Begin function exitFromChild
	.p2align	4, 0x90
	.type	exitFromChild,@function
exitFromChild:                          # @exitFromChild
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_exit
.Lfunc_end12:
	.size	exitFromChild, .Lfunc_end12-exitFromChild
                                        # -- End function
	.globl	dictVanillaFree         # -- Begin function dictVanillaFree
	.p2align	4, 0x90
	.type	dictVanillaFree,@function
dictVanillaFree:                        # @dictVanillaFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dictVanillaFree, .Lfunc_end13-dictVanillaFree
                                        # -- End function
	.globl	dictListDestructor      # -- Begin function dictListDestructor
	.p2align	4, 0x90
	.type	dictListDestructor,@function
dictListDestructor:                     # @dictListDestructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	callq	listRelease
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dictListDestructor, .Lfunc_end14-dictListDestructor
                                        # -- End function
	.globl	dictSdsKeyCompare       # -- Begin function dictSdsKeyCompare
	.p2align	4, 0x90
	.type	dictSdsKeyCompare,@function
dictSdsKeyCompare:                      # @dictSdsKeyCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	-1(%rsi), %r8d
	movl	%r8d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_1
# %bb.2:
	movl	%r8d, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_3:
	shrq	$3, %r8
	jmp	.LBB15_8
.LBB15_1:
	xorl	%r8d, %r8d
	jmp	.LBB15_8
.LBB15_4:
	movzbl	-3(%rsi), %r8d
	jmp	.LBB15_8
.LBB15_5:
	movzwl	-5(%rsi), %r8d
	jmp	.LBB15_8
.LBB15_6:
	movl	-9(%rsi), %r8d
	jmp	.LBB15_8
.LBB15_7:
	movq	-17(%rsi), %r8
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rdx), %edi
	movl	%edi, %ecx
	andb	$7, %cl
	xorl	%eax, %eax
	cmpb	$4, %cl
	ja	.LBB15_9
# %bb.10:
	movl	%edi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI15_1(,%rcx,8)
.LBB15_11:
	shrq	$3, %rdi
	jmp	.LBB15_16
.LBB15_9:
	xorl	%edi, %edi
	jmp	.LBB15_16
.LBB15_12:
	movzbl	-3(%rdx), %edi
	jmp	.LBB15_16
.LBB15_13:
	movzwl	-5(%rdx), %edi
	jmp	.LBB15_16
.LBB15_14:
	movl	-9(%rdx), %edi
	jmp	.LBB15_16
.LBB15_15:
	movq	-17(%rdx), %rdi
.LBB15_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %r8d
	jne	.LBB15_18
# %bb.17:
	movslq	%r8d, %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
.LBB15_18:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dictSdsKeyCompare, .Lfunc_end15-dictSdsKeyCompare
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_7
.LJTI15_1:
	.quad	.LBB15_11
	.quad	.LBB15_12
	.quad	.LBB15_13
	.quad	.LBB15_14
	.quad	.LBB15_15
                                        # -- End function
	.text
	.globl	dictSdsKeyCaseCompare   # -- Begin function dictSdsKeyCaseCompare
	.p2align	4, 0x90
	.type	dictSdsKeyCaseCompare,@function
dictSdsKeyCaseCompare:                  # @dictSdsKeyCaseCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	dictSdsKeyCaseCompare, .Lfunc_end16-dictSdsKeyCaseCompare
                                        # -- End function
	.globl	dictObjectDestructor    # -- Begin function dictObjectDestructor
	.p2align	4, 0x90
	.type	dictObjectDestructor,@function
dictObjectDestructor:                   # @dictObjectDestructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rsi, %rsi
	je	.LBB17_2
# %bb.1:
	movq	%rsi, %rdi
	callq	decrRefCount
.LBB17_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	dictObjectDestructor, .Lfunc_end17-dictObjectDestructor
                                        # -- End function
	.globl	dictSdsDestructor       # -- Begin function dictSdsDestructor
	.p2align	4, 0x90
	.type	dictSdsDestructor,@function
dictSdsDestructor:                      # @dictSdsDestructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	dictSdsDestructor, .Lfunc_end18-dictSdsDestructor
                                        # -- End function
	.globl	dictObjKeyCompare       # -- Begin function dictObjKeyCompare
	.p2align	4, 0x90
	.type	dictObjKeyCompare,@function
dictObjKeyCompare:                      # @dictObjKeyCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rsi), %rsi
	movq	8(%rdx), %rdx
	callq	dictSdsKeyCompare
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	dictObjKeyCompare, .Lfunc_end19-dictObjKeyCompare
                                        # -- End function
	.globl	dictObjHash             # -- Begin function dictObjHash
	.p2align	4, 0x90
	.type	dictObjHash,@function
dictObjHash:                            # @dictObjHash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rdi), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB20_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI20_0(,%rax,8)
.LBB20_3:
	shrq	$3, %rsi
	jmp	.LBB20_8
.LBB20_1:
	xorl	%esi, %esi
	jmp	.LBB20_8
.LBB20_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB20_8
.LBB20_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB20_8
.LBB20_6:
	movl	-9(%rdi), %esi
	jmp	.LBB20_8
.LBB20_7:
	movq	-17(%rdi), %rsi
.LBB20_8:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	dictGenHashFunction
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	dictObjHash, .Lfunc_end20-dictObjHash
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI20_0:
	.quad	.LBB20_3
	.quad	.LBB20_4
	.quad	.LBB20_5
	.quad	.LBB20_6
	.quad	.LBB20_7
                                        # -- End function
	.text
	.globl	dictSdsHash             # -- Begin function dictSdsHash
	.p2align	4, 0x90
	.type	dictSdsHash,@function
dictSdsHash:                            # @dictSdsHash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB21_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_3:
	shrq	$3, %rsi
	jmp	.LBB21_8
.LBB21_1:
	xorl	%esi, %esi
	jmp	.LBB21_8
.LBB21_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB21_8
.LBB21_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB21_8
.LBB21_6:
	movl	-9(%rdi), %esi
	jmp	.LBB21_8
.LBB21_7:
	movq	-17(%rdi), %rsi
.LBB21_8:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	dictGenHashFunction
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	dictSdsHash, .Lfunc_end21-dictSdsHash
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_3
	.quad	.LBB21_4
	.quad	.LBB21_5
	.quad	.LBB21_6
	.quad	.LBB21_7
                                        # -- End function
	.text
	.globl	dictSdsCaseHash         # -- Begin function dictSdsCaseHash
	.p2align	4, 0x90
	.type	dictSdsCaseHash,@function
dictSdsCaseHash:                        # @dictSdsCaseHash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB22_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI22_0(,%rax,8)
.LBB22_3:
	shrq	$3, %rsi
	jmp	.LBB22_8
.LBB22_1:
	xorl	%esi, %esi
	jmp	.LBB22_8
.LBB22_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB22_8
.LBB22_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB22_8
.LBB22_6:
	movl	-9(%rdi), %esi
	jmp	.LBB22_8
.LBB22_7:
	movq	-17(%rdi), %rsi
.LBB22_8:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	dictGenCaseHashFunction
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	dictSdsCaseHash, .Lfunc_end22-dictSdsCaseHash
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI22_0:
	.quad	.LBB22_3
	.quad	.LBB22_4
	.quad	.LBB22_5
	.quad	.LBB22_6
	.quad	.LBB22_7
                                        # -- End function
	.text
	.globl	dictEncObjKeyCompare    # -- Begin function dictEncObjKeyCompare
	.p2align	4, 0x90
	.type	dictEncObjKeyCompare,@function
dictEncObjKeyCompare:                   # @dictEncObjKeyCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movl	$240, %eax
	movl	(%rsi), %ecx
	andl	%eax, %ecx
	cmpl	$16, %ecx
	jne	.LBB23_3
# %bb.1:
	andl	(%r14), %eax
	cmpl	$16, %eax
	jne	.LBB23_3
# %bb.2:
	movq	8(%rsi), %rax
	xorl	%r12d, %r12d
	cmpq	8(%r14), %rax
	sete	%r12b
	jmp	.LBB23_4
.LBB23_3:
	movq	%rsi, %rdi
	callq	getDecodedObject
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	getDecodedObject
	movq	%rax, %rbx
	movq	8(%r15), %rsi
	movq	8(%rax), %rdx
	callq	dictSdsKeyCompare
	movl	%eax, %r12d
	movq	%r15, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB23_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	dictEncObjKeyCompare, .Lfunc_end23-dictEncObjKeyCompare
                                        # -- End function
	.globl	dictEncObjHash          # -- Begin function dictEncObjHash
	.p2align	4, 0x90
	.type	dictEncObjHash,@function
dictEncObjHash:                         # @dictEncObjHash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movb	(%rdi), %al
	shrb	$4, %al
	cmpb	$8, %al
	je	.LBB24_3
# %bb.1:
	cmpb	$1, %al
	je	.LBB24_13
# %bb.2:
	testb	%al, %al
	jne	.LBB24_14
.LBB24_3:
	movq	8(%rdi), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB24_4
# %bb.5:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI24_0(,%rax,8)
.LBB24_6:
	shrq	$3, %rsi
	jmp	.LBB24_11
.LBB24_13:
	movq	8(%rdi), %rdx
	leaq	-48(%rbp), %rbx
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	ll2string
	movq	%rbx, %rdi
	movl	%eax, %esi
	jmp	.LBB24_12
.LBB24_14:
	callq	getDecodedObject
	movq	%rax, %r14
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB24_15
# %bb.16:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI24_1(,%rax,8)
.LBB24_17:
	shrq	$3, %rsi
	jmp	.LBB24_22
.LBB24_4:
	xorl	%esi, %esi
	jmp	.LBB24_11
.LBB24_7:
	movzbl	-3(%rdi), %esi
	jmp	.LBB24_11
.LBB24_8:
	movzwl	-5(%rdi), %esi
	jmp	.LBB24_11
.LBB24_9:
	movl	-9(%rdi), %esi
	jmp	.LBB24_11
.LBB24_10:
	movq	-17(%rdi), %rsi
.LBB24_11:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
.LBB24_12:
	callq	dictGenHashFunction
	movq	%rax, %rbx
	jmp	.LBB24_23
.LBB24_15:
	xorl	%esi, %esi
	jmp	.LBB24_22
.LBB24_18:
	movzbl	-3(%rdi), %esi
	jmp	.LBB24_22
.LBB24_19:
	movzwl	-5(%rdi), %esi
	jmp	.LBB24_22
.LBB24_20:
	movl	-9(%rdi), %esi
	jmp	.LBB24_22
.LBB24_21:
	movq	-17(%rdi), %rsi
.LBB24_22:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	dictGenHashFunction
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	decrRefCount
.LBB24_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	dictEncObjHash, .Lfunc_end24-dictEncObjHash
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI24_0:
	.quad	.LBB24_6
	.quad	.LBB24_7
	.quad	.LBB24_8
	.quad	.LBB24_9
	.quad	.LBB24_10
.LJTI24_1:
	.quad	.LBB24_17
	.quad	.LBB24_18
	.quad	.LBB24_19
	.quad	.LBB24_20
	.quad	.LBB24_21
                                        # -- End function
	.text
	.globl	htNeedsResize           # -- Begin function htNeedsResize
	.p2align	4, 0x90
	.type	htNeedsResize,@function
htNeedsResize:                          # @htNeedsResize
# %bb.0:
	movq	56(%rdi), %rcx
	addq	24(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	$5, %rcx
	jl	.LBB25_2
# %bb.1:
	movq	72(%rdi), %rax
	addq	40(%rdi), %rax
	imulq	$100, %rax, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	$10, %rcx
	setl	%al
.LBB25_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end25:
	.size	htNeedsResize, .Lfunc_end25-htNeedsResize
                                        # -- End function
	.globl	tryResizeHashTables     # -- Begin function tryResizeHashTables
	.p2align	4, 0x90
	.type	tryResizeHashTables,@function
tryResizeHashTables:                    # @tryResizeHashTables
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+48(%rip), %rcx
	movslq	%edi, %rbx
	shlq	$6, %rbx
	movq	(%rcx,%rbx), %rdi
	movq	56(%rdi), %rsi
	addq	24(%rdi), %rsi
	cmpq	$4, %rsi
	jle	.LBB26_1
# %bb.2:
	movq	72(%rdi), %rax
	addq	40(%rdi), %rax
	imulq	$100, %rax, %rax
	cqto
	idivq	%rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rax
	jg	.LBB26_4
# %bb.3:
	callq	dictResize
	movq	server+48(%rip), %rcx
	jmp	.LBB26_4
.LBB26_1:
	movl	$42, __A_VARIABLE(%rip)
.LBB26_4:
	movq	8(%rcx,%rbx), %rdi
	movq	56(%rdi), %rcx
	addq	24(%rdi), %rcx
	cmpq	$4, %rcx
	jle	.LBB26_5
# %bb.6:
	movq	72(%rdi), %rax
	addq	40(%rdi), %rax
	imulq	$100, %rax, %rax
	cqto
	idivq	%rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rax
	jg	.LBB26_8
# %bb.7:
	callq	dictResize
	jmp	.LBB26_8
.LBB26_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB26_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	tryResizeHashTables, .Lfunc_end26-tryResizeHashTables
                                        # -- End function
	.globl	incrementallyRehash     # -- Begin function incrementallyRehash
	.p2align	4, 0x90
	.type	incrementallyRehash,@function
incrementallyRehash:                    # @incrementallyRehash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+48(%rip), %rax
	movslq	%edi, %rcx
	shlq	$6, %rcx
	movq	(%rax,%rcx), %rdi
	cmpq	$-1, 80(%rdi)
	jne	.LBB27_3
# %bb.1:
	movq	8(%rax,%rcx), %rdi
	cmpq	$-1, 80(%rdi)
	je	.LBB27_2
.LBB27_3:
	movl	$1, %ebx
	movl	$1, %esi
	callq	dictRehashMilliseconds
.LBB27_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB27_2:
	xorl	%ebx, %ebx
	jmp	.LBB27_4
.Lfunc_end27:
	.size	incrementallyRehash, .Lfunc_end27-incrementallyRehash
                                        # -- End function
	.globl	updateDictResizePolicy  # -- Begin function updateDictResizePolicy
	.p2align	4, 0x90
	.type	updateDictResizePolicy,@function
updateDictResizePolicy:                 # @updateDictResizePolicy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	server+1940(%rip), %eax
	andl	server+2096(%rip), %eax
	cmpl	$-1, %eax
	je	.LBB28_1
# %bb.2:
	callq	dictDisableResize
	jmp	.LBB28_3
.LBB28_1:
	callq	dictEnableResize
.LBB28_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	updateDictResizePolicy, .Lfunc_end28-updateDictResizePolicy
                                        # -- End function
	.globl	trackInstantaneousMetric # -- Begin function trackInstantaneousMetric
	.p2align	4, 0x90
	.type	trackInstantaneousMetric,@function
trackInstantaneousMetric:               # @trackInstantaneousMetric
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movl	%edi, %r15d
	leaq	65488(%rbp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65488(%rbp), %rax # imm = 0xF4240
	addq	65496(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2361183241434822607, %r12 # imm = 0x20C49BA5E353F7CF
	imulq	%r12
	movq	%rdx, %rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rcx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %rax
	imulq	$152, %rax, %rsi
	leaq	server+1272(%rsi), %r15
	subq	server+1272(%rsi), %rcx
	jle	.LBB29_2
# %bb.1:
	movq	%r14, %rax
	subq	8(%r15), %rax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	cqto
	idivq	%rcx
	movq	%rax, %rbx
.LBB29_2:
	movslq	server+1416(%rsi), %rax
	movq	%rbx, server+1288(%rsi,%rax,8)
	leal	1(%rax), %ecx
	leal	16(%rax), %edx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %edx
	andl	$-16, %edx
	negl	%edx
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, server+1416(%rsi)
	leaq	65488(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65488(%rbp), %rax # imm = 0xF4240
	addq	65496(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, (%r15)
	movq	%r14, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	trackInstantaneousMetric, .Lfunc_end29-trackInstantaneousMetric
                                        # -- End function
	.globl	getInstantaneousMetric  # -- Begin function getInstantaneousMetric
	.p2align	4, 0x90
	.type	getInstantaneousMetric,@function
getInstantaneousMetric:                 # @getInstantaneousMetric
# %bb.0:
	movslq	%edi, %rax
	imulq	$152, %rax, %rax
	movdqu	server+1368(%rax), %xmm0
	movdqu	server+1304(%rax), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	server+1400(%rax), %xmm0
	movdqu	server+1336(%rax), %xmm2
	paddq	%xmm0, %xmm2
	paddq	%xmm1, %xmm2
	movdqu	server+1352(%rax), %xmm0
	movdqu	server+1288(%rax), %xmm1
	paddq	%xmm0, %xmm1
	movdqu	server+1384(%rax), %xmm0
	movdqu	server+1320(%rax), %xmm3
	paddq	%xmm0, %xmm3
	paddq	%xmm1, %xmm3
	paddq	%xmm2, %xmm3
	pshufd	$78, %xmm3, %xmm0       # xmm0 = xmm3[2,3,0,1]
	paddq	%xmm3, %xmm0
	movq	%xmm0, %rcx
	leaq	15(%rcx), %rax
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rax
	sarq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end30:
	.size	getInstantaneousMetric, .Lfunc_end30-getInstantaneousMetric
                                        # -- End function
	.globl	clientsCronHandleTimeout # -- Begin function clientsCronHandleTimeout
	.p2align	4, 0x90
	.type	clientsCronHandleTimeout,@function
clientsCronHandleTimeout:               # @clientsCronHandleTimeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movslq	server+1732(%rip), %rdi
	movl	160(%rbx), %ecx
	testq	%rdi, %rdi
	je	.LBB31_4
# %bb.1:
	movl	%ecx, %eax
	andl	$262163, %eax           # imm = 0x40013
	jne	.LBB31_4
# %bb.2:
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	movq	%rsi, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	subq	144(%rbx), %rdx
	cmpq	%rdi, %rdx
	jle	.LBB31_4
# %bb.3:
	movl	$1, %r14d
	movl	$.L.str.247, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	freeClient
	jmp	.LBB31_11
.LBB31_4:
	xorl	%r14d, %r14d
	testb	$16, %cl
	je	.LBB31_11
# %bb.5:
	movq	392(%rbx), %rax
	testq	%rax, %rax
	je	.LBB31_8
# %bb.6:
	cmpq	%rsi, %rax
	jge	.LBB31_8
# %bb.7:
	movq	%rbx, %rdi
	callq	replyToBlockedClientTimedOut
	jmp	.LBB31_10
.LBB31_8:
	cmpl	$0, server+2924(%rip)
	je	.LBB31_11
# %bb.9:
	movq	%rbx, %rdi
	callq	clusterRedirectBlockedClientIfNeeded
	testl	%eax, %eax
	je	.LBB31_11
.LBB31_10:
	movq	%rbx, %rdi
	callq	unblockClient
.LBB31_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	clientsCronHandleTimeout, .Lfunc_end31-clientsCronHandleTimeout
                                        # -- End function
	.globl	clientsCronResizeQueryBuffer # -- Begin function clientsCronResizeQueryBuffer
	.p2align	4, 0x90
	.type	clientsCronResizeQueryBuffer,@function
clientsCronResizeQueryBuffer:           # @clientsCronResizeQueryBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	callq	sdsAllocSize
	cmpq	$32768, %rax            # imm = 0x8000
	jbe	.LBB32_12
# %bb.1:
	movq	server+2872(%rip), %rcx
	subq	144(%rbx), %rcx
	movq	56(%rbx), %rsi
	addq	$1, %rsi
	xorl	%edx, %edx
	divq	%rsi
	cmpq	$2, %rcx
	jg	.LBB32_3
# %bb.2:
	cmpq	$3, %rax
	jb	.LBB32_12
.LBB32_3:
	movq	32(%rbx), %rdi
	movb	-1(%rdi), %al
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB32_5
# %bb.4:
	movzbl	%al, %eax
	jmpq	*.LJTI32_0(,%rax,8)
.LBB32_6:
	movzbl	-2(%rdi), %eax
	movzbl	-3(%rdi), %ecx
	subq	%rcx, %rax
	jmp	.LBB32_10
.LBB32_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_12
.LBB32_7:
	movzwl	-3(%rdi), %eax
	movzwl	-5(%rdi), %ecx
	subq	%rcx, %rax
	jmp	.LBB32_10
.LBB32_8:
	movl	-5(%rdi), %eax
	subl	-9(%rdi), %eax
	jmp	.LBB32_10
.LBB32_9:
	movq	-9(%rdi), %rax
	subq	-17(%rdi), %rax
.LBB32_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4097, %rax             # imm = 0x1001
	jb	.LBB32_12
# %bb.11:
	callq	sdsRemoveFreeSpace
	movq	%rax, 32(%rbx)
.LBB32_12:
	movq	$0, 56(%rbx)
	testb	$2, 160(%rbx)
	je	.LBB32_24
# %bb.13:
	movq	48(%rbx), %rdi
	callq	sdsAllocSize
	cmpq	$4194305, %rax          # imm = 0x400001
	jb	.LBB32_24
# %bb.14:
	movq	48(%rbx), %rdi
	movzbl	-1(%rdi), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB32_15
# %bb.16:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI32_1(,%rdx,8)
.LBB32_17:
	shrq	$3, %rcx
	jmp	.LBB32_22
.LBB32_15:
	xorl	%ecx, %ecx
	jmp	.LBB32_22
.LBB32_18:
	movzbl	-3(%rdi), %ecx
	jmp	.LBB32_22
.LBB32_19:
	movzwl	-5(%rdi), %ecx
	jmp	.LBB32_22
.LBB32_20:
	movl	-9(%rdi), %ecx
	jmp	.LBB32_22
.LBB32_21:
	movq	-17(%rdi), %rcx
.LBB32_22:
	movl	$42, __A_VARIABLE(%rip)
	shrq	%rax
	cmpq	%rax, %rcx
	jae	.LBB32_24
# %bb.23:
	callq	sdsRemoveFreeSpace
	movq	%rax, 48(%rbx)
.LBB32_24:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end32:
	.size	clientsCronResizeQueryBuffer, .Lfunc_end32-clientsCronResizeQueryBuffer
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI32_0:
	.quad	.LBB32_6
	.quad	.LBB32_7
	.quad	.LBB32_8
	.quad	.LBB32_9
.LJTI32_1:
	.quad	.LBB32_17
	.quad	.LBB32_18
	.quad	.LBB32_19
	.quad	.LBB32_20
	.quad	.LBB32_21
                                        # -- End function
	.text
	.globl	clientsCronTrackExpansiveClients # -- Begin function clientsCronTrackExpansiveClients
	.p2align	4, 0x90
	.type	clientsCronTrackExpansiveClients,@function
clientsCronTrackExpansiveClients:       # @clientsCronTrackExpansiveClients
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	callq	sdsAllocSize
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	getClientOutputBufferMemoryUsage
	movq	server+2872(%rip), %rcx
	leaq	7(%rcx), %rdx
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rdx
	andq	$-8, %rdx
	subq	%rdx, %rcx
	leal	1(%rcx), %edx
	leal	8(%rcx), %esi
	testl	%edx, %edx
	cmovnsl	%edx, %esi
	andl	$-8, %esi
	negl	%esi
	leal	(%rcx,%rsi), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movq	$0, ClientsPeakMemInput(,%rdx,8)
	movq	$0, ClientsPeakMemOutput(,%rdx,8)
	cmpq	ClientsPeakMemInput(,%rcx,8), %r14
	jbe	.LBB33_2
# %bb.1:
	movq	%r14, ClientsPeakMemInput(,%rcx,8)
.LBB33_2:
	cmpq	ClientsPeakMemOutput(,%rcx,8), %rax
	jbe	.LBB33_4
# %bb.3:
	movq	%rax, ClientsPeakMemOutput(,%rcx,8)
.LBB33_4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end33:
	.size	clientsCronTrackExpansiveClients, .Lfunc_end33-clientsCronTrackExpansiveClients
                                        # -- End function
	.globl	getExpansiveClientsInfo # -- Begin function getExpansiveClientsInfo
	.p2align	4, 0x90
	.type	getExpansiveClientsInfo,@function
getExpansiveClientsInfo:                # @getExpansiveClientsInfo
# %bb.0:
	movq	ClientsPeakMemInput(%rip), %rax
	movq	ClientsPeakMemOutput(%rip), %rcx
	movq	ClientsPeakMemInput+8(%rip), %rdx
	cmpq	%rax, %rdx
	cmovaq	%rdx, %rax
	movq	ClientsPeakMemOutput+8(%rip), %rdx
	cmpq	%rcx, %rdx
	cmovaq	%rdx, %rcx
	movq	ClientsPeakMemInput+16(%rip), %rdx
	cmpq	%rax, %rdx
	cmovaq	%rdx, %rax
	movq	ClientsPeakMemOutput+16(%rip), %rdx
	cmpq	%rcx, %rdx
	cmovaq	%rdx, %rcx
	movq	ClientsPeakMemInput+24(%rip), %rdx
	cmpq	%rax, %rdx
	cmovaq	%rdx, %rax
	movq	ClientsPeakMemOutput+24(%rip), %rdx
	cmpq	%rcx, %rdx
	cmovaq	%rdx, %rcx
	movq	ClientsPeakMemInput+32(%rip), %rdx
	cmpq	%rax, %rdx
	cmovaq	%rdx, %rax
	movq	ClientsPeakMemOutput+32(%rip), %rdx
	cmpq	%rcx, %rdx
	cmovaq	%rdx, %rcx
	movq	ClientsPeakMemInput+40(%rip), %rdx
	cmpq	%rax, %rdx
	cmovaq	%rdx, %rax
	movq	ClientsPeakMemOutput+40(%rip), %rdx
	cmpq	%rcx, %rdx
	cmovaq	%rdx, %rcx
	movq	ClientsPeakMemInput+48(%rip), %rdx
	cmpq	%rax, %rdx
	cmovaq	%rdx, %rax
	movq	ClientsPeakMemOutput+48(%rip), %rdx
	cmpq	%rcx, %rdx
	cmovaq	%rdx, %rcx
	movq	ClientsPeakMemInput+56(%rip), %rdx
	cmpq	%rax, %rdx
	cmovaq	%rdx, %rax
	movq	ClientsPeakMemOutput+56(%rip), %rdx
	cmpq	%rcx, %rdx
	cmovaq	%rdx, %rcx
	movq	%rax, (%rdi)
	movq	%rcx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end34:
	.size	getExpansiveClientsInfo, .Lfunc_end34-getExpansiveClientsInfo
                                        # -- End function
	.globl	clientsCron             # -- Begin function clientsCron
	.p2align	4, 0x90
	.type	clientsCron,@function
clientsCron:                            # @clientsCron
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	server+512(%rip), %rax
	movl	40(%rax), %ebx
	movl	%ebx, %eax
	cltd
	idivl	server+40(%rip)
	movl	%eax, %r15d
	leaq	65488(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65488(%rbp), %rax # imm = 0xF4240
	addq	65496(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	server+512(%rip), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB35_10
# %bb.1:
	movq	%rdx, %r14
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %r14
	addq	%rax, %r14
	cmpl	$6, %ebx
	movl	$5, %r12d
	cmovll	%ebx, %r12d
	cmpl	$5, %r15d
	cmovgel	%r15d, %r12d
	addl	$1, %r12d
	jmp	.LBB35_2
	.p2align	4, 0x90
.LBB35_8:                               #   in Loop: Header=BB35_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB35_9:                               #   in Loop: Header=BB35_2 Depth=1
	movq	server+512(%rip), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB35_10
.LBB35_2:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %r12d
	je	.LBB35_10
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	callq	listRotate
	movq	server+512(%rip), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	clientsCronHandleTimeout
	testl	%eax, %eax
	jne	.LBB35_9
# %bb.4:                                #   in Loop: Header=BB35_2 Depth=1
	movq	%rbx, %rdi
	callq	clientsCronResizeQueryBuffer
	movq	32(%rbx), %rdi
	callq	sdsAllocSize
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	getClientOutputBufferMemoryUsage
	movq	server+2872(%rip), %rcx
	leaq	7(%rcx), %rdx
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rdx
	andq	$-8, %rdx
	subq	%rdx, %rcx
	leal	1(%rcx), %edx
	leal	8(%rcx), %esi
	testl	%edx, %edx
	cmovnsl	%edx, %esi
	andl	$-8, %esi
	negl	%esi
	leal	(%rcx,%rsi), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movq	$0, ClientsPeakMemInput(,%rdx,8)
	movq	$0, ClientsPeakMemOutput(,%rdx,8)
	cmpq	ClientsPeakMemInput(,%rcx,8), %r15
	jbe	.LBB35_6
# %bb.5:                                #   in Loop: Header=BB35_2 Depth=1
	movq	%r15, ClientsPeakMemInput(,%rcx,8)
.LBB35_6:                               #   in Loop: Header=BB35_2 Depth=1
	cmpq	ClientsPeakMemOutput(,%rcx,8), %rax
	jbe	.LBB35_8
# %bb.7:                                #   in Loop: Header=BB35_2 Depth=1
	movq	%rax, ClientsPeakMemOutput(,%rcx,8)
	jmp	.LBB35_8
.LBB35_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	clientsCron, .Lfunc_end35-clientsCron
                                        # -- End function
	.globl	databasesCron           # -- Begin function databasesCron
	.p2align	4, 0x90
	.type	databasesCron,@function
databasesCron:                          # @databasesCron
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	cmpl	$0, server+1740(%rip)
	je	.LBB36_4
# %bb.1:
	cmpq	$0, server+2464(%rip)
	je	.LBB36_2
# %bb.3:
	callq	expireSlaveKeys
.LBB36_4:
	cmpl	$0, server+1744(%rip)
	je	.LBB36_6
.LBB36_5:
	callq	activeDefragCycle
.LBB36_6:
	movl	server+1940(%rip), %eax
	andl	server+2096(%rip), %eax
	cmpl	$-1, %eax
	je	.LBB36_7
.LBB36_26:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_7:
	movl	server+1792(%rip), %r14d
	cmpl	$17, %r14d
	movl	$16, %r15d
	cmovll	%r14d, %r15d
	testl	%r14d, %r14d
	jle	.LBB36_26
# %bb.8:
	movl	$1, %r12d
	movl	databasesCron.resize_db(%rip), %eax
	movl	%r14d, %ecx
	.p2align	4, 0x90
.LBB36_9:                               # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	divl	%ecx
	movq	server+48(%rip), %rcx
	movslq	%edx, %rbx
	shlq	$6, %rbx
	movq	(%rcx,%rbx), %rdi
	movq	56(%rdi), %rsi
	addq	24(%rdi), %rsi
	cmpq	$4, %rsi
	jle	.LBB36_10
# %bb.11:                               #   in Loop: Header=BB36_9 Depth=1
	movq	72(%rdi), %rax
	addq	40(%rdi), %rax
	imulq	$100, %rax, %rax
	cqto
	idivq	%rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rax
	jg	.LBB36_13
# %bb.12:                               #   in Loop: Header=BB36_9 Depth=1
	callq	dictResize
	movq	server+48(%rip), %rcx
	jmp	.LBB36_13
	.p2align	4, 0x90
.LBB36_10:                              #   in Loop: Header=BB36_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB36_13:                              #   in Loop: Header=BB36_9 Depth=1
	movq	8(%rcx,%rbx), %rdi
	movq	56(%rdi), %rcx
	addq	24(%rdi), %rcx
	cmpq	$4, %rcx
	jle	.LBB36_14
# %bb.15:                               #   in Loop: Header=BB36_9 Depth=1
	movq	72(%rdi), %rax
	addq	40(%rdi), %rax
	imulq	$100, %rax, %rax
	cqto
	idivq	%rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rax
	jg	.LBB36_17
# %bb.16:                               #   in Loop: Header=BB36_9 Depth=1
	callq	dictResize
	jmp	.LBB36_17
	.p2align	4, 0x90
.LBB36_14:                              #   in Loop: Header=BB36_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB36_17:                              #   in Loop: Header=BB36_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	databasesCron.resize_db(%rip), %eax
	addl	$1, %eax
	movl	%eax, databasesCron.resize_db(%rip)
	cmpl	%r15d, %r12d
	jge	.LBB36_19
# %bb.18:                               #   in Loop: Header=BB36_9 Depth=1
	movl	server+1792(%rip), %ecx
	addl	$1, %r12d
	jmp	.LBB36_9
.LBB36_2:
	xorl	%edi, %edi
	callq	activeExpireCycle
	cmpl	$0, server+1744(%rip)
	jne	.LBB36_5
	jmp	.LBB36_6
.LBB36_19:
	cmpl	$0, server+88(%rip)
	je	.LBB36_26
# %bb.20:
	testl	%r14d, %r14d
	jle	.LBB36_26
# %bb.21:
	movq	server+48(%rip), %rcx
	movl	server+1792(%rip), %esi
	xorl	%ebx, %ebx
	movl	databasesCron.rehash_db(%rip), %edx
	.p2align	4, 0x90
.LBB36_22:                              # =>This Inner Loop Header: Depth=1
	movslq	%edx, %rax
	shlq	$6, %rax
	movq	(%rcx,%rax), %rdi
	cmpq	$-1, 80(%rdi)
	jne	.LBB36_23
# %bb.24:                               #   in Loop: Header=BB36_22 Depth=1
	movq	8(%rcx,%rax), %rdi
	cmpq	$-1, 80(%rdi)
	jne	.LBB36_23
# %bb.25:                               #   in Loop: Header=BB36_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%esi
	movl	%edx, databasesCron.rehash_db(%rip)
	addl	$1, %ebx
	cmpl	%r15d, %ebx
	jl	.LBB36_22
	jmp	.LBB36_26
.LBB36_23:
	movl	$1, %esi
	callq	dictRehashMilliseconds
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB36_26
.Lfunc_end36:
	.size	databasesCron, .Lfunc_end36-databasesCron
                                        # -- End function
	.globl	updateCachedTime        # -- Begin function updateCachedTime
	.p2align	4, 0x90
	.type	updateCachedTime,@function
updateCachedTime:                       # @updateCachedTime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2872(%rip)
	leaq	65480(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65480(%rbp), %rax # imm = 0xF4240
	addq	65488(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+2896(%rip)
	leaq	-56(%rbp), %rsi
	movl	$server+2872, %edi
	callq	localtime_r
	movl	-24(%rbp), %eax
	movl	%eax, server+2888(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	updateCachedTime, .Lfunc_end37-updateCachedTime
                                        # -- End function
	.globl	serverCron              # -- Begin function serverCron
	.p2align	4, 0x90
	.type	serverCron,@function
serverCron:                             # @serverCron
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movl	server+3136(%rip), %edi
	testl	%edi, %edi
	je	.LBB38_2
# %bb.1:
	callq	watchdogScheduleSignal
.LBB38_2:
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2872(%rip)
	leaq	65448(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65448(%rbp), %rax # imm = 0xF4240
	addq	65456(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2361183241434822607, %r14 # imm = 0x20C49BA5E353F7CF
	imulq	%r14
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+2896(%rip)
	leaq	-88(%rbp), %rsi
	movl	$server+2872, %edi
	callq	localtime_r
	movl	-56(%rbp), %eax
	movl	%eax, server+2888(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+36(%rip), %esi
	movl	%esi, server+40(%rip)
	cmpl	$0, server+32(%rip)
	je	.LBB38_7
# %bb.3:
	movq	server+512(%rip), %rax
	movq	40(%rax), %rcx
	.p2align	4, 0x90
.LBB38_4:                               # =>This Inner Loop Header: Depth=1
	movslq	%esi, %rdi
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
	cmpq	$201, %rax
	jb	.LBB38_7
# %bb.5:                                #   in Loop: Header=BB38_4 Depth=1
	leal	(%rsi,%rsi), %eax
	movl	%eax, server+40(%rip)
	cmpl	$251, %esi
	movl	%eax, %esi
	jl	.LBB38_4
# %bb.6:
	movl	$500, server+40(%rip)   # imm = 0x1F4
	movl	$500, %esi              # imm = 0x1F4
.LBB38_7:
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	%esi
	cmpl	$99, %eax
	jg	.LBB38_9
# %bb.8:
	movl	%eax, %ecx
	movl	server+116(%rip), %esi
	movl	$100, %eax
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB38_16
.LBB38_9:
	movq	server+1008(%rip), %r15
	leaq	65448(%rbp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65448(%rbp), %rax # imm = 0xF4240
	addq	65456(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r14
	movq	%rdx, %rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rcx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	subq	server+1272(%rip), %rcx
	jle	.LBB38_11
# %bb.10:
	movq	%r15, %rax
	subq	server+1280(%rip), %rax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	cqto
	idivq	%rcx
	movq	%rax, %rbx
.LBB38_11:
	movslq	server+1416(%rip), %rax
	movq	%rbx, server+1288(,%rax,8)
	leal	1(%rax), %ecx
	leal	16(%rax), %edx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %edx
	andl	$-16, %edx
	negl	%edx
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, server+1416(%rip)
	leaq	65448(%rbp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65448(%rbp), %rax # imm = 0xF4240
	addq	65456(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r14
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+1272(%rip)
	movq	%r15, server+1280(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1240(%rip), %r15
	leaq	65448(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65448(%rbp), %rax # imm = 0xF4240
	addq	65456(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r14
	movq	%rdx, %rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rcx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	subq	server+1424(%rip), %rcx
	jle	.LBB38_13
# %bb.12:
	movq	%r15, %rax
	subq	server+1432(%rip), %rax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	cqto
	idivq	%rcx
	movq	%rax, %rbx
.LBB38_13:
	movslq	server+1568(%rip), %rax
	movq	%rbx, server+1440(,%rax,8)
	leal	1(%rax), %ecx
	leal	16(%rax), %edx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %edx
	andl	$-16, %edx
	negl	%edx
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, server+1568(%rip)
	leaq	65448(%rbp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65448(%rbp), %rax # imm = 0xF4240
	addq	65456(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r14
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+1424(%rip)
	movq	%r15, server+1432(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1248(%rip), %r15
	leaq	65448(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65448(%rbp), %rax # imm = 0xF4240
	addq	65456(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r14
	movq	%rdx, %rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rcx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	subq	server+1576(%rip), %rcx
	jle	.LBB38_15
# %bb.14:
	movq	%r15, %rax
	subq	server+1584(%rip), %rax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	cqto
	idivq	%rcx
	movq	%rax, %rbx
.LBB38_15:
	movslq	server+1720(%rip), %rax
	movq	%rbx, server+1592(,%rax,8)
	leal	1(%rax), %ecx
	leal	16(%rax), %edx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %edx
	andl	$-16, %edx
	negl	%edx
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, server+1720(%rip)
	leaq	65448(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65448(%rbp), %rax # imm = 0xF4240
	addq	65456(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+1576(%rip)
	movq	%r15, server+1584(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB38_16:
	callq	getLRUClock
	movl	%eax, server+80(%rip)
	callq	zmalloc_used_memory
	cmpq	server+1112(%rip), %rax
	jbe	.LBB38_18
# %bb.17:
	callq	zmalloc_used_memory
	movq	%rax, server+1112(%rip)
.LBB38_18:
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	cmpl	$99, %eax
	jg	.LBB38_20
# %bb.19:
	movl	%eax, %ecx
	movl	server+116(%rip), %esi
	movl	$100, %eax
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB38_23
.LBB38_20:
	callq	zmalloc_get_rss
	movq	%rax, server+1208(%rip)
	callq	zmalloc_used_memory
	movq	%rax, server+1200(%rip)
	movl	$server+1216, %edi
	movl	$server+1224, %esi
	movl	$server+1232, %edx
	callq	zmalloc_get_allocator_info
	movq	server+1232(%rip), %rax
	testq	%rax, %rax
	je	.LBB38_24
# %bb.21:
	cmpq	$0, server+1224(%rip)
	je	.LBB38_25
.LBB38_22:
	cmpq	$0, server+1216(%rip)
	je	.LBB38_26
.LBB38_23:
	cmpl	$0, server+84(%rip)
	jne	.LBB38_27
	jmp	.LBB38_29
.LBB38_24:
	movq	server+2992(%rip), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	lua_gc
	movslq	%eax, %rcx
	shlq	$10, %rcx
	movq	server+1208(%rip), %rax
	subq	%rcx, %rax
	movq	%rax, server+1232(%rip)
	cmpq	$0, server+1224(%rip)
	jne	.LBB38_22
.LBB38_25:
	movq	%rax, server+1224(%rip)
	cmpq	$0, server+1216(%rip)
	jne	.LBB38_23
.LBB38_26:
	movq	server+1200(%rip), %rax
	movq	%rax, server+1216(%rip)
	cmpl	$0, server+84(%rip)
	je	.LBB38_29
.LBB38_27:
	xorl	%edi, %edi
	callq	prepareForShutdown
	testl	%eax, %eax
	je	.LBB38_98
# %bb.28:
	movl	$.L.str.248, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$0, server+84(%rip)
.LBB38_29:
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	movl	%eax, %ecx
	movl	server+116(%rip), %esi
	movl	$5000, %eax             # imm = 0x1388
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB38_35
# %bb.30:
	movl	server+1792(%rip), %eax
	testl	%eax, %eax
	jle	.LBB38_35
# %bb.31:                               # %.preheader
	movl	$8, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB38_33
	.p2align	4, 0x90
.LBB38_32:                              #   in Loop: Header=BB38_33 Depth=1
	addq	$1, %rbx
	movslq	%eax, %rcx
	addq	$64, %r14
	cmpq	%rcx, %rbx
	jge	.LBB38_35
.LBB38_33:                              # =>This Inner Loop Header: Depth=1
	movq	server+48(%rip), %rcx
	movq	-8(%rcx,%r14), %rdx
	movq	(%rcx,%r14), %rsi
	movq	72(%rdx), %rcx
	addq	40(%rdx), %rcx
	movq	72(%rsi), %r8
	addq	40(%rsi), %r8
	movq	%r8, %rsi
	orq	%rcx, %rsi
	je	.LBB38_32
# %bb.34:                               #   in Loop: Header=BB38_33 Depth=1
	movq	56(%rdx), %r9
	addq	24(%rdx), %r9
	movl	$.L.str.249, %esi
	movl	$1, %edi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	serverLog
	movl	server+1792(%rip), %eax
	jmp	.LBB38_32
.LBB38_35:
	cmpl	$0, server+164(%rip)
	jne	.LBB38_38
# %bb.36:
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	movl	%eax, %ecx
	movl	server+116(%rip), %esi
	movl	$5000, %eax             # imm = 0x1388
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB38_38
# %bb.37:
	movq	server+512(%rip), %rax
	movq	40(%rax), %rbx
	movq	server+536(%rip), %rax
	movq	40(%rax), %r14
	subq	%r14, %rbx
	callq	zmalloc_used_memory
	movl	$.L.str.250, %esi
	movl	$1, %edi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	serverLog
.LBB38_38:
	callq	clientsCron
	callq	databasesCron
	movl	server+2096(%rip), %eax
	movl	server+1940(%rip), %ecx
	movl	%ecx, %edx
	andl	%eax, %edx
	cmpl	$-1, %edx
	jne	.LBB38_41
# %bb.39:
	cmpl	$0, server+1936(%rip)
	je	.LBB38_41
# %bb.40:
	callq	rewriteAppendOnlyFileBackground
	movl	server+2096(%rip), %eax
	movl	server+1940(%rip), %ecx
.LBB38_41:
	andl	%eax, %ecx
	cmpl	$-1, %ecx
	jne	.LBB38_43
# %bb.42:
	callq	ldbPendingChildren
	testl	%eax, %eax
	je	.LBB38_55
.LBB38_43:
	xorl	%r14d, %r14d
	leaq	-88(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	wait3
	testl	%eax, %eax
	je	.LBB38_73
# %bb.44:
	movl	%eax, %ebx
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	andb	$127, %cl
	je	.LBB38_47
# %bb.45:
	cmpb	$127, %cl
	je	.LBB38_47
# %bb.46:
	movl	%eax, %r14d
	andl	$127, %r14d
.LBB38_47:
	cmpl	$-1, %ebx
	je	.LBB38_51
# %bb.48:
	movzbl	%ah, %eax
	cmpl	server+2096(%rip), %ebx
	jne	.LBB38_52
# %bb.49:
	movl	%eax, %ebx
	movl	%eax, %edi
	movl	%r14d, %esi
	callq	backgroundSaveDoneHandler
	orl	%r14d, %ebx
	jne	.LBB38_69
	jmp	.LBB38_50
.LBB38_51:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	server+2096(%rip), %ecx
	movl	server+1940(%rip), %r8d
	movl	$.L.str.251, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB38_69
.LBB38_52:
	cmpl	server+1940(%rip), %ebx
	jne	.LBB38_67
# %bb.53:
	movl	%eax, %ebx
	movl	%eax, %edi
	movl	%r14d, %esi
	callq	backgroundRewriteDoneHandler
	orl	%r14d, %ebx
	jne	.LBB38_69
.LBB38_50:
	callq	receiveChildInfo
	jmp	.LBB38_69
.LBB38_55:
	movslq	server+2112(%rip), %r10
	testq	%r10, %r10
	jle	.LBB38_61
# %bb.56:
	movq	server+2104(%rip), %rsi
	movq	server+2080(%rip), %rdi
	movq	server+2872(%rip), %rcx
	movq	%rcx, %r8
	subq	server+2136(%rip), %r8
	subq	server+2144(%rip), %rcx
	cmpq	$6, %rcx
	setl	%cl
	cmpl	$0, server+2176(%rip)
	setne	%r9b
	andb	%cl, %r9b
	addq	$8, %rsi
	xorl	%ebx, %ebx
	jmp	.LBB38_58
	.p2align	4, 0x90
.LBB38_57:                              #   in Loop: Header=BB38_58 Depth=1
	addq	$1, %rbx
	addq	$16, %rsi
	cmpq	%r10, %rbx
	jge	.LBB38_61
.LBB38_58:                              # =>This Inner Loop Header: Depth=1
	movslq	(%rsi), %rdx
	cmpq	%rdx, %rdi
	jl	.LBB38_57
# %bb.59:                               #   in Loop: Header=BB38_58 Depth=1
	movq	-8(%rsi), %rcx
	cmpq	%rcx, %r8
	setle	%al
	orb	%r9b, %al
	jne	.LBB38_57
# %bb.60:
	movl	$.L.str.253, %esi
	movl	$2, %edi
                                        # kill: def $edx killed $edx killed $rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	serverLog
	leaq	-88(%rbp), %rdi
	callq	rdbPopulateSaveInfo
	movq	server+2120(%rip), %rdi
	movq	%rax, %rsi
	callq	rdbSaveBackground
.LBB38_61:
	movslq	server+1900(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB38_73
# %bb.62:
	cmpl	$1, server+1880(%rip)
	jne	.LBB38_73
# %bb.63:
	movl	server+1940(%rip), %eax
	andl	server+2096(%rip), %eax
	cmpl	$-1, %eax
	jne	.LBB38_73
# %bb.64:
	movq	server+1920(%rip), %rax
	cmpq	server+1904(%rip), %rax
	jle	.LBB38_73
# %bb.65:
	movq	server+1912(%rip), %rdx
	testq	%rdx, %rdx
	movl	$1, %esi
	cmovneq	%rdx, %rsi
	imulq	$100, %rax, %rax
	cqto
	idivq	%rsi
	addq	$-100, %rax
	cmpq	%rcx, %rax
	jl	.LBB38_73
# %bb.66:
	movl	$.L.str.254, %esi
	movl	$2, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	callq	rewriteAppendOnlyFileBackground
	jmp	.LBB38_73
.LBB38_67:
	movl	%ebx, %edi
	callq	ldbRemoveChild
	testl	%eax, %eax
	jne	.LBB38_69
# %bb.68:
	movslq	%ebx, %rdx
	movl	$.L.str.252, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB38_69:
	movl	server+1940(%rip), %eax
	andl	server+2096(%rip), %eax
	cmpl	$-1, %eax
	je	.LBB38_71
# %bb.70:
	callq	dictDisableResize
	jmp	.LBB38_72
.LBB38_71:
	callq	dictEnableResize
.LBB38_72:
	movl	$42, __A_VARIABLE(%rip)
	callq	closeChildInfoPipe
.LBB38_73:
	cmpq	$0, server+1968(%rip)
	je	.LBB38_75
# %bb.74:
	xorl	%edi, %edi
	callq	flushAppendOnlyFile
.LBB38_75:
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	cmpl	$999, %eax              # imm = 0x3E7
	jg	.LBB38_77
# %bb.76:
	movl	%eax, %ecx
	movl	server+116(%rip), %esi
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB38_79
.LBB38_77:
	cmpl	$-1, server+2024(%rip)
	jne	.LBB38_79
# %bb.78:
	xorl	%edi, %edi
	callq	flushAppendOnlyFile
.LBB38_79:
	callq	freeClientsInAsyncFreeQueue
	callq	clientsArePaused
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	cmpl	$999, %eax              # imm = 0x3E7
	jg	.LBB38_82
# %bb.80:
	movl	%eax, %ecx
	movl	server+116(%rip), %esi
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %edi
	movl	%esi, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	je	.LBB38_82
# %bb.81:
	cmpl	$99, %ecx
	jle	.LBB38_83
	jmp	.LBB38_84
.LBB38_82:
	callq	replicationCron
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	movl	%eax, %ecx
	cmpl	$99, %ecx
	jg	.LBB38_84
.LBB38_83:
	movl	server+116(%rip), %esi
	movl	$100, %eax
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB38_86
.LBB38_84:
	cmpl	$0, server+2924(%rip)
	je	.LBB38_86
# %bb.85:
	callq	clusterCron
.LBB38_86:
	cmpl	$0, server+164(%rip)
	je	.LBB38_88
# %bb.87:
	callq	sentinelTimer
.LBB38_88:
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	cmpl	$999, %eax              # imm = 0x3E7
	jg	.LBB38_90
# %bb.89:
	movl	%eax, %ecx
	movl	server+116(%rip), %esi
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB38_91
.LBB38_90:
	callq	migrateCloseTimedoutSockets
.LBB38_91:
	movl	server+1940(%rip), %eax
	andl	server+2096(%rip), %eax
	cmpl	$-1, %eax
	jne	.LBB38_97
# %bb.92:
	cmpl	$0, server+2168(%rip)
	je	.LBB38_97
# %bb.93:
	movq	server+2872(%rip), %rax
	subq	server+2144(%rip), %rax
	cmpq	$5, %rax
	jg	.LBB38_95
# %bb.94:
	cmpl	$0, server+2176(%rip)
	jne	.LBB38_97
.LBB38_95:
	leaq	-88(%rbp), %rdi
	callq	rdbPopulateSaveInfo
	movq	server+2120(%rip), %rdi
	movq	%rax, %rsi
	callq	rdbSaveBackground
	testl	%eax, %eax
	jne	.LBB38_97
# %bb.96:
	movl	$0, server+2168(%rip)
.LBB38_97:
	addl	$1, server+116(%rip)
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%edx, %edx
	idivl	server+40(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_98:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end38:
	.size	serverCron, .Lfunc_end38-serverCron
                                        # -- End function
	.globl	beforeSleep             # -- Begin function beforeSleep
	.p2align	4, 0x90
	.type	beforeSleep,@function
beforeSleep:                            # @beforeSleep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	cmpl	$0, server+2924(%rip)
	je	.LBB39_2
# %bb.1:
	callq	clusterBeforeSleep
.LBB39_2:
	cmpl	$0, server+1740(%rip)
	je	.LBB39_5
# %bb.3:
	cmpq	$0, server+2464(%rip)
	jne	.LBB39_5
# %bb.4:
	movl	$1, %edi
	callq	activeExpireCycle
.LBB39_5:
	cmpl	$0, server+2696(%rip)
	je	.LBB39_7
# %bb.6:
	movl	$.L.str.255, %edi
	movl	$8, %esi
	callq	createStringObject
	movq	%rax, -32(%rbp)
	movl	$.L.str.256, %edi
	movl	$6, %esi
	callq	createStringObject
	movq	%rax, -24(%rbp)
	movl	$.L.str.257, %edi
	movl	$1, %esi
	callq	createStringObject
	movq	%rax, -16(%rbp)
	movq	server+536(%rip), %rdi
	movl	server+2368(%rip), %esi
	leaq	-32(%rbp), %rdx
	movl	$3, %ecx
	callq	replicationFeedSlaves
	movq	-32(%rbp), %rdi
	callq	decrRefCount
	movq	-24(%rbp), %rdi
	callq	decrRefCount
	movq	-16(%rbp), %rdi
	callq	decrRefCount
	movl	$0, server+2696(%rip)
.LBB39_7:
	movq	server+2688(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB39_9
# %bb.8:
	callq	processClientsWaitingReplicas
.LBB39_9:
	callq	moduleHandleBlockedClients
	movq	server+2768(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB39_11
# %bb.10:
	callq	processUnblockedClients
.LBB39_11:
	xorl	%edi, %edi
	callq	flushAppendOnlyFile
	callq	handleClientsWithPendingWrites
	callq	moduleCount
	testq	%rax, %rax
	je	.LBB39_13
# %bb.12:
	callq	moduleReleaseGIL
.LBB39_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	beforeSleep, .Lfunc_end39-beforeSleep
                                        # -- End function
	.globl	afterSleep              # -- Begin function afterSleep
	.p2align	4, 0x90
	.type	afterSleep,@function
afterSleep:                             # @afterSleep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	moduleCount
	testq	%rax, %rax
	je	.LBB40_2
# %bb.1:
	callq	moduleAcquireGIL
.LBB40_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end40:
	.size	afterSleep, .Lfunc_end40-afterSleep
                                        # -- End function
	.globl	createSharedObjects     # -- Begin function createSharedObjects
	.p2align	4, 0x90
	.type	createSharedObjects,@function
createSharedObjects:                    # @createSharedObjects
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movl	$.L.str.258, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared(%rip)
	movl	$.L.str.259, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+8(%rip)
	movl	$.L.str.260, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+16(%rip)
	movl	$.L.str.261, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+24(%rip)
	movl	$.L.str.262, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+32(%rip)
	movl	$.L.str.263, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+40(%rip)
	movl	$.L.str.264, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+48(%rip)
	movl	$.L.str.265, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+80(%rip)
	movl	$.L.str.266, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+88(%rip)
	movl	$.L.str.267, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+104(%rip)
	movl	$.L.str.268, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+56(%rip)
	movl	$.L.str.269, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+96(%rip)
	movl	$.L.str.270, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+360(%rip)
	movl	$.L.str.271, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+112(%rip)
	movl	$.L.str.272, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+120(%rip)
	movl	$.L.str.273, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+128(%rip)
	movl	$.L.str.274, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+136(%rip)
	movl	$.L.str.275, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+144(%rip)
	movl	$.L.str.276, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+152(%rip)
	movl	$.L.str.277, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+160(%rip)
	movl	$.L.str.278, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+168(%rip)
	movl	$.L.str.279, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+184(%rip)
	movl	$.L.str.280, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+176(%rip)
	movl	$.L.str.281, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+192(%rip)
	movl	$.L.str.282, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+208(%rip)
	movl	$.L.str.283, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+232(%rip)
	movl	$.L.str.284, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+200(%rip)
	movl	$.L.str.285, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+216(%rip)
	movl	$.L.str.286, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+224(%rip)
	movl	$.L.str.287, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+64(%rip)
	movl	$.L.str.288, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+72(%rip)
	movl	$.L.str.289, %edi
	callq	sdsnew
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+240(%rip)
	leaq	-96(%rbp), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	movl	$64, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	ll2string
	movl	%eax, %r15d
	callq	sdsempty
	movl	$.L.str.290, %esi
	movq	%rax, %rdi
	movl	%r15d, %edx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+368(,%rbx,8)
	addq	$1, %rbx
	cmpq	$10, %rbx
	jne	.LBB41_1
# %bb.2:
	movl	$.L.str.291, %edi
	movl	$13, %esi
	callq	createStringObject
	movq	%rax, shared+248(%rip)
	movl	$.L.str.292, %edi
	movl	$14, %esi
	callq	createStringObject
	movq	%rax, shared+256(%rip)
	movl	$.L.str.293, %edi
	movl	$15, %esi
	callq	createStringObject
	movq	%rax, shared+264(%rip)
	movl	$.L.str.294, %edi
	movl	$18, %esi
	callq	createStringObject
	movq	%rax, shared+272(%rip)
	movl	$.L.str.295, %edi
	movl	$17, %esi
	callq	createStringObject
	movq	%rax, shared+280(%rip)
	movl	$.L.str.296, %edi
	movl	$19, %esi
	callq	createStringObject
	movq	%rax, shared+288(%rip)
	movl	$.L.str.297, %edi
	movl	$3, %esi
	callq	createStringObject
	movq	%rax, shared+296(%rip)
	movl	$.L.str.298, %edi
	movl	$6, %esi
	callq	createStringObject
	movq	%rax, shared+304(%rip)
	movl	$.L.str.299, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, shared+312(%rip)
	movl	$.L.str.300, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, shared+320(%rip)
	movl	$.L.str.301, %edi
	movl	$5, %esi
	callq	createStringObject
	movq	%rax, shared+328(%rip)
	movl	$.L.str.302, %edi
	movl	$9, %esi
	callq	createStringObject
	movq	%rax, shared+336(%rip)
	movl	$.L.str.303, %edi
	movl	$7, %esi
	callq	createStringObject
	movq	%rax, shared+344(%rip)
	movl	$.L.str.304, %edi
	movl	$7, %esi
	callq	createStringObject
	movq	%rax, shared+352(%rip)
	xorl	%ebx, %ebx
	movl	$-241, %r14d
	.p2align	4, 0x90
.LBB41_3:                               # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	createObject
	movq	%rax, %rdi
	callq	makeObjectShared
	movq	%rax, shared+448(,%rbx,8)
	movl	(%rax), %ecx
	andl	%r14d, %ecx
	orl	$16, %ecx
	movl	%ecx, (%rax)
	addq	$1, %rbx
	cmpq	$10000, %rbx            # imm = 0x2710
	jne	.LBB41_3
# %bb.4:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB41_5:                               # =>This Inner Loop Header: Depth=1
	callq	sdsempty
	movl	$.L.str.305, %esi
	movq	%rax, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+80448(,%rbx,8)
	callq	sdsempty
	movl	$.L.str.306, %esi
	movq	%rax, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, shared+80704(,%rbx,8)
	addq	$1, %rbx
	cmpq	$32, %rbx
	jne	.LBB41_5
# %bb.6:
	movl	$.L.str.307, %edi
	callq	sdsnew
	movq	%rax, shared+80960(%rip)
	movl	$.L.str.308, %edi
	callq	sdsnew
	movq	%rax, shared+80968(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	createSharedObjects, .Lfunc_end41-createSharedObjects
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function initServerConfig
.LCPI42_0:
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	300                     # 0x12c
	.long	1                       # 0x1
.LCPI42_1:
	.long	10                      # 0xa
	.long	100                     # 0x64
	.long	5                       # 0x5
	.long	75                      # 0x4b
.LCPI42_2:
	.quad	1000                    # 0x3e8
	.quad	1073741824              # 0x40000000
.LCPI42_3:
	.long	1792                    # 0x700
	.long	5                       # 0x5
	.long	10                      # 0xa
	.long	1                       # 0x1
.LCPI42_4:
	.quad	512                     # 0x200
	.quad	64                      # 0x40
.LCPI42_5:
	.quad	512                     # 0x200
	.quad	128                     # 0x80
.LCPI42_6:
	.quad	64                      # 0x40
	.quad	3000                    # 0xbb8
.LCPI42_7:
	.quad	4096                    # 0x1000
	.quad	100                     # 0x64
.LCPI42_8:
	.long	1                       # 0x1
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	0                       # 0x0
.LCPI42_9:
	.quad	10000                   # 0x2710
	.quad	128                     # 0x80
.LCPI42_10:
	.zero	16
	.text
	.globl	initServerConfig
	.p2align	4, 0x90
	.type	initServerConfig,@function
initServerConfig:                       # @initServerConfig
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movl	$server+3160, %edi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	$server+3152, %edi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	$server+3168, %edi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2872(%rip)
	leaq	65464(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65464(%rbp), %rax # imm = 0xF4240
	addq	65472(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+2896(%rip)
	leaq	-72(%rbp), %rsi
	movl	$server+2872, %edi
	callq	localtime_r
	movl	-40(%rbp), %eax
	movl	%eax, server+2888(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$server+120, %edi
	movl	$40, %esi
	callq	getRandomHexChars
	movb	$0, server+160(%rip)
	callq	changeReplicationId
	callq	clearReplicationId2
	callq	getTimeZone
	movq	%rax, server+2880(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+8(%rip)
	movl	$10, server+40(%rip)
	movabsq	$42949672961, %rax      # imm = 0xA00000001
	movq	%rax, server+32(%rip)
	movl	$64, server+112(%rip)
	movabsq	$2194728294635, %rax    # imm = 0x1FF000018EB
	movq	%rax, server+216(%rip)
	movl	$0, server+352(%rip)
	movq	$0, server+360(%rip)
	movl	$0, server+368(%rip)
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	movq	%rax, server+436(%rip)
	movl	$1, server+856(%rip)
	movl	$16, server+1792(%rip)
	movaps	.LCPI42_0(%rip), %xmm0  # xmm0 = [2,0,300,1]
	movups	%xmm0, server+1728(%rip)
	movl	$0, server+1744(%rip)
	movq	$104857600, server+1752(%rip) # imm = 0x6400000
	movaps	.LCPI42_1(%rip), %xmm0  # xmm0 = [10,100,5,75]
	movups	%xmm0, server+1760(%rip)
	movq	$536870912, server+2728(%rip) # imm = 0x20000000
	movaps	.LCPI42_2(%rip), %xmm0  # xmm0 = [1000,1073741824]
	movups	%xmm0, server+1776(%rip)
	movq	$0, server+2104(%rip)
	movl	$0, server+860(%rip)
	movl	$.L.str.309, %edi
	callq	zstrdup
	movq	%rax, server+2240(%rip)
	movl	$0, server+2248(%rip)
	movl	$.L.str.310, %edi
	callq	zstrdup
	movq	%rax, server+2256(%rip)
	movl	$128, server+2264(%rip)
	movl	$0, server+1804(%rip)
	movq	$0, server+1796(%rip)
	movabsq	$8589934592, %rax       # imm = 0x200000000
	movq	%rax, server+1880(%rip)
	movabsq	$429496729600, %rax     # imm = 0x6400000000
	movq	%rax, server+1896(%rip)
	movl	$67108864, %eax         # imm = 0x4000000
	movq	%rax, %xmm0
	movdqu	%xmm0, server+1904(%rip)
	movl	$0, server+1936(%rip)
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+1976(%rip)
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, server+1984(%rip)
	movl	$0, server+2000(%rip)
	movq	$0, server+2008(%rip)
	movq	$-1, server+1960(%rip)
	movq	$0, server+1968(%rip)
	movabsq	$4294967297, %rbx       # imm = 0x100000001
	movq	%rbx, server+2016(%rip)
	movq	%rbx, server+2032(%rip)
	movq	$0, server+104(%rip)
	movl	$.L.str.311, %edi
	callq	zstrdup
	movq	%rax, server+2120(%rip)
	movl	$.L.str.312, %edi
	callq	zstrdup
	movq	%rax, server+1888(%rip)
	movq	$0, server+96(%rip)
	movq	%rbx, server+2128(%rip)
	movl	$1, server+2180(%rip)
	movq	$1, server+88(%rip)
	movl	$0, server+2920(%rip)
	movl	$10000, server+2700(%rip) # imm = 0x2710
	movl	$0, server+2736(%rip)
	movl	$server+2740, %edi
	movl	$24, %edx
	xorl	%esi, %esi
	callq	memset
	movq	$0, server+2704(%rip)
	movaps	.LCPI42_3(%rip), %xmm0  # xmm0 = [1792,5,10,1]
	movups	%xmm0, server+2712(%rip)
	movaps	.LCPI42_4(%rip), %xmm0  # xmm0 = [512,64]
	movups	%xmm0, server+2800(%rip)
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	movq	%rax, server+2864(%rip)
	movaps	.LCPI42_5(%rip), %xmm0  # xmm0 = [512,128]
	movups	%xmm0, server+2816(%rip)
	movaps	.LCPI42_6(%rip), %xmm0  # xmm0 = [64,3000]
	movups	%xmm0, server+2832(%rip)
	movaps	.LCPI42_7(%rip), %xmm0  # xmm0 = [4096,100]
	movups	%xmm0, server+2848(%rip)
	movl	$0, server+84(%rip)
	movl	$0, server+2924(%rip)
	movq	$15000, server+2928(%rip) # imm = 0x3A98
	movaps	.LCPI42_8(%rip), %xmm0  # xmm0 = [1,10,1,0]
	movups	%xmm0, server+2952(%rip)
	movl	$.L.str.313, %edi
	callq	zstrdup
	movq	%rax, server+2936(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+2968(%rip)
	movl	$0, server+2984(%rip)
	movl	$migrateCacheDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+840(%rip)
	movq	$1, server+848(%rip)
	movq	$2097152, server+888(%rip) # imm = 0x200000
	movq	$0, server+3080(%rip)
	movl	$0, server+3088(%rip)
	movl	$0, server+176(%rip)
	movq	$5000, server+3032(%rip) # imm = 0x1388
	callq	getLRUClock
	movl	%eax, server+80(%rip)
	callq	resetServerSaveParams
	movl	$3600, %edi             # imm = 0xE10
	movl	$1, %esi
	callq	appendServerSaveParams
	movl	$300, %edi              # imm = 0x12C
	movl	$100, %esi
	callq	appendServerSaveParams
	movl	$60, %edi
	movl	$10000, %esi            # imm = 0x2710
	callq	appendServerSaveParams
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+2456(%rip)
	movabsq	$257698044139, %rax     # imm = 0x3C000018EB
	movq	%rax, server+2472(%rip)
	movups	%xmm0, server+2480(%rip)
	xorps	%xmm1, %xmm1
	movq	$-1, server+2648(%rip)
	movq	$5, server+2496(%rip)
	movq	%rbx, server+2552(%rip)
	movl	$1, server+2560(%rip)
	movl	$0, server+2656(%rip)
	movq	$0, server+2568(%rip)
	movl	$0, server+2576(%rip)
	movabsq	$21474836480, %rax      # imm = 0x500000000
	movq	%rax, server+2444(%rip)
	movl	$10, server+2372(%rip)
	movabsq	$42949672960, %rax      # imm = 0xA00000000
	movq	%rax, server+2432(%rip)
	movq	$100, server+2580(%rip)
	movq	$0, server+2592(%rip)
	movq	$0, server+2352(%rip)
	movq	$0, server+2376(%rip)
	movl	$1048576, %eax          # imm = 0x100000
	movq	%rax, %xmm0
	movdqu	%xmm0, server+2384(%rip)
	movups	%xmm1, server+2400(%rip)
	movq	$3600, server+2416(%rip) # imm = 0xE10
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2424(%rip)
	movaps	clientBufferLimitsDefaults(%rip), %xmm0
	movups	%xmm0, server+1808(%rip)
	movq	clientBufferLimitsDefaults+16(%rip), %rax
	movq	%rax, server+1824(%rip)
	movups	clientBufferLimitsDefaults+24(%rip), %xmm0
	movups	%xmm0, server+1832(%rip)
	movq	clientBufferLimitsDefaults+40(%rip), %rax
	movq	%rax, server+1848(%rip)
	movaps	clientBufferLimitsDefaults+48(%rip), %xmm0
	movups	%xmm0, server+1856(%rip)
	movq	clientBufferLimitsDefaults+64(%rip), %rax
	movq	%rax, server+1872(%rip)
	movq	$0, R_Zero(%rip)
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, R_PosInf(%rip)
	movabsq	$-4503599627370496, %rax # imm = 0xFFF0000000000000
	movq	%rax, R_NegInf(%rip)
	movabsq	$9221120237041090560, %rax # imm = 0x7FF8000000000000
	movq	%rax, R_Nan(%rip)
	movl	$commandTableDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+56(%rip)
	movl	$commandTableDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+64(%rip)
	callq	populateCommandTable
	movl	$.L.str.12, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+896(%rip)
	movl	$.L.str.139, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+904(%rip)
	movl	$.L.str.28, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+912(%rip)
	movl	$.L.str.33, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+920(%rip)
	movl	$.L.str.32, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+928(%rip)
	movl	$.L.str.85, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+936(%rip)
	movl	$.L.str.86, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+944(%rip)
	movl	$.L.str.47, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+952(%rip)
	movl	$.L.str.141, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+960(%rip)
	movl	$.L.str.118, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+968(%rip)
	movl	$.L.str.120, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+976(%rip)
	movl	$.L.str.229, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+984(%rip)
	movl	$.L.str.225, %edi
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFetchValue
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, server+992(%rip)
	movaps	.LCPI42_9(%rip), %xmm0  # xmm0 = [10000,128]
	movups	%xmm0, server+1184(%rip)
	movq	$0, server+3096(%rip)
	movl	$.L.str.315, %eax
	movq	%rax, %xmm0
	movl	$.L.str.314, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, server+3112(%rip)
	movq	$0, server+3128(%rip)
	movl	$0, server+3136(%rip)
	movl	$1, server+3076(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end42:
	.size	initServerConfig, .Lfunc_end42-initServerConfig
                                        # -- End function
	.globl	populateCommandTable    # -- Begin function populateCommandTable
	.p2align	4, 0x90
	.type	populateCommandTable,@function
populateCommandTable:                   # @populateCommandTable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB43_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_4 Depth 2
	movq	%r12, %rax
	shlq	$4, %rax
	movq	redisCommandTable+24(%rax,%rax,4), %rcx
	movb	(%rcx), %bl
	testb	%bl, %bl
	je	.LBB43_20
# %bb.3:                                #   in Loop: Header=BB43_2 Depth=1
	leaq	(%r12,%r12,4), %rdx
	shlq	$4, %rdx
	leaq	redisCommandTable+32(%rdx), %rdx
	addq	$1, %rcx
	jmp	.LBB43_4
.LBB43_9:                               #   in Loop: Header=BB43_4 Depth=2
	movl	$64, %esi
	.p2align	4, 0x90
.LBB43_19:                              #   in Loop: Header=BB43_4 Depth=2
	orl	%esi, (%rdx)
	movzbl	(%rcx), %ebx
	addq	$1, %rcx
	testb	%bl, %bl
	je	.LBB43_20
.LBB43_4:                               #   Parent Loop BB43_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%bl, %edi
	addl	$-70, %edi
	cmpl	$49, %edi
	ja	.LBB43_17
# %bb.5:                                #   in Loop: Header=BB43_4 Depth=2
	movl	$1, %esi
	jmpq	*.LJTI43_0(,%rdi,8)
.LBB43_16:                              #   in Loop: Header=BB43_4 Depth=2
	movl	$8192, %esi             # imm = 0x2000
	jmp	.LBB43_19
.LBB43_13:                              #   in Loop: Header=BB43_4 Depth=2
	movl	$1024, %esi             # imm = 0x400
	jmp	.LBB43_19
.LBB43_8:                               #   in Loop: Header=BB43_4 Depth=2
	movl	$32, %esi
	jmp	.LBB43_19
.LBB43_12:                              #   in Loop: Header=BB43_4 Depth=2
	movl	$512, %esi              # imm = 0x200
	jmp	.LBB43_19
.LBB43_7:                               #   in Loop: Header=BB43_4 Depth=2
	movl	$16, %esi
	jmp	.LBB43_19
.LBB43_15:                              #   in Loop: Header=BB43_4 Depth=2
	movl	$4096, %esi             # imm = 0x1000
	jmp	.LBB43_19
.LBB43_14:                              #   in Loop: Header=BB43_4 Depth=2
	movl	$2048, %esi             # imm = 0x800
	jmp	.LBB43_19
.LBB43_11:                              #   in Loop: Header=BB43_4 Depth=2
	movl	$256, %esi              # imm = 0x100
	jmp	.LBB43_19
.LBB43_6:                               #   in Loop: Header=BB43_4 Depth=2
	movl	$4, %esi
	jmp	.LBB43_19
.LBB43_18:                              #   in Loop: Header=BB43_4 Depth=2
	movl	$2, %esi
	jmp	.LBB43_19
.LBB43_10:                              #   in Loop: Header=BB43_4 Depth=2
	movl	$128, %esi
	jmp	.LBB43_19
	.p2align	4, 0x90
.LBB43_20:                              #   in Loop: Header=BB43_2 Depth=1
	leaq	(%rax,%rax,4), %rbx
	addq	$redisCommandTable, %rbx
	movq	server+56(%rip), %r14
	movq	(%rbx), %rdi
	callq	sdsnew
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	%eax, %r14d
	movq	server+64(%rip), %r15
	movq	(%rbx), %rdi
	callq	sdsnew
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	orl	%r14d, %eax
	jne	.LBB43_21
# %bb.1:                                #   in Loop: Header=BB43_2 Depth=1
	addq	$1, %r12
	cmpq	$199, %r12
	jbe	.LBB43_2
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB43_17:
	movl	$.L.str.331, %edi
	movl	$.L.str.338, %edx
	movl	$2232, %esi             # imm = 0x8B8
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB43_21:
	movl	$.L.str.339, %edi
	movl	$.L.str.331, %esi
	movl	$2241, %edx             # imm = 0x8C1
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end43:
	.size	populateCommandTable, .Lfunc_end43-populateCommandTable
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI43_0:
	.quad	.LBB43_16
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_14
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_10
	.quad	.LBB43_11
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_7
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_15
	.quad	.LBB43_12
	.quad	.LBB43_6
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_8
	.quad	.LBB43_17
	.quad	.LBB43_18
	.quad	.LBB43_9
	.quad	.LBB43_13
	.quad	.LBB43_17
	.quad	.LBB43_17
	.quad	.LBB43_19
                                        # -- End function
	.text
	.globl	lookupCommandByCString  # -- Begin function lookupCommandByCString
	.p2align	4, 0x90
	.type	lookupCommandByCString,@function
lookupCommandByCString:                 # @lookupCommandByCString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	sdsnew
	movq	%rax, %rbx
	movq	server+56(%rip), %rdi
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
.Lfunc_end44:
	.size	lookupCommandByCString, .Lfunc_end44-lookupCommandByCString
                                        # -- End function
	.globl	restartServer           # -- Begin function restartServer
	.p2align	4, 0x90
	.type	restartServer,@function
restartServer:                          # @restartServer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movl	%edi, %ebx
	movq	server+16(%rip), %rdi
	movl	$1, %esi
	callq	access
	cmpl	$-1, %eax
	je	.LBB45_1
# %bb.3:
	testb	$2, %bl
	je	.LBB45_8
# %bb.4:
	movq	server+8(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB45_8
# %bb.5:
	callq	rewriteConfig
	cmpl	$-1, %eax
	je	.LBB45_6
.LBB45_8:
	testb	$1, %bl
	je	.LBB45_11
# %bb.9:
	xorl	%edi, %edi
	callq	prepareForShutdown
	testl	%eax, %eax
	je	.LBB45_11
# %bb.10:
	movl	$.L.str.318, %esi
.LBB45_7:
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB45_2
.LBB45_1:
	movq	server+16(%rip), %rdx
	movl	$.L.str.316, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB45_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_6:
	movl	$.L.str.317, %esi
	jmp	.LBB45_7
.LBB45_11:
	cmpl	$-1020, server+2700(%rip) # imm = 0xFC04
	jl	.LBB45_16
# %bb.12:                               # %.preheader
	movl	$2, %ebx
	movl	$1023, %r15d            # imm = 0x3FF
.LBB45_13:                              # =>This Inner Loop Header: Depth=1
	addl	$1, %ebx
	movl	%ebx, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	fcntl
	cmpl	$-1, %eax
	je	.LBB45_15
# %bb.14:                               #   in Loop: Header=BB45_13 Depth=1
	movl	%ebx, %edi
	callq	close
.LBB45_15:                              #   in Loop: Header=BB45_13 Depth=1
	movl	server+2700(%rip), %eax
	addl	%r15d, %eax
	cmpl	%eax, %ebx
	jl	.LBB45_13
.LBB45_16:
	testq	%r14, %r14
	je	.LBB45_18
# %bb.17:
	imulq	$1000, %r14, %rdi       # imm = 0x3E8
	callq	usleep
.LBB45_18:
	movq	server+24(%rip), %rax
	movq	(%rax), %rdi
	callq	zfree
	movq	server+16(%rip), %rdi
	callq	zstrdup
	movq	server+24(%rip), %rcx
	movq	%rax, (%rcx)
	movq	server+16(%rip), %rdi
	movq	server+24(%rip), %rsi
	movq	environ(%rip), %rdx
	callq	execve
	movl	$1, %edi
	callq	_exit
.Lfunc_end45:
	.size	restartServer, .Lfunc_end45-restartServer
                                        # -- End function
	.globl	adjustOpenFilesLimit    # -- Begin function adjustOpenFilesLimit
	.p2align	4, 0x90
	.type	adjustOpenFilesLimit,@function
adjustOpenFilesLimit:                   # @adjustOpenFilesLimit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	server+2700(%rip), %r14d
	leaq	-56(%rbp), %rsi
	movl	$7, %edi
	callq	getrlimit
	cmpl	$-1, %eax
	je	.LBB46_1
# %bb.2:
	addl	$32, %r14d
	movq	-56(%rbp), %r15
	cmpq	%r14, %r15
	jae	.LBB46_12
# %bb.3:
	movq	%r14, -56(%rbp)
	movq	%r14, -48(%rbp)
	leaq	-56(%rbp), %rsi
	movl	$7, %edi
	callq	setrlimit
	xorl	%r12d, %r12d
	movq	%r14, %rbx
	cmpl	$-1, %eax
	jne	.LBB46_8
# %bb.4:
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB46_6:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r13
	callq	__errno
	movl	(%rax), %r12d
	subq	$16, %rbx
	setb	%al
	cmovbq	%r13, %rbx
	cmpq	%r15, %rbx
	jbe	.LBB46_8
# %bb.7:                                #   in Loop: Header=BB46_6 Depth=1
	testb	%al, %al
	jne	.LBB46_8
# %bb.5:                                #   in Loop: Header=BB46_6 Depth=1
	movq	%rbx, -56(%rbp)
	movq	%rbx, -48(%rbp)
	movl	$7, %edi
	leaq	-56(%rbp), %rsi
	callq	setrlimit
	cmpl	$-1, %eax
	je	.LBB46_6
.LBB46_8:
	cmpq	%r15, %rbx
	cmovbq	%r15, %rbx
	cmpq	%r14, %rbx
	jae	.LBB46_11
# %bb.9:
	movl	server+2700(%rip), %edx
	leal	-32(%rbx), %eax
	movl	%eax, server+2700(%rip)
	cmpq	$32, %rbx
	jbe	.LBB46_13
# %bb.10:
	movl	$.L.str.321, %esi
	movl	$3, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	%r12d, %edi
	callq	strerror
	movl	$.L.str.322, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	server+2700(%rip), %ecx
	movl	$.L.str.323, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB46_12
.LBB46_1:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.319, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$992, server+2700(%rip) # imm = 0x3E0
	jmp	.LBB46_12
.LBB46_11:
	movl	$.L.str.324, %esi
	movl	$2, %edi
	movq	%r14, %rdx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	serverLog
.LBB46_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB46_13:
	movl	$.L.str.320, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end46:
	.size	adjustOpenFilesLimit, .Lfunc_end46-adjustOpenFilesLimit
                                        # -- End function
	.globl	checkTcpBacklogSettings # -- Begin function checkTcpBacklogSettings
	.p2align	4, 0x90
	.type	checkTcpBacklogSettings,@function
checkTcpBacklogSettings:                # @checkTcpBacklogSettings
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end47:
	.size	checkTcpBacklogSettings, .Lfunc_end47-checkTcpBacklogSettings
                                        # -- End function
	.globl	listenToPort            # -- Begin function listenToPort
	.p2align	4, 0x90
	.type	listenToPort,@function
listenToPort:                           # @listenToPort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r13
	movq	%rsi, %r14
	movl	%edi, %r15d
	cmpl	$0, server+352(%rip)
	jne	.LBB48_2
# %bb.1:
	movq	$0, server+224(%rip)
.LBB48_2:
	xorl	%ebx, %ebx
	jmp	.LBB48_3
	.p2align	4, 0x90
.LBB48_26:                              #   in Loop: Header=BB48_3 Depth=1
	xorl	%edi, %edi
	callq	anetNonBlock
	addl	$1, (%r13)
.LBB48_27:                              #   in Loop: Header=BB48_3 Depth=1
	addq	$1, %rbx
	movslq	server+352(%rip), %rax
	cmpq	%rax, %rbx
	jge	.LBB48_28
.LBB48_3:                               # =>This Inner Loop Header: Depth=1
	movq	server+224(,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB48_4
# %bb.14:                               #   in Loop: Header=BB48_3 Depth=1
	movl	$58, %esi
	callq	strchr
	movq	server+224(,%rbx,8), %rdx
	movl	server+220(%rip), %ecx
	movl	$server+584, %edi
	movl	%r15d, %esi
	testq	%rax, %rax
	je	.LBB48_16
# %bb.15:                               #   in Loop: Header=BB48_3 Depth=1
	callq	anetTcp6Server
	jmp	.LBB48_17
	.p2align	4, 0x90
.LBB48_4:                               #   in Loop: Header=BB48_3 Depth=1
	movl	server+220(%rip), %ecx
	movl	$server+584, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	anetTcp6Server
	movslq	(%r13), %rcx
	movl	%eax, (%r14,%rcx,4)
	movslq	(%r13), %rax
	movl	(%r14,%rax,4), %esi
	cmpl	$-1, %esi
	je	.LBB48_6
# %bb.5:                                #   in Loop: Header=BB48_3 Depth=1
	xorl	%edi, %edi
	callq	anetNonBlock
	movl	(%r13), %eax
	addl	$1, %eax
	movl	%eax, (%r13)
	jmp	.LBB48_8
	.p2align	4, 0x90
.LBB48_16:                              #   in Loop: Header=BB48_3 Depth=1
	callq	anetTcpServer
.LBB48_17:                              #   in Loop: Header=BB48_3 Depth=1
	movslq	(%r13), %rcx
	movl	%eax, (%r14,%rcx,4)
	jmp	.LBB48_18
.LBB48_6:                               #   in Loop: Header=BB48_3 Depth=1
	callq	__errno
	cmpl	$106, (%rax)
	jne	.LBB48_7
# %bb.30:                               #   in Loop: Header=BB48_3 Depth=1
	movl	$.L.str.325, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %r12d
	jmp	.LBB48_9
.LBB48_7:                               #   in Loop: Header=BB48_3 Depth=1
	movl	(%r13), %eax
.LBB48_8:                               #   in Loop: Header=BB48_3 Depth=1
	xorl	%r12d, %r12d
	cmpl	$1, %eax
	jne	.LBB48_13
.LBB48_9:                               #   in Loop: Header=BB48_3 Depth=1
	movl	server+220(%rip), %ecx
	movl	$server+584, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	anetTcpServer
	movslq	(%r13), %rcx
	movl	%eax, (%r14,%rcx,4)
	movslq	(%r13), %rax
	movl	(%r14,%rax,4), %esi
	cmpl	$-1, %esi
	je	.LBB48_11
# %bb.10:                               #   in Loop: Header=BB48_3 Depth=1
	xorl	%edi, %edi
	callq	anetNonBlock
	addl	$1, (%r13)
	jmp	.LBB48_13
.LBB48_11:                              #   in Loop: Header=BB48_3 Depth=1
	callq	__errno
	cmpl	$106, (%rax)
	jne	.LBB48_13
# %bb.12:                               #   in Loop: Header=BB48_3 Depth=1
	addl	$1, %r12d
	movl	$.L.str.326, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	.p2align	4, 0x90
.LBB48_13:                              #   in Loop: Header=BB48_3 Depth=1
	addl	(%r13), %r12d
	cmpl	$2, %r12d
	je	.LBB48_28
.LBB48_18:                              #   in Loop: Header=BB48_3 Depth=1
	movslq	(%r13), %rax
	movl	(%r14,%rax,4), %esi
	cmpl	$-1, %esi
	jne	.LBB48_26
# %bb.19:                               #   in Loop: Header=BB48_3 Depth=1
	movq	server+224(,%rbx,8), %rdx
	testq	%rdx, %rdx
	movl	$.L.str.257, %eax
	cmoveq	%rax, %rdx
	movl	$.L.str.327, %esi
	movl	$server+584, %r8d
	movl	$3, %edi
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	serverLog
	callq	__errno
	cmpl	$109, (%rax)
	je	.LBB48_27
# %bb.20:                               #   in Loop: Header=BB48_3 Depth=1
	callq	__errno
	cmpl	$123, (%rax)
	je	.LBB48_27
# %bb.21:                               #   in Loop: Header=BB48_3 Depth=1
	callq	__errno
	cmpl	$124, (%rax)
	je	.LBB48_27
# %bb.22:                               #   in Loop: Header=BB48_3 Depth=1
	callq	__errno
	cmpl	$96, (%rax)
	je	.LBB48_27
# %bb.23:                               #   in Loop: Header=BB48_3 Depth=1
	callq	__errno
	cmpl	$106, (%rax)
	je	.LBB48_27
# %bb.24:                               #   in Loop: Header=BB48_3 Depth=1
	callq	__errno
	cmpl	$125, (%rax)
	je	.LBB48_27
# %bb.25:
	movl	$-1, %eax
	jmp	.LBB48_29
.LBB48_28:
	xorl	%eax, %eax
.LBB48_29:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	listenToPort, .Lfunc_end48-listenToPort
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function resetServerStats
.LCPI49_0:
	.zero	16
	.text
	.globl	resetServerStats
	.p2align	4, 0x90
	.type	resetServerStats,@function
resetServerStats:                       # @resetServerStats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+1008(%rip)
	movups	%xmm0, server+1024(%rip)
	movups	%xmm0, server+1040(%rip)
	movups	%xmm0, server+1056(%rip)
	movups	%xmm0, server+1072(%rip)
	movups	%xmm0, server+1088(%rip)
	movq	$0, server+1104(%rip)
	movups	%xmm0, server+1120(%rip)
	movq	$0, server+1136(%rip)
	movups	%xmm0, server+1144(%rip)
	movq	$0, server+1160(%rip)
	leaq	65504(%rbp), %r14
	movl	$0, server+1416(%rip)
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65504(%rbp), %rax # imm = 0xF4240
	addq	65512(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$2361183241434822607, %rbx # imm = 0x20C49BA5E353F7CF
	imulq	%rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+1272(%rip)
	movq	$0, server+1280(%rip)
	movl	$server+1288, %edi
	movl	$128, %edx
	xorl	%esi, %esi
	callq	memset
	movl	$0, server+1568(%rip)
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65504(%rbp), %rax # imm = 0xF4240
	addq	65512(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	%rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+1424(%rip)
	movq	$0, server+1432(%rip)
	movl	$server+1440, %edi
	movl	$128, %edx
	xorl	%esi, %esi
	callq	memset
	movl	$0, server+1720(%rip)
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65504(%rbp), %rax # imm = 0xF4240
	addq	65512(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	%rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, server+1576(%rip)
	movq	$0, server+1584(%rip)
	movl	$server+1592, %edi
	movl	$128, %edx
	xorl	%esi, %esi
	callq	memset
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+1240(%rip)
	movq	$0, server+2008(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end49:
	.size	resetServerStats, .Lfunc_end49-resetServerStats
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function initServer
.LCPI50_0:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.text
	.globl	initServer
	.p2align	4, 0x90
	.type	initServer,@function
initServer:                             # @initServer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movl	$1, %esi
	movl	$1, %edi
	callq	signal
	movl	$1, %esi
	movl	$13, %edi
	callq	signal
	leaq	-40(%rbp), %rdi
	callq	sigemptyset
	movl	$0, -32(%rbp)
	movq	$sigShutdownHandler, -48(%rbp)
	leaq	-48(%rbp), %rbx
	movl	$15, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$2, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+2248(%rip)
	je	.LBB50_2
# %bb.1:
	movq	server+2256(%rip), %rdi
	movl	server+2264(%rip), %edx
	movl	$25, %esi
	callq	openlog
.LBB50_2:
	movl	server+36(%rip), %eax
	movl	%eax, server+40(%rip)
	callq	getpid
	movl	%eax, server(%rip)
	movq	$0, server+552(%rip)
	callq	listCreate
	movq	%rax, server+512(%rip)
	callq	raxNew
	movq	%rax, server+560(%rip)
	callq	listCreate
	movq	%rax, server+520(%rip)
	callq	listCreate
	movq	%rax, server+536(%rip)
	callq	listCreate
	movq	%rax, server+544(%rip)
	callq	listCreate
	movq	%rax, server+528(%rip)
	movl	$-1, server+2368(%rip)
	callq	listCreate
	movq	%rax, server+2768(%rip)
	callq	listCreate
	movq	%rax, server+2776(%rip)
	callq	listCreate
	movq	%rax, server+2688(%rip)
	movl	$0, server+2696(%rip)
	movl	$0, server+568(%rip)
	callq	zmalloc_get_memory_size
	movq	%rax, server+3144(%rip)
	callq	createSharedObjects
	callq	adjustOpenFilesLimit
	movl	server+2700(%rip), %edi
	subl	$-128, %edi
	callq	aeCreateEventLoop
	movq	%rax, server+72(%rip)
	testq	%rax, %rax
	je	.LBB50_3
# %bb.6:
	movslq	server+1792(%rip), %rdi
	shlq	$6, %rdi
	callq	zmalloc
	movq	%rax, server+48(%rip)
	movl	server+216(%rip), %edi
	testl	%edi, %edi
	je	.LBB50_8
# %bb.7:
	movl	$server+372, %esi
	movl	$server+436, %edx
	callq	listenToPort
	cmpl	$-1, %eax
	je	.LBB50_39
.LBB50_8:
	movq	server+360(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB50_12
# %bb.9:
	callq	unlink
	movq	server+360(%rip), %rsi
	movl	server+368(%rip), %edx
	movl	server+220(%rip), %ecx
	movl	$server+584, %edi
	callq	anetUnixServer
	movl	%eax, server+440(%rip)
	cmpl	$-1, %eax
	je	.LBB50_10
# %bb.11:
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	anetNonBlock
.LBB50_12:
	cmpl	$0, server+436(%rip)
	jne	.LBB50_14
# %bb.13:
	cmpl	$0, server+440(%rip)
	js	.LBB50_40
.LBB50_14:
	cmpl	$0, server+1792(%rip)
	jle	.LBB50_17
# %bb.15:                               # %.preheader1
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB50_16:                              # =>This Inner Loop Header: Depth=1
	movl	$dbDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	server+48(%rip), %rcx
	movq	%rax, (%rcx,%rbx)
	movl	$keyptrDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	server+48(%rip), %rcx
	movq	%rax, 8(%rcx,%rbx)
	movl	$keylistDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	server+48(%rip), %rcx
	movq	%rax, 16(%rcx,%rbx)
	movl	$objectKeyPointerValueDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	server+48(%rip), %rcx
	movq	%rax, 24(%rcx,%rbx)
	movl	$keylistDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	server+48(%rip), %rcx
	movq	%rax, 32(%rcx,%rbx)
	movl	%r14d, 40(%rcx,%rbx)
	movq	$0, 48(%rcx,%rbx)
	callq	listCreate
	movq	server+48(%rip), %rcx
	movq	%rax, 56(%rcx,%rbx)
	addq	$1, %r14
	movslq	server+1792(%rip), %rax
	addq	$64, %rbx
	cmpq	%rax, %r14
	jl	.LBB50_16
.LBB50_17:
	callq	evictionPoolAlloc
	movl	$keylistDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+2904(%rip)
	callq	listCreate
	movq	%rax, server+2912(%rip)
	movq	$freePubsubPattern, 24(%rax)
	movq	$listMatchPubsubPattern, 32(%rax)
	movl	$0, server+116(%rip)
	movl	$-1, server+2096(%rip)
	movl	$-1, server+1940(%rip)
	movq	$0, server+2168(%rip)
	movq	$-1, server+2192(%rip)
	movq	$0, server+2216(%rip)
	callq	aofRewriteBufferReset
	callq	sdsempty
	movq	%rax, server+1952(%rip)
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2136(%rip)
	movaps	.LCPI50_0(%rip), %xmm0  # xmm0 = [0,0,0,0,0,0,0,0,255,255,255,255,255,255,255,255]
	movups	%xmm0, server+2144(%rip)
	movq	$-1, server+2160(%rip)
	movq	$0, server+2080(%rip)
	callq	resetServerStats
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+1000(%rip)
	movq	$0, server+1112(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+1256(%rip)
	movups	%xmm0, server+1200(%rip)
	movups	%xmm0, server+1216(%rip)
	movq	$0, server+1232(%rip)
	movl	$0, server+2176(%rip)
	movq	$0, server+2024(%rip)
	movl	$0, server+2440(%rip)
	movq	server+72(%rip), %rdi
	movl	$1, %esi
	movl	$serverCron, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	aeCreateTimeEvent
	cmpq	$-1, %rax
	je	.LBB50_20
# %bb.18:
	cmpl	$0, server+436(%rip)
	jle	.LBB50_25
# %bb.19:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB50_23:                              # =>This Inner Loop Header: Depth=1
	movq	server+72(%rip), %rdi
	movl	server+372(,%rbx,4), %esi
	movl	$acceptTcpHandler, %ecx
	movl	$1, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	je	.LBB50_24
# %bb.22:                               #   in Loop: Header=BB50_23 Depth=1
	addq	$1, %rbx
	movslq	server+436(%rip), %rax
	cmpq	%rax, %rbx
	jl	.LBB50_23
.LBB50_25:
	movl	server+440(%rip), %esi
	testl	%esi, %esi
	jle	.LBB50_28
# %bb.26:
	movq	server+72(%rip), %rdi
	movl	$acceptUnixHandler, %ecx
	movl	$1, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	je	.LBB50_27
.LBB50_28:
	movq	server+72(%rip), %rdi
	movl	server+208(%rip), %esi
	movl	$moduleBlockedClientPipeReadable, %ecx
	movl	$1, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	je	.LBB50_29
# %bb.30:
	cmpl	$1, server+1880(%rip)
	jne	.LBB50_33
# %bb.31:
	movq	server+1888(%rip), %rdi
	movl	$521, %esi              # imm = 0x209
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, server+1960(%rip)
	cmpl	$-1, %eax
	je	.LBB50_32
.LBB50_33:
	cmpl	$32, server+112(%rip)
	jne	.LBB50_36
# %bb.34:
	cmpq	$0, server+2704(%rip)
	jne	.LBB50_36
# %bb.35:
	movl	$.L.str.337, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$3221225472, %eax       # imm = 0xC0000000
	movq	%rax, server+2704(%rip)
	movl	$1792, server+2712(%rip) # imm = 0x700
.LBB50_36:
	cmpl	$0, server+2924(%rip)
	je	.LBB50_38
# %bb.37:
	callq	clusterInit
.LBB50_38:
	callq	replicationScriptCacheInit
	movl	$1, %edi
	callq	scriptingInit
	callq	slowlogInit
	callq	latencyMonitorInit
	callq	bioInit
	callq	zmalloc_used_memory
	movq	%rax, server+168(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB50_24:
	movl	$.L.str.331, %edi
	movl	$.L.str.333, %edx
	movl	$2160, %esi             # imm = 0x870
.LBB50_21:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB50_3:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.328, %esi
	jmp	.LBB50_4
.LBB50_40:
	movl	$.L.str.330, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB50_20:
	movl	$.L.str.331, %edi
	movl	$.L.str.332, %edx
	movl	$2149, %esi             # imm = 0x865
	jmp	.LBB50_21
.LBB50_29:
	movl	$.L.str.331, %edi
	movl	$.L.str.335, %edx
	movl	$2173, %esi             # imm = 0x87D
	jmp	.LBB50_21
.LBB50_39:
	movl	$1, %edi
	callq	exit
.LBB50_10:
	movl	$.L.str.329, %esi
	movl	$server+584, %edx
	movl	$3, %edi
	jmp	.LBB50_5
.LBB50_27:
	movl	$.L.str.331, %edi
	movl	$.L.str.334, %edx
	movl	$2164, %esi             # imm = 0x874
	jmp	.LBB50_21
.LBB50_32:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.336, %esi
.LBB50_4:
	movl	$3, %edi
	movq	%rax, %rdx
.LBB50_5:
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end50:
	.size	initServer, .Lfunc_end50-initServer
                                        # -- End function
	.globl	setupSignalHandlers     # -- Begin function setupSignalHandlers
	.p2align	4, 0x90
	.type	setupSignalHandlers,@function
setupSignalHandlers:                    # @setupSignalHandlers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	leaq	-32(%rbp), %rdi
	callq	sigemptyset
	movl	$0, -24(%rbp)
	movq	$sigShutdownHandler, -40(%rbp)
	leaq	-40(%rbp), %rbx
	movl	$15, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$2, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end51:
	.size	setupSignalHandlers, .Lfunc_end51-setupSignalHandlers
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function resetCommandTableStats
.LCPI52_0:
	.zero	16
	.text
	.globl	resetCommandTableStats
	.p2align	4, 0x90
	.type	resetCommandTableStats,@function
resetCommandTableStats:                 # @resetCommandTableStats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+56(%rip), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB52_2:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB52_3
# %bb.1:                                #   in Loop: Header=BB52_2 Depth=1
	movq	8(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rax)
	movq	%rbx, %rdi
	jmp	.LBB52_2
.LBB52_3:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end52:
	.size	resetCommandTableStats, .Lfunc_end52-resetCommandTableStats
                                        # -- End function
	.globl	redisOpArrayInit        # -- Begin function redisOpArrayInit
	.p2align	4, 0x90
	.type	redisOpArrayInit,@function
redisOpArrayInit:                       # @redisOpArrayInit
# %bb.0:
	movq	$0, (%rdi)
	movl	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end53:
	.size	redisOpArrayInit, .Lfunc_end53-redisOpArrayInit
                                        # -- End function
	.globl	redisOpArrayAppend      # -- Begin function redisOpArrayAppend
	.p2align	4, 0x90
	.type	redisOpArrayAppend,@function
redisOpArrayAppend:                     # @redisOpArrayAppend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %rdi
	movslq	8(%r14), %rsi
	shlq	$5, %rsi
	addq	$32, %rsi
	callq	zrealloc
	movq	%rax, (%r14)
	movslq	8(%r14), %rdx
	leal	1(%rdx), %ecx
	shlq	$5, %rdx
	movq	%rbx, 24(%rax,%rdx)
	movl	%r13d, 12(%rax,%rdx)
	movq	%r12, (%rax,%rdx)
	movl	%r15d, 8(%rax,%rdx)
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%esi, 16(%rax,%rdx)
	movl	%ecx, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	redisOpArrayAppend, .Lfunc_end54-redisOpArrayAppend
                                        # -- End function
	.globl	redisOpArrayFree        # -- Begin function redisOpArrayFree
	.p2align	4, 0x90
	.type	redisOpArrayFree,@function
redisOpArrayFree:                       # @redisOpArrayFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	8(%rdi), %eax
	jmp	.LBB55_1
	.p2align	4, 0x90
.LBB55_5:                               #   in Loop: Header=BB55_1 Depth=1
	callq	zfree
	movl	8(%r14), %eax
.LBB55_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_4 Depth 2
	testl	%eax, %eax
	je	.LBB55_6
# %bb.2:                                #   in Loop: Header=BB55_1 Depth=1
	movslq	%eax, %rcx
	movq	%rcx, %rax
	shlq	$5, %rax
	addl	$-1, %ecx
	movl	%ecx, 8(%r14)
	movq	(%r14), %rcx
	cmpl	$0, -24(%rax,%rcx)
	movq	-32(%rax,%rcx), %rdi
	jle	.LBB55_5
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB55_1 Depth=1
	leaq	(%rax,%rcx), %r15
	addq	$-24, %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB55_4:                               #   Parent Loop BB55_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movslq	(%r15), %rax
	movq	-8(%r15), %rdi
	cmpq	%rax, %rbx
	jl	.LBB55_4
	jmp	.LBB55_5
.LBB55_6:
	movq	(%r14), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end55:
	.size	redisOpArrayFree, .Lfunc_end55-redisOpArrayFree
                                        # -- End function
	.globl	lookupCommand           # -- Begin function lookupCommand
	.p2align	4, 0x90
	.type	lookupCommand,@function
lookupCommand:                          # @lookupCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movq	server+56(%rip), %rdi
	callq	dictFetchValue
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end56:
	.size	lookupCommand, .Lfunc_end56-lookupCommand
                                        # -- End function
	.globl	lookupCommandOrOriginal # -- Begin function lookupCommandOrOriginal
	.p2align	4, 0x90
	.type	lookupCommandOrOriginal,@function
lookupCommandOrOriginal:                # @lookupCommandOrOriginal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	server+56(%rip), %rdi
	movq	%rbx, %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	jne	.LBB57_2
# %bb.1:
	movq	server+64(%rip), %rdi
	movq	%rbx, %rsi
	callq	dictFetchValue
.LBB57_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end57:
	.size	lookupCommandOrOriginal, .Lfunc_end57-lookupCommandOrOriginal
                                        # -- End function
	.globl	propagate               # -- Begin function propagate
	.p2align	4, 0x90
	.type	propagate,@function
propagate:                              # @propagate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%r8d, %ebx
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movl	%esi, %r12d
	testb	$1, %bl
	je	.LBB58_3
# %bb.1:
	cmpl	$0, server+1880(%rip)
	je	.LBB58_3
# %bb.2:
	movl	%r12d, %esi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	feedAppendOnlyFile
.LBB58_3:
	testb	$2, %bl
	je	.LBB58_5
# %bb.4:
	movq	server+536(%rip), %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	replicationFeedSlaves
.LBB58_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end58:
	.size	propagate, .Lfunc_end58-propagate
                                        # -- End function
	.globl	alsoPropagate           # -- Begin function alsoPropagate
	.p2align	4, 0x90
	.type	alsoPropagate,@function
alsoPropagate:                          # @alsoPropagate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	cmpl	$0, server+860(%rip)
	jne	.LBB59_5
# %bb.1:
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movslq	%ecx, %r15
	leaq	(,%r15,8), %rdi
	callq	zmalloc
	movq	%rax, %rbx
	testl	%r15d, %r15d
	jle	.LBB59_4
# %bb.2:
	movl	%r13d, %r15d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB59_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14,%r12,8), %rax
	movq	%rax, (%rbx,%r12,8)
	movq	(%r14,%r12,8), %rdi
	callq	incrRefCount
	addq	$1, %r12
	cmpq	%r12, %r15
	jne	.LBB59_3
.LBB59_4:
	movq	server+2224(%rip), %rdi
	movslq	server+2232(%rip), %rsi
	shlq	$5, %rsi
	addq	$32, %rsi
	callq	zrealloc
	movq	%rax, server+2224(%rip)
	movslq	server+2232(%rip), %rcx
	leal	1(%rcx), %edx
	shlq	$5, %rcx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 24(%rax,%rcx)
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%esi, 12(%rax,%rcx)
	movq	%rbx, (%rax,%rcx)
	movl	%r13d, 8(%rax,%rcx)
	movl	-48(%rbp), %esi         # 4-byte Reload
	movl	%esi, 16(%rax,%rcx)
	movl	%edx, server+2232(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB59_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	alsoPropagate, .Lfunc_end59-alsoPropagate
                                        # -- End function
	.globl	forceCommandPropagation # -- Begin function forceCommandPropagation
	.p2align	4, 0x90
	.type	forceCommandPropagation,@function
forceCommandPropagation:                # @forceCommandPropagation
# %bb.0:
	testb	$2, %sil
	jne	.LBB60_1
# %bb.2:
	testb	$1, %sil
	jne	.LBB60_3
.LBB60_4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB60_1:
	orb	$-128, 161(%rdi)
	testb	$1, %sil
	je	.LBB60_4
.LBB60_3:
	orb	$64, 161(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end60:
	.size	forceCommandPropagation, .Lfunc_end60-forceCommandPropagation
                                        # -- End function
	.globl	preventCommandPropagation # -- Begin function preventCommandPropagation
	.p2align	4, 0x90
	.type	preventCommandPropagation,@function
preventCommandPropagation:              # @preventCommandPropagation
# %bb.0:
	orb	$24, 162(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end61:
	.size	preventCommandPropagation, .Lfunc_end61-preventCommandPropagation
                                        # -- End function
	.globl	preventCommandAOF       # -- Begin function preventCommandAOF
	.p2align	4, 0x90
	.type	preventCommandAOF,@function
preventCommandAOF:                      # @preventCommandAOF
# %bb.0:
	orb	$8, 162(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end62:
	.size	preventCommandAOF, .Lfunc_end62-preventCommandAOF
                                        # -- End function
	.globl	preventCommandReplication # -- Begin function preventCommandReplication
	.p2align	4, 0x90
	.type	preventCommandReplication,@function
preventCommandReplication:              # @preventCommandReplication
# %bb.0:
	orb	$16, 162(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end63:
	.size	preventCommandReplication, .Lfunc_end63-preventCommandReplication
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function call
.LCPI64_0:
	.zero	8
	.quad	1                       # 0x1
	.text
	.globl	call
	.p2align	4, 0x90
	.type	call,@function
call:                                   # @call
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
	movq	%rdi, %r14
	movl	160(%rdi), %r13d
	movq	80(%rdi), %rbx
	movq	server+544(%rip), %rsi
	cmpq	$0, 40(%rsi)
	movl	%r13d, %eax
	je	.LBB64_4
# %bb.1:
	cmpl	$0, server+860(%rip)
	movl	%r13d, %eax
	jne	.LBB64_4
# %bb.2:
	movzwl	32(%rbx), %ecx
	movl	%r13d, %eax
	testl	$2064, %ecx             # imm = 0x810
	jne	.LBB64_4
# %bb.3:
	movq	16(%r14), %rax
	movl	40(%rax), %edx
	movq	72(%r14), %rcx
	movl	64(%r14), %r8d
	movq	%r14, %rdi
	callq	replicationFeedMonitors
	movl	160(%r14), %eax
.LBB64_4:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	andl	$-1622017, %eax         # imm = 0xFFE73FFF
	movl	%eax, 160(%r14)
	movdqu	server+2224(%rip), %xmm0
	movdqa	%xmm0, -96(%rbp)
	movq	$0, server+2224(%rip)
	movl	$0, server+2232(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2080(%rip), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	65464(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65464(%rbp), %rbx
	movq	65472(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	80(%r14), %rax
	movq	%r14, %rdi
	callq	*8(%rax)
	leaq	65464(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65464(%rbp), %rcx
	subq	%rbx, %rcx
	movq	65472(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2080(%rip), %rbx
	cmpl	$0, server+860(%rip)
	movl	160(%r14), %eax
	je	.LBB64_5
# %bb.6:
	movl	-44(%rbp), %r8d         # 4-byte Reload
	movl	%r8d, %edx
	andl	$-4, %edx
	testl	$256, %eax              # imm = 0x100
	cmovnel	%edx, %r8d
	jmp	.LBB64_7
.LBB64_5:
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB64_7:
	imulq	$1000000, %rcx, %rcx    # imm = 0xF4240
	subq	%r12, %r15
	testl	$256, %eax              # imm = 0x100
	je	.LBB64_13
# %bb.8:
	movq	server+3008(%rip), %rdx
	testq	%rdx, %rdx
	je	.LBB64_13
# %bb.9:
	testw	%ax, %ax
	js	.LBB64_10
# %bb.11:
	testl	$16384, %eax            # imm = 0x4000
	je	.LBB64_13
.LBB64_12:
	orb	$64, 161(%rdx)
.LBB64_13:
	addq	%rcx, %r15
	testb	$1, %r8b
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	je	.LBB64_19
# %bb.14:
	movq	80(%r14), %rax
	movl	$execCommand, %ecx
	cmpq	%rcx, 8(%rax)
	je	.LBB64_19
# %bb.15:
	testb	$32, 33(%rax)
	movl	$.L.str.203, %eax
	movl	$.L.str.340, %edi
	cmoveq	%rax, %rdi
	movq	server+3096(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB64_18
# %bb.16:
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	movq	%r15, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB64_18
# %bb.17:
	movq	%rdx, %rsi
	callq	latencyAddSample
.LBB64_18:
	movq	72(%r14), %rsi
	movl	64(%r14), %edx
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	slowlogPushEntryIfNeeded
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB64_19:
	testb	$2, %r8b
	je	.LBB64_21
# %bb.20:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movdqu	64(%rax), %xmm0
	movq	%r15, %xmm1
	shufpd	$2, .LCPI64_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[1]
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 64(%rax)
.LBB64_21:
	testb	$12, %r8b
	je	.LBB64_31
# %bb.22:
	movl	160(%r14), %ecx
	movl	%ecx, %eax
	andl	$1572864, %eax          # imm = 0x180000
	cmpl	$1572864, %eax          # imm = 0x180000
	je	.LBB64_31
# %bb.23:
	xorl	%eax, %eax
	cmpq	-80(%rbp), %rbx         # 8-byte Folded Reload
	setg	%al
	leal	(%rax,%rax,2), %edx
	movl	%ecx, %eax
	shrl	$14, %eax
	movl	%eax, %esi
	andl	$2, %esi
	andl	$1, %eax
	orl	%esi, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	andl	$1, %edx
	testl	$1048576, %ecx          # imm = 0x100000
	cmovnel	%edx, %eax
	testb	$8, %r8b
	cmovel	%edx, %eax
	movl	%eax, %r12d
	andl	$2, %r12d
	testl	$524288, %ecx           # imm = 0x80000
	cmovnel	%r12d, %eax
	testb	$4, %r8b
	cmovel	%r12d, %eax
	testl	%eax, %eax
	je	.LBB64_31
# %bb.24:
	movq	80(%r14), %rdi
	testb	$8, 32(%rdi)
	jne	.LBB64_31
# %bb.25:
	movq	16(%r14), %rcx
	movl	40(%rcx), %esi
	movq	72(%r14), %r15
	movl	64(%r14), %ebx
	testb	$1, %al
	je	.LBB64_28
# %bb.26:
	cmpl	$0, server+1880(%rip)
	je	.LBB64_28
# %bb.27:
	movq	%r15, %rdx
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movl	%ebx, %ecx
	callq	feedAppendOnlyFile
	movl	-56(%rbp), %esi         # 4-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB64_28:
	testl	%r12d, %r12d
	je	.LBB64_30
# %bb.29:
	movq	server+536(%rip), %rdi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	replicationFeedSlaves
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB64_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB64_31:
	movl	$-1622017, %eax         # imm = 0xFFE73FFF
	andl	160(%r14), %eax
	andl	$1622016, %r13d         # imm = 0x18C000
	orl	%eax, %r13d
	movl	%r13d, 160(%r14)
	movl	server+2232(%rip), %eax
	testl	%eax, %eax
	je	.LBB64_49
# %bb.32:
	testb	$12, %r8b
	je	.LBB64_44
# %bb.33:
	testl	%eax, %eax
	jle	.LBB64_44
# %bb.34:
	movl	$24, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB64_35
	.p2align	4, 0x90
.LBB64_41:                              #   in Loop: Header=BB64_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2232(%rip), %eax
.LBB64_42:                              #   in Loop: Header=BB64_35 Depth=1
	addq	$1, %r12
	movslq	%eax, %rcx
	addq	$32, %rbx
	cmpq	%rcx, %r12
	jge	.LBB64_43
.LBB64_35:                              # =>This Inner Loop Header: Depth=1
	movq	server+2224(%rip), %rdi
	movl	-8(%rdi,%rbx), %edx
	movl	%edx, %esi
	andl	$-2, %esi
	testb	$4, %r8b
	cmovnel	%edx, %esi
	movl	%esi, %r14d
	andl	$-3, %r14d
	testb	$8, %r8b
	cmovnel	%esi, %r14d
	testl	%r14d, %r14d
	je	.LBB64_42
# %bb.36:                               #   in Loop: Header=BB64_35 Depth=1
	movl	-12(%rdi,%rbx), %r13d
	movq	-24(%rdi,%rbx), %r15
	movl	-16(%rdi,%rbx), %ecx
	testb	$1, %r14b
	je	.LBB64_39
# %bb.37:                               #   in Loop: Header=BB64_35 Depth=1
	cmpl	$0, server+1880(%rip)
	je	.LBB64_39
# %bb.38:                               #   in Loop: Header=BB64_35 Depth=1
	movq	(%rdi,%rbx), %rdi
	movl	%r13d, %esi
	movq	%r15, %rdx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	callq	feedAppendOnlyFile
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB64_39:                              #   in Loop: Header=BB64_35 Depth=1
	testb	$2, %r14b
	je	.LBB64_41
# %bb.40:                               #   in Loop: Header=BB64_35 Depth=1
	movq	server+536(%rip), %rdi
	movl	%r13d, %esi
	movq	%r15, %rdx
	callq	replicationFeedSlaves
	movl	-44(%rbp), %r8d         # 4-byte Reload
	jmp	.LBB64_41
.LBB64_10:
	orb	$-128, 161(%rdx)
	movl	160(%r14), %eax
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB64_12
	jmp	.LBB64_13
.LBB64_43:
	testl	%eax, %eax
	je	.LBB64_48
.LBB64_44:
	movslq	%eax, %rcx
	movq	%rcx, %rax
	shlq	$5, %rax
	addl	$-1, %ecx
	movl	%ecx, server+2232(%rip)
	movq	server+2224(%rip), %rcx
	cmpl	$0, -24(%rax,%rcx)
	movq	-32(%rax,%rcx), %rdi
	jle	.LBB64_47
# %bb.45:                               # %.preheader
	leaq	(%rax,%rcx), %r14
	addq	$-24, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB64_46:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movslq	(%r14), %rax
	movq	-8(%r14), %rdi
	cmpq	%rax, %rbx
	jl	.LBB64_46
.LBB64_47:
	callq	zfree
	movl	server+2232(%rip), %eax
	jmp	.LBB64_43
.LBB64_48:
	movq	server+2224(%rip), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB64_49:
	movaps	-96(%rbp), %xmm0
	movups	%xmm0, server+2224(%rip)
	addq	$1, server+1008(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	call, .Lfunc_end64-call
                                        # -- End function
	.globl	processCommand          # -- Begin function processCommand
	.p2align	4, 0x90
	.type	processCommand,@function
processCommand:                         # @processCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	callq	moduleCallCommandFilters
	movq	72(%r14), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.341, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB65_6
# %bb.1:
	movq	server+56(%rip), %rdi
	movq	%rbx, %rsi
	callq	dictFetchValue
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 88(%r14)
	movq	%rax, 80(%r14)
	testq	%rax, %rax
	je	.LBB65_7
# %bb.2:
	movl	16(%rax), %edx
	movl	64(%r14), %ecx
	testl	%edx, %edx
	jle	.LBB65_4
# %bb.3:
	cmpl	%ecx, %edx
	movl	%edx, %ecx
	jne	.LBB65_5
.LBB65_4:
	negl	%edx
	cmpl	%edx, %ecx
	jge	.LBB65_27
.LBB65_5:
	movq	%r14, %rdi
	callq	flagTransaction
	movq	80(%r14), %rax
	movq	(%rax), %rdx
	xorl	%r15d, %r15d
	movl	$.L.str.344, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB65_109
.LBB65_6:
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	orb	$64, 160(%r14)
	movl	$-1, %r15d
	jmp	.LBB65_109
.LBB65_7:
	movq	%r14, %rdi
	callq	flagTransaction
	callq	sdsempty
	movq	%rax, %r12
	cmpl	$2, 64(%r14)
	jl	.LBB65_26
# %bb.8:                                # %.preheader
	movl	$1, %ebx
	jmp	.LBB65_11
.LBB65_9:                               #   in Loop: Header=BB65_11 Depth=1
	movq	-17(%r12), %rax
	.p2align	4, 0x90
.LBB65_10:                              #   in Loop: Header=BB65_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$128, %edx
	subl	%eax, %edx
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rcx
	movl	$.L.str.342, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r12
	addq	$1, %rbx
	movslq	64(%r14), %rax
	cmpq	%rax, %rbx
	jge	.LBB65_26
.LBB65_11:                              # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r12), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB65_14
# %bb.12:                               #   in Loop: Header=BB65_11 Depth=1
	movzbl	%cl, %ecx
	jmpq	*.LJTI65_0(,%rcx,8)
.LBB65_13:                              #   in Loop: Header=BB65_11 Depth=1
	movzbl	-3(%r12), %ecx
	jmp	.LBB65_18
	.p2align	4, 0x90
.LBB65_14:                              #   in Loop: Header=BB65_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB65_19
	.p2align	4, 0x90
.LBB65_15:                              #   in Loop: Header=BB65_11 Depth=1
	movzwl	-5(%r12), %ecx
	jmp	.LBB65_18
	.p2align	4, 0x90
.LBB65_16:                              #   in Loop: Header=BB65_11 Depth=1
	movl	-9(%r12), %ecx
	jmp	.LBB65_18
	.p2align	4, 0x90
.LBB65_17:                              #   in Loop: Header=BB65_11 Depth=1
	movq	-17(%r12), %rcx
.LBB65_18:                              #   in Loop: Header=BB65_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rcx
	ja	.LBB65_26
.LBB65_19:                              #   in Loop: Header=BB65_11 Depth=1
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB65_22
# %bb.20:                               #   in Loop: Header=BB65_11 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI65_1(,%rcx,8)
.LBB65_21:                              #   in Loop: Header=BB65_11 Depth=1
	shrq	$3, %rax
	jmp	.LBB65_10
.LBB65_22:                              #   in Loop: Header=BB65_11 Depth=1
	xorl	%eax, %eax
	jmp	.LBB65_10
.LBB65_23:                              #   in Loop: Header=BB65_11 Depth=1
	movzbl	-3(%r12), %eax
	jmp	.LBB65_10
.LBB65_24:                              #   in Loop: Header=BB65_11 Depth=1
	movzwl	-5(%r12), %eax
	jmp	.LBB65_10
.LBB65_25:                              #   in Loop: Header=BB65_11 Depth=1
	movl	-9(%r12), %eax
	jmp	.LBB65_10
.LBB65_26:
	movq	72(%r14), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	xorl	%r15d, %r15d
	movl	$.L.str.343, %esi
	movq	%r14, %rdi
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movq	%r12, %rdi
	callq	sdsfree
	jmp	.LBB65_109
.LBB65_27:
	cmpq	$0, server+96(%rip)
	je	.LBB65_29
# %bb.28:
	cmpl	$0, 164(%r14)
	je	.LBB65_39
.LBB65_29:
	cmpl	$0, server+2924(%rip)
	je	.LBB65_44
# %bb.30:
	movl	160(%r14), %edx
	testb	$2, %dl
	jne	.LBB65_44
# %bb.31:
	testl	$256, %edx              # imm = 0x100
	je	.LBB65_33
# %bb.32:
	movq	server+3008(%rip), %rdx
	testb	$2, 160(%rdx)
	jne	.LBB65_44
.LBB65_33:
	cmpq	$0, 40(%rax)
	jne	.LBB65_35
# %bb.34:
	cmpl	$0, 48(%rax)
	je	.LBB65_43
.LBB65_35:
	movq	72(%r14), %rdx
	leaq	-40(%rbp), %r8
	leaq	-36(%rbp), %r9
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	getNodeByQuery
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB65_37
# %bb.36:
	movq	server+2944(%rip), %rax
	cmpq	(%rax), %rbx
	je	.LBB65_44
.LBB65_37:
	movq	80(%r14), %rax
	movl	$execCommand, %ecx
	cmpq	%rcx, 8(%rax)
	je	.LBB65_41
# %bb.38:
	movq	%r14, %rdi
	callq	flagTransaction
	jmp	.LBB65_42
.LBB65_39:
	movl	$authCommand, %edx
	cmpq	%rdx, 8(%rax)
	je	.LBB65_29
# %bb.40:
	movq	%r14, %rdi
	callq	flagTransaction
	movq	shared+208(%rip), %rsi
	jmp	.LBB65_107
.LBB65_41:
	movq	%r14, %rdi
	callq	discardTransaction
.LBB65_42:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	clusterRedirectClient
	jmp	.LBB65_108
.LBB65_43:
	movl	$execCommand, %edx
	cmpq	%rdx, 8(%rax)
	je	.LBB65_35
.LBB65_44:
	cmpq	$0, server+2704(%rip)
	je	.LBB65_48
# %bb.45:
	cmpl	$0, server+3068(%rip)
	jne	.LBB65_48
# %bb.46:
	callq	freeMemoryIfNeededAndSafe
	cmpq	$0, server+552(%rip)
	je	.LBB65_79
# %bb.47:
	cmpl	$-1, %eax
	je	.LBB65_91
.LBB65_48:
	cmpl	$0, server+2180(%rip)
	je	.LBB65_51
# %bb.49:
	cmpl	$0, server+2112(%rip)
	jle	.LBB65_51
# %bb.50:
	movl	$2, %ebx
	cmpl	$-1, server+2176(%rip)
	je	.LBB65_52
.LBB65_51:
	cmpl	$0, server+1880(%rip)
	setne	%al
	cmpl	$-1, server+2024(%rip)
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %ebx
.LBB65_52:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2464(%rip), %rax
	testl	%ebx, %ebx
	je	.LBB65_56
# %bb.53:
	testq	%rax, %rax
	jne	.LBB65_56
# %bb.54:
	movq	80(%r14), %rcx
	testb	$1, 32(%rcx)
	jne	.LBB65_62
# %bb.55:
	movl	$pingCommand, %edx
	cmpq	%rdx, 8(%rcx)
	je	.LBB65_62
.LBB65_56:
	testq	%rax, %rax
	jne	.LBB65_64
# %bb.57:
	movl	server+2432(%rip), %ecx
	testl	%ecx, %ecx
	je	.LBB65_64
# %bb.58:
	cmpl	$0, server+2436(%rip)
	je	.LBB65_64
# %bb.59:
	movq	80(%r14), %rdx
	xorl	%eax, %eax
	testb	$1, 32(%rdx)
	je	.LBB65_68
# %bb.60:
	cmpl	%ecx, server+2440(%rip)
	jge	.LBB65_68
# %bb.61:
	movq	%r14, %rdi
	callq	flagTransaction
	movq	shared+216(%rip), %rsi
	jmp	.LBB65_107
.LBB65_62:
	movq	%r14, %rdi
	callq	flagTransaction
	cmpl	$2, %ebx
	jne	.LBB65_90
# %bb.63:
	movq	shared+176(%rip), %rsi
	jmp	.LBB65_107
.LBB65_64:
	testq	%rax, %rax
	setne	%al
	je	.LBB65_68
# %bb.65:
	cmpl	$0, server+2556(%rip)
	je	.LBB65_68
# %bb.66:
	movb	$1, %al
	testb	$2, 160(%r14)
	jne	.LBB65_68
# %bb.67:
	movq	80(%r14), %rcx
	testb	$1, 32(%rcx)
	jne	.LBB65_95
.LBB65_68:
	testb	$4, 162(%r14)
	je	.LBB65_75
# %bb.69:
	movq	80(%r14), %rcx
	movq	8(%rcx), %rcx
	movl	$punsubscribeCommand, %edx
	cmpq	%rdx, %rcx
	je	.LBB65_75
# %bb.70:
	movl	$psubscribeCommand, %edx
	cmpq	%rdx, %rcx
	je	.LBB65_75
# %bb.71:
	movl	$unsubscribeCommand, %edx
	cmpq	%rdx, %rcx
	je	.LBB65_75
# %bb.72:
	movl	$pingCommand, %edx
	cmpq	%rdx, %rcx
	je	.LBB65_75
# %bb.73:
	movl	$subscribeCommand, %edx
	cmpq	%rdx, %rcx
	je	.LBB65_75
# %bb.74:
	movl	$.L.str.346, %esi
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB65_108
.LBB65_75:
	cmpl	$15, server+2500(%rip)
	sete	%cl
	xorb	$1, %al
	orb	%cl, %al
	jne	.LBB65_80
# %bb.76:
	cmpl	$0, server+2552(%rip)
	jne	.LBB65_80
# %bb.77:
	movq	80(%r14), %rax
	testb	$4, 33(%rax)
	jne	.LBB65_80
# %bb.78:
	movq	%r14, %rdi
	callq	flagTransaction
	movq	shared+184(%rip), %rsi
	jmp	.LBB65_107
.LBB65_79:
	movl	$-1, %r15d
	jmp	.LBB65_109
.LBB65_80:
	cmpl	$0, server+860(%rip)
	je	.LBB65_83
# %bb.81:
	movq	80(%r14), %rax
	testb	$2, 33(%rax)
	jne	.LBB65_83
# %bb.82:
	movq	shared+160(%rip), %rsi
	jmp	.LBB65_107
.LBB65_83:
	cmpl	$0, server+3068(%rip)
	je	.LBB65_98
# %bb.84:
	movq	80(%r14), %rax
	movq	8(%rax), %rax
	movl	$authCommand, %ecx
	cmpq	%rcx, %rax
	je	.LBB65_98
# %bb.85:
	movl	$replconfCommand, %ecx
	cmpq	%rcx, %rax
	je	.LBB65_98
# %bb.86:
	movl	$shutdownCommand, %ecx
	cmpq	%rcx, %rax
	je	.LBB65_96
.LBB65_87:
	movl	$scriptCommand, %ecx
	cmpq	%rcx, %rax
	jne	.LBB65_106
# %bb.88:
	cmpl	$2, 64(%r14)
	jne	.LBB65_106
# %bb.89:
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movsbq	(%rax), %rbx
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	leal	32(%rbx), %ecx
	cmpb	$1, %al
	cmovnel	%ebx, %ecx
	cmpl	$107, %ecx
	je	.LBB65_98
	jmp	.LBB65_106
.LBB65_90:
	callq	sdsempty
	movq	%rax, %rbx
	movl	server+2028(%rip), %edi
	callq	strerror
	xorl	%r15d, %r15d
	movl	$.L.str.345, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB65_109
.LBB65_91:
	movq	80(%r14), %rax
	testb	$4, 32(%rax)
	jne	.LBB65_94
# %bb.92:
	testb	$8, 160(%r14)
	je	.LBB65_48
# %bb.93:
	movl	$execCommand, %ecx
	cmpq	%rcx, 8(%rax)
	je	.LBB65_48
.LBB65_94:
	movq	%r14, %rdi
	callq	flagTransaction
	movq	shared+232(%rip), %rsi
	jmp	.LBB65_107
.LBB65_95:
	movq	shared+192(%rip), %rsi
	jmp	.LBB65_107
.LBB65_96:
	cmpl	$2, 64(%r14)
	jne	.LBB65_106
# %bb.97:
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movsbq	(%rax), %rbx
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	leal	32(%rbx), %ecx
	cmpb	$1, %al
	cmovnel	%ebx, %ecx
	cmpl	$110, %ecx
	jne	.LBB65_110
.LBB65_98:
	testb	$8, 160(%r14)
	jne	.LBB65_101
.LBB65_99:
	movq	%r14, %rdi
	movl	$15, %esi
	callq	call
	movq	server+2352(%rip), %rax
	movq	%rax, 480(%r14)
	movq	server+2776(%rip), %rax
	xorl	%r15d, %r15d
	cmpq	$0, 40(%rax)
	je	.LBB65_109
# %bb.100:
	callq	handleClientsBlockedOnKeys
	jmp	.LBB65_109
.LBB65_101:
	movq	80(%r14), %rax
	movq	8(%rax), %rax
	movl	$watchCommand, %ecx
	cmpq	%rcx, %rax
	je	.LBB65_99
# %bb.102:
	movl	$multiCommand, %ecx
	cmpq	%rcx, %rax
	je	.LBB65_99
# %bb.103:
	movl	$execCommand, %ecx
	cmpq	%rcx, %rax
	je	.LBB65_99
# %bb.104:
	movl	$discardCommand, %ecx
	cmpq	%rcx, %rax
	je	.LBB65_99
# %bb.105:
	movq	%r14, %rdi
	callq	queueMultiCommand
	movq	shared+96(%rip), %rsi
	jmp	.LBB65_107
.LBB65_106:
	movq	%r14, %rdi
	callq	flagTransaction
	movq	shared+168(%rip), %rsi
.LBB65_107:
	movq	%r14, %rdi
	callq	addReply
.LBB65_108:
	xorl	%r15d, %r15d
.LBB65_109:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB65_110:
	movq	80(%r14), %rax
	movq	8(%rax), %rax
	jmp	.LBB65_87
.Lfunc_end65:
	.size	processCommand, .Lfunc_end65-processCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI65_0:
	.quad	.LBB65_13
	.quad	.LBB65_15
	.quad	.LBB65_16
	.quad	.LBB65_17
.LJTI65_1:
	.quad	.LBB65_21
	.quad	.LBB65_23
	.quad	.LBB65_24
	.quad	.LBB65_25
	.quad	.LBB65_9
                                        # -- End function
	.text
	.globl	writeCommandsDeniedByDiskError # -- Begin function writeCommandsDeniedByDiskError
	.p2align	4, 0x90
	.type	writeCommandsDeniedByDiskError,@function
writeCommandsDeniedByDiskError:         # @writeCommandsDeniedByDiskError
# %bb.0:
	cmpl	$0, server+2180(%rip)
	je	.LBB66_3
# %bb.1:
	cmpl	$0, server+2112(%rip)
	jle	.LBB66_3
# %bb.2:
	movl	$2, %eax
	cmpl	$-1, server+2176(%rip)
	jne	.LBB66_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB66_3:
	cmpl	$0, server+1880(%rip)
	setne	%al
	cmpl	$-1, server+2024(%rip)
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end66:
	.size	writeCommandsDeniedByDiskError, .Lfunc_end66-writeCommandsDeniedByDiskError
                                        # -- End function
	.globl	closeListeningSockets   # -- Begin function closeListeningSockets
	.p2align	4, 0x90
	.type	closeListeningSockets,@function
closeListeningSockets:                  # @closeListeningSockets
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	cmpl	$0, server+436(%rip)
	jle	.LBB67_3
# %bb.1:                                # %.preheader1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB67_2:                               # =>This Inner Loop Header: Depth=1
	movl	server+372(,%rbx,4), %edi
	callq	close
	addq	$1, %rbx
	movslq	server+436(%rip), %rax
	cmpq	%rax, %rbx
	jl	.LBB67_2
.LBB67_3:
	movl	server+440(%rip), %edi
	cmpl	$-1, %edi
	je	.LBB67_5
# %bb.4:
	callq	close
.LBB67_5:
	cmpl	$0, server+2924(%rip)
	je	.LBB67_9
# %bb.6:
	cmpl	$0, server+508(%rip)
	jle	.LBB67_9
# %bb.7:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	movl	server+444(,%rbx,4), %edi
	callq	close
	addq	$1, %rbx
	movslq	server+508(%rip), %rax
	cmpq	%rax, %rbx
	jl	.LBB67_8
.LBB67_9:
	testl	%r14d, %r14d
	je	.LBB67_12
# %bb.10:
	cmpq	$0, server+360(%rip)
	je	.LBB67_12
# %bb.11:
	movl	$.L.str.347, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+360(%rip), %rdi
	callq	unlink
.LBB67_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end67:
	.size	closeListeningSockets, .Lfunc_end67-closeListeningSockets
                                        # -- End function
	.globl	prepareForShutdown      # -- Begin function prepareForShutdown
	.p2align	4, 0x90
	.type	prepareForShutdown,@function
prepareForShutdown:                     # @prepareForShutdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movl	%edi, %ebx
	movl	$.L.str.348, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	ldbKillForkedSessions
	cmpl	$-1, server+2096(%rip)
	je	.LBB68_2
# %bb.1:
	movl	$.L.str.349, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	server+2096(%rip), %edi
	movl	$10, %esi
	callq	kill
	movl	server+2096(%rip), %edi
	callq	rdbRemoveTempFile
.LBB68_2:
	movl	server+1880(%rip), %eax
	testl	%eax, %eax
	je	.LBB68_9
# %bb.3:
	cmpl	$-1, server+1940(%rip)
	je	.LBB68_8
# %bb.4:
	cmpl	$2, %eax
	jne	.LBB68_7
# %bb.5:
	movl	$.L.str.350, %esi
	jmp	.LBB68_6
.LBB68_7:
	movl	$.L.str.351, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	server+1940(%rip), %edi
	movl	$10, %esi
	callq	kill
.LBB68_8:
	movl	$.L.str.352, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	flushAppendOnlyFile
	movl	server+1960(%rip), %edi
	callq	fsync
.LBB68_9:
	cmpl	$0, server+2112(%rip)
	setg	%al
	testb	$2, %bl
	sete	%cl
	testb	$1, %bl
	jne	.LBB68_11
# %bb.10:
	andb	%al, %cl
	je	.LBB68_13
.LBB68_11:
	movl	$.L.str.353, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	leaq	-72(%rbp), %rdi
	callq	rdbPopulateSaveInfo
	movq	server+2120(%rip), %rdi
	movq	%rax, %rsi
	callq	rdbSave
	testl	%eax, %eax
	je	.LBB68_13
# %bb.12:
	movl	$.L.str.354, %esi
.LBB68_6:
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$-1, %ebx
	jmp	.LBB68_17
.LBB68_13:
	cmpl	$0, server+1804(%rip)
	jne	.LBB68_15
# %bb.14:
	cmpq	$0, server+104(%rip)
	je	.LBB68_16
.LBB68_15:
	movl	$.L.str.355, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+104(%rip), %rdi
	callq	unlink
.LBB68_16:
	callq	flushSlavesOutputBuffers
	movl	$1, %edi
	callq	closeListeningSockets
	cmpl	$0, server+164(%rip)
	movl	$.L.str.358, %eax
	movl	$.L.str.357, %edx
	cmoveq	%rax, %rdx
	xorl	%ebx, %ebx
	movl	$.L.str.356, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB68_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end68:
	.size	prepareForShutdown, .Lfunc_end68-prepareForShutdown
                                        # -- End function
	.globl	time_independent_strcmp # -- Begin function time_independent_strcmp
	.p2align	4, 0x90
	.type	time_independent_strcmp,@function
time_independent_strcmp:                # @time_independent_strcmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1048, %rsp             # imm = 0x418
	movq	%rsi, %r12
	movq	%rdi, %r13
	callq	strlen
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rcx
	movl	%ebx, %r14d
	movl	$1, %eax
	cmpq	$512, %r14              # imm = 0x200
	ja	.LBB69_5
# %bb.1:
	movl	%ecx, %edx
	cmpq	$512, %rdx              # imm = 0x200
	ja	.LBB69_5
# %bb.2:
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	leaq	-1088(%rbp), %rdi
	xorl	%r15d, %r15d
	movq	%rdx, %rbx
	movl	$512, %edx              # imm = 0x200
	xorl	%esi, %esi
	callq	memset
	leaq	-576(%rbp), %rdi
	movl	$512, %edx              # imm = 0x200
	xorl	%esi, %esi
	callq	memset
	leaq	-1088(%rbp), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memcpy
	leaq	-576(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB69_3:                               # =>This Inner Loop Header: Depth=1
	movdqa	-576(%rbp,%r15), %xmm2
	movl	-572(%rbp,%r15), %eax
	pxor	-1088(%rbp,%r15), %xmm2
	punpcklbw	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	xorl	-1084(%rbp,%r15), %eax
	movd	%eax, %xmm3
	punpcklbw	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm3, %xmm3    # xmm3 = xmm3[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm2
	por	%xmm0, %xmm2
	psrad	$24, %xmm3
	por	%xmm1, %xmm3
	movl	-568(%rbp,%r15), %eax
	movl	-564(%rbp,%r15), %ecx
	xorl	-1080(%rbp,%r15), %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	xorl	-1076(%rbp,%r15), %ecx
	movd	%ecx, %xmm1
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	por	%xmm2, %xmm0
	psrad	$24, %xmm1
	por	%xmm3, %xmm1
	addq	$16, %r15
	cmpq	$512, %r15              # imm = 0x200
	jne	.LBB69_3
# %bb.4:
	por	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	por	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	por	%xmm0, %xmm1
	movd	%xmm1, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	xorl	-48(%rbp), %ecx         # 4-byte Folded Reload
	orl	%eax, %ecx
	movl	%ecx, %eax
.LBB69_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end69:
	.size	time_independent_strcmp, .Lfunc_end69-time_independent_strcmp
                                        # -- End function
	.globl	addReplyCommandFlag     # -- Begin function addReplyCommandFlag
	.p2align	4, 0x90
	.type	addReplyCommandFlag,@function
addReplyCommandFlag:                    # @addReplyCommandFlag
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testl	%edx, 32(%rsi)
	je	.LBB70_1
# %bb.2:
	movq	%rcx, %rsi
	callq	addReplyStatus
	movl	$1, %eax
	jmp	.LBB70_3
.LBB70_1:
	xorl	%eax, %eax
.LBB70_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end70:
	.size	addReplyCommandFlag, .Lfunc_end70-addReplyCommandFlag
                                        # -- End function
	.globl	addReplyCommand         # -- Begin function addReplyCommand
	.p2align	4, 0x90
	.type	addReplyCommand,@function
addReplyCommand:                        # @addReplyCommand
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
	testq	%rsi, %rsi
	je	.LBB71_1
# %bb.2:
	movq	%rsi, %r12
	movl	$6, %esi
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	movq	(%r12), %rsi
	movq	%r14, %rdi
	callq	addReplyBulkCString
	movslq	16(%r12), %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	movq	%r14, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, %r15
	movl	32(%r12), %eax
	xorl	%ebx, %ebx
	movl	$0, %r13d
	testb	$1, %al
	je	.LBB71_4
# %bb.3:
	movl	$.L.str.362, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %r13d
.LBB71_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	je	.LBB71_6
# %bb.5:
	movl	$.L.str.186, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %ebx
.LBB71_6:
	addl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$0, %ecx
	testb	$4, %al
	je	.LBB71_8
# %bb.7:
	movl	$.L.str.363, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %ecx
.LBB71_8:
	addl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB71_10
# %bb.9:
	movl	$.L.str.364, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %r13d
.LBB71_10:
	addl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$0, %ecx
	testb	$32, %al
	je	.LBB71_12
# %bb.11:
	movl	$.L.str.174, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %ecx
.LBB71_12:
	addl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %al
	je	.LBB71_14
# %bb.13:
	movl	$.L.str.365, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %r13d
.LBB71_14:
	addl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$0, %ecx
	testb	%al, %al
	jns	.LBB71_16
# %bb.15:
	movl	$.L.str.366, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %ecx
.LBB71_16:
	addl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	je	.LBB71_18
# %bb.17:
	movl	$.L.str.367, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %r13d
.LBB71_18:
	addl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$0, %ecx
	testl	$512, %eax              # imm = 0x200
	je	.LBB71_20
# %bb.19:
	movl	$.L.str.368, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %ecx
.LBB71_20:
	addl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %eax             # imm = 0x400
	je	.LBB71_22
# %bb.21:
	movl	$.L.str.369, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %r13d
.LBB71_22:
	addl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$0, %ecx
	testl	$2048, %eax             # imm = 0x800
	je	.LBB71_24
# %bb.23:
	movl	$.L.str.370, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %ecx
.LBB71_24:
	addl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	$4096, %eax             # imm = 0x1000
	je	.LBB71_26
# %bb.25:
	movl	$.L.str.185, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	32(%r12), %eax
	movl	$1, %r13d
.LBB71_26:
	addl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testl	$8192, %eax             # imm = 0x2000
	je	.LBB71_28
# %bb.27:
	movl	$.L.str.371, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	$1, %ecx
.LBB71_28:
	addl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 40(%r12)
	setne	%cl
	movl	32(%r12), %eax
	testb	$8, %al
	sete	%dl
	testb	%cl, %dl
	jne	.LBB71_30
# %bb.29:
	andl	$16384, %eax            # imm = 0x4000
	je	.LBB71_31
.LBB71_30:
	movl	$.L.str.372, %esi
	movq	%r14, %rdi
	callq	addReplyStatus
	addl	$1, %ebx
.LBB71_31:
	movl	%ebx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	setDeferredMultiBulkLength
	movslq	48(%r12), %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	movslq	52(%r12), %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	movslq	56(%r12), %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	jmp	.LBB71_32
.LBB71_1:
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB71_32:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end71:
	.size	addReplyCommand, .Lfunc_end71-addReplyCommand
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function genRedisInfoString
.LCPI72_0:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI72_1:
	.long	981467136               # float 9.765625E-4
	.text
	.globl	genRedisInfoString
	.p2align	4, 0x90
	.type	genRedisInfoString,@function
genRedisInfoString:                     # @genRedisInfoString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1272, %rsp             # imm = 0x4F8
	movq	%rdi, %r13
	callq	sdsempty
	movq	%rax, %r12
	movq	server+2872(%rip), %r14
	subq	server+1000(%rip), %r14
	testq	%r13, %r13
	movl	$.L.str.384, %eax
	cmoveq	%rax, %r13
	movl	$.L.str.385, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	movl	%eax, -196(%rbp)        # 4-byte Spill
	testl	%eax, %eax
	sete	%bl
	movl	$.L.str.384, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	sete	%r15b
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	leaq	-1040(%rbp), %rsi
	xorl	%edi, %edi
	callq	getrusage
	leaq	-1312(%rbp), %rsi
	movl	$-1, %edi
	callq	getrusage
	orb	%bl, %r15b
	movb	%r15b, -41(%rbp)        # 1-byte Spill
	movq	%r13, -136(%rbp)        # 8-byte Spill
	jne	.LBB72_2
# %bb.1:
	movl	$.L.str.386, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB72_7
.LBB72_2:
	movl	$.L.str.178, %ecx
	cmpl	$0, server+2924(%rip)
	jne	.LBB72_4
# %bb.3:
	cmpl	$0, server+164(%rip)
	movl	$.L.str.388, %eax
	movl	$.L.str.387, %ecx
	cmoveq	%rax, %rcx
.LBB72_4:
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	cmpb	$0, genRedisInfoString.call_uname(%rip)
	jne	.LBB72_6
# %bb.5:
	movl	$genRedisInfoString.name, %edi
	callq	uname
	movb	$1, genRedisInfoString.call_uname(%rip)
.LBB72_6:
	movl	server+80(%rip), %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	redisGitSHA1
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	redisGitDirty
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	xorl	%r15d, %r15d
	testq	%rax, %rax
	setg	%r15b
	callq	redisBuildId
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	server+112(%rip), %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	aeGetApiName
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	getpid
	cltq
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	server+216(%rip), %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$1749024623285053783, %rcx # imm = 0x1845C8A0CE512957
	movq	%r14, %rax
	imulq	%rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$13, %rbx
	addq	%rax, %rbx
	movl	server+40(%rip), %r10d
	movl	server+36(%rip), %r11d
	movq	%r14, %r13
	movq	server+16(%rip), %r14
	testq	%r14, %r14
	movl	$.L.str.309, %eax
	cmoveq	%rax, %r14
	movq	server+8(%rip), %r12
	testq	%r12, %r12
	cmoveq	%rax, %r12
	movl	$.L.str.389, %esi
	movl	$.L.str.390, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	%r15d, %r8d
	movq	-80(%rbp), %r9          # 8-byte Reload
	movl	$0, %eax
	pushq	%r12
	pushq	%r14
	pushq	-72(%rbp)               # 8-byte Folded Reload
	pushq	%r11
	pushq	%r10
	pushq	%rbx
	pushq	%r13
	pushq	-88(%rbp)               # 8-byte Folded Reload
	pushq	$server+120
	pushq	-96(%rbp)               # 8-byte Folded Reload
	pushq	$1
	pushq	$2
	pushq	$4
	pushq	$.L.str.391
	pushq	-104(%rbp)              # 8-byte Folded Reload
	pushq	-112(%rbp)              # 8-byte Folded Reload
	pushq	$genRedisInfoString.name+260
	pushq	$genRedisInfoString.name+130
	pushq	$genRedisInfoString.name
	pushq	-56(%rbp)               # 8-byte Folded Reload
	callq	sdscatprintf
	addq	$160, %rsp
	movq	%rax, %r12
	movl	$1, -56(%rbp)           # 4-byte Folded Spill
	movb	-41(%rbp), %r15b        # 1-byte Reload
	testb	%r15b, %r15b
	movq	-136(%rbp), %r13        # 8-byte Reload
	jne	.LBB72_8
.LBB72_7:
	movl	$.L.str.392, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB72_11
.LBB72_8:
	movq	ClientsPeakMemInput(%rip), %rbx
	movq	ClientsPeakMemOutput(%rip), %r14
	movq	ClientsPeakMemInput+8(%rip), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	ClientsPeakMemOutput+8(%rip), %rax
	cmpq	%r14, %rax
	cmovaq	%rax, %r14
	movq	ClientsPeakMemInput+16(%rip), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	ClientsPeakMemOutput+16(%rip), %rax
	cmpq	%r14, %rax
	cmovaq	%rax, %r14
	movq	ClientsPeakMemInput+24(%rip), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	ClientsPeakMemOutput+24(%rip), %rax
	cmpq	%r14, %rax
	cmovaq	%rax, %r14
	movq	ClientsPeakMemInput+32(%rip), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	ClientsPeakMemOutput+32(%rip), %rax
	cmpq	%r14, %rax
	cmovaq	%rax, %r14
	movq	ClientsPeakMemInput+40(%rip), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	ClientsPeakMemOutput+40(%rip), %rax
	cmpq	%r14, %rax
	cmovaq	%rax, %r14
	movq	ClientsPeakMemInput+48(%rip), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	ClientsPeakMemOutput+48(%rip), %rax
	cmpq	%r14, %rax
	cmovaq	%rax, %r14
	movq	ClientsPeakMemInput+56(%rip), %rax
	cmpq	%rbx, %rax
	cmovaq	%rax, %rbx
	movq	ClientsPeakMemOutput+56(%rip), %rax
	cmpq	%r14, %rax
	cmovaq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB72_10
# %bb.9:
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB72_10:
	addl	$1, -56(%rbp)           # 4-byte Folded Spill
	movq	server+512(%rip), %rax
	movq	40(%rax), %rdx
	movq	server+536(%rip), %rax
	subq	40(%rax), %rdx
	movl	server+2736(%rip), %r9d
	movl	$.L.str.393, %esi
	movq	%r12, %rdi
	movq	%rbx, %rcx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r12
	testb	%r15b, %r15b
	jne	.LBB72_12
.LBB72_11:
	movl	$.L.str.190, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB72_18
.LBB72_12:
	callq	zmalloc_used_memory
	movq	%rax, %r14
	movq	server+3144(%rip), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	evictPolicyToString
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	server+2992(%rip), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	lua_gc
	movslq	%eax, %r15
	shlq	$10, %r15
	callq	getMemoryOverheadData
	movq	%rax, %rbx
	cmpq	server+1112(%rip), %r14
	jbe	.LBB72_14
# %bb.13:
	movq	%r14, server+1112(%rip)
.LBB72_14:
	leaq	-512(%rbp), %rdi
	movq	%r14, %rsi
	callq	bytesToHuman
	movq	server+1112(%rip), %rsi
	leaq	-384(%rbp), %rdi
	callq	bytesToHuman
	leaq	-448(%rbp), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	bytesToHuman
	leaq	-768(%rbp), %rdi
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	callq	bytesToHuman
	movq	56(%rbx), %rsi
	leaq	-704(%rbp), %rdi
	callq	bytesToHuman
	movq	server+1208(%rip), %rsi
	leaq	-640(%rbp), %rdi
	callq	bytesToHuman
	movq	server+2704(%rip), %rsi
	leaq	-576(%rbp), %rdi
	callq	bytesToHuman
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	movq	%r14, -120(%rbp)        # 8-byte Spill
	je	.LBB72_16
# %bb.15:
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB72_17
.LBB72_16:
	movq	%r12, -64(%rbp)         # 8-byte Spill
.LBB72_17:
	addl	$1, -56(%rbp)           # 4-byte Folded Spill
	movq	server+1208(%rip), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	server+1112(%rip), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movss	100(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movq	64(%rbx), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	72(%rbx), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movss	96(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movups	server+1216(%rip), %xmm0
	movaps	%xmm0, -224(%rbp)       # 16-byte Spill
	movq	server+1232(%rip), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	16(%rbx), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	56(%rbx), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	server+3016(%rip), %rax
	movq	72(%rax), %r12
	addq	40(%rax), %r12
	movq	server+2704(%rip), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movss	120(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movq	128(%rbx), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movss	136(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movq	144(%rbx), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movss	152(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movq	160(%rbx), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movss	104(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movq	112(%rbx), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	callq	freeMemoryGetNotCountedMemory
	movq	%rax, %r14
	movups	24(%rbx), %xmm0
	movaps	%xmm0, -320(%rbp)       # 16-byte Spill
	movups	40(%rbx), %xmm0
	movaps	%xmm0, -304(%rbp)       # 16-byte Spill
	movl	server+92(%rip), %r15d
	callq	lazyfreeGetPendingObjectsCount
	subq	$240, %rsp
	movq	%rax, 232(%rsp)
	movl	%r15d, 224(%rsp)
	movq	%r14, 176(%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 168(%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 160(%rsp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, 152(%rsp)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, 144(%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 136(%rsp)
	leaq	-576(%rbp), %rax
	movq	%rax, 128(%rsp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 120(%rsp)
	movq	%r12, 112(%rsp)
	leaq	-704(%rbp), %rax
	movq	%rax, 104(%rsp)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, 96(%rsp)
	leaq	-768(%rbp), %rax
	movq	%rax, 88(%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 80(%rsp)
	leaq	-448(%rbp), %rax
	movq	%rax, 72(%rsp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 56(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movaps	-304(%rbp), %xmm0       # 16-byte Reload
	movups	%xmm0, 200(%rsp)
	movaps	-320(%rbp), %xmm0       # 16-byte Reload
	movups	%xmm0, 184(%rsp)
	movaps	-224(%rbp), %xmm0       # 16-byte Reload
	movups	%xmm0, 40(%rsp)
	leaq	-384(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$.L.str.395, 216(%rsp)
	leaq	-512(%rbp), %rcx
	leaq	-640(%rbp), %r9
	movl	$.L.str.394, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-192(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-176(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-168(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-152(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movb	$6, %al
	callq	sdscatprintf
	addq	$240, %rsp
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	freeMemoryOverheadData
	movb	-41(%rbp), %r15b        # 1-byte Reload
	testb	%r15b, %r15b
	jne	.LBB72_21
.LBB72_18:
	movl	$.L.str.396, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB72_20
# %bb.19:
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB72_43
.LBB72_20:
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	je	.LBB72_30
.LBB72_21:
	addl	$1, -56(%rbp)           # 4-byte Folded Spill
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB72_22:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	server+860(%rip), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movq	server+2080(%rip), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	cmpl	$0, server+2176(%rip)
	movl	$.L.str.398, %eax
	movl	$.L.str.399, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	cmpl	$-1, server+2096(%rip)
	setne	%bl
	movq	server+2136(%rip), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	server+2152(%rip), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	$-1, %r15
	movq	$-1, %r11
	je	.LBB72_24
# %bb.23:
	xorl	%edi, %edi
	callq	time
	movq	%rax, %r11
	subq	server+2160(%rip), %r11
.LBB72_24:
	movb	%bl, %r13b
	xorl	%r14d, %r14d
	cmpl	$0, server+1880(%rip)
	setne	%r14b
	xorl	%r12d, %r12d
	cmpl	$-1, server+1940(%rip)
	movq	server+1256(%rip), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	setne	%r12b
	movl	server+1936(%rip), %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	server+1984(%rip), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	je	.LBB72_26
# %bb.25:
	xorl	%edi, %edi
	movq	%r11, %rbx
	callq	time
	movq	%rbx, %r11
	movq	%rax, %r15
	subq	server+1992(%rip), %r15
.LBB72_26:
	cmpl	$0, server+2000(%rip)
	movl	$.L.str.398, %eax
	movl	$.L.str.399, %ebx
	movl	$.L.str.399, %r10d
	cmoveq	%rax, %r10
	cmpl	$0, server+2024(%rip)
	cmoveq	%rax, %rbx
	movl	$.L.str.397, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-112(%rbp), %edx        # 4-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%r13d, %r8d
	movq	-96(%rbp), %r9          # 8-byte Reload
	movl	$0, %eax
	pushq	server+1264(%rip)
	pushq	%rbx
	pushq	%r10
	pushq	%r15
	pushq	-128(%rbp)              # 8-byte Folded Reload
	pushq	-80(%rbp)               # 8-byte Folded Reload
	pushq	%r12
	pushq	%r14
	pushq	-88(%rbp)               # 8-byte Folded Reload
	pushq	%r11
	pushq	-120(%rbp)              # 8-byte Folded Reload
	pushq	-72(%rbp)               # 8-byte Folded Reload
	callq	sdscatprintf
	addq	$96, %rsp
	movq	%rax, %r12
	cmpl	$0, server+1880(%rip)
	je	.LBB72_37
# %bb.27:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	server+1920(%rip), %r13
	movq	server+1912(%rip), %r15
	movl	server+1936(%rip), %r12d
	movq	server+1952(%rip), %rax
	movzbl	-1(%rax), %ebx
	movl	%ebx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB72_31
# %bb.28:
	movl	%ebx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI72_0(,%rcx,8)
.LBB72_29:
	shrq	$3, %rbx
	jmp	.LBB72_36
.LBB72_30:
	movl	$1, -56(%rbp)           # 4-byte Folded Spill
	jmp	.LBB72_22
.LBB72_31:
	xorl	%ebx, %ebx
	jmp	.LBB72_36
.LBB72_32:
	movzbl	-3(%rax), %ebx
	jmp	.LBB72_36
.LBB72_33:
	movzwl	-5(%rax), %ebx
	jmp	.LBB72_36
.LBB72_34:
	movl	-9(%rax), %ebx
	jmp	.LBB72_36
.LBB72_35:
	movq	-17(%rax), %rbx
.LBB72_36:
	movl	$42, __A_VARIABLE(%rip)
	callq	aofRewriteBufferSize
	movq	%rax, %r14
	movl	$1, %edi
	callq	bioPendingJobsOfType
	movq	%rax, %r10
	subq	$8, %rsp
	movl	$.L.str.400, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rdx
	movq	%r15, %rcx
	movl	%r12d, %r8d
	movq	%rbx, %r9
	xorl	%eax, %eax
	pushq	server+2008(%rip)
	pushq	%r10
	pushq	%r14
	callq	sdscatprintf
	addq	$32, %rsp
	movq	%rax, %r12
.LBB72_37:
	cmpl	$0, server+860(%rip)
	movb	-41(%rbp), %r15b        # 1-byte Reload
	movq	-136(%rbp), %r13        # 8-byte Reload
	je	.LBB72_40
# %bb.38:
	movq	server+872(%rip), %r14
	cvtsi2sd	%r14, %xmm1
	movq	server+864(%rip), %rbx
	leaq	1(%rbx), %rax
	cvtsi2sd	%rax, %xmm0
	divsd	%xmm0, %xmm1
	mulsd	.LCPI72_0(%rip), %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	xorl	%edi, %edi
	callq	time
	movq	server+880(%rip), %r10
	subq	%r10, %rax
	je	.LBB72_41
# %bb.39:
	subq	%r14, %rbx
	imulq	%rbx, %rax
	movq	server+872(%rip), %r8
	leaq	1(%r8), %rcx
	cqto
	idivq	%rcx
	movq	%rax, %r9
	jmp	.LBB72_42
.LBB72_40:
	movl	-56(%rbp), %ebx         # 4-byte Reload
	testb	%r15b, %r15b
	je	.LBB72_43
	jmp	.LBB72_45
.LBB72_41:
	movl	$1, %r9d
	movq	server+872(%rip), %r8
.LBB72_42:
	movl	-56(%rbp), %ebx         # 4-byte Reload
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	server+864(%rip), %rcx
	movl	$.L.str.401, %esi
	movq	%r12, %rdi
	movq	%r10, %rdx
	movb	$1, %al
	callq	sdscatprintf
	movq	%rax, %r12
	testb	%r15b, %r15b
	jne	.LBB72_45
.LBB72_43:
	movl	$.L.str.402, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB72_47
# %bb.44:
	testl	%ebx, %ebx
	je	.LBB72_55
.LBB72_45:
	addl	$1, %ebx
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB72_46:
	movq	server+1016(%rip), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	server+1296(%rip), %rax
	addq	server+1288(%rip), %rax
	addq	server+1304(%rip), %rax
	addq	server+1312(%rip), %rax
	addq	server+1320(%rip), %rax
	addq	server+1328(%rip), %rax
	addq	server+1336(%rip), %rax
	addq	server+1344(%rip), %rax
	addq	server+1352(%rip), %rax
	addq	server+1360(%rip), %rax
	addq	server+1368(%rip), %rax
	addq	server+1376(%rip), %rax
	addq	server+1384(%rip), %rax
	addq	server+1392(%rip), %rax
	addq	server+1400(%rip), %rax
	movq	server+1008(%rip), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	server+1408(%rip), %rcx
	leaq	(%rcx,%rax), %rdx
	addq	$15, %rdx
	addq	%rcx, %rax
	cmovnsq	%rax, %rdx
	sarq	$4, %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1240(%rip), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	server+1448(%rip), %rax
	addq	server+1440(%rip), %rax
	addq	server+1456(%rip), %rax
	addq	server+1464(%rip), %rax
	addq	server+1472(%rip), %rax
	addq	server+1480(%rip), %rax
	addq	server+1488(%rip), %rax
	addq	server+1496(%rip), %rax
	addq	server+1504(%rip), %rax
	addq	server+1512(%rip), %rax
	addq	server+1520(%rip), %rax
	addq	server+1528(%rip), %rax
	addq	server+1536(%rip), %rax
	addq	server+1544(%rip), %rax
	movq	server+1248(%rip), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	addq	server+1552(%rip), %rax
	movq	server+1560(%rip), %rcx
	leaq	(%rcx,%rax), %rdx
	addq	$15, %rdx
	addq	%rcx, %rax
	cmovnsq	%rax, %rdx
	sarq	$4, %rdx
	cvtsi2ss	%rdx, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movss	.LCPI72_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movq	server+1600(%rip), %rax
	addq	server+1592(%rip), %rax
	addq	server+1608(%rip), %rax
	addq	server+1616(%rip), %rax
	addq	server+1624(%rip), %rax
	addq	server+1632(%rip), %rax
	addq	server+1640(%rip), %rax
	addq	server+1648(%rip), %rax
	addq	server+1656(%rip), %rax
	addq	server+1664(%rip), %rax
	addq	server+1672(%rip), %rax
	addq	server+1680(%rip), %rax
	addq	server+1688(%rip), %rax
	addq	server+1696(%rip), %rax
	addq	server+1704(%rip), %rax
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movq	server+1712(%rip), %rcx
	leaq	(%rcx,%rax), %rdx
	addq	$15, %rdx
	addq	%rcx, %rax
	cmovnsq	%rax, %rdx
	sarq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rdx, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	server+1136(%rip), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	server+1144(%rip), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	server+1152(%rip), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	server+1160(%rip), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movsd	server+1032(%rip), %xmm0 # xmm0 = mem[0],zero
	mulsd	.LCPI72_0(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movq	server+2904(%rip), %rax
	movq	72(%rax), %r12
	addq	40(%rax), %r12
	movq	server+840(%rip), %rax
	movq	72(%rax), %r15
	addq	40(%rax), %r15
	movq	server+1024(%rip), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	server+2912(%rip), %rax
	movq	40(%rax), %rbx
	movq	server+1040(%rip), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	server+1048(%rip), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	server+1056(%rip), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	server+1064(%rip), %r14
	movq	server+1120(%rip), %r13
	callq	getSlaveKeyWithExpireCount
	movups	server+1072(%rip), %xmm0
	movups	server+1088(%rip), %xmm1
	subq	$160, %rsp
	movq	%rax, 112(%rsp)
	movq	%r15, 104(%rsp)
	movq	%r13, 96(%rsp)
	movq	%rbx, 88(%rsp)
	movq	%r12, 80(%rsp)
	movq	%r14, 72(%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 56(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movups	%xmm1, 136(%rsp)
	movups	%xmm0, 120(%rsp)
	movl	$.L.str.403, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movb	$3, %al
	callq	sdscatprintf
	addq	$160, %rsp
	movq	%rax, %r12
	movb	-41(%rbp), %r15b        # 1-byte Reload
	testb	%r15b, %r15b
	movq	-136(%rbp), %r13        # 8-byte Reload
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jne	.LBB72_49
.LBB72_47:
	movl	$.L.str.404, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB72_84
# %bb.48:
	testl	%ebx, %ebx
	je	.LBB72_56
.LBB72_49:
	addl	$1, %ebx
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB72_50:
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	cmpq	$0, server+2464(%rip)
	movl	$.L.str.406, %eax
	movl	$.L.str.407, %edx
	cmoveq	%rax, %rdx
	movl	$.L.str.405, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	server+2464(%rip), %rdx
	testq	%rdx, %rdx
	je	.LBB72_64
# %bb.51:
	movq	server+2480(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB72_53
# %bb.52:
	movl	server+2500(%rip), %esi
	cmpl	$15, %esi
	movl	$.L.str.409, %edi
	movl	$.L.str.410, %r8d
	cmoveq	%rdi, %r8
	movq	216(%rcx), %r10
	movl	server+2872(%rip), %r9d
	subl	144(%rcx), %r9d
	jmp	.LBB72_59
.LBB72_53:
	movq	server+2488(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB72_57
# %bb.54:
	movq	216(%rcx), %r10
	jmp	.LBB72_58
.LBB72_55:
	movl	$1, -56(%rbp)           # 4-byte Folded Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	jmp	.LBB72_46
.LBB72_56:
	movl	$1, %ebx
	jmp	.LBB72_50
.LBB72_57:
	movl	$1, %r10d
.LBB72_58:
	movl	server+2500(%rip), %esi
	cmpl	$15, %esi
	movl	$.L.str.409, %ecx
	movl	$.L.str.410, %r8d
	cmoveq	%rcx, %r8
	movl	$-1, %r9d
.LBB72_59:
	movl	server+2472(%rip), %ecx
	xorl	%ebx, %ebx
	cmpl	$14, %esi
	sete	%bl
	movl	$.L.str.408, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	pushq	%r10
	pushq	%rbx
	callq	sdscatprintf
	addq	$16, %rsp
	movl	server+2500(%rip), %ecx
	cmpl	$14, %ecx
	jne	.LBB72_61
# %bb.60:
	movq	server+2504(%rip), %rdx
	subq	server+2512(%rip), %rdx
	movl	server+2872(%rip), %ecx
	subl	server+2544(%rip), %ecx
	movl	$.L.str.411, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	server+2500(%rip), %ecx
.LBB72_61:
	cmpl	$15, %ecx
	je	.LBB72_63
# %bb.62:
	movq	server+2872(%rip), %rdx
	subq	server+2568(%rip), %rdx
	movl	$.L.str.412, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB72_63:
	movl	server+2580(%rip), %edx
	movl	server+2556(%rip), %ecx
	movl	$.L.str.413, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB72_64:
	movq	server+536(%rip), %rcx
	movq	40(%rcx), %rdx
	movl	$.L.str.414, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r13
	cmpl	$0, server+2432(%rip)
	je	.LBB72_67
# %bb.65:
	cmpl	$0, server+2436(%rip)
	je	.LBB72_67
# %bb.66:
	movl	server+2440(%rip), %edx
	movl	$.L.str.415, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r13
.LBB72_67:
	movq	server+536(%rip), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB72_83
# %bb.68:
	leaq	-384(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB72_82
# %bb.69:
	xorl	%r15d, %r15d
	jmp	.LBB72_74
	.p2align	4, 0x90
.LBB72_70:                              #   in Loop: Header=BB72_74 Depth=1
	movl	$.L.str.416, %r9d
.LBB72_71:                              #   in Loop: Header=BB72_74 Depth=1
	xorl	%ebx, %ebx
.LBB72_72:                              #   in Loop: Header=BB72_74 Depth=1
	movl	292(%r12), %r8d
	movl	$.L.str.419, %esi
	movq	%r13, %rdi
	movl	%r15d, %edx
	movq	%r14, %rcx
	xorl	%eax, %eax
	pushq	%rbx
	pushq	224(%r12)
	callq	sdscatprintf
	addq	$16, %rsp
	movq	%rax, %r13
	addl	$1, %r15d
.LBB72_73:                              #   in Loop: Header=BB72_74 Depth=1
	leaq	-384(%rbp), %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB72_82
.LBB72_74:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %r12
	cmpb	$0, 296(%r12)
	je	.LBB72_76
# %bb.75:                               #   in Loop: Header=BB72_74 Depth=1
	leaq	296(%r12), %r14
	jmp	.LBB72_77
	.p2align	4, 0x90
.LBB72_76:                              #   in Loop: Header=BB72_74 Depth=1
	movl	8(%r12), %edi
	movl	$46, %edx
	leaq	-512(%rbp), %r14
	movq	%r14, %rsi
	leaq	-448(%rbp), %rcx
	callq	anetPeerToString
	cmpl	$-1, %eax
	je	.LBB72_73
.LBB72_77:                              #   in Loop: Header=BB72_74 Depth=1
	movl	168(%r12), %eax
	leal	-6(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB72_70
# %bb.78:                               #   in Loop: Header=BB72_74 Depth=1
	cmpl	$9, %eax
	je	.LBB72_81
# %bb.79:                               #   in Loop: Header=BB72_74 Depth=1
	cmpl	$8, %eax
	jne	.LBB72_73
# %bb.80:                               #   in Loop: Header=BB72_74 Depth=1
	movl	$.L.str.417, %r9d
	jmp	.LBB72_71
.LBB72_81:                              #   in Loop: Header=BB72_74 Depth=1
	xorl	%edi, %edi
	callq	time
	movq	%rax, %rbx
	subq	232(%r12), %rbx
	movl	$.L.str.418, %r9d
	jmp	.LBB72_72
.LBB72_82:
	movb	-41(%rbp), %r15b        # 1-byte Reload
.LBB72_83:
	movq	server+2352(%rip), %r8
	movq	server+2360(%rip), %r9
	xorl	%ebx, %ebx
	cmpq	$0, server+2376(%rip)
	setne	%bl
	movl	$.L.str.420, %esi
	movl	$server+2268, %edx
	movl	$server+2309, %ecx
	movq	%r13, %rdi
	movl	$0, %eax
	pushq	server+2392(%rip)
	pushq	server+2408(%rip)
	pushq	server+2384(%rip)
	pushq	%rbx
	callq	sdscatprintf
	addq	$32, %rsp
	movq	%rax, %r12
	testb	%r15b, %r15b
	movq	-136(%rbp), %r13        # 8-byte Reload
	movl	-56(%rbp), %ebx         # 4-byte Reload
	jne	.LBB72_86
.LBB72_84:
	movl	$.L.str.421, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB72_86
# %bb.85:
	cmpl	$0, -196(%rbp)          # 4-byte Folded Reload
	jne	.LBB72_89
	jmp	.LBB72_91
.LBB72_86:
	testl	%ebx, %ebx
	je	.LBB72_88
# %bb.87:
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB72_88:
	addl	$1, %ebx
	movq	-1024(%rbp), %rdx
	movq	-1016(%rbp), %rcx
	movq	-1040(%rbp), %r8
	movq	-1032(%rbp), %r9
	movups	-1312(%rbp), %xmm0
	movupd	-1296(%rbp), %xmm1
	subq	$32, %rsp
	movups	%xmm0, 16(%rsp)
	movupd	%xmm1, (%rsp)
	movl	$.L.str.422, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	addq	$32, %rsp
	movq	%rax, %r12
	cmpl	$0, -196(%rbp)          # 4-byte Folded Reload
	je	.LBB72_91
.LBB72_89:
	movl	$.L.str.423, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB72_91
# %bb.90:
	testb	%r15b, %r15b
	je	.LBB72_98
	jmp	.LBB72_99
.LBB72_91:
	testl	%ebx, %ebx
	je	.LBB72_93
# %bb.92:
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB72_93:
	addl	$1, %ebx
	movl	%ebx, %r14d
	movl	$.L.str.424, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r12
	movq	server+56(%rip), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %rbx
	.p2align	4, 0x90
.LBB72_94:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB72_97
# %bb.95:                               #   in Loop: Header=BB72_94 Depth=1
	movq	8(%rax), %rax
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB72_94
# %bb.96:                               #   in Loop: Header=BB72_94 Depth=1
	movq	64(%rax), %r8
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r8, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rcx, %xmm1
	movq	(%rax), %rdx
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.425, %esi
	movq	%r12, %rdi
	movb	$1, %al
	callq	sdscatprintf
	movq	%rax, %r12
	jmp	.LBB72_94
.LBB72_97:
	movq	%rbx, %rdi
	callq	dictReleaseIterator
	movl	%r14d, %ebx
	testb	%r15b, %r15b
	jne	.LBB72_99
.LBB72_98:
	movl	$.L.str.178, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB72_102
.LBB72_99:
	testl	%ebx, %ebx
	je	.LBB72_101
# %bb.100:
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB72_101:
	addl	$1, %ebx
	movl	server+2924(%rip), %edx
	movl	$.L.str.426, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r12
	testb	%r15b, %r15b
	jne	.LBB72_103
.LBB72_102:
	movl	$.L.str.427, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB72_110
.LBB72_103:
	testl	%ebx, %ebx
	je	.LBB72_105
# %bb.104:
	movl	$.L.str.258, %esi
	movq	%r12, %rdi
	callq	sdscat
	movq	%rax, %r12
.LBB72_105:
	movl	$.L.str.428, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r12
	movl	server+1792(%rip), %eax
	testl	%eax, %eax
	jle	.LBB72_110
# %bb.106:                              # %.preheader
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB72_108
	.p2align	4, 0x90
.LBB72_107:                             #   in Loop: Header=BB72_108 Depth=1
	addq	$1, %r14
	movslq	%eax, %rcx
	addq	$64, %rbx
	cmpq	%rcx, %r14
	jge	.LBB72_110
.LBB72_108:                             # =>This Inner Loop Header: Depth=1
	movq	server+48(%rip), %rdx
	movq	(%rdx,%rbx), %rsi
	movq	8(%rdx,%rbx), %rdi
	movq	72(%rsi), %rcx
	addq	40(%rsi), %rcx
	movq	72(%rdi), %r8
	addq	40(%rdi), %r8
	movq	%r8, %rsi
	orq	%rcx, %rsi
	je	.LBB72_107
# %bb.109:                              #   in Loop: Header=BB72_108 Depth=1
	movq	48(%rdx,%rbx), %r9
	movl	$.L.str.429, %esi
	movq	%r12, %rdi
	movl	%r14d, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r12
	movl	server+1792(%rip), %eax
	jmp	.LBB72_107
.LBB72_110:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$1272, %rsp             # imm = 0x4F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	genRedisInfoString, .Lfunc_end72-genRedisInfoString
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI72_0:
	.quad	.LBB72_29
	.quad	.LBB72_32
	.quad	.LBB72_33
	.quad	.LBB72_34
	.quad	.LBB72_35
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function bytesToHuman
.LCPI73_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI73_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI73_2:
	.quad	4382002437431492608     # double 8.8817841970012523E-16
.LCPI73_3:
	.quad	4427038433705197568     # double 9.0949470177292824E-13
.LCPI73_4:
	.quad	4472074429978902528     # double 9.3132257461547852E-10
.LCPI73_5:
	.quad	4517110426252607488     # double 9.5367431640625E-7
.LCPI73_6:
	.quad	4562146422526312448     # double 9.765625E-4
	.text
	.p2align	4, 0x90
	.type	bytesToHuman,@function
bytesToHuman:                           # @bytesToHuman
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	cmpq	$1023, %rsi             # imm = 0x3FF
	ja	.LBB73_1
.LBB73_12:
	movl	$.L.str.488, %esi
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB73_13
.LBB73_1:
	cmpq	$1048575, %rdx          # imm = 0xFFFFF
	ja	.LBB73_4
# %bb.2:
	movq	%rdx, %xmm1
	punpckldq	.LCPI73_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI73_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI73_6(%rip), %xmm0
	movl	$.L.str.489, %esi
	jmp	.LBB73_3
.LBB73_4:
	cmpq	$1073741823, %rdx       # imm = 0x3FFFFFFF
	ja	.LBB73_6
# %bb.5:
	movq	%rdx, %xmm1
	punpckldq	.LCPI73_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI73_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI73_5(%rip), %xmm0
	movl	$.L.str.490, %esi
	jmp	.LBB73_3
.LBB73_6:
	movq	%rdx, %rax
	shrq	$40, %rax
	jne	.LBB73_8
# %bb.7:
	movq	%rdx, %xmm1
	punpckldq	.LCPI73_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI73_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI73_4(%rip), %xmm0
	movl	$.L.str.491, %esi
	jmp	.LBB73_3
.LBB73_8:
	movq	%rdx, %rax
	shrq	$50, %rax
	jne	.LBB73_10
# %bb.9:
	movq	%rdx, %xmm1
	punpckldq	.LCPI73_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI73_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI73_3(%rip), %xmm0
	movl	$.L.str.492, %esi
	jmp	.LBB73_3
.LBB73_10:
	movq	%rdx, %rax
	shrq	$60, %rax
	jne	.LBB73_12
# %bb.11:
	movq	%rdx, %xmm1
	punpckldq	.LCPI73_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI73_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI73_2(%rip), %xmm0
	movl	$.L.str.493, %esi
.LBB73_3:
	movb	$1, %al
	callq	sprintf
.LBB73_13:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end73:
	.size	bytesToHuman, .Lfunc_end73-bytesToHuman
                                        # -- End function
	.globl	createPidFile           # -- Begin function createPidFile
	.p2align	4, 0x90
	.type	createPidFile,@function
createPidFile:                          # @createPidFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+104(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB74_2
# %bb.1:
	movl	$.L.str.430, %edi
	callq	zstrdup
	movq	%rax, %rdi
	movq	%rax, server+104(%rip)
.LBB74_2:
	movl	$.L.str.13, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB74_4
# %bb.3:
	movq	%rax, %rbx
	callq	getpid
	movl	$.L.str.431, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	%rbx, %rdi
	callq	fclose
.LBB74_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end74:
	.size	createPidFile, .Lfunc_end74-createPidFile
                                        # -- End function
	.globl	daemonize               # -- Begin function daemonize
	.p2align	4, 0x90
	.type	daemonize,@function
daemonize:                              # @daemonize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	fork
	testl	%eax, %eax
	jne	.LBB75_5
# %bb.1:
	callq	setsid
	movl	$.L.str.432, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	open
	cmpl	$-1, %eax
	je	.LBB75_4
# %bb.2:
	movl	%eax, %ebx
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	dup2
	movl	%ebx, %edi
	movl	$1, %esi
	callq	dup2
	movl	%ebx, %edi
	movl	$2, %esi
	callq	dup2
	cmpl	$3, %ebx
	jl	.LBB75_4
# %bb.3:
	movl	%ebx, %edi
	callq	close
.LBB75_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB75_5:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end75:
	.size	daemonize, .Lfunc_end75-daemonize
                                        # -- End function
	.globl	version                 # -- Begin function version
	.p2align	4, 0x90
	.type	version,@function
version:                                # @version
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	callq	redisGitSHA1
	movq	%rax, %r14
	callq	redisGitDirty
	movq	%rax, %rdi
	callq	atoi
	xorl	%ebx, %ebx
	testl	%eax, %eax
	setg	%bl
	callq	redisBuildId
	movq	%rax, (%rsp)
	movl	$.L.str.433, %edi
	movl	$.L.str.390, %esi
	movl	$.L.str.395, %r8d
	movq	%r14, %rdx
	movl	%ebx, %ecx
	movl	$64, %r9d
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end76:
	.size	version, .Lfunc_end76-version
                                        # -- End function
	.globl	usage                   # -- Begin function usage
	.p2align	4, 0x90
	.type	usage,@function
usage:                                  # @usage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.434, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.435, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.436, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.437, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.438, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.439, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.440, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.441, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.442, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.443, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.444, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.445, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.446, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end77:
	.size	usage, .Lfunc_end77-usage
                                        # -- End function
	.globl	redisAsciiArt           # -- Begin function redisAsciiArt
	.p2align	4, 0x90
	.type	redisAsciiArt,@function
redisAsciiArt:                          # @redisAsciiArt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$16384, %edi            # imm = 0x4000
	callq	zmalloc
	movq	%rax, %r14
	movl	$.L.str.178, %r12d
	cmpl	$0, server+2924(%rip)
	je	.LBB78_1
# %bb.2:
	cmpl	$0, server+2248(%rip)
	jne	.LBB78_6
	jmp	.LBB78_3
.LBB78_1:
	cmpl	$0, server+164(%rip)
	movl	$.L.str.388, %eax
	movl	$.L.str.387, %r12d
	cmoveq	%rax, %r12
	cmpl	$0, server+2248(%rip)
	jne	.LBB78_6
.LBB78_3:
	movq	server+2240(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB78_4
.LBB78_6:
	cmpl	$0, server+176(%rip)
	je	.LBB78_7
.LBB78_5:
	callq	redisGitSHA1
	movq	%rax, %r15
	callq	redisGitDirty
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	xorl	%ebx, %ebx
	testq	%rax, %rax
	setg	%bl
	movl	server+216(%rip), %r13d
	callq	getpid
	movslq	%eax, %r10
	movl	$16384, %esi            # imm = 0x4000
	movl	$.L.str.447, %edx
	movl	$.L.str.390, %ecx
	movq	%r14, %rdi
	movq	%r15, %r8
	movl	%ebx, %r9d
	movl	$0, %eax
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	$.L.str.449
	callq	snprintf
	addq	$32, %rsp
	movl	$1026, %edi             # imm = 0x402
	movq	%r14, %rsi
	callq	serverLogRaw
	jmp	.LBB78_8
.LBB78_4:
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	isatty
	orl	server+176(%rip), %eax
	jne	.LBB78_5
.LBB78_7:
	movl	server+216(%rip), %ecx
	movl	$.L.str.448, %esi
	movl	$2, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB78_8:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end78:
	.size	redisAsciiArt, .Lfunc_end78-redisAsciiArt
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sigShutdownHandler
	.type	sigShutdownHandler,@function
sigShutdownHandler:                     # @sigShutdownHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$15, %edi
	movl	$.L.str.495, %eax
	movl	$.L.str.496, %ecx
	cmoveq	%rax, %rcx
	movl	$.L.str.494, %esi
	cmpl	$2, %edi
	cmovneq	%rcx, %rsi
	jne	.LBB79_2
# %bb.1:
	cmpl	$0, server+84(%rip)
	jne	.LBB79_4
.LBB79_2:
	cmpl	$0, server+860(%rip)
	jne	.LBB79_5
# %bb.3:
	movl	$3, %edi
	callq	serverLogFromHandler
	movl	$1, server+84(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB79_4:
	movl	$.L.str.497, %esi
	movl	$3, %edi
	callq	serverLogFromHandler
	callq	getpid
	movl	%eax, %edi
	callq	rdbRemoveTempFile
	movl	$1, %edi
	callq	exit
.LBB79_5:
	movl	$.L.str.498, %esi
	movl	$3, %edi
	callq	serverLogFromHandler
	xorl	%edi, %edi
	callq	exit
.Lfunc_end79:
	.size	sigShutdownHandler, .Lfunc_end79-sigShutdownHandler
                                        # -- End function
	.globl	checkForSentinelMode    # -- Begin function checkForSentinelMode
	.p2align	4, 0x90
	.type	checkForSentinelMode,@function
checkForSentinelMode:                   # @checkForSentinelMode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movl	%edi, %r15d
	movq	(%rsi), %rdi
	movl	$.L.str.450, %esi
	callq	strstr
	movl	$1, %r14d
	testq	%rax, %rax
	jne	.LBB80_7
# %bb.1:
	cmpl	$2, %r15d
	jl	.LBB80_6
# %bb.2:
	movslq	%r15d, %r15
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB80_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	movl	$.L.str.451, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB80_7
# %bb.4:                                #   in Loop: Header=BB80_3 Depth=1
	addq	$1, %rbx
	cmpq	%r15, %rbx
	jl	.LBB80_3
.LBB80_6:
	xorl	%r14d, %r14d
.LBB80_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end80:
	.size	checkForSentinelMode, .Lfunc_end80-checkForSentinelMode
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function loadDataFromDisk
.LCPI81_0:
	.long	1232348160              # float 1.0E+6
	.text
	.globl	loadDataFromDisk
	.p2align	4, 0x90
	.type	loadDataFromDisk,@function
loadDataFromDisk:                       # @loadDataFromDisk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	leaq	65456(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000000, 65456(%rbp), %rbx # imm = 0xF4240
	addq	65464(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, server+1880(%rip)
	jne	.LBB81_3
# %bb.1:
	movq	server+1888(%rip), %rdi
	callq	loadAppendOnlyFile
	testl	%eax, %eax
	jne	.LBB81_12
# %bb.2:
	leaq	65456(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65464(%rbp), %rax
	imulq	$1000000, 65456(%rbp), %rcx # imm = 0xF4240
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %rax
	addq	%rcx, %rax
	cvtsi2ss	%rax, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	divss	.LCPI81_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.452, %esi
	movl	$2, %edi
	movb	$1, %al
	callq	serverLog
	jmp	.LBB81_12
.LBB81_3:
	movups	.LloadDataFromDisk.rsi+48(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	movups	.LloadDataFromDisk.rsi+32(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movups	.LloadDataFromDisk.rsi+16(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movups	.LloadDataFromDisk.rsi(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	movq	server+2120(%rip), %rdi
	leaq	-80(%rbp), %rsi
	callq	rdbLoad
	testl	%eax, %eax
	je	.LBB81_4
# %bb.11:
	callq	__errno
	cmpl	$2, (%rax)
	jne	.LBB81_13
.LBB81_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB81_4:
	leaq	65440(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65448(%rbp), %rax
	imulq	$1000000, 65440(%rbp), %rcx # imm = 0xF4240
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %rax
	addq	%rcx, %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	divss	.LCPI81_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.453, %esi
	movl	$2, %edi
	movb	$1, %al
	callq	serverLog
	cmpq	$0, server+2464(%rip)
	je	.LBB81_5
.LBB81_7:
	cmpl	$0, -76(%rbp)
	je	.LBB81_12
# %bb.8:
	cmpq	$-1, -24(%rbp)
	je	.LBB81_12
# %bb.9:
	cmpl	$-1, -80(%rbp)
	je	.LBB81_12
# %bb.10:
	leaq	-72(%rbp), %rsi
	movl	$server+2268, %edi
	movl	$41, %edx
	callq	memcpy
	movq	-24(%rbp), %rax
	movq	%rax, server+2352(%rip)
	callq	replicationCacheMasterUsingMyself
	movq	server+2488(%rip), %rdi
	movl	-80(%rbp), %esi
	callq	selectDb
	jmp	.LBB81_12
.LBB81_5:
	cmpl	$0, server+2924(%rip)
	je	.LBB81_12
# %bb.6:
	movq	server+2944(%rip), %rax
	movq	(%rax), %rax
	testb	$2, 48(%rax)
	je	.LBB81_12
	jmp	.LBB81_7
.LBB81_13:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.454, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end81:
	.size	loadDataFromDisk, .Lfunc_end81-loadDataFromDisk
                                        # -- End function
	.globl	redisOutOfMemoryHandler # -- Begin function redisOutOfMemoryHandler
	.p2align	4, 0x90
	.type	redisOutOfMemoryHandler,@function
redisOutOfMemoryHandler:                # @redisOutOfMemoryHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movl	$.L.str.455, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.331, %edi
	movl	$.L.str.456, %edx
	movl	$3913, %esi             # imm = 0xF49
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end82:
	.size	redisOutOfMemoryHandler, .Lfunc_end82-redisOutOfMemoryHandler
                                        # -- End function
	.globl	redisSetProcTitle       # -- Begin function redisSetProcTitle
	.p2align	4, 0x90
	.type	redisSetProcTitle,@function
redisSetProcTitle:                      # @redisSetProcTitle
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end83:
	.size	redisSetProcTitle, .Lfunc_end83-redisSetProcTitle
                                        # -- End function
	.globl	redisSupervisedUpstart  # -- Begin function redisSupervisedUpstart
	.p2align	4, 0x90
	.type	redisSupervisedUpstart,@function
redisSupervisedUpstart:                 # @redisSupervisedUpstart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$.L.str.457, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB84_1
# %bb.2:
	movl	$.L.str.459, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$19, %edi
	callq	raise
	movl	$.L.str.457, %edi
	callq	unsetenv
	movl	$1, %ebx
	jmp	.LBB84_3
.LBB84_1:
	xorl	%ebx, %ebx
	movl	$.L.str.458, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB84_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end84:
	.size	redisSupervisedUpstart, .Lfunc_end84-redisSupervisedUpstart
                                        # -- End function
	.globl	redisSupervisedSystemd  # -- Begin function redisSupervisedSystemd
	.p2align	4, 0x90
	.type	redisSupervisedSystemd,@function
redisSupervisedSystemd:                 # @redisSupervisedSystemd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	movl	$.L.str.460, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB85_1
# %bb.2:
	movq	%rax, %rbx
	movsbl	(%rax), %esi
	movl	$.L.str.462, %edi
	callq	strchr
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB85_15
# %bb.3:
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$2, %rax
	jb	.LBB85_15
# %bb.4:
	xorl	%r15d, %r15d
	movl	$.L.str.463, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	socket
	cmpl	$-1, %eax
	je	.LBB85_5
# %bb.6:
	movl	%eax, %r14d
	leaq	-216(%rbp), %r15
	movl	$109, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$1, -216(%rbp)
	leaq	-215(%rbp), %rdi
	movl	$107, %edx
	movq	%rbx, %rsi
	callq	strncpy
	movb	$0, -108(%rbp)
	cmpb	$64, (%rbx)
	jne	.LBB85_8
# %bb.7:
	movb	$0, -215(%rbp)
.LBB85_8:
	leaq	-56(%rbp), %r12
	movl	$16, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	$.L.str.465, -56(%rbp)
	movl	$.L.str.465, %edi
	callq	strlen
	movq	%rax, -48(%rbp)
	leaq	-104(%rbp), %rdi
	movl	$48, %edx
	xorl	%esi, %esi
	callq	memset
	movq	%r15, -104(%rbp)
	movq	%rbx, %rdi
	callq	strlen
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movq	%r12, -88(%rbp)
	movl	$1, -80(%rbp)
	movl	$.L.str.460, %edi
	callq	unsetenv
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB85_11
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB85_10
.LBB85_11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rdi
	leaq	-104(%rbp), %rsi
	xorl	%r12d, %r12d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp0:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp0
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sendmsg
	movq	%rax, %rsi
.Ltmp1:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp1
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -36(%rbp)

	#NO_APP
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	js	.LBB85_13
.LBB85_14:
	movl	%r14d, %edi
	callq	close
	movl	$1, %r15d
	jmp	.LBB85_15
.LBB85_1:
	xorl	%r15d, %r15d
	movl	$.L.str.461, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB85_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB85_5:
	movl	$.L.str.464, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB85_15
.LBB85_10:
	leaq	-104(%rbp), %rsi
	movl	%r14d, %edi
	xorl	%edx, %edx
	callq	sendmsg
	movl	%eax, -36(%rbp)
	testl	%eax, %eax
	jns	.LBB85_14
.LBB85_13:
	xorl	%r15d, %r15d
	movl	$.L.str.466, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	%r14d, %edi
	callq	close
	jmp	.LBB85_15
.Lfunc_end85:
	.size	redisSupervisedSystemd, .Lfunc_end85-redisSupervisedSystemd
                                        # -- End function
	.globl	redisIsSupervised       # -- Begin function redisIsSupervised
	.p2align	4, 0x90
	.type	redisIsSupervised,@function
redisIsSupervised:                      # @redisIsSupervised
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	cmpl	$3, %edi
	je	.LBB86_6
# %bb.1:
	cmpl	$2, %edi
	je	.LBB86_8
# %bb.2:
	xorl	%ebx, %ebx
	cmpl	$1, %edi
	jne	.LBB86_14
# %bb.3:
	movl	$.L.str.457, %edi
	callq	getenv
	movq	%rax, %r14
	movl	$.L.str.460, %edi
	callq	getenv
	testq	%r14, %r14
	je	.LBB86_9
# %bb.4:
	movl	$.L.str.457, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB86_12
# %bb.5:
	movl	$.L.str.459, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$19, %edi
	callq	raise
	movl	$.L.str.457, %edi
	callq	unsetenv
	jmp	.LBB86_13
.LBB86_6:
	movl	$.L.str.457, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB86_11
# %bb.7:
	movl	$.L.str.459, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$19, %edi
	callq	raise
	movl	$.L.str.457, %edi
	callq	unsetenv
	movl	$1, %ebx
	jmp	.LBB86_13
.LBB86_8:
	callq	redisSupervisedSystemd
	movl	%eax, %ebx
	jmp	.LBB86_14
.LBB86_9:
	testq	%rax, %rax
	je	.LBB86_14
# %bb.10:
	callq	redisSupervisedSystemd
	jmp	.LBB86_14
.LBB86_11:
	xorl	%ebx, %ebx
.LBB86_12:
	movl	$.L.str.458, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB86_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB86_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end86:
	.size	redisIsSupervised, .Lfunc_end86-redisIsSupervised
                                        # -- End function
	.globl	redis_server_main       # -- Begin function redis_server_main
	.p2align	4, 0x90
	.type	redis_server_main,@function
redis_server_main:                      # @redis_server_main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r13
	movl	%edi, %r12d
	movl	$1, %r14d
	movl	$.L.str.309, %esi
	movl	$1, %edi
	callq	setlocale
	callq	tzset
	movl	$redisOutOfMemoryHandler, %edi
	callq	zmalloc_set_oom_handler
	xorl	%edi, %edi
	callq	time
	movq	%rax, %rbx
	callq	getpid
	xorl	%eax, %ebx
	movl	%ebx, %edi
	callq	srand
	leaq	65456(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rbx
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	getRandomHexChars
	movq	%rbx, %rdi
	callq	dictSetHashFunctionSeed
	movq	(%r13), %rdi
	movl	$.L.str.450, %esi
	callq	strstr
	movslq	%r12d, %r15
	testq	%rax, %rax
	jne	.LBB87_7
# %bb.1:
	cmpl	$2, %r12d
	jl	.LBB87_6
# %bb.2:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB87_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	movl	$.L.str.451, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB87_7
# %bb.4:                                #   in Loop: Header=BB87_3 Depth=1
	addq	$1, %rbx
	cmpq	%r15, %rbx
	jl	.LBB87_3
.LBB87_6:
	xorl	%r14d, %r14d
.LBB87_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, server+164(%rip)
	callq	initServerConfig
	callq	moduleInitModulesSystem
	movq	(%r13), %rdi
	callq	getAbsolutePath
	movq	%rax, server+16(%rip)
	leaq	8(,%r15,8), %rdi
	callq	zmalloc
	movq	%rax, server+24(%rip)
	movq	$0, (%rax,%r15,8)
	testl	%r12d, %r12d
	jle	.LBB87_10
# %bb.8:
	movl	%r12d, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB87_9:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	callq	zstrdup
	movq	server+24(%rip), %rcx
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.LBB87_9
.LBB87_10:
	cmpl	$0, server+164(%rip)
	je	.LBB87_12
# %bb.11:
	callq	initSentinelConfig
	callq	initSentinel
.LBB87_12:
	movq	(%r13), %rdi
	movl	$.L.str.467, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB87_14
# %bb.13:
	movl	%r12d, %edi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	redis_check_rdb_main
	jmp	.LBB87_16
.LBB87_14:
	movq	(%r13), %rdi
	movl	$.L.str.468, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB87_16
# %bb.15:
	movl	%r12d, %edi
	movq	%r13, %rsi
	callq	redis_check_aof_main
.LBB87_16:
	cmpl	$2, %r12d
	jl	.LBB87_51
# %bb.17:
	callq	sdsempty
	movq	%rax, %r15
	movq	8(%r13), %rdi
	movl	$.L.str.469, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB87_73
# %bb.18:
	movq	8(%r13), %rdi
	movl	$.L.str.470, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB87_73
# %bb.19:
	movq	8(%r13), %rdi
	movl	$.L.str.471, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB87_74
# %bb.20:
	movq	8(%r13), %rdi
	movl	$.L.str.472, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB87_74
# %bb.21:
	movq	8(%r13), %rdi
	movl	$.L.str.473, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB87_75
# %bb.22:
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	movq	8(%r13), %rdi
	cmpb	$45, (%rdi)
	jne	.LBB87_25
# %bb.23:
	cmpb	$45, 1(%rdi)
	jne	.LBB87_25
# %bb.24:
	movl	$1, %r12d
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB87_26
.LBB87_25:
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	getAbsolutePath
	movq	%rax, server+8(%rip)
	movq	server+24(%rip), %rax
	movq	8(%rax), %rdi
	callq	zfree
	movq	server+8(%rip), %rdi
	callq	zstrdup
	movq	server+24(%rip), %rcx
	movq	%rax, 8(%rcx)
	movl	$2, %r12d
.LBB87_26:
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, %r12d
	je	.LBB87_47
# %bb.27:                               # %.preheader
	movl	%eax, %r14d
	negl	%r14d
.LBB87_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_29 Depth 2
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movslq	%r12d, %rax
	leal	1(%rax), %r12d
	leaq	(,%rax,8), %r15
	addq	%r13, %r15
	.p2align	4, 0x90
.LBB87_29:                              #   Parent Loop BB87_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rbx
	cmpb	$45, (%rbx)
	jne	.LBB87_33
# %bb.30:                               #   in Loop: Header=BB87_29 Depth=2
	cmpb	$45, 1(%rbx)
	jne	.LBB87_33
# %bb.31:                               #   in Loop: Header=BB87_29 Depth=2
	movl	$.L.str.476, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB87_34
# %bb.32:                               #   in Loop: Header=BB87_29 Depth=2
	addq	$8, %r15
	leal	(%r14,%r12), %eax
	addl	$1, %eax
	movl	%r12d, %ecx
	addl	$1, %ecx
	movl	%ecx, %r12d
	cmpl	$1, %eax
	jne	.LBB87_29
	jmp	.LBB87_46
	.p2align	4, 0x90
.LBB87_33:                              #   in Loop: Header=BB87_28 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatrepr
	jmp	.LBB87_45
	.p2align	4, 0x90
.LBB87_34:                              #   in Loop: Header=BB87_28 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB87_43
# %bb.35:                               #   in Loop: Header=BB87_28 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI87_0(,%rcx,8)
.LBB87_36:                              #   in Loop: Header=BB87_28 Depth=1
	shrq	$3, %rax
	jmp	.LBB87_41
.LBB87_37:                              #   in Loop: Header=BB87_28 Depth=1
	movq	-17(%rdi), %rax
	jmp	.LBB87_41
.LBB87_38:                              #   in Loop: Header=BB87_28 Depth=1
	movzwl	-5(%rdi), %eax
	jmp	.LBB87_41
.LBB87_39:                              #   in Loop: Header=BB87_28 Depth=1
	movzbl	-3(%rdi), %eax
	jmp	.LBB87_41
.LBB87_40:                              #   in Loop: Header=BB87_28 Depth=1
	movl	-9(%rdi), %eax
.LBB87_41:                              #   in Loop: Header=BB87_28 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB87_44
# %bb.42:                               #   in Loop: Header=BB87_28 Depth=1
	movl	$.L.str.246, %esi
	callq	sdscat
	movq	%rax, %rdi
	jmp	.LBB87_44
.LBB87_43:                              #   in Loop: Header=BB87_28 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB87_44:                              #   in Loop: Header=BB87_28 Depth=1
	movq	(%r15), %rsi
	addq	$2, %rsi
	callq	sdscat
.LBB87_45:                              #   in Loop: Header=BB87_28 Depth=1
	movl	$.L.str.287, %esi
	movq	%rax, %rdi
	callq	sdscat
	movq	%rax, %r15
	movl	%r14d, %eax
	addl	%r12d, %eax
	jne	.LBB87_28
	jmp	.LBB87_47
.LBB87_46:
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB87_47:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB87_50
# %bb.48:
	cmpl	$0, server+164(%rip)
	je	.LBB87_50
# %bb.49:
	cmpb	$45, (%rbx)
	je	.LBB87_77
.LBB87_50:
	callq	resetServerSaveParams
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	loadServerConfig
	movq	%r15, %rdi
	callq	sdsfree
	movl	-44(%rbp), %r12d        # 4-byte Reload
.LBB87_51:
	movl	$.L.str.479, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	redisGitSHA1
	movq	%rax, %r15
	callq	redisGitDirty
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	xorl	%ebx, %ebx
	testq	%rax, %rax
	setg	%bl
	callq	getpid
	movl	%eax, (%rsp)
	movl	$.L.str.480, %esi
	movl	$.L.str.390, %edx
	movl	$3, %edi
	movl	$64, %ecx
	movq	%r15, %r8
	movl	%ebx, %r9d
	xorl	%eax, %eax
	callq	serverLog
	cmpl	$1, %r12d
	jne	.LBB87_53
# %bb.52:
	movq	(%r13), %rdx
	cmpl	$0, server+164(%rip)
	movl	$.L.str.310, %eax
	movl	$.L.str.387, %ecx
	cmoveq	%rax, %rcx
	movl	$.L.str.481, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB87_54
.LBB87_53:
	movl	$.L.str.482, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB87_54:
	movl	server+1800(%rip), %edi
	callq	redisIsSupervised
	movl	%eax, server+1796(%rip)
	cmpl	$0, server+1804(%rip)
	setne	%cl
	testl	%eax, %eax
	sete	%bl
	andb	%cl, %bl
	cmpb	$1, %bl
	jne	.LBB87_56
# %bb.55:
	callq	daemonize
.LBB87_56:
	callq	initServer
	movq	server+104(%rip), %rdi
	testq	%rdi, %rdi
	sete	%al
	notb	%bl
	testb	%al, %bl
	jne	.LBB87_62
# %bb.57:
	testq	%rdi, %rdi
	jne	.LBB87_59
# %bb.58:
	movl	$.L.str.430, %edi
	callq	zstrdup
	movq	%rax, %rdi
	movq	%rax, server+104(%rip)
.LBB87_59:
	movl	$.L.str.13, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB87_61
# %bb.60:
	movq	%rax, %rbx
	callq	getpid
	movl	$.L.str.431, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	%rbx, %rdi
	callq	fclose
.LBB87_61:
	movl	$42, __A_VARIABLE(%rip)
.LBB87_62:
	movl	$42, __A_VARIABLE(%rip)
	callq	redisAsciiArt
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+164(%rip)
	je	.LBB87_64
# %bb.63:
	callq	sentinelIsRunning
	jmp	.LBB87_70
.LBB87_64:
	movl	$.L.str.483, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	moduleLoadFromQueue
	callq	loadDataFromDisk
	cmpl	$0, server+2924(%rip)
	je	.LBB87_66
# %bb.65:
	callq	verifyClusterConfigWithData
	cmpl	$-1, %eax
	je	.LBB87_78
.LBB87_66:
	cmpl	$0, server+436(%rip)
	jle	.LBB87_68
# %bb.67:
	movl	$.L.str.485, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB87_68:
	cmpl	$0, server+440(%rip)
	jle	.LBB87_70
# %bb.69:
	movq	server+360(%rip), %rdx
	movl	$.L.str.486, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB87_70:
	movq	server+2704(%rip), %rdx
	leaq	-1(%rdx), %rax
	cmpq	$1048574, %rax          # imm = 0xFFFFE
	ja	.LBB87_72
# %bb.71:
	movl	$.L.str.487, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB87_72:
	movq	server+72(%rip), %rdi
	movl	$beforeSleep, %esi
	callq	aeSetBeforeSleepProc
	movq	server+72(%rip), %rdi
	movl	$afterSleep, %esi
	callq	aeSetAfterSleepProc
	movq	server+72(%rip), %rdi
	callq	aeMain
	movq	server+72(%rip), %rdi
	callq	aeDeleteEventLoop
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB87_73:
	callq	version
.LBB87_74:
	callq	usage
.LBB87_75:
	cmpl	$3, %r12d
	jne	.LBB87_80
# %bb.76:
	movq	16(%r13), %rdi
	callq	atoi
	movslq	%eax, %rdi
	movl	$50, %esi
	callq	memtest
	xorl	%edi, %edi
	callq	exit
.LBB87_77:
	movl	$.L.str.477, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.478, %esi
	jmp	.LBB87_79
.LBB87_78:
	movl	$.L.str.484, %esi
.LBB87_79:
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB87_80:
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.474, %esi
	xorl	%eax, %eax
	callq	fprintf
	callq	__getreent
	movq	24(%rax), %rdi
	movl	$.L.str.475, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end87:
	.size	redis_server_main, .Lfunc_end87-redis_server_main
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI87_0:
	.quad	.LBB87_36
	.quad	.LBB87_39
	.quad	.LBB87_38
	.quad	.LBB87_40
	.quad	.LBB87_37
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"module"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"as"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"get"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rF"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"set"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"wm"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"setnx"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"wmF"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"setex"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"psetex"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"append"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"strlen"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"del"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"w"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"unlink"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"wF"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"exists"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"setbit"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"getbit"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"bitfield"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"setrange"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"getrange"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"r"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"substr"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"incr"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"decr"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"mget"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"rpush"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"lpush"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"rpushx"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"lpushx"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"linsert"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"rpop"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"lpop"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"brpop"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"ws"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"brpoplpush"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"wms"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"blpop"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"llen"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"lindex"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"lset"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"lrange"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"ltrim"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"lrem"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"rpoplpush"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"sadd"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"srem"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"smove"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"sismember"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"scard"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"spop"
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"wRF"
	.size	.L.str.52, 4

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"srandmember"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"rR"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"sinter"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"rS"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"sinterstore"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"sunion"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"sunionstore"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"sdiff"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"sdiffstore"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"smembers"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"sscan"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"zadd"
	.size	.L.str.64, 5

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"zincrby"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"zrem"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"zremrangebyscore"
	.size	.L.str.67, 17

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"zremrangebyrank"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"zremrangebylex"
	.size	.L.str.69, 15

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"zunionstore"
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"zinterstore"
	.size	.L.str.71, 12

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"zrange"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"zrangebyscore"
	.size	.L.str.73, 14

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"zrevrangebyscore"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"zrangebylex"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"zrevrangebylex"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"zcount"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"zlexcount"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"zrevrange"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"zcard"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"zscore"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"zrank"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"zrevrank"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"zscan"
	.size	.L.str.84, 6

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"zpopmin"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"zpopmax"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"bzpopmin"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"wsF"
	.size	.L.str.88, 4

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"bzpopmax"
	.size	.L.str.89, 9

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"hset"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"hsetnx"
	.size	.L.str.91, 7

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"hget"
	.size	.L.str.92, 5

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"hmset"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"hmget"
	.size	.L.str.94, 6

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"hincrby"
	.size	.L.str.95, 8

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"hincrbyfloat"
	.size	.L.str.96, 13

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"hdel"
	.size	.L.str.97, 5

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"hlen"
	.size	.L.str.98, 5

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"hstrlen"
	.size	.L.str.99, 8

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"hkeys"
	.size	.L.str.100, 6

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"hvals"
	.size	.L.str.101, 6

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"hgetall"
	.size	.L.str.102, 8

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"hexists"
	.size	.L.str.103, 8

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"hscan"
	.size	.L.str.104, 6

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"incrby"
	.size	.L.str.105, 7

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"decrby"
	.size	.L.str.106, 7

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"incrbyfloat"
	.size	.L.str.107, 12

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"getset"
	.size	.L.str.108, 7

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"mset"
	.size	.L.str.109, 5

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"msetnx"
	.size	.L.str.110, 7

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"randomkey"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"select"
	.size	.L.str.112, 7

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"lF"
	.size	.L.str.113, 3

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"swapdb"
	.size	.L.str.114, 7

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"move"
	.size	.L.str.115, 5

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"rename"
	.size	.L.str.116, 7

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"renamenx"
	.size	.L.str.117, 9

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"expire"
	.size	.L.str.118, 7

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"expireat"
	.size	.L.str.119, 9

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"pexpire"
	.size	.L.str.120, 8

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"pexpireat"
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"keys"
	.size	.L.str.122, 5

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"scan"
	.size	.L.str.123, 5

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"dbsize"
	.size	.L.str.124, 7

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"auth"
	.size	.L.str.125, 5

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"sltF"
	.size	.L.str.126, 5

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"ping"
	.size	.L.str.127, 5

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"tF"
	.size	.L.str.128, 3

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"echo"
	.size	.L.str.129, 5

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"F"
	.size	.L.str.130, 2

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"save"
	.size	.L.str.131, 5

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"bgsave"
	.size	.L.str.132, 7

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"bgrewriteaof"
	.size	.L.str.133, 13

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"shutdown"
	.size	.L.str.134, 9

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"aslt"
	.size	.L.str.135, 5

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"lastsave"
	.size	.L.str.136, 9

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"RF"
	.size	.L.str.137, 3

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"type"
	.size	.L.str.138, 5

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"multi"
	.size	.L.str.139, 6

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"sF"
	.size	.L.str.140, 3

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"exec"
	.size	.L.str.141, 5

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"sM"
	.size	.L.str.142, 3

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"discard"
	.size	.L.str.143, 8

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"sync"
	.size	.L.str.144, 5

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"ars"
	.size	.L.str.145, 4

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"psync"
	.size	.L.str.146, 6

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"replconf"
	.size	.L.str.147, 9

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"flushdb"
	.size	.L.str.148, 8

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"flushall"
	.size	.L.str.149, 9

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"sort"
	.size	.L.str.150, 5

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"info"
	.size	.L.str.151, 5

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"ltR"
	.size	.L.str.152, 4

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"monitor"
	.size	.L.str.153, 8

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"ttl"
	.size	.L.str.154, 4

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"rFR"
	.size	.L.str.155, 4

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"touch"
	.size	.L.str.156, 6

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"pttl"
	.size	.L.str.157, 5

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"persist"
	.size	.L.str.158, 8

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"slaveof"
	.size	.L.str.159, 8

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"ast"
	.size	.L.str.160, 4

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"replicaof"
	.size	.L.str.161, 10

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"role"
	.size	.L.str.162, 5

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"lst"
	.size	.L.str.163, 4

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"debug"
	.size	.L.str.164, 6

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"config"
	.size	.L.str.165, 7

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"last"
	.size	.L.str.166, 5

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"subscribe"
	.size	.L.str.167, 10

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"pslt"
	.size	.L.str.168, 5

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"unsubscribe"
	.size	.L.str.169, 12

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"psubscribe"
	.size	.L.str.170, 11

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"punsubscribe"
	.size	.L.str.171, 13

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"publish"
	.size	.L.str.172, 8

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"pltF"
	.size	.L.str.173, 5

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"pubsub"
	.size	.L.str.174, 7

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"pltR"
	.size	.L.str.175, 5

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"watch"
	.size	.L.str.176, 6

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"unwatch"
	.size	.L.str.177, 8

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"cluster"
	.size	.L.str.178, 8

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"a"
	.size	.L.str.179, 2

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"restore"
	.size	.L.str.180, 8

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"restore-asking"
	.size	.L.str.181, 15

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"wmk"
	.size	.L.str.182, 4

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"migrate"
	.size	.L.str.183, 8

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"wR"
	.size	.L.str.184, 3

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"asking"
	.size	.L.str.185, 7

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"readonly"
	.size	.L.str.186, 9

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"readwrite"
	.size	.L.str.187, 10

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"dump"
	.size	.L.str.188, 5

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"object"
	.size	.L.str.189, 7

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"memory"
	.size	.L.str.190, 7

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"client"
	.size	.L.str.191, 7

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"eval"
	.size	.L.str.192, 5

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"s"
	.size	.L.str.193, 2

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"evalsha"
	.size	.L.str.194, 8

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"slowlog"
	.size	.L.str.195, 8

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"aR"
	.size	.L.str.196, 3

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"script"
	.size	.L.str.197, 7

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"time"
	.size	.L.str.198, 5

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"bitop"
	.size	.L.str.199, 6

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"bitcount"
	.size	.L.str.200, 9

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"bitpos"
	.size	.L.str.201, 7

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"wait"
	.size	.L.str.202, 5

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"command"
	.size	.L.str.203, 8

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"geoadd"
	.size	.L.str.204, 7

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"georadius"
	.size	.L.str.205, 10

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"georadius_ro"
	.size	.L.str.206, 13

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"georadiusbymember"
	.size	.L.str.207, 18

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"georadiusbymember_ro"
	.size	.L.str.208, 21

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"geohash"
	.size	.L.str.209, 8

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"geopos"
	.size	.L.str.210, 7

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"geodist"
	.size	.L.str.211, 8

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"pfselftest"
	.size	.L.str.212, 11

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"pfadd"
	.size	.L.str.213, 6

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"pfcount"
	.size	.L.str.214, 8

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"pfmerge"
	.size	.L.str.215, 8

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"pfdebug"
	.size	.L.str.216, 8

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"xadd"
	.size	.L.str.217, 5

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"wmFR"
	.size	.L.str.218, 5

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"xrange"
	.size	.L.str.219, 7

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"xrevrange"
	.size	.L.str.220, 10

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"xlen"
	.size	.L.str.221, 5

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"xread"
	.size	.L.str.222, 6

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"rs"
	.size	.L.str.223, 3

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"xreadgroup"
	.size	.L.str.224, 11

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"xgroup"
	.size	.L.str.225, 7

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"xsetid"
	.size	.L.str.226, 7

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"xack"
	.size	.L.str.227, 5

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"xpending"
	.size	.L.str.228, 9

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"xclaim"
	.size	.L.str.229, 7

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"xinfo"
	.size	.L.str.230, 6

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"xdel"
	.size	.L.str.231, 5

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"xtrim"
	.size	.L.str.232, 6

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"wFR"
	.size	.L.str.233, 4

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"post"
	.size	.L.str.234, 5

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"lt"
	.size	.L.str.235, 3

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"host:"
	.size	.L.str.236, 6

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"latency"
	.size	.L.str.237, 8

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"lolwut"
	.size	.L.str.238, 7

	.type	redisCommandTable,@object # @redisCommandTable
	.data
	.globl	redisCommandTable
	.p2align	4
redisCommandTable:
	.quad	.L.str
	.quad	moduleCommand
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
	.quad	.L.str.2
	.quad	getCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.4
	.quad	setCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.6
	.quad	setnxCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.8
	.quad	setexCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.9
	.quad	psetexCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.10
	.quad	appendCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.11
	.quad	strlenCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.12
	.quad	delCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.14
	.quad	unlinkCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.16
	.quad	existsCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.17
	.quad	setbitCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.18
	.quad	getbitCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.19
	.quad	bitfieldCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.20
	.quad	setrangeCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.21
	.quad	getrangeCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.23
	.quad	getrangeCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.24
	.quad	incrCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.25
	.quad	decrCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.26
	.quad	mgetCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.27
	.quad	rpushCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.28
	.quad	lpushCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.29
	.quad	rpushxCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.30
	.quad	lpushxCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.31
	.quad	linsertCommand
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.32
	.quad	rpopCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.33
	.quad	lpopCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.34
	.quad	brpopCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.35
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967294              # 0xfffffffe
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.36
	.quad	brpoplpushCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.37
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.38
	.quad	blpopCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.35
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967294              # 0xfffffffe
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.39
	.quad	llenCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.40
	.quad	lindexCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.41
	.quad	lsetCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.42
	.quad	lrangeCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.43
	.quad	ltrimCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.44
	.quad	lremCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.45
	.quad	rpoplpushCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.46
	.quad	saddCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.47
	.quad	sremCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.48
	.quad	smoveCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.49
	.quad	sismemberCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.50
	.quad	scardCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.51
	.quad	spopCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.52
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.53
	.quad	srandmemberCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.55
	.quad	sinterCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.56
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.57
	.quad	sinterstoreCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.58
	.quad	sunionCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.56
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.59
	.quad	sunionstoreCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.60
	.quad	sdiffCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.56
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.61
	.quad	sdiffstoreCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.62
	.quad	sinterCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.56
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.63
	.quad	sscanCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.64
	.quad	zaddCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.65
	.quad	zincrbyCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.66
	.quad	zremCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.67
	.quad	zremrangebyscoreCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.68
	.quad	zremrangebyrankCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.69
	.quad	zremrangebylexCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.70
	.quad	zunionstoreCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	zunionInterGetKeys
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.71
	.quad	zinterstoreCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	zunionInterGetKeys
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.72
	.quad	zrangeCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.73
	.quad	zrangebyscoreCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.74
	.quad	zrevrangebyscoreCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.75
	.quad	zrangebylexCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.76
	.quad	zrevrangebylexCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.77
	.quad	zcountCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.78
	.quad	zlexcountCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.79
	.quad	zrevrangeCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.80
	.quad	zcardCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.81
	.quad	zscoreCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.82
	.quad	zrankCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.83
	.quad	zrevrankCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.84
	.quad	zscanCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.85
	.quad	zpopminCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.86
	.quad	zpopmaxCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.87
	.quad	bzpopminCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.88
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967294              # 0xfffffffe
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.89
	.quad	bzpopmaxCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.88
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967294              # 0xfffffffe
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.90
	.quad	hsetCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.91
	.quad	hsetnxCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.92
	.quad	hgetCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.93
	.quad	hsetCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.94
	.quad	hmgetCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.95
	.quad	hincrbyCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.96
	.quad	hincrbyfloatCommand
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.97
	.quad	hdelCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.98
	.quad	hlenCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.99
	.quad	hstrlenCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.100
	.quad	hkeysCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.56
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.101
	.quad	hvalsCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.56
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.102
	.quad	hgetallCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.103
	.quad	hexistsCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.104
	.quad	hscanCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.105
	.quad	incrbyCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.106
	.quad	decrbyCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.107
	.quad	incrbyfloatCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.108
	.quad	getsetCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.109
	.quad	msetCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.110
	.quad	msetnxCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.111
	.quad	randomkeyCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.112
	.quad	selectCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.113
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.114
	.quad	swapdbCommand
	.long	3                       # 0x3
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
	.quad	.L.str.115
	.quad	moveCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.116
	.quad	renameCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.117
	.quad	renamenxCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.118
	.quad	expireCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.119
	.quad	expireatCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.120
	.quad	pexpireCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.121
	.quad	pexpireatCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.122
	.quad	keysCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.56
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.123
	.quad	scanCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.124
	.quad	dbsizeCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.125
	.quad	authCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.126
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.127
	.quad	pingCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.128
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.129
	.quad	echoCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.130
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.131
	.quad	saveCommand
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
	.quad	.L.str.132
	.quad	bgsaveCommand
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
	.quad	.L.str.133
	.quad	bgrewriteaofCommand
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
	.quad	.L.str.134
	.quad	shutdownCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.135
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.136
	.quad	lastsaveCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.137
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.138
	.quad	typeCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.139
	.quad	multiCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.140
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.141
	.quad	execCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.142
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.143
	.quad	discardCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.140
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.144
	.quad	syncCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.145
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.146
	.quad	syncCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.145
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.147
	.quad	replconfCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.135
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.148
	.quad	flushdbCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.149
	.quad	flushallCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.150
	.quad	sortCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	sortGetKeys
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.151
	.quad	infoCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.152
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.153
	.quad	monitorCommand
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
	.quad	.L.str.154
	.quad	ttlCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.155
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.156
	.quad	touchCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.157
	.quad	pttlCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.155
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.158
	.quad	persistCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.159
	.quad	replicaofCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.160
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.161
	.quad	replicaofCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.160
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.162
	.quad	roleCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.163
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.164
	.quad	debugCommand
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
	.quad	.L.str.165
	.quad	configCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.166
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.167
	.quad	subscribeCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.168
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.169
	.quad	unsubscribeCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.168
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.170
	.quad	psubscribeCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.168
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.171
	.quad	punsubscribeCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.168
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.172
	.quad	publishCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.173
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.174
	.quad	pubsubCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.175
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.176
	.quad	watchCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.140
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.177
	.quad	unwatchCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.140
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.178
	.quad	clusterCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.179
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.180
	.quad	restoreCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.181
	.quad	restoreCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.182
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.183
	.quad	migrateCommand
	.long	4294967290              # 0xfffffffa
	.zero	4
	.quad	.L.str.184
	.long	0                       # 0x0
	.zero	4
	.quad	migrateGetKeys
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.185
	.quad	askingCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.130
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.186
	.quad	readonlyCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.130
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.187
	.quad	readwriteCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.130
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.188
	.quad	dumpCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.189
	.quad	objectCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.190
	.quad	memoryCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.191
	.quad	clientCommand
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
	.quad	.L.str.192
	.quad	evalCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.193
	.long	0                       # 0x0
	.zero	4
	.quad	evalGetKeys
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.194
	.quad	evalShaCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.193
	.long	0                       # 0x0
	.zero	4
	.quad	evalGetKeys
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.195
	.quad	slowlogCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.196
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.197
	.quad	scriptCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.193
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.198
	.quad	timeCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.137
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.199
	.quad	bitopCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	2                       # 0x2
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.200
	.quad	bitcountCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.201
	.quad	bitposCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.202
	.quad	waitCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.193
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.203
	.quad	commandCommand
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.152
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.204
	.quad	geoaddCommand
	.long	4294967291              # 0xfffffffb
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.205
	.quad	georadiusCommand
	.long	4294967290              # 0xfffffffa
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	georadiusGetKeys
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.206
	.quad	georadiusroCommand
	.long	4294967290              # 0xfffffffa
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	georadiusGetKeys
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.207
	.quad	georadiusbymemberCommand
	.long	4294967291              # 0xfffffffb
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	georadiusGetKeys
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.208
	.quad	georadiusbymemberroCommand
	.long	4294967291              # 0xfffffffb
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	georadiusGetKeys
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.209
	.quad	geohashCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.210
	.quad	geoposCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.211
	.quad	geodistCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.212
	.quad	pfselftestCommand
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.179
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.213
	.quad	pfaddCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.214
	.quad	pfcountCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.215
	.quad	pfmergeCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.216
	.quad	pfdebugCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.217
	.quad	xaddCommand
	.long	4294967291              # 0xfffffffb
	.zero	4
	.quad	.L.str.218
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.219
	.quad	xrangeCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.220
	.quad	xrevrangeCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.221
	.quad	xlenCommand
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.222
	.quad	xreadCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.223
	.long	0                       # 0x0
	.zero	4
	.quad	xreadGetKeys
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.224
	.quad	xreadCommand
	.long	4294967289              # 0xfffffff9
	.zero	4
	.quad	.L.str.35
	.long	0                       # 0x0
	.zero	4
	.quad	xreadGetKeys
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.225
	.quad	xgroupCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.226
	.quad	xsetidCommand
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.227
	.quad	xackCommand
	.long	4294967292              # 0xfffffffc
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.228
	.quad	xpendingCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.229
	.quad	xclaimCommand
	.long	4294967290              # 0xfffffffa
	.zero	4
	.quad	.L.str.52
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.230
	.quad	xinfoCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.54
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.231
	.quad	xdelCommand
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.232
	.quad	xtrimCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.233
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.234
	.quad	securityWarningCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.235
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.236
	.quad	securityWarningCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.235
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.237
	.quad	latencyCommand
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.135
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	.L.str.238
	.quad	lolwutCommand
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.size	redisCommandTable, 16000

	.type	.LserverLogRaw.syslogLevelMap,@object # @serverLogRaw.syslogLevelMap
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LserverLogRaw.syslogLevelMap:
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	5                       # 0x5
	.long	4                       # 0x4
	.size	.LserverLogRaw.syslogLevelMap, 16

	.type	.L.str.239,@object      # @.str.239
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.239:
	.asciz	".-*#"
	.size	.L.str.239, 5

	.type	server,@object          # @server
	.comm	server,3176,8
	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"%s"
	.size	.L.str.240, 3

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"%d %b %Y %H:%M:%S."
	.size	.L.str.241, 19

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"%03d"
	.size	.L.str.242, 5

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"%d:%c %s %c %s\n"
	.size	.L.str.243, 16

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	":signal-handler ("
	.size	.L.str.244, 18

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	") "
	.size	.L.str.245, 3

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"\n"
	.size	.L.str.246, 2

	.type	objectKeyPointerValueDictType,@object # @objectKeyPointerValueDictType
	.data
	.globl	objectKeyPointerValueDictType
	.p2align	3
objectKeyPointerValueDictType:
	.quad	dictEncObjHash
	.quad	0
	.quad	0
	.quad	dictEncObjKeyCompare
	.quad	dictObjectDestructor
	.quad	0
	.size	objectKeyPointerValueDictType, 48

	.type	objectKeyHeapPointerValueDictType,@object # @objectKeyHeapPointerValueDictType
	.globl	objectKeyHeapPointerValueDictType
	.p2align	3
objectKeyHeapPointerValueDictType:
	.quad	dictEncObjHash
	.quad	0
	.quad	0
	.quad	dictEncObjKeyCompare
	.quad	dictObjectDestructor
	.quad	dictVanillaFree
	.size	objectKeyHeapPointerValueDictType, 48

	.type	setDictType,@object     # @setDictType
	.globl	setDictType
	.p2align	3
setDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	setDictType, 48

	.type	zsetDictType,@object    # @zsetDictType
	.globl	zsetDictType
	.p2align	3
zsetDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	0
	.quad	0
	.size	zsetDictType, 48

	.type	dbDictType,@object      # @dbDictType
	.globl	dbDictType
	.p2align	3
dbDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	dictSdsDestructor
	.quad	dictObjectDestructor
	.size	dbDictType, 48

	.type	shaScriptObjectDictType,@object # @shaScriptObjectDictType
	.globl	shaScriptObjectDictType
	.p2align	3
shaScriptObjectDictType:
	.quad	dictSdsCaseHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCaseCompare
	.quad	dictSdsDestructor
	.quad	dictObjectDestructor
	.size	shaScriptObjectDictType, 48

	.type	keyptrDictType,@object  # @keyptrDictType
	.globl	keyptrDictType
	.p2align	3
keyptrDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	0
	.quad	0
	.size	keyptrDictType, 48

	.type	commandTableDictType,@object # @commandTableDictType
	.globl	commandTableDictType
	.p2align	3
commandTableDictType:
	.quad	dictSdsCaseHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCaseCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	commandTableDictType, 48

	.type	hashDictType,@object    # @hashDictType
	.globl	hashDictType
	.p2align	3
hashDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	dictSdsDestructor
	.quad	dictSdsDestructor
	.size	hashDictType, 48

	.type	keylistDictType,@object # @keylistDictType
	.globl	keylistDictType
	.p2align	3
keylistDictType:
	.quad	dictObjHash
	.quad	0
	.quad	0
	.quad	dictObjKeyCompare
	.quad	dictObjectDestructor
	.quad	dictListDestructor
	.size	keylistDictType, 48

	.type	clusterNodesDictType,@object # @clusterNodesDictType
	.globl	clusterNodesDictType
	.p2align	3
clusterNodesDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	clusterNodesDictType, 48

	.type	clusterNodesBlackListDictType,@object # @clusterNodesBlackListDictType
	.globl	clusterNodesBlackListDictType
	.p2align	3
clusterNodesBlackListDictType:
	.quad	dictSdsCaseHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCaseCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	clusterNodesBlackListDictType, 48

	.type	modulesDictType,@object # @modulesDictType
	.globl	modulesDictType
	.p2align	3
modulesDictType:
	.quad	dictSdsCaseHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCaseCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	modulesDictType, 48

	.type	migrateCacheDictType,@object # @migrateCacheDictType
	.globl	migrateCacheDictType
	.p2align	3
migrateCacheDictType:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	migrateCacheDictType, 48

	.type	replScriptCacheDictType,@object # @replScriptCacheDictType
	.globl	replScriptCacheDictType
	.p2align	3
replScriptCacheDictType:
	.quad	dictSdsCaseHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCaseCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	replScriptCacheDictType, 48

	.type	.L.str.247,@object      # @.str.247
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.247:
	.asciz	"Closing idle client"
	.size	.L.str.247, 20

	.type	ClientsPeakMemInput,@object # @ClientsPeakMemInput
	.comm	ClientsPeakMemInput,64,16
	.type	ClientsPeakMemOutput,@object # @ClientsPeakMemOutput
	.comm	ClientsPeakMemOutput,64,16
	.type	databasesCron.resize_db,@object # @databasesCron.resize_db
	.local	databasesCron.resize_db
	.comm	databasesCron.resize_db,4,4
	.type	databasesCron.rehash_db,@object # @databasesCron.rehash_db
	.local	databasesCron.rehash_db
	.comm	databasesCron.rehash_db,4,4
	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"SIGTERM received but errors trying to shut down the server, check the logs for more information"
	.size	.L.str.248, 96

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"DB %d: %lld keys (%lld volatile) in %lld slots HT."
	.size	.L.str.249, 51

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"%lu clients connected (%lu replicas), %zu bytes in use"
	.size	.L.str.250, 55

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"wait3() returned an error: %s. rdb_child_pid = %d, aof_child_pid = %d"
	.size	.L.str.251, 70

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"Warning, detected child with unmatched pid: %ld"
	.size	.L.str.252, 48

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"%d changes in %d seconds. Saving..."
	.size	.L.str.253, 36

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"Starting automatic rewriting of AOF on %lld%% growth"
	.size	.L.str.254, 53

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"REPLCONF"
	.size	.L.str.255, 9

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"GETACK"
	.size	.L.str.256, 7

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"*"
	.size	.L.str.257, 2

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"\r\n"
	.size	.L.str.258, 3

	.type	shared,@object          # @shared
	.comm	shared,80976,8
	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"+OK\r\n"
	.size	.L.str.259, 6

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"-ERR\r\n"
	.size	.L.str.260, 7

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"$0\r\n\r\n"
	.size	.L.str.261, 7

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	":0\r\n"
	.size	.L.str.262, 5

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	":1\r\n"
	.size	.L.str.263, 5

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	":-1\r\n"
	.size	.L.str.264, 6

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"$-1\r\n"
	.size	.L.str.265, 6

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"*-1\r\n"
	.size	.L.str.266, 6

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"*0\r\n"
	.size	.L.str.267, 5

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"+PONG\r\n"
	.size	.L.str.268, 8

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"+QUEUED\r\n"
	.size	.L.str.269, 10

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"*2\r\n$1\r\n0\r\n*0\r\n"
	.size	.L.str.270, 16

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"-WRONGTYPE Operation against a key holding the wrong kind of value\r\n"
	.size	.L.str.271, 69

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"-ERR no such key\r\n"
	.size	.L.str.272, 19

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"-ERR syntax error\r\n"
	.size	.L.str.273, 20

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"-ERR source and destination objects are the same\r\n"
	.size	.L.str.274, 51

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"-ERR index out of range\r\n"
	.size	.L.str.275, 26

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"-NOSCRIPT No matching script. Please use EVAL.\r\n"
	.size	.L.str.276, 49

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"-LOADING Redis is loading the dataset in memory\r\n"
	.size	.L.str.277, 50

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"-BUSY Redis is busy running a script. You can only call SCRIPT KILL or SHUTDOWN NOSAVE.\r\n"
	.size	.L.str.278, 90

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"-MASTERDOWN Link with MASTER is down and replica-serve-stale-data is set to 'no'.\r\n"
	.size	.L.str.279, 84

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"-MISCONF Redis is configured to save RDB snapshots, but it is currently not able to persist on disk. Commands that may modify the data set are disabled, because this instance is configured to report errors during writes if RDB snapshotting fails (stop-writes-on-bgsave-error option). Please check the Redis logs for details about the RDB error.\r\n"
	.size	.L.str.280, 347

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"-READONLY You can't write against a read only replica.\r\n"
	.size	.L.str.281, 57

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"-NOAUTH Authentication required.\r\n"
	.size	.L.str.282, 35

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"-OOM command not allowed when used memory > 'maxmemory'.\r\n"
	.size	.L.str.283, 59

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"-EXECABORT Transaction discarded because of previous errors.\r\n"
	.size	.L.str.284, 63

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"-NOREPLICAS Not enough good replicas to write.\r\n"
	.size	.L.str.285, 49

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"-BUSYKEY Target key name already exists.\r\n"
	.size	.L.str.286, 43

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	" "
	.size	.L.str.287, 2

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	":"
	.size	.L.str.288, 2

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"+"
	.size	.L.str.289, 2

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"*2\r\n$6\r\nSELECT\r\n$%d\r\n%s\r\n"
	.size	.L.str.290, 26

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"$7\r\nmessage\r\n"
	.size	.L.str.291, 14

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"$8\r\npmessage\r\n"
	.size	.L.str.292, 15

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"$9\r\nsubscribe\r\n"
	.size	.L.str.293, 16

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"$11\r\nunsubscribe\r\n"
	.size	.L.str.294, 19

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"$10\r\npsubscribe\r\n"
	.size	.L.str.295, 18

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"$12\r\npunsubscribe\r\n"
	.size	.L.str.296, 20

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"DEL"
	.size	.L.str.297, 4

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"UNLINK"
	.size	.L.str.298, 7

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"RPOP"
	.size	.L.str.299, 5

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"LPOP"
	.size	.L.str.300, 5

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"LPUSH"
	.size	.L.str.301, 6

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"RPOPLPUSH"
	.size	.L.str.302, 10

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"ZPOPMIN"
	.size	.L.str.303, 8

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"ZPOPMAX"
	.size	.L.str.304, 8

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"*%d\r\n"
	.size	.L.str.305, 6

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"$%d\r\n"
	.size	.L.str.306, 6

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"minstring"
	.size	.L.str.307, 10

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"maxstring"
	.size	.L.str.308, 10

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.zero	1
	.size	.L.str.309, 1

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"redis"
	.size	.L.str.310, 6

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"dump.rdb"
	.size	.L.str.311, 9

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"appendonly.aof"
	.size	.L.str.312, 15

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"nodes.conf"
	.size	.L.str.313, 11

	.type	R_Zero,@object          # @R_Zero
	.comm	R_Zero,8,8
	.type	R_PosInf,@object        # @R_PosInf
	.comm	R_PosInf,8,8
	.type	R_NegInf,@object        # @R_NegInf
	.comm	R_NegInf,8,8
	.type	R_Nan,@object           # @R_Nan
	.comm	R_Nan,8,8
	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"<no assertion failed>"
	.size	.L.str.314, 22

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"<no file>"
	.size	.L.str.315, 10

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"Can't restart: this process has no permissions to execute %s"
	.size	.L.str.316, 61

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"Can't restart: configuration rewrite process failed"
	.size	.L.str.317, 52

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"Can't restart: error preparing for shutdown"
	.size	.L.str.318, 44

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"Unable to obtain the current NOFILE limit (%s), assuming 1024 and setting the max clients configuration accordingly."
	.size	.L.str.319, 117

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"Your current 'ulimit -n' of %llu is not enough for the server to start. Please increase your open file limit to at least %llu. Exiting."
	.size	.L.str.320, 136

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"You requested maxclients of %d requiring at least %llu max file descriptors."
	.size	.L.str.321, 77

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"Server can't set maximum open files to %llu because of OS error: %s."
	.size	.L.str.322, 69

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"Current maximum open files is %llu. maxclients has been reduced to %d to compensate for low ulimit. If you need higher maxclients increase 'ulimit -n'."
	.size	.L.str.323, 152

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"Increased maximum number of open files to %llu (it was originally set to %llu)."
	.size	.L.str.324, 80

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"Not listening to IPv6: unsupproted"
	.size	.L.str.325, 35

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"Not listening to IPv4: unsupproted"
	.size	.L.str.326, 35

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"Could not create server TCP listening socket %s:%d: %s"
	.size	.L.str.327, 55

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"Failed creating the event loop. Error message: '%s'"
	.size	.L.str.328, 52

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"Opening Unix socket: %s"
	.size	.L.str.329, 24

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"Configured to not listen anywhere, exiting."
	.size	.L.str.330, 44

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.c"
	.size	.L.str.331, 74

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"Can't create event loop timers."
	.size	.L.str.332, 32

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"Unrecoverable error creating server.ipfd file event."
	.size	.L.str.333, 53

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"Unrecoverable error creating server.sofd file event."
	.size	.L.str.334, 53

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"Error registering the readable event for the module blocked clients subsystem."
	.size	.L.str.335, 79

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"Can't open the append-only file: %s"
	.size	.L.str.336, 36

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"Warning: 32 bit instance detected but no memory limit set. Setting 3 GB maxmemory limit with 'noeviction' policy now."
	.size	.L.str.337, 118

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"Unsupported command flag"
	.size	.L.str.338, 25

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"retval1 == DICT_OK && retval2 == DICT_OK"
	.size	.L.str.339, 41

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"fast-command"
	.size	.L.str.340, 13

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"quit"
	.size	.L.str.341, 5

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"`%.*s`, "
	.size	.L.str.342, 9

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"unknown command `%s`, with args beginning with: %s"
	.size	.L.str.343, 51

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"wrong number of arguments for '%s' command"
	.size	.L.str.344, 43

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"-MISCONF Errors writing to the AOF file: %s\r\n"
	.size	.L.str.345, 46

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"only (P)SUBSCRIBE / (P)UNSUBSCRIBE / PING / QUIT allowed in this context"
	.size	.L.str.346, 73

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"Removing the unix socket file."
	.size	.L.str.347, 31

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"User requested shutdown..."
	.size	.L.str.348, 27

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"There is a child saving an .rdb. Killing it!"
	.size	.L.str.349, 45

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"Writing initial AOF, can't exit."
	.size	.L.str.350, 33

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"There is a child rewriting the AOF. Killing it!"
	.size	.L.str.351, 48

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"Calling fsync() on the AOF file."
	.size	.L.str.352, 33

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"Saving the final RDB snapshot before exiting."
	.size	.L.str.353, 46

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"Error trying to save the DB, can't exit."
	.size	.L.str.354, 41

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"Removing the pid file."
	.size	.L.str.355, 23

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"%s is now ready to exit, bye bye..."
	.size	.L.str.356, 36

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"Sentinel"
	.size	.L.str.357, 9

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"Redis"
	.size	.L.str.358, 6

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"Client sent AUTH, but no password is set"
	.size	.L.str.359, 41

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"invalid password"
	.size	.L.str.360, 17

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"pong"
	.size	.L.str.361, 5

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"write"
	.size	.L.str.362, 6

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"denyoom"
	.size	.L.str.363, 8

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"admin"
	.size	.L.str.364, 6

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"noscript"
	.size	.L.str.365, 9

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"random"
	.size	.L.str.366, 7

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"sort_for_script"
	.size	.L.str.367, 16

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"loading"
	.size	.L.str.368, 8

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"stale"
	.size	.L.str.369, 6

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"skip_monitor"
	.size	.L.str.370, 13

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"fast"
	.size	.L.str.371, 5

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"movablekeys"
	.size	.L.str.372, 12

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"help"
	.size	.L.str.373, 5

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"(no subcommand) -- Return details about all Redis commands."
	.size	.L.str.374, 60

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"COUNT -- Return the total number of commands in this Redis server."
	.size	.L.str.375, 67

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"GETKEYS <full-command> -- Return the keys from a full Redis command."
	.size	.L.str.376, 69

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"INFO [command-name ...] -- Return details about multiple Redis commands."
	.size	.L.str.377, 73

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"count"
	.size	.L.str.378, 6

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"getkeys"
	.size	.L.str.379, 8

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"Invalid command specified"
	.size	.L.str.380, 26

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"The command has no key arguments"
	.size	.L.str.381, 33

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"Invalid number of arguments specified for command"
	.size	.L.str.382, 50

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"Invalid arguments specified for command"
	.size	.L.str.383, 40

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	"default"
	.size	.L.str.384, 8

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"all"
	.size	.L.str.385, 4

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"server"
	.size	.L.str.386, 7

	.type	genRedisInfoString.call_uname,@object # @genRedisInfoString.call_uname
	.local	genRedisInfoString.call_uname
	.comm	genRedisInfoString.call_uname,1,4
	.type	genRedisInfoString.name,@object # @genRedisInfoString.name
	.local	genRedisInfoString.name
	.comm	genRedisInfoString.name,390,1
	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"sentinel"
	.size	.L.str.387, 9

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"standalone"
	.size	.L.str.388, 11

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"# Server\r\nredis_version:%s\r\nredis_git_sha1:%s\r\nredis_git_dirty:%d\r\nredis_build_id:%llx\r\nredis_mode:%s\r\nos:%s %s %s\r\narch_bits:%d\r\nmultiplexing_api:%s\r\natomicvar_api:%s\r\ngcc_version:%d.%d.%d\r\nprocess_id:%ld\r\nrun_id:%s\r\ntcp_port:%d\r\nuptime_in_seconds:%jd\r\nuptime_in_days:%jd\r\nhz:%d\r\nconfigured_hz:%d\r\nlru_clock:%ld\r\nexecutable:%s\r\nconfig_file:%s\r\n"
	.size	.L.str.389, 346

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"5.0.6"
	.size	.L.str.390, 6

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"atomic-builtin"
	.size	.L.str.391, 15

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"clients"
	.size	.L.str.392, 8

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"# Clients\r\nconnected_clients:%lu\r\nclient_recent_max_input_buffer:%zu\r\nclient_recent_max_output_buffer:%zu\r\nblocked_clients:%d\r\n"
	.size	.L.str.393, 128

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"# Memory\r\nused_memory:%zu\r\nused_memory_human:%s\r\nused_memory_rss:%zu\r\nused_memory_rss_human:%s\r\nused_memory_peak:%zu\r\nused_memory_peak_human:%s\r\nused_memory_peak_perc:%.2f%%\r\nused_memory_overhead:%zu\r\nused_memory_startup:%zu\r\nused_memory_dataset:%zu\r\nused_memory_dataset_perc:%.2f%%\r\nallocator_allocated:%zu\r\nallocator_active:%zu\r\nallocator_resident:%zu\r\ntotal_system_memory:%lu\r\ntotal_system_memory_human:%s\r\nused_memory_lua:%lld\r\nused_memory_lua_human:%s\r\nused_memory_scripts:%lld\r\nused_memory_scripts_human:%s\r\nnumber_of_cached_scripts:%lu\r\nmaxmemory:%lld\r\nmaxmemory_human:%s\r\nmaxmemory_policy:%s\r\nallocator_frag_ratio:%.2f\r\nallocator_frag_bytes:%zu\r\nallocator_rss_ratio:%.2f\r\nallocator_rss_bytes:%zd\r\nrss_overhead_ratio:%.2f\r\nrss_overhead_bytes:%zd\r\nmem_fragmentation_ratio:%.2f\r\nmem_fragmentation_bytes:%zd\r\nmem_not_counted_for_evict:%zu\r\nmem_replication_backlog:%zu\r\nmem_clients_slaves:%zu\r\nmem_clients_normal:%zu\r\nmem_aof_buffer:%zu\r\nmem_allocator:%s\r\nactive_defrag_running:%d\r\nlazyfree_pending_objects:%zu\r\n"
	.size	.L.str.394, 1016

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"libc"
	.size	.L.str.395, 5

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"persistence"
	.size	.L.str.396, 12

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"# Persistence\r\nloading:%d\r\nrdb_changes_since_last_save:%lld\r\nrdb_bgsave_in_progress:%d\r\nrdb_last_save_time:%jd\r\nrdb_last_bgsave_status:%s\r\nrdb_last_bgsave_time_sec:%jd\r\nrdb_current_bgsave_time_sec:%jd\r\nrdb_last_cow_size:%zu\r\naof_enabled:%d\r\naof_rewrite_in_progress:%d\r\naof_rewrite_scheduled:%d\r\naof_last_rewrite_time_sec:%jd\r\naof_current_rewrite_time_sec:%jd\r\naof_last_bgrewrite_status:%s\r\naof_last_write_status:%s\r\naof_last_cow_size:%zu\r\n"
	.size	.L.str.397, 440

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"ok"
	.size	.L.str.398, 3

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"err"
	.size	.L.str.399, 4

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"aof_current_size:%lld\r\naof_base_size:%lld\r\naof_pending_rewrite:%d\r\naof_buffer_length:%zu\r\naof_rewrite_buffer_length:%lu\r\naof_pending_bio_fsync:%llu\r\naof_delayed_fsync:%lu\r\n"
	.size	.L.str.400, 173

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"loading_start_time:%jd\r\nloading_total_bytes:%llu\r\nloading_loaded_bytes:%llu\r\nloading_loaded_perc:%.2f\r\nloading_eta_seconds:%jd\r\n"
	.size	.L.str.401, 129

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"stats"
	.size	.L.str.402, 6

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"# Stats\r\ntotal_connections_received:%lld\r\ntotal_commands_processed:%lld\r\ninstantaneous_ops_per_sec:%lld\r\ntotal_net_input_bytes:%lld\r\ntotal_net_output_bytes:%lld\r\ninstantaneous_input_kbps:%.2f\r\ninstantaneous_output_kbps:%.2f\r\nrejected_connections:%lld\r\nsync_full:%lld\r\nsync_partial_ok:%lld\r\nsync_partial_err:%lld\r\nexpired_keys:%lld\r\nexpired_stale_perc:%.2f\r\nexpired_time_cap_reached_count:%lld\r\nevicted_keys:%lld\r\nkeyspace_hits:%lld\r\nkeyspace_misses:%lld\r\npubsub_channels:%ld\r\npubsub_patterns:%lu\r\nlatest_fork_usec:%lld\r\nmigrate_cached_sockets:%ld\r\nslave_expires_tracked_keys:%zu\r\nactive_defrag_hits:%lld\r\nactive_defrag_misses:%lld\r\nactive_defrag_key_hits:%lld\r\nactive_defrag_key_misses:%lld\r\n"
	.size	.L.str.403, 693

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"replication"
	.size	.L.str.404, 12

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"# Replication\r\nrole:%s\r\n"
	.size	.L.str.405, 25

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"master"
	.size	.L.str.406, 7

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"slave"
	.size	.L.str.407, 6

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"master_host:%s\r\nmaster_port:%d\r\nmaster_link_status:%s\r\nmaster_last_io_seconds_ago:%d\r\nmaster_sync_in_progress:%d\r\nslave_repl_offset:%lld\r\n"
	.size	.L.str.408, 139

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"up"
	.size	.L.str.409, 3

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"down"
	.size	.L.str.410, 5

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"master_sync_left_bytes:%lld\r\nmaster_sync_last_io_seconds_ago:%d\r\n"
	.size	.L.str.411, 66

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"master_link_down_since_seconds:%jd\r\n"
	.size	.L.str.412, 37

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"slave_priority:%d\r\nslave_read_only:%d\r\n"
	.size	.L.str.413, 40

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"connected_slaves:%lu\r\n"
	.size	.L.str.414, 23

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"min_slaves_good_slaves:%d\r\n"
	.size	.L.str.415, 28

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"wait_bgsave"
	.size	.L.str.416, 12

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"send_bulk"
	.size	.L.str.417, 10

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"online"
	.size	.L.str.418, 7

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"slave%d:ip=%s,port=%d,state=%s,offset=%lld,lag=%ld\r\n"
	.size	.L.str.419, 53

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"master_replid:%s\r\nmaster_replid2:%s\r\nmaster_repl_offset:%lld\r\nsecond_repl_offset:%lld\r\nrepl_backlog_active:%d\r\nrepl_backlog_size:%lld\r\nrepl_backlog_first_byte_offset:%lld\r\nrepl_backlog_histlen:%lld\r\n"
	.size	.L.str.420, 200

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"cpu"
	.size	.L.str.421, 4

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"# CPU\r\nused_cpu_sys:%ld.%06ld\r\nused_cpu_user:%ld.%06ld\r\nused_cpu_sys_children:%ld.%06ld\r\nused_cpu_user_children:%ld.%06ld\r\n"
	.size	.L.str.422, 124

	.type	.L.str.423,@object      # @.str.423
.L.str.423:
	.asciz	"commandstats"
	.size	.L.str.423, 13

	.type	.L.str.424,@object      # @.str.424
.L.str.424:
	.asciz	"# Commandstats\r\n"
	.size	.L.str.424, 17

	.type	.L.str.425,@object      # @.str.425
.L.str.425:
	.asciz	"cmdstat_%s:calls=%lld,usec=%lld,usec_per_call=%.2f\r\n"
	.size	.L.str.425, 53

	.type	.L.str.426,@object      # @.str.426
.L.str.426:
	.asciz	"# Cluster\r\ncluster_enabled:%d\r\n"
	.size	.L.str.426, 32

	.type	.L.str.427,@object      # @.str.427
.L.str.427:
	.asciz	"keyspace"
	.size	.L.str.427, 9

	.type	.L.str.428,@object      # @.str.428
.L.str.428:
	.asciz	"# Keyspace\r\n"
	.size	.L.str.428, 13

	.type	.L.str.429,@object      # @.str.429
.L.str.429:
	.asciz	"db%d:keys=%lld,expires=%lld,avg_ttl=%lld\r\n"
	.size	.L.str.429, 43

	.type	.L.str.430,@object      # @.str.430
.L.str.430:
	.asciz	"/var/run/redis.pid"
	.size	.L.str.430, 19

	.type	.L.str.431,@object      # @.str.431
.L.str.431:
	.asciz	"%d\n"
	.size	.L.str.431, 4

	.type	.L.str.432,@object      # @.str.432
.L.str.432:
	.asciz	"/dev/null"
	.size	.L.str.432, 10

	.type	.L.str.433,@object      # @.str.433
.L.str.433:
	.asciz	"Redis server v=%s sha=%s:%d malloc=%s bits=%d build=%llx\n"
	.size	.L.str.433, 58

	.type	.L.str.434,@object      # @.str.434
.L.str.434:
	.asciz	"Usage: ./redis-server [/path/to/redis.conf] [options]\n"
	.size	.L.str.434, 55

	.type	.L.str.435,@object      # @.str.435
.L.str.435:
	.asciz	"       ./redis-server - (read config from stdin)\n"
	.size	.L.str.435, 50

	.type	.L.str.436,@object      # @.str.436
.L.str.436:
	.asciz	"       ./redis-server -v or --version\n"
	.size	.L.str.436, 39

	.type	.L.str.437,@object      # @.str.437
.L.str.437:
	.asciz	"       ./redis-server -h or --help\n"
	.size	.L.str.437, 36

	.type	.L.str.438,@object      # @.str.438
.L.str.438:
	.asciz	"       ./redis-server --test-memory <megabytes>\n\n"
	.size	.L.str.438, 50

	.type	.L.str.439,@object      # @.str.439
.L.str.439:
	.asciz	"Examples:\n"
	.size	.L.str.439, 11

	.type	.L.str.440,@object      # @.str.440
.L.str.440:
	.asciz	"       ./redis-server (run the server with default conf)\n"
	.size	.L.str.440, 58

	.type	.L.str.441,@object      # @.str.441
.L.str.441:
	.asciz	"       ./redis-server /etc/redis/6379.conf\n"
	.size	.L.str.441, 44

	.type	.L.str.442,@object      # @.str.442
.L.str.442:
	.asciz	"       ./redis-server --port 7777\n"
	.size	.L.str.442, 35

	.type	.L.str.443,@object      # @.str.443
.L.str.443:
	.asciz	"       ./redis-server --port 7777 --replicaof 127.0.0.1 8888\n"
	.size	.L.str.443, 62

	.type	.L.str.444,@object      # @.str.444
.L.str.444:
	.asciz	"       ./redis-server /etc/myredis.conf --loglevel verbose\n\n"
	.size	.L.str.444, 61

	.type	.L.str.445,@object      # @.str.445
.L.str.445:
	.asciz	"Sentinel mode:\n"
	.size	.L.str.445, 16

	.type	.L.str.446,@object      # @.str.446
.L.str.446:
	.asciz	"       ./redis-server /etc/sentinel.conf --sentinel\n"
	.size	.L.str.446, 53

	.type	.L.str.447,@object      # @.str.447
.L.str.447:
	.asciz	"                _._                                                  \n           _.-``__ ''-._                                             \n      _.-``    `.  `_.  ''-._           Redis %s (%s/%d) %s bit\n  .-`` .-```.  ```\\/    _.,_ ''-._                                   \n (    '      ,       .-`  | `,    )     Running in %s mode\n |`-._`-...-` __...-.``-._|'` _.-'|     Port: %d\n |    `-._   `._    /     _.-'    |     PID: %ld\n  `-._    `-._  `-./  _.-'    _.-'                                   \n |`-._`-._    `-.__.-'    _.-'_.-'|                                  \n |    `-._`-._        _.-'_.-'    |           http://redis.io        \n  `-._    `-._`-.__.-'_.-'    _.-'                                   \n |`-._`-._    `-.__.-'    _.-'_.-'|                                  \n |    `-._`-._        _.-'_.-'    |                                  \n  `-._    `-._`-.__.-'_.-'    _.-'                                   \n      `-._    `-.__.-'    _.-'                                       \n          `-._        _.-'                                           \n              `-.__.-'                                               \n\n"
	.size	.L.str.447, 1133

	.type	.L.str.448,@object      # @.str.448
.L.str.448:
	.asciz	"Running mode=%s, port=%d."
	.size	.L.str.448, 26

	.type	.L.str.449,@object      # @.str.449
.L.str.449:
	.asciz	"64"
	.size	.L.str.449, 3

	.type	.L.str.450,@object      # @.str.450
.L.str.450:
	.asciz	"redis-sentinel"
	.size	.L.str.450, 15

	.type	.L.str.451,@object      # @.str.451
.L.str.451:
	.asciz	"--sentinel"
	.size	.L.str.451, 11

	.type	.L.str.452,@object      # @.str.452
.L.str.452:
	.asciz	"DB loaded from append only file: %.3f seconds"
	.size	.L.str.452, 46

	.type	.LloadDataFromDisk.rsi,@object # @loadDataFromDisk.rsi
	.section	.rodata,"a",@progbits
	.p2align	3
.LloadDataFromDisk.rsi:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.asciz	"000000000000000000000000000000\000\000\000\000\000\000\000\000\000\000"
	.zero	7
	.quad	-1                      # 0xffffffffffffffff
	.size	.LloadDataFromDisk.rsi, 64

	.type	.L.str.453,@object      # @.str.453
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.453:
	.asciz	"DB loaded from disk: %.3f seconds"
	.size	.L.str.453, 34

	.type	.L.str.454,@object      # @.str.454
.L.str.454:
	.asciz	"Fatal error loading the DB: %s. Exiting."
	.size	.L.str.454, 41

	.type	.L.str.455,@object      # @.str.455
.L.str.455:
	.asciz	"Out Of Memory allocating %zu bytes!"
	.size	.L.str.455, 36

	.type	.L.str.456,@object      # @.str.456
.L.str.456:
	.asciz	"Redis aborting for OUT OF MEMORY"
	.size	.L.str.456, 33

	.type	.L.str.457,@object      # @.str.457
.L.str.457:
	.asciz	"UPSTART_JOB"
	.size	.L.str.457, 12

	.type	.L.str.458,@object      # @.str.458
.L.str.458:
	.asciz	"upstart supervision requested, but UPSTART_JOB not found"
	.size	.L.str.458, 57

	.type	.L.str.459,@object      # @.str.459
.L.str.459:
	.asciz	"supervised by upstart, will stop to signal readiness"
	.size	.L.str.459, 53

	.type	.L.str.460,@object      # @.str.460
.L.str.460:
	.asciz	"NOTIFY_SOCKET"
	.size	.L.str.460, 14

	.type	.L.str.461,@object      # @.str.461
.L.str.461:
	.asciz	"systemd supervision requested, but NOTIFY_SOCKET not found"
	.size	.L.str.461, 59

	.type	.L.str.462,@object      # @.str.462
.L.str.462:
	.asciz	"@/"
	.size	.L.str.462, 3

	.type	.L.str.463,@object      # @.str.463
.L.str.463:
	.asciz	"supervised by systemd, will signal readiness"
	.size	.L.str.463, 45

	.type	.L.str.464,@object      # @.str.464
.L.str.464:
	.asciz	"Can't connect to systemd socket %s"
	.size	.L.str.464, 35

	.type	.L.str.465,@object      # @.str.465
.L.str.465:
	.asciz	"READY=1"
	.size	.L.str.465, 8

	.type	.L.str.466,@object      # @.str.466
.L.str.466:
	.asciz	"Can't send notification to systemd"
	.size	.L.str.466, 35

	.type	.L.str.467,@object      # @.str.467
.L.str.467:
	.asciz	"redis-check-rdb"
	.size	.L.str.467, 16

	.type	.L.str.468,@object      # @.str.468
.L.str.468:
	.asciz	"redis-check-aof"
	.size	.L.str.468, 16

	.type	.L.str.469,@object      # @.str.469
.L.str.469:
	.asciz	"-v"
	.size	.L.str.469, 3

	.type	.L.str.470,@object      # @.str.470
.L.str.470:
	.asciz	"--version"
	.size	.L.str.470, 10

	.type	.L.str.471,@object      # @.str.471
.L.str.471:
	.asciz	"--help"
	.size	.L.str.471, 7

	.type	.L.str.472,@object      # @.str.472
.L.str.472:
	.asciz	"-h"
	.size	.L.str.472, 3

	.type	.L.str.473,@object      # @.str.473
.L.str.473:
	.asciz	"--test-memory"
	.size	.L.str.473, 14

	.type	.L.str.474,@object      # @.str.474
.L.str.474:
	.asciz	"Please specify the amount of memory to test in megabytes.\n"
	.size	.L.str.474, 59

	.type	.L.str.475,@object      # @.str.475
.L.str.475:
	.asciz	"Example: ./redis-server --test-memory 4096\n\n"
	.size	.L.str.475, 45

	.type	.L.str.476,@object      # @.str.476
.L.str.476:
	.asciz	"--check-rdb"
	.size	.L.str.476, 12

	.type	.L.str.477,@object      # @.str.477
.L.str.477:
	.asciz	"Sentinel config from STDIN not allowed."
	.size	.L.str.477, 40

	.type	.L.str.478,@object      # @.str.478
.L.str.478:
	.asciz	"Sentinel needs config file on disk to save state.  Exiting..."
	.size	.L.str.478, 62

	.type	.L.str.479,@object      # @.str.479
.L.str.479:
	.asciz	"oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo"
	.size	.L.str.479, 46

	.type	.L.str.480,@object      # @.str.480
.L.str.480:
	.asciz	"Redis version=%s, bits=%d, commit=%s, modified=%d, pid=%d, just started"
	.size	.L.str.480, 72

	.type	.L.str.481,@object      # @.str.481
.L.str.481:
	.asciz	"Warning: no config file specified, using the default config. In order to specify a config file use %s /path/to/%s.conf"
	.size	.L.str.481, 119

	.type	.L.str.482,@object      # @.str.482
.L.str.482:
	.asciz	"Configuration loaded"
	.size	.L.str.482, 21

	.type	.L.str.483,@object      # @.str.483
.L.str.483:
	.asciz	"Server initialized"
	.size	.L.str.483, 19

	.type	.L.str.484,@object      # @.str.484
.L.str.484:
	.asciz	"You can't have keys in a DB different than DB 0 when in Cluster mode. Exiting."
	.size	.L.str.484, 79

	.type	.L.str.485,@object      # @.str.485
.L.str.485:
	.asciz	"Ready to accept connections"
	.size	.L.str.485, 28

	.type	.L.str.486,@object      # @.str.486
.L.str.486:
	.asciz	"The server is now ready to accept connections at %s"
	.size	.L.str.486, 52

	.type	.L.str.487,@object      # @.str.487
.L.str.487:
	.asciz	"WARNING: You specified a maxmemory value that is less than 1MB (current value is %llu bytes). Are you sure this is what you really want?"
	.size	.L.str.487, 137

	.type	lru_clock,@object       # @lru_clock
	.comm	lru_clock,8,8
	.type	.L.str.488,@object      # @.str.488
.L.str.488:
	.asciz	"%lluB"
	.size	.L.str.488, 6

	.type	.L.str.489,@object      # @.str.489
.L.str.489:
	.asciz	"%.2fK"
	.size	.L.str.489, 6

	.type	.L.str.490,@object      # @.str.490
.L.str.490:
	.asciz	"%.2fM"
	.size	.L.str.490, 6

	.type	.L.str.491,@object      # @.str.491
.L.str.491:
	.asciz	"%.2fG"
	.size	.L.str.491, 6

	.type	.L.str.492,@object      # @.str.492
.L.str.492:
	.asciz	"%.2fT"
	.size	.L.str.492, 6

	.type	.L.str.493,@object      # @.str.493
.L.str.493:
	.asciz	"%.2fP"
	.size	.L.str.493, 6

	.type	.L.str.494,@object      # @.str.494
.L.str.494:
	.asciz	"Received SIGINT scheduling shutdown..."
	.size	.L.str.494, 39

	.type	.L.str.495,@object      # @.str.495
.L.str.495:
	.asciz	"Received SIGTERM scheduling shutdown..."
	.size	.L.str.495, 40

	.type	.L.str.496,@object      # @.str.496
.L.str.496:
	.asciz	"Received shutdown signal, scheduling shutdown..."
	.size	.L.str.496, 49

	.type	.L.str.497,@object      # @.str.497
.L.str.497:
	.asciz	"You insist... exiting now."
	.size	.L.str.497, 27

	.type	.L.str.498,@object      # @.str.498
.L.str.498:
	.asciz	"Received shutdown signal during loading, exiting now."
	.size	.L.str.498, 54

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
