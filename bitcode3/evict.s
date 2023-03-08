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
	movl	server+80(%rip), %eax
	retq
.Lfunc_end1:
	.size	LRU_CLOCK, .Lfunc_end1-LRU_CLOCK
                                        # -- End function
	.globl	estimateObjectIdleTime  # -- Begin function estimateObjectIdleTime
	.p2align	4, 0x90
	.type	estimateObjectIdleTime,@function
estimateObjectIdleTime:                 # @estimateObjectIdleTime
# %bb.0:
	movl	server+80(%rip), %eax
	movl	(%rdi), %ecx
	shrq	$8, %rcx
	movl	%ecx, %edx
	xorl	$16777215, %edx         # imm = 0xFFFFFF
	movq	%rcx, %rsi
	negq	%rsi
	cmpl	%ecx, %eax
	cmovaeq	%rsi, %rdx
	addq	%rax, %rdx
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
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
	addq	$32, %rbx
	cmpq	$536, %rbx              # imm = 0x218
	jne	.LBB3_1
# %bb.2:
	movq	%r14, EvictionPoolLRU(%rip)
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
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, %rcx
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movl	server+2716(%rip), %edx
	movq	%rsp, %rsi
	leaq	15(,%rdx,8), %rax
	andq	$-16, %rax
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	callq	dictGetSomeKeys
	testl	%eax, %eax
	jle	.LBB4_88
# %bb.1:
	leaq	32(%r13), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	cltq
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	movq	%r15, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_6
.LBB4_2:                                #   in Loop: Header=BB4_6 Depth=1
	movq	%rdx, -17(%rax)
	.p2align	4, 0x90
.LBB4_3:                                #   in Loop: Header=BB4_6 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 8(%r13,%r15)
.LBB4_4:                                #   in Loop: Header=BB4_6 Depth=1
	shlq	$5, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%r13,%rbx)
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, 24(%r13,%rbx)
	movq	-96(%rbp), %r15         # 8-byte Reload
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=1
	addq	$1, %r14
	cmpq	-104(%rbp), %r14        # 8-byte Folded Reload
	jge	.LBB4_88
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax,%r14,8), %rax
	movq	(%rax), %r8
	movl	server+2712(%rip), %ecx
	cmpl	$512, %ecx              # imm = 0x200
	jne	.LBB4_8
.LBB4_7:                                #   in Loop: Header=BB4_6 Depth=1
	addq	$8, %rax
	movq	(%rax), %rax
	notq	%rax
	jmp	.LBB4_18
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_6 Depth=1
	cmpq	%r15, -88(%rbp)         # 8-byte Folded Reload
	je	.LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_6 Depth=1
	movq	%r15, %rdi
	movq	%r8, %rsi
	movq	%r8, %rbx
	callq	dictFind
	movq	%rbx, %r8
	movl	server+2712(%rip), %ecx
.LBB4_10:                               #   in Loop: Header=BB4_6 Depth=1
	movq	8(%rax), %rdx
	testb	$1, %cl
	jne	.LBB4_13
# %bb.11:                               #   in Loop: Header=BB4_6 Depth=1
	testb	$2, %cl
	jne	.LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_6 Depth=1
	cmpl	$512, %ecx              # imm = 0x200
	je	.LBB4_7
	jmp	.LBB4_89
	.p2align	4, 0x90
