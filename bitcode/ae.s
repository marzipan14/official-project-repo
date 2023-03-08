	.text
	.file	"ae.c"
	.globl	aeCreateEventLoop       # -- Begin function aeCreateEventLoop
	.p2align	4, 0x90
	.type	aeCreateEventLoop,@function
aeCreateEventLoop:                      # @aeCreateEventLoop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edi, %r14d
	movl	$80, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB0_17
# %bb.1:
	movq	%rax, %r15
	movslq	%r14d, %rbx
	movq	%rbx, %rdi
	shlq	$5, %rdi
	callq	zmalloc
	movq	%rax, 24(%r15)
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, 32(%r15)
	movq	24(%r15), %rdi
	testq	%rax, %rax
	je	.LBB0_16
# %bb.2:
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.3:
	movl	%r14d, 4(%r15)
	xorl	%edi, %edi
	callq	time
	movq	%rax, 16(%r15)
	movq	$0, 40(%r15)
	movq	$0, 8(%r15)
	movl	$0, 48(%r15)
	movl	$-1, (%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%r15)
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_14
# %bb.4:
	movl	$1, %esi
	movl	$32, %edx
	callq	*8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_15
# %bb.5:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 56(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_18
# %bb.6:
	movq	24(%r15), %rax
	movl	%r14d, %edx
	leaq	-1(%rdx), %rsi
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB0_9
# %bb.7:
	xorl	%esi, %esi
	jmp	.LBB0_11
.LBB0_9:
	leaq	96(%rax), %rdi
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -96(%rdi)
	movl	$0, -64(%rdi)
	movl	$0, -32(%rdi)
	movl	$0, (%rdi)
	addq	$4, %rsi
	subq	$-128, %rdi
	cmpq	%rsi, %rdx
	jne	.LBB0_10
.LBB0_11:
	testq	%rcx, %rcx
	je	.LBB0_18
# %bb.12:                               # %.preheader
	shlq	$5, %rsi
	addq	%rsi, %rax
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	addq	$32, %rax
	addq	$-1, %rcx
	jne	.LBB0_13
	jmp	.LBB0_18
.LBB0_14:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r15), %rdi
.LBB0_16:
	callq	zfree
	movq	32(%r15), %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
.LBB0_17:
	xorl	%r15d, %r15d
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	aeCreateEventLoop, .Lfunc_end0-aeCreateEventLoop
                                        # -- End function
	.globl	aeGetSetSize            # -- Begin function aeGetSetSize
	.p2align	4, 0x90
	.type	aeGetSetSize,@function
aeGetSetSize:                           # @aeGetSetSize
# %bb.0:
	movl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	aeGetSetSize, .Lfunc_end1-aeGetSetSize
                                        # -- End function
	.globl	aeResizeSetSize         # -- Begin function aeResizeSetSize
	.p2align	4, 0x90
	.type	aeResizeSetSize,@function
aeResizeSetSize:                        # @aeResizeSetSize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	cmpl	%esi, 4(%rdi)
	jne	.LBB2_1
.LBB2_11:
	xorl	%eax, %eax
	jmp	.LBB2_12
.LBB2_1:
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$-1, %eax
	cmpl	%esi, (%rdi)
	jge	.LBB2_12
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %ebx
	jle	.LBB2_3
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_3:
	movq	24(%r14), %rdi
	movslq	%ebx, %r15
	movq	%r15, %rsi
	shlq	$5, %rsi
	callq	zrealloc
	movq	%rax, 24(%r14)
	movq	32(%r14), %rdi
	shlq	$3, %r15
	movq	%r15, %rsi
	callq	zrealloc
	movq	%rax, 32(%r14)
	movl	%ebx, 4(%r14)
	movl	(%r14), %esi
	leal	1(%rsi), %eax
	cmpl	%ebx, %eax
	jge	.LBB2_11
# %bb.4:
	movq	24(%r14), %r8
	movslq	%eax, %rcx
	movl	%ebx, %edx
	subl	%esi, %edx
	notl	%esi
	addl	%ebx, %esi
	addl	$-2, %edx
	andl	$3, %esi
	je	.LBB2_8
# %bb.5:                                # %.preheader1
	movq	%rcx, %rdi
	shlq	$5, %rdi
	addq	%r8, %rdi
	negl	%esi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	addq	$-1, %rax
	addq	$32, %rdi
	cmpl	%eax, %esi
	jne	.LBB2_6
