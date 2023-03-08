	.text
	.file	"evict.c"
	.globl	getLRUClock             # -- Begin function getLRUClock
	.p2align	4, 0x90
	.type	getLRUClock,@function
getLRUClock:                            # @getLRUClock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	mstime
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	movq	%rdx, %rcx
	shrq	$63, %rcx
	shrl	$7, %eax
	addl	%ecx, %eax
	andl	$16777215, %eax         # imm = 0xFFFFFF
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	getLRUClock, .Lfunc_end0-getLRUClock
                                        # -- End function
	.globl	LRU_CLOCK               # -- Begin function LRU_CLOCK
	.p2align	4, 0x90
	.type	LRU_CLOCK,@function
LRU_CLOCK:                              # @LRU_CLOCK
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	server+80(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	LRU_CLOCK, .Lfunc_end1-LRU_CLOCK
                                        # -- End function
	.globl	estimateObjectIdleTime  # -- Begin function estimateObjectIdleTime
	.p2align	4, 0x90
	.type	estimateObjectIdleTime,@function
estimateObjectIdleTime:                 # @estimateObjectIdleTime
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	server+80(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %ecx
	shrq	$8, %rcx
	movl	%ecx, %edx
	xorl	$16777215, %edx         # imm = 0xFFFFFF
	movq	%rcx, %rsi
	negq	%rsi
	cmpl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%rsi, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	estimateObjectIdleTime, .Lfunc_end2-estimateObjectIdleTime
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function evictionPoolAlloc
.LCPI3_0:
	.zero	16
	.text
	.globl	evictionPoolAlloc
	.p2align	4, 0x90
	.type	evictionPoolAlloc,@function
evictionPoolAlloc:                      # @evictionPoolAlloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$512, %edi              # imm = 0x200
	callq	zmalloc
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %ebx
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	movups	%xmm0, -24(%r14,%rbx)
	movl	$255, %esi
	xorl	%edi, %edi
	callq	sdsnewlen
	movq	%rax, -8(%r14,%rbx)
	movl	$0, (%r14,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rbx
	cmpq	$536, %rbx              # imm = 0x218
	jne	.LBB3_1
# %bb.2:
	movq	%r14, EvictionPoolLRU(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	evictionPoolAlloc, .Lfunc_end3-evictionPoolAlloc
                                        # -- End function
	.globl	evictionPoolPopulate    # -- Begin function evictionPoolPopulate
	.p2align	4, 0x90
	.type	evictionPoolPopulate,@function
evictionPoolPopulate:                   # @evictionPoolPopulate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rcx, %rbx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rcx
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movl	server+2716(%rip), %edx
	movq	%rsp, %rsi
	leaq	15(,%rdx,8), %rax
	andq	$-16, %rax
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	callq	dictGetSomeKeys
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB4_56
# %bb.1:
	movq	%rbx, %r8
	leaq	32(%rbx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	cltq
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	8(%rbx), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_2:                                #   in Loop: Header=BB4_5 Depth=1
	movslq	%r15d, %rbx
	movq	%rsi, %rdi
	callq	sdsdup
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rbx, %rcx
	shlq	$5, %rcx
	movq	%rax, 8(%r8,%rcx)
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	shlq	$5, %rbx
	movq	%r13, (%r8,%rbx)
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, 24(%r8,%rbx)
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-104(%rbp), %r12        # 8-byte Folded Reload
	jge	.LBB4_56
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax,%r12,8), %rax
	movq	(%rax), %rsi
	movl	server+2712(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$512, %ecx              # imm = 0x200
	jne	.LBB4_8
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	addq	$8, %rax
	movq	(%rax), %r13
	notq	%r13
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rdi, -80(%rbp)         # 8-byte Folded Reload
	je	.LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	movq	%rsi, %rbx
	callq	dictFind
	movq	%rbx, %rsi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2712(%rip), %ecx
.LBB4_10:                               #   in Loop: Header=BB4_5 Depth=1
	movq	8(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB4_13
# %bb.11:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$512, %ecx              # imm = 0x200
	je	.LBB4_7
	jmp	.LBB4_57
	.p2align	4, 0x90
.LBB4_13:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	server+80(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %ecx
	shrq	$8, %rcx
	movl	%ecx, %edx
	xorl	$16777215, %edx         # imm = 0xFFFFFF
	movq	%rcx, %rdi
	negq	%rdi
	cmpl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%rdi, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	imulq	$1000, %rdx, %r13       # imm = 0x3E8
	jmp	.LBB4_22
.LBB4_14:                               #   in Loop: Header=BB4_5 Depth=1
	movl	(%rdx), %ebx
	movzbl	%bh, %ecx
	movslq	server+2724(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_20
# %bb.15:                               #   in Loop: Header=BB4_5 Depth=1
	movq	%rcx, %r9
	shrq	$16, %rbx
	movq	server+2872(%rip), %rcx
	movq	%rcx, %rax
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrl	$5, %edx
	addl	%eax, %edx
	movzwl	%dx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdx
	xorq	$65535, %rdx            # imm = 0xFFFF
	movq	%rbx, %rcx
	negq	%rcx
	cmpq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%rdx, %rcx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rcx
	jae	.LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_5 Depth=1
	movq	%r9, %rcx
	jmp	.LBB4_21
.LBB4_17:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rax
	jbe	.LBB4_19
# %bb.18:                               #   in Loop: Header=BB4_5 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB4_20
.LBB4_19:                               #   in Loop: Header=BB4_5 Depth=1
	movq	%r9, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB4_20:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_21:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$255, %r13d
	subq	%rcx, %r13
.LBB4_22:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_23:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB4_24:                               #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_28
# %bb.25:                               #   in Loop: Header=BB4_24 Depth=2
	cmpq	%r13, -8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB4_29
# %bb.26:                               #   in Loop: Header=BB4_24 Depth=2
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rax
	cmpq	$16, %r15
	jb	.LBB4_24
# %bb.27:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_31
	.p2align	4, 0x90
.LBB4_28:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_29:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB4_35
.LBB4_30:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_38
.LBB4_31:                               #   in Loop: Header=BB4_5 Depth=1
	movq	%r12, -56(%rbp)         # 8-byte Spill
	cmpq	$0, 488(%r8)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r12
	je	.LBB4_36
# %bb.32:                               #   in Loop: Header=BB4_5 Depth=1
	addl	$-1, %r15d
	movq	8(%r8), %rdi
	movq	16(%r8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdi
	je	.LBB4_34
# %bb.33:                               #   in Loop: Header=BB4_5 Depth=1
	callq	sdsfree
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB4_34:                               #   in Loop: Header=BB4_5 Depth=1
	movslq	%r15d, %r14
	shlq	$5, %r14
	movq	%r8, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	memmove
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rbx, 16(%r8,%r14)
	jmp	.LBB4_37
	.p2align	4, 0x90
.LBB4_35:                               #   in Loop: Header=BB4_5 Depth=1
	cmpq	$0, 488(%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_4
	jmp	.LBB4_30
	.p2align	4, 0x90
.LBB4_36:                               #   in Loop: Header=BB4_5 Depth=1
	movq	496(%r8), %r14
	movl	%r15d, %ebx
	shlq	$5, %rbx
	leaq	(%r8,%rbx), %rsi
	leaq	(%r8,%rbx), %rdi
	addq	$32, %rdi
	movl	$15, %eax
	subl	%r15d, %eax
	movslq	%eax, %rdx
	shlq	$5, %rdx
	callq	memmove
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r14, 16(%r8,%rbx)
.LBB4_37:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB4_38:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	-1(%rsi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_46
# %bb.39:                               #   in Loop: Header=BB4_5 Depth=1
	movl	%r14d, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_40:                               #   in Loop: Header=BB4_5 Depth=1
	shrq	$3, %r14
	jmp	.LBB4_45
.LBB4_41:                               #   in Loop: Header=BB4_5 Depth=1
	movq	-17(%rsi), %r14
	jmp	.LBB4_45
.LBB4_42:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	-5(%rsi), %r14d
	jmp	.LBB4_45
.LBB4_43:                               #   in Loop: Header=BB4_5 Depth=1
	movl	-9(%rsi), %r14d
	jmp	.LBB4_45
.LBB4_44:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	-3(%rsi), %r14d
	.p2align	4, 0x90
.LBB4_45:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %r14d             # imm = 0x100
	jge	.LBB4_2
	jmp	.LBB4_47
.LBB4_46:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
.LBB4_47:                               #   in Loop: Header=BB4_5 Depth=1
	movslq	%r15d, %rbx
	movq	%rbx, %r15
	shlq	$5, %r15
	leaq	(%r8,%r15), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	16(%r8,%r15), %rdi
	leal	1(%r14), %eax
	movslq	%eax, %rdx
	callq	memcpy
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	16(%r8,%r15), %rax
	movzbl	-1(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB4_55
# %bb.48:                               #   in Loop: Header=BB4_5 Depth=1
	movslq	%r14d, %rdx
	andl	$7, %ecx
	jmpq	*.LJTI4_1(,%rcx,8)
.LBB4_49:                               #   in Loop: Header=BB4_5 Depth=1
	shlb	$3, %r14b
	movb	%r14b, -1(%rax)
	jmp	.LBB4_54
.LBB4_50:                               #   in Loop: Header=BB4_5 Depth=1
	movq	%rdx, -17(%rax)
	jmp	.LBB4_54
.LBB4_51:                               #   in Loop: Header=BB4_5 Depth=1
	movw	%dx, -5(%rax)
	jmp	.LBB4_54
.LBB4_52:                               #   in Loop: Header=BB4_5 Depth=1
	movl	%r14d, -9(%rax)
	jmp	.LBB4_54
.LBB4_53:                               #   in Loop: Header=BB4_5 Depth=1
	movb	%dl, -3(%rax)
	.p2align	4, 0x90
.LBB4_54:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_55:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 8(%r8,%r15)
	jmp	.LBB4_3
.LBB4_56:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_57:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$202, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end4:
	.size	evictionPoolPopulate, .Lfunc_end4-evictionPoolPopulate
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_40
	.quad	.LBB4_44
	.quad	.LBB4_42
	.quad	.LBB4_43
	.quad	.LBB4_41
.LJTI4_1:
	.quad	.LBB4_49
	.quad	.LBB4_53
	.quad	.LBB4_51
	.quad	.LBB4_52
	.quad	.LBB4_50
                                        # -- End function
	.text
	.globl	LFUDecrAndReturn        # -- Begin function LFUDecrAndReturn
	.p2align	4, 0x90
	.type	LFUDecrAndReturn,@function
LFUDecrAndReturn:                       # @LFUDecrAndReturn
# %bb.0:
	pushq	%rbx
	movl	(%rdi), %ebx
	movzbl	%bh, %ecx
	movslq	server+2724(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_5
# %bb.1:
	shrq	$16, %rbx
	movq	server+2872(%rip), %rsi
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rsi, %rax
	imulq	%rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrl	$5, %edx
	addl	%eax, %edx
	movzwl	%dx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdx
	xorq	$65535, %rdx            # imm = 0xFFFF
	movq	%rbx, %rsi
	negq	%rsi
	cmpq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%rdx, %rsi
	addq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jb	.LBB5_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB5_4
# %bb.3:
	xorl	%ecx, %ecx
	jmp	.LBB5_5
.LBB5_4:
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	LFUDecrAndReturn, .Lfunc_end5-LFUDecrAndReturn
                                        # -- End function
	.globl	LFUGetTimeInMinutes     # -- Begin function LFUGetTimeInMinutes
	.p2align	4, 0x90
	.type	LFUGetTimeInMinutes,@function
LFUGetTimeInMinutes:                    # @LFUGetTimeInMinutes
# %bb.0:
	movq	server+2872(%rip), %rcx
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrl	$5, %edx
	addl	%eax, %edx
	movzwl	%dx, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	LFUGetTimeInMinutes, .Lfunc_end6-LFUGetTimeInMinutes
                                        # -- End function
	.globl	LFUTimeElapsed          # -- Begin function LFUTimeElapsed
	.p2align	4, 0x90
	.type	LFUTimeElapsed,@function
LFUTimeElapsed:                         # @LFUTimeElapsed
# %bb.0:
	movq	server+2872(%rip), %rcx
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrl	$5, %edx
	addl	%eax, %edx
	movzwl	%dx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	cmpq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$65535, %eax            # imm = 0xFFFF
	cmovaeq	%rdx, %rax
	subq	%rdi, %rax
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	LFUTimeElapsed, .Lfunc_end7-LFUTimeElapsed
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function LFULogIncr
.LCPI8_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI8_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	LFULogIncr
	.p2align	4, 0x90
	.type	LFULogIncr,@function
LFULogIncr:                             # @LFULogIncr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %bl
	je	.LBB8_1
# %bb.2:
	callq	rand
	cvtsi2sd	%eax, %xmm0
	divsd	.LCPI8_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %bl
	ja	.LBB8_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	jmp	.LBB8_5
.LBB8_1:
	movb	$-1, %bl
	jmp	.LBB8_7
.LBB8_3:
	movzbl	%bl, %eax
	addl	$-5, %eax
	cvtsi2sd	%eax, %xmm1
.LBB8_5:
	cvtsi2sdl	server+2720(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB8_7
# %bb.6:
	addb	$1, %bl
	movl	$42, __A_VARIABLE(%rip)
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	LFULogIncr, .Lfunc_end8-LFULogIncr
                                        # -- End function
	.globl	freeMemoryGetNotCountedMemory # -- Begin function freeMemoryGetNotCountedMemory
	.p2align	4, 0x90
	.type	freeMemoryGetNotCountedMemory,@function
freeMemoryGetNotCountedMemory:          # @freeMemoryGetNotCountedMemory
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	server+536(%rip), %rdi
	cmpl	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_1
# %bb.2:
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB9_5
# %bb.3:                                # %.preheader
	leaq	-32(%rbp), %r14
	.p2align	4, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rdi
	callq	getClientOutputBufferMemoryUsage
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB9_4
.LBB9_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_6
.LBB9_1:
	xorl	%ebx, %ebx
.LBB9_6:
	cmpl	$0, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_16
# %bb.7:
	movq	server+1952(%rip), %rax
	movzbl	-1(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB9_8
# %bb.9:
	movl	%r14d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI9_0(,%rcx,8)
.LBB9_10:
	shrq	$3, %r14
	jmp	.LBB9_15
.LBB9_8:
	xorl	%r14d, %r14d
	jmp	.LBB9_15
.LBB9_11:
	movzbl	-2(%rax), %r14d
	jmp	.LBB9_15
.LBB9_12:
	movzwl	-3(%rax), %r14d
	jmp	.LBB9_15
.LBB9_13:
	movl	-5(%rax), %r14d
	jmp	.LBB9_15
.LBB9_14:
	movq	-9(%rax), %r14
.LBB9_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	aofRewriteBufferSize
	addq	%rbx, %r14
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
.LBB9_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	freeMemoryGetNotCountedMemory, .Lfunc_end9-freeMemoryGetNotCountedMemory
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_10
	.quad	.LBB9_11
	.quad	.LBB9_12
	.quad	.LBB9_13
	.quad	.LBB9_14
                                        # -- End function
	.text
	.globl	getMaxmemoryState       # -- Begin function getMaxmemoryState
	.p2align	4, 0x90
	.type	getMaxmemoryState,@function
getMaxmemoryState:                      # @getMaxmemoryState
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	zmalloc_used_memory
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB10_2
# %bb.1:
	movq	%r13, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_2:
	movq	server+2704(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_3
# %bb.4:
	cmpq	%rax, %r13
	setbe	%bl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_5
.LBB10_3:
	movb	$1, %bl
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB10_7
# %bb.6:
	xorl	%eax, %eax
	testb	%bl, %bl
	jne	.LBB10_28
.LBB10_7:
	callq	freeMemoryGetNotCountedMemory
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r13
	jbe	.LBB10_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_10
.LBB10_8:
	xorl	%r13d, %r13d
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB10_21
# %bb.11:
	movq	server+2704(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_12
# %bb.13:
	testq	%r13, %r13
	js	.LBB10_14
# %bb.15:
	cvtsi2ss	%r13, %xmm0
	testq	%rax, %rax
	jns	.LBB10_18
.LBB10_17:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	cvtsi2ss	%rax, %xmm1
	addss	%xmm1, %xmm1
	jmp	.LBB10_19
.LBB10_12:
	xorps	%xmm0, %xmm0
	jmp	.LBB10_20
.LBB10_14:
	movq	%r13, %rcx
	shrq	%rcx
	movl	%r13d, %edx
	andl	$1, %edx
	orq	%rcx, %rdx
	cvtsi2ss	%rdx, %xmm0
	addss	%xmm0, %xmm0
	testq	%rax, %rax
	js	.LBB10_17
.LBB10_18:
	cvtsi2ss	%rax, %xmm1
.LBB10_19:
	divss	%xmm1, %xmm0
.LBB10_20:
	movss	%xmm0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_21:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testb	%bl, %bl
	jne	.LBB10_27
# %bb.22:
	movq	%r13, %rcx
	subq	server+2704(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB10_27
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB10_25
# %bb.24:
	movq	%r13, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testq	%r14, %r14
	je	.LBB10_27
# %bb.26:
	movq	%rcx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_28:
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
.Lfunc_end10:
	.size	getMaxmemoryState, .Lfunc_end10-getMaxmemoryState
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function freeMemoryIfNeeded
.LCPI11_0:
	.zero	16
	.text
	.globl	freeMemoryIfNeeded
	.p2align	4, 0x90
	.type	freeMemoryIfNeeded,@function
freeMemoryIfNeeded:                     # @freeMemoryIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	cmpq	$0, server+2464(%rip)
	movl	server+2560(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_2
# %bb.1:
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.LBB11_88
.LBB11_2:
	movq	server+536(%rip), %rax
	movl	40(%rax), %r12d
	callq	clientsArePaused
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB11_87
# %bb.3:
	callq	zmalloc_used_memory
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2704(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_9
# %bb.5:
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	freeMemoryGetNotCountedMemory
	movq	-88(%rbp), %r14         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r14
	jbe	.LBB11_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	server+2704(%rip), %r14
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB11_8
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, server+2712(%rip) # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_12
# %bb.11:
	xorl	%r15d, %r15d
	jmp	.LBB11_79
.LBB11_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_86:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_87:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_88:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_12:
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_13
# %bb.14:
	callq	mstime
	jmp	.LBB11_15
.LBB11_13:
	xorl	%eax, %eax
.LBB11_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB11_73
# %bb.16:
	xorl	%ecx, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
                                        # implicit-def: $r13d
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movl	%r12d, -60(%rbp)        # 4-byte Spill
.LBB11_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_41 Depth 2
                                        #     Child Loop BB11_20 Depth 2
                                        #       Child Loop BB11_22 Depth 3
                                        #       Child Loop BB11_27 Depth 3
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	server+2712(%rip), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$512, %r8d              # imm = 0x200
	je	.LBB11_19
# %bb.18:                               #   in Loop: Header=BB11_17 Depth=1
	movl	%r8d, %eax
	andl	$3, %eax
	jne	.LBB11_19
# %bb.37:                               #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1540, %r8d             # imm = 0x604
	je	.LBB11_39
# %bb.38:                               #   in Loop: Header=BB11_17 Depth=1
	cmpl	$768, %r8d              # imm = 0x300
	jne	.LBB11_47
.LBB11_39:                              #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %r10d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	jle	.LBB11_47
# %bb.40:                               #   in Loop: Header=BB11_17 Depth=1
	movq	server+48(%rip), %rsi
	movl	freeMemoryIfNeeded.next_db(%rip), %r9d
	addl	$1, %r9d
	xorl	%ebx, %ebx
.LBB11_41:                              #   Parent Loop BB11_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r9,%rbx), %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r10d
	movl	%edx, %r13d
	movslq	%edx, %rax
	shlq	$6, %rax
	leaq	(%rsi,%rax), %rdx
	cmpl	$1540, %r8d             # imm = 0x604
	movl	%ecx, freeMemoryIfNeeded.next_db(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%rsi,%rax), %rax
	cmoveq	%rdx, %rax
	movq	(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_42
# %bb.46:                               #   in Loop: Header=BB11_41 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r10d, %ebx
	jl	.LBB11_41
	jmp	.LBB11_47
.LBB11_19:                              #   in Loop: Header=BB11_17 Depth=1
	movq	EvictionPoolLRU(%rip), %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_20
.LBB11_35:                              #   in Loop: Header=BB11_20 Depth=2
	xorl	%edi, %edi
.LBB11_36:                              #   in Loop: Header=BB11_20 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB11_43
.LBB11_20:                              #   Parent Loop BB11_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_22 Depth 3
                                        #       Child Loop BB11_27 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB11_32
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB11_20 Depth=2
	movq	%r13, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	jmp	.LBB11_22
	.p2align	4, 0x90
.LBB11_24:                              #   in Loop: Header=BB11_22 Depth=3
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %r13
	cmpq	%rcx, %rbx
	jge	.LBB11_25
.LBB11_22:                              #   Parent Loop BB11_17 Depth=1
                                        #     Parent Loop BB11_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	server+48(%rip), %rcx
	leaq	(%rcx,%r13), %rdx
	testb	$4, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%rcx,%r13), %rsi
	cmovneq	%rdx, %rsi
	movq	(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rsi), %r12
	addq	40(%rsi), %r12
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_24
# %bb.23:                               #   in Loop: Header=BB11_22 Depth=3
	movq	(%rcx,%r13), %rdx
	movl	%ebx, %edi
	movq	%r14, %rcx
	callq	evictionPoolPopulate
	addq	%r12, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %eax
	jmp	.LBB11_24
.LBB11_25:                              #   in Loop: Header=BB11_20 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movl	-60(%rbp), %r12d        # 4-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	je	.LBB11_33
# %bb.26:                               #   in Loop: Header=BB11_20 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$512, %ebx              # imm = 0x200
	jmp	.LBB11_27
	.p2align	4, 0x90
.LBB11_30:                              #   in Loop: Header=BB11_27 Depth=3
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%r14,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB11_31
.LBB11_34:                              #   in Loop: Header=BB11_27 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-32, %rbx
	je	.LBB11_35
.LBB11_27:                              #   Parent Loop BB11_17 Depth=1
                                        #     Parent Loop BB11_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%r14,%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB11_34
# %bb.28:                               #   in Loop: Header=BB11_27 Depth=3
	movslq	-8(%r14,%rbx), %r13
	movq	server+48(%rip), %rax
	movq	%r13, %rcx
	shlq	$6, %rcx
	leaq	(%rax,%rcx), %rdx
	testb	$4, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%rax,%rcx), %rax
	cmovneq	%rdx, %rax
	movq	(%rax), %rdi
	callq	dictFind
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-24(%r14,%rbx), %rdi
	cmpq	-16(%r14,%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_30
# %bb.29:                               #   in Loop: Header=BB11_27 Depth=3
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_30
.LBB11_31:                              #   in Loop: Header=BB11_20 Depth=2
	movq	(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_36
.LBB11_42:                              #   in Loop: Header=BB11_17 Depth=1
	callq	dictGetRandomKey
	movq	(%rax), %rdi
	jmp	.LBB11_43
.LBB11_32:                              #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_33:                              #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
.LBB11_43:                              #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	je	.LBB11_48
# %bb.44:                               #   in Loop: Header=BB11_17 Depth=1
	movq	server+48(%rip), %rdx
	movslq	%r13d, %rcx
	shlq	$6, %rcx
	leaq	(%rdx,%rcx), %r15
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB11_45
# %bb.50:                               #   in Loop: Header=BB11_17 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_51:                              #   in Loop: Header=BB11_17 Depth=1
	shrq	$3, %rsi
	jmp	.LBB11_56
.LBB11_45:                              #   in Loop: Header=BB11_17 Depth=1
	xorl	%esi, %esi
	jmp	.LBB11_56
.LBB11_52:                              #   in Loop: Header=BB11_17 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB11_56
.LBB11_53:                              #   in Loop: Header=BB11_17 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB11_56
.LBB11_54:                              #   in Loop: Header=BB11_17 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB11_56
.LBB11_55:                              #   in Loop: Header=BB11_17 Depth=1
	movq	-17(%rdi), %rsi
.LBB11_56:                              #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, %rbx
	movl	server+3080(%rip), %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	propagateExpire
	callq	zmalloc_used_memory
	movq	%rax, %r14
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_57
# %bb.58:                               #   in Loop: Header=BB11_17 Depth=1
	callq	mstime
	jmp	.LBB11_59
.LBB11_57:                              #   in Loop: Header=BB11_17 Depth=1
	xorl	%eax, %eax
.LBB11_59:                              #   in Loop: Header=BB11_17 Depth=1
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+3080(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	je	.LBB11_61
# %bb.60:                               #   in Loop: Header=BB11_17 Depth=1
	callq	dbAsyncDelete
	jmp	.LBB11_62
.LBB11_61:                              #   in Loop: Header=BB11_17 Depth=1
	callq	dbSyncDelete
.LBB11_62:                              #   in Loop: Header=BB11_17 Depth=1
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_63
# %bb.64:                               #   in Loop: Header=BB11_17 Depth=1
	callq	mstime
	movq	%rax, %rbx
	subq	-48(%rbp), %rbx         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_67
# %bb.65:                               #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB11_67
# %bb.66:                               #   in Loop: Header=BB11_17 Depth=1
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	callq	latencyAddSample
	movl	$42, __A_VARIABLE(%rip)
.LBB11_67:                              #   in Loop: Header=BB11_17 Depth=1
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB11_68
.LBB11_63:                              #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB11_68:                              #   in Loop: Header=BB11_17 Depth=1
	callq	zmalloc_used_memory
	movq	%rax, %r15
	addq	-56(%rbp), %r14         # 8-byte Folded Reload
	addq	$1, server+1048(%rip)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	40(%rcx,%rax), %ecx
	movl	$.L.str.3, %esi
	movl	$512, %edi              # imm = 0x200
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdx
	callq	notifyKeyspaceEvent
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB11_70
# %bb.69:                               #   in Loop: Header=BB11_17 Depth=1
	callq	flushSlavesOutputBuffers
	movl	$42, __A_VARIABLE(%rip)
.LBB11_70:                              #   in Loop: Header=BB11_17 Depth=1
	subq	%r15, %r14
	cmpl	$0, server+3080(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_72
# %bb.71:                               #   in Loop: Header=BB11_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB11_72:                              #   in Loop: Header=BB11_17 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	-48(%rbp), %rax         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rcx
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %r14
	movq	%rcx, %r14
	jb	.LBB11_17
.LBB11_73:
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_74
# %bb.83:
	movq	%rax, %r14
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %rcx
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_87
# %bb.84:
	subq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB11_87
# %bb.85:
	movl	$.L.str.4, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
	jmp	.LBB11_86
.LBB11_47:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_48:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_49
# %bb.75:
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB11_78
# %bb.76:
	subq	-80(%rbp), %rax         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB11_78
# %bb.77:
	movl	$.L.str.4, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_78
.LBB11_49:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB11_78:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_79:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %edi
	callq	bioPendingJobsOfType
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB11_87
# %bb.80:
	addq	-88(%rbp), %r15         # 8-byte Folded Reload
.LBB11_81:                              # =>This Inner Loop Header: Depth=1
	callq	zmalloc_used_memory
	movq	%r15, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jae	.LBB11_87
# %bb.82:                               #   in Loop: Header=BB11_81 Depth=1
	movl	$1000, %edi             # imm = 0x3E8
	callq	usleep
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %edi
	callq	bioPendingJobsOfType
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB11_81
	jmp	.LBB11_87
.LBB11_74:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB11_87
.Lfunc_end11:
	.size	freeMemoryIfNeeded, .Lfunc_end11-freeMemoryIfNeeded
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_51
	.quad	.LBB11_52
	.quad	.LBB11_53
	.quad	.LBB11_54
	.quad	.LBB11_55
                                        # -- End function
	.text
	.globl	freeMemoryIfNeededAndSafe # -- Begin function freeMemoryIfNeededAndSafe
	.p2align	4, 0x90
	.type	freeMemoryIfNeededAndSafe,@function
freeMemoryIfNeededAndSafe:              # @freeMemoryIfNeededAndSafe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	server+860(%rip), %ecx
	xorl	%eax, %eax
	orl	server+3068(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_2
# %bb.1:
	callq	freeMemoryIfNeeded
.LBB12_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	freeMemoryIfNeededAndSafe, .Lfunc_end12-freeMemoryIfNeededAndSafe
                                        # -- End function
	.type	EvictionPoolLRU,@object # @EvictionPoolLRU
	.local	EvictionPoolLRU
	.comm	EvictionPoolLRU,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/evict.c"
	.size	.L.str, 73

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Unknown eviction policy in evictionPoolPopulate()"
	.size	.L.str.1, 50

	.type	freeMemoryIfNeeded.next_db,@object # @freeMemoryIfNeeded.next_db
	.local	freeMemoryIfNeeded.next_db
	.comm	freeMemoryIfNeeded.next_db,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"eviction-del"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"evicted"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"eviction-cycle"
	.size	.L.str.4, 15

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
