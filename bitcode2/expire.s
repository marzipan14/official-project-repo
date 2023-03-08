	.text
	.file	"expire.c"
	.globl	activeExpireCycleTryExpire # -- Begin function activeExpireCycleTryExpire
	.p2align	4, 0x90
	.type	activeExpireCycleTryExpire,@function
activeExpireCycleTryExpire:             # @activeExpireCycleTryExpire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	xorl	%eax, %eax
	cmpq	%rdx, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB0_13
# %bb.1:
	movq	%rdi, %r14
	movq	(%rsi), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB0_2
# %bb.3:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_4:
	shrq	$3, %rsi
	jmp	.LBB0_9
.LBB0_2:
	xorl	%esi, %esi
	jmp	.LBB0_9
.LBB0_5:
	movzbl	-3(%rdi), %esi
	jmp	.LBB0_9
.LBB0_6:
	movzwl	-5(%rdi), %esi
	jmp	.LBB0_9
.LBB0_7:
	movl	-9(%rdi), %esi
	jmp	.LBB0_9
.LBB0_8:
	movq	-17(%rdi), %rsi
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, %rbx
	movl	server+3084(%rip), %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	propagateExpire
	cmpl	$0, server+3084(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	je	.LBB0_11
# %bb.10:
	callq	dbAsyncDelete
	jmp	.LBB0_12
.LBB0_11:
	callq	dbSyncDelete
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	40(%r14), %ecx
	movl	$.L.str, %esi
	movl	$256, %edi              # imm = 0x100
	movq	%rbx, %rdx
	callq	notifyKeyspaceEvent
	movq	%rbx, %rdi
	callq	decrRefCount
	addq	$1, server+1024(%rip)
	movl	$1, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	activeExpireCycleTryExpire, .Lfunc_end0-activeExpireCycleTryExpire
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function activeExpireCycle
.LCPI1_0:
	.quad	4587366580439587226     # double 0.050000000000000003
.LCPI1_1:
	.quad	4606732058837280358     # double 0.94999999999999996
	.text
	.globl	activeExpireCycle
	.p2align	4, 0x90
	.type	activeExpireCycle,@function
activeExpireCycle:                      # @activeExpireCycle
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%edi, %r14d
	callq	ustime
	movq	%rax, %rbx
	callq	clientsArePaused
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_50
# %bb.1:
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movb	activeExpireCycle.timelimit_exit(%rip), %al
	cmpl	$1, %r14d
	jne	.LBB1_5
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	movq	-72(%rbp), %rcx         # 8-byte Reload
	je	.LBB1_50
# %bb.3:
	movl	$2000, %eax             # imm = 0x7D0
	addq	activeExpireCycle.last_fast_cycle(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB1_50
# %bb.4:
	movq	%rcx, activeExpireCycle.last_fast_cycle(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_6
.LBB1_5:
	movl	server+1792(%rip), %esi
	cmpl	$15, %esi
	setg	%cl
	xorb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, -44(%rbp)          # 4-byte Folded Spill
	testb	%al, %cl
	jne	.LBB1_7
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, -44(%rbp)         # 4-byte Spill
.LBB1_7:
	movl	$25000000, %eax         # imm = 0x17D7840
	xorl	%edx, %edx
	idivl	server+40(%rip)
	movb	$0, activeExpireCycle.timelimit_exit(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %eax
	jg	.LBB1_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB1_10
.LBB1_8:
	cltq
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	cltq
.LBB1_10:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	jne	.LBB1_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1000, %eax             # imm = 0x3E8
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jle	.LBB1_13
# %bb.19:                               # %.preheader
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB1_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_29 Depth 3
	movq	server+48(%rip), %rdi
	movl	activeExpireCycle.current_db(%rip), %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	shlq	$6, %rdx
	leaq	(%rdi,%rdx), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	addl	$1, %ecx
	movl	%ecx, activeExpireCycle.current_db(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdi,%rdx), %r15
	addq	$8, %r15
	movq	%r15, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_44:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, -48(%rbp)           # 4-byte Folded Reload
	jle	.LBB1_45
.LBB1_21:                               #   Parent Loop BB1_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_29 Depth 3
	addl	$1, %ebx
	movq	(%r15), %rax
	movq	72(%rax), %r15
	addq	40(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_22
# %bb.23:                               #   in Loop: Header=BB1_21 Depth=2
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movq	56(%rax), %r14
	addq	24(%rax), %r14
	callq	mstime
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %r14
	jb	.LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_21 Depth=2
	imulq	$100, %r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	ja	.LBB1_25
.LBB1_26:                               #   in Loop: Header=BB1_21 Depth=2
	movq	%r13, -112(%rbp)        # 8-byte Spill
	movq	%r12, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$21, %r15
	jb	.LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$20, %r15d
.LBB1_28:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negq	%r15
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_29
	.p2align	4, 0x90
.LBB1_35:                               #   in Loop: Header=BB1_29 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r13
	cmpq	%r13, %r15
	je	.LBB1_36
.LBB1_29:                               #   Parent Loop BB1_20 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	callq	dictGetRandomKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_30
# %bb.31:                               #   in Loop: Header=BB1_29 Depth=3
	movq	8(%rax), %r12
	subq	%rbx, %r12
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	activeExpireCycleTryExpire
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_29 Depth=3
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_33:                               #   in Loop: Header=BB1_29 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jle	.LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_29 Depth=3
	addq	%r12, -104(%rbp)        # 8-byte Folded Spill
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_35
	.p2align	4, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_36:                               # %.loopexit
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	-96(%rbp), %r12         # 8-byte Reload
	subq	%r13, %r12
	movslq	-48(%rbp), %rbx         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	je	.LBB1_40
# %bb.37:                               #   in Loop: Header=BB1_21 Depth=2
	movslq	%r14d, %rcx
	movq	-104(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	%rcx
	movq	%rax, %rcx
	movq	40(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_21 Depth=2
	movq	%rcx, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rsi
.LBB1_39:                               #   in Loop: Header=BB1_21 Depth=2
	movq	%rsi, %rax
	movabsq	$-6640827866535438581, %r8 # imm = 0xA3D70A3D70A3D70B
	imulq	%r8
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	shrq	$63, %rax
	sarq	$5, %rdi
	addq	%rax, %rdi
	movq	%rcx, %rax
	imulq	%r8
	imulq	$49, %rdi, %rax
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$63, %rcx
	sarq	$5, %rdx
	addq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_40:                               #   in Loop: Header=BB1_21 Depth=2
	addq	%rbx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	testb	$15, %bl
	jne	.LBB1_44
# %bb.41:                               #   in Loop: Header=BB1_21 Depth=2
	callq	ustime
	subq	-72(%rbp), %rax         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rax         # 8-byte Folded Reload
	jle	.LBB1_44
# %bb.42:                               #   in Loop: Header=BB1_20 Depth=1
	movb	$1, activeExpireCycle.timelimit_exit(%rip)
	addq	$1, server+1040(%rip)
	jmp	.LBB1_43
	.p2align	4, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	$0, 40(%rax)
	jmp	.LBB1_43
.LBB1_25:                               #   in Loop: Header=BB1_20 Depth=1
	movl	-52(%rbp), %ebx         # 4-byte Reload
.LBB1_43:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_45:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-44(%rbp), %eax         # 4-byte Folded Reload
	jge	.LBB1_14
# %bb.46:                               #   in Loop: Header=BB1_20 Depth=1
	testb	$1, activeExpireCycle.timelimit_exit(%rip)
	jne	.LBB1_14
# %bb.47:                               #   in Loop: Header=BB1_20 Depth=1
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	server+1792(%rip), %esi
	jmp	.LBB1_20
.LBB1_13:
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
.LBB1_14:
	callq	ustime
	movq	server+3096(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_17
# %bb.15:
	subq	-72(%rbp), %rax         # 8-byte Folded Reload
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jl	.LBB1_17
# %bb.16:
	movl	$.L.str.1, %edi
	movq	%rdx, %rsi
	callq	latencyAddSample
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB1_48
# %bb.18:
	cvtsi2sd	%r13, %xmm0
	cvtsi2sd	%r12, %xmm1
	divsd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	mulsd	.LCPI1_0(%rip), %xmm0
	jmp	.LBB1_49
.LBB1_48:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
.LBB1_49:
	movsd	server+1032(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	.LCPI1_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, server+1032(%rip)
.LBB1_50:
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
.Lfunc_end1:
	.size	activeExpireCycle, .Lfunc_end1-activeExpireCycle
                                        # -- End function
	.globl	expireSlaveKeys         # -- Begin function expireSlaveKeys
	.p2align	4, 0x90
	.type	expireSlaveKeys,@function
expireSlaveKeys:                        # @expireSlaveKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	slaveKeysWithExpire(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_23
# %bb.1:
	movq	40(%rax), %rcx
	addq	72(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_23
# %bb.2:
	callq	mstime
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	slaveKeysWithExpire(%rip), %rdi
	xorl	%ebx, %ebx
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_3 Depth=1
	movq	slaveKeysWithExpire(%rip), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_22
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	callq	dictGetRandomKey
	movq	(%rax), %r12
	movq	8(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB2_15
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB2_5
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=2
	addq	$1, %r15
	shrq	%r13
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB2_12
.LBB2_5:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	server+1792(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jge	.LBB2_12
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	je	.LBB2_11
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=2
	movq	server+48(%rip), %rax
	movq	8(%rax,%r14), %rdi
	movq	%r12, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=2
	movq	server+48(%rip), %rdi
	addq	%r14, %rdi
	movq	%rax, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	activeExpireCycleTryExpire
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	btsq	%r15, %rbx
	jmp	.LBB2_10
	.p2align	4, 0x90
.LBB2_12:                               #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_13
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, 8(%rax)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB2_17
	.p2align	4, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_16
	.p2align	4, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_3 Depth=1
	movl	-44(%rbp), %ebx         # 4-byte Reload
.LBB2_16:                               #   in Loop: Header=BB2_3 Depth=1
	movq	slaveKeysWithExpire(%rip), %rdi
	movq	%r12, %rsi
	callq	dictDelete
.LBB2_17:                               #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, -56(%rbp)           # 4-byte Folded Reload
	jg	.LBB2_21
# %bb.18:                               #   in Loop: Header=BB2_3 Depth=1
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$63, %bl
	jne	.LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_3 Depth=1
	callq	mstime
	subq	-64(%rbp), %rax         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jle	.LBB2_20
.LBB2_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	expireSlaveKeys, .Lfunc_end2-expireSlaveKeys
                                        # -- End function
	.globl	rememberSlaveKeyWithExpire # -- Begin function rememberSlaveKeyWithExpire
	.p2align	4, 0x90
	.type	rememberSlaveKeyWithExpire,@function
rememberSlaveKeyWithExpire:             # @rememberSlaveKeyWithExpire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	slaveKeysWithExpire(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB3_2
# %bb.1:
	movl	$rememberSlaveKeyWithExpire.dt, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, %rdi
	movq	%rax, slaveKeysWithExpire(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_2:
	cmpl	$63, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB3_7
# %bb.3:
	movq	8(%r15), %rsi
	callq	dictAddOrFind
	movq	%rax, %rbx
	movq	(%rax), %rdi
	cmpq	8(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_5
# %bb.4:
	movq	%rbx, %rax
	addq	$8, %rax
	movq	8(%rbx), %rcx
	jmp	.LBB3_6
.LBB3_5:
	callq	sdsdup
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	addq	$8, %rax
	movq	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB3_6:
	movb	40(%r14), %dl
	btsq	%rdx, %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rememberSlaveKeyWithExpire, .Lfunc_end3-rememberSlaveKeyWithExpire
                                        # -- End function
	.globl	getSlaveKeyWithExpireCount # -- Begin function getSlaveKeyWithExpireCount
	.p2align	4, 0x90
	.type	getSlaveKeyWithExpireCount,@function
getSlaveKeyWithExpireCount:             # @getSlaveKeyWithExpireCount
# %bb.0:
	movq	slaveKeysWithExpire(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_1
# %bb.2:
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB4_3
.LBB4_1:
	xorl	%eax, %eax
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	getSlaveKeyWithExpireCount, .Lfunc_end4-getSlaveKeyWithExpireCount
                                        # -- End function
	.globl	flushSlaveKeysWithExpireList # -- Begin function flushSlaveKeysWithExpireList
	.p2align	4, 0x90
	.type	flushSlaveKeysWithExpireList,@function
flushSlaveKeysWithExpireList:           # @flushSlaveKeysWithExpireList
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	slaveKeysWithExpire(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_2
# %bb.1:
	callq	dictRelease
	movq	$0, slaveKeysWithExpire(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	flushSlaveKeysWithExpireList, .Lfunc_end5-flushSlaveKeysWithExpireList
                                        # -- End function
	.globl	expireGenericCommand    # -- Begin function expireGenericCommand
	.p2align	4, 0x90
	.type	expireGenericCommand,@function
expireGenericCommand:                   # @expireGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	8(%rax), %r14
	movq	16(%rax), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_15
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rax
	testl	%ebx, %ebx
	jne	.LBB6_3
# %bb.2:
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_3:
	addq	%r15, %rax
	movq	%rax, -40(%rbp)
	movq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_4
# %bb.6:
	movq	-40(%rbp), %rbx
	callq	mstime
	movl	server+860(%rip), %edx
	movq	server+2464(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jg	.LBB6_14
# %bb.7:
	testl	%edx, %edx
	jne	.LBB6_14
# %bb.8:
	testq	%rcx, %rcx
	jne	.LBB6_14
# %bb.9:
	cmpl	$0, server+3084(%rip)
	movq	16(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	je	.LBB6_11
# %bb.10:
	callq	dbAsyncDelete
	jmp	.LBB6_12
.LBB6_4:
	movq	shared+32(%rip), %rsi
	jmp	.LBB6_5
.LBB6_14:
	movq	16(%r12), %rsi
	movq	-40(%rbp), %rcx
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	setExpire
	movq	shared+40(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
	movq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	signalModifiedKey
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.5, %esi
	movl	$4, %edi
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	jmp	.LBB6_15
.LBB6_11:
	callq	dbSyncDelete
.LBB6_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_16
# %bb.13:
	addq	$1, server+2080(%rip)
	cmpl	$0, server+3084(%rip)
	movl	$shared+296, %eax
	movl	$shared+304, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rdx
	movq	%r12, %rdi
	movl	$2, %esi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	rewriteClientCommandVector
	movq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	signalModifiedKey
	movq	16(%r12), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.4, %esi
	movl	$4, %edi
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	movq	shared+40(%rip), %rsi
.LBB6_5:
	movq	%r12, %rdi
	callq	addReply
.LBB6_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_16:
	movl	$.L.str.2, %edx
	movl	$.L.str.3, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	$432, %r8d              # imm = 0x1B0
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end6:
	.size	expireGenericCommand, .Lfunc_end6-expireGenericCommand
                                        # -- End function
	.globl	expireCommand           # -- Begin function expireCommand
	.p2align	4, 0x90
	.type	expireCommand,@function
expireCommand:                          # @expireCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	mstime
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	expireGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	expireCommand, .Lfunc_end7-expireCommand
                                        # -- End function
	.globl	expireatCommand         # -- Begin function expireatCommand
	.p2align	4, 0x90
	.type	expireatCommand,@function
expireatCommand:                        # @expireatCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	expireGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	expireatCommand, .Lfunc_end8-expireatCommand
                                        # -- End function
	.globl	pexpireCommand          # -- Begin function pexpireCommand
	.p2align	4, 0x90
	.type	pexpireCommand,@function
pexpireCommand:                         # @pexpireCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	mstime
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	expireGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pexpireCommand, .Lfunc_end9-pexpireCommand
                                        # -- End function
	.globl	pexpireatCommand        # -- Begin function pexpireatCommand
	.p2align	4, 0x90
	.type	pexpireatCommand,@function
pexpireatCommand:                       # @pexpireatCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	movl	$1, %edx
	callq	expireGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pexpireatCommand, .Lfunc_end10-pexpireatCommand
                                        # -- End function
	.globl	ttlGenericCommand       # -- Begin function ttlGenericCommand
	.p2align	4, 0x90
	.type	ttlGenericCommand,@function
ttlGenericCommand:                      # @ttlGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	movl	$1, %edx
	callq	lookupKeyReadWithFlags
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_1
# %bb.2:
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	callq	getExpire
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB11_8
# %bb.3:
	movq	%rax, %rbx
	callq	mstime
	xorl	%esi, %esi
	subq	%rax, %rbx
	cmovnsq	%rbx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB11_5
# %bb.4:
	addq	$500, %rsi              # imm = 0x1F4
	shrq	$3, %rsi
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rdx, %rsi
	shrq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB11_5:
	movq	%r15, %rdi
	jmp	.LBB11_6
.LBB11_1:
	movq	%r15, %rdi
	movq	$-2, %rsi
	callq	addReplyLongLong
	jmp	.LBB11_7
.LBB11_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	$-1, %rsi
.LBB11_6:
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
.LBB11_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ttlGenericCommand, .Lfunc_end11-ttlGenericCommand
                                        # -- End function
	.globl	ttlCommand              # -- Begin function ttlCommand
	.p2align	4, 0x90
	.type	ttlCommand,@function
ttlCommand:                             # @ttlCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	ttlGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ttlCommand, .Lfunc_end12-ttlCommand
                                        # -- End function
	.globl	pttlCommand             # -- Begin function pttlCommand
	.p2align	4, 0x90
	.type	pttlCommand,@function
pttlCommand:                            # @pttlCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	ttlGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pttlCommand, .Lfunc_end13-pttlCommand
                                        # -- End function
	.globl	persistCommand          # -- Begin function persistCommand
	.p2align	4, 0x90
	.type	persistCommand,@function
persistCommand:                         # @persistCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_3
# %bb.1:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	removeExpire
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_3
# %bb.2:
	movq	shared+40(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	addq	$1, server+2080(%rip)
	jmp	.LBB14_4
.LBB14_3:
	movq	shared+32(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB14_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	persistCommand, .Lfunc_end14-persistCommand
                                        # -- End function
	.globl	touchCommand            # -- Begin function touchCommand
	.p2align	4, 0x90
	.type	touchCommand,@function
touchCommand:                           # @touchCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	cmpl	$2, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB15_5
# %bb.1:
	xorl	%r14d, %r14d
	movl	$1, %ebx
	jmp	.LBB15_2
	.p2align	4, 0x90
.LBB15_4:                               #   in Loop: Header=BB15_2 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB15_5
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_4
# %bb.3:                                #   in Loop: Header=BB15_2 Depth=1
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_4
.LBB15_5:
	movslq	%r14d, %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	touchCommand, .Lfunc_end15-touchCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"expired"
	.size	.L.str, 8

	.type	activeExpireCycle.current_db,@object # @activeExpireCycle.current_db
	.local	activeExpireCycle.current_db
	.comm	activeExpireCycle.current_db,4,4
	.type	activeExpireCycle.timelimit_exit,@object # @activeExpireCycle.timelimit_exit
	.local	activeExpireCycle.timelimit_exit
	.comm	activeExpireCycle.timelimit_exit,1,4
	.type	activeExpireCycle.last_fast_cycle,@object # @activeExpireCycle.last_fast_cycle
	.local	activeExpireCycle.last_fast_cycle
	.comm	activeExpireCycle.last_fast_cycle,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"expire-cycle"
	.size	.L.str.1, 13

	.type	slaveKeysWithExpire,@object # @slaveKeysWithExpire
	.bss
	.globl	slaveKeysWithExpire
	.p2align	3
slaveKeysWithExpire:
	.quad	0
	.size	slaveKeysWithExpire, 8

	.type	rememberSlaveKeyWithExpire.dt,@object # @rememberSlaveKeyWithExpire.dt
	.data
	.p2align	3
rememberSlaveKeyWithExpire.dt:
	.quad	dictSdsHash
	.quad	0
	.quad	0
	.quad	dictSdsKeyCompare
	.quad	dictSdsDestructor
	.quad	0
	.size	rememberSlaveKeyWithExpire.dt, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"deleted"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/expire.c"
	.size	.L.str.3, 74

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"del"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"expire"
	.size	.L.str.5, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