# %bb.7:                                # %.loopexit2
	subq	%rax, %rcx
.LBB2_8:
	cmpl	$3, %edx
	jb	.LBB2_11
# %bb.9:                                # %.preheader
	subl	%ecx, %ebx
	shlq	$5, %rcx
	leaq	(%rcx,%r8), %rax
	addq	$96, %rax
	.p2align	4, 0x90
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -96(%rax)
	movl	$0, -64(%rax)
	movl	$0, -32(%rax)
	movl	$0, (%rax)
	subq	$-128, %rax
	addl	$-4, %ebx
	jne	.LBB2_10
	jmp	.LBB2_11
.Lfunc_end2:
	.size	aeResizeSetSize, .Lfunc_end2-aeResizeSetSize
                                        # -- End function
	.globl	aeDeleteEventLoop       # -- Begin function aeDeleteEventLoop
	.p2align	4, 0x90
	.type	aeDeleteEventLoop,@function
aeDeleteEventLoop:                      # @aeDeleteEventLoop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	56(%rdi), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rdi
	callq	zfree
	movq	32(%rbx), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	aeDeleteEventLoop, .Lfunc_end3-aeDeleteEventLoop
                                        # -- End function
	.globl	aeStop                  # -- Begin function aeStop
	.p2align	4, 0x90
	.type	aeStop,@function
aeStop:                                 # @aeStop
# %bb.0:
	movl	$1, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	aeStop, .Lfunc_end4-aeStop
                                        # -- End function
	.globl	aeCreateFileEvent       # -- Begin function aeCreateFileEvent
	.p2align	4, 0x90
	.type	aeCreateFileEvent,@function
aeCreateFileEvent:                      # @aeCreateFileEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpl	%esi, 4(%rdi)
	jle	.LBB5_1
# %bb.2:
	movq	%rcx, %r9
	movq	24(%rdi), %r11
	movq	56(%rdi), %r10
	movslq	%esi, %rcx
	testb	$1, %dl
	je	.LBB5_4
# %bb.3:
	movl	$1, %eax
	shlq	%cl, %rax
	movq	%rcx, %rbx
	shrq	$6, %rbx
	orq	%rax, (%r10,%rbx,8)
.LBB5_4:
	testb	$2, %dl
	je	.LBB5_6
# %bb.5:
	movl	$1, %eax
	shlq	%cl, %rax
	movq	%rcx, %rbx
	shrq	$6, %rbx
	orq	%rax, 8(%r10,%rbx,8)
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	shlq	$5, %rcx
	orl	%edx, (%r11,%rcx)
	testb	$1, %dl
	je	.LBB5_8
# %bb.7:
	movq	%r9, 8(%r11,%rcx)
.LBB5_8:
	testb	$2, %dl
	je	.LBB5_10
# %bb.9:
	movq	%r9, 16(%r11,%rcx)
.LBB5_10:
	movq	%r8, 24(%r11,%rcx)
	xorl	%eax, %eax
	cmpl	%esi, (%rdi)
	jge	.LBB5_12
# %bb.11:
	movl	%esi, (%rdi)
	jmp	.LBB5_12
.LBB5_1:
	callq	__errno
	movl	$34, (%rax)
	movl	$-1, %eax
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	aeCreateFileEvent, .Lfunc_end5-aeCreateFileEvent
                                        # -- End function
	.globl	aeDeleteFileEvent       # -- Begin function aeDeleteFileEvent
	.p2align	4, 0x90
	.type	aeDeleteFileEvent,@function
aeDeleteFileEvent:                      # @aeDeleteFileEvent
# %bb.0:
	pushq	%r14
	pushq	%rbx
                                        # kill: def $edx killed $edx def $rdx
	cmpl	%esi, 4(%rdi)
	jle	.LBB6_12
# %bb.1:
	movq	24(%rdi), %r8
	movslq	%esi, %rcx
	movq	%rcx, %r10
	shlq	$5, %r10
	movl	(%r8,%r10), %r9d
	testl	%r9d, %r9d
	je	.LBB6_12
# %bb.2:
	leal	(%rdx,%rdx), %eax
	andl	$4, %eax
	movq	56(%rdi), %r11
	testb	$1, %dl
	je	.LBB6_4