.LBB4_13:                               #   in Loop: Header=BB4_6 Depth=1
	movl	server+80(%rip), %eax
	movl	(%rdx), %ecx
	shrq	$8, %rcx
	movl	%ecx, %edx
	xorl	$16777215, %edx         # imm = 0xFFFFFF
	movq	%rcx, %rsi
	negq	%rsi
	cmpl	%ecx, %eax
	cmovaeq	%rsi, %rdx
	addq	%rax, %rdx
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	jmp	.LBB4_18
.LBB4_14:                               #   in Loop: Header=BB4_6 Depth=1
	movl	(%rdx), %ebx
	movzbl	%bh, %esi
	movslq	server+2724(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB4_17
# %bb.15:                               #   in Loop: Header=BB4_6 Depth=1
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
	subq	%rbx, %rax
	movl	$0, %ecx
	movl	$65535, %edx            # imm = 0xFFFF
	cmovbq	%rdx, %rcx
	addq	%rax, %rcx
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
	cmpq	%rdi, %rcx
	jb	.LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	%rsi, %rax
	cmovaq	%rax, %rsi
	subq	%rax, %rsi
.LBB4_17:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$255, %eax
	subq	%rsi, %rax
	.p2align	4, 0x90
.LBB4_18:                               #   in Loop: Header=BB4_6 Depth=1
	movq	8(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB4_50
# %bb.19:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	%rax, (%r13)
	jae	.LBB4_50
# %bb.20:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 40(%r13)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$1, %r15d
	je	.LBB4_73
# %bb.21:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	%rax, 32(%r13)
	jae	.LBB4_52
# %bb.22:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 72(%r13)
	je	.LBB4_58
# %bb.23:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$2, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 64(%r13)
	jae	.LBB4_52
# %bb.24:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 104(%r13)
	je	.LBB4_59
# %bb.25:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$3, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 96(%r13)
	jae	.LBB4_52
# %bb.26:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 136(%r13)
	je	.LBB4_60
# %bb.27:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$4, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 128(%r13)
	jae	.LBB4_52
# %bb.28:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 168(%r13)
	je	.LBB4_61
# %bb.29:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$5, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 160(%r13)
	jae	.LBB4_52
# %bb.30:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 200(%r13)
	je	.LBB4_62
# %bb.31:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$6, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 192(%r13)
	jae	.LBB4_52
# %bb.32:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 232(%r13)
	je	.LBB4_63
# %bb.33:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$7, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 224(%r13)
	jae	.LBB4_52
# %bb.34:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 264(%r13)
	je	.LBB4_64
# %bb.35:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$8, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 256(%r13)
	jae	.LBB4_52
# %bb.36:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 296(%r13)
	je	.LBB4_65
# %bb.37:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$9, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 288(%r13)
	jae	.LBB4_52
# %bb.38:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 328(%r13)
	je	.LBB4_66
# %bb.39:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$10, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 320(%r13)
	jae	.LBB4_52
# %bb.40:                               #   in Loop: Header=BB4_6 Depth=1
	movq	%r8, %rcx
	cmpq	$0, 360(%r13)
	je	.LBB4_67
# %bb.41:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$11, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 352(%r13)
	movq	%rcx, %r8
	jae	.LBB4_52
# %bb.42:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 392(%r13)
	je	.LBB4_68
# %bb.43:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$12, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 384(%r13)
	movq	%rcx, %r8
	jae	.LBB4_52
# %bb.44:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 424(%r13)
	je	.LBB4_69
# %bb.45:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$13, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 416(%r13)
	movq	%rcx, %r8
	jae	.LBB4_52
# %bb.46:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 456(%r13)
	je	.LBB4_70
# %bb.47:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$14, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, 448(%r13)
	movq	%rcx, %r8
	jae	.LBB4_52
# %bb.48:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 488(%r13)
	je	.LBB4_71
# %bb.49:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$15, %r15d
	movl	$16, %eax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, 480(%r13)
	movq	%rcx, %r8
	jae	.LBB4_52
	jmp	.LBB4_54
	.p2align	4, 0x90
.LBB4_50:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 488(%r13)
	jne	.LBB4_5
# %bb.51:                               #   in Loop: Header=BB4_6 Depth=1
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	testq	%rdi, %rdi
	je	.LBB4_73
.LBB4_52:                               #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, 488(%r13)
	je	.LBB4_57
# %bb.53:                               #   in Loop: Header=BB4_6 Depth=1
	movl	%r15d, %eax
.LBB4_54:                               #   in Loop: Header=BB4_6 Depth=1
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movl	%eax, %r15d
	addl	$-1, %r15d
	movq	16(%r13), %rbx
	cmpq	%rbx, %rdi
	je	.LBB4_56
# %bb.55:                               #   in Loop: Header=BB4_6 Depth=1
	callq	sdsfree
.LBB4_56:                               #   in Loop: Header=BB4_6 Depth=1
	movslq	%r15d, %r12
	shlq	$5, %r12
	movq	%r13, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	movq	%rbx, 16(%r13,%r12)
	movq	-80(%rbp), %r8          # 8-byte Reload
	jmp	.LBB4_73
.LBB4_57:                               #   in Loop: Header=BB4_6 Depth=1
	movq	496(%r13), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%r15d, %ebx
	shlq	$5, %rbx
	leaq	(%rbx,%r13), %rsi
	leaq	(%rbx,%r13), %rdi
	addq	$32, %rdi
	movl	%r15d, %edx
	xorl	$15, %edx
	shll	$5, %edx
	movq	%r8, %r12
	callq	memmove
	movq	%r12, %r8
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%r13,%rbx)
	jmp	.LBB4_73
.LBB4_58:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$2, %r15d
	jmp	.LBB4_73
.LBB4_59:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$3, %r15d
	jmp	.LBB4_73
.LBB4_60:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$4, %r15d
	jmp	.LBB4_73
.LBB4_61:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$5, %r15d
	jmp	.LBB4_73
.LBB4_62:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$6, %r15d
	jmp	.LBB4_73
.LBB4_63:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$7, %r15d
	jmp	.LBB4_73
.LBB4_64:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$8, %r15d
	jmp	.LBB4_73
.LBB4_65:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$9, %r15d
	jmp	.LBB4_73
.LBB4_66:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$10, %r15d
	jmp	.LBB4_73
.LBB4_67:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$11, %r15d
	jmp	.LBB4_72
.LBB4_68:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$12, %r15d
	jmp	.LBB4_72
.LBB4_69:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$13, %r15d
	jmp	.LBB4_72
.LBB4_70:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$14, %r15d
	jmp	.LBB4_72
.LBB4_71:                               #   in Loop: Header=BB4_6 Depth=1
	movl	$15, %r15d
.LBB4_72:                               #   in Loop: Header=BB4_6 Depth=1
	movq	%rcx, %r8
	.p2align	4, 0x90
.LBB4_73:                               #   in Loop: Header=BB4_6 Depth=1
	movzbl	-1(%r8), %r12d
	movl	%r12d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB4_81
# %bb.74:                               #   in Loop: Header=BB4_6 Depth=1
	movl	%r12d, %eax
	andl	$7, %eax
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_75:                               #   in Loop: Header=BB4_6 Depth=1
	shrq	$3, %r12
	cmpl	$256, %r12d             # imm = 0x100
	jge	.LBB4_80
	jmp	.LBB4_82
.LBB4_76:                               #   in Loop: Header=BB4_6 Depth=1
	movq	-17(%r8), %r12
	cmpl	$256, %r12d             # imm = 0x100
	jge	.LBB4_80
	jmp	.LBB4_82
.LBB4_77:                               #   in Loop: Header=BB4_6 Depth=1
	movzwl	-5(%r8), %r12d
	cmpl	$256, %r12d             # imm = 0x100
	jge	.LBB4_80
	jmp	.LBB4_82
.LBB4_78:                               #   in Loop: Header=BB4_6 Depth=1
	movl	-9(%r8), %r12d
	cmpl	$256, %r12d             # imm = 0x100
	jge	.LBB4_80
	jmp	.LBB4_82
.LBB4_79:                               #   in Loop: Header=BB4_6 Depth=1
	movzbl	-3(%r8), %r12d
	cmpl	$256, %r12d             # imm = 0x100
	jl	.LBB4_82
	.p2align	4, 0x90
.LBB4_80:                               #   in Loop: Header=BB4_6 Depth=1
	movq	%r8, %rdi
	callq	sdsdup
	movslq	%r15d, %rbx
	movq	%rbx, %rcx
	shlq	$5, %rcx
	movq	%rax, 8(%r13,%rcx)
	jmp	.LBB4_4
.LBB4_81:                               #   in Loop: Header=BB4_6 Depth=1
	xorl	%r12d, %r12d
.LBB4_82:                               #   in Loop: Header=BB4_6 Depth=1
	movslq	%r15d, %rbx
	movq	%rbx, %r15
	shlq	$5, %r15
	leaq	(%r15,%r13), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	16(%r13,%r15), %rdi
	leal	1(%r12), %eax
	movslq	%eax, %rdx
	movq	%r8, %rsi
	callq	memcpy
	movq	16(%r13,%r15), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB4_3
# %bb.83:                               #   in Loop: Header=BB4_6 Depth=1
	movslq	%r12d, %rdx
	andl	$7, %ecx
	jmpq	*.LJTI4_1(,%rcx,8)
.LBB4_84:                               #   in Loop: Header=BB4_6 Depth=1
	shlb	$3, %r12b
	movb	%r12b, -1(%rax)
	jmp	.LBB4_3
.LBB4_85:                               #   in Loop: Header=BB4_6 Depth=1
	movw	%dx, -5(%rax)
	jmp	.LBB4_3
.LBB4_86:                               #   in Loop: Header=BB4_6 Depth=1
	movl	%r12d, -9(%rax)
	jmp	.LBB4_3
.LBB4_87:                               #   in Loop: Header=BB4_6 Depth=1
	movb	%dl, -3(%rax)
	jmp	.LBB4_3
.LBB4_88:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_89:
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
	.quad	.LBB4_75
	.quad	.LBB4_79
	.quad	.LBB4_77
	.quad	.LBB4_78
	.quad	.LBB4_76
.LJTI4_1:
	.quad	.LBB4_84
	.quad	.LBB4_87
	.quad	.LBB4_85
	.quad	.LBB4_86
	.quad	.LBB4_2
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
	testq	%rdi, %rdi
	je	.LBB5_3
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
	xorl	%edx, %edx
	subq	%rbx, %rax
	movl	$65535, %esi            # imm = 0xFFFF
	cmovaeq	%rdx, %rsi
	addq	%rax, %rsi
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rdi
	cmpq	%rdi, %rsi
	jb	.LBB5_3
# %bb.2:
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	subq	%rax, %rcx
.LBB5_3:
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
	xorl	%edx, %edx
	subq	%rdi, %rcx
	movl	$65535, %eax            # imm = 0xFFFF
	cmovaeq	%rdx, %rax
	addq	%rcx, %rax
	retq
.Lfunc_end7:
	.size	LFUTimeElapsed, .Lfunc_end7-LFUTimeElapsed
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function LFULogIncr
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI8_1:
	.zero	8
	.quad	4607182418800017408     # double 1
.LCPI8_2:
	.quad	4746794007244308480     # double 2147483647
	.zero	8
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
	cmpb	$-1, %bl
	je	.LBB8_1
# %bb.2:
	callq	rand
	xorpd	%xmm0, %xmm0
	cmpb	$5, %bl
	jb	.LBB8_4
# %bb.3:
	movzbl	%bl, %ecx
	addl	$-5, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
.LBB8_4:
	cvtsi2sdl	server+2720(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI8_0(%rip), %xmm1
	movapd	.LCPI8_1(%rip), %xmm0   # xmm0 = <u,1.0E+0>
	cvtsi2sd	%eax, %xmm0
	movapd	.LCPI8_2(%rip), %xmm2   # xmm2 = <2.147483647E+9,u>
	unpcklpd	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	divpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	ucomisd	%xmm0, %xmm1
	seta	%al
	addb	%bl, %al
	jmp	.LBB8_5
.LBB8_1:
	movb	$-1, %al
.LBB8_5:
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
	je	.LBB9_1
# %bb.2:
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
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
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	jne	.LBB9_4
.LBB9_5:
	cmpl	$0, server+1880(%rip)
	jne	.LBB9_6
	jmp	.LBB9_15
.LBB9_1:
	xorl	%ebx, %ebx
	cmpl	$0, server+1880(%rip)
	je	.LBB9_15
.LBB9_6:
	movq	server+1952(%rip), %rax
	movzbl	-1(%rax), %r14d
	movl	%r14d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB9_7
# %bb.8:
	movl	%r14d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI9_0(,%rcx,8)
.LBB9_9:
	shrq	$3, %r14
	jmp	.LBB9_14
.LBB9_7:
	xorl	%r14d, %r14d
	jmp	.LBB9_14
.LBB9_10:
	movzbl	-2(%rax), %r14d
	jmp	.LBB9_14
.LBB9_11:
	movzwl	-3(%rax), %r14d
	jmp	.LBB9_14
.LBB9_12:
	movl	-5(%rax), %r14d
	jmp	.LBB9_14
.LBB9_13:
	movq	-9(%rax), %r14
.LBB9_14:
	callq	aofRewriteBufferSize
	addq	%rbx, %r14
	addq	%rax, %r14
	movq	%r14, %rbx
.LBB9_15:
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
	.quad	.LBB9_9
	.quad	.LBB9_10
	.quad	.LBB9_11
	.quad	.LBB9_12
	.quad	.LBB9_13
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
	movq	%rcx, %r13
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	zmalloc_used_memory
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB10_2
# %bb.1:
	movq	%r14, (%rbx)
.LBB10_2:
	movq	server+2704(%rip), %rax
	testq	%rax, %rax
	sete	%cl
	cmpq	%rax, %r14
	setbe	%bl
	orb	%cl, %bl
	xorl	%r12d, %r12d
	testq	%r13, %r13
	jne	.LBB10_4
# %bb.3:
	testb	%bl, %bl
	jne	.LBB10_21
.LBB10_4:
	callq	freeMemoryGetNotCountedMemory
	cmpq	%rax, %r14
	cmovbeq	%rax, %r14
	subq	%rax, %r14
	testq	%r13, %r13
	je	.LBB10_15
# %bb.5:
	movq	server+2704(%rip), %rax
	testq	%rax, %rax
	je	.LBB10_6
# %bb.7:
	testq	%r14, %r14
	js	.LBB10_8
# %bb.9:
	cvtsi2ss	%r14, %xmm0
	testq	%rax, %rax
	jns	.LBB10_12
.LBB10_11:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	cvtsi2ss	%rax, %xmm1
	addss	%xmm1, %xmm1
	jmp	.LBB10_13
.LBB10_6:
	xorps	%xmm0, %xmm0
	jmp	.LBB10_14
.LBB10_8:
	movq	%r14, %rcx
	shrq	%rcx
	movl	%r14d, %edx
	andl	$1, %edx
	orq	%rcx, %rdx
	cvtsi2ss	%rdx, %xmm0
	addss	%xmm0, %xmm0
	testq	%rax, %rax
	js	.LBB10_11
.LBB10_12:
	cvtsi2ss	%rax, %xmm1
.LBB10_13:
	divss	%xmm1, %xmm0
.LBB10_14:
	movss	%xmm0, (%r13)
.LBB10_15:
	testb	%bl, %bl
	jne	.LBB10_21
# %bb.16:
	movq	%r14, %rax
	subq	server+2704(%rip), %rax
	jbe	.LBB10_21
# %bb.17:
	testq	%r15, %r15
	je	.LBB10_19
# %bb.18:
	movq	%r14, (%r15)
.LBB10_19:
	movl	$-1, %r12d
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB10_21
# %bb.20:
	movq	%rax, (%rcx)
.LBB10_21:
	movl	%r12d, %eax
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
	subq	$56, %rsp
	xorl	%r15d, %r15d
	cmpq	$0, server+2464(%rip)
	je	.LBB11_2
# %bb.1:
	cmpl	$0, server+2560(%rip)
	jne	.LBB11_74
.LBB11_2:
	movq	server+536(%rip), %rax
	movl	40(%rax), %r14d
	callq	clientsArePaused
	testl	%eax, %eax
	je	.LBB11_3
.LBB11_74:
	movl	%r15d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_3:
	callq	zmalloc_used_memory
	movq	%rax, %rbx
	movq	server+2704(%rip), %rax
	testq	%rax, %rax
	je	.LBB11_74
# %bb.4:
	cmpq	%rax, %rbx
	jbe	.LBB11_74
# %bb.5:
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	callq	freeMemoryGetNotCountedMemory
	cmpq	%rax, %rbx
	movq	%rax, %r14
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	cmovaq	%rbx, %r14
	subq	%rax, %r14
	subq	server+2704(%rip), %r14
	jbe	.LBB11_74
# %bb.6:
	cmpl	$1792, server+2712(%rip) # imm = 0x700
	jne	.LBB11_8
# %bb.7:
	xorl	%ebx, %ebx
.LBB11_70:
	movl	$2, %edi
	callq	bioPendingJobsOfType
	movl	$-1, %r15d
	testq	%rax, %rax
	je	.LBB11_74
# %bb.71:
	addq	-96(%rbp), %rbx         # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB11_72:                              # =>This Inner Loop Header: Depth=1
	callq	zmalloc_used_memory
	movq	%rbx, %rcx
	subq	%rax, %rcx
	cmpq	%r14, %rcx
	jae	.LBB11_74
# %bb.73:                               #   in Loop: Header=BB11_72 Depth=1
	movl	$1000, %edi             # imm = 0x3E8
	callq	usleep
	movl	$2, %edi
	callq	bioPendingJobsOfType
	testq	%rax, %rax
	jne	.LBB11_72
	jmp	.LBB11_74
.LBB11_8:
	cmpq	$0, server+3096(%rip)
	je	.LBB11_9
# %bb.10:
	callq	mstime
	movq	%rax, %rbx
	jmp	.LBB11_11
.LBB11_9:
	xorl	%ebx, %ebx
.LBB11_11:
	testq	%r14, %r14
	je	.LBB11_60
# %bb.12:
	xorl	%ecx, %ecx
                                        # implicit-def: $r12d
	movq	%r14, -48(%rbp)         # 8-byte Spill
.LBB11_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_36 Depth 2
                                        #     Child Loop BB11_16 Depth 2
                                        #       Child Loop BB11_18 Depth 3
                                        #       Child Loop BB11_23 Depth 3
	movl	server+2712(%rip), %r8d
	cmpl	$512, %r8d              # imm = 0x200
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	je	.LBB11_15
# %bb.14:                               #   in Loop: Header=BB11_13 Depth=1
	movl	%r8d, %eax
	andl	$3, %eax
	jne	.LBB11_15
# %bb.31:                               #   in Loop: Header=BB11_13 Depth=1
	cmpl	$1540, %r8d             # imm = 0x604
	je	.LBB11_33
# %bb.32:                               #   in Loop: Header=BB11_13 Depth=1
	cmpl	$768, %r8d              # imm = 0x300
	jne	.LBB11_65
.LBB11_33:                              #   in Loop: Header=BB11_13 Depth=1
	movl	server+1792(%rip), %r9d
	testl	%r9d, %r9d
	jle	.LBB11_65
# %bb.34:                               #   in Loop: Header=BB11_13 Depth=1
	movq	server+48(%rip), %r10
	xorl	%ebx, %ebx
	movl	freeMemoryIfNeeded.next_db(%rip), %esi
.LBB11_36:                              #   Parent Loop BB11_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	1(%rsi), %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r9d
	movl	%edx, %r12d
	movslq	%edx, %rax
	shlq	$6, %rax
	leaq	(%r10,%rax), %rdx
	cmpl	$1540, %r8d             # imm = 0x604
	leaq	8(%r10,%rax), %rax
	cmoveq	%rdx, %rax
	movq	(%rax), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	jne	.LBB11_37
# %bb.35:                               #   in Loop: Header=BB11_36 Depth=2
	addl	$1, %ebx
	movl	%ecx, %esi
	cmpl	%r9d, %ebx
	jl	.LBB11_36
	jmp	.LBB11_64
.LBB11_15:                              #   in Loop: Header=BB11_13 Depth=1
	movq	EvictionPoolLRU(%rip), %r14
	jmp	.LBB11_16
.LBB11_29:                              #   in Loop: Header=BB11_16 Depth=2
	xorl	%edi, %edi
.LBB11_30:                              #   in Loop: Header=BB11_16 Depth=2
	testq	%rdi, %rdi
	jne	.LBB11_38
.LBB11_16:                              #   Parent Loop BB11_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_18 Depth 3
                                        #       Child Loop BB11_23 Depth 3
	movl	server+1792(%rip), %eax
	testl	%eax, %eax
	jle	.LBB11_65
# %bb.17:                               # %.preheader2
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%r12, -64(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB11_18
	.p2align	4, 0x90
.LBB11_20:                              #   in Loop: Header=BB11_18 Depth=3
	addq	$1, %rbx
	movslq	%eax, %rcx
	addq	$64, %r15
	cmpq	%rcx, %rbx
	jge	.LBB11_21
.LBB11_18:                              #   Parent Loop BB11_13 Depth=1
                                        #     Parent Loop BB11_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	server+48(%rip), %rcx
	testb	$4, server+2712(%rip)
	leaq	8(%rcx,%r15), %rdx
	leaq	(%rcx,%r15), %rcx
	cmovneq	%rcx, %rdx
	movq	(%rdx), %rsi
	movq	72(%rsi), %r12
	addq	40(%rsi), %r12
	je	.LBB11_20
# %bb.19:                               #   in Loop: Header=BB11_18 Depth=3
	movq	(%rcx), %rdx
	movl	%ebx, %edi
	movq	%r14, %rcx
	callq	evictionPoolPopulate
	addq	%r12, %r13
	movl	server+1792(%rip), %eax
	jmp	.LBB11_20
.LBB11_21:                              #   in Loop: Header=BB11_16 Depth=2
	testq	%r13, %r13
	movq	-64(%rbp), %r12         # 8-byte Reload
	je	.LBB11_65
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	$512, %ebx              # imm = 0x200
	jmp	.LBB11_23
	.p2align	4, 0x90
.LBB11_26:                              #   in Loop: Header=BB11_23 Depth=3
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%r14,%rbx)
	testq	%r15, %r15
	jne	.LBB11_27
.LBB11_28:                              #   in Loop: Header=BB11_23 Depth=3
	addq	$-32, %rbx
	je	.LBB11_29
.LBB11_23:                              #   Parent Loop BB11_13 Depth=1
                                        #     Parent Loop BB11_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%r14,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB11_28
# %bb.24:                               #   in Loop: Header=BB11_23 Depth=3
	movslq	-8(%r14,%rbx), %r12
	movq	server+48(%rip), %rax
	movq	%r12, %rcx
	shlq	$6, %rcx
	leaq	(%rax,%rcx), %rdx
	testb	$4, server+2712(%rip)
	leaq	8(%rax,%rcx), %rax
	cmovneq	%rdx, %rax
	movq	(%rax), %rdi
	callq	dictFind
	movq	%rax, %r15
	movq	-24(%r14,%rbx), %rdi
	cmpq	-16(%r14,%rbx), %rdi
	je	.LBB11_26
# %bb.25:                               #   in Loop: Header=BB11_23 Depth=3
	callq	sdsfree
	jmp	.LBB11_26
.LBB11_27:                              #   in Loop: Header=BB11_16 Depth=2
	movq	(%r15), %rdi
	jmp	.LBB11_30
.LBB11_37:                              #   in Loop: Header=BB11_13 Depth=1
	addl	$1, %esi
	movl	%esi, freeMemoryIfNeeded.next_db(%rip)
	callq	dictGetRandomKey
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB11_65
.LBB11_38:                              #   in Loop: Header=BB11_13 Depth=1
	movq	server+48(%rip), %rdx
	movslq	%r12d, %rcx
	shlq	$6, %rcx
	leaq	(%rdx,%rcx), %rbx
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	ja	.LBB11_39
# %bb.40:                               #   in Loop: Header=BB11_13 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_41:                              #   in Loop: Header=BB11_13 Depth=1
	shrq	$3, %rsi
	jmp	.LBB11_46
.LBB11_39:                              #   in Loop: Header=BB11_13 Depth=1
	xorl	%esi, %esi
	jmp	.LBB11_46
.LBB11_42:                              #   in Loop: Header=BB11_13 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB11_46
.LBB11_43:                              #   in Loop: Header=BB11_13 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB11_46
.LBB11_44:                              #   in Loop: Header=BB11_13 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB11_46
.LBB11_45:                              #   in Loop: Header=BB11_13 Depth=1
	movq	-17(%rdi), %rsi
.LBB11_46:                              #   in Loop: Header=BB11_13 Depth=1
	callq	createStringObject
	movq	%rax, %r14
	movl	server+3080(%rip), %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	propagateExpire
	callq	zmalloc_used_memory
	cmpq	$0, server+3096(%rip)
	je	.LBB11_47
# %bb.48:                               #   in Loop: Header=BB11_13 Depth=1
	movq	%rax, %r13
	callq	mstime
	movq	%rax, %r15
	jmp	.LBB11_49
.LBB11_47:                              #   in Loop: Header=BB11_13 Depth=1
	movq	%rax, %r13
	xorl	%r15d, %r15d
.LBB11_49:                              #   in Loop: Header=BB11_13 Depth=1
	cmpl	$0, server+3080(%rip)
	je	.LBB11_51
# %bb.50:                               #   in Loop: Header=BB11_13 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	dbAsyncDelete
	jmp	.LBB11_52
.LBB11_51:                              #   in Loop: Header=BB11_13 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	dbSyncDelete
.LBB11_52:                              #   in Loop: Header=BB11_13 Depth=1
	cmpq	$0, server+3096(%rip)
	je	.LBB11_53
# %bb.54:                               #   in Loop: Header=BB11_13 Depth=1
	callq	mstime
	movq	%rax, %rbx
	subq	%r15, %rbx
	movq	server+3096(%rip), %rax
	testq	%rax, %rax
	je	.LBB11_57
# %bb.55:                               #   in Loop: Header=BB11_13 Depth=1
	cmpq	%rax, %rbx
	jl	.LBB11_57
# %bb.56:                               #   in Loop: Header=BB11_13 Depth=1
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	callq	latencyAddSample
	jmp	.LBB11_57
.LBB11_53:                              #   in Loop: Header=BB11_13 Depth=1
	movq	%r15, %rbx
.LBB11_57:                              #   in Loop: Header=BB11_13 Depth=1
	callq	zmalloc_used_memory
	movq	-56(%rbp), %r15         # 8-byte Reload
	addq	%r13, %r15
	subq	%rax, %r15
	addq	$1, server+1048(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	40(%rcx,%rax), %ecx
	movl	$.L.str.3, %esi
	movl	$512, %edi              # imm = 0x200
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	movq	%r14, %rdi
	callq	decrRefCount
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB11_59
# %bb.58:                               #   in Loop: Header=BB11_13 Depth=1
	callq	flushSlavesOutputBuffers
.LBB11_59:                              #   in Loop: Header=BB11_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	%rbx, %rax
	movq	%rax, %rbx
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r15, %rcx
	cmpq	%r14, %r15
	jb	.LBB11_13
.LBB11_60:
	xorl	%r15d, %r15d
	cmpq	$0, server+3096(%rip)
	je	.LBB11_74
# %bb.61:
	callq	mstime
	movq	server+3096(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB11_74
# %bb.62:
	subq	%rbx, %rax
	cmpq	%rcx, %rax
	jl	.LBB11_74
# %bb.63:
	movl	$.L.str.4, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
	jmp	.LBB11_74
.LBB11_64:
	movl	%ecx, freeMemoryIfNeeded.next_db(%rip)
.LBB11_65:
	cmpq	$0, server+3096(%rip)
	je	.LBB11_66
# %bb.67:
	callq	mstime
	movq	server+3096(%rip), %rcx
	testq	%rcx, %rcx
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB11_70
# %bb.68:
	subq	-80(%rbp), %rax         # 8-byte Folded Reload
	cmpq	%rcx, %rax
	jl	.LBB11_70
# %bb.69:
	movl	$.L.str.4, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
	jmp	.LBB11_70
.LBB11_66:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB11_70
.Lfunc_end11:
	.size	freeMemoryIfNeeded, .Lfunc_end11-freeMemoryIfNeeded
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_41
	.quad	.LBB11_42
	.quad	.LBB11_43
	.quad	.LBB11_44
	.quad	.LBB11_45
                                        # -- End function
	.text
	.globl	freeMemoryIfNeededAndSafe # -- Begin function freeMemoryIfNeededAndSafe
	.p2align	4, 0x90
	.type	freeMemoryIfNeededAndSafe,@function
freeMemoryIfNeededAndSafe:              # @freeMemoryIfNeededAndSafe
# %bb.0:
	movl	server+860(%rip), %eax
	orl	server+3068(%rip), %eax
	je	.LBB12_2
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB12_2:
	jmp	freeMemoryIfNeeded      # TAILCALL
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
