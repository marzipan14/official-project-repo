	.text
	.file	"latency.c"
	.globl	dictStringKeyCompare    # -- Begin function dictStringKeyCompare
	.p2align	4, 0x90
	.type	dictStringKeyCompare,@function
dictStringKeyCompare:                   # @dictStringKeyCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	strcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dictStringKeyCompare, .Lfunc_end0-dictStringKeyCompare
                                        # -- End function
	.globl	dictStringHash          # -- Begin function dictStringHash
	.p2align	4, 0x90
	.type	dictStringHash,@function
dictStringHash:                         # @dictStringHash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	strlen
	movq	%rbx, %rdi
	movl	%eax, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	dictGenHashFunction     # TAILCALL
.Lfunc_end1:
	.size	dictStringHash, .Lfunc_end1-dictStringHash
                                        # -- End function
	.globl	THPGetAnonHugePagesSize # -- Begin function THPGetAnonHugePagesSize
	.p2align	4, 0x90
	.type	THPGetAnonHugePagesSize,@function
THPGetAnonHugePagesSize:                # @THPGetAnonHugePagesSize
# %bb.0:
	movl	$.L.str, %edi
	movq	$-1, %rsi
	jmp	zmalloc_get_smap_bytes_by_field # TAILCALL
.Lfunc_end2:
	.size	THPGetAnonHugePagesSize, .Lfunc_end2-THPGetAnonHugePagesSize
                                        # -- End function
	.globl	latencyMonitorInit      # -- Begin function latencyMonitorInit
	.p2align	4, 0x90
	.type	latencyMonitorInit,@function
latencyMonitorInit:                     # @latencyMonitorInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$latencyTimeSeriesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+3104(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	latencyMonitorInit, .Lfunc_end3-latencyMonitorInit
                                        # -- End function
	.globl	latencyAddSample        # -- Begin function latencyAddSample
	.p2align	4, 0x90
	.type	latencyAddSample,@function
latencyAddSample:                       # @latencyAddSample
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
	movq	%rdi, %r12
	movq	server+3104(%rip), %rdi
	movq	%r12, %rsi
	callq	dictFetchValue
	movq	%rax, %rbx
	xorl	%edi, %edi
	callq	time
	movq	%rax, %r15
	testq	%rbx, %rbx
	je	.LBB4_2
# %bb.1:
	movq	%rbx, %r12
	addq	$4, %r12
	jmp	.LBB4_3
.LBB4_2:
	movl	$1288, %edi             # imm = 0x508
	callq	zmalloc
	movq	%rax, %rbx
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	movl	$1280, %edx             # imm = 0x500
	xorl	%esi, %esi
	callq	memset
	movq	server+3104(%rip), %r13
	movq	%r12, %rdi
	callq	zstrdup
	leaq	4(%rbx), %r12
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
.LBB4_3:
	movl	4(%rbx), %eax
	cmpq	%r14, %rax
	jge	.LBB4_5
# %bb.4:
	movl	%r14d, (%r12)
.LBB4_5:
	movl	$159, %eax
	addl	(%rbx), %eax
	cltq
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	shll	$5, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	cltq
	movslq	8(%rbx,%rax,8), %rcx
	cmpq	%rcx, %r15
	jne	.LBB4_8
# %bb.6:
	movl	12(%rbx,%rax,8), %ecx
	cmpq	%r14, %rcx
	jge	.LBB4_9
# %bb.7:
	movl	%r14d, 12(%rbx,%rax,8)
	jmp	.LBB4_9
.LBB4_8:
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	time
	movslq	(%rbx), %rcx
	movl	%eax, 8(%rbx,%rcx,8)
	movl	%r14d, 12(%rbx,%rcx,8)
	leal	1(%rcx), %eax
	cmpl	$160, %eax
	cmovel	%r15d, %eax
	movl	%eax, (%rbx)
.LBB4_9:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	latencyAddSample, .Lfunc_end4-latencyAddSample
                                        # -- End function
	.globl	latencyResetEvent       # -- Begin function latencyResetEvent
	.p2align	4, 0x90
	.type	latencyResetEvent,@function
latencyResetEvent:                      # @latencyResetEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r12
	movq	server+3104(%rip), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	xorl	%r15d, %r15d
	jmp	.LBB5_1
	.p2align	4, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	movq	server+3104(%rip), %rdi
	movq	%rbx, %rsi
	callq	dictDelete
	addl	$1, %r15d
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	movq	%r14, %rdi
	callq	dictNext
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB5_6
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movq	(%rax), %rbx
	testq	%r12, %r12
	je	.LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB5_5
	jmp	.LBB5_4
.LBB5_6:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	latencyResetEvent, .Lfunc_end5-latencyResetEvent
                                        # -- End function
	.globl	analyzeLatencyForEvent  # -- Begin function analyzeLatencyForEvent
	.p2align	4, 0x90
	.type	analyzeLatencyForEvent,@function