# %bb.3:
	movq	$-2, %r14
	rolq	%cl, %r14
	movq	%rcx, %rbx
	shrq	$6, %rbx
	andq	%r14, (%r11,%rbx,8)
.LBB6_4:
	leaq	(%r8,%r10), %r14
	orl	%edx, %eax
	testb	$2, %dl
	je	.LBB6_6
# %bb.5:
	movq	$-2, %rdx
	rolq	%cl, %rdx
	movq	%rcx, %rbx
	shrq	$6, %rbx
	andq	%rdx, 8(%r11,%rbx,8)
.LBB6_6:
	movl	$42, __A_VARIABLE(%rip)
	notl	%eax
	andl	%eax, %r9d
	movl	%r9d, (%r14)
	jne	.LBB6_12
# %bb.7:
	cmpl	%esi, (%rdi)
	jne	.LBB6_12
# %bb.8:                                # %.preheader
	addl	$-1, %esi
	leaq	(%r10,%r8), %rax
	addq	$-32, %rax
	.p2align	4, 0x90
.LBB6_9:                                # =>This Inner Loop Header: Depth=1
	movl	%esi, %edx
	testq	%rcx, %rcx
	jle	.LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=1
	addq	$-1, %rcx
	leal	-1(%rdx), %esi
	cmpl	$0, (%rax)
	leaq	-32(%rax), %rax
	je	.LBB6_9
.LBB6_11:
	movl	%edx, (%rdi)
.LBB6_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	aeDeleteFileEvent, .Lfunc_end6-aeDeleteFileEvent
                                        # -- End function
	.globl	aeGetFileEvents         # -- Begin function aeGetFileEvents
	.p2align	4, 0x90
	.type	aeGetFileEvents,@function
aeGetFileEvents:                        # @aeGetFileEvents
# %bb.0:
	xorl	%eax, %eax
	cmpl	%esi, 4(%rdi)
	jle	.LBB7_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$5, %rcx
	movl	(%rax,%rcx), %eax
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	aeGetFileEvents, .Lfunc_end7-aeGetFileEvents
                                        # -- End function
	.globl	aeCreateTimeEvent       # -- Begin function aeCreateTimeEvent
	.p2align	4, 0x90
	.type	aeCreateTimeEvent,@function
aeCreateTimeEvent:                      # @aeCreateTimeEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	8(%rdi), %r14
	leaq	1(%r14), %rax
	movq	%rax, 8(%rdi)
	movl	$64, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB8_1
