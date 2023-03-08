	.text
	.file	"aof.c"
	.globl	aofRewriteBufferReset   # -- Begin function aofRewriteBufferReset
	.p2align	4, 0x90
	.type	aofRewriteBufferReset,@function
aofRewriteBufferReset:                  # @aofRewriteBufferReset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+1944(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_2
# %bb.1:
	callq	listRelease
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	callq	listCreate
	movq	%rax, server+1944(%rip)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	aofRewriteBufferReset, .Lfunc_end0-aofRewriteBufferReset
                                        # -- End function
	.globl	aofRewriteBufferSize    # -- Begin function aofRewriteBufferSize
	.p2align	4, 0x90
	.type	aofRewriteBufferSize,@function
aofRewriteBufferSize:                   # @aofRewriteBufferSize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	server+1944(%rip), %rdi
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:                                # %.preheader
	leaq	-32(%rbp), %r14
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	addq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB1_2
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	aofRewriteBufferSize, .Lfunc_end1-aofRewriteBufferSize
                                        # -- End function
	.globl	aofChildWriteDiffData   # -- Begin function aofChildWriteDiffData
	.p2align	4, 0x90
	.type	aofChildWriteDiffData,@function
aofChildWriteDiffData:                  # @aofChildWriteDiffData
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r14, %rsi
	callq	listDelNode
	movl	$42, __A_VARIABLE(%rip)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1944(%rip), %rdi
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_2
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	16(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2064(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_1 Depth=1
	testl	%eax, %eax
	jne	.LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB2_8
# %bb.9:                                #   in Loop: Header=BB2_1 Depth=1
	movl	server+2040(%rip), %edi
	leaq	16(%rbx), %r15
	movq	%r15, %rsi
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB2_6
# %bb.10:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, %r12
	leaq	(%rbx,%rax), %rsi
	addq	$16, %rsi
	movq	(%rbx), %rdx
	subq	%rax, %rdx
	movq	%r15, %rdi
	callq	memmove
	addq	%r12, 8(%rbx)
	subq	%r12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_1
# %bb.11:                               #   in Loop: Header=BB2_1 Depth=1
	movq	server+1944(%rip), %rdi
	jmp	.LBB2_12
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_5:
	movq	server+72(%rip), %rdi
	movl	server+2040(%rip), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	aofChildWriteDiffData, .Lfunc_end2-aofChildWriteDiffData
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function aofRewriteBufferAppend
.LCPI3_0:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	160                     # 0xa0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.text
	.globl	aofRewriteBufferAppend
	.p2align	4, 0x90
	.type	aofRewriteBufferAppend,@function
aofRewriteBufferAppend:                 # @aofRewriteBufferAppend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	server+1944(%rip), %rax
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_1
# %bb.2:
	movq	16(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_3
.LBB3_1:
	xorl	%r15d, %r15d
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB3_18
# %bb.4:
	leaq	-64(%rbp), %r13
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	shrq	$20, %r14
	movl	$.L.str, %esi
	movl	%r13d, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%rbx, %r13
.LBB3_14:                               #   in Loop: Header=BB3_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB3_18
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB3_8
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movq	8(%r15), %rbx
	cmpq	%r12, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%r12, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB3_7
# %bb.15:                               #   in Loop: Header=BB3_5 Depth=1
	movq	(%r15), %rax
	leaq	(%r15,%rax), %rdi
	addq	$16, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, (%r15)
	subq	%rbx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_5 Depth=1
	addq	%rbx, %r14
	jmp	.LBB3_9
	.p2align	4, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	movl	$10485776, %edi         # imm = 0xA00010
	callq	zmalloc
	movq	%rax, %r15
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [0,0,0,0,0,0,0,0,0,0,160,0,0,0,0,0]
	movups	%xmm0, (%rax)
	movq	server+1944(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movq	server+1944(%rip), %rdi
	movl	40(%rdi), %eax
	addl	$1, %eax
	imull	$-858993459, %eax, %ecx # imm = 0xCCCCCCCD
	addl	$429496728, %ecx        # imm = 0x19999998
	rorl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$429496728, %ecx        # imm = 0x19999998
	ja	.LBB3_14
# %bb.10:                               #   in Loop: Header=BB3_5 Depth=1
	movq	%r14, -48(%rbp)         # 8-byte Spill
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$2, %eax
	movq	%r13, %rbx
	xorl	%r13d, %r13d
	cmpl	$42949673, %eax         # imm = 0x28F5C29
	setb	%r13b
	orl	$2, %r13d
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	leaq	-64(%rbp), %rbx
	testq	%rax, %rax
	je	.LBB3_13
	.p2align	4, 0x90
.LBB3_11:                               #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	addq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_11
	jmp	.LBB3_13
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_18:
	movq	server+72(%rip), %rdi
	movl	server+2040(%rip), %esi
	callq	aeGetFileEvents
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_20
# %bb.19:
	movq	server+72(%rip), %rdi
	movl	server+2040(%rip), %esi
	movl	$aofChildWriteDiffData, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	movl	$42, __A_VARIABLE(%rip)
.LBB3_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	aofRewriteBufferAppend, .Lfunc_end3-aofRewriteBufferAppend
                                        # -- End function
	.globl	aofRewriteBufferWrite   # -- Begin function aofRewriteBufferWrite
	.p2align	4, 0x90
	.type	aofRewriteBufferWrite,@function
aofRewriteBufferWrite:                  # @aofRewriteBufferWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%edi, %r14d
	movq	server+1944(%rip), %rdi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB4_9
# %bb.1:                                # %.preheader
	leaq	-48(%rbp), %r15
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB4_8:                                #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_9
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	movq	(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB4_8
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	leaq	16(%rbx), %rsi
	movl	%r14d, %edi
	callq	write
	cmpq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB4_6
# %bb.5:
	callq	__errno
	movl	$5, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
.LBB4_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	aofRewriteBufferWrite, .Lfunc_end4-aofRewriteBufferWrite
                                        # -- End function
	.globl	aofFsyncInProgress      # -- Begin function aofFsyncInProgress
	.p2align	4, 0x90
	.type	aofFsyncInProgress,@function
aofFsyncInProgress:                     # @aofFsyncInProgress
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	callq	bioPendingJobsOfType
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	aofFsyncInProgress, .Lfunc_end5-aofFsyncInProgress
                                        # -- End function
	.globl	aof_background_fsync    # -- Begin function aof_background_fsync
	.p2align	4, 0x90
	.type	aof_background_fsync,@function
aof_background_fsync:                   # @aof_background_fsync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%edi, %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	bioCreateBackgroundJob
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	aof_background_fsync, .Lfunc_end6-aof_background_fsync
                                        # -- End function
	.globl	stopAppendOnly          # -- Begin function stopAppendOnly
	.p2align	4, 0x90
	.type	stopAppendOnly,@function
stopAppendOnly:                         # @stopAppendOnly
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$0, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_2
# %bb.1:
	movl	$1, %edi
	callq	flushAppendOnlyFile
	movl	server+1960(%rip), %edi
	callq	fsync
	movl	server+1960(%rip), %edi
	callq	close
	movq	$-1, server+1960(%rip)
	movl	$0, server+1880(%rip)
	callq	killAppendOnlyChild
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB7_2:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	movl	$235, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end7:
	.size	stopAppendOnly, .Lfunc_end7-stopAppendOnly
                                        # -- End function
	.globl	flushAppendOnlyFile     # -- Begin function flushAppendOnlyFile
	.p2align	4, 0x90
	.type	flushAppendOnlyFile,@function
flushAppendOnlyFile:                    # @flushAppendOnlyFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	server+1952(%rip), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB8_19
# %bb.1:
	movl	%edi, %r14d
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI8_0(,%rdx,8)
.LBB8_2:
	shrq	$3, %rax
	jmp	.LBB8_7
.LBB8_3:
	movq	-17(%rcx), %rax
	jmp	.LBB8_7
.LBB8_4:
	movzwl	-5(%rcx), %eax
	jmp	.LBB8_7
.LBB8_5:
	movl	-9(%rcx), %eax
	jmp	.LBB8_7
.LBB8_6:
	movzbl	-3(%rcx), %eax
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1884(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_18
# %bb.8:
	xorl	%ebx, %ebx
	movl	$0, %edx
	cmpl	$2, %ecx
	jne	.LBB8_15
# %bb.9:
	movl	$1, %edi
	callq	bioPendingJobsOfType
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1884(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	setne	%bl
	movb	%bl, %dl
	je	.LBB8_16
# %bb.10:
	testl	%r14d, %r14d
	jne	.LBB8_16
# %bb.11:
	cmpl	$2, %ecx
	jne	.LBB8_16
# %bb.12:
	movq	server+1968(%rip), %rcx
	movq	server+2872(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB8_82
# %bb.13:
	subq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	jl	.LBB8_127
# %bb.14:
	addq	$1, server+2008(%rip)
	movl	$.L.str.9, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edx
.LBB8_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_16:
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_24
# %bb.17:
	callq	mstime
	movq	%rax, %r14
	jmp	.LBB8_25
.LBB8_18:
	cmpl	$2, %ecx
	je	.LBB8_20
	jmp	.LBB8_127
.LBB8_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, server+1884(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_127
.LBB8_20:
	movq	server+1928(%rip), %rax
	cmpq	server+1920(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_127
# %bb.21:
	movq	server+2872(%rip), %rax
	cmpq	server+1976(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB8_127
# %bb.22:
	movl	$1, %edi
	callq	bioPendingJobsOfType
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB8_127
# %bb.23:
	xorl	%ecx, %ecx
	jmp	.LBB8_93
.LBB8_24:
	xorl	%r14d, %r14d
.LBB8_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1960(%rip), %r12d
	movq	server+1952(%rip), %r13
	movzbl	-1(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB8_32
# %bb.26:
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_1(,%rax,8)
.LBB8_27:
	shrq	$3, %rbx
	jmp	.LBB8_33
.LBB8_28:
	movq	-17(%r13), %rbx
	jmp	.LBB8_33
.LBB8_29:
	movzwl	-5(%r13), %ebx
	jmp	.LBB8_33
.LBB8_30:
	movl	-9(%r13), %ebx
	jmp	.LBB8_33
.LBB8_31:
	movzbl	-3(%r13), %ebx
	jmp	.LBB8_33
.LBB8_32:
	xorl	%ebx, %ebx
.LBB8_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB8_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_35 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB8_35:                               #   Parent Loop BB8_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB8_40
# %bb.36:                               #   in Loop: Header=BB8_35 Depth=2
	movl	%r12d, %edi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB8_38
# %bb.37:                               #   in Loop: Header=BB8_35 Depth=2
	callq	__errno
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_35
	jmp	.LBB8_39
	.p2align	4, 0x90
.LBB8_38:                               #   in Loop: Header=BB8_34 Depth=1
	subq	%rax, %rbx
	addq	%rax, %r13
	addq	%rax, %r15
	jmp	.LBB8_34
.LBB8_39:
	xorl	%eax, %eax
	cmpq	$1, %r15
	sbbq	%rax, %rax
	orq	%rax, %r15
.LBB8_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_42
# %bb.41:
	callq	mstime
	subq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
.LBB8_42:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB8_46
# %bb.43:
	movq	server+3096(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_57
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jl	.LBB8_54
# %bb.45:
	movl	$.L.str.10, %edi
	jmp	.LBB8_53
.LBB8_46:
	movl	server+2096(%rip), %ecx
	andl	server+1940(%rip), %ecx
	movq	server+3096(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	je	.LBB8_50
# %bb.47:
	testq	%rax, %rax
	je	.LBB8_57
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jl	.LBB8_54
# %bb.49:
	movl	$.L.str.11, %edi
	jmp	.LBB8_53
.LBB8_50:
	testq	%rax, %rax
	je	.LBB8_57
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jl	.LBB8_54
# %bb.52:
	movl	$.L.str.12, %edi
.LBB8_53:
	movq	%r14, %rsi
	callq	latencyAddSample
	movl	$42, __A_VARIABLE(%rip)
.LBB8_54:
	movq	server+3096(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_58
# %bb.55:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jl	.LBB8_58
# %bb.56:
	movl	$.L.str.13, %edi
	movq	%r14, %rsi
	callq	latencyAddSample
.LBB8_57:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_58:
	movq	$0, server+1968(%rip)
	movq	server+1952(%rip), %rdi
	movzbl	-1(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB8_65
# %bb.59:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_2(,%rax,8)
.LBB8_60:
	movq	%rcx, %rax
	shrq	$3, %rax
	jmp	.LBB8_66
.LBB8_61:
	movq	-17(%rdi), %rax
	jmp	.LBB8_66
.LBB8_62:
	movzwl	-5(%rdi), %eax
	jmp	.LBB8_66
.LBB8_63:
	movl	-9(%rdi), %eax
	jmp	.LBB8_66
.LBB8_64:
	movzbl	-3(%rdi), %eax
	jmp	.LBB8_66
.LBB8_65:
	xorl	%eax, %eax
.LBB8_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jne	.LBB8_72
# %bb.67:
	cmpl	$-1, server+2024(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_69
# %bb.68:
	movl	$.L.str.18, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$0, server+2024(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1952(%rip), %rdi
.LBB8_69:
	addq	%r15, server+1920(%rip)
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB8_87
# %bb.70:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_4(,%rcx,8)
.LBB8_71:
	shrq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_88
.LBB8_72:
	movq	server+2872(%rip), %rax
	movq	%rax, %rdx
	subq	flushAppendOnlyFile.last_write_error_log(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %rdx
	jl	.LBB8_74
# %bb.73:
	movq	%rax, flushAppendOnlyFile.last_write_error_log(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
	jmp	.LBB8_75
.LBB8_74:
	xorl	%ebx, %ebx
.LBB8_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r15
	je	.LBB8_80
# %bb.76:
	testb	%bl, %bl
	je	.LBB8_117
# %bb.77:
	movl	%ecx, %eax
	andb	$7, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %al
	ja	.LBB8_115
# %bb.78:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_3(,%rax,8)
.LBB8_79:
	shrq	$3, %rcx
	jmp	.LBB8_116
.LBB8_80:
	movq	$-1, %r15
	testb	%bl, %bl
	je	.LBB8_123
# %bb.81:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.14, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	callq	__errno
	movl	(%rax), %r14d
	movq	$-1, %r15
	jmp	.LBB8_122
.LBB8_82:
	movq	%rax, server+1968(%rip)
	jmp	.LBB8_127
.LBB8_83:
	movq	-17(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-9(%rdi), %rcx
	subq	%rax, %rcx
	jmp	.LBB8_89
.LBB8_84:
	movzwl	-5(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-3(%rdi), %ecx
	subq	%rax, %rcx
	jmp	.LBB8_89
.LBB8_85:
	movzbl	-3(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%rdi), %ecx
	subq	%rax, %rcx
	jmp	.LBB8_89
.LBB8_86:
	movl	-9(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-5(%rdi), %ecx
	subl	%eax, %ecx
	jmp	.LBB8_89
.LBB8_87:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB8_88:
	xorl	%ecx, %ecx
.LBB8_89:
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3999, %rax             # imm = 0xF9F
	ja	.LBB8_91
# %bb.90:
	callq	sdsclear
	jmp	.LBB8_92
.LBB8_91:
	callq	sdsfree
	callq	sdsempty
	movq	%rax, server+1952(%rip)
.LBB8_92:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ecx         # 4-byte Reload
.LBB8_93:
	cmpl	$0, server+1896(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_95
# %bb.94:
	movl	server+2096(%rip), %eax
	andl	server+1940(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB8_127
.LBB8_95:
	movl	server+1884(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB8_98
# %bb.96:
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_102
# %bb.97:
	callq	mstime
	movq	%rax, %rbx
	jmp	.LBB8_103
.LBB8_98:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB8_127
# %bb.99:
	movq	server+2872(%rip), %rax
	cmpq	server+1976(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB8_127
# %bb.100:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB8_110
# %bb.101:
	movslq	server+1960(%rip), %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	bioCreateBackgroundJob
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1920(%rip), %rax
	movq	%rax, server+1928(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_109
.LBB8_102:
	xorl	%ebx, %ebx
.LBB8_103:
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1960(%rip), %edi
	callq	fsync
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_107
# %bb.104:
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB8_108
# %bb.105:
	subq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB8_108
# %bb.106:
	movl	$.L.str.19, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
.LBB8_107:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_108:
	movq	server+1920(%rip), %rax
	movq	%rax, server+1928(%rip)
.LBB8_109:
	movq	server+2872(%rip), %rax
.LBB8_110:
	movq	%rax, server+1976(%rip)
	jmp	.LBB8_126
.LBB8_111:
	movzwl	-5(%rdi), %ecx
	jmp	.LBB8_116
.LBB8_112:
	movq	-17(%rdi), %rcx
	jmp	.LBB8_116
.LBB8_113:
	movzbl	-3(%rdi), %ecx
	jmp	.LBB8_116
.LBB8_114:
	movl	-9(%rdi), %ecx
	jmp	.LBB8_116
.LBB8_115:
	xorl	%ecx, %ecx
.LBB8_116:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.15, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB8_117:
	movl	server+1960(%rip), %edi
	movq	server+1920(%rip), %rsi
	callq	ftruncate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
	movl	$28, %r14d
	cmpl	$-1, %eax
	cmoveq	%r15, %rcx
	jne	.LBB8_121
# %bb.118:
	xorb	$1, %bl
	jne	.LBB8_121
# %bb.119:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.16, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_122
.LBB8_121:
	movq	%rcx, %r15
.LBB8_122:
	movl	%r14d, server+2028(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_123:
	cmpl	$1, server+1884(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_128
# %bb.124:
	movl	$-1, server+2024(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jle	.LBB8_127
# %bb.125:
	addq	%r15, server+1920(%rip)
	movq	server+1952(%rip), %rdi
	movq	%r15, %rsi
	movq	$-1, %rdx
	callq	sdsrange
.LBB8_126:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_127:
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
.LBB8_128:
	movl	$.L.str.17, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end8:
	.size	flushAppendOnlyFile, .Lfunc_end8-flushAppendOnlyFile
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_2
	.quad	.LBB8_6
	.quad	.LBB8_4
	.quad	.LBB8_5
	.quad	.LBB8_3
.LJTI8_1:
	.quad	.LBB8_27
	.quad	.LBB8_31
	.quad	.LBB8_29
	.quad	.LBB8_30
	.quad	.LBB8_28
.LJTI8_2:
	.quad	.LBB8_60
	.quad	.LBB8_64
	.quad	.LBB8_62
	.quad	.LBB8_63
	.quad	.LBB8_61
.LJTI8_3:
	.quad	.LBB8_79
	.quad	.LBB8_113
	.quad	.LBB8_111
	.quad	.LBB8_114
	.quad	.LBB8_112
.LJTI8_4:
	.quad	.LBB8_71
	.quad	.LBB8_85
	.quad	.LBB8_84
	.quad	.LBB8_86
	.quad	.LBB8_83
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function killAppendOnlyChild
	.type	killAppendOnlyChild,@function
killAppendOnlyChild:                    # @killAppendOnlyChild
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movslq	server+1940(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rdx
	je	.LBB9_7
# %bb.1:
	movl	$.L.str.109, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	server+1940(%rip), %edi
	movl	$10, %esi
	callq	kill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB9_4
# %bb.2:                                # %.preheader
	leaq	-12(%rbp), %rbx
	.p2align	4, 0x90
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	wait3
	cmpl	server+1940(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_3
.LBB9_4:
	movq	server+1944(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_6
# %bb.5:
	callq	listRelease
	movl	$42, __A_VARIABLE(%rip)
.LBB9_6:
	callq	listCreate
	movq	%rax, server+1944(%rip)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1940(%rip), %ecx
	leaq	-272(%rbp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.88, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	%rbx, %rdi
	callq	unlink
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, server+1940(%rip)
	movq	$-1, server+1992(%rip)
	movq	server+72(%rip), %rdi
	movl	server+2052(%rip), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movq	server+72(%rip), %rdi
	movl	server+2040(%rip), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
	movl	server+2040(%rip), %edi
	callq	close
	movl	server+2044(%rip), %edi
	callq	close
	movl	server+2048(%rip), %edi
	callq	close
	movl	server+2052(%rip), %edi
	callq	close
	movl	server+2056(%rip), %edi
	callq	close
	movl	server+2060(%rip), %edi
	callq	close
	movl	$42, __A_VARIABLE(%rip)
.LBB9_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	killAppendOnlyChild, .Lfunc_end9-killAppendOnlyChild
                                        # -- End function
	.globl	startAppendOnly         # -- Begin function startAppendOnly
	.p2align	4, 0x90
	.type	startAppendOnly,@function
startAppendOnly:                        # @startAppendOnly
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1024, %rsp             # imm = 0x400
	movq	server+1888(%rip), %rdi
	movl	$521, %esi              # imm = 0x209
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	cmpl	$0, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_12
# %bb.1:
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_2
# %bb.3:
	cmpl	$-1, server+2096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_6
# %bb.4:
	movl	$1, server+1936(%rip)
	movl	$.L.str.6, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_5
.LBB10_2:
	leaq	-1040(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	getcwd
	movq	server+1888(%rip), %r14
	testq	%rax, %rax
	movl	$.L.str.5, %ebx
	cmovneq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.4, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	serverLog
.LBB10_10:
	movl	$-1, %eax
	jmp	.LBB10_11
.LBB10_6:
	cmpl	$-1, server+1940(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_8
# %bb.7:
	movl	$.L.str.7, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	killAppendOnlyChild
	movl	$42, __A_VARIABLE(%rip)
.LBB10_8:
	callq	rewriteAppendOnlyFileBackground
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_9
.LBB10_5:
	movl	$2, server+1880(%rip)
	movq	server+2872(%rip), %rax
	movq	%rax, server+1976(%rip)
	movl	%ebx, server+1960(%rip)
	xorl	%eax, %eax
.LBB10_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1024, %rsp             # imm = 0x400
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_9:
	movl	%ebx, %edi
	callq	close
	movl	$.L.str.8, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB10_10
.LBB10_12:
	movl	$.L.str.3, %edi
	movl	$.L.str.2, %esi
	movl	$253, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end10:
	.size	startAppendOnly, .Lfunc_end10-startAppendOnly
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function rewriteAppendOnlyFileBackground
.LCPI11_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI11_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI11_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI11_3:
	.quad	4472074429978902528     # double 9.3132257461547852E-10
	.text
	.globl	rewriteAppendOnlyFileBackground
	.p2align	4, 0x90
	.type	rewriteAppendOnlyFileBackground,@function
rewriteAppendOnlyFileBackground:        # @rewriteAppendOnlyFileBackground
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movl	server+2096(%rip), %eax
	andl	server+1940(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	cmpl	$-1, %eax
	jne	.LBB11_15
# %bb.1:
	callq	aofCreatePipes
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_2
.LBB11_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_2:
	callq	openChildInfoPipe
	callq	ustime
	movq	%rax, %r15
	callq	fork
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_3
# %bb.9:
	movl	%eax, %r14d
	callq	ustime
	subq	%r15, %rax
	movq	%rax, server+1120(%rip)
	callq	zmalloc_used_memory
	movq	%rax, %xmm0
	punpckldq	.LCPI11_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI11_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	mulsd	.LCPI11_2(%rip), %xmm1
	movq	server+1120(%rip), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	%xmm0, %xmm1
	mulsd	.LCPI11_3(%rip), %xmm1
	movsd	%xmm1, server+1128(%rip)
	movq	server+3096(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_12
# %bb.10:
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jl	.LBB11_12
# %bb.11:
	movl	$.L.str.90, %edi
	movq	%rdx, %rsi
	callq	latencyAddSample
	movl	$42, __A_VARIABLE(%rip)
.LBB11_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	je	.LBB11_13
# %bb.14:
	xorl	%ebx, %ebx
	movl	$.L.str.92, %esi
	movl	$2, %edi
	movl	%r14d, %edx
	xorl	%eax, %eax
	callq	serverLog
	movl	$0, server+1936(%rip)
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+1992(%rip)
	movl	%r14d, server+1940(%rip)
	callq	updateDictResizePolicy
	movl	$-1, server+1964(%rip)
	callq	replicationScriptCacheFlush
	jmp	.LBB11_15
.LBB11_3:
	xorl	%edi, %edi
	callq	closeListeningSockets
	movl	$.L.str.87, %edi
	callq	redisSetProcTitle
	callq	getpid
	leaq	-288(%rbp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.88, %edx
	movq	%rbx, %rdi
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movq	%rbx, %rdi
	callq	rewriteAppendOnlyFile
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_4
# %bb.7:
	movl	$1, %edi
	jmp	.LBB11_8
.LBB11_13:
	callq	closeChildInfoPipe
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.91, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+72(%rip), %rdi
	movl	server+2052(%rip), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movq	server+72(%rip), %rdi
	movl	server+2040(%rip), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
	movl	server+2040(%rip), %edi
	callq	close
	movl	server+2044(%rip), %edi
	callq	close
	movl	server+2048(%rip), %edi
	callq	close
	movl	server+2052(%rip), %edi
	callq	close
	movl	server+2056(%rip), %edi
	callq	close
	movl	server+2060(%rip), %edi
	callq	close
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_15
.LBB11_4:
	movq	$-1, %rdi
	callq	zmalloc_get_private_dirty
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_6
# %bb.5:
	movq	%rbx, %rdx
	shrq	$20, %rdx
	movl	$.L.str.89, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB11_6:
	movq	%rbx, server+2208(%rip)
	movl	$1, %edi
	callq	sendChildInfo
	xorl	%edi, %edi
.LBB11_8:
	callq	exitFromChild
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB11_15
.Lfunc_end11:
	.size	rewriteAppendOnlyFileBackground, .Lfunc_end11-rewriteAppendOnlyFileBackground
                                        # -- End function
	.globl	aofWrite                # -- Begin function aofWrite
	.p2align	4, 0x90
	.type	aofWrite,@function
aofWrite:                               # @aofWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movl	%edi, %r12d
	xorl	%r14d, %r14d
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_2 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB12_2:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB12_6
# %bb.3:                                #   in Loop: Header=BB12_2 Depth=2
	movl	%r12d, %edi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB12_7
# %bb.4:                                #   in Loop: Header=BB12_2 Depth=2
	callq	__errno
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_2
	jmp	.LBB12_5
	.p2align	4, 0x90
.LBB12_7:                               #   in Loop: Header=BB12_1 Depth=1
	subq	%rax, %rbx
	addq	%rax, %r15
	addq	%rax, %r14
	jmp	.LBB12_1
.LBB12_5:
	xorl	%eax, %eax
	cmpq	$1, %r14
	sbbq	%rax, %rax
	orq	%rax, %r14
.LBB12_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	aofWrite, .Lfunc_end12-aofWrite
                                        # -- End function
	.globl	catAppendOnlyGenericCommand # -- Begin function catAppendOnlyGenericCommand
	.p2align	4, 0x90
	.type	catAppendOnlyGenericCommand,@function
catAppendOnlyGenericCommand:            # @catAppendOnlyGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movb	$42, -80(%rbp)
	leaq	-79(%rbp), %rdi
	movslq	%esi, %r13
	movl	$31, %esi
	movq	%r13, %rdx
	callq	ll2string
	cltq
	leaq	-80(%rbp), %r12
	movw	$2573, 1(%rax,%r12)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	sdscatlen
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jle	.LBB13_19
# %bb.1:
	movl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB13_2
.LBB13_17:                              #   in Loop: Header=BB13_2 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB13_18:                              #   in Loop: Header=BB13_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$.L.str.20, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	decrRefCount
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	je	.LBB13_19
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r15,8), %rdi
	callq	getDecodedObject
	movq	%rax, %r13
	movb	$36, -80(%rbp)
	movq	8(%rax), %rax
	movzbl	-1(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB13_3
# %bb.4:                                #   in Loop: Header=BB13_2 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI13_0(,%rcx,8)
.LBB13_5:                               #   in Loop: Header=BB13_2 Depth=1
	shrq	$3, %rdx
	jmp	.LBB13_10
.LBB13_3:                               #   in Loop: Header=BB13_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB13_10
.LBB13_6:                               #   in Loop: Header=BB13_2 Depth=1
	movzbl	-3(%rax), %edx
	jmp	.LBB13_10
.LBB13_7:                               #   in Loop: Header=BB13_2 Depth=1
	movzwl	-5(%rax), %edx
	jmp	.LBB13_10
.LBB13_8:                               #   in Loop: Header=BB13_2 Depth=1
	movl	-9(%rax), %edx
	jmp	.LBB13_10
.LBB13_9:                               #   in Loop: Header=BB13_2 Depth=1
	movq	-17(%rax), %rdx
	.p2align	4, 0x90
.LBB13_10:                              #   in Loop: Header=BB13_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$31, %esi
	leaq	-79(%rbp), %rdi
	callq	ll2string
	cltq
	movw	$2573, 1(%rax,%r12)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	sdscatlen
	movq	8(%r13), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB13_11
# %bb.12:                               #   in Loop: Header=BB13_2 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI13_1(,%rcx,8)
.LBB13_13:                              #   in Loop: Header=BB13_2 Depth=1
	shrq	$3, %rdx
	jmp	.LBB13_18
.LBB13_11:                              #   in Loop: Header=BB13_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB13_18
.LBB13_14:                              #   in Loop: Header=BB13_2 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB13_18
.LBB13_15:                              #   in Loop: Header=BB13_2 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB13_18
.LBB13_16:                              #   in Loop: Header=BB13_2 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB13_18
.LBB13_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	catAppendOnlyGenericCommand, .Lfunc_end13-catAppendOnlyGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI13_0:
	.quad	.LBB13_5
	.quad	.LBB13_6
	.quad	.LBB13_7
	.quad	.LBB13_8
	.quad	.LBB13_9
.LJTI13_1:
	.quad	.LBB13_13
	.quad	.LBB13_14
	.quad	.LBB13_15
	.quad	.LBB13_16
	.quad	.LBB13_17
                                        # -- End function
	.text
	.globl	catAppendOnlyExpireAtCommand # -- Begin function catAppendOnlyExpireAtCommand
	.p2align	4, 0x90
	.type	catAppendOnlyExpireAtCommand,@function
catAppendOnlyExpireAtCommand:           # @catAppendOnlyExpireAtCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	%rcx, %rdi
	callq	getDecodedObject
	movq	%rax, %r12
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, %r14
	movq	8(%r13), %rax
	movl	$expireCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB14_9
# %bb.1:
	movl	$setexCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB14_3
# %bb.2:
	movl	$expireatCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB14_4
.LBB14_3:
	imulq	$1000, %r14, %r14       # imm = 0x3E8
	movl	$42, __A_VARIABLE(%rip)
.LBB14_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pexpireCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
	cmpq	%rcx, %rax
	je	.LBB14_7
# %bb.5:
	movl	$setexCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB14_7
# %bb.6:
	movl	$psetexCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB14_8
	jmp	.LBB14_7
.LBB14_9:
	movq	%rbx, %r13
	imulq	$1000, %r14, %r14       # imm = 0x3E8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_7:
	callq	mstime
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB14_8:
	movq	%r12, %rdi
	callq	decrRefCount
	movl	$.L.str.21, %edi
	movl	$9, %esi
	callq	createStringObject
	movq	%rax, %r12
	movq	%rax, -64(%rbp)
	movq	%r15, -56(%rbp)
	movq	%r14, %rdi
	callq	createStringObjectFromLongLong
	movq	%rax, %rbx
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rdx
	movq	%r13, %rdi
	movl	$3, %esi
	callq	catAppendOnlyGenericCommand
	movq	%rax, %r14
	movq	%r12, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	catAppendOnlyExpireAtCommand, .Lfunc_end14-catAppendOnlyExpireAtCommand
                                        # -- End function
	.globl	feedAppendOnlyFile      # -- Begin function feedAppendOnlyFile
	.p2align	4, 0x90
	.type	feedAppendOnlyFile,@function
feedAppendOnlyFile:                     # @feedAppendOnlyFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	sdsempty
	movq	%rax, %r13
	cmpl	%ebx, server+1964(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_2
# %bb.1:
	movl	%r15d, -48(%rbp)        # 4-byte Spill
	leaq	-128(%rbp), %r15
	movl	$64, %esi
	movl	$.L.str.22, %edx
	movq	%r15, %rdi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movq	%r15, %rdi
	callq	strlen
	movl	$.L.str.23, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%r15, %rcx
	movl	-48(%rbp), %r15d        # 4-byte Reload
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r13
	movl	%ebx, server+1964(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_2:
	movq	8(%r14), %rax
	movl	$expireCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB15_5
# %bb.3:
	movl	$pexpireCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB15_5
# %bb.4:
	movl	$expireatCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB15_5
# %bb.7:
	movl	$setexCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB15_9
# %bb.8:
	movl	$psetexCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB15_9
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r15d
	jl	.LBB15_24
# %bb.11:
	movl	$setCommand, %ecx
	cmpq	%rcx, %rax
	jne	.LBB15_24
# %bb.12:
	movq	%r13, %rdi
	movl	$3, %esi
	movq	%r12, %rdx
	callq	catAppendOnlyGenericCommand
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r15d
	addq	$-3, %r15
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB15_13
	.p2align	4, 0x90
.LBB15_17:                              #   in Loop: Header=BB15_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	cmpq	%r13, %r15
	je	.LBB15_18
.LBB15_13:                              # =>This Inner Loop Header: Depth=1
	movq	24(%r12,%r13,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_15
# %bb.14:                               #   in Loop: Header=BB15_13 Depth=1
	movq	32(%r12,%r13,8), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB15_15:                              #   in Loop: Header=BB15_13 Depth=1
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_17
# %bb.16:                               #   in Loop: Header=BB15_13 Depth=1
	movq	32(%r12,%r13,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_17
.LBB15_5:
	movq	8(%r12), %rdx
	movq	16(%r12), %rcx
	movq	%r13, %rdi
.LBB15_6:
	movq	%r14, %rsi
	callq	catAppendOnlyExpireAtCommand
.LBB15_25:
	movq	%rax, %r14
.LBB15_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_36
# %bb.27:
	movq	server+1952(%rip), %rdi
	movzbl	-1(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_28
# %bb.29:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_30:
	shrq	$3, %rdx
	jmp	.LBB15_35
.LBB15_9:
	movl	$.L.str.24, %edi
	movl	$3, %esi
	callq	createStringObject
	movq	%rax, %rbx
	movq	%rax, -128(%rbp)
	movq	8(%r12), %rax
	movq	%rax, -120(%rbp)
	movq	24(%r12), %rax
	movq	%rax, -112(%rbp)
	leaq	-128(%rbp), %rdx
	movq	%r13, %rdi
	movl	$3, %esi
	callq	catAppendOnlyGenericCommand
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	8(%r12), %rdx
	movq	16(%r12), %rcx
	movq	%r15, %rdi
	jmp	.LBB15_6
.LBB15_34:
	movq	-17(%r14), %rdx
	jmp	.LBB15_35
.LBB15_32:
	movzwl	-5(%r14), %edx
	jmp	.LBB15_35
.LBB15_33:
	movl	-9(%r14), %edx
	jmp	.LBB15_35
.LBB15_31:
	movzbl	-3(%r14), %edx
	jmp	.LBB15_35
.LBB15_28:
	xorl	%edx, %edx
.LBB15_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	callq	sdscatlen
	movq	%rax, server+1952(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_36:
	cmpl	$-1, server+1940(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_46
# %bb.37:
	movzbl	-1(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_38
# %bb.39:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_1(,%rax,8)
.LBB15_40:
	shrq	$3, %rsi
	jmp	.LBB15_45
.LBB15_44:
	movq	-17(%r14), %rsi
	jmp	.LBB15_45
.LBB15_42:
	movzwl	-5(%r14), %esi
	jmp	.LBB15_45
.LBB15_43:
	movl	-9(%r14), %esi
	jmp	.LBB15_45
.LBB15_41:
	movzbl	-3(%r14), %esi
	jmp	.LBB15_45
.LBB15_38:
	xorl	%esi, %esi
.LBB15_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	aofRewriteBufferAppend
	movl	$42, __A_VARIABLE(%rip)
.LBB15_46:
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_24:
	movq	%r13, %rdi
	movl	%r15d, %esi
	movq	%r12, %rdx
	callq	catAppendOnlyGenericCommand
	jmp	.LBB15_25
.LBB15_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB15_20
# %bb.19:
	testq	%rbx, %rbx
	jne	.LBB15_47
.LBB15_20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB15_22
# %bb.21:
	movq	server+968(%rip), %rsi
	movq	8(%r12), %rdx
	movq	%r14, %rdi
	callq	catAppendOnlyExpireAtCommand
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB15_22:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB15_26
# %bb.23:
	movq	server+976(%rip), %rsi
	movq	8(%r12), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	catAppendOnlyExpireAtCommand
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_26
.LBB15_47:
	movl	$.L.str.27, %edi
	movl	$.L.str.2, %esi
	movl	$616, %edx              # imm = 0x268
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end15:
	.size	feedAppendOnlyFile, .Lfunc_end15-feedAppendOnlyFile
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_30
	.quad	.LBB15_31
	.quad	.LBB15_32
	.quad	.LBB15_33
	.quad	.LBB15_34
.LJTI15_1:
	.quad	.LBB15_40
	.quad	.LBB15_41
	.quad	.LBB15_42
	.quad	.LBB15_43
	.quad	.LBB15_44
                                        # -- End function
	.text
	.globl	createFakeClient        # -- Begin function createFakeClient
	.p2align	4, 0x90
	.type	createFakeClient,@function
createFakeClient:                       # @createFakeClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$16920, %edi            # imm = 0x4218
	callq	zmalloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	selectDb
	movl	$-1, 8(%rbx)
	movq	$0, 24(%rbx)
	callq	sdsempty
	movq	%rax, 32(%rbx)
	movq	$0, 56(%rbx)
	movl	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	movl	$0, 528(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 384(%rbx)
	movl	$6, 168(%rbx)
	callq	listCreate
	movq	%rax, 112(%rbx)
	movq	$0, 120(%rbx)
	movq	$0, 152(%rbx)
	callq	listCreate
	movq	%rax, 488(%rbx)
	movq	$0, 512(%rbx)
	movq	112(%rbx), %rax
	movq	$freeClientReplyValue, 24(%rax)
	movq	$dupClientReplyValue, 16(%rax)
	movq	%rbx, %rdi
	callq	initClientMultiState
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	createFakeClient, .Lfunc_end16-createFakeClient
                                        # -- End function
	.globl	freeFakeClientArgv      # -- Begin function freeFakeClientArgv
	.p2align	4, 0x90
	.type	freeFakeClientArgv,@function
freeFakeClientArgv:                     # @freeFakeClientArgv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 64(%rdi)
	movq	72(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB17_3
# %bb.1:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movq	72(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB17_2
.LBB17_3:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	freeFakeClientArgv, .Lfunc_end17-freeFakeClientArgv
                                        # -- End function
	.globl	freeFakeClient          # -- Begin function freeFakeClient
	.p2align	4, 0x90
	.type	freeFakeClient,@function
freeFakeClient:                         # @freeFakeClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	callq	sdsfree
	movq	112(%rbx), %rdi
	callq	listRelease
	movq	488(%rbx), %rdi
	callq	listRelease
	movq	%rbx, %rdi
	callq	freeClientMultiState
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	freeFakeClient, .Lfunc_end18-freeFakeClient
                                        # -- End function
	.globl	loadAppendOnlyFile      # -- Begin function loadAppendOnlyFile
	.p2align	4, 0x90
	.type	loadAppendOnlyFile,@function
loadAppendOnlyFile:                     # @loadAppendOnlyFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
	movq	%rdi, %r13
	movl	$.L.str.28, %esi
	callq	fopen
	movl	server+1880(%rip), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_1
# %bb.4:
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	fileno
	leaq	-328(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB19_8
# %bb.5:
	cmpq	$0, -312(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_6
.LBB19_8:
	movl	$0, server+1880(%rip)
	movl	$16920, %edi            # imm = 0x4218
	callq	zmalloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	selectDb
	movl	$-1, 8(%rbx)
	movq	$0, 24(%rbx)
	callq	sdsempty
	movq	%rax, 32(%rbx)
	movq	$0, 56(%rbx)
	movl	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	movl	$0, 528(%rbx)
	movl	$0, 160(%rbx)
	movl	$0, 384(%rbx)
	movl	$6, 168(%rbx)
	callq	listCreate
	movq	%rax, 112(%rbx)
	movq	$0, 120(%rbx)
	movq	$0, 152(%rbx)
	callq	listCreate
	movq	%rax, 488(%rbx)
	movq	$0, 512(%rbx)
	movq	112(%rbx), %rax
	movq	$freeClientReplyValue, 24(%rax)
	movq	$dupClientReplyValue, 16(%rax)
	movq	%rbx, %rdi
	callq	initClientMultiState
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	startLoading
	leaq	-77(%rbp), %rdi
	movl	$1, %esi
	movl	$5, %edx
	movq	%r12, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %rax
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jne	.LBB19_10
# %bb.9:
	leaq	-77(%rbp), %rdi
	movl	$.L.str.30, %esi
	movl	$5, %edx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB19_11
.LBB19_10:
	xorl	%r14d, %r14d
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fseek
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB19_72
.LBB19_16:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	movabsq	$2066035336255469781, %rcx # imm = 0x1CAC083126E978D5
	movabsq	$18446744073709551, %rdx # imm = 0x4189374BC6A7EF
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	movl	%r15d, -52(%rbp)        # 4-byte Spill
	movq	%r13, -88(%rbp)         # 8-byte Spill
.LBB19_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_25 Depth 2
                                        #     Child Loop BB19_58 Depth 2
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	imulq	%rcx, %rax
	rorq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	ja	.LBB19_19
# %bb.18:                               #   in Loop: Header=BB19_17 Depth=1
	movq	%r12, %rdi
	callq	ftello
	movq	%rax, %rdi
	callq	loadingProgress
	callq	processEventsWhileBlocked
	movl	$42, __A_VARIABLE(%rip)
.LBB19_19:                              #   in Loop: Header=BB19_17 Depth=1
	leaq	-240(%rbp), %rdi
	movl	$128, %esi
	movq	%r12, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_20
# %bb.21:                               #   in Loop: Header=BB19_17 Depth=1
	movq	%r14, -72(%rbp)         # 8-byte Spill
	cmpb	$42, -240(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_89
# %bb.22:                               #   in Loop: Header=BB19_17 Depth=1
	cmpb	$0, -239(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_37
# %bb.23:                               #   in Loop: Header=BB19_17 Depth=1
	leaq	-239(%rbp), %rdi
	callq	atoi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB19_89
# %bb.24:                               #   in Loop: Header=BB19_17 Depth=1
	movl	%eax, %r15d
	cltq
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	(,%rax,8), %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r15d, 64(%rax)
	movq	%rbx, 72(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB19_25:                              #   Parent Loop BB19_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-240(%rbp), %rdi
	movl	$128, %esi
	movq	%r12, %rdx
	callq	fgets
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_26
# %bb.29:                               #   in Loop: Header=BB19_25 Depth=2
	cmpb	$36, -240(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_89
# %bb.30:                               #   in Loop: Header=BB19_25 Depth=2
	leaq	-239(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movq	%r12, %r15
	movq	%rax, %r12
	movq	SDS_NOINIT(%rip), %rdi
	movq	%rax, %rsi
	callq	sdsnewlen
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB19_38
# %bb.31:                               #   in Loop: Header=BB19_25 Depth=2
	movl	$1, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_32
.LBB19_38:                              #   in Loop: Header=BB19_25 Depth=2
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	createObject
	movq	%rax, (%rbx,%r14,8)
	movl	$2, %esi
	movl	$1, %edx
	leaq	-240(%rbp), %rdi
	movq	%r15, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r15, %r12
	je	.LBB19_39
# %bb.41:                               #   in Loop: Header=BB19_25 Depth=2
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-104(%rbp), %r14        # 8-byte Folded Reload
	jl	.LBB19_25
# %bb.42:                               #   in Loop: Header=BB19_17 Depth=1
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	callq	lookupCommand
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_43
# %bb.44:                               #   in Loop: Header=BB19_17 Depth=1
	cmpq	server+904(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	jne	.LBB19_46
# %bb.45:                               #   in Loop: Header=BB19_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
.LBB19_46:                              #   in Loop: Header=BB19_17 Depth=1
	movq	%rax, 80(%r14)
	testb	$8, 160(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rax
	movl	-52(%rbp), %r15d        # 4-byte Reload
	je	.LBB19_49
# %bb.47:                               #   in Loop: Header=BB19_17 Depth=1
	movl	$execCommand, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	movl	$execCommand, %eax
	je	.LBB19_49
# %bb.48:                               #   in Loop: Header=BB19_17 Depth=1
	movq	%r14, %rdi
	callq	queueMultiCommand
	jmp	.LBB19_50
	.p2align	4, 0x90
.LBB19_20:                              #   in Loop: Header=BB19_17 Depth=1
	movzwl	16(%r12), %eax
	testb	$32, %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$252, %eax
	movl	$2, %ecx
	cmovel	%ecx, %eax
	jmp	.LBB19_62
.LBB19_49:                              #   in Loop: Header=BB19_17 Depth=1
	movq	%r14, %rdi
	callq	*%rax
.LBB19_50:                              #   in Loop: Header=BB19_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 528(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_52
# %bb.51:                               #   in Loop: Header=BB19_17 Depth=1
	movq	112(%r14), %rax
	cmpq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_52
# %bb.54:                               #   in Loop: Header=BB19_17 Depth=1
	testb	$16, 160(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_55
# %bb.56:                               #   in Loop: Header=BB19_17 Depth=1
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 64(%r14)
	movq	72(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB19_59
# %bb.57:                               # %.preheader3
                                        #   in Loop: Header=BB19_17 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB19_58:                              #   Parent Loop BB19_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movq	72(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB19_58
.LBB19_59:                              #   in Loop: Header=BB19_17 Depth=1
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 80(%r14)
	cmpl	$0, server+2032(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_61
# %bb.60:                               #   in Loop: Header=BB19_17 Depth=1
	movq	%r12, %rdi
	callq	ftello
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB19_61:                              #   in Loop: Header=BB19_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %r14         # 8-byte Reload
.LBB19_62:                              #   in Loop: Header=BB19_17 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %al
	movabsq	$2066035336255469781, %rcx # imm = 0x1CAC083126E978D5
	movabsq	$18446744073709551, %rdx # imm = 0x4189374BC6A7EF
	je	.LBB19_17
# %bb.63:
	cmpb	$2, %al
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB19_71
# %bb.64:
	cmpb	$4, %al
	jne	.LBB19_82
# %bb.65:
	testb	$8, 160(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_81
# %bb.66:
	movl	$.L.str.37, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_67
.LBB19_6:
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+1920(%rip)
	movq	%r12, %rdi
	callq	fclose
	movl	$-1, %eax
	jmp	.LBB19_7
.LBB19_26:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r14d, 64(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB19_36
# %bb.27:                               # %.preheader
	xorl	%ebx, %ebx
	movq	-48(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB19_28:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movq	72(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB19_28
	jmp	.LBB19_36
.LBB19_39:
	addl	$1, %r14d
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r14d, 64(%rax)
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB19_40:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movq	72(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB19_40
	jmp	.LBB19_36
.LBB19_11:
	movl	$.L.str.31, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fseek
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB19_14
# %bb.12:
	leaq	-240(%rbp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	rioInitWithFile
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	rdbLoadRio
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB19_15
# %bb.13:
	movl	$.L.str.32, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB19_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB19_72
.LBB19_32:
	movq	%r13, %rdi
	callq	sdsfree
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r14d, 64(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB19_33
# %bb.34:                               # %.preheader1
	xorl	%ebx, %ebx
	movq	%r15, %r12
	movq	-48(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB19_35:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movq	72(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB19_35
	jmp	.LBB19_36
.LBB19_33:
	movq	%r15, %r12
.LBB19_36:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB19_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %r15d        # 4-byte Reload
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB19_72:
	movzwl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	je	.LBB19_73
.LBB19_67:
	cmpl	$0, server+2032(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_85
# %bb.68:
	movl	$.L.str.39, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.40, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	je	.LBB19_83
# %bb.69:
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	truncate
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB19_70
# %bb.76:
	movl	server+1960(%rip), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB19_80
# %bb.77:
	xorl	%esi, %esi
	movl	$2, %edx
	callq	lseek
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB19_78
.LBB19_80:
	movl	$.L.str.44, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB19_81:
	movq	%r12, %rdi
	callq	fclose
	movq	32(%rbx), %rdi
	callq	sdsfree
	movq	112(%rbx), %rdi
	callq	listRelease
	movq	488(%rbx), %rdi
	callq	listRelease
	movq	%rbx, %rdi
	callq	freeClientMultiState
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, server+1880(%rip)
	callq	stopLoading
	callq	aofUpdateCurrentSize
	movq	server+1920(%rip), %rax
	movq	%rax, server+1912(%rip)
	movq	%rax, server+1928(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_82:
	xorl	%eax, %eax
.LBB19_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_15:
	movl	$.L.str.33, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_16
.LBB19_71:                              # %.loopexit9
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB19_72
.LBB19_89:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB19_91
# %bb.90:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	32(%rbx), %rdi
	callq	sdsfree
	movq	112(%rbx), %rdi
	callq	listRelease
	movq	488(%rbx), %rdi
	callq	listRelease
	movq	%rbx, %rdi
	callq	freeClientMultiState
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_91:
	movl	$.L.str.46, %esi
	jmp	.LBB19_88
.LBB19_1:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.29, %esi
	jmp	.LBB19_2
.LBB19_73:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB19_75
# %bb.74:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	32(%rbx), %rdi
	callq	sdsfree
	movq	112(%rbx), %rdi
	callq	listRelease
	movq	488(%rbx), %rdi
	callq	listRelease
	movq	%rbx, %rdi
	callq	freeClientMultiState
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_75:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.38, %esi
.LBB19_2:
	movl	$3, %edi
	movq	%rax, %rdx
.LBB19_3:
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB19_83:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.41, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB19_84
.LBB19_70:
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.42, %esi
	jmp	.LBB19_79
.LBB19_78:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.43, %esi
.LBB19_79:
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB19_84:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB19_85:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB19_87
# %bb.86:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	32(%rbx), %rdi
	callq	sdsfree
	movq	112(%rbx), %rdi
	callq	listRelease
	movq	488(%rbx), %rdi
	callq	listRelease
	movq	%rbx, %rdi
	callq	freeClientMultiState
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_87:
	movl	$.L.str.45, %esi
.LBB19_88:
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB19_43:
	movq	(%rbx), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.34, %esi
	movl	$3, %edi
	jmp	.LBB19_3
.LBB19_52:
	movl	$.L.str.35, %edi
	movl	$.L.str.2, %esi
	movl	$827, %edx              # imm = 0x33B
	jmp	.LBB19_53
.LBB19_55:
	movl	$.L.str.36, %edi
	movl	$.L.str.2, %esi
	movl	$830, %edx              # imm = 0x33E
.LBB19_53:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end19:
	.size	loadAppendOnlyFile, .Lfunc_end19-loadAppendOnlyFile
                                        # -- End function
	.globl	aofUpdateCurrentSize    # -- Begin function aofUpdateCurrentSize
	.p2align	4, 0x90
	.type	aofUpdateCurrentSize,@function
aofUpdateCurrentSize:                   # @aofUpdateCurrentSize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_1
# %bb.2:
	callq	mstime
	movq	%rax, %rbx
	jmp	.LBB20_3
.LBB20_1:
	xorl	%ebx, %ebx
.LBB20_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1960(%rip), %edi
	leaq	-96(%rbp), %rsi
	callq	fstat
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB20_4
# %bb.5:
	movq	-80(%rbp), %rax
	movq	%rax, server+1920(%rip)
	jmp	.LBB20_6
.LBB20_4:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.96, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB20_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_10
# %bb.7:
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB20_11
# %bb.8:
	subq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB20_11
# %bb.9:
	movl	$.L.str.97, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
.LBB20_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	aofUpdateCurrentSize, .Lfunc_end20-aofUpdateCurrentSize
                                        # -- End function
	.globl	rioWriteBulkObject      # -- Begin function rioWriteBulkObject
	.p2align	4, 0x90
	.type	rioWriteBulkObject,@function
rioWriteBulkObject:                     # @rioWriteBulkObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rsi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB21_2
# %bb.1:
	movq	8(%rsi), %rsi
	callq	rioWriteBulkLongLong
	jmp	.LBB21_13
.LBB21_2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB21_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB21_14
.LBB21_4:
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB21_5
# %bb.6:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_7:
	shrq	$3, %rdx
	jmp	.LBB21_12
.LBB21_11:
	movq	-17(%rsi), %rdx
	jmp	.LBB21_12
.LBB21_9:
	movzwl	-5(%rsi), %edx
	jmp	.LBB21_12
.LBB21_10:
	movl	-9(%rsi), %edx
	jmp	.LBB21_12
.LBB21_8:
	movzbl	-3(%rsi), %edx
	jmp	.LBB21_12
.LBB21_5:
	xorl	%edx, %edx
.LBB21_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	rioWriteBulkString
.LBB21_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.LBB21_14:
	movl	$.L.str.2, %edi
	movl	$.L.str.47, %edx
	movl	$916, %esi              # imm = 0x394
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end21:
	.size	rioWriteBulkObject, .Lfunc_end21-rioWriteBulkObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI21_0:
	.quad	.LBB21_7
	.quad	.LBB21_8
	.quad	.LBB21_9
	.quad	.LBB21_10
	.quad	.LBB21_11
                                        # -- End function
	.text
	.globl	rewriteListObject       # -- Begin function rewriteListObject
	.p2align	4, 0x90
	.type	rewriteListObject,@function
rewriteListObject:                      # @rewriteListObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %r12
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	%rdx, %rdi
	callq	listTypeLength
	movq	%rax, %rbx
	movl	$240, %eax
	andl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB22_17
# %bb.1:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	callq	quicklistGetIterator
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	quicklistNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_13
# %bb.2:
	xorl	%r14d, %r14d
	leaq	-96(%rbp), %r13
	.p2align	4, 0x90
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB22_8
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	cmpq	$64, %rbx
	movl	$64, %eax
	cmovll	%ebx, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_14
# %bb.5:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$.L.str.48, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_14
# %bb.6:                                #   in Loop: Header=BB22_3 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_15
# %bb.7:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB22_8:                               #   in Loop: Header=BB22_3 Depth=1
	movq	-72(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB22_10
# %bb.9:                                #   in Loop: Header=BB22_3 Depth=1
	movl	-56(%rbp), %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	jmp	.LBB22_11
	.p2align	4, 0x90
.LBB22_10:                              #   in Loop: Header=BB22_3 Depth=1
	movq	-64(%rbp), %rsi
	movq	%r15, %rdi
	callq	rioWriteBulkLongLong
.LBB22_11:                              #   in Loop: Header=BB22_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_15
# %bb.12:                               #   in Loop: Header=BB22_3 Depth=1
	addq	$1, %r14
	cmpq	$64, %r14
	movl	$0, %eax
	cmoveq	%rax, %r14
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	quicklistNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB22_3
.LBB22_13:
	movq	%r12, %rdi
	callq	quicklistReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB22_16
.LBB22_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_15:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB22_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_17:
	movl	$.L.str.2, %edi
	movl	$.L.str.49, %edx
	movl	$949, %esi              # imm = 0x3B5
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end22:
	.size	rewriteListObject, .Lfunc_end22-rewriteListObject
                                        # -- End function
	.globl	rewriteSetObject        # -- Begin function rewriteSetObject
	.p2align	4, 0x90
	.type	rewriteSetObject,@function
rewriteSetObject:                       # @rewriteSetObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r12
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	%rdx, %rdi
	callq	setTypeSize
	movq	%rax, %rbx
	movl	(%r12), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB23_14
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rdi
	leaq	-56(%rbp), %rdx
	xorl	%esi, %esi
	callq	intsetGet
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB23_33
# %bb.2:                                # %.preheader
	movl	$1, %ecx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB23_8
# %bb.4:                                #   in Loop: Header=BB23_3 Depth=1
	cmpq	$65, %rbx
	movl	$64, %edx
	cmovlq	%rbx, %rdx
	shlq	$32, %rdx
	movabsq	$8589934592, %rax       # imm = 0x200000000
	addq	%rax, %rdx
	sarq	$32, %rdx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_11
# %bb.5:                                #   in Loop: Header=BB23_3 Depth=1
	movl	$.L.str.50, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_11
# %bb.6:                                #   in Loop: Header=BB23_3 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_12
# %bb.7:                                #   in Loop: Header=BB23_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB23_8:                               #   in Loop: Header=BB23_3 Depth=1
	movq	-56(%rbp), %rsi
	movq	%r15, %rdi
	callq	rioWriteBulkLongLong
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_12
# %bb.9:                                #   in Loop: Header=BB23_3 Depth=1
	addq	$1, %r14
	cmpq	$64, %r14
	movl	$0, %eax
	cmoveq	%rax, %r14
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rdi
	movq	%r15, %r13
	movq	%r12, %r15
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leal	1(%rsi), %r12d
                                        # kill: def $esi killed $esi killed $rsi
	leaq	-56(%rbp), %rdx
	callq	intsetGet
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %ecx
	movq	%r15, %r12
	movq	%r13, %r15
	testb	%al, %al
	jne	.LBB23_3
	jmp	.LBB23_33
.LBB23_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB23_34
# %bb.15:
	movq	8(%r12), %rdi
	callq	dictGetIterator
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_32
# %bb.16:                               # %.preheader2
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB23_17:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB23_22
# %bb.18:                               #   in Loop: Header=BB23_17 Depth=1
	cmpq	$65, %rbx
	movl	$64, %edx
	cmovlq	%rbx, %rdx
	shlq	$32, %rdx
	movabsq	$8589934592, %rax       # imm = 0x200000000
	addq	%rax, %rdx
	sarq	$32, %rdx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_10
# %bb.19:                               #   in Loop: Header=BB23_17 Depth=1
	movl	$.L.str.50, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_10
# %bb.20:                               #   in Loop: Header=BB23_17 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_11
# %bb.21:                               #   in Loop: Header=BB23_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB23_22:                              #   in Loop: Header=BB23_17 Depth=1
	movzbl	-1(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB23_23
# %bb.24:                               #   in Loop: Header=BB23_17 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_25:                              #   in Loop: Header=BB23_17 Depth=1
	shrq	$3, %rdx
	jmp	.LBB23_30
.LBB23_29:                              #   in Loop: Header=BB23_17 Depth=1
	movq	-17(%r13), %rdx
	jmp	.LBB23_30
.LBB23_27:                              #   in Loop: Header=BB23_17 Depth=1
	movzwl	-5(%r13), %edx
	jmp	.LBB23_30
.LBB23_28:                              #   in Loop: Header=BB23_17 Depth=1
	movl	-9(%r13), %edx
	jmp	.LBB23_30
.LBB23_26:                              #   in Loop: Header=BB23_17 Depth=1
	movzbl	-3(%r13), %edx
	jmp	.LBB23_30
.LBB23_23:                              #   in Loop: Header=BB23_17 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB23_30:                              #   in Loop: Header=BB23_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_11
# %bb.31:                               #   in Loop: Header=BB23_17 Depth=1
	addq	$1, %r14
	cmpq	$64, %r14
	movl	$0, %eax
	cmoveq	%rax, %r14
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB23_17
.LBB23_32:
	movq	%r12, %rdi
	callq	dictReleaseIterator
.LBB23_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB23_13
.LBB23_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_12:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB23_13:
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
.LBB23_34:
	movl	$.L.str.2, %edi
	movl	$.L.str.51, %edx
	movl	$996, %esi              # imm = 0x3E4
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end23:
	.size	rewriteSetObject, .Lfunc_end23-rewriteSetObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_25
	.quad	.LBB23_26
	.quad	.LBB23_27
	.quad	.LBB23_28
	.quad	.LBB23_29
                                        # -- End function
	.text
	.globl	rewriteSortedSetObject  # -- Begin function rewriteSortedSetObject
	.p2align	4, 0x90
	.type	rewriteSortedSetObject,@function
rewriteSortedSetObject:                 # @rewriteSortedSetObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %r14
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	%rdx, %rdi
	callq	zsetLength
	movq	%rax, %r13
	movl	(%r14), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB24_22
# %bb.1:
	movq	8(%r14), %r12
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movq	%rax, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_2
# %bb.4:
	movq	%rax, %r14
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movq	%rax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_45
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB24_6:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	leaq	-96(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	callq	ziplistGet
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_7
# %bb.8:                                #   in Loop: Header=BB24_6 Depth=1
	movq	-72(%rbp), %rdi
	callq	zzlGetScore
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB24_13
# %bb.9:                                #   in Loop: Header=BB24_6 Depth=1
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	cmpq	$64, %r13
	movl	$64, %eax
	cmovll	%r13d, %eax
	leal	2(%rax,%rax), %eax
	movslq	%eax, %rdx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_19
# %bb.10:                               #   in Loop: Header=BB24_6 Depth=1
	movl	$.L.str.55, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_19
# %bb.11:                               #   in Loop: Header=BB24_6 Depth=1
	movq	%r15, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_20
# %bb.12:                               #   in Loop: Header=BB24_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB24_13:                              #   in Loop: Header=BB24_6 Depth=1
	movq	%r15, %rdi
	callq	rioWriteBulkDouble
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_20
# %bb.14:                               #   in Loop: Header=BB24_6 Depth=1
	movq	-96(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB24_21
# %bb.15:                               #   in Loop: Header=BB24_6 Depth=1
	movl	-52(%rbp), %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	jmp	.LBB24_16
	.p2align	4, 0x90
.LBB24_21:                              #   in Loop: Header=BB24_6 Depth=1
	movq	-88(%rbp), %rsi
	movq	%r15, %rdi
	callq	rioWriteBulkLongLong
.LBB24_16:                              #   in Loop: Header=BB24_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_20
# %bb.17:                               #   in Loop: Header=BB24_6 Depth=1
	movq	%r12, %rdi
	leaq	-80(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	callq	zzlNext
	addq	$1, %rbx
	cmpq	$64, %rbx
	movl	$0, %eax
	cmoveq	%rax, %rbx
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB24_6
	jmp	.LBB24_42
.LBB24_22:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB24_44
# %bb.23:
	movq	8(%r14), %rax
	movq	(%rax), %rdi
	callq	dictGetIterator
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_41
# %bb.24:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB24_25:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r14
	movq	8(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB24_30
# %bb.26:                               #   in Loop: Header=BB24_25 Depth=1
	cmpq	$64, %r13
	movl	$64, %eax
	cmovll	%r13d, %eax
	leal	2(%rax,%rax), %eax
	movslq	%eax, %rdx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_18
# %bb.27:                               #   in Loop: Header=BB24_25 Depth=1
	movl	$.L.str.55, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_18
# %bb.28:                               #   in Loop: Header=BB24_25 Depth=1
	movq	%r15, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_19
# %bb.29:                               #   in Loop: Header=BB24_25 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB24_30:                              #   in Loop: Header=BB24_25 Depth=1
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	rioWriteBulkDouble
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_19
# %bb.31:                               #   in Loop: Header=BB24_25 Depth=1
	movzbl	-1(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB24_32
# %bb.33:                               #   in Loop: Header=BB24_25 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI24_0(,%rax,8)
.LBB24_34:                              #   in Loop: Header=BB24_25 Depth=1
	shrq	$3, %rdx
	jmp	.LBB24_39
.LBB24_38:                              #   in Loop: Header=BB24_25 Depth=1
	movq	-17(%r14), %rdx
	jmp	.LBB24_39
.LBB24_36:                              #   in Loop: Header=BB24_25 Depth=1
	movzwl	-5(%r14), %edx
	jmp	.LBB24_39
.LBB24_37:                              #   in Loop: Header=BB24_25 Depth=1
	movl	-9(%r14), %edx
	jmp	.LBB24_39
.LBB24_35:                              #   in Loop: Header=BB24_25 Depth=1
	movzbl	-3(%r14), %edx
	jmp	.LBB24_39
.LBB24_32:                              #   in Loop: Header=BB24_25 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB24_39:                              #   in Loop: Header=BB24_25 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_19
# %bb.40:                               #   in Loop: Header=BB24_25 Depth=1
	addq	$1, %rbx
	cmpq	$64, %rbx
	movl	$0, %eax
	cmoveq	%rax, %rbx
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB24_25
.LBB24_41:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	dictReleaseIterator
.LBB24_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB24_43
.LBB24_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_20:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB24_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_7:
	movl	$.L.str.54, %edi
	movl	$.L.str.2, %esi
	movl	$1020, %edx             # imm = 0x3FC
.LBB24_3:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB24_2:
	movl	$.L.str.52, %edi
	movl	$.L.str.2, %esi
	movl	$1015, %edx             # imm = 0x3F7
	jmp	.LBB24_3
.LBB24_45:
	movl	$.L.str.53, %edi
	movl	$.L.str.2, %esi
	movl	$1017, %edx             # imm = 0x3F9
	jmp	.LBB24_3
.LBB24_44:
	movl	$.L.str.2, %edi
	movl	$.L.str.56, %edx
	movl	$1065, %esi             # imm = 0x429
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end24:
	.size	rewriteSortedSetObject, .Lfunc_end24-rewriteSortedSetObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI24_0:
	.quad	.LBB24_34
	.quad	.LBB24_35
	.quad	.LBB24_36
	.quad	.LBB24_37
	.quad	.LBB24_38
                                        # -- End function
	.text
	.globl	rewriteHashObject       # -- Begin function rewriteHashObject
	.p2align	4, 0x90
	.type	rewriteHashObject,@function
rewriteHashObject:                      # @rewriteHashObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	%rdx, %rdi
	callq	hashTypeLength
	movq	%rax, %r13
	movq	%rbx, %rdi
	callq	hashTypeInitIterator
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	hashTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB25_11
# %bb.1:                                # %.preheader
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB25_2:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB25_8
# %bb.3:                                #   in Loop: Header=BB25_2 Depth=1
	cmpq	$64, %r13
	movl	$64, %eax
	cmovll	%r13d, %eax
	leal	2(%rax,%rax), %eax
	movslq	%eax, %rdx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_4
# %bb.5:                                #   in Loop: Header=BB25_2 Depth=1
	movl	$.L.str.57, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_4
# %bb.6:                                #   in Loop: Header=BB25_2 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_7
.LBB25_8:                               #   in Loop: Header=BB25_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	callq	rioWriteHashIteratorCursor
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_12
# %bb.9:                                #   in Loop: Header=BB25_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	$2, %edx
	callq	rioWriteHashIteratorCursor
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_12
# %bb.10:                               #   in Loop: Header=BB25_2 Depth=1
	addq	$1, %r14
	cmpq	$64, %r14
	movl	$0, %eax
	cmoveq	%rax, %r14
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	hashTypeNext
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB25_2
.LBB25_11:
	movq	%r12, %rdi
	callq	hashTypeReleaseIterator
	movl	$1, %ebx
.LBB25_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB25_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB25_12
.LBB25_7:
	xorl	%ebx, %ebx
	jmp	.LBB25_13
.Lfunc_end25:
	.size	rewriteHashObject, .Lfunc_end25-rewriteHashObject
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function rioWriteHashIteratorCursor
	.type	rioWriteHashIteratorCursor,@function
rioWriteHashIteratorCursor:             # @rioWriteHashIteratorCursor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movl	8(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB26_3
# %bb.1:
	movq	$0, -32(%rbp)
	movl	$-1, -12(%rbp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rax
	leaq	-12(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	%rsi, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	hashTypeCurrentFromZiplist
	movq	-32(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB26_14
# %bb.2:
	movl	-12(%rbp), %edx
	movq	%rbx, %rdi
	callq	rioWriteBulkString
	jmp	.LBB26_15
.LBB26_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB26_13
# %bb.4:
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	hashTypeCurrentFromHashTable
	movzbl	-1(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB26_5
# %bb.6:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI26_0(,%rcx,8)
.LBB26_7:
	shrq	$3, %rdx
	jmp	.LBB26_12
.LBB26_14:
	movq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	rioWriteBulkLongLong
.LBB26_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB26_16
.LBB26_11:
	movq	-17(%rax), %rdx
	jmp	.LBB26_12
.LBB26_9:
	movzwl	-5(%rax), %edx
	jmp	.LBB26_12
.LBB26_10:
	movl	-9(%rax), %edx
	jmp	.LBB26_12
.LBB26_8:
	movzbl	-3(%rax), %edx
	jmp	.LBB26_12
.LBB26_5:
	xorl	%edx, %edx
.LBB26_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	rioWriteBulkString
.LBB26_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB26_13:
	movl	$.L.str.2, %edi
	movl	$.L.str.110, %edx
	movl	$1092, %esi             # imm = 0x444
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end26:
	.size	rioWriteHashIteratorCursor, .Lfunc_end26-rioWriteHashIteratorCursor
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI26_0:
	.quad	.LBB26_7
	.quad	.LBB26_8
	.quad	.LBB26_9
	.quad	.LBB26_10
	.quad	.LBB26_11
                                        # -- End function
	.text
	.globl	rioWriteBulkStreamID    # -- Begin function rioWriteBulkStreamID
	.p2align	4, 0x90
	.type	rioWriteBulkStreamID,@function
rioWriteBulkStreamID:                   # @rioWriteBulkStreamID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	sdsempty
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	xorl	%r15d, %r15d
	movl	$.L.str.58, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatfmt
	movq	%rax, %r12
	movzbl	-1(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB27_7
# %bb.1:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI27_0(,%rcx,8)
.LBB27_2:
	shrq	$3, %rax
	movq	%rax, %r15
	jmp	.LBB27_7
.LBB27_3:
	movzbl	-3(%r12), %r15d
	jmp	.LBB27_7
.LBB27_4:
	movzwl	-5(%r12), %r15d
	jmp	.LBB27_7
.LBB27_5:
	movl	-9(%r12), %r15d
	jmp	.LBB27_7
.LBB27_6:
	movq	-17(%r12), %r15
.LBB27_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	rioWriteBulkString
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB27_9
# %bb.8:
	movq	%r12, %rdi
	callq	sdsfree
.LBB27_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	rioWriteBulkStreamID, .Lfunc_end27-rioWriteBulkStreamID
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI27_0:
	.quad	.LBB27_2
	.quad	.LBB27_3
	.quad	.LBB27_4
	.quad	.LBB27_5
	.quad	.LBB27_6
                                        # -- End function
	.text
	.globl	rioWriteStreamPendingEntry # -- Begin function rioWriteStreamPendingEntry
	.p2align	4, 0x90
	.type	rioWriteStreamPendingEntry,@function
rioWriteStreamPendingEntry:             # @rioWriteStreamPendingEntry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	-56(%rbp), %rsi
	movq	%r9, %rdi
	callq	streamDecodeID
	movl	$12, %edx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.2:
	movl	$.L.str.59, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.3:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_1
# %bb.4:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.5:
	movq	8(%r14), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB28_6
# %bb.7:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI28_0(,%rax,8)
.LBB28_8:
	shrq	$3, %rdx
	jmp	.LBB28_13
.LBB28_6:
	xorl	%edx, %edx
	jmp	.LBB28_13
.LBB28_9:
	movzbl	-3(%rsi), %edx
	jmp	.LBB28_13
.LBB28_10:
	movzwl	-5(%rsi), %edx
	jmp	.LBB28_13
.LBB28_11:
	movl	-9(%rsi), %edx
	jmp	.LBB28_13
.LBB28_12:
	movq	-17(%rsi), %rdx
.LBB28_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.14:
	movl	$.L.str.60, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.15:
	leaq	-56(%rbp), %rsi
	movq	%r15, %rdi
	callq	rioWriteBulkStreamID
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_1
# %bb.16:
	movl	$.L.str.61, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.17:
	movq	16(%rbp), %rbx
	movq	(%rbx), %rsi
	movq	%r15, %rdi
	callq	rioWriteBulkLongLong
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.18:
	movl	$.L.str.62, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.19:
	movq	8(%rbx), %rsi
	movq	%r15, %rdi
	callq	rioWriteBulkLongLong
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.20:
	movl	$.L.str.63, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_1
# %bb.21:
	movl	$.L.str.64, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_22
.LBB28_1:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB28_22:
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
	.size	rioWriteStreamPendingEntry, .Lfunc_end28-rioWriteStreamPendingEntry
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI28_0:
	.quad	.LBB28_8
	.quad	.LBB28_9
	.quad	.LBB28_10
	.quad	.LBB28_11
	.quad	.LBB28_12
                                        # -- End function
	.text
	.globl	rewriteStreamObject     # -- Begin function rewriteStreamObject
	.p2align	4, 0x90
	.type	rewriteStreamObject,@function
rewriteStreamObject:                    # @rewriteStreamObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2136, %rsp             # imm = 0x858
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	8(%rdx), %rbx
	xorl	%r14d, %r14d
	leaq	-2168(%rbp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	streamIteratorStart
	cmpq	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB29_11
# %bb.1:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	leaq	-2168(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	streamIteratorGetID
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_19
# %bb.2:
	leaq	-2168(%rbp), %r14
	leaq	-1528(%rbp), %rbx
	leaq	-1048(%rbp), %r12
	leaq	-72(%rbp), %r13
.LBB29_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_7 Depth 2
	movq	-64(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	addq	$3, %rdx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_49
# %bb.4:                                #   in Loop: Header=BB29_3 Depth=1
	movl	$.L.str.65, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_49
# %bb.5:                                #   in Loop: Header=BB29_3 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_49
# %bb.6:                                #   in Loop: Header=BB29_3 Depth=1
	movq	%r15, %rdi
	leaq	-88(%rbp), %rsi
	callq	rioWriteBulkStreamID
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_49
	.p2align	4, 0x90
.LBB29_7:                               #   Parent Loop BB29_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	jb	.LBB29_10
# %bb.8:                                #   in Loop: Header=BB29_7 Depth=2
	leaq	-568(%rbp), %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	streamIteratorGetField
	movq	-568(%rbp), %rsi
	movq	-1048(%rbp), %rdx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_48
# %bb.9:                                #   in Loop: Header=BB29_7 Depth=2
	movq	-1528(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB29_7
	jmp	.LBB29_41
.LBB29_10:                              #   in Loop: Header=BB29_3 Depth=1
	leaq	-88(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	streamIteratorGetID
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB29_3
	jmp	.LBB29_19
.LBB29_11:
	movl	$7, %edx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_50
# %bb.12:
	movl	$.L.str.65, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_50
# %bb.13:
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_50
# %bb.14:
	movl	$.L.str.66, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_50
# %bb.15:
	movl	$.L.str.60, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_50
# %bb.16:
	leaq	16(%rbx), %rsi
	movq	%r15, %rdi
	callq	rioWriteBulkStreamID
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_50
# %bb.17:
	movl	$.L.str.67, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_50
# %bb.18:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	$.L.str.68, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_50
.LBB29_19:
	movl	$3, %edx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_50
# %bb.20:
	movl	$.L.str.69, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_50
# %bb.21:
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_50
# %bb.22:
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	16(%rax), %rsi
	movq	%r15, %rdi
	callq	rioWriteBulkStreamID
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_50
# %bb.23:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB29_40
# %bb.24:
	leaq	-568(%rbp), %r14
	movq	%r14, %rdi
	callq	raxStart
	movl	$.L.str.70, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_39
# %bb.25:
	leaq	-1528(%rbp), %rbx
	leaq	-568(%rbp), %r12
	leaq	-1048(%rbp), %r13
.LBB29_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_33 Depth 2
                                        #       Child Loop BB29_35 Depth 3
	movq	-544(%rbp), %r14
	movl	$5, %edx
	movq	%r15, %rdi
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_47
# %bb.27:                               #   in Loop: Header=BB29_26 Depth=1
	movl	$.L.str.71, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_47
# %bb.28:                               #   in Loop: Header=BB29_26 Depth=1
	movl	$.L.str.72, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_47
# %bb.29:                               #   in Loop: Header=BB29_26 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_47
# %bb.30:                               #   in Loop: Header=BB29_26 Depth=1
	movq	-552(%rbp), %rsi
	movq	-536(%rbp), %rdx
	movq	%r15, %rdi
	callq	rioWriteBulkString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_47
# %bb.31:                               #   in Loop: Header=BB29_26 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	rioWriteBulkStreamID
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_47
# %bb.32:                               #   in Loop: Header=BB29_26 Depth=1
	movq	24(%r14), %rsi
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
.LBB29_33:                              #   Parent Loop BB29_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_35 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_38
# %bb.34:                               #   in Loop: Header=BB29_33 Depth=2
	movq	-1504(%rbp), %r14
	movq	16(%r14), %rsi
	movq	%r13, %rdi
	callq	raxStart
	movl	$.L.str.70, %esi
	movq	%r13, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB29_35:                              #   Parent Loop BB29_26 Depth=1
                                        #     Parent Loop BB29_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_37
# %bb.36:                               #   in Loop: Header=BB29_35 Depth=3
	movq	-1032(%rbp), %r9
	movq	-1024(%rbp), %rax
	movq	-552(%rbp), %rdx
	movq	-536(%rbp), %rcx
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %r8
	callq	rioWriteStreamPendingEntry
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB29_35
	jmp	.LBB29_46
.LBB29_37:                              #   in Loop: Header=BB29_33 Depth=2
	movq	%r13, %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_33
.LBB29_38:                              #   in Loop: Header=BB29_26 Depth=1
	movq	%rbx, %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB29_26
.LBB29_39:
	leaq	-568(%rbp), %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_40:
	leaq	-2168(%rbp), %rdi
	callq	streamIteratorStop
	movl	$1, %r14d
	jmp	.LBB29_50
.LBB29_41:
	xorl	%r14d, %r14d
	jmp	.LBB29_51
.LBB29_46:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_47:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_49:
	xorl	%r14d, %r14d
.LBB29_50:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$2136, %rsp             # imm = 0x858
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	rewriteStreamObject, .Lfunc_end29-rewriteStreamObject
                                        # -- End function
	.globl	rewriteModuleObject     # -- Begin function rewriteModuleObject
	.p2align	4, 0x90
	.type	rewriteModuleObject,@function
rewriteModuleObject:                    # @rewriteModuleObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	8(%rdx), %rax
	movq	(%rax), %rcx
	movq	%rdi, -40(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -48(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -24(%rbp)
	movq	%rsi, -8(%rbp)
	movq	8(%rax), %rdx
	leaq	-48(%rbp), %rdi
	callq	*32(%rcx)
	movq	-16(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_2
# %bb.1:
	callq	moduleFreeContext
	movq	-16(%rbp), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB30_2:
	xorl	%eax, %eax
	cmpl	$0, -24(%rbp)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	rewriteModuleObject, .Lfunc_end30-rewriteModuleObject
                                        # -- End function
	.globl	aofReadDiffFromParent   # -- Begin function aofReadDiffFromParent
	.p2align	4, 0x90
	.type	aofReadDiffFromParent,@function
aofReadDiffFromParent:                  # @aofReadDiffFromParent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$65544, %rsp            # imm = 0x10008
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2044(%rip), %edi
	leaq	-65568(%rbp), %rsi
	movl	$65536, %edx            # imm = 0x10000
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB31_1
# %bb.2:                                # %.preheader
	movq	%rax, %rbx
	xorl	%r15d, %r15d
	leaq	-65568(%rbp), %r14
	.p2align	4, 0x90
.LBB31_3:                               # =>This Inner Loop Header: Depth=1
	movq	server+2072(%rip), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	sdscatlen
	movq	%rax, server+2072(%rip)
	addq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2044(%rip), %edi
	movl	$65536, %edx            # imm = 0x10000
	movq	%r14, %rsi
	callq	read
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jg	.LBB31_3
	jmp	.LBB31_4
.LBB31_1:
	xorl	%r15d, %r15d
.LBB31_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$65544, %rsp            # imm = 0x10008
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	aofReadDiffFromParent, .Lfunc_end31-aofReadDiffFromParent
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function rewriteAppendOnlyFileRio
.LCPI32_0:
	.zero	16
	.text
	.globl	rewriteAppendOnlyFileRio
	.p2align	4, 0x90
	.type	rewriteAppendOnlyFileRio,@function
rewriteAppendOnlyFileRio:               # @rewriteAppendOnlyFileRio
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$65624, %rsp            # imm = 0x10058
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB32_61
# %bb.1:
	movq	%rdi, %r12
	xorl	%r14d, %r14d
	movaps	.LrewriteAppendOnlyFileRio.selectcmd(%rip), %xmm0
	xorl	%ecx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB32_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_6 Depth 2
                                        #     Child Loop BB32_16 Depth 2
                                        #       Child Loop BB32_20 Depth 3
                                        #       Child Loop BB32_41 Depth 3
                                        #       Child Loop BB32_52 Depth 3
	movaps	%xmm0, -128(%rbp)
	movb	$0, -112(%rbp)
	movq	server+48(%rip), %rsi
	movq	%r14, %rcx
	shlq	$6, %rcx
	movq	(%rsi,%rcx), %rdi
	movq	40(%rdi), %rdx
	addq	72(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB32_5
# %bb.3:                                #   in Loop: Header=BB32_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB32_4:                               #   in Loop: Header=BB32_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r14
	jl	.LBB32_2
	jmp	.LBB32_61
	.p2align	4, 0x90
.LBB32_5:                               #   in Loop: Header=BB32_2 Depth=1
	addq	%rcx, %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	dictGetSafeIterator
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r15d
	leaq	-128(%rbp), %r13
	.p2align	4, 0x90
.LBB32_6:                               #   Parent Loop BB32_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB32_8
# %bb.7:                                #   in Loop: Header=BB32_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jb	.LBB32_9
.LBB32_8:                               #   in Loop: Header=BB32_6 Depth=2
	movq	%r15, %rbx
.LBB32_9:                               #   in Loop: Header=BB32_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_11
# %bb.10:                               #   in Loop: Header=BB32_6 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB32_11:                              #   in Loop: Header=BB32_6 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_62
# %bb.12:                               #   in Loop: Header=BB32_6 Depth=2
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	jne	.LBB32_6
# %bb.13:                               #   in Loop: Header=BB32_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	rioWriteBulkLongLong
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB32_66
# %bb.14:                               #   in Loop: Header=BB32_2 Depth=1
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_60
# %bb.15:                               # %.preheader1
                                        #   in Loop: Header=BB32_2 Depth=1
	leaq	-65664(%rbp), %r13
.LBB32_16:                              #   Parent Loop BB32_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_20 Depth 3
                                        #       Child Loop BB32_41 Depth 3
                                        #       Child Loop BB32_52 Depth 3
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, -72(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-96(%rbp), %rdi         # 8-byte Reload
	leaq	-72(%rbp), %rsi
	callq	getExpire
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB32_19
# %bb.17:                               #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB32_30
# %bb.18:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%r12, %rdi
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rbx
	callq	rewriteListObject
	jmp	.LBB32_38
.LBB32_19:                              #   in Loop: Header=BB32_16 Depth=2
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$2829405358590477, %rax # imm = 0xA0D5445530A0D
	movq	%rax, -65658(%rbp)
	movabsq	$724291344956994346, %rax # imm = 0xA0D33240A0D332A
	movq	%rax, -65664(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, %r15d
	movq	%r13, %rbx
	.p2align	4, 0x90
.LBB32_20:                              #   Parent Loop BB32_2 Depth=1
                                        #     Parent Loop BB32_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%r12), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB32_22
# %bb.21:                               #   in Loop: Header=BB32_20 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	jb	.LBB32_23
.LBB32_22:                              #   in Loop: Header=BB32_20 Depth=3
	movq	%r15, %r13
.LBB32_23:                              #   in Loop: Header=BB32_20 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_25
# %bb.24:                               #   in Loop: Header=BB32_20 Depth=3
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB32_25:                              #   in Loop: Header=BB32_20 Depth=3
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_63
# %bb.26:                               #   in Loop: Header=BB32_20 Depth=3
	addq	%r13, %rbx
	addq	%r13, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r13, %r15
	jne	.LBB32_20
# %bb.27:                               #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	leaq	-72(%rbp), %rsi
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB32_64
# %bb.28:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%r12, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB32_65
# %bb.29:                               #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	leaq	-65664(%rbp), %r13
	movq	-80(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB32_39
.LBB32_30:                              #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB32_32
# %bb.31:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%r12, %rdi
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rbx
	callq	rewriteSetObject
	jmp	.LBB32_38
.LBB32_32:                              #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB32_34
# %bb.33:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%r12, %rdi
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rbx
	callq	rewriteSortedSetObject
	jmp	.LBB32_38
.LBB32_34:                              #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB32_36
# %bb.35:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%r12, %rdi
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rbx
	callq	rewriteHashObject
	jmp	.LBB32_38
.LBB32_36:                              #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB32_56
# %bb.37:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%r12, %rdi
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rbx
	callq	rewriteStreamObject
	.p2align	4, 0x90
.LBB32_38:                              #   in Loop: Header=BB32_16 Depth=2
	movq	%rbx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB32_65
.LBB32_39:                              #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	je	.LBB32_51
# %bb.40:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movaps	.LrewriteAppendOnlyFileRio.cmd.74(%rip), %xmm0
	movaps	%xmm0, -65664(%rbp)
	movl	$658772, -65648(%rbp)   # imm = 0xA0D54
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$19, %r15d
	.p2align	4, 0x90
.LBB32_41:                              #   Parent Loop BB32_2 Depth=1
                                        #     Parent Loop BB32_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB32_43
# %bb.42:                               #   in Loop: Header=BB32_41 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jb	.LBB32_44
.LBB32_43:                              #   in Loop: Header=BB32_41 Depth=3
	movq	%r15, %rbx
.LBB32_44:                              #   in Loop: Header=BB32_41 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_46
# %bb.45:                               #   in Loop: Header=BB32_41 Depth=3
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB32_46:                              #   in Loop: Header=BB32_41 Depth=3
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_63
# %bb.47:                               #   in Loop: Header=BB32_41 Depth=3
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	jne	.LBB32_41
# %bb.48:                               #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	leaq	-72(%rbp), %rsi
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB32_64
# %bb.49:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%r12, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	rioWriteBulkLongLong
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB32_65
# %bb.50:                               #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	leaq	-65664(%rbp), %r13
.LBB32_51:                              #   in Loop: Header=BB32_16 Depth=2
	movq	48(%r12), %rbx
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	$10240, %rax            # imm = 0x2800
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jbe	.LBB32_55
	.p2align	4, 0x90
.LBB32_52:                              #   Parent Loop BB32_2 Depth=1
                                        #     Parent Loop BB32_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2044(%rip), %edi
	movl	$65536, %edx            # imm = 0x10000
	movq	%r13, %rsi
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB32_54
# %bb.53:                               #   in Loop: Header=BB32_52 Depth=3
	movq	server+2072(%rip), %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, server+2072(%rip)
	jmp	.LBB32_52
.LBB32_54:                              #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -88(%rbp)         # 8-byte Spill
.LBB32_55:                              #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB32_16
	jmp	.LBB32_60
.LBB32_56:                              #   in Loop: Header=BB32_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB32_70
# %bb.57:                               #   in Loop: Header=BB32_16 Depth=2
	movq	%rax, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movq	%r12, -65656(%rbp)
	movq	%rcx, -65648(%rbp)
	movq	$0, -65664(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -65640(%rbp)
	leaq	-72(%rbp), %rsi
	movq	%rsi, -65624(%rbp)
	movq	8(%rax), %rdx
	movq	%r13, %rdi
	callq	*32(%rcx)
	movq	-65632(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB32_59
# %bb.58:                               #   in Loop: Header=BB32_16 Depth=2
	callq	moduleFreeContext
	movq	-65632(%rbp), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB32_59:                              #   in Loop: Header=BB32_16 Depth=2
	cmpl	$0, -65640(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	je	.LBB32_39
	jmp	.LBB32_65
.LBB32_60:                              #   in Loop: Header=BB32_2 Depth=1
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %eax
	movaps	.LrewriteAppendOnlyFileRio.selectcmd(%rip), %xmm0
	jmp	.LBB32_4
.LBB32_61:
	xorl	%ebx, %ebx
	jmp	.LBB32_68
.LBB32_62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB32_66
.LBB32_63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB32_64:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB32_65:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testq	%r15, %r15
	je	.LBB32_68
# %bb.67:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
.LBB32_68:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$65624, %rsp            # imm = 0x10058
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_70:
	movl	$.L.str.2, %edi
	movl	$.L.str.73, %edx
	movl	$1339, %esi             # imm = 0x53B
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end32:
	.size	rewriteAppendOnlyFileRio, .Lfunc_end32-rewriteAppendOnlyFileRio
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function rewriteAppendOnlyFile
.LCPI33_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI33_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI33_2:
	.quad	4517110426252607488     # double 9.5367431640625E-7
	.text
	.globl	rewriteAppendOnlyFile
	.p2align	4, 0x90
	.type	rewriteAppendOnlyFile,@function
rewriteAppendOnlyFile:                  # @rewriteAppendOnlyFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$65912, %rsp            # imm = 0x10178
	movq	%rdi, %r14
	callq	getpid
	leaq	-416(%rbp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.75, %edx
	movq	%rbx, %rdi
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	fopen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_6
# %bb.1:
	movq	%rax, %r12
	callq	sdsempty
	movq	%rax, server+2072(%rip)
	leaq	-152(%rbp), %rdi
	movq	%r12, %rsi
	callq	rioInitWithFile
	cmpl	$0, server+2016(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB33_3
# %bb.2:
	leaq	-152(%rbp), %rdi
	movl	$33554432, %esi         # imm = 0x2000000
	callq	rioSetAutoSync
	movl	$42, __A_VARIABLE(%rip)
.LBB33_3:
	cmpl	$0, server+2036(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-152(%rbp), %rdi
	je	.LBB33_7
# %bb.4:
	leaq	-65952(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	rdbSaveRio
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB33_29
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB33_8
.LBB33_6:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.77, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB33_33
.LBB33_7:
	callq	rewriteAppendOnlyFileRio
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB33_31
.LBB33_8:
	movq	%r12, %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB33_31
# %bb.9:
	movq	%r12, %rdi
	callq	fileno
	movl	%eax, %edi
	callq	fsync
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB33_31
# %bb.10:
	callq	mstime
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	callq	mstime
	subq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$999, %rax              # imm = 0x3E7
	jg	.LBB33_19
# %bb.11:
	xorl	%r13d, %r13d
	leaq	-65952(%rbp), %rbx
	.p2align	4, 0x90
.LBB33_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_13 Depth 2
	movl	server+2044(%rip), %edi
	movl	$1, %edx
	movl	$1, %esi
	callq	aeWait
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB33_16
	.p2align	4, 0x90
.LBB33_13:                              #   Parent Loop BB33_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2044(%rip), %edi
	movl	$65536, %edx            # imm = 0x10000
	movq	%rbx, %rsi
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB33_15
# %bb.14:                               #   in Loop: Header=BB33_13 Depth=2
	movq	server+2072(%rip), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, server+2072(%rip)
	jmp	.LBB33_13
	.p2align	4, 0x90
.LBB33_15:                              #   in Loop: Header=BB33_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB33_17
	.p2align	4, 0x90
.LBB33_16:                              #   in Loop: Header=BB33_12 Depth=1
	addl	$1, %r13d
.LBB33_17:                              #   in Loop: Header=BB33_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$19, %r13d
	jg	.LBB33_19
# %bb.18:                               #   in Loop: Header=BB33_12 Depth=1
	subq	%r15, %rax
	cmpq	$1000, %rax             # imm = 0x3E8
	jl	.LBB33_12
.LBB33_19:
	movl	server+2048(%rip), %edi
	movl	$.L.str.78, %esi
	movl	$1, %edx
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jne	.LBB33_31
# %bb.20:
	movl	server+2060(%rip), %esi
	xorl	%edi, %edi
	callq	anetNonBlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB33_31
# %bb.21:
	movl	server+2060(%rip), %edi
	leaq	-41(%rbp), %rsi
	movl	$1, %edx
	movl	$5000, %ecx             # imm = 0x1388
	callq	syncRead
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jne	.LBB33_31
# %bb.22:
	cmpb	$33, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB33_31
# %bb.23:
	movl	$.L.str.79, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2044(%rip), %edi
	leaq	-65952(%rbp), %rsi
	movl	$65536, %edx            # imm = 0x10000
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB33_26
# %bb.24:                               # %.preheader
	leaq	-65952(%rbp), %rbx
.LBB33_25:                              # =>This Inner Loop Header: Depth=1
	movq	server+2072(%rip), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	sdscatlen
	movq	%rax, server+2072(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2044(%rip), %edi
	movl	$65536, %edx            # imm = 0x10000
	movq	%rbx, %rsi
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jg	.LBB33_25
.LBB33_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2072(%rip), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB33_35
# %bb.27:
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI33_0(,%rdx,8)
.LBB33_28:
	shrq	$3, %rax
	jmp	.LBB33_40
.LBB33_29:
	movl	-65952(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
.LBB33_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB33_31:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.83, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r12, %rdi
	callq	fclose
.LBB33_32:
	leaq	-416(%rbp), %rdi
	callq	unlink
.LBB33_33:
	movl	$-1, %ebx
.LBB33_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$65912, %rsp            # imm = 0x10178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB33_35:
	xorl	%eax, %eax
	jmp	.LBB33_40
.LBB33_36:
	movzbl	-3(%rcx), %eax
	jmp	.LBB33_40
.LBB33_37:
	movzwl	-5(%rcx), %eax
	jmp	.LBB33_40
.LBB33_38:
	movl	-9(%rcx), %eax
	jmp	.LBB33_40
.LBB33_39:
	movq	-17(%rcx), %rax
.LBB33_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %xmm1
	punpckldq	.LCPI33_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI33_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI33_2(%rip), %xmm0
	movl	$.L.str.80, %esi
	movl	$2, %edi
	movb	$1, %al
	callq	serverLog
	movq	server+2072(%rip), %r15
	movzbl	-1(%r15), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB33_43
# %bb.41:
	movl	%r13d, %eax
	andl	$7, %eax
	jmpq	*.LJTI33_1(,%rax,8)
.LBB33_42:
	shrq	$3, %r13
	jmp	.LBB33_48
.LBB33_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB33_57
.LBB33_44:
	movzbl	-3(%r15), %r13d
	jmp	.LBB33_48
.LBB33_45:
	movzwl	-5(%r15), %r13d
	jmp	.LBB33_48
.LBB33_46:
	movl	-9(%r15), %r13d
	jmp	.LBB33_48
.LBB33_47:
	movq	-17(%r15), %r13
.LBB33_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB33_57
# %bb.49:
	leaq	-152(%rbp), %rdi
.LBB33_50:                              # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB33_52
# %bb.51:                               #   in Loop: Header=BB33_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jb	.LBB33_53
.LBB33_52:                              #   in Loop: Header=BB33_50 Depth=1
	movq	%r13, %rbx
.LBB33_53:                              #   in Loop: Header=BB33_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_55
# %bb.54:                               #   in Loop: Header=BB33_50 Depth=1
	leaq	-152(%rbp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	leaq	-152(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB33_55:                              #   in Loop: Header=BB33_50 Depth=1
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*-144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_62
# %bb.56:                               #   in Loop: Header=BB33_50 Depth=1
	addq	%rbx, %r15
	addq	%rbx, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r13
	leaq	-152(%rbp), %rdi
	jne	.LBB33_50
.LBB33_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB33_31
# %bb.58:
	movq	%r12, %rdi
	callq	fileno
	movl	%eax, %edi
	callq	fsync
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB33_31
# %bb.59:
	movq	%r12, %rdi
	callq	fclose
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB33_31
# %bb.60:
	leaq	-416(%rbp), %rdi
	movq	%r14, %rsi
	callq	rename
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB33_63
# %bb.61:
	xorl	%ebx, %ebx
	movl	$.L.str.82, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB33_34
.LBB33_62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB33_30
.LBB33_63:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.81, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB33_32
.Lfunc_end33:
	.size	rewriteAppendOnlyFile, .Lfunc_end33-rewriteAppendOnlyFile
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI33_0:
	.quad	.LBB33_28
	.quad	.LBB33_36
	.quad	.LBB33_37
	.quad	.LBB33_38
	.quad	.LBB33_39
.LJTI33_1:
	.quad	.LBB33_42
	.quad	.LBB33_44
	.quad	.LBB33_45
	.quad	.LBB33_46
	.quad	.LBB33_47
                                        # -- End function
	.text
	.globl	aofChildPipeReadable    # -- Begin function aofChildPipeReadable
	.p2align	4, 0x90
	.type	aofChildPipeReadable,@function
aofChildPipeReadable:                   # @aofChildPipeReadable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%esi, %edi
	leaq	-1(%rbp), %rsi
	movl	$1, %edx
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jne	.LBB34_4
# %bb.1:
	cmpb	$33, -1(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_4
# %bb.2:
	movl	$.L.str.84, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, server+2064(%rip)
	movl	server+2056(%rip), %edi
	movl	$.L.str.78, %esi
	movl	$1, %edx
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	je	.LBB34_4
# %bb.3:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.85, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB34_4:
	movq	server+72(%rip), %rdi
	movl	server+2052(%rip), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	aofChildPipeReadable, .Lfunc_end34-aofChildPipeReadable
                                        # -- End function
	.globl	aofCreatePipes          # -- Begin function aofCreatePipes
	.p2align	4, 0x90
	.type	aofCreatePipes,@function
aofCreatePipes:                         # @aofCreatePipes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	.LaofCreatePipes.fds+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movdqa	.LaofCreatePipes.fds(%rip), %xmm0
	movdqa	%xmm0, -32(%rbp)
	leaq	-32(%rbp), %rdi
	callq	pipe
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB35_8
# %bb.1:
	leaq	-24(%rbp), %rdi
	callq	pipe
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB35_8
# %bb.2:
	leaq	-16(%rbp), %rdi
	callq	pipe
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB35_8
# %bb.3:
	movl	-32(%rbp), %esi
	xorl	%edi, %edi
	callq	anetNonBlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB35_8
# %bb.4:
	movl	-28(%rbp), %esi
	xorl	%edi, %edi
	callq	anetNonBlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB35_5
.LBB35_8:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.86, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-32(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB35_10
# %bb.9:
	callq	close
	movl	$42, __A_VARIABLE(%rip)
.LBB35_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-28(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB35_12
# %bb.11:
	callq	close
	movl	$42, __A_VARIABLE(%rip)
.LBB35_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-24(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB35_14
# %bb.13:
	callq	close
	movl	$42, __A_VARIABLE(%rip)
.LBB35_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-20(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB35_16
# %bb.15:
	callq	close
	movl	$42, __A_VARIABLE(%rip)
.LBB35_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-16(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB35_18
# %bb.17:
	callq	close
	movl	$42, __A_VARIABLE(%rip)
.LBB35_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-12(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB35_20
# %bb.19:
	callq	close
	movl	$42, __A_VARIABLE(%rip)
.LBB35_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
.LBB35_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB35_5:
	movq	server+72(%rip), %rdi
	movl	-24(%rbp), %esi
	xorl	%ebx, %ebx
	movl	$aofChildPipeReadable, %ecx
	movl	$1, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB35_8
# %bb.6:
	pshufd	$177, -32(%rbp), %xmm0  # xmm0 = mem[1,0,3,2]
	movdqu	%xmm0, server+2040(%rip)
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	%ecx, server+2056(%rip)
	movl	%eax, server+2060(%rip)
	movl	$0, server+2064(%rip)
	jmp	.LBB35_7
.Lfunc_end35:
	.size	aofCreatePipes, .Lfunc_end35-aofCreatePipes
                                        # -- End function
	.globl	aofClosePipes           # -- Begin function aofClosePipes
	.p2align	4, 0x90
	.type	aofClosePipes,@function
aofClosePipes:                          # @aofClosePipes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+72(%rip), %rdi
	movl	server+2052(%rip), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movq	server+72(%rip), %rdi
	movl	server+2040(%rip), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
	movl	server+2040(%rip), %edi
	callq	close
	movl	server+2044(%rip), %edi
	callq	close
	movl	server+2048(%rip), %edi
	callq	close
	movl	server+2052(%rip), %edi
	callq	close
	movl	server+2056(%rip), %edi
	callq	close
	movl	server+2060(%rip), %edi
	callq	close
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end36:
	.size	aofClosePipes, .Lfunc_end36-aofClosePipes
                                        # -- End function
	.globl	bgrewriteaofCommand     # -- Begin function bgrewriteaofCommand
	.p2align	4, 0x90
	.type	bgrewriteaofCommand,@function
bgrewriteaofCommand:                    # @bgrewriteaofCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$-1, server+1940(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB37_2
# %bb.1:
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB37_8
.LBB37_2:
	cmpl	$-1, server+2096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB37_4
# %bb.3:
	movl	$1, server+1936(%rip)
	movl	$.L.str.94, %esi
.LBB37_6:
	movq	%rbx, %rdi
	callq	addReplyStatus
	jmp	.LBB37_8
.LBB37_4:
	callq	rewriteAppendOnlyFileBackground
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB37_5
# %bb.7:
	movq	shared+16(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB37_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB37_5:
	movl	$.L.str.95, %esi
	jmp	.LBB37_6
.Lfunc_end37:
	.size	bgrewriteaofCommand, .Lfunc_end37-bgrewriteaofCommand
                                        # -- End function
	.globl	aofRemoveTempFile       # -- Begin function aofRemoveTempFile
	.p2align	4, 0x90
	.type	aofRemoveTempFile,@function
aofRemoveTempFile:                      # @aofRemoveTempFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movl	%edi, %ecx
	leaq	-272(%rbp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.88, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	%rbx, %rdi
	callq	unlink
	movl	$42, __A_VARIABLE(%rip)
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	aofRemoveTempFile, .Lfunc_end38-aofRemoveTempFile
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function backgroundRewriteDoneHandler
.LCPI39_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI39_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI39_2:
	.quad	4517110426252607488     # double 9.5367431640625E-7
	.text
	.globl	backgroundRewriteDoneHandler
	.p2align	4, 0x90
	.type	backgroundRewriteDoneHandler,@function
backgroundRewriteDoneHandler:           # @backgroundRewriteDoneHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
	movl	%esi, %eax
	orl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB39_4
# %bb.1:
	movl	%esi, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB39_17
# %bb.2:
	testl	%edx, %edx
	jne	.LBB39_17
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, server+2000(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.107, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB39_49
.LBB39_4:
	callq	ustime
	movq	%rax, %r14
	xorl	%r15d, %r15d
	movl	$.L.str.98, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB39_6
# %bb.5:
	callq	mstime
	movq	%rax, %r15
.LBB39_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1940(%rip), %ecx
	leaq	-304(%rbp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.88, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	%rbx, %rdi
	movl	$9, %esi
	xorl	%eax, %eax
	callq	open
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB39_18
# %bb.7:
	movl	%eax, %r12d
	movl	%eax, %edi
	callq	aofRewriteBufferWrite
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB39_19
# %bb.8:
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB39_12
# %bb.9:
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB39_13
# %bb.10:
	subq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB39_13
# %bb.11:
	movl	$.L.str.101, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
.LBB39_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB39_13:
	movq	server+1944(%rip), %rdi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB39_20
# %bb.14:                               # %.preheader
	xorl	%ebx, %ebx
	leaq	-48(%rbp), %r15
	.p2align	4, 0x90
.LBB39_15:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	addq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB39_15
# %bb.16:
	movq	%rbx, %xmm1
	punpckldq	.LCPI39_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI39_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI39_2(%rip), %xmm0
	jmp	.LBB39_21
.LBB39_17:
	movl	$-1, server+2000(%rip)
	movl	$.L.str.108, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB39_49
.LBB39_18:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.99, %esi
	movl	$3, %edi
	jmp	.LBB39_47
.LBB39_19:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.100, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	%r12d, %edi
	callq	close
	jmp	.LBB39_48
.LBB39_20:
	xorpd	%xmm0, %xmm0
.LBB39_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.102, %esi
	movl	$2, %edi
	movb	$1, %al
	callq	serverLog
	cmpl	$-1, server+1960(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	jne	.LBB39_23
# %bb.22:
	movq	server+1888(%rip), %rdi
	movl	$16384, %esi            # imm = 0x4000
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r15d
.LBB39_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB39_25
# %bb.24:
	callq	mstime
	movq	%rax, %rbx
	jmp	.LBB39_26
.LBB39_25:
	xorl	%ebx, %ebx
.LBB39_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1888(%rip), %rsi
	leaq	-304(%rbp), %rdi
	callq	rename
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB39_35
# %bb.27:
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB39_31
# %bb.28:
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB39_32
# %bb.29:
	subq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB39_32
# %bb.30:
	movl	$.L.str.104, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
.LBB39_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB39_32:
	movl	server+1960(%rip), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB39_37
# %bb.33:
	movl	%r12d, server+1960(%rip)
	movl	server+1884(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB39_38
# %bb.34:
	movl	%r12d, %edi
	callq	fsync
	jmp	.LBB39_40
.LBB39_35:
	movq	server+1888(%rip), %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	leaq	-304(%rbp), %rdx
	movl	$.L.str.103, %esi
	movl	$3, %edi
	movq	%rbx, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	serverLog
	movl	%r12d, %edi
	callq	close
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	je	.LBB39_48
# %bb.36:
	movl	%r15d, %edi
	callq	close
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB39_48
.LBB39_37:
	movl	%r12d, %edi
	callq	close
	movl	%r15d, %ebx
	jmp	.LBB39_42
.LBB39_38:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB39_41
# %bb.39:
	movslq	%r12d, %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	bioCreateBackgroundJob
	movl	$42, __A_VARIABLE(%rip)
.LBB39_40:
	movl	$42, __A_VARIABLE(%rip)
.LBB39_41:
	movl	$-1, server+1964(%rip)
	callq	aofUpdateCurrentSize
	movq	server+1920(%rip), %rax
	movq	%rax, server+1912(%rip)
	movq	server+1952(%rip), %rdi
	callq	sdsfree
	callq	sdsempty
	movq	%rax, server+1952(%rip)
.LBB39_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, server+2000(%rip)
	movl	$.L.str.105, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	cmpl	$2, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB39_44
# %bb.43:
	movl	$1, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB39_44:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB39_46
# %bb.45:
	movslq	%ebx, %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	bioCreateBackgroundJob
	movl	$42, __A_VARIABLE(%rip)
.LBB39_46:
	callq	ustime
	subq	%r14, %rax
	movl	$.L.str.106, %esi
	movl	$1, %edi
.LBB39_47:
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB39_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB39_49:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+72(%rip), %rdi
	movl	server+2052(%rip), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movq	server+72(%rip), %rdi
	movl	server+2040(%rip), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
	movl	server+2040(%rip), %edi
	callq	close
	movl	server+2044(%rip), %edi
	callq	close
	movl	server+2048(%rip), %edi
	callq	close
	movl	server+2052(%rip), %edi
	callq	close
	movl	server+2056(%rip), %edi
	callq	close
	movl	server+2060(%rip), %edi
	callq	close
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1944(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB39_51
# %bb.50:
	callq	listRelease
	movl	$42, __A_VARIABLE(%rip)
.LBB39_51:
	callq	listCreate
	movq	%rax, server+1944(%rip)
	movq	$zfree, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1940(%rip), %ecx
	leaq	-304(%rbp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.88, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	%rbx, %rdi
	callq	unlink
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, server+1940(%rip)
	xorl	%edi, %edi
	callq	time
	subq	server+1992(%rip), %rax
	movq	%rax, server+1984(%rip)
	movq	$-1, server+1992(%rip)
	cmpl	$2, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB39_53
# %bb.52:
	movl	$1, server+1936(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB39_53:
	movl	$42, __A_VARIABLE(%rip)
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	backgroundRewriteDoneHandler, .Lfunc_end39-backgroundRewriteDoneHandler
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Background AOF buffer size: %lu MB"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"server.aof_state != AOF_OFF"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/aof.c"
	.size	.L.str.2, 71

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"server.aof_state == AOF_OFF"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Redis needs to enable the AOF but can't open the append only file %s (in server root dir %s): %s"
	.size	.L.str.4, 97

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"unknown"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"AOF was enabled but there is already a child process saving an RDB file on disk. An AOF background was scheduled to start when possible."
	.size	.L.str.6, 137

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"AOF was enabled but there is already an AOF rewriting in background. Stopping background AOF and starting a rewrite now."
	.size	.L.str.7, 121

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Redis needs to enable the AOF but can't trigger a background AOF rewrite operation. Check the above logs for more info about the error."
	.size	.L.str.8, 136

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Asynchronous AOF fsync is taking too long (disk is busy?). Writing the AOF buffer without waiting for fsync to complete, this may slow down Redis."
	.size	.L.str.9, 147

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"aof-write-pending-fsync"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"aof-write-active-child"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"aof-write-alone"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"aof-write"
	.size	.L.str.13, 10

	.type	flushAppendOnlyFile.last_write_error_log,@object # @flushAppendOnlyFile.last_write_error_log
	.local	flushAppendOnlyFile.last_write_error_log
	.comm	flushAppendOnlyFile.last_write_error_log,8,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Error writing to the AOF file: %s"
	.size	.L.str.14, 34

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Short write while writing to the AOF file: (nwritten=%lld, expected=%lld)"
	.size	.L.str.15, 74

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Could not remove short write from the append-only file.  Redis may refuse to load the AOF the next time it starts.  ftruncate: %s"
	.size	.L.str.16, 130

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Can't recover from AOF write error when the AOF fsync policy is 'always'. Exiting..."
	.size	.L.str.17, 85

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"AOF write error looks solved, Redis can write again."
	.size	.L.str.18, 53

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"aof-fsync-always"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\r\n"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"PEXPIREAT"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%d"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"*2\r\n$6\r\nSELECT\r\n$%lu\r\n%s\r\n"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"SET"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ex"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"px"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"!(exarg && pxarg)"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"r"
	.size	.L.str.28, 2

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Fatal error: can't open the append log file for reading: %s"
	.size	.L.str.29, 60

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"REDIS"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Reading RDB preamble from AOF file..."
	.size	.L.str.31, 38

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Error reading the RDB preamble of the AOF file, AOF loading aborted"
	.size	.L.str.32, 68

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Reading the remaining AOF tail..."
	.size	.L.str.33, 34

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Unknown command '%s' reading the append only file"
	.size	.L.str.34, 50

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"fakeClient->bufpos == 0 && listLength(fakeClient->reply) == 0"
	.size	.L.str.35, 62

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"(fakeClient->flags & CLIENT_BLOCKED) == 0"
	.size	.L.str.36, 42

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Revert incomplete MULTI/EXEC transaction in AOF file"
	.size	.L.str.37, 53

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Unrecoverable error reading the append only file: %s"
	.size	.L.str.38, 53

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"!!! Warning: short read while loading the AOF file !!!"
	.size	.L.str.39, 55

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"!!! Truncating the AOF at offset %llu !!!"
	.size	.L.str.40, 42

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Last valid command offset is invalid"
	.size	.L.str.41, 37

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Error truncating the AOF file: %s"
	.size	.L.str.42, 34

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Can't seek the end of the AOF file: %s"
	.size	.L.str.43, 39

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"AOF loaded anyway because aof-load-truncated is enabled"
	.size	.L.str.44, 56

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Unexpected end of file reading the append only file. You can: 1) Make a backup of your AOF file, then use ./redis-check-aof --fix <filename>. 2) Alternatively you can set the 'aof-load-truncated' configuration option to yes and restart the server."
	.size	.L.str.45, 248

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Bad file format reading the append only file: make a backup of your AOF file, then use ./redis-check-aof --fix <filename>"
	.size	.L.str.46, 122

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Unknown string encoding"
	.size	.L.str.47, 24

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"RPUSH"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Unknown list encoding"
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"SADD"
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Unknown set encoding"
	.size	.L.str.51, 21

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"eptr != NULL"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"sptr != NULL"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"ziplistGet(eptr,&vstr,&vlen,&vll)"
	.size	.L.str.54, 34

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"ZADD"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Unknown sorted zset encoding"
	.size	.L.str.56, 29

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"HMSET"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%U-%U"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"XCLAIM"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"0"
	.size	.L.str.60, 2

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"TIME"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"RETRYCOUNT"
	.size	.L.str.62, 11

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"JUSTID"
	.size	.L.str.63, 7

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"FORCE"
	.size	.L.str.64, 6

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"XADD"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"MAXLEN"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"x"
	.size	.L.str.67, 2

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"y"
	.size	.L.str.68, 2

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"XSETID"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"^"
	.size	.L.str.70, 2

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"XGROUP"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"CREATE"
	.size	.L.str.72, 7

	.type	.LrewriteAppendOnlyFileRio.selectcmd,@object # @rewriteAppendOnlyFileRio.selectcmd
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.LrewriteAppendOnlyFileRio.selectcmd:
	.asciz	"*2\r\n$6\r\nSELECT\r\n"
	.size	.LrewriteAppendOnlyFileRio.selectcmd, 17

	.type	.LrewriteAppendOnlyFileRio.cmd,@object # @rewriteAppendOnlyFileRio.cmd
	.section	.rodata.str1.1,"aMS",@progbits,1
.LrewriteAppendOnlyFileRio.cmd:
	.asciz	"*3\r\n$3\r\nSET\r\n"
	.size	.LrewriteAppendOnlyFileRio.cmd, 14

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Unknown object type"
	.size	.L.str.73, 20

	.type	.LrewriteAppendOnlyFileRio.cmd.74,@object # @rewriteAppendOnlyFileRio.cmd.74
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.LrewriteAppendOnlyFileRio.cmd.74:
	.asciz	"*3\r\n$9\r\nPEXPIREAT\r\n"
	.size	.LrewriteAppendOnlyFileRio.cmd.74, 20

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"temp-rewriteaof-%d.aof"
	.size	.L.str.75, 23

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"w"
	.size	.L.str.76, 2

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Opening the temp file for AOF rewrite in rewriteAppendOnlyFile(): %s"
	.size	.L.str.77, 69

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"!"
	.size	.L.str.78, 2

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Parent agreed to stop sending diffs. Finalizing AOF..."
	.size	.L.str.79, 55

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Concatenating %.2f MB of AOF diff received from parent."
	.size	.L.str.80, 56

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Error moving temp append only file on the final destination: %s"
	.size	.L.str.81, 64

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"SYNC append only file rewrite performed"
	.size	.L.str.82, 40

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Write error writing append only file on disk: %s"
	.size	.L.str.83, 49

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"AOF rewrite child asks to stop sending diffs."
	.size	.L.str.84, 46

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Can't send ACK to AOF child: %s"
	.size	.L.str.85, 32

	.type	.LaofCreatePipes.fds,@object # @aofCreatePipes.fds
	.section	.rodata,"a",@progbits
	.p2align	4
.LaofCreatePipes.fds:
	.zero	24,255
	.size	.LaofCreatePipes.fds, 24

	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"Error opening /setting AOF rewrite IPC pipes: %s"
	.size	.L.str.86, 49

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"redis-aof-rewrite"
	.size	.L.str.87, 18

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"temp-rewriteaof-bg-%d.aof"
	.size	.L.str.88, 26

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"AOF rewrite: %zu MB of memory used by copy-on-write"
	.size	.L.str.89, 52

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"fork"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Can't rewrite append only file in background: fork: %s"
	.size	.L.str.91, 55

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Background append only file rewriting started by pid %d"
	.size	.L.str.92, 56

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Background append only file rewriting already in progress"
	.size	.L.str.93, 58

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Background append only file rewriting scheduled"
	.size	.L.str.94, 48

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Background append only file rewriting started"
	.size	.L.str.95, 46

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Unable to obtain the AOF file length. stat: %s"
	.size	.L.str.96, 47

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"aof-fstat"
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Background AOF rewrite terminated with success"
	.size	.L.str.98, 47

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Unable to open the temporary AOF produced by the child: %s"
	.size	.L.str.99, 59

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Error trying to flush the parent diff to the rewritten AOF: %s"
	.size	.L.str.100, 63

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"aof-rewrite-diff-write"
	.size	.L.str.101, 23

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Residual parent diff successfully flushed to the rewritten AOF (%.2f MB)"
	.size	.L.str.102, 73

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Error trying to rename the temporary AOF file %s into %s: %s"
	.size	.L.str.103, 61

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"aof-rename"
	.size	.L.str.104, 11

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Background AOF rewrite finished successfully"
	.size	.L.str.105, 45

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Background AOF rewrite signal handler took %lldus"
	.size	.L.str.106, 50

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Background AOF rewrite terminated with error"
	.size	.L.str.107, 45

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Background AOF rewrite terminated by signal %d"
	.size	.L.str.108, 47

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Killing running AOF rewrite child: %ld"
	.size	.L.str.109, 39

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Unknown hash encoding"
	.size	.L.str.110, 22

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
