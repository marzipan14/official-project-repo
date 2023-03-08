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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	movl	$32, %edx
	callq	*8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 2(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 3(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 5(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 6(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 7(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 9(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 11(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 12(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 13(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 14(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 15(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 56(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_17
# %bb.10:
	movq	24(%r15), %rax
	movl	%r14d, %edx
	leaq	-1(%rdx), %rsi
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB0_12
# %bb.11:
	xorl	%esi, %esi
	jmp	.LBB0_14
.LBB0_12:
	leaq	96(%rax), %rdi
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -96(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, (%rdi)
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	$-128, %rdi
	cmpq	%rsi, %rdx
	jne	.LBB0_13
.LBB0_14:
	testq	%rcx, %rcx
	je	.LBB0_17
# %bb.15:                               # %.preheader
	shlq	$5, %rsi
	addq	%rsi, %rax
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rax
	addq	$-1, %rcx
	jne	.LBB0_16
	jmp	.LBB0_17
.LBB0_4:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r15), %rdi
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	callq	zfree
	movq	32(%r15), %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	zfree
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_1
.LBB2_11:
	xorl	%eax, %eax
	jmp	.LBB2_12
.LBB2_1:
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$-1, %eax
	cmpl	%esi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB2_12
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %ebx
	jle	.LBB2_3
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jge	.LBB2_11
# %bb.4:
	movq	24(%r14), %r8
	movslq	%eax, %rcx
	movl	%ebx, %esi
	subl	%edx, %esi
	notl	%edx
	addl	%ebx, %edx
	addl	$-2, %esi
	andl	$3, %edx
	je	.LBB2_8
# %bb.5:                                # %.preheader1
	movq	%rcx, %rdi
	shlq	$5, %rdi
	addq	%r8, %rdi
	negl	%edx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rax
	addq	$32, %rdi
	cmpl	%eax, %edx
	jne	.LBB2_6
# %bb.7:                                # %.loopexit2
	subq	%rax, %rcx
.LBB2_8:
	cmpl	$3, %esi
	jb	.LBB2_11
# %bb.9:                                # %.preheader
	subl	%ecx, %ebx
	shlq	$5, %rcx
	leaq	(%rcx,%r8), %rax
	addq	$96, %rax
	.p2align	4, 0x90
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -64(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB5_1
# %bb.2:
	movq	%rcx, %r9
	movq	24(%rdi), %r11
	movq	56(%rdi), %r10
	movslq	%esi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB5_4
# %bb.3:
	movl	$1, %eax
	shlq	%cl, %rax
	movq	%rcx, %rbx
	shrq	$6, %rbx
	orq	%rax, (%r10,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB5_6
# %bb.5:
	movl	$1, %eax
	shlq	%cl, %rax
	movq	%rcx, %rbx
	shrq	$6, %rbx
	orq	%rax, 8(%r10,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$5, %rcx
	orl	%edx, (%r11,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB5_8
# %bb.7:
	movq	%r9, 8(%r11,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB5_10
# %bb.9:
	movq	%r9, 16(%r11,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_10:
	movq	%r8, 24(%r11,%rcx)
	cmpl	%esi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB5_12
# %bb.11:
	movl	%esi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB5_13
.LBB5_1:
	callq	__errno
	movl	$34, (%rax)
	movl	$-1, %eax
.LBB5_13:
	movl	$42, __A_VARIABLE(%rip)
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
	cmpl	%esi, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB6_18
# %bb.1:
	movq	24(%rdi), %r8
	movslq	%esi, %rcx
	movq	%rcx, %rax
	shlq	$5, %rax
	movl	(%r8,%rax), %r9d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB6_17
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB6_4
# %bb.3:
	orl	$4, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB6_4:
	movq	56(%rdi), %r10
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB6_6
# %bb.5:
	movq	$-2, %r11
	rolq	%cl, %r11
	movq	%rcx, %rbx
	shrq	$6, %rbx
	andq	%r11, (%r10,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_6:
	leaq	(%r8,%rax), %r11
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB6_8
# %bb.7:
	movq	$-2, %r14
	rolq	%cl, %r14
	movq	%rcx, %rbx
	shrq	$6, %rbx
	andq	%r14, 8(%r10,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	notl	%edx
	andl	%edx, %r9d
	movl	%r9d, (%r11)
	cmpl	%esi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_17
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	jne	.LBB6_17
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB6_11
# %bb.12:                               # %.preheader
	addq	%r8, %rax
	addq	$-32, %rax
	.p2align	4, 0x90
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_15
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=1
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-32, %rax
	testq	%rcx, %rcx
	jg	.LBB6_13
.LBB6_15:                               # %.loopexit
	addl	$-1, %ecx
	movl	%ecx, %esi
	jmp	.LBB6_16
.LBB6_11:
	addl	$-1, %esi
.LBB6_16:
	movl	%esi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_18:
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
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB7_2
# %bb.1:
	movq	24(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$5, %rcx
	movl	(%rax,%rcx), %eax
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	addq	%rsi, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1000, %r12             # imm = 0x3E8
	jl	.LBB8_4
# %bb.3:
	addq	$1, %rdx
	addq	$-1000, %r12            # imm = 0xFC18
	movl	$42, __A_VARIABLE(%rip)
.LBB8_4:
	movq	%rdx, 8(%rbx)
	movq	%r12, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, 24(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%rbx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 40(%rbx)
	movq	$0, 48(%rbx)
	movq	40(%r13), %rax
	movq	%rax, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_6
# %bb.5:
	movq	%rbx, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	movq	%rbx, 40(%r13)
	jmp	.LBB8_7
.LBB8_1:
	movq	$-1, %r14
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB9_4
	.p2align	4, 0x90
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_3
# %bb.5:                                #   in Loop: Header=BB9_2 Depth=1
	movq	56(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB9_2
	jmp	.LBB9_4
.LBB9_3:
	movq	$-1, (%rcx)
	xorl	%eax, %eax
.LBB9_4:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%esi, %r15d
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	jne	.LBB10_2
# %bb.1:
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	je	.LBB10_94
.LBB10_2:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$-1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_3
# %bb.16:
	testb	$2, %r15b
	je	.LBB10_23
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r15b
	je	.LBB10_6
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_19
.LBB10_3:
	xorl	%r12d, %r12d
	testb	$2, %r15b
	je	.LBB10_93
# %bb.4:
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r15b
	jne	.LBB10_65
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_6:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	40(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_20
# %bb.7:                                # %.preheader4
	xorl	%ebx, %ebx
	jmp	.LBB10_8
	.p2align	4, 0x90
.LBB10_12:                              #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
.LBB10_13:                              #   in Loop: Header=BB10_8 Depth=1
	movq	56(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_14
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB10_12
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	movq	8(%rbx), %rcx
	cmpq	%rcx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_12
# %bb.10:                               #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_13
# %bb.11:                               #   in Loop: Header=BB10_8 Depth=1
	movq	16(%rax), %rcx
	cmpq	16(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_12
	jmp	.LBB10_13
.LBB10_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r15b
	je	.LBB10_24
.LBB10_19:
	xorps	%xmm0, %xmm0
	movups	%xmm0, tv(%rip)
	movl	$tv, %eax
	jmp	.LBB10_25
.LBB10_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	65464(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65464(%rbp), %rsi
	movabsq	$-2361183241434822607, %rax # imm = 0xDF3B645A1CAC0831
	imulq	65472(%rbp)
	movq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rax
	subq	%rsi, %rax
	shrq	$63, %rdx
	sarq	$7, %rcx
	addq	%rdx, %rcx
	addq	16(%rbx), %rcx
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB10_21
# %bb.15:
	movq	%rcx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	mulq	%rdx
	shrq	$4, %rdx
	movq	%rdx, tv(%rip)
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	subq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	jmp	.LBB10_22
.LBB10_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_24:
	xorl	%eax, %eax
.LBB10_25:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB10_26
.LBB10_21:
	movq	$0, tv(%rip)
	xorl	%eax, %eax
.LBB10_22:
	movq	%rax, tv+8(%rip)
	movl	$tv, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB10_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	56(%rbx), %r14
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
	movl	(%rbx), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB10_29
# %bb.27:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB10_28
.LBB10_29:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	%r15d, %ebx
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-76(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r13, %r12
	xorl	%r13d, %r13d
	movq	-56(%rbp), %r8          # 8-byte Reload
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
	movl	%ebx, %r15d
	#APP
	movl	%r11d, -72(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-72(%rbp), %eax
	jmp	.LBB10_30
.LBB10_28:
	movl	-76(%rbp), %edi
	movq	%r12, %rsi
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	select
	movl	%eax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_30:
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB10_42
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB10_42
# %bb.32:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	24(%rcx), %rcx
	addq	$1, %rax
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB10_33
	.p2align	4, 0x90
.LBB10_40:                              #   in Loop: Header=BB10_33 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	32(%rdx), %rdx
	movslq	%r12d, %r12
	movl	%ebx, (%rdx,%r12,8)
	movl	%esi, 4(%rdx,%r12,8)
	addl	$1, %r12d
.LBB10_41:                              #   in Loop: Header=BB10_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rcx
	cmpq	%rbx, %rax
	je	.LBB10_42
.LBB10_33:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB10_41
# %bb.34:                               #   in Loop: Header=BB10_33 Depth=1
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	je	.LBB10_37
# %bb.35:                               #   in Loop: Header=BB10_33 Depth=1
	movq	%rbx, %rdx
	shrq	$6, %rdx
	movq	16(%r14,%rdx,8), %rdx
	btq	%rbx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB10_37
# %bb.36:                               #   in Loop: Header=BB10_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
.LBB10_37:                              #   in Loop: Header=BB10_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dil
	je	.LBB10_40
# %bb.38:                               #   in Loop: Header=BB10_33 Depth=1
	movq	%rbx, %rdx
	shrq	$6, %rdx
	movq	24(%r14,%rdx,8), %rdx
	btq	%rbx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB10_40
# %bb.39:                               #   in Loop: Header=BB10_33 Depth=1
	orl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_40
.LBB10_42:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_45
# %bb.43:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r15b
	je	.LBB10_45
# %bb.44:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB10_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB10_46
# %bb.47:
	movl	%r15d, -80(%rbp)        # 4-byte Spill
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movl	%r12d, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB10_48
.LBB10_59:                              #   in Loop: Header=BB10_48 Depth=1
	movq	8(%r14,%r12), %rax
.LBB10_61:                              #   in Loop: Header=BB10_48 Depth=1
	movq	24(%r14,%r12), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB10_62:                              #   in Loop: Header=BB10_48 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, -104(%rbp)        # 8-byte Folded Reload
	je	.LBB10_63
.LBB10_48:                              # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %r14
	movq	32(%rax), %rax
	movslq	(%rax,%r15,8), %rbx
	movl	4(%rax,%r15,8), %ecx
	movq	%rbx, %r12
	shlq	$5, %r12
	leaq	(%r14,%r12), %r8
	movl	(%r14,%r12), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %edi
	movl	$0, %eax
	testb	$4, %r13b
	jne	.LBB10_51
# %bb.49:                               #   in Loop: Header=BB10_48 Depth=1
	movl	%ecx, %edx
	andl	%r13d, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %edi
	movl	$0, %eax
	testb	$1, %dl
	je	.LBB10_51
# %bb.50:                               #   in Loop: Header=BB10_48 Depth=1
	movq	24(%r14,%r12), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movq	%r8, -96(%rbp)          # 8-byte Spill
	callq	*8(%r14,%r12)
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r8), %edi
	movl	$1, %eax
.LBB10_51:                              #   in Loop: Header=BB10_48 Depth=1
	andl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dil
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	je	.LBB10_56
# %bb.52:                               #   in Loop: Header=BB10_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14,%r12), %r9
	testl	%eax, %eax
	je	.LBB10_54
# %bb.53:                               #   in Loop: Header=BB10_48 Depth=1
	cmpq	8(%r14,%r12), %r9
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_55
.LBB10_54:                              #   in Loop: Header=BB10_48 Depth=1
	movq	24(%r14,%r12), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movq	%r8, %rbx
	callq	*%r9
	movq	%rbx, %r8
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB10_55:                              #   in Loop: Header=BB10_48 Depth=1
	movl	$1, %eax
.LBB10_56:                              #   in Loop: Header=BB10_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r13b
	je	.LBB10_62
# %bb.57:                               #   in Loop: Header=BB10_48 Depth=1
	movl	(%r8), %edx
	andl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB10_62
# %bb.58:                               #   in Loop: Header=BB10_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_59
# %bb.60:                               #   in Loop: Header=BB10_48 Depth=1
	movq	8(%r14,%r12), %rax
	cmpq	%rax, 16(%r14,%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_61
	jmp	.LBB10_62
.LBB10_63:
	movl	-80(%rbp), %r15d        # 4-byte Reload
	movq	-88(%rbp), %r12         # 8-byte Reload
	jmp	.LBB10_64
.LBB10_46:
	xorl	%r12d, %r12d
.LBB10_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	je	.LBB10_94
.LBB10_65:
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	time
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	16(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%rcx), %r14
	jge	.LBB10_69
# %bb.66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB10_95
# %bb.67:
	movq	%r14, %rcx
	.p2align	4, 0x90
.LBB10_68:                              # =>This Inner Loop Header: Depth=1
	movq	$0, 8(%rcx)
	movq	56(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB10_68
.LBB10_69:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	8(%rcx), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB10_92
# %bb.70:
	xorl	%r15d, %r15d
	jmp	.LBB10_71
.LBB10_88:                              #   in Loop: Header=BB10_71 Depth=1
	movq	$-1, (%r14)
.LBB10_89:                              #   in Loop: Header=BB10_71 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_90:                              #   in Loop: Header=BB10_71 Depth=1
	movq	56(%r14), %rbx
.LBB10_91:                              #   in Loop: Header=BB10_71 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testq	%rbx, %rbx
	je	.LBB10_92
.LBB10_71:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB10_72
# %bb.80:                               #   in Loop: Header=BB10_71 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jge	.LBB10_90
# %bb.81:                               #   in Loop: Header=BB10_71 Depth=1
	leaq	65464(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	65464(%rbp), %rcx
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	65472(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB10_84
# %bb.82:                               #   in Loop: Header=BB10_71 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_90
# %bb.83:                               #   in Loop: Header=BB10_71 Depth=1
	cmpq	16(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_90
.LBB10_84:                              #   in Loop: Header=BB10_71 Depth=1
	movq	(%r14), %rsi
	movq	40(%r14), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_88
# %bb.85:                               #   in Loop: Header=BB10_71 Depth=1
	movq	%r12, %rbx
	movslq	%eax, %r12
	leaq	65464(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$2361183241434822607, %rsi # imm = 0x20C49BA5E353F7CF
	movq	%rsi, %rax
	imulq	65472(%rbp)
	movq	%rdx, %rcx
	movq	%r12, %rax
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	addq	65464(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rsi
	shrq	$63, %rsi
	sarq	$7, %rcx
	addq	%rsi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r12
	addq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1000, %r12             # imm = 0x3E8
	jl	.LBB10_87
# %bb.86:                               #   in Loop: Header=BB10_71 Depth=1
	addq	$1, %rdx
	addq	$-1000, %r12            # imm = 0xFC18
	movl	$42, __A_VARIABLE(%rip)
.LBB10_87:                              #   in Loop: Header=BB10_71 Depth=1
	movq	%rdx, 8(%r14)
	movq	%r12, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	jmp	.LBB10_89
	.p2align	4, 0x90
.LBB10_72:                              #   in Loop: Header=BB10_71 Depth=1
	movq	48(%r14), %rax
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_74
# %bb.73:                               #   in Loop: Header=BB10_71 Depth=1
	movq	%rbx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r14), %rcx
	jmp	.LBB10_75
.LBB10_74:                              #   in Loop: Header=BB10_71 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, 40(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
.LBB10_75:                              #   in Loop: Header=BB10_71 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB10_77
# %bb.76:                               #   in Loop: Header=BB10_71 Depth=1
	movq	%rax, 48(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_77:                              #   in Loop: Header=BB10_71 Depth=1
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_79
# %bb.78:                               #   in Loop: Header=BB10_71 Depth=1
	movq	40(%r14), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB10_79:                              #   in Loop: Header=BB10_71 Depth=1
	movq	%r14, %rdi
	callq	zfree
	jmp	.LBB10_91
.LBB10_95:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_92:
	addl	%r12d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r12
.LBB10_93:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
.LBB10_94:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	je	.LBB11_2
# %bb.1:
	orb	$1, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %bl
	je	.LBB11_4
# %bb.3:
	orb	$2, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_4:
	leaq	-32(%rbp), %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	callq	poll
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB11_13
# %bb.5:
	movzwl	-26(%rbp), %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB11_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB11_7:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB11_9
# %bb.8:
	orl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB11_11
# %bb.10:
	orl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB11_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %ecx              # imm = 0x200
	je	.LBB11_13
# %bb.12:
	orl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB11_13:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	movq	%rbx, %rdi
	movl	$11, %esi
	callq	aeProcessEvents
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_4
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	movq	64(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_3
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movq	%rbx, %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
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