analyzeLatencyForEvent:                 # @analyzeLatencyForEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rsi
	movq	server+3104(%rip), %rdi
	callq	dictFetchValue
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB6_1
# %bb.2:
	movl	4(%r15), %eax
	jmp	.LBB6_3
.LBB6_1:
	xorl	%eax, %eax
.LBB6_3:
	movl	%eax, (%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 4(%r14)
	movl	$0, 20(%r14)
	movq	$0, 24(%r14)
	testq	%r15, %r15
	je	.LBB6_29
# %bb.4:
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB6_5
	.p2align	4, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_5 Depth=1
	movq	%rdi, %rdx
.LBB6_18:                               #   in Loop: Header=BB6_5 Depth=1
	addq	$1, %rcx
	movq	%rdx, %rdi
	cmpq	$160, %rcx
	je	.LBB6_19
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	movslq	8(%r15,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.LBB6_6
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=1
	leal	1(%rbx), %r10d
	movl	%r10d, 20(%r14)
	movl	12(%r15,%rcx,8), %esi
	testl	%ebx, %ebx
	je	.LBB6_8
# %bb.9:                                #   in Loop: Header=BB6_5 Depth=1
	cmpl	%esi, %r9d
	jbe	.LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%esi, 8(%r14)
	movl	%esi, %r9d
.LBB6_11:                               #   in Loop: Header=BB6_5 Depth=1
	cmpl	%esi, %r8d
	jae	.LBB6_13
# %bb.12:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%esi, 12(%r14)
	movl	%esi, %r8d
	jmp	.LBB6_13
	.p2align	4, 0x90
.LBB6_8:                                #   in Loop: Header=BB6_5 Depth=1
	movl	%esi, 12(%r14)
	movl	%esi, 8(%r14)
	movl	%esi, %r8d
	movl	%esi, %r9d
.LBB6_13:                               #   in Loop: Header=BB6_5 Depth=1
	addq	%rsi, %rax
	testq	%rdi, %rdi
	je	.LBB6_16
# %bb.14:                               #   in Loop: Header=BB6_5 Depth=1
	cmpq	%rdx, %rdi
	jg	.LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_5 Depth=1
	movq	%rdi, %rdx
	jmp	.LBB6_17
	.p2align	4, 0x90
.LBB6_16:                               #   in Loop: Header=BB6_5 Depth=1
	movq	%rdx, 24(%r14)
.LBB6_17:                               #   in Loop: Header=BB6_5 Depth=1
	movl	%r10d, %ebx
	jmp	.LBB6_18
.LBB6_19:
	testl	%ebx, %ebx
	je	.LBB6_21
# %bb.20:
	movl	%ebx, %ecx
	xorl	%edx, %edx
	divq	%rcx
	movl	%eax, 4(%r14)
	xorl	%edi, %edi
	callq	time
	subq	24(%r14), %rax
	movl	$1, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 24(%r14)
.LBB6_21:
	movl	$1, %ecx
	xorl	%eax, %eax
	jmp	.LBB6_22
	.p2align	4, 0x90
.LBB6_26:                               #   in Loop: Header=BB6_22 Depth=1
	addq	$2, %rcx
	cmpq	$161, %rcx
	je	.LBB6_27
.LBB6_22:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r15,%rcx,8)
	je	.LBB6_24
# %bb.23:                               #   in Loop: Header=BB6_22 Depth=1
	movl	4(%r14), %edx
	movl	4(%r15,%rcx,8), %esi
	subq	%rsi, %rdx
	movq	%rdx, %rsi
	negq	%rsi
	cmovlq	%rdx, %rsi
	addq	%rsi, %rax
.LBB6_24:                               #   in Loop: Header=BB6_22 Depth=1
	cmpl	$0, 8(%r15,%rcx,8)
	je	.LBB6_26
# %bb.25:                               #   in Loop: Header=BB6_22 Depth=1
	movl	4(%r14), %edx
	movl	12(%r15,%rcx,8), %esi
	subq	%rsi, %rdx
	movq	%rdx, %rsi
	negq	%rsi
	cmovlq	%rdx, %rsi
	addq	%rsi, %rax
	jmp	.LBB6_26
.LBB6_27:
	movl	20(%r14), %ecx
	testq	%rcx, %rcx
	je	.LBB6_29
# %bb.28:
	xorl	%edx, %edx
	divq	%rcx
	movl	%eax, 16(%r14)
.LBB6_29:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	analyzeLatencyForEvent, .Lfunc_end6-analyzeLatencyForEvent
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function createLatencyReport
.LCPI7_0:
	.quad	4621819117588971520     # double 10
.LCPI7_1:
	.quad	4627730092099895296     # double 25
.LCPI7_2:
	.quad	4636737291354636288     # double 100
	.text
	.globl	createLatencyReport
	.p2align	4, 0x90
	.type	createLatencyReport,@function
createLatencyReport:                    # @createLatencyReport
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	callq	sdsempty
	movq	%rax, %r14
	movq	server+3104(%rip), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	jne	.LBB7_5
# %bb.1:
	cmpq	$0, server+3096(%rip)
	jne	.LBB7_5
# %bb.2:
	movl	$.L.str.1, %esi
	jmp	.LBB7_3
.LBB7_5:
	callq	dictGetSafeIterator
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB7_6
# %bb.7:
	xorl	%r13d, %r13d
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -104(%rbp)          # 4-byte Folded Spill
	movl	$0, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	movl	$0, %r15d
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	movl	$0, -108(%rbp)          # 4-byte Folded Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	jmp	.LBB7_8
	.p2align	4, 0x90
.LBB7_9:                                #   in Loop: Header=BB7_8 Depth=1
	movl	%r13d, %ebx
.LBB7_33:                               #   in Loop: Header=BB7_8 Depth=1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	dictNext
	testq	%rax, %rax
	je	.LBB7_34
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_9
# %bb.10:                               #   in Loop: Header=BB7_8 Depth=1
	movq	(%rax), %r12
	leal	1(%r13), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	testl	%r13d, %r13d
	jne	.LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	sdscat
	movq	%rax, %r14
.LBB7_12:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$1, %r13d
	movq	%r12, %rdi
	leaq	-168(%rbp), %rsi
	callq	analyzeLatencyForEvent
	movl	-148(%rbp), %r8d
	movl	-164(%rbp), %r9d
	movl	-152(%rbp), %r10d
	cvtsi2sdq	-144(%rbp), %xmm0
	cvtsi2sd	%r8, %xmm1
	divsd	%xmm1, %xmm0
	movl	4(%rbx), %ebx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	movl	-112(%rbp), %edx        # 4-byte Reload
	movq	%r12, %rcx
                                        # kill: def $r8d killed $r8d killed $r8
	movb	$1, %al
	pushq	%rbx
	pushq	%r10
	callq	sdscatprintf
	addq	$16, %rsp
	movq	%rax, %rbx
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB7_19
# %bb.13:                               #   in Loop: Header=BB7_8 Depth=1
	movsd	server+1128(%rip), %xmm0 # xmm0 = mem[0],zero
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_8 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$.L.str.5, %edx
	movl	$1, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB7_18
.LBB7_15:                               #   in Loop: Header=BB7_8 Depth=1
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_8 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$.L.str.6, %edx
	movl	$1, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB7_18
.LBB7_17:                               #   in Loop: Header=BB7_8 Depth=1
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$.L.str.8, %edx
	movl	$.L.str.7, %eax
	cmovaq	%rax, %rdx
.LBB7_18:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	movb	$1, %al
	callq	sdscatprintf
	movq	%rax, %rbx
.LBB7_19:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$.L.str.10, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movl	%r15d, -116(%rbp)       # 4-byte Spill
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	je	.LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_8 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB7_25
	.p2align	4, 0x90
.LBB7_21:                               #   in Loop: Header=BB7_8 Depth=1
	movq	server+1184(%rip), %rax
	testq	%rax, %rax
	js	.LBB7_22
# %bb.23:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	mulq	%rcx
	shrq	$4, %rdx
	xorl	%eax, %eax
	cmpq	server+3096(%rip), %rdx
	setg	%al
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmovgl	%r13d, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB7_24
.LBB7_22:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
	movl	$1, %eax
	movl	$1, -104(%rbp)          # 4-byte Folded Spill
.LBB7_24:                               #   in Loop: Header=BB7_8 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	addl	%eax, %r14d
	addl	$2, %r14d
	movl	$1, -72(%rbp)           # 4-byte Folded Spill
.LBB7_25:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	xorl	%ebx, %ebx
	testl	%eax, %eax
	sete	%bl
	cmovel	%r13d, %r15d
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	leal	(%r14,%rbx), %r13d
	movl	$.L.str.12, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	%eax, -56(%rbp)         # 4-byte Spill
	testl	%eax, %eax
	sete	%r15b
	leal	4(%r14,%rbx), %ebx
	cmovnel	%r13d, %ebx
	movl	$.L.str.13, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	leal	3(%rbx), %r13d
	testl	%eax, %eax
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	cmovel	%ecx, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	sete	%r14b
	cmovnel	%ebx, %r13d
	orb	%r15b, %r14b
	movl	$.L.str.14, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	%eax, %r15d
	leal	3(%r13), %ebx
	testl	%eax, %eax
	sete	%al
	cmovnel	%r13d, %ebx
	orb	%r14b, %al
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	cmovnel	%ecx, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %eax         # 4-byte Reload
	cmovnel	%ecx, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	$.L.str.15, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	xorl	%r13d, %r13d
	testl	%eax, %eax
	sete	%r13b
	movl	-68(%rbp), %r14d        # 4-byte Reload
	movl	$1, %eax
	cmovel	%eax, %r14d
	addl	%ebx, %r13d
	movl	$.L.str.16, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movl	-64(%rbp), %ebx         # 4-byte Reload
	je	.LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_8 Depth=1
	testl	%r15d, %r15d
	movl	$1, %ecx
	cmovel	%ecx, %ebx
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	cmovel	%ecx, %ebx
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmovel	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	$.L.str.17, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB7_28
.LBB7_27:                               #   in Loop: Header=BB7_8 Depth=1
	addl	$2, %r13d
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	movl	$1, %ebx
.LBB7_28:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$.L.str.18, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	je	.LBB7_31
# %bb.29:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$.L.str.19, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB7_31
# %bb.30:                               #   in Loop: Header=BB7_8 Depth=1
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB7_32
	.p2align	4, 0x90
.LBB7_31:                               #   in Loop: Header=BB7_8 Depth=1
	addl	$4, %r13d
	movl	$1, -80(%rbp)           # 4-byte Folded Spill
	movl	$1, -64(%rbp)           # 4-byte Folded Spill
	movl	$1, -76(%rbp)           # 4-byte Folded Spill
	movl	$1, -108(%rbp)          # 4-byte Folded Spill
.LBB7_32:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$.L.str.20, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	%eax, %r14d
	leal	2(%r13), %r15d
	movl	$.L.str.21, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	xorl	%ebx, %ebx
	testl	%eax, %eax
	sete	%bl
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movq	%r12, %rdi
	movl	$1, %r12d
	cmovel	%r12d, %ecx
	testl	%r14d, %r14d
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmovel	%r12d, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	cmovnel	%r13d, %r15d
	cmovel	%r12d, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	addl	%r15d, %ebx
	movl	$.L.str.22, %esi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	-116(%rbp), %r15d       # 4-byte Reload
	cmovel	%r12d, %r15d
	addl	%ebx, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$.L.str.23, %esi
	movl	$1, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	sdscatlen
	movq	%rax, %r14
	movl	-112(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, %r13d
	jmp	.LBB7_33
.LBB7_6:
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -108(%rbp)          # 4-byte Folded Spill
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	xorl	%r15d, %r15d
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$0, -104(%rbp)          # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%ebx, %ebx
.LBB7_34:
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	dictReleaseIterator
	movl	$.L.str, %edi
	movq	$-1, %rsi
	callq	zmalloc_get_smap_bytes_by_field
	movq	%rax, %r12
	xorl	%eax, %eax
	testl	%r12d, %r12d
	setg	%al
	addl	-56(%rbp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	orl	%ebx, %ecx
	je	.LBB7_35
# %bb.36:
	testl	%ebx, %ebx
	jle	.LBB7_39
# %bb.37:
	testl	%eax, %eax
	jne	.LBB7_39
# %bb.38:
	movl	$.L.str.25, %esi
	jmp	.LBB7_3
.LBB7_35:
	movl	$.L.str.24, %esi
.LBB7_3:
	movq	%r14, %rdi
.LBB7_4:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdscat                  # TAILCALL
.LBB7_39:
	movl	$.L.str.26, %esi
	movq	%r14, %rdi
	callq	sdscat
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	je	.LBB7_41
# %bb.40:
	movl	$.L.str.27, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_41:
	movl	-68(%rbp), %r14d        # 4-byte Reload
	cmpl	$0, -104(%rbp)          # 4-byte Folded Reload
	je	.LBB7_43
# %bb.42:
	imulq	$1000, server+3096(%rip), %rdx # imm = 0x3E8
	movl	$.L.str.28, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB7_43:
	cmpl	$0, -92(%rbp)           # 4-byte Folded Reload
	je	.LBB7_45
# %bb.44:
	imulq	$1000, server+3096(%rip), %rdx # imm = 0x3E8
	movl	$.L.str.29, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB7_45:
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB7_47
# %bb.46:
	movl	$.L.str.30, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_47:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB7_49
# %bb.48:
	movl	$.L.str.31, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_49:
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB7_51
# %bb.50:
	movl	$.L.str.32, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_51:
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	je	.LBB7_53
# %bb.52:
	movl	$.L.str.33, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_53:
	cmpl	$0, -80(%rbp)           # 4-byte Folded Reload
	je	.LBB7_55
# %bb.54:
	movl	$.L.str.34, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_55:
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB7_57
# %bb.56:
	movl	$.L.str.35, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_57:
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	je	.LBB7_59
# %bb.58:
	movl	$.L.str.36, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_59:
	testl	%r14d, %r14d
	je	.LBB7_62
# %bb.60:
	cmpl	$1, server+1884(%rip)
	jne	.LBB7_62
# %bb.61:
	movl	$.L.str.37, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_62:
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB7_64
# %bb.63:
	movl	$.L.str.38, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_64:
	cmpl	$0, -100(%rbp)          # 4-byte Folded Reload
	je	.LBB7_67
# %bb.65:
	cmpl	$99, server+40(%rip)
	jg	.LBB7_67
# %bb.66:
	movl	$.L.str.39, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_67:
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB7_69
# %bb.68:
	movl	$.L.str.40, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_69:
	testl	%r15d, %r15d
	je	.LBB7_71
# %bb.70:
	movl	$.L.str.41, %esi
	movq	%rax, %rdi
	callq	sdscat
.LBB7_71:
	testl	%r12d, %r12d
	jle	.LBB7_73
# %bb.72:
	movl	$.L.str.42, %esi
	movq	%rax, %rdi
	jmp	.LBB7_4
.LBB7_73:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	createLatencyReport, .Lfunc_end7-createLatencyReport
                                        # -- End function
	.globl	latencyCommandReplyWithSamples # -- Begin function latencyCommandReplyWithSamples
	.p2align	4, 0x90
	.type	latencyCommandReplyWithSamples,@function
latencyCommandReplyWithSamples:         # @latencyCommandReplyWithSamples
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r13
	movq	%rdi, %r14
	callq	addDeferredMultiBulkLength
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB8_1
	.p2align	4, 0x90
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	addl	$1, %ebx
	cmpl	$160, %ebx
	je	.LBB8_4
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%r13), %eax
	addl	%ebx, %eax
	cltq
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	shll	$5, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	movslq	%eax, %r15
	cmpl	$0, 8(%r13,%r15,8)
	je	.LBB8_3
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movl	$2, %esi
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	movslq	8(%r13,%r15,8), %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	movl	12(%r13,%r15,8), %esi
	movq	%r14, %rdi
	callq	addReplyLongLong
	addl	$1, %r12d
	jmp	.LBB8_3
.LBB8_4:
	movslq	%r12d, %rdx
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	setDeferredMultiBulkLength # TAILCALL
.Lfunc_end8:
	.size	latencyCommandReplyWithSamples, .Lfunc_end8-latencyCommandReplyWithSamples
                                        # -- End function
	.globl	latencyCommandReplyWithLatestEvents # -- Begin function latencyCommandReplyWithLatestEvents
	.p2align	4, 0x90
	.type	latencyCommandReplyWithLatestEvents,@function
latencyCommandReplyWithLatestEvents:    # @latencyCommandReplyWithLatestEvents
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	movq	server+3104(%rip), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	callq	addReplyMultiBulkLen
	movq	server+3104(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %rbx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB9_3
# %bb.1:                                #   in Loop: Header=BB9_2 Depth=1
	movq	(%rax), %r15
	movq	8(%rax), %r14
	movl	(%r14), %eax
	movl	%eax, %ecx
	addl	$159, %ecx
	movslq	%ecx, %rcx
	imulq	$1717986919, %rcx, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	shll	$5, %ecx
	leal	(%rcx,%rcx,4), %ecx
	negl	%ecx
	leal	(%rax,%rcx), %r13d
	addl	$159, %r13d
	movl	$4, %esi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	addReplyBulkCString
	movq	%rbx, %r15
	movslq	%r13d, %rbx
	movslq	8(%r14,%rbx,8), %rsi
	movq	%r12, %rdi
	callq	addReplyLongLong
	movl	12(%r14,%rbx,8), %esi
	movq	%r15, %rbx
	movq	%r12, %rdi
	callq	addReplyLongLong
	movl	4(%r14), %esi
	movq	%r12, %rdi
	callq	addReplyLongLong
	movq	%r15, %rdi
	jmp	.LBB9_2
.LBB9_3:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	dictReleaseIterator     # TAILCALL
.Lfunc_end9:
	.size	latencyCommandReplyWithLatestEvents, .Lfunc_end9-latencyCommandReplyWithLatestEvents
                                        # -- End function
	.globl	latencyCommandGenSparkeline # -- Begin function latencyCommandGenSparkeline
	.p2align	4, 0x90
	.type	latencyCommandGenSparkeline,@function
latencyCommandGenSparkeline:            # @latencyCommandGenSparkeline
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rsi, %rbx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	createSparklineSequence
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	sdsempty
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	-144(%rbp), %r14
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB10_1
	.p2align	4, 0x90
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	movl	$64, %esi
	movl	$.L.str.43, %edx
	movq	%r14, %rdi
	movl	%eax, %ecx
.LBB10_13:                              #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	callq	snprintf
	movl	12(%rbx,%r15,8), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	sparklineSequenceAddSample
.LBB10_14:                              #   in Loop: Header=BB10_1 Depth=1
	addl	$1, %r12d
	cmpl	$160, %r12d
	je	.LBB10_15
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	addl	%r12d, %eax
	cltq
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	shll	$5, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	movslq	%eax, %r15
	cmpl	$0, 8(%rbx,%r15,8)
	je	.LBB10_14
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	12(%rbx,%r15,8), %eax
	je	.LBB10_3
# %bb.4:                                #   in Loop: Header=BB10_1 Depth=1
	cmpl	%r13d, %eax
	cmoval	%eax, %r13d
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, %eax
	cmovbl	%eax, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB10_5
	.p2align	4, 0x90
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%eax, %r13d
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	xorl	%edi, %edi
	callq	time
	subl	8(%rbx,%r15,8), %eax
	cmpl	$59, %eax
	jle	.LBB10_6
# %bb.7:                                #   in Loop: Header=BB10_1 Depth=1
	cmpl	$3599, %eax             # imm = 0xE0F
	jg	.LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_1 Depth=1
	movzwl	%ax, %eax
	imull	$34953, %eax, %ecx      # imm = 0x8889
	shrl	$21, %ecx
	movl	$64, %esi
	movl	$.L.str.44, %edx
	movq	%r14, %rdi
	jmp	.LBB10_13
.LBB10_9:                               #   in Loop: Header=BB10_1 Depth=1
	movl	%eax, %ecx
	cmpl	$86399, %eax            # imm = 0x1517F
	jg	.LBB10_11
# %bb.10:                               #   in Loop: Header=BB10_1 Depth=1
	movl	$2443359173, %eax       # imm = 0x91A2B3C5
	imulq	%rax, %rcx
	shrq	$43, %rcx
	movl	$64, %esi
	movl	$.L.str.45, %edx
	jmp	.LBB10_12
.LBB10_11:                              #   in Loop: Header=BB10_1 Depth=1
	movl	$3257812231, %eax       # imm = 0xC22E4507
	imulq	%rax, %rcx
	shrq	$48, %rcx
	movl	$64, %esi
	movl	$.L.str.46, %edx
.LBB10_12:                              #   in Loop: Header=BB10_1 Depth=1
	movq	%r14, %rdi
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	.LBB10_13
.LBB10_15:
	movl	%r13d, %ecx
	movl	-44(%rbp), %r8d         # 4-byte Reload
	movl	4(%rbx), %r9d
	movl	$.L.str.47, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	sdscatprintf
	movl	$80, %ebx
	.p2align	4, 0x90
.LBB10_16:                              # =>This Inner Loop Header: Depth=1
	movl	$.L.str.48, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	addl	$-1, %ebx
	jne	.LBB10_16
# %bb.17:
	movl	$.L.str.23, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movl	$80, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	callq	sparklineRender
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	freeSparklineSequence
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	latencyCommandGenSparkeline, .Lfunc_end10-latencyCommandGenSparkeline
                                        # -- End function
	.globl	latencyCommand          # -- Begin function latencyCommand
	.p2align	4, 0x90
	.type	latencyCommand,@function
latencyCommand:                         # @latencyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r14
	movaps	.LlatencyCommand.help+48(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	.LlatencyCommand.help+32(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	.LlatencyCommand.help+16(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	.LlatencyCommand.help(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	72(%rdi), %r15
	movq	8(%r15), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB11_5
# %bb.1:
	cmpl	$3, 64(%r14)
	jne	.LBB11_5
# %bb.2:
	movq	server+3104(%rip), %rdi
	movq	16(%r15), %rax
	movq	8(%rax), %rsi
	callq	dictFetchValue
	movq	%r14, %rdi
	testq	%rax, %rax
	je	.LBB11_3
# %bb.4:
	movq	%rax, %rsi
	callq	latencyCommandReplyWithSamples
	jmp	.LBB11_40
.LBB11_5:
	movl	$.L.str.57, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB11_9
# %bb.6:
	cmpl	$3, 64(%r14)
	jne	.LBB11_9
# %bb.7:
	movq	server+3104(%rip), %rdi
	movq	16(%r15), %rax
	movq	8(%rax), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB11_39
# %bb.8:
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	callq	latencyCommandGenSparkeline
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkCString
	jmp	.LBB11_23
.LBB11_9:
	movl	$.L.str.58, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB11_12
# %bb.10:
	cmpl	$2, 64(%r14)
	jne	.LBB11_12
# %bb.11:
	movq	%r14, %rdi
	callq	latencyCommandReplyWithLatestEvents
	jmp	.LBB11_40
.LBB11_12:
	movl	$.L.str.59, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB11_24
# %bb.13:
	cmpl	$2, 64(%r14)
	jne	.LBB11_24
# %bb.14:
	callq	createLatencyReport
	movq	%rax, %rbx
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB11_15
# %bb.16:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_17:
	shrq	$3, %rdx
	jmp	.LBB11_22
.LBB11_24:
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB11_35
# %bb.25:
	cmpl	$2, 64(%r14)
	jl	.LBB11_35
# %bb.26:
	jne	.LBB11_27
# %bb.31:
	movq	server+3104(%rip), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	dictNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB11_34
	.p2align	4, 0x90
.LBB11_32:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rsi
	movq	server+3104(%rip), %rdi
	callq	dictDelete
	movq	%r15, %rdi
	callq	dictNext
	addq	$1, %rbx
	testq	%rax, %rax
	jne	.LBB11_32
.LBB11_34:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyLongLong
	jmp	.LBB11_40
.LBB11_35:
	movl	$.L.str.61, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB11_38
# %bb.36:
	cmpl	$2, 64(%r14)
	jl	.LBB11_38
# %bb.37:
	leaq	-96(%rbp), %rsi
	movq	%r14, %rdi
	callq	addReplyHelp
	jmp	.LBB11_40
.LBB11_38:
	movq	%r14, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB11_40
.LBB11_3:
	xorl	%esi, %esi
	callq	addReplyMultiBulkLen
	jmp	.LBB11_40
.LBB11_39:
	movq	72(%r14), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.62, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB11_40
.LBB11_27:
	movq	16(%r15), %rax
	movq	8(%rax), %rdi
	callq	latencyResetEvent
	movl	%eax, %r15d
	cmpl	$4, 64(%r14)
	jl	.LBB11_30
# %bb.28:                               # %.preheader1
	movl	$3, %ebx
	.p2align	4, 0x90
.LBB11_29:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rax
	movq	8(%rax), %rdi
	callq	latencyResetEvent
	addl	%eax, %r15d
	addq	$1, %rbx
	movslq	64(%r14), %rax
	cmpq	%rax, %rbx
	jl	.LBB11_29
.LBB11_30:
	movslq	%r15d, %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	jmp	.LBB11_40
.LBB11_15:
	xorl	%edx, %edx
	jmp	.LBB11_22
.LBB11_18:
	movzbl	-3(%rbx), %edx
	jmp	.LBB11_22
.LBB11_19:
	movzwl	-5(%rbx), %edx
	jmp	.LBB11_22
.LBB11_20:
	movl	-9(%rbx), %edx
	jmp	.LBB11_22
.LBB11_21:
	movq	-17(%rbx), %rdx
.LBB11_22:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
.LBB11_23:
	movq	%rbx, %rdi
	callq	sdsfree
.LBB11_40:
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	latencyCommand, .Lfunc_end11-latencyCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_17
	.quad	.LBB11_18
	.quad	.LBB11_19
	.quad	.LBB11_20
	.quad	.LBB11_21
                                        # -- End function
	.type	latencyTimeSeriesDictType,@object # @latencyTimeSeriesDictType
	.data
	.globl	latencyTimeSeriesDictType
	.p2align	3
latencyTimeSeriesDictType:
	.quad	dictStringHash
	.quad	0
	.quad	0
	.quad	dictStringKeyCompare
	.quad	dictVanillaFree
	.quad	dictVanillaFree
	.size	latencyTimeSeriesDictType, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AnonHugePages:"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"I'm sorry, Dave, I can't do that. Latency monitoring is disabled in this Redis instance. You may use \"CONFIG SET latency-monitor-threshold <milliseconds>.\" in order to enable it. If we weren't in a deep space mission I'd suggest to take a look at http://redis.io/topics/latency-monitor.\n"
	.size	.L.str.1, 288

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Dave, I have observed latency spikes in this Redis instance. You don't mind talking about it, do you Dave?\n\n"
	.size	.L.str.2, 109

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d. %s: %d latency spikes (average %lums, mean deviation %lums, period %.2f sec). Worst all time event %lums."
	.size	.L.str.3, 110

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"fork"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"terrible"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"poor"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"good"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"excellent"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" Fork rate is %.2f GB/sec (%s)."
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"command"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fast-command"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"aof-write-pending-fsync"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"aof-write-active-child"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"aof-write-alone"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"aof-fsync-always"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"aof-fstat"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"rdb-unlik-temp-file"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"aof-rewrite-diff-write"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"aof-rename"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"expire-cycle"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"eviction-del"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"eviction-cycle"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\n"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Dave, no latency spike was observed during the lifetime of this Redis instance, not in the slightest bit. I honestly think you ought to sit down calmly, take a stress pill, and think things over.\n"
	.size	.L.str.24, 197

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\nWhile there are latency events logged, I'm not able to suggest any easy fix. Please use the Redis community to get some help, providing this report in your help request.\n"
	.size	.L.str.25, 172

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\nI have a few advices for you:\n\n"
	.size	.L.str.26, 33

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"- If you are using a virtual machine, consider upgrading it with a faster one using an hypervisior that provides less latency during fork() calls. Xen is known to have poor fork() performance. Even in the context of the same VM provider, certain kinds of instances can execute fork faster than others.\n"
	.size	.L.str.27, 303

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"- There are latency issues with potentially slow commands you are using. Try to enable the Slow Log Redis feature using the command 'CONFIG SET slowlog-log-slower-than %llu'. If the Slow log is disabled Redis is not able to log slow commands execution for you.\n"
	.size	.L.str.28, 262

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"- Your current Slow Log configuration only logs events that are slower than your configured latency monitor threshold. Please use 'CONFIG SET slowlog-log-slower-than %llu'.\n"
	.size	.L.str.29, 174

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"- Check your Slow Log to understand what are the commands you are running which are too slow to execute. Please check http://redis.io/commands/slowlog for more information.\n"
	.size	.L.str.30, 174

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"- The system is slow to execute Redis code paths not containing system calls. This usually means the system does not provide Redis CPU time to run for long periods. You should try to:\n  1) Lower the system load.\n  2) Use a computer / VM just for Redis if you are running other softawre in the same system.\n  3) Check if you have a \"noisy neighbour\" problem.\n  4) Check with 'redis-cli --intrinsic-latency 100' what is the intrinsic latency in your system.\n  5) Check if the problem is allocator-related by recompiling Redis with MALLOC=libc, if you are using Jemalloc. However this may create fragmentation problems.\n"
	.size	.L.str.31, 618

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"- It is strongly advised to use local disks for persistence, especially if you are using AOF. Remote disks provided by platform-as-a-service providers are known to be slow.\n"
	.size	.L.str.32, 174

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"- SSD disks are able to reduce fsync latency, and total time needed for snapshotting and AOF log rewriting (resulting in smaller memory usage and smaller final AOF rewrite buffer flushes). With extremely high write load SSD disks can be a good option. However Redis should perform reasonably with high load using normal disks. Use this advice as a last resort.\n"
	.size	.L.str.33, 362

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"- Mounting ext3/4 filesystems with data=writeback can provide a performance boost compared to data=ordered, however this mode of operation provides less guarantees, and sometimes it can happen that after a hard crash the AOF file will have an half-written command at the end and will require to be repaired before Redis restarts.\n"
	.size	.L.str.34, 331

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"- Try to lower the disk contention. This is often caused by other disk intensive processes running in the same computer (including other Redis instances).\n"
	.size	.L.str.35, 156

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"- Assuming from the point of view of data safety this is viable in your environment, you could try to enable the 'no-appendfsync-on-rewrite' option, so that fsync will not be performed while there is a child rewriting the AOF file or producing an RDB file (the moment where there is high disk contention).\n"
	.size	.L.str.36, 307

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"- Your fsync policy is set to 'always'. It is very hard to get good performances with such a setup, if possible try to relax the fsync policy to 'onesec'.\n"
	.size	.L.str.37, 156

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"- Latency during the AOF atomic rename operation or when the final difference is flushed to the AOF file at the end of the rewrite, sometimes is caused by very high write load, causing the AOF buffer to get very large. If possible try to send less commands to accomplish the same work, or use Lua scripts to group multiple operations into a single EVALSHA call.\n"
	.size	.L.str.38, 363

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"- In order to make the Redis keys expiring process more incremental, try to set the 'hz' configuration parameter to 100 using 'CONFIG SET hz 100'.\n"
	.size	.L.str.39, 148

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"- Deleting, expiring or evicting (because of maxmemory policy) large objects is a blocking operation. If you have very large objects that are often deleted, expired, or evicted, try to fragment those objects into multiple smaller objects.\n"
	.size	.L.str.40, 240

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"- Sudden changes to the 'maxmemory' setting via 'CONFIG SET', or allocation of large objects via sets or sorted sets intersections, STORE option of SORT, Redis Cluster large keys migrations (RESTORE command), may create sudden memory pressure forcing the server to block trying to evict keys. \n"
	.size	.L.str.41, 295

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"- I detected a non zero amount of anonymous huge pages used by your process. This creates very serious latency events in different conditions, especially when Redis is persisting on disk. To disable THP support use the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled', make sure to also add it into /etc/rc.local so that the command will be executed again after a reboot. Note that even if you have already disabled THP, you still need to restart the Redis process to get rid of the huge pages already created.\n"
	.size	.L.str.42, 530

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%ds"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%dm"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%dh"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%dd"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%s - high %lu ms, low %lu ms (all time high %lu ms)\n"
	.size	.L.str.47, 53

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"-"
	.size	.L.str.48, 2

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"DOCTOR              -- Returns a human readable latency analysis report."
	.size	.L.str.49, 73

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"GRAPH   <event>     -- Returns an ASCII latency graph for the event class."
	.size	.L.str.50, 75

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"HISTORY <event>     -- Returns time-latency samples for the event class."
	.size	.L.str.51, 73

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"LATEST              -- Returns the latest latency samples for all events."
	.size	.L.str.52, 74

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"RESET   [event ...] -- Resets latency data of one or more event classes."
	.size	.L.str.53, 73

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"                       (default: reset all data for all event classes)"
	.size	.L.str.54, 71

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"HELP                -- Prints this help."
	.size	.L.str.55, 41

	.type	.LlatencyCommand.help,@object # @latencyCommand.help
	.section	.rodata,"a",@progbits
	.p2align	4
.LlatencyCommand.help:
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	0
	.size	.LlatencyCommand.help, 64

	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"history"
	.size	.L.str.56, 8

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"graph"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"latest"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"doctor"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"reset"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"help"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"No samples available for event '%s'"
	.size	.L.str.62, 36

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