# %bb.2:
	movq	%rax, %rbx
	movq	%r14, (%rax)
	leaq	65464(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	movq	%rcx, %rax
	imulq	65472(%rbp)
	movq	%rdx, %rsi
	movq	%r12, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	addq	65464(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
	shrq	$63, %rcx
	sarq	$7, %rsi
	addq	%rcx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r12
	leaq	(%rsi,%r12), %rax
	xorl	%ecx, %ecx
	cmpq	$999, %rax              # imm = 0x3E7
	leaq	-1000(%rsi,%r12), %rsi
	cmovleq	%rax, %rsi
	setg	%cl
	addq	%rdx, %rcx
	movq	%rcx, 8(%rbx)
	movq	%rsi, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, 24(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%rbx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 40(%rbx)
	movq	$0, 48(%rbx)
	movq	40(%r13), %rax
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	je	.LBB8_4
# %bb.3:
	movq	%rbx, 48(%rax)
.LBB8_4:
	movq	%rbx, 40(%r13)
	jmp	.LBB8_5
.LBB8_1:
	movq	$-1, %r14
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	aeCreateTimeEvent, .Lfunc_end8-aeCreateTimeEvent
                                        # -- End function
	.globl	aeDeleteTimeEvent       # -- Begin function aeDeleteTimeEvent
	.p2align	4, 0x90
	.type	aeDeleteTimeEvent,@function
aeDeleteTimeEvent:                      # @aeDeleteTimeEvent
# %bb.0:
	movq	40(%rdi), %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB9_5
	.p2align	4, 0x90
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rcx)
	je	.LBB9_4
# %bb.1:                                #   in Loop: Header=BB9_3 Depth=1
	movq	56(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB9_3
.LBB9_5:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB9_4:
	movq	$-1, (%rcx)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end9:
	.size	aeDeleteTimeEvent, .Lfunc_end9-aeDeleteTimeEvent
                                        # -- End function
	.globl	aeProcessEvents         # -- Begin function aeProcessEvents
	.p2align	4, 0x90
	.type	aeProcessEvents,@function
aeProcessEvents:                        # @aeProcessEvents
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%esi, %r14d
	xorl	%r15d, %r15d
	testb	$3, %r14b
	je	.LBB10_84
# %bb.1:
	movl	%r14d, %eax
	andl	$6, %eax
	cmpl	$2, %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB10_3
# %bb.2:
	xorl	%r15d, %r15d
	cmpl	$-1, (%rdi)
	je	.LBB10_57
.LBB10_3:
	cmpl	$2, %eax
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	jne	.LBB10_17
# %bb.4:
	movq	40(%rdi), %rax
	testq	%rax, %rax
	je	.LBB10_16
# %bb.5:                                # %.preheader4
	xorl	%ebx, %ebx
	jmp	.LBB10_6
	.p2align	4, 0x90
.LBB10_10:                              #   in Loop: Header=BB10_6 Depth=1
	movq	%rax, %rbx
.LBB10_11:                              #   in Loop: Header=BB10_6 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_12
.LBB10_6:                               # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB10_10
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=1
	movq	8(%rbx), %rcx
	cmpq	%rcx, 8(%rax)
	jl	.LBB10_10
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=1
	jne	.LBB10_11
# %bb.9:                                #   in Loop: Header=BB10_6 Depth=1
	movq	16(%rax), %rcx
	cmpq	16(%rbx), %rcx
	jl	.LBB10_10
	jmp	.LBB10_11
.LBB10_12:
	movl	$42, __A_VARIABLE(%rip)
	leaq	65472(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65472(%rbp), %rsi
	movabsq	$-2361183241434822607, %rax # imm = 0xDF3B645A1CAC0831
	imulq	65480(%rbp)
	movq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rax
	subq	%rsi, %rax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	shrq	$63, %rdx
	sarq	$7, %rcx
	addq	%rdx, %rcx
	addq	16(%rbx), %rcx
	addq	%rax, %rcx
	testq	%rcx, %rcx
	jle	.LBB10_14
# %bb.13:
	movq	%rcx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	mulq	%rdx
	shrq	$4, %rdx
	movq	%rdx, tv(%rip)
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	subq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	jmp	.LBB10_15
.LBB10_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_17:
	testb	$4, %r14b
	jne	.LBB10_19
# %bb.18:
	xorl	%ebx, %ebx
	jmp	.LBB10_21
.LBB10_19:
	xorps	%xmm0, %xmm0
	movups	%xmm0, tv(%rip)
	jmp	.LBB10_20
.LBB10_14:
	movq	$0, tv(%rip)
	xorl	%eax, %eax
.LBB10_15:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, tv+8(%rip)
.LBB10_20:
	movl	$tv, %ebx
.LBB10_21:
	movq	56(%rdi), %r14
	leaq	16(%r14), %r12
	movl	$8, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	memcpy
	leaq	24(%r14), %r13
	leaq	8(%r14), %rsi
	movl	$8, %edx
	movq	%r13, %rdi
	callq	memcpy
	movq	-48(%rbp), %r9          # 8-byte Reload
	movl	(%r9), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB10_24
# %bb.22:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB10_23
.LBB10_24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-72(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r13, %r12
	xorl	%r13d, %r13d
	movq	%rbx, %r8
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
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
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	select
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
	popq	%r13
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
	movl	%r11d, -64(%rbp)

	#NO_APP
	movl	-64(%rbp), %eax
	jmp	.LBB10_25
.LBB10_23:
	movl	-72(%rbp), %edi
	movq	%r12, %rsi
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %r8
	callq	select
	movq	-48(%rbp), %r9          # 8-byte Reload
	movl	%eax, -64(%rbp)
.LBB10_25:
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jle	.LBB10_35
# %bb.26:
	movslq	(%r9), %rax
	testq	%rax, %rax
	js	.LBB10_35
# %bb.27:
	movq	24(%r9), %rcx
	addq	$1, %rax
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	jmp	.LBB10_28
	.p2align	4, 0x90
.LBB10_33:                              #   in Loop: Header=BB10_28 Depth=1
	movq	32(%r9), %rdi
	movslq	%r15d, %r15
	movl	%edx, (%rdi,%r15,8)
	movl	%esi, 4(%rdi,%r15,8)
	addl	$1, %r15d
.LBB10_34:                              #   in Loop: Header=BB10_28 Depth=1
	addq	$1, %rdx
	addq	$32, %rcx
	cmpq	%rdx, %rax
	je	.LBB10_35
.LBB10_28:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edi
	testl	%edi, %edi
	je	.LBB10_34
# %bb.29:                               #   in Loop: Header=BB10_28 Depth=1
	xorl	%esi, %esi
	testb	$1, %dil
	je	.LBB10_31
# %bb.30:                               #   in Loop: Header=BB10_28 Depth=1
	movq	%rdx, %rsi
	shrq	$6, %rsi
	movq	16(%r14,%rsi,8), %rbx
	xorl	%esi, %esi
	btq	%rdx, %rbx
	setb	%sil
.LBB10_31:                              #   in Loop: Header=BB10_28 Depth=1
	testb	$2, %dil
	je	.LBB10_33
# %bb.32:                               #   in Loop: Header=BB10_28 Depth=1
	movq	%rdx, %rdi
	shrq	$6, %rdi
	movq	24(%r14,%rdi,8), %rdi
	leal	2(%rsi), %ebx
	btq	%rdx, %rdi
	cmovael	%esi, %ebx
	movl	%ebx, %esi
	jmp	.LBB10_33
.LBB10_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %r14d        # 4-byte Reload
	testb	$8, %r14b
	je	.LBB10_38
# %bb.36:
	movq	72(%r9), %rax
	testq	%rax, %rax
	je	.LBB10_38
# %bb.37:
	movq	%r9, %rdi
	callq	*%rax
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB10_38:
	testl	%r15d, %r15d
	jle	.LBB10_39
# %bb.40:
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movl	%r15d, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB10_41
.LBB10_52:                              #   in Loop: Header=BB10_41 Depth=1
	movq	8(%r14,%r12), %rax
.LBB10_54:                              #   in Loop: Header=BB10_41 Depth=1
	movq	24(%r14,%r12), %rdx
	movq	%r9, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*%rax
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB10_55:                              #   in Loop: Header=BB10_41 Depth=1
	addq	$1, %r15
	cmpq	%r15, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB10_56
.LBB10_41:                              # =>This Inner Loop Header: Depth=1
	movq	24(%r9), %r14
	movq	32(%r9), %rax
	movslq	(%rax,%r15,8), %rsi
	movl	4(%rax,%r15,8), %ecx
	movq	%rsi, %r12
	shlq	$5, %r12
	leaq	(%r14,%r12), %r8
	movl	(%r14,%r12), %r13d
	movl	%r13d, %edi
	movl	$0, %eax
	testb	$4, %r13b
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	jne	.LBB10_44
# %bb.42:                               #   in Loop: Header=BB10_41 Depth=1
	movl	%ecx, %edx
	andl	%r13d, %edx
	movl	%r13d, %edi
	movl	$0, %eax
	testb	$1, %dl
	je	.LBB10_44
# %bb.43:                               #   in Loop: Header=BB10_41 Depth=1
	movq	24(%r14,%r12), %rdx
	movq	%r9, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%ecx, %ebx
	movq	%r8, -80(%rbp)          # 8-byte Spill
	callq	*8(%r14,%r12)
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	%ebx, %ecx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movl	(%r8), %edi
	movl	$1, %eax
.LBB10_44:                              #   in Loop: Header=BB10_41 Depth=1
	andl	%ecx, %edi
	testb	$2, %dil
	je	.LBB10_49
# %bb.45:                               #   in Loop: Header=BB10_41 Depth=1
	movq	16(%r14,%r12), %rbx
	testl	%eax, %eax
	je	.LBB10_47
# %bb.46:                               #   in Loop: Header=BB10_41 Depth=1
	cmpq	8(%r14,%r12), %rbx
	je	.LBB10_48
.LBB10_47:                              #   in Loop: Header=BB10_41 Depth=1
	movq	24(%r14,%r12), %rdx
	movq	%r9, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movq	%r8, -80(%rbp)          # 8-byte Spill
	callq	*%rbx
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB10_48:                              #   in Loop: Header=BB10_41 Depth=1
	movl	$1, %eax
.LBB10_49:                              #   in Loop: Header=BB10_41 Depth=1
	testb	$4, %r13b
	je	.LBB10_55
# %bb.50:                               #   in Loop: Header=BB10_41 Depth=1
	movl	(%r8), %edx
	andl	%ecx, %edx
	testb	$1, %dl
	je	.LBB10_55
# %bb.51:                               #   in Loop: Header=BB10_41 Depth=1
	testl	%eax, %eax
	je	.LBB10_52
# %bb.53:                               #   in Loop: Header=BB10_41 Depth=1
	movq	8(%r14,%r12), %rax
	cmpq	%rax, 16(%r14,%r12)
	jne	.LBB10_54
	jmp	.LBB10_55
.LBB10_56:
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	-68(%rbp), %r14d        # 4-byte Reload
.LBB10_57:
	testb	$2, %r14b
	je	.LBB10_84
.LBB10_58:
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	callq	time
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	40(%rdi), %r14
	cmpq	16(%rdi), %rax
	jge	.LBB10_62
# %bb.59:
	testq	%r14, %r14
	je	.LBB10_85
# %bb.60:
	movq	%r14, %rcx
	.p2align	4, 0x90
.LBB10_61:                              # =>This Inner Loop Header: Depth=1
	movq	$0, 8(%rcx)
	movq	56(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB10_61
.LBB10_62:
	movq	%rax, 16(%rdi)
	testq	%r14, %r14
	je	.LBB10_83
# %bb.63:
	movq	8(%rdi), %r13
	xorl	%r12d, %r12d
	jmp	.LBB10_64
.LBB10_79:                              #   in Loop: Header=BB10_64 Depth=1
	movq	$-1, (%r14)
.LBB10_80:                              #   in Loop: Header=BB10_64 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB10_81:                              #   in Loop: Header=BB10_64 Depth=1
	movq	56(%r14), %rbx
.LBB10_82:                              #   in Loop: Header=BB10_64 Depth=1
	movq	%rbx, %r14
	testq	%rbx, %rbx
	je	.LBB10_83
.LBB10_64:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	cmpq	$-1, %rax
	je	.LBB10_65
# %bb.73:                               #   in Loop: Header=BB10_64 Depth=1
	cmpq	%r13, %rax
	jge	.LBB10_81
# %bb.74:                               #   in Loop: Header=BB10_64 Depth=1
	leaq	65472(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	65480(%rbp)
	movq	65472(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
	shrq	$63, %rcx
	sarq	$7, %rdx
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r14), %rax
	jg	.LBB10_77
# %bb.75:                               #   in Loop: Header=BB10_64 Depth=1
	jne	.LBB10_81
# %bb.76:                               #   in Loop: Header=BB10_64 Depth=1
	cmpq	16(%r14), %rdx
	jl	.LBB10_81
.LBB10_77:                              #   in Loop: Header=BB10_64 Depth=1
	movq	(%r14), %rsi
	movq	40(%r14), %rdx
	callq	*24(%r14)
	addl	$1, %r12d
	cmpl	$-1, %eax
	je	.LBB10_79
# %bb.78:                               #   in Loop: Header=BB10_64 Depth=1
	movq	%r12, %rbx
	movslq	%eax, %r12
	leaq	65472(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$2361183241434822607, %rsi # imm = 0x20C49BA5E353F7CF
	movq	%rsi, %rax
	imulq	65480(%rbp)
	movq	%rdx, %rcx
	movq	%r12, %rax
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	addq	65472(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rsi
	shrq	$63, %rsi
	sarq	$7, %rcx
	addq	%rsi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r12
	leaq	(%rcx,%r12), %rax
	xorl	%esi, %esi
	cmpq	$999, %rax              # imm = 0x3E7
	setg	%sil
	leaq	-1000(%rcx,%r12), %rcx
	movq	%rbx, %r12
	cmovleq	%rax, %rcx
	addq	%rdx, %rsi
	movq	%rsi, 8(%r14)
	movq	%rcx, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_80
	.p2align	4, 0x90
.LBB10_65:                              #   in Loop: Header=BB10_64 Depth=1
	movq	48(%r14), %rax
	movq	56(%r14), %rbx
	testq	%rax, %rax
	je	.LBB10_67
# %bb.66:                               #   in Loop: Header=BB10_64 Depth=1
	movq	%rbx, 56(%rax)
	movq	56(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB10_70
.LBB10_69:                              #   in Loop: Header=BB10_64 Depth=1
	movq	%rax, 48(%rcx)
.LBB10_70:                              #   in Loop: Header=BB10_64 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB10_72
# %bb.71:                               #   in Loop: Header=BB10_64 Depth=1
	movq	40(%r14), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*%rax
.LBB10_72:                              #   in Loop: Header=BB10_64 Depth=1
	movq	%r14, %rdi
	callq	zfree
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB10_82
.LBB10_67:                              #   in Loop: Header=BB10_64 Depth=1
	movq	%rbx, 40(%rdi)
	movq	%rbx, %rcx
	testq	%rcx, %rcx
	jne	.LBB10_69
	jmp	.LBB10_70
.LBB10_39:
	xorl	%r15d, %r15d
	testb	$2, %r14b
	jne	.LBB10_58
	jmp	.LBB10_84
.LBB10_85:
	movq	%rax, 16(%rdi)
.LBB10_83:
	movl	$42, __A_VARIABLE(%rip)
	addl	%r15d, %r12d
	movl	%r12d, %r15d
.LBB10_84:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	aeProcessEvents, .Lfunc_end10-aeProcessEvents
                                        # -- End function
	.globl	aeWait                  # -- Begin function aeWait
	.p2align	4, 0x90
	.type	aeWait,@function
aeWait:                                 # @aeWait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %ebx
	movl	%edi, %r15d
	leaq	-32(%rbp), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	movl	%r15d, -32(%rbp)
	testb	$1, %bl
	je	.LBB11_2
# %bb.1:
	orb	$1, -28(%rbp)
.LBB11_2:
	testb	$2, %bl
	je	.LBB11_4
# %bb.3:
	orb	$2, -28(%rbp)
.LBB11_4:
	leaq	-32(%rbp), %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	callq	poll
	cmpl	$1, %eax
	jne	.LBB11_6
# %bb.5:
	movzwl	-26(%rbp), %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	orl	$2, %edx
	movl	%ecx, %eax
	andl	$3, %eax
	testl	$516, %ecx              # imm = 0x204
	cmovnel	%edx, %eax
.LBB11_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	aeWait, .Lfunc_end11-aeWait
                                        # -- End function
	.globl	aeMain                  # -- Begin function aeMain
	.p2align	4, 0x90
	.type	aeMain,@function
aeMain:                                 # @aeMain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$0, 48(%rdi)
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	movq	%rbx, %rdi
	movl	$11, %esi
	callq	aeProcessEvents
	cmpl	$0, 48(%rbx)
	jne	.LBB12_4
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	movq	64(%rbx), %rax
	testq	%rax, %rax
	je	.LBB12_3
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movq	%rbx, %rdi
	callq	*%rax
	jmp	.LBB12_3
.LBB12_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	aeMain, .Lfunc_end12-aeMain
                                        # -- End function
	.globl	aeGetApiName            # -- Begin function aeGetApiName
	.p2align	4, 0x90
	.type	aeGetApiName,@function
aeGetApiName:                           # @aeGetApiName
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %eax
	retq
.Lfunc_end13:
	.size	aeGetApiName, .Lfunc_end13-aeGetApiName
                                        # -- End function
	.globl	aeSetBeforeSleepProc    # -- Begin function aeSetBeforeSleepProc
	.p2align	4, 0x90
	.type	aeSetBeforeSleepProc,@function
aeSetBeforeSleepProc:                   # @aeSetBeforeSleepProc
# %bb.0:
	movq	%rsi, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end14:
	.size	aeSetBeforeSleepProc, .Lfunc_end14-aeSetBeforeSleepProc
                                        # -- End function
	.globl	aeSetAfterSleepProc     # -- Begin function aeSetAfterSleepProc
	.p2align	4, 0x90
	.type	aeSetAfterSleepProc,@function
aeSetAfterSleepProc:                    # @aeSetAfterSleepProc
# %bb.0:
	movq	%rsi, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end15:
	.size	aeSetAfterSleepProc, .Lfunc_end15-aeSetAfterSleepProc
                                        # -- End function
	.type	tv,@object              # @tv
	.section	.data_shared,"aw",@progbits
	.p2align	3
tv:
	.zero	16
	.size	tv, 16

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"select"
	.size	.L.str.3, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
