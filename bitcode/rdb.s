	.text
	.file	"rdb.c"
	.globl	rdbCheckThenExit        # -- Begin function rdbCheckThenExit
	.p2align	4, 0x90
	.type	rdbCheckThenExit,@function
rdbCheckThenExit:                       # @rdbCheckThenExit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1248, %rsp             # imm = 0x4E0
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movl	%edi, %ecx
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB0_2:
	movq	%rdx, -224(%rbp)
	movq	%rbx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	leaq	-1264(%rbp), %rdi
	movl	$1024, %ebx             # imm = 0x400
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str, %edx
	xorl	%eax, %eax
	callq	snprintf
	movabsq	$206158430224, %rcx     # imm = 0x3000000010
	movq	%rcx, -64(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	leaq	-240(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	cltq
	leaq	(%rax,%rbp), %rdi
	addq	$-1264, %rdi            # imm = 0xFB10
	subq	%rax, %rbx
	leaq	-64(%rbp), %rcx
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	vsnprintf
	cmpl	$0, rdbCheckMode(%rip)
	jne	.LBB0_4
# %bb.3:
	leaq	-1264(%rbp), %rdx
	movl	$.L.str.1, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	$.L.str.2, -32(%rbp)
	movq	server+2120(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rsi
	movl	$2, %edi
	xorl	%edx, %edx
	callq	redis_check_rdb_main
	movl	$1, %edi
	callq	exit
.LBB0_4:
	leaq	-1264(%rbp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	rdbCheckError
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	rdbCheckThenExit, .Lfunc_end0-rdbCheckThenExit
                                        # -- End function
	.globl	rdbLoadRaw              # -- Begin function rdbLoadRaw
	.p2align	4, 0x90
	.type	rdbLoadRaw,@function
rdbLoadRaw:                             # @rdbLoadRaw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rdx, %rdx
	je	.LBB1_6
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	%rdx, %r13
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	subq	%rbx, %r13
	je	.LBB1_6
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rax
	cmpq	%r13, %rax
	movq	%r13, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r13, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB1_7
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB1_5
.LBB1_6:
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
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %esi
	movl	$85, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.Lfunc_end1:
	.size	rdbLoadRaw, .Lfunc_end1-rdbLoadRaw
                                        # -- End function
	.globl	rdbSaveType             # -- Begin function rdbSaveType
	.p2align	4, 0x90
	.type	rdbSaveType,@function
rdbSaveType:                            # @rdbSaveType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movb	%sil, -33(%rbp)
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.2:
	movq	%rdi, %r14
	leaq	-33(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB2_6
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB2_3
# %bb.8:
	movl	$1, %eax
	jmp	.LBB2_9
.LBB2_1:
	movl	$1, %eax
	jmp	.LBB2_10
.LBB2_6:
	movl	$-1, %eax
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rdbSaveType, .Lfunc_end2-rdbSaveType
                                        # -- End function
	.globl	rdbLoadType             # -- Begin function rdbLoadType
	.p2align	4, 0x90
	.type	rdbLoadType,@function
rdbLoadType:                            # @rdbLoadType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	leaq	-33(%rbp), %r15
	movl	$1, %r12d
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	je	.LBB3_5
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	testq	%rax, %rax
	je	.LBB3_6
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB3_4
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-33(%rbp), %eax
	jmp	.LBB3_7
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rdbLoadType, .Lfunc_end3-rdbLoadType
                                        # -- End function
	.globl	rdbLoadTime             # -- Begin function rdbLoadTime
	.p2align	4, 0x90
	.type	rdbLoadTime,@function
rdbLoadTime:                            # @rdbLoadTime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	leaq	-36(%rbp), %r15
	movl	$4, %r12d
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	je	.LBB4_5
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	testq	%rax, %rax
	je	.LBB4_6
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB4_4
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-36(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %esi
	movl	$4, %edx
	movl	$85, %edi
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.Lfunc_end4:
	.size	rdbLoadTime, .Lfunc_end4-rdbLoadTime
                                        # -- End function
	.globl	rdbSaveMillisecondTime  # -- Begin function rdbSaveMillisecondTime
	.p2align	4, 0x90
	.type	rdbSaveMillisecondTime,@function
rdbSaveMillisecondTime:                 # @rdbSaveMillisecondTime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, -40(%rbp)
	testq	%rdi, %rdi
	je	.LBB5_1
# %bb.2:
	movq	%rdi, %r14
	movl	$8, %r12d
	leaq	-40(%rbp), %r15
	.p2align	4, 0x90
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB5_5:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB5_6
# %bb.7:                                #   in Loop: Header=BB5_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB5_3
# %bb.8:
	movl	$8, %eax
	jmp	.LBB5_9
.LBB5_1:
	movl	$8, %eax
	jmp	.LBB5_10
.LBB5_6:
	movl	$-1, %eax
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rdbSaveMillisecondTime, .Lfunc_end5-rdbSaveMillisecondTime
                                        # -- End function
	.globl	rdbLoadMillisecondTime  # -- Begin function rdbLoadMillisecondTime
	.p2align	4, 0x90
	.type	rdbLoadMillisecondTime,@function
rdbLoadMillisecondTime:                 # @rdbLoadMillisecondTime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	leaq	-40(%rbp), %r15
	movl	$8, %r12d
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	je	.LBB6_5
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	testq	%rax, %rax
	je	.LBB6_6
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB6_4
.LBB6_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %esi
	movl	$8, %edx
	movl	$85, %edi
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.Lfunc_end6:
	.size	rdbLoadMillisecondTime, .Lfunc_end6-rdbLoadMillisecondTime
                                        # -- End function
	.globl	rdbSaveLen              # -- Begin function rdbSaveLen
	.p2align	4, 0x90
	.type	rdbSaveLen,@function
rdbSaveLen:                             # @rdbSaveLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, %r14
	movq	%rsi, -48(%rbp)
	cmpq	$63, %rsi
	ja	.LBB7_9
# %bb.1:
	movb	%sil, -34(%rbp)
	testq	%r14, %r14
	je	.LBB7_8
# %bb.2:
	movl	$1, %r12d
	leaq	-34(%rbp), %r15
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB7_5
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB7_48
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB7_3
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB7_49
.LBB7_9:
	movq	%rsi, %rax
	cmpq	$16383, %rsi            # imm = 0x3FFF
	ja	.LBB7_18
# %bb.10:
	shrq	$8, %rax
	orb	$64, %al
	movb	%al, -34(%rbp)
	movb	%sil, -33(%rbp)
	testq	%r14, %r14
	je	.LBB7_17
# %bb.11:
	movl	$2, %r12d
	leaq	-34(%rbp), %r15
	.p2align	4, 0x90
.LBB7_12:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_14:                               #   in Loop: Header=BB7_12 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB7_48
# %bb.15:                               #   in Loop: Header=BB7_12 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB7_12
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB7_49
.LBB7_18:
	shrq	$32, %rax
	jne	.LBB7_34
# %bb.19:
	movb	$-128, -34(%rbp)
	testq	%r14, %r14
	je	.LBB7_26
# %bb.20:
	movl	$1, %r12d
	leaq	-34(%rbp), %r15
	.p2align	4, 0x90
.LBB7_21:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_21 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_23:                               #   in Loop: Header=BB7_21 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB7_48
# %bb.24:                               #   in Loop: Header=BB7_21 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB7_21
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi
.LBB7_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %edi
	callq	lwip_htonl
	movl	%eax, -52(%rbp)
	testq	%r14, %r14
	je	.LBB7_33
# %bb.27:
	movl	$4, %r12d
	leaq	-52(%rbp), %r15
	.p2align	4, 0x90
.LBB7_28:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB7_30
# %bb.29:                               #   in Loop: Header=BB7_28 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_30:                               #   in Loop: Header=BB7_28 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB7_48
# %bb.31:                               #   in Loop: Header=BB7_28 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB7_28
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	jmp	.LBB7_49
.LBB7_34:
	movb	$-127, -34(%rbp)
	testq	%r14, %r14
	je	.LBB7_46
# %bb.35:
	movl	$1, %r12d
	leaq	-34(%rbp), %r15
	.p2align	4, 0x90
.LBB7_36:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB7_38
# %bb.37:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_38:                               #   in Loop: Header=BB7_36 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB7_48
# %bb.39:                               #   in Loop: Header=BB7_36 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB7_36
# %bb.40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi
	callq	intrev64
	movq	%rax, -48(%rbp)
	movl	$8, %r12d
	leaq	-48(%rbp), %r15
	.p2align	4, 0x90
.LBB7_41:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB7_43
# %bb.42:                               #   in Loop: Header=BB7_41 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB7_43:                               #   in Loop: Header=BB7_41 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB7_48
# %bb.44:                               #   in Loop: Header=BB7_41 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB7_41
# %bb.45:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_47
.LBB7_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB7_49:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_46:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	callq	intrev64
	movq	%rax, -48(%rbp)
.LBB7_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$9, %eax
	jmp	.LBB7_49
.Lfunc_end7:
	.size	rdbSaveLen, .Lfunc_end7-rdbSaveLen
                                        # -- End function
	.globl	rdbLoadLenByRef         # -- Begin function rdbLoadLenByRef
	.p2align	4, 0x90
	.type	rdbLoadLenByRef,@function
rdbLoadLenByRef:                        # @rdbLoadLenByRef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r12
	testq	%rsi, %rsi
	je	.LBB8_2
# %bb.1:
	movl	$0, (%r15)
.LBB8_2:
	movl	$1, %r14d
	leaq	-42(%rbp), %r13
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB8_8
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB8_4
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB8_7
.LBB8_8:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-42(%rbp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	testb	%dl, %dl
	je	.LBB8_13
# %bb.9:
	cmpb	$1, %dl
	je	.LBB8_15
# %bb.10:
	cmpb	$3, %dl
	jne	.LBB8_23
# %bb.11:
	testq	%r15, %r15
	je	.LBB8_13
# %bb.12:
	movl	$1, (%r15)
.LBB8_13:
	andl	$63, %eax
.LBB8_14:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
.LBB8_21:
	xorl	%eax, %eax
	jmp	.LBB8_22
.LBB8_15:
	movl	$1, %r14d
	leaq	-41(%rbp), %r15
	jmp	.LBB8_16
	.p2align	4, 0x90
.LBB8_19:                               #   in Loop: Header=BB8_16 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB8_20
.LBB8_16:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB8_4
# %bb.17:                               #   in Loop: Header=BB8_16 Depth=1
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_16 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB8_19
.LBB8_23:
	cmpb	$-127, %al
	je	.LBB8_31
# %bb.24:
	cmpb	$-128, %al
	jne	.LBB8_37
# %bb.25:
	leaq	-60(%rbp), %r15
	movl	$4, %r14d
	jmp	.LBB8_26
	.p2align	4, 0x90
.LBB8_29:                               #   in Loop: Header=BB8_26 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB8_30
.LBB8_26:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB8_4
# %bb.27:                               #   in Loop: Header=BB8_26 Depth=1
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB8_29
# %bb.28:                               #   in Loop: Header=BB8_26 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB8_29
.LBB8_31:
	leaq	-72(%rbp), %r15
	movl	$8, %r14d
	jmp	.LBB8_32
	.p2align	4, 0x90
.LBB8_35:                               #   in Loop: Header=BB8_32 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB8_36
.LBB8_32:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB8_4
# %bb.33:                               #   in Loop: Header=BB8_32 Depth=1
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB8_35
# %bb.34:                               #   in Loop: Header=BB8_32 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB8_35
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB8_22:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_20:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-42(%rbp), %eax
	andl	$63, %eax
	shlq	$8, %rax
	movzbl	-41(%rbp), %ecx
	orq	%rax, %rcx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB8_21
.LBB8_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %edi
	callq	lwip_htonl
	movl	%eax, %eax
	jmp	.LBB8_14
.LBB8_36:
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdi
	callq	intrev64
	jmp	.LBB8_14
.LBB8_37:
	movl	$.L.str.4, %esi
	movl	$213, %edi
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.Lfunc_end8:
	.size	rdbLoadLenByRef, .Lfunc_end8-rdbLoadLenByRef
                                        # -- End function
	.globl	rdbLoadLen              # -- Begin function rdbLoadLen
	.p2align	4, 0x90
	.type	rdbLoadLen,@function
rdbLoadLen:                             # @rdbLoadLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	%eax, %ecx
	movq	$-1, %rax
	cmpl	$-1, %ecx
	je	.LBB9_2
# %bb.1:
	movq	-8(%rbp), %rax
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rdbLoadLen, .Lfunc_end9-rdbLoadLen
                                        # -- End function
	.globl	rdbEncodeInteger        # -- Begin function rdbEncodeInteger
	.p2align	4, 0x90
	.type	rdbEncodeInteger,@function
rdbEncodeInteger:                       # @rdbEncodeInteger
# %bb.0:
	movq	%rdi, %rcx
	movsbq	%cl, %rax
	cmpq	%rdi, %rax
	jne	.LBB10_2
# %bb.1:
	movb	$-64, (%rsi)
	movl	$2, %eax
	movl	$1, %edx
	jmp	.LBB10_6
.LBB10_2:
	movswq	%cx, %rax
	cmpq	%rcx, %rax
	jne	.LBB10_4
# %bb.3:
	movb	$-63, (%rsi)
	movb	%cl, 1(%rsi)
	shrq	$8, %rcx
	movl	$3, %eax
	movl	$2, %edx
	jmp	.LBB10_6
.LBB10_4:
	movslq	%ecx, %rdx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jne	.LBB10_7
# %bb.5:
	movb	$-62, (%rsi)
	movb	%cl, 1(%rsi)
	movb	%ch, 2(%rsi)
	movq	%rcx, %rax
	shrq	$16, %rax
	movb	%al, 3(%rsi)
	shrq	$24, %rcx
	movl	$5, %eax
	movl	$4, %edx
.LBB10_6:
	movb	%cl, (%rsi,%rdx)
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end10:
	.size	rdbEncodeInteger, .Lfunc_end10-rdbEncodeInteger
                                        # -- End function
	.globl	rdbLoadIntegerObject    # -- Begin function rdbLoadIntegerObject
	.p2align	4, 0x90
	.type	rdbLoadIntegerObject,@function
rdbLoadIntegerObject:                   # @rdbLoadIntegerObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edx, %r15d
	movq	%rdi, %r12
	cmpl	$2, %esi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	je	.LBB11_16
# %bb.1:
	movl	%esi, %edx
	cmpl	$1, %esi
	je	.LBB11_10
# %bb.2:
	testl	%edx, %edx
	jne	.LBB11_34
# %bb.3:
	movl	$1, %r14d
	leaq	-44(%rbp), %r13
	jmp	.LBB11_4
	.p2align	4, 0x90
.LBB11_8:                               #   in Loop: Header=BB11_4 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB11_9
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB11_5
# %bb.6:                                #   in Loop: Header=BB11_4 Depth=1
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB11_8
# %bb.7:                                #   in Loop: Header=BB11_4 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB11_8
.LBB11_10:
	movl	$2, %r14d
	leaq	-44(%rbp), %r13
	jmp	.LBB11_11
	.p2align	4, 0x90
.LBB11_14:                              #   in Loop: Header=BB11_11 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB11_15
.LBB11_11:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB11_5
# %bb.12:                               #   in Loop: Header=BB11_11 Depth=1
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_11 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB11_14
.LBB11_16:
	movl	$4, %r14d
	leaq	-44(%rbp), %r13
	jmp	.LBB11_17
	.p2align	4, 0x90
.LBB11_20:                              #   in Loop: Header=BB11_17 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB11_21
.LBB11_17:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB11_5
# %bb.18:                               #   in Loop: Header=BB11_17 Depth=1
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB11_20
# %bb.19:                               #   in Loop: Header=BB11_17 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB11_20
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB11_33
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	movsbq	-44(%rbp), %rdx
	testb	$6, %r15b
	jne	.LBB11_23
	jmp	.LBB11_29
.LBB11_15:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-44(%rbp), %eax
	movzbl	-43(%rbp), %ecx
	shll	$8, %ecx
	movswq	%cx, %rdx
	orq	%rax, %rdx
	testb	$6, %r15b
	je	.LBB11_29
.LBB11_23:
	leaq	-80(%rbp), %rdi
	movl	$21, %esi
	callq	ll2string
	movslq	%eax, %r12
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB11_25
# %bb.24:
	movq	%r12, (%rcx)
.LBB11_25:
	testb	$2, %r15b
	jne	.LBB11_26
# %bb.27:
	movq	SDS_NOINIT(%rip), %rdi
	movslq	%eax, %r12
	movq	%r12, %rsi
	callq	sdsnewlen
	jmp	.LBB11_28
.LBB11_21:
	movl	$42, __A_VARIABLE(%rip)
	movslq	-44(%rbp), %rdx
	testb	$6, %r15b
	jne	.LBB11_23
.LBB11_29:
	movq	%rdx, %rdi
	testb	$1, %r15b
	jne	.LBB11_30
# %bb.31:
	callq	sdsfromlonglong
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	jmp	.LBB11_32
.LBB11_26:
	movq	%r12, %rdi
	callq	zmalloc
.LBB11_28:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r12, %rdx
	callq	memcpy
	jmp	.LBB11_33
.LBB11_30:
	callq	createStringObjectFromLongLongForValue
.LBB11_32:
	movq	%rax, %rbx
.LBB11_33:
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
.LBB11_34:
	movl	$.L.str.5, %esi
	movl	$281, %edi              # imm = 0x119
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.Lfunc_end11:
	.size	rdbLoadIntegerObject, .Lfunc_end11-rdbLoadIntegerObject
                                        # -- End function
	.globl	rdbTryIntegerEncoding   # -- Begin function rdbTryIntegerEncoding
	.p2align	4, 0x90
	.type	rdbTryIntegerEncoding,@function
rdbTryIntegerEncoding:                  # @rdbTryIntegerEncoding
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	-56(%rbp), %rsi
	movl	$10, %edx
	callq	strtoll
	movq	-56(%rbp), %rcx
	xorl	%r14d, %r14d
	cmpb	$0, (%rcx)
	jne	.LBB12_11
# %bb.1:
	movq	%r12, -48(%rbp)         # 8-byte Spill
	leaq	-96(%rbp), %r12
	movl	$32, %esi
	movq	%r12, %rdi
	movq	%rax, %r13
	movq	%rax, %rdx
	callq	ll2string
	movq	%r12, %rdi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB12_11
# %bb.2:
	leaq	-96(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB12_11
# %bb.3:
	movq	%r13, %rdx
	movsbq	%dl, %rax
	cmpq	%r13, %rax
	jne	.LBB12_5
# %bb.4:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movb	$-64, (%rcx)
	movl	$2, %r14d
	movl	$1, %eax
	jmp	.LBB12_9
.LBB12_5:
	movswq	%dx, %rax
	cmpq	%rdx, %rax
	jne	.LBB12_7
# %bb.6:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movb	$-63, (%rcx)
	movb	%dl, 1(%rcx)
	shrq	$8, %rdx
	movl	$3, %r14d
	movl	$2, %eax
	jmp	.LBB12_9
.LBB12_7:
	movslq	%edx, %rax
	xorl	%r14d, %r14d
	cmpq	%rdx, %rax
	jne	.LBB12_10
# %bb.8:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movb	$-62, (%rcx)
	movb	%dl, 1(%rcx)
	movb	%dh, 2(%rcx)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, 3(%rcx)
	shrq	$24, %rdx
	movl	$5, %r14d
	movl	$4, %eax
.LBB12_9:
	movb	%dl, (%rcx,%rax)
.LBB12_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	rdbTryIntegerEncoding, .Lfunc_end12-rdbTryIntegerEncoding
                                        # -- End function
	.globl	rdbSaveLzfBlob          # -- Begin function rdbSaveLzfBlob
	.p2align	4, 0x90
	.type	rdbSaveLzfBlob,@function
rdbSaveLzfBlob:                         # @rdbSaveLzfBlob
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movb	$-61, -41(%rbp)
	testq	%rdi, %rdi
	je	.LBB13_7
# %bb.1:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	leaq	-41(%rbp), %r12
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB13_4
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB13_4:                               #   in Loop: Header=BB13_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB13_20
# %bb.5:                                #   in Loop: Header=BB13_2 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB13_2
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB13_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveLen
	movq	$-1, %r12
	cmpl	$-1, %eax
	je	.LBB13_19
# %bb.8:
	movl	%eax, %r14d
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB13_19
# %bb.9:
	testq	%r13, %r13
	je	.LBB13_17
# %bb.10:
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%r14d, -64(%rbp)        # 4-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB13_16
# %bb.11:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB13_12:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%rbx, %rcx
	movq	%rbx, %r14
	cmovbq	%rcx, %r14
	testq	%rcx, %rcx
	cmoveq	%rbx, %r14
	testq	%rax, %rax
	je	.LBB13_14
# %bb.13:                               #   in Loop: Header=BB13_12 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*%rax
.LBB13_14:                              #   in Loop: Header=BB13_12 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB13_21
# %bb.15:                               #   in Loop: Header=BB13_12 Depth=1
	addq	%r14, %r15
	addq	%r14, 48(%r13)
	subq	%r14, %rbx
	jne	.LBB13_12
.LBB13_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	-64(%rbp), %r14d        # 4-byte Reload
	movl	-68(%rbp), %eax         # 4-byte Reload
.LBB13_17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB13_19
# %bb.18:
	movslq	%ebx, %rsi
	movslq	%r14d, %rcx
	movslq	%eax, %rdx
	addq	%rsi, %rcx
	leaq	(%rdx,%rcx), %r12
	addq	$1, %r12
	jmp	.LBB13_19
.LBB13_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
.LBB13_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_19
.Lfunc_end13:
	.size	rdbSaveLzfBlob, .Lfunc_end13-rdbSaveLzfBlob
                                        # -- End function
	.globl	rdbSaveLzfStringObject  # -- Begin function rdbSaveLzfStringObject
	.p2align	4, 0x90
	.type	rdbSaveLzfStringObject,@function
rdbSaveLzfStringObject:                 # @rdbSaveLzfStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	cmpq	$5, %rdx
	jb	.LBB14_7
# %bb.2:
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	leaq	-3(%rdx), %rdi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB14_7
# %bb.3:
	movq	%rax, %r14
	leal	-4(%rbx), %ecx
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rax, %rdx
	callq	lzf_compress
	testl	%eax, %eax
	je	.LBB14_6
# %bb.4:
	movl	%eax, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rcx
	callq	rdbSaveLzfBlob
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	zfree
	jmp	.LBB14_8
.LBB14_6:
	movq	%r14, %rdi
	callq	zfree
.LBB14_7:
	xorl	%ebx, %ebx
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	rdbSaveLzfStringObject, .Lfunc_end14-rdbSaveLzfStringObject
                                        # -- End function
	.globl	rdbLoadLzfStringObject  # -- Begin function rdbLoadLzfStringObject
	.p2align	4, 0x90
	.type	rdbLoadLzfStringObject,@function
rdbLoadLzfStringObject:                 # @rdbLoadLzfStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %r14
	movl	%esi, %r13d
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	leaq	-72(%rbp), %rdx
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	-72(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB15_28
# %bb.1:
	cmpq	$-1, %r12
	je	.LBB15_28
# %bb.2:
	xorl	%ebx, %ebx
	leaq	-72(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	-72(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB15_28
# %bb.3:
	cmpq	$-1, %rcx
	je	.LBB15_28
# %bb.4:
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	zmalloc
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB15_5
# %bb.6:
	testb	$2, %r13b
	jne	.LBB15_7
# %bb.8:
	movq	SDS_NOINIT(%rip), %rdi
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	sdsnewlen
	jmp	.LBB15_9
.LBB15_5:
	xorl	%ebx, %ebx
	jmp	.LBB15_23
.LBB15_7:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	zmalloc
.LBB15_9:
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testq	%r14, %r14
	je	.LBB15_11
# %bb.10:
	movq	%rbx, (%r14)
.LBB15_11:
	testq	%r12, %r12
	je	.LBB15_17
# %bb.12:
	movq	%r12, %r13
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB15_13
	.p2align	4, 0x90
.LBB15_16:                              #   in Loop: Header=BB15_13 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r15)
	subq	%rbx, %r13
	je	.LBB15_17
.LBB15_13:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rax
	cmpq	%r13, %rax
	movq	%r13, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r13, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB15_22
# %bb.14:                               #   in Loop: Header=BB15_13 Depth=1
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB15_16
# %bb.15:                               #   in Loop: Header=BB15_13 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB15_16
.LBB15_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	lzf_decompress
	testl	%eax, %eax
	je	.LBB15_18
# %bb.20:
	movq	%r14, %rdi
	callq	zfree
	testb	$6, -44(%rbp)           # 1-byte Folded Reload
	jne	.LBB15_28
# %bb.21:
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	createObject
	movq	%rax, %rbx
	jmp	.LBB15_28
.LBB15_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movl	-44(%rbp), %r13d        # 4-byte Reload
.LBB15_23:
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB15_24:
	movq	%r14, %rdi
	callq	zfree
	movq	%rbx, %rdi
	testb	$2, %r13b
	jne	.LBB15_25
# %bb.26:
	callq	sdsfree
	jmp	.LBB15_27
.LBB15_25:
	callq	zfree
.LBB15_27:
	xorl	%ebx, %ebx
.LBB15_28:
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
.LBB15_18:
	cmpl	$0, rdbCheckMode(%rip)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	je	.LBB15_24
# %bb.19:
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	rdbCheckSetError
	jmp	.LBB15_24
.Lfunc_end15:
	.size	rdbLoadLzfStringObject, .Lfunc_end15-rdbLoadLzfStringObject
                                        # -- End function
	.globl	rdbSaveRawString        # -- Begin function rdbSaveRawString
	.p2align	4, 0x90
	.type	rdbSaveRawString,@function
rdbSaveRawString:                       # @rdbSaveRawString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	cmpq	$11, %rdx
	ja	.LBB16_9
# %bb.1:
	leaq	-53(%rbp), %r14
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	rdbTryIntegerEncoding
	testl	%eax, %eax
	jle	.LBB16_18
# %bb.2:
	movslq	%eax, %r15
	testq	%r13, %r13
	je	.LBB16_15
# %bb.3:
	movl	%eax, %r12d
	movq	%r15, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB16_6
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB16_6:                               #   in Loop: Header=BB16_4 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB16_29
# %bb.7:                                #   in Loop: Header=BB16_4 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	jne	.LBB16_4
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	movq	-48(%rbp), %r15         # 8-byte Reload
	jne	.LBB16_32
	jmp	.LBB16_30
.LBB16_9:
	cmpq	$21, %rbx
	jb	.LBB16_18
# %bb.10:
	cmpl	$0, server+2128(%rip)
	je	.LBB16_18
# %bb.11:
	leaq	-3(%rbx), %rdi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB16_17
# %bb.12:
	movq	%rax, %r14
	leal	-4(%rbx), %ecx
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rax, %rdx
	callq	lzf_compress
	testl	%eax, %eax
	je	.LBB16_16
# %bb.13:
	movl	%eax, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rcx
	callq	rdbSaveLzfBlob
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r15
	je	.LBB16_30
# %bb.14:
	testq	%r15, %r15
	jg	.LBB16_32
	jmp	.LBB16_18
.LBB16_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_32
.LBB16_16:
	movq	%r14, %rdi
	callq	zfree
.LBB16_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_18:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveLen
	movq	$-1, %r15
	cmpl	$-1, %eax
	je	.LBB16_32
# %bb.19:
	movslq	%eax, %r14
	testq	%rbx, %rbx
	je	.LBB16_31
# %bb.20:
	testq	%r13, %r13
	je	.LBB16_27
# %bb.21:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %r15
	.p2align	4, 0x90
.LBB16_22:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB16_24
# %bb.23:                               #   in Loop: Header=BB16_22 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB16_24:                              #   in Loop: Header=BB16_22 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB16_29
# %bb.25:                               #   in Loop: Header=BB16_22 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	jne	.LBB16_22
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB16_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB16_32
# %bb.28:
	addq	%rbx, %r14
.LBB16_31:
	movq	%r14, %r15
	jmp	.LBB16_32
.LBB16_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_30:
	movq	$-1, %r15
.LBB16_32:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	rdbSaveRawString, .Lfunc_end16-rdbSaveRawString
                                        # -- End function
	.globl	rdbSaveLongLongAsStringObject # -- Begin function rdbSaveLongLongAsStringObject
	.p2align	4, 0x90
	.type	rdbSaveLongLongAsStringObject,@function
rdbSaveLongLongAsStringObject:          # @rdbSaveLongLongAsStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %rdx
	movq	%rdi, %r13
	movsbq	%dl, %rax
	cmpq	%rsi, %rax
	jne	.LBB17_2
# %bb.1:
	movb	$-64, -80(%rbp)
	movb	%dl, -79(%rbp)
	movl	$2, %r15d
	jmp	.LBB17_6
.LBB17_2:
	movswq	%dx, %rax
	cmpq	%rdx, %rax
	jne	.LBB17_4
# %bb.3:
	movb	$-63, -80(%rbp)
	movb	%dl, -79(%rbp)
	movb	%dh, -78(%rbp)
	movl	$3, %r15d
	jmp	.LBB17_6
.LBB17_4:
	movslq	%edx, %rax
	cmpq	%rdx, %rax
	jne	.LBB17_15
# %bb.5:
	movb	$-62, -80(%rbp)
	movb	%dl, -79(%rbp)
	movb	%dh, -78(%rbp)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, -77(%rbp)
	shrq	$24, %rdx
	movb	%dl, -76(%rbp)
	movl	$5, %r15d
.LBB17_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB17_14
# %bb.7:
	leaq	-80(%rbp), %r14
	movl	%r15d, %r12d
	.p2align	4, 0x90
.LBB17_8:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB17_10
# %bb.9:                                #   in Loop: Header=BB17_8 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB17_10:                              #   in Loop: Header=BB17_8 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB17_11
# %bb.12:                               #   in Loop: Header=BB17_8 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r12
	jne	.LBB17_8
	jmp	.LBB17_13
.LBB17_11:
	movl	$-1, %r15d
.LBB17_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_14:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %r12
.LBB17_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_15:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %r15
	movl	$32, %esi
	movq	%r15, %rdi
	callq	ll2string
	cmpl	$32, %eax
	jge	.LBB17_27
# %bb.16:
	movl	%eax, %ebx
	movslq	%eax, %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	rdbSaveLen
	movq	$-1, %r12
	cmpl	$-1, %eax
	je	.LBB17_26
# %bb.17:
	testq	%r13, %r13
	je	.LBB17_25
# %bb.18:
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	testl	%ebx, %ebx
	je	.LBB17_24
# %bb.19:
	movq	-88(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB17_20:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB17_22
# %bb.21:                               #   in Loop: Header=BB17_20 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB17_22:                              #   in Loop: Header=BB17_20 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB17_28
# %bb.23:                               #   in Loop: Header=BB17_20 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB17_20
.LBB17_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx         # 4-byte Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
	movl	-44(%rbp), %eax         # 4-byte Reload
.LBB17_25:
	cltq
	movl	$42, __A_VARIABLE(%rip)
	addq	%r14, %rax
	cmpl	$-1, %ebx
	movq	$-1, %r12
	cmovneq	%rax, %r12
	jmp	.LBB17_26
.LBB17_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_26
.LBB17_27:
	movl	$.L.str.7, %edi
	movl	$.L.str.8, %esi
	movl	$447, %edx              # imm = 0x1BF
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end17:
	.size	rdbSaveLongLongAsStringObject, .Lfunc_end17-rdbSaveLongLongAsStringObject
                                        # -- End function
	.globl	rdbSaveStringObject     # -- Begin function rdbSaveStringObject
	.p2align	4, 0x90
	.type	rdbSaveStringObject,@function
rdbSaveStringObject:                    # @rdbSaveStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	(%rsi), %al
	shrb	$4, %al
	je	.LBB18_5
# %bb.1:
	cmpb	$8, %al
	je	.LBB18_5
# %bb.2:
	cmpb	$1, %al
	jne	.LBB18_4
# %bb.3:
	movq	8(%rsi), %rsi
	callq	rdbSaveLongLongAsStringObject
	jmp	.LBB18_14
.LBB18_5:
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB18_6
# %bb.7:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_8:
	shrq	$3, %rdx
	jmp	.LBB18_13
.LBB18_12:
	movq	-17(%rsi), %rdx
	jmp	.LBB18_13
.LBB18_10:
	movzwl	-5(%rsi), %edx
	jmp	.LBB18_13
.LBB18_9:
	movzbl	-3(%rsi), %edx
	jmp	.LBB18_13
.LBB18_11:
	movl	-9(%rsi), %edx
	jmp	.LBB18_13
.LBB18_6:
	xorl	%edx, %edx
.LBB18_13:
	movl	$42, __A_VARIABLE(%rip)
	callq	rdbSaveRawString
.LBB18_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB18_4:
	movl	$.L.str.9, %edx
	movl	$.L.str.8, %ecx
	xorl	%edi, %edi
	movl	$463, %r8d              # imm = 0x1CF
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end18:
	.size	rdbSaveStringObject, .Lfunc_end18-rdbSaveStringObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_8
	.quad	.LBB18_9
	.quad	.LBB18_10
	.quad	.LBB18_11
	.quad	.LBB18_12
                                        # -- End function
	.text
	.globl	rdbGenericLoadStringObject # -- Begin function rdbGenericLoadStringObject
	.p2align	4, 0x90
	.type	rdbGenericLoadStringObject,@function
rdbGenericLoadStringObject:             # @rdbGenericLoadStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r13
	movl	%esi, %r12d
	movq	%rdi, %r14
	leaq	-52(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %r15
	cmpl	$-1, %eax
	je	.LBB19_2
# %bb.1:
	movq	-64(%rbp), %r15
.LBB19_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)
	je	.LBB19_5
# %bb.3:
	cmpq	$3, %r15
	jae	.LBB19_9
# %bb.4:
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movq	%r13, %rcx
	callq	rdbLoadIntegerObject
	jmp	.LBB19_36
.LBB19_5:
	cmpq	$-1, %r15
	je	.LBB19_35
# %bb.6:
	testb	$6, %r12b
	je	.LBB19_12
# %bb.7:
	testb	$2, %r12b
	je	.LBB19_14
# %bb.8:
	movq	%r15, %rdi
	callq	zmalloc
	testq	%r13, %r13
	jne	.LBB19_15
	jmp	.LBB19_16
.LBB19_9:
	jne	.LBB19_37
# %bb.10:
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	%r13, %rdx
	callq	rdbLoadLzfStringObject
	jmp	.LBB19_36
.LBB19_12:
	movq	SDS_NOINIT(%rip), %rdi
	movq	%r15, %rsi
	testb	$1, %r12b
	jne	.LBB19_25
# %bb.13:
	callq	createRawStringObject
	jmp	.LBB19_26
.LBB19_14:
	movq	SDS_NOINIT(%rip), %rdi
	movq	%r15, %rsi
	callq	sdsnewlen
	testq	%r13, %r13
	je	.LBB19_16
.LBB19_15:
	movq	%r15, (%r13)
.LBB19_16:
	testq	%r15, %r15
	je	.LBB19_36
# %bb.17:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %r13
	jmp	.LBB19_19
	.p2align	4, 0x90
.LBB19_18:                              #   in Loop: Header=BB19_19 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r14)
	subq	%rbx, %r15
	je	.LBB19_24
.LBB19_19:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	testq	%rax, %rax
	je	.LBB19_22
# %bb.20:                               #   in Loop: Header=BB19_19 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB19_18
# %bb.21:                               #   in Loop: Header=BB19_19 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB19_18
.LBB19_22:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r12b
	je	.LBB19_34
# %bb.23:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	jmp	.LBB19_35
.LBB19_24:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	jmp	.LBB19_36
.LBB19_25:
	callq	createStringObject
.LBB19_26:
	testq	%r15, %r15
	je	.LBB19_36
# %bb.27:
	movq	%rax, %r13
	movq	8(%rax), %r12
	jmp	.LBB19_29
	.p2align	4, 0x90
.LBB19_28:                              #   in Loop: Header=BB19_29 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r14)
	subq	%rbx, %r15
	je	.LBB19_33
.LBB19_29:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	testq	%rax, %rax
	je	.LBB19_32
# %bb.30:                               #   in Loop: Header=BB19_29 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB19_28
# %bb.31:                               #   in Loop: Header=BB19_29 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB19_28
.LBB19_32:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	decrRefCount
	jmp	.LBB19_35
.LBB19_33:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	jmp	.LBB19_36
.LBB19_34:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
.LBB19_35:
	xorl	%eax, %eax
.LBB19_36:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_37:
	movl	$.L.str.10, %esi
	movl	$498, %edi              # imm = 0x1F2
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.Lfunc_end19:
	.size	rdbGenericLoadStringObject, .Lfunc_end19-rdbGenericLoadStringObject
                                        # -- End function
	.globl	rdbLoadStringObject     # -- Begin function rdbLoadStringObject
	.p2align	4, 0x90
	.type	rdbLoadStringObject,@function
rdbLoadStringObject:                    # @rdbLoadStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	rdbLoadStringObject, .Lfunc_end20-rdbLoadStringObject
                                        # -- End function
	.globl	rdbLoadEncodedStringObject # -- Begin function rdbLoadEncodedStringObject
	.p2align	4, 0x90
	.type	rdbLoadEncodedStringObject,@function
rdbLoadEncodedStringObject:             # @rdbLoadEncodedStringObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	rdbLoadEncodedStringObject, .Lfunc_end21-rdbLoadEncodedStringObject
                                        # -- End function
	.globl	rdbSaveDoubleValue      # -- Begin function rdbSaveDoubleValue
	.p2align	4, 0x90
	.type	rdbSaveDoubleValue,@function
rdbSaveDoubleValue:                     # @rdbSaveDoubleValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, %r15
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB22_3
# %bb.1:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	cmpl	$1, %eax
	jbe	.LBB22_4
# %bb.2:
	leaq	-175(%rbp), %rbx
	movl	$127, %esi
	movl	$.L.str.11, %edx
	movq	%rbx, %rdi
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	snprintf
	movq	%rbx, %rdi
	callq	strlen
	movb	%al, -176(%rbp)
	movzbl	%al, %r14d
	addq	$1, %r14
	testq	%r15, %r15
	jne	.LBB22_6
	jmp	.LBB22_13
.LBB22_3:
	movb	$-3, -176(%rbp)
	jmp	.LBB22_5
.LBB22_4:
	xorpd	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	seta	%al
	orb	$-2, %al
	movb	%al, -176(%rbp)
.LBB22_5:
	movl	$1, %r14d
	testq	%r15, %r15
	je	.LBB22_13
.LBB22_6:
	leaq	-176(%rbp), %r12
	movq	%r14, %r13
	.p2align	4, 0x90
.LBB22_7:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r15), %rax
	movq	56(%r15), %rcx
	cmpq	%r13, %rcx
	movq	%r13, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r13, %rbx
	testq	%rax, %rax
	je	.LBB22_9
# %bb.8:                                #   in Loop: Header=BB22_7 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB22_9:                               #   in Loop: Header=BB22_7 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r15)
	testq	%rax, %rax
	je	.LBB22_12
# %bb.10:                               #   in Loop: Header=BB22_7 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	subq	%rbx, %r13
	jne	.LBB22_7
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_13
.LBB22_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
.LBB22_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	rdbSaveDoubleValue, .Lfunc_end22-rdbSaveDoubleValue
                                        # -- End function
	.globl	rdbLoadDoubleValue      # -- Begin function rdbLoadDoubleValue
	.p2align	4, 0x90
	.type	rdbLoadDoubleValue,@function
rdbLoadDoubleValue:                     # @rdbLoadDoubleValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	-41(%rbp), %r12
	movl	$1, %r13d
	jmp	.LBB23_1
	.p2align	4, 0x90
.LBB23_5:                               #   in Loop: Header=BB23_1 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	subq	%rbx, %r13
	je	.LBB23_6
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rax
	cmpq	%r13, %rax
	movq	%r13, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r13, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB23_2
# %bb.3:                                #   in Loop: Header=BB23_1 Depth=1
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB23_5
# %bb.4:                                #   in Loop: Header=BB23_1 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB23_5
.LBB23_6:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-41(%rbp), %r13d
	leal	3(%r13), %ecx
	cmpb	$3, %cl
	ja	.LBB23_12
# %bb.7:
	xorl	%eax, %eax
	movzbl	%cl, %ecx
	jmpq	*.LJTI23_0(,%rcx,8)
.LBB23_11:
	movq	R_Nan(%rip), %rax
	jmp	.LBB23_9
.LBB23_12:
	leaq	-304(%rbp), %r12
	jmp	.LBB23_13
	.p2align	4, 0x90
.LBB23_16:                              #   in Loop: Header=BB23_13 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	subq	%rbx, %r13
	je	.LBB23_17
.LBB23_13:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rax
	cmpq	%r13, %rax
	movq	%r13, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r13, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB23_2
# %bb.14:                               #   in Loop: Header=BB23_13 Depth=1
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB23_16
# %bb.15:                               #   in Loop: Header=BB23_13 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB23_16
.LBB23_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB23_19
.LBB23_10:
	movq	R_PosInf(%rip), %rax
	jmp	.LBB23_9
.LBB23_8:
	movq	R_NegInf(%rip), %rax
.LBB23_9:
	movq	%rax, (%r14)
	xorl	%ebx, %ebx
	jmp	.LBB23_19
.LBB23_17:
	movzbl	-41(%rbp), %eax
.LBB23_18:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -304(%rbp,%rax)
	xorl	%ebx, %ebx
	leaq	-304(%rbp), %rdi
	movl	$.L.str.12, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	sscanf
.LBB23_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	rdbLoadDoubleValue, .Lfunc_end23-rdbLoadDoubleValue
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_11
	.quad	.LBB23_10
	.quad	.LBB23_8
	.quad	.LBB23_18
                                        # -- End function
	.text
	.globl	rdbSaveBinaryDoubleValue # -- Begin function rdbSaveBinaryDoubleValue
	.p2align	4, 0x90
	.type	rdbSaveBinaryDoubleValue,@function
rdbSaveBinaryDoubleValue:               # @rdbSaveBinaryDoubleValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movsd	%xmm0, -40(%rbp)
	testq	%rdi, %rdi
	je	.LBB24_1
# %bb.2:
	movq	%rdi, %r14
	movl	$8, %r12d
	leaq	-40(%rbp), %r15
	.p2align	4, 0x90
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB24_5
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB24_5:                               #   in Loop: Header=BB24_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB24_6
# %bb.7:                                #   in Loop: Header=BB24_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB24_3
# %bb.8:
	movl	$8, %eax
	jmp	.LBB24_9
.LBB24_1:
	movl	$8, %eax
	jmp	.LBB24_10
.LBB24_6:
	movl	$-1, %eax
.LBB24_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	rdbSaveBinaryDoubleValue, .Lfunc_end24-rdbSaveBinaryDoubleValue
                                        # -- End function
	.globl	rdbLoadBinaryDoubleValue # -- Begin function rdbLoadBinaryDoubleValue
	.p2align	4, 0x90
	.type	rdbLoadBinaryDoubleValue,@function
rdbLoadBinaryDoubleValue:               # @rdbLoadBinaryDoubleValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$8, %r12d
	jmp	.LBB25_1
	.p2align	4, 0x90
.LBB25_5:                               #   in Loop: Header=BB25_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	je	.LBB25_6
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	testq	%rax, %rax
	je	.LBB25_2
# %bb.3:                                #   in Loop: Header=BB25_1 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB25_5
# %bb.4:                                #   in Loop: Header=BB25_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB25_5
.LBB25_6:
	xorl	%eax, %eax
	jmp	.LBB25_7
.LBB25_2:
	movl	$-1, %eax
.LBB25_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	rdbLoadBinaryDoubleValue, .Lfunc_end25-rdbLoadBinaryDoubleValue
                                        # -- End function
	.globl	rdbSaveBinaryFloatValue # -- Begin function rdbSaveBinaryFloatValue
	.p2align	4, 0x90
	.type	rdbSaveBinaryFloatValue,@function
rdbSaveBinaryFloatValue:                # @rdbSaveBinaryFloatValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movss	%xmm0, -36(%rbp)
	testq	%rdi, %rdi
	je	.LBB26_1
# %bb.2:
	movq	%rdi, %r14
	movl	$4, %r12d
	leaq	-36(%rbp), %r15
	.p2align	4, 0x90
.LBB26_3:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB26_5
# %bb.4:                                #   in Loop: Header=BB26_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB26_5:                               #   in Loop: Header=BB26_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB26_6
# %bb.7:                                #   in Loop: Header=BB26_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB26_3
# %bb.8:
	movl	$4, %eax
	jmp	.LBB26_9
.LBB26_1:
	movl	$4, %eax
	jmp	.LBB26_10
.LBB26_6:
	movl	$-1, %eax
.LBB26_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB26_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	rdbSaveBinaryFloatValue, .Lfunc_end26-rdbSaveBinaryFloatValue
                                        # -- End function
	.globl	rdbLoadBinaryFloatValue # -- Begin function rdbLoadBinaryFloatValue
	.p2align	4, 0x90
	.type	rdbLoadBinaryFloatValue,@function
rdbLoadBinaryFloatValue:                # @rdbLoadBinaryFloatValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$4, %r12d
	jmp	.LBB27_1
	.p2align	4, 0x90
.LBB27_5:                               #   in Loop: Header=BB27_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	je	.LBB27_6
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	testq	%rax, %rax
	je	.LBB27_2
# %bb.3:                                #   in Loop: Header=BB27_1 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB27_5
# %bb.4:                                #   in Loop: Header=BB27_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB27_5
.LBB27_6:
	xorl	%eax, %eax
	jmp	.LBB27_7
.LBB27_2:
	movl	$-1, %eax
.LBB27_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	rdbLoadBinaryFloatValue, .Lfunc_end27-rdbLoadBinaryFloatValue
                                        # -- End function
	.globl	rdbSaveObjectType       # -- Begin function rdbSaveObjectType
	.p2align	4, 0x90
	.type	rdbSaveObjectType,@function
rdbSaveObjectType:                      # @rdbSaveObjectType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	(%rsi), %eax
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$6, %cl
	ja	.LBB28_92
# %bb.1:
	movq	%rdi, %r14
	movl	%eax, %ecx
	andl	$15, %ecx
	jmpq	*.LJTI28_0(,%rcx,8)
.LBB28_2:
	movb	$0, -33(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.3:
	leaq	-33(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_4:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_6
# %bb.5:                                #   in Loop: Header=BB28_4 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_6:                               #   in Loop: Header=BB28_4 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.7:                                #   in Loop: Header=BB28_4 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_4
	jmp	.LBB28_69
.LBB28_8:
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB28_51
# %bb.9:
	cmpb	$5, %al
	jne	.LBB28_94
# %bb.10:
	movb	$13, -39(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.11:
	leaq	-39(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_12:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_14
# %bb.13:                               #   in Loop: Header=BB28_12 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_14:                              #   in Loop: Header=BB28_12 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.15:                               #   in Loop: Header=BB28_12 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_12
	jmp	.LBB28_69
.LBB28_16:
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB28_57
# %bb.17:
	cmpb	$6, %al
	jne	.LBB28_95
# %bb.18:
	movb	$11, -35(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.19:
	leaq	-35(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_20:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_22
# %bb.21:                               #   in Loop: Header=BB28_20 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_22:                              #   in Loop: Header=BB28_20 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.23:                               #   in Loop: Header=BB28_20 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_20
	jmp	.LBB28_69
.LBB28_24:
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB28_63
# %bb.25:
	cmpb	$5, %al
	jne	.LBB28_96
# %bb.26:
	movb	$12, -37(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.27:
	leaq	-37(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_28:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_30
# %bb.29:                               #   in Loop: Header=BB28_28 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_30:                              #   in Loop: Header=BB28_28 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.31:                               #   in Loop: Header=BB28_28 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_28
	jmp	.LBB28_69
.LBB28_32:
	andl	$240, %eax
	cmpl	$144, %eax
	jne	.LBB28_97
# %bb.33:
	movb	$14, -34(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.34:
	leaq	-34(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_35:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_37
# %bb.36:                               #   in Loop: Header=BB28_35 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_37:                              #   in Loop: Header=BB28_35 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.38:                               #   in Loop: Header=BB28_35 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_35
	jmp	.LBB28_69
.LBB28_39:
	movb	$7, -42(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.40:
	leaq	-42(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_41:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_43
# %bb.42:                               #   in Loop: Header=BB28_41 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_43:                              #   in Loop: Header=BB28_41 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.44:                               #   in Loop: Header=BB28_41 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_41
	jmp	.LBB28_69
.LBB28_45:
	movb	$15, -41(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.46:
	leaq	-41(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_47:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_49
# %bb.48:                               #   in Loop: Header=BB28_47 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_49:                              #   in Loop: Header=BB28_47 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.50:                               #   in Loop: Header=BB28_47 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_47
	jmp	.LBB28_69
.LBB28_51:
	movb	$4, -40(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.52:
	leaq	-40(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_53:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_55
# %bb.54:                               #   in Loop: Header=BB28_53 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_55:                              #   in Loop: Header=BB28_53 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.56:                               #   in Loop: Header=BB28_53 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_53
	jmp	.LBB28_69
.LBB28_57:
	movb	$2, -36(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.58:
	leaq	-36(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_59:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_61
# %bb.60:                               #   in Loop: Header=BB28_59 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_61:                              #   in Loop: Header=BB28_59 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.62:                               #   in Loop: Header=BB28_59 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_59
	jmp	.LBB28_69
.LBB28_63:
	movb	$5, -38(%rbp)
	testq	%r14, %r14
	je	.LBB28_72
# %bb.64:
	leaq	-38(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB28_65:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB28_67
# %bb.66:                               #   in Loop: Header=BB28_65 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB28_67:                              #   in Loop: Header=BB28_65 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB28_76
# %bb.68:                               #   in Loop: Header=BB28_65 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB28_65
.LBB28_69:
	movl	$1, %eax
	jmp	.LBB28_70
.LBB28_72:
	movl	$1, %eax
	jmp	.LBB28_71
.LBB28_76:
	movl	$-1, %eax
.LBB28_70:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_71:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_92:
	movl	$.L.str.8, %edi
	movl	$.L.str.17, %edx
	movl	$660, %esi              # imm = 0x294
.LBB28_93:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB28_94:
	movl	$.L.str.8, %edi
	movl	$.L.str.16, %edx
	movl	$654, %esi              # imm = 0x28E
	jmp	.LBB28_93
.LBB28_95:
	movl	$.L.str.8, %edi
	movl	$.L.str.14, %edx
	movl	$640, %esi              # imm = 0x280
	jmp	.LBB28_93
.LBB28_96:
	movl	$.L.str.8, %edi
	movl	$.L.str.15, %edx
	movl	$647, %esi              # imm = 0x287
	jmp	.LBB28_93
.LBB28_97:
	movl	$.L.str.8, %edi
	movl	$.L.str.13, %edx
	movl	$633, %esi              # imm = 0x279
	jmp	.LBB28_93
.Lfunc_end28:
	.size	rdbSaveObjectType, .Lfunc_end28-rdbSaveObjectType
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI28_0:
	.quad	.LBB28_2
	.quad	.LBB28_32
	.quad	.LBB28_16
	.quad	.LBB28_24
	.quad	.LBB28_8
	.quad	.LBB28_39
	.quad	.LBB28_45
                                        # -- End function
	.text
	.globl	rdbLoadObjectType       # -- Begin function rdbLoadObjectType
	.p2align	4, 0x90
	.type	rdbLoadObjectType,@function
rdbLoadObjectType:                      # @rdbLoadObjectType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	leaq	-33(%rbp), %r15
	movl	$1, %r12d
	jmp	.LBB29_1
	.p2align	4, 0x90
.LBB29_4:                               #   in Loop: Header=BB29_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	je	.LBB29_5
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	testq	%rax, %rax
	je	.LBB29_8
# %bb.2:                                #   in Loop: Header=BB29_1 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB29_4
# %bb.3:                                #   in Loop: Header=BB29_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB29_4
.LBB29_5:
	movl	$42, __A_VARIABLE(%rip)
	movsbq	-33(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpq	$15, %rcx
	ja	.LBB29_7
# %bb.6:
	movl	.Lswitch.table.rdbLoadObjectType(,%rcx,4), %eax
	jmp	.LBB29_7
.LBB29_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB29_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	rdbLoadObjectType, .Lfunc_end29-rdbLoadObjectType
                                        # -- End function
	.globl	rdbSaveStreamPEL        # -- Begin function rdbSaveStreamPEL
	.p2align	4, 0x90
	.type	rdbSaveStreamPEL,@function
rdbSaveStreamPEL:                       # @rdbSaveStreamPEL
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	%rsi, %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB30_26
# %bb.1:
	movslq	%eax, %r15
	leaq	-544(%rbp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	raxStart
	movl	$.L.str.18, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%r12, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB30_22
# %bb.2:
	movl	%r14d, -44(%rbp)        # 4-byte Spill
.LBB30_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_5 Depth 2
                                        #     Child Loop BB30_13 Depth 2
	testq	%r13, %r13
	je	.LBB30_10
# %bb.4:                                #   in Loop: Header=BB30_3 Depth=1
	movl	$16, %ebx
	movq	-528(%rbp), %r14
	.p2align	4, 0x90
.LBB30_5:                               #   Parent Loop BB30_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%rbx, %rcx
	movq	%rbx, %r12
	cmovbq	%rcx, %r12
	testq	%rcx, %rcx
	cmoveq	%rbx, %r12
	testq	%rax, %rax
	je	.LBB30_7
# %bb.6:                                #   in Loop: Header=BB30_5 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	*%rax
.LBB30_7:                               #   in Loop: Header=BB30_5 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB30_25
# %bb.8:                                #   in Loop: Header=BB30_5 Depth=2
	addq	%r12, %r14
	addq	%r12, 48(%r13)
	subq	%r12, %rbx
	jne	.LBB30_5
# %bb.9:                                #   in Loop: Header=BB30_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r14d        # 4-byte Reload
.LBB30_10:                              #   in Loop: Header=BB30_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB30_20
# %bb.11:                               #   in Loop: Header=BB30_3 Depth=1
	movq	-520(%rbp), %rcx
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	testq	%r13, %r13
	je	.LBB30_18
# %bb.12:                               # %.preheader
                                        #   in Loop: Header=BB30_3 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$8, %r14d
	leaq	-64(%rbp), %r12
	.p2align	4, 0x90
.LBB30_13:                              #   Parent Loop BB30_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB30_15
# %bb.14:                               #   in Loop: Header=BB30_13 Depth=2
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB30_15:                              #   in Loop: Header=BB30_13 Depth=2
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB30_24
# %bb.16:                               #   in Loop: Header=BB30_13 Depth=2
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB30_13
# %bb.17:                               #   in Loop: Header=BB30_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r14d        # 4-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB30_18:                              #   in Loop: Header=BB30_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx), %rsi
	movq	%r13, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB30_26
# %bb.19:                               #   in Loop: Header=BB30_3 Depth=1
	cltq
	addq	%rax, %r15
	addq	$24, %r15
	jmp	.LBB30_21
	.p2align	4, 0x90
.LBB30_20:                              #   in Loop: Header=BB30_3 Depth=1
	addq	$16, %r15
.LBB30_21:                              #   in Loop: Header=BB30_3 Depth=1
	leaq	-544(%rbp), %rdi
	callq	raxNext
	testl	%eax, %eax
	jne	.LBB30_3
.LBB30_22:
	leaq	-544(%rbp), %rdi
	callq	raxStop
	jmp	.LBB30_27
.LBB30_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_26:
	movq	$-1, %r15
.LBB30_27:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	rdbSaveStreamPEL, .Lfunc_end30-rdbSaveStreamPEL
                                        # -- End function
	.globl	rdbSaveStreamConsumers  # -- Begin function rdbSaveStreamConsumers
	.p2align	4, 0x90
	.type	rdbSaveStreamConsumers,@function
rdbSaveStreamConsumers:                 # @rdbSaveStreamConsumers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	24(%rsi), %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB31_13
# %bb.1:
	movslq	%eax, %r15
	movq	24(%rbx), %rsi
	leaq	-544(%rbp), %r12
	movq	%r12, %rdi
	callq	raxStart
	movl	$.L.str.18, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	jmp	.LBB31_3
	.p2align	4, 0x90
.LBB31_2:                               #   in Loop: Header=BB31_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	rdbSaveStreamPEL
	addq	-56(%rbp), %r15         # 8-byte Folded Reload
	movl	$0, %ecx
	cmpq	$-1, %rax
	cmovneq	%rax, %rcx
	leaq	8(%rcx,%r15), %r15
	je	.LBB31_14
.LBB31_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_7 Depth 2
	movq	%r12, %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB31_15
# %bb.4:                                #   in Loop: Header=BB31_3 Depth=1
	movq	-528(%rbp), %rsi
	movq	-520(%rbp), %r14
	movq	-512(%rbp), %rdx
	movq	%r13, %rdi
	callq	rdbSaveRawString
	movq	$-1, %rbx
	cmpq	$-1, %rax
	je	.LBB31_14
# %bb.5:                                #   in Loop: Header=BB31_3 Depth=1
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	(%r14), %rax
	movq	%rax, -64(%rbp)
	testq	%r13, %r13
	je	.LBB31_2
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	$8, %r12d
	leaq	-64(%rbp), %rbx
	.p2align	4, 0x90
.LBB31_7:                               #   Parent Loop BB31_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %r14
	cmovbq	%rcx, %r14
	testq	%rcx, %rcx
	cmoveq	%r12, %r14
	testq	%rax, %rax
	je	.LBB31_9
# %bb.8:                                #   in Loop: Header=BB31_7 Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*%rax
.LBB31_9:                               #   in Loop: Header=BB31_7 Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB31_12
# %bb.10:                               #   in Loop: Header=BB31_7 Depth=2
	addq	%r14, %rbx
	addq	%r14, 48(%r13)
	subq	%r14, %r12
	jne	.LBB31_7
# %bb.11:                               #   in Loop: Header=BB31_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-544(%rbp), %r12
	movq	$-1, %rbx
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB31_2
.LBB31_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_13:
	movq	$-1, %rbx
.LBB31_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB31_15:
	leaq	-544(%rbp), %rdi
	callq	raxStop
	movq	%r15, %rbx
	jmp	.LBB31_14
.Lfunc_end31:
	.size	rdbSaveStreamConsumers, .Lfunc_end31-rdbSaveStreamConsumers
                                        # -- End function
	.globl	rdbSaveObject           # -- Begin function rdbSaveObject
	.p2align	4, 0x90
	.type	rdbSaveObject,@function
rdbSaveObject:                          # @rdbSaveObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
	movl	(%rsi), %eax
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$6, %cl
	ja	.LBB32_116
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	%eax, %ecx
	andl	$15, %ecx
	jmpq	*.LJTI32_0(,%rcx,8)
.LBB32_2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveStringObject
	jmp	.LBB32_3
.LBB32_4:
	shrb	$4, %al
	cmpb	$2, %al
	je	.LBB32_48
# %bb.5:
	cmpb	$5, %al
	je	.LBB32_6
# %bb.118:
	movl	$.L.str.8, %edi
	movl	$.L.str.16, %edx
	movl	$892, %esi              # imm = 0x37C
	jmp	.LBB32_117
.LBB32_8:
	shrb	$4, %al
	cmpb	$6, %al
	je	.LBB32_71
# %bb.9:
	cmpb	$2, %al
	jne	.LBB32_119
# %bb.10:
	movq	8(%rbx), %rbx
	movq	%rbx, %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	72(%rbx), %rsi
	addq	40(%rbx), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_70
# %bb.11:
	movslq	%eax, %r13
	.p2align	4, 0x90
.LBB32_12:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB32_75
# %bb.13:                               #   in Loop: Header=BB32_12 Depth=1
	movq	(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_20
# %bb.14:                               #   in Loop: Header=BB32_12 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_4(,%rax,8)
.LBB32_15:                              #   in Loop: Header=BB32_12 Depth=1
	shrq	$3, %rdx
	jmp	.LBB32_21
.LBB32_16:                              #   in Loop: Header=BB32_12 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB32_21
.LBB32_17:                              #   in Loop: Header=BB32_12 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB32_21
.LBB32_18:                              #   in Loop: Header=BB32_12 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB32_21
.LBB32_19:                              #   in Loop: Header=BB32_12 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB32_21
.LBB32_20:                              #   in Loop: Header=BB32_12 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB32_21:                              #   in Loop: Header=BB32_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	rdbSaveRawString
	cmpq	$-1, %rax
	je	.LBB32_70
# %bb.22:                               #   in Loop: Header=BB32_12 Depth=1
	addq	%rax, %r13
	jmp	.LBB32_12
.LBB32_23:
	shrb	$4, %al
	cmpb	$7, %al
	je	.LBB32_72
# %bb.24:
	cmpb	$5, %al
	jne	.LBB32_120
.LBB32_6:
	movq	8(%rbx), %rdi
	callq	ziplistBlobLen
	jmp	.LBB32_7
.LBB32_26:
	andl	$240, %eax
	cmpl	$144, %eax
	jne	.LBB32_121
# %bb.27:
	movq	8(%rbx), %rax
	movq	(%rax), %rbx
	movq	24(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movq	$-1, %r13
	cmpl	$-1, %eax
	je	.LBB32_114
# %bb.28:
	movslq	%eax, %r13
	testq	%rbx, %rbx
	je	.LBB32_114
# %bb.29:
	movl	$196608, %r15d          # imm = 0x30000
	leaq	-544(%rbp), %r12
	jmp	.LBB32_32
	.p2align	4, 0x90
.LBB32_30:                              #   in Loop: Header=BB32_32 Depth=1
	movq	16(%rbx), %rsi
	movl	24(%rbx), %edx
	movq	%r14, %rdi
	callq	rdbSaveRawString
	cmpq	$-1, %rax
	je	.LBB32_113
.LBB32_31:                              #   in Loop: Header=BB32_32 Depth=1
	addq	%rax, %r13
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB32_114
.LBB32_32:                              # =>This Inner Loop Header: Depth=1
	movl	28(%rbx), %eax
	andl	%r15d, %eax
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB32_30
# %bb.33:                               #   in Loop: Header=BB32_32 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	quicklistGetLzf
	movq	-544(%rbp), %rsi
	movl	24(%rbx), %ecx
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	rdbSaveLzfBlob
	cmpq	$-1, %rax
	jne	.LBB32_31
	jmp	.LBB32_113
.LBB32_34:
	movq	%rdx, %r15
	movq	8(%rbx), %r12
	movq	(%r12), %rbx
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_113
# %bb.35:
	movq	%r14, -536(%rbp)
	movq	%rbx, -528(%rbp)
	movq	$0, -544(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -520(%rbp)
	movq	%r15, -504(%rbp)
	movq	8(%r12), %rsi
	leaq	-544(%rbp), %rdi
	callq	*24(%rbx)
	movb	$0, -50(%rbp)
	testq	%r14, %r14
	je	.LBB32_42
# %bb.36:
	movl	$1, %r12d
	leaq	-50(%rbp), %r15
	.p2align	4, 0x90
.LBB32_37:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB32_39
# %bb.38:                               #   in Loop: Header=BB32_37 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB32_39:                              #   in Loop: Header=BB32_37 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB32_98
# %bb.40:                               #   in Loop: Header=BB32_37 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	subq	%rbx, %r12
	jne	.LBB32_37
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, -544(%rbp)
	jmp	.LBB32_99
.LBB32_43:
	movq	8(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	raxSize
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	rdbSaveLen
	movq	$-1, %r13
	cmpl	$-1, %eax
	je	.LBB32_114
# %bb.44:
	movslq	%eax, %r12
	leaq	-544(%rbp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	raxStart
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	.p2align	4, 0x90
.LBB32_45:                              # =>This Inner Loop Header: Depth=1
	leaq	-544(%rbp), %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB32_93
# %bb.46:                               #   in Loop: Header=BB32_45 Depth=1
	movq	-520(%rbp), %r13
	movq	%r13, %rdi
	callq	lpBytes
	movl	%eax, %r15d
	movq	-528(%rbp), %rsi
	movq	-512(%rbp), %rdx
	movq	%r14, %rdi
	callq	rdbSaveRawString
	cmpq	$-1, %rax
	je	.LBB32_113
# %bb.47:                               #   in Loop: Header=BB32_45 Depth=1
	movq	%rax, %rbx
	movl	%r15d, %edx
	addq	%r12, %rbx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	rdbSaveRawString
	addq	%rax, %rbx
	movq	%rbx, %r12
	cmpq	$-1, %rax
	jne	.LBB32_45
	jmp	.LBB32_113
.LBB32_48:
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	8(%rbx), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_70
# %bb.49:
	movslq	%eax, %r13
	.p2align	4, 0x90
.LBB32_50:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB32_75
# %bb.51:                               #   in Loop: Header=BB32_50 Depth=1
	movq	(%rax), %rsi
	movq	8(%rax), %r12
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_58
# %bb.52:                               #   in Loop: Header=BB32_50 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_1(,%rax,8)
.LBB32_53:                              #   in Loop: Header=BB32_50 Depth=1
	shrq	$3, %rdx
	jmp	.LBB32_59
.LBB32_54:                              #   in Loop: Header=BB32_50 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB32_59
.LBB32_55:                              #   in Loop: Header=BB32_50 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB32_59
.LBB32_56:                              #   in Loop: Header=BB32_50 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB32_59
.LBB32_57:                              #   in Loop: Header=BB32_50 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB32_59
.LBB32_58:                              #   in Loop: Header=BB32_50 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB32_59:                              #   in Loop: Header=BB32_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	rdbSaveRawString
	cmpq	$-1, %rax
	je	.LBB32_70
# %bb.60:                               #   in Loop: Header=BB32_50 Depth=1
	movq	%rax, %rbx
	movzbl	-1(%r12), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_67
# %bb.61:                               #   in Loop: Header=BB32_50 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_2(,%rax,8)
.LBB32_62:                              #   in Loop: Header=BB32_50 Depth=1
	shrq	$3, %rdx
	jmp	.LBB32_68
.LBB32_63:                              #   in Loop: Header=BB32_50 Depth=1
	movq	-17(%r12), %rdx
	jmp	.LBB32_68
.LBB32_64:                              #   in Loop: Header=BB32_50 Depth=1
	movzwl	-5(%r12), %edx
	jmp	.LBB32_68
.LBB32_65:                              #   in Loop: Header=BB32_50 Depth=1
	movl	-9(%r12), %edx
	jmp	.LBB32_68
.LBB32_66:                              #   in Loop: Header=BB32_50 Depth=1
	movzbl	-3(%r12), %edx
	jmp	.LBB32_68
.LBB32_67:                              #   in Loop: Header=BB32_50 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB32_68:                              #   in Loop: Header=BB32_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	rdbSaveRawString
	cmpq	$-1, %rax
	je	.LBB32_70
# %bb.69:                               #   in Loop: Header=BB32_50 Depth=1
	addq	%rbx, %r13
	addq	%rax, %r13
	jmp	.LBB32_50
.LBB32_70:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	jmp	.LBB32_113
.LBB32_71:
	movq	8(%rbx), %rdi
	callq	intsetBlobLen
.LBB32_7:
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	rdbSaveRawString
.LBB32_3:
	movq	%rax, %r13
	cmpq	$-1, %rax
	jne	.LBB32_114
.LBB32_113:
	movq	$-1, %r13
.LBB32_114:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_72:
	movq	8(%rbx), %rax
	movq	8(%rax), %rbx
	movq	16(%rbx), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movq	$-1, %r13
	cmpl	$-1, %eax
	je	.LBB32_114
# %bb.73:
	movslq	%eax, %r13
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB32_114
# %bb.74:
	leaq	-544(%rbp), %r12
	jmp	.LBB32_77
.LBB32_75:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	jmp	.LBB32_114
.LBB32_76:                              #   in Loop: Header=BB32_77 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r13
	addq	$8, %r13
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB32_114
.LBB32_77:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_88 Depth 2
	movq	(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_84
# %bb.78:                               #   in Loop: Header=BB32_77 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_3(,%rax,8)
.LBB32_79:                              #   in Loop: Header=BB32_77 Depth=1
	shrq	$3, %rdx
	jmp	.LBB32_85
.LBB32_80:                              #   in Loop: Header=BB32_77 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB32_85
.LBB32_81:                              #   in Loop: Header=BB32_77 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB32_85
.LBB32_82:                              #   in Loop: Header=BB32_77 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB32_85
.LBB32_83:                              #   in Loop: Header=BB32_77 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB32_85
.LBB32_84:                              #   in Loop: Header=BB32_77 Depth=1
	xorl	%edx, %edx
.LBB32_85:                              #   in Loop: Header=BB32_77 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	rdbSaveRawString
	cmpq	$-1, %rax
	je	.LBB32_113
# %bb.86:                               #   in Loop: Header=BB32_77 Depth=1
	movq	8(%rbx), %rcx
	movq	%rcx, -544(%rbp)
	testq	%r14, %r14
	je	.LBB32_76
# %bb.87:                               # %.preheader3
                                        #   in Loop: Header=BB32_77 Depth=1
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$8, %r15d
	movq	%r12, %rbx
	.p2align	4, 0x90
.LBB32_88:                              #   Parent Loop BB32_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r14), %rax
	movq	56(%r14), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %r12
	cmovbq	%rcx, %r12
	testq	%rcx, %rcx
	cmoveq	%r15, %r12
	testq	%rax, %rax
	je	.LBB32_90
# %bb.89:                               #   in Loop: Header=BB32_88 Depth=2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*%rax
.LBB32_90:                              #   in Loop: Header=BB32_88 Depth=2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*8(%r14)
	testq	%rax, %rax
	je	.LBB32_102
# %bb.91:                               #   in Loop: Header=BB32_88 Depth=2
	addq	%r12, %rbx
	addq	%r12, 48(%r14)
	subq	%r12, %r15
	jne	.LBB32_88
# %bb.92:                               #   in Loop: Header=BB32_77 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	-544(%rbp), %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	jmp	.LBB32_76
.LBB32_93:
	leaq	-544(%rbp), %rdi
	callq	raxStop
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_113
# %bb.94:
	movl	%eax, %ebx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_113
# %bb.95:
	movl	%eax, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_113
# %bb.96:
	movl	%eax, %r13d
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB32_103
# %bb.97:
	callq	raxSize
	jmp	.LBB32_104
.LBB32_98:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -520(%rbp)
.LBB32_99:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB32_101
# %bb.100:
	callq	moduleFreeContext
	movq	-512(%rbp), %rdi
	callq	zfree
.LBB32_101:
	xorl	%r13d, %r13d
	cmpl	$1, -520(%rbp)
	sbbq	%r13, %r13
	notq	%r13
	orq	-544(%rbp), %r13
	jmp	.LBB32_114
.LBB32_102:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_113
.LBB32_103:
	xorl	%eax, %eax
.LBB32_104:
	movq	%r14, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_113
# %bb.105:
	movslq	%ebx, %rcx
	addq	%rcx, %r12
	movslq	%r15d, %rcx
	addq	%r12, %rcx
	movslq	%r13d, %rdx
	addq	%rcx, %rdx
	movslq	%eax, %r13
	addq	%rdx, %r13
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB32_114
# %bb.106:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rsi
	leaq	-544(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
.LBB32_107:                             # =>This Inner Loop Header: Depth=1
	leaq	-544(%rbp), %rdi
	callq	raxNext
	testl	%eax, %eax
	je	.LBB32_115
# %bb.108:                              #   in Loop: Header=BB32_107 Depth=1
	movq	-528(%rbp), %rsi
	movq	-520(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-512(%rbp), %rdx
	movq	%r14, %rdi
	callq	rdbSaveRawString
	cmpq	$-1, %rax
	je	.LBB32_113
# %bb.109:                              #   in Loop: Header=BB32_107 Depth=1
	movq	%rax, %r12
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_113
# %bb.110:                              #   in Loop: Header=BB32_107 Depth=1
	movl	%eax, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB32_113
# %bb.111:                              #   in Loop: Header=BB32_107 Depth=1
	movl	%eax, %ebx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	rdbSaveStreamPEL
	cmpq	$-1, %rax
	je	.LBB32_113
# %bb.112:                              #   in Loop: Header=BB32_107 Depth=1
	addq	%r13, %r12
	movslq	%r15d, %rcx
	addq	%r12, %rcx
	movslq	%ebx, %r13
	addq	%rcx, %r13
	addq	%rax, %r13
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	rdbSaveStreamConsumers
	addq	%rax, %r13
	cmpq	$-1, %rax
	jne	.LBB32_107
	jmp	.LBB32_113
.LBB32_115:
	leaq	-544(%rbp), %rdi
	callq	raxStop
	jmp	.LBB32_114
.LBB32_116:
	movl	$.L.str.8, %edi
	movl	$.L.str.17, %edx
	movl	$991, %esi              # imm = 0x3DF
.LBB32_117:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB32_119:
	movl	$.L.str.8, %edi
	movl	$.L.str.14, %edx
	movl	$815, %esi              # imm = 0x32F
	jmp	.LBB32_117
.LBB32_120:
	movl	$.L.str.8, %edi
	movl	$.L.str.15, %edx
	movl	$851, %esi              # imm = 0x353
	jmp	.LBB32_117
.LBB32_121:
	movl	$.L.str.8, %edi
	movl	$.L.str.13, %edx
	movl	$783, %esi              # imm = 0x30F
	jmp	.LBB32_117
.Lfunc_end32:
	.size	rdbSaveObject, .Lfunc_end32-rdbSaveObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI32_0:
	.quad	.LBB32_2
	.quad	.LBB32_26
	.quad	.LBB32_8
	.quad	.LBB32_23
	.quad	.LBB32_4
	.quad	.LBB32_34
	.quad	.LBB32_43
.LJTI32_1:
	.quad	.LBB32_53
	.quad	.LBB32_57
	.quad	.LBB32_55
	.quad	.LBB32_56
	.quad	.LBB32_54
.LJTI32_2:
	.quad	.LBB32_62
	.quad	.LBB32_66
	.quad	.LBB32_64
	.quad	.LBB32_65
	.quad	.LBB32_63
.LJTI32_3:
	.quad	.LBB32_79
	.quad	.LBB32_82
	.quad	.LBB32_81
	.quad	.LBB32_83
	.quad	.LBB32_80
.LJTI32_4:
	.quad	.LBB32_15
	.quad	.LBB32_19
	.quad	.LBB32_17
	.quad	.LBB32_18
	.quad	.LBB32_16
                                        # -- End function
	.text
	.globl	rdbSavedObjectLen       # -- Begin function rdbSavedObjectLen
	.p2align	4, 0x90
	.type	rdbSavedObjectLen,@function
rdbSavedObjectLen:                      # @rdbSavedObjectLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	rdbSaveObject
	cmpq	$-1, %rax
	je	.LBB33_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB33_2:
	movl	$.L.str.19, %edx
	movl	$.L.str.8, %ecx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movl	$1002, %r8d             # imm = 0x3EA
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end33:
	.size	rdbSavedObjectLen, .Lfunc_end33-rdbSavedObjectLen
                                        # -- End function
	.globl	rdbSaveKeyValuePair     # -- Begin function rdbSaveKeyValuePair
	.p2align	4, 0x90
	.type	rdbSaveKeyValuePair,@function
rdbSaveKeyValuePair:                    # @rdbSaveKeyValuePair
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	server+2712(%rip), %ebx
	cmpq	$-1, %rcx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	je	.LBB34_16
# %bb.1:
	movq	%rcx, %r12
	movb	$-4, -42(%rbp)
	testq	%r13, %r13
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	je	.LBB34_8
# %bb.2:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	leaq	-42(%rbp), %rbx
	movl	$1, %r15d
	.p2align	4, 0x90
.LBB34_3:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %r14
	cmovbq	%rcx, %r14
	testq	%rcx, %rcx
	cmoveq	%r15, %r14
	testq	%rax, %rax
	je	.LBB34_5
# %bb.4:                                #   in Loop: Header=BB34_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*%rax
.LBB34_5:                               #   in Loop: Header=BB34_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB34_42
# %bb.6:                                #   in Loop: Header=BB34_3 Depth=1
	addq	%r14, %rbx
	addq	%r14, 48(%r13)
	subq	%r14, %r15
	jne	.LBB34_3
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	-48(%rbp), %ebx         # 4-byte Reload
.LBB34_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -72(%rbp)
	testq	%r13, %r13
	je	.LBB34_15
# %bb.9:
	movl	$8, %r12d
	leaq	-72(%rbp), %r14
	.p2align	4, 0x90
.LBB34_10:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB34_12
# %bb.11:                               #   in Loop: Header=BB34_10 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB34_12:                              #   in Loop: Header=BB34_10 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB34_42
# %bb.13:                               #   in Loop: Header=BB34_10 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r12
	jne	.LBB34_10
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	-48(%rbp), %ebx         # 4-byte Reload
.LBB34_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_16:
	testb	$1, %bl
	je	.LBB34_25
# %bb.17:
	movq	%r14, %rdi
	callq	estimateObjectIdleTime
	movq	%rax, %r12
	movb	$-8, -43(%rbp)
	testq	%r13, %r13
	je	.LBB34_24
# %bb.18:
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	movq	%r15, -56(%rbp)         # 8-byte Spill
	leaq	-43(%rbp), %r14
	movl	$1, %r15d
	.p2align	4, 0x90
.LBB34_19:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB34_21
# %bb.20:                               #   in Loop: Header=BB34_19 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB34_21:                              #   in Loop: Header=BB34_19 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB34_42
# %bb.22:                               #   in Loop: Header=BB34_19 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	jne	.LBB34_19
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	-48(%rbp), %ebx         # 4-byte Reload
.LBB34_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shrq	$3, %r12
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	movq	%r12, %rax
	mulq	%rcx
	shrq	$4, %rdx
	movq	%r13, %rdi
	movq	%rdx, %rsi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB34_44
.LBB34_25:
	testb	$2, %bl
	je	.LBB34_39
# %bb.26:
	movq	%r14, %rdi
	callq	LFUDecrAndReturn
	movb	%al, -41(%rbp)
	movb	$-7, -44(%rbp)
	testq	%r13, %r13
	je	.LBB34_27
# %bb.28:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	leaq	-44(%rbp), %r14
	movl	$1, %r15d
	.p2align	4, 0x90
.LBB34_29:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB34_31
# %bb.30:                               #   in Loop: Header=BB34_29 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB34_31:                              #   in Loop: Header=BB34_29 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB34_42
# %bb.32:                               #   in Loop: Header=BB34_29 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	jne	.LBB34_29
# %bb.33:
	leaq	-41(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	movq	-56(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB34_34:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB34_36
# %bb.35:                               #   in Loop: Header=BB34_34 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB34_36:                              #   in Loop: Header=BB34_34 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB34_43
# %bb.37:                               #   in Loop: Header=BB34_34 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB34_34
# %bb.38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB34_39
.LBB34_42:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_44:
	movl	$-1, %ebx
.LBB34_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_39:
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	rdbSaveObjectType
	movl	$-1, %ebx
	cmpl	$-1, %eax
	je	.LBB34_45
# %bb.40:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	rdbSaveStringObject
	cmpq	$-1, %rax
	je	.LBB34_45
# %bb.41:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	rdbSaveObject
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	setne	%cl
	leal	(%rcx,%rcx), %ebx
	addl	$-1, %ebx
	jmp	.LBB34_45
.Lfunc_end34:
	.size	rdbSaveKeyValuePair, .Lfunc_end34-rdbSaveKeyValuePair
                                        # -- End function
	.globl	rdbSaveAuxField         # -- Begin function rdbSaveAuxField
	.p2align	4, 0x90
	.type	rdbSaveAuxField,@function
rdbSaveAuxField:                        # @rdbSaveAuxField
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, %r12
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movb	$-6, -41(%rbp)
	testq	%rdi, %rdi
	je	.LBB35_7
# %bb.1:
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	leaq	-41(%rbp), %r14
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB35_2:                               # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rax
	movq	56(%rbx), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %r15
	cmovbq	%rcx, %r15
	testq	%rcx, %rcx
	cmoveq	%r12, %r15
	testq	%rax, %rax
	je	.LBB35_4
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*%rax
.LBB35_4:                               #   in Loop: Header=BB35_2 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*8(%rbx)
	testq	%rax, %rax
	je	.LBB35_11
# %bb.5:                                #   in Loop: Header=BB35_2 Depth=1
	addq	%r15, %r14
	addq	%r15, 48(%rbx)
	subq	%r15, %r12
	jne	.LBB35_2
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
.LBB35_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	rdbSaveRawString
	movq	$-1, %r14
	cmpq	$-1, %rax
	je	.LBB35_10
# %bb.8:
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	rdbSaveRawString
	cmpq	$-1, %rax
	je	.LBB35_10
# %bb.9:
	leaq	(%r15,%rax), %r14
	addq	$1, %r14
	jmp	.LBB35_10
.LBB35_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
.LBB35_10:
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
.Lfunc_end35:
	.size	rdbSaveAuxField, .Lfunc_end35-rdbSaveAuxField
                                        # -- End function
	.globl	rdbSaveAuxFieldStrStr   # -- Begin function rdbSaveAuxFieldStrStr
	.p2align	4, 0x90
	.type	rdbSaveAuxFieldStrStr,@function
rdbSaveAuxFieldStrStr:                  # @rdbSaveAuxFieldStrStr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rsi, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%rax, %r8
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	rdbSaveAuxFieldStrStr, .Lfunc_end36-rdbSaveAuxFieldStrStr
                                        # -- End function
	.globl	rdbSaveAuxFieldStrInt   # -- Begin function rdbSaveAuxFieldStrInt
	.p2align	4, 0x90
	.type	rdbSaveAuxFieldStrInt,@function
rdbSaveAuxFieldStrInt:                  # @rdbSaveAuxFieldStrInt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	-64(%rbp), %r15
	movl	$21, %esi
	movq	%r15, %rdi
	callq	ll2string
	movl	%eax, %r12d
	movq	%rbx, %rdi
	callq	strlen
	movslq	%r12d, %r8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movq	%r15, %rcx
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	rdbSaveAuxFieldStrInt, .Lfunc_end37-rdbSaveAuxFieldStrInt
                                        # -- End function
	.globl	rdbSaveInfoAuxFields    # -- Begin function rdbSaveInfoAuxFields
	.p2align	4, 0x90
	.type	rdbSaveInfoAuxFields,@function
rdbSaveInfoAuxFields:                   # @rdbSaveInfoAuxFields
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %r12
	movl	%esi, %r14d
	movq	%rdi, %r13
	movl	$.L.str.20, %edi
	callq	strlen
	movq	%rax, %rbx
	movl	$.L.str.21, %edi
	callq	strlen
	movl	$.L.str.20, %esi
	movl	$.L.str.21, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rax, %r8
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	cmpq	$-1, %rax
	je	.LBB38_9
# %bb.1:
	movl	%r14d, -44(%rbp)        # 4-byte Spill
	leaq	-80(%rbp), %rbx
	movl	$21, %esi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	ll2string
	movl	%eax, %r14d
	movl	$.L.str.22, %edi
	callq	strlen
	movslq	%r14d, %r8
	movl	$.L.str.22, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_9
# %bb.2:
	xorl	%edi, %edi
	callq	time
	leaq	-80(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	ll2string
	movl	%eax, %ebx
	movl	$.L.str.23, %edi
	callq	strlen
	movslq	%ebx, %r8
	movl	$.L.str.23, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_9
# %bb.3:
	callq	zmalloc_used_memory
	leaq	-80(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	ll2string
	movl	%eax, %ebx
	movl	$.L.str.24, %edi
	callq	strlen
	movslq	%ebx, %r8
	movl	$.L.str.24, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_9
# %bb.4:
	testq	%r12, %r12
	je	.LBB38_8
# %bb.5:
	movslq	(%r12), %rdx
	leaq	-80(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	callq	ll2string
	movl	%eax, %ebx
	movl	$.L.str.25, %edi
	callq	strlen
	movslq	%ebx, %r8
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_9
# %bb.6:
	movl	$.L.str.26, %edi
	callq	strlen
	movq	%rax, %rbx
	movl	$server+2268, %edi
	callq	strlen
	movl	$.L.str.26, %esi
	movl	$server+2268, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rax, %r8
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_9
# %bb.7:
	movq	server+2352(%rip), %rdx
	leaq	-80(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	callq	ll2string
	movl	%eax, %ebx
	movl	$.L.str.27, %edi
	callq	strlen
	movslq	%ebx, %r8
	movl	$.L.str.27, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_9
.LBB38_8:
	movl	-44(%rbp), %eax         # 4-byte Reload
	andl	$1, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	callq	ll2string
	movl	%eax, %ebx
	movl	$.L.str.28, %edi
	callq	strlen
	movslq	%ebx, %r8
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	rdbSaveAuxField
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	setne	%cl
	leal	(%rcx,%rcx), %r15d
	addl	$-1, %r15d
.LBB38_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	rdbSaveInfoAuxFields, .Lfunc_end38-rdbSaveInfoAuxFields
                                        # -- End function
	.globl	rdbSaveSingleModuleAux  # -- Begin function rdbSaveSingleModuleAux
	.p2align	4, 0x90
	.type	rdbSaveSingleModuleAux,@function
rdbSaveSingleModuleAux:                 # @rdbSaveSingleModuleAux
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %r15
	movl	%esi, %ebx
	movq	%rdi, %r13
	movb	$-9, -96(%rbp)
	testq	%rdi, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	je	.LBB39_7
# %bb.1:
	leaq	-96(%rbp), %r12
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB39_2:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB39_4
# %bb.3:                                #   in Loop: Header=BB39_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB39_4:                               #   in Loop: Header=BB39_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB39_6
# %bb.5:                                #   in Loop: Header=BB39_2 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB39_2
.LBB39_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx         # 4-byte Reload
.LBB39_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rsi
	movq	%r13, %rdi
	callq	rdbSaveLen
	movq	$-1, %r12
	cmpl	$-1, %eax
	je	.LBB39_27
# %bb.8:
	cltq
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
	movb	$2, -42(%rbp)
	testq	%r13, %r13
	je	.LBB39_15
# %bb.9:
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movl	$1, %r14d
	leaq	-42(%rbp), %rbx
	.p2align	4, 0x90
.LBB39_10:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %r15
	cmovbq	%rcx, %r15
	testq	%rcx, %rcx
	cmoveq	%r14, %r15
	testq	%rax, %rax
	je	.LBB39_12
# %bb.11:                               #   in Loop: Header=BB39_10 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*%rax
.LBB39_12:                              #   in Loop: Header=BB39_10 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB39_28
# %bb.13:                               #   in Loop: Header=BB39_10 Depth=1
	addq	%r15, %rbx
	addq	%r15, 48(%r13)
	subq	%r15, %r14
	jne	.LBB39_10
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	-48(%rbp), %ebx         # 4-byte Reload
.LBB39_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movslq	%ebx, %rsi
	movq	%r13, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB39_27
# %bb.16:
	movq	%r13, -88(%rbp)
	movq	%r15, -80(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -72(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -64(%rbp)
	leaq	-96(%rbp), %rdi
	movl	%ebx, %esi
	callq	*72(%r15)
	movb	$0, -42(%rbp)
	testq	%r13, %r13
	je	.LBB39_23
# %bb.17:
	movl	$1, %r15d
	leaq	-42(%rbp), %r14
	.p2align	4, 0x90
.LBB39_18:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB39_20
# %bb.19:                               #   in Loop: Header=BB39_18 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB39_20:                              #   in Loop: Header=BB39_18 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB39_29
# %bb.21:                               #   in Loop: Header=BB39_18 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	jne	.LBB39_18
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
.LBB39_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, -96(%rbp)
	jmp	.LBB39_24
.LBB39_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB39_27
.LBB39_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -72(%rbp)
.LBB39_24:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB39_26
# %bb.25:
	callq	moduleFreeContext
	movq	-64(%rbp), %rdi
	callq	zfree
.LBB39_26:
	xorl	%r12d, %r12d
	cmpl	$1, -72(%rbp)
	sbbq	%r12, %r12
	notq	%r12
	orq	-96(%rbp), %r12
.LBB39_27:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	rdbSaveSingleModuleAux, .Lfunc_end39-rdbSaveSingleModuleAux
                                        # -- End function
	.globl	rdbSaveRio              # -- Begin function rdbSaveRio
	.p2align	4, 0x90
	.type	rdbSaveRio,@function
rdbSaveRio:                             # @rdbSaveRio
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rsi, %r13
	movq	%rdi, %r12
	cmpl	$0, server+2132(%rip)
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	je	.LBB40_2
# %bb.1:
	movq	$rioGenericUpdateChecksum, 32(%r12)
	leaq	-130(%rbp), %rdi
	movl	$10, %esi
	movl	$.L.str.29, %edx
	movl	$9, %ecx
	xorl	%eax, %eax
	callq	snprintf
	testq	%r12, %r12
	sete	%al
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB40_4
.LBB40_2:
	movq	%rcx, %r15
	movl	%edx, %r14d
	leaq	-130(%rbp), %rdi
	movl	$10, %esi
	movl	$.L.str.29, %edx
	movl	$9, %ecx
	xorl	%eax, %eax
	callq	snprintf
	testq	%r12, %r12
	je	.LBB40_10
# %bb.3:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
.LBB40_4:
	movl	$9, %r15d
	leaq	-130(%rbp), %r14
	.p2align	4, 0x90
.LBB40_5:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r12), %rax
	movq	56(%r12), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB40_7
# %bb.6:                                #   in Loop: Header=BB40_5 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB40_7:                               #   in Loop: Header=BB40_5 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	testq	%rax, %rax
	je	.LBB40_78
# %bb.8:                                #   in Loop: Header=BB40_5 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r12)
	subq	%rbx, %r15
	jne	.LBB40_5
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	-60(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB40_11
.LBB40_10:
	movb	$1, %al
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB40_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	callq	rdbSaveInfoAuxFields
	cmpl	$-1, %eax
	je	.LBB40_80
# %bb.12:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	rdbSaveModulesAux
	cmpq	$-1, %rax
	je	.LBB40_80
# %bb.13:
	movl	server+1792(%rip), %eax
	testl	%eax, %eax
	jle	.LBB40_44
# %bb.14:
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r13, -72(%rbp)         # 8-byte Spill
	jmp	.LBB40_19
.LBB40_17:                              #   in Loop: Header=BB40_19 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictReleaseIterator
	movl	server+1792(%rip), %eax
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
.LBB40_18:                              #   in Loop: Header=BB40_19 Depth=1
	addq	$1, %rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jge	.LBB40_44
.LBB40_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_22 Depth 2
                                        #     Child Loop BB40_30 Depth 2
                                        #     Child Loop BB40_40 Depth 2
	movq	server+48(%rip), %rdx
	movq	%rbx, %r14
	shlq	$6, %r14
	movq	(%rdx,%r14), %rdi
	movq	40(%rdi), %rcx
	addq	72(%rdi), %rcx
	je	.LBB40_18
# %bb.20:                               #   in Loop: Header=BB40_19 Depth=1
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	dictGetSafeIterator
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$-2, -88(%rbp)
	cmpb	$0, -48(%rbp)           # 1-byte Folded Reload
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	jne	.LBB40_27
# %bb.21:                               # %.preheader4
                                        #   in Loop: Header=BB40_19 Depth=1
	movl	$1, %r13d
	leaq	-88(%rbp), %r15
	.p2align	4, 0x90
.LBB40_22:                              #   Parent Loop BB40_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r12), %rax
	movq	56(%r12), %rcx
	cmpq	%r13, %rcx
	movq	%r13, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r13, %rbx
	testq	%rax, %rax
	je	.LBB40_24
# %bb.23:                               #   in Loop: Header=BB40_22 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB40_24:                              #   in Loop: Header=BB40_22 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	testq	%rax, %rax
	je	.LBB40_57
# %bb.25:                               #   in Loop: Header=BB40_22 Depth=2
	addq	%rbx, %r15
	addq	%rbx, 48(%r12)
	subq	%rbx, %r13
	jne	.LBB40_22
# %bb.26:                               #   in Loop: Header=BB40_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	-112(%rbp), %rbx        # 8-byte Reload
.LBB40_27:                              #   in Loop: Header=BB40_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB40_59
# %bb.28:                               #   in Loop: Header=BB40_19 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r14), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movq	72(%rax), %rsi
	movq	8(%rcx,%r14), %rax
	movq	72(%rax), %r14
	addq	40(%rax), %r14
	movb	$-5, -88(%rbp)
	cmpb	$0, -48(%rbp)           # 1-byte Folded Reload
	jne	.LBB40_35
# %bb.29:                               # %.preheader3
                                        #   in Loop: Header=BB40_19 Depth=1
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movl	$1, %ebx
	leaq	-88(%rbp), %r14
	.p2align	4, 0x90
.LBB40_30:                              #   Parent Loop BB40_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%r12), %rax
	movq	56(%r12), %rcx
	cmpq	%rbx, %rcx
	movq	%rbx, %r15
	cmovbq	%rcx, %r15
	testq	%rcx, %rcx
	cmoveq	%rbx, %r15
	testq	%rax, %rax
	je	.LBB40_32
# %bb.31:                               #   in Loop: Header=BB40_30 Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*%rax
.LBB40_32:                              #   in Loop: Header=BB40_30 Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*8(%r12)
	testq	%rax, %rax
	je	.LBB40_58
# %bb.33:                               #   in Loop: Header=BB40_30 Depth=2
	addq	%r15, %r14
	addq	%r15, 48(%r12)
	subq	%r15, %rbx
	jne	.LBB40_30
# %bb.34:                               #   in Loop: Header=BB40_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
.LBB40_35:                              #   in Loop: Header=BB40_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rsi
	movq	%r12, %rdi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB40_59
# %bb.36:                               #   in Loop: Header=BB40_19 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	rdbSaveLen
	cmpl	$-1, %eax
	je	.LBB40_59
# %bb.37:                               #   in Loop: Header=BB40_19 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictNext
	testq	%rax, %rax
	je	.LBB40_17
# %bb.38:                               # %.preheader1
                                        #   in Loop: Header=BB40_19 Depth=1
	movl	-60(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB40_40
	.p2align	4, 0x90
.LBB40_39:                              #   in Loop: Header=BB40_40 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	dictNext
	testq	%rax, %rax
	je	.LBB40_17
.LBB40_40:                              #   Parent Loop BB40_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	leaq	-88(%rbp), %r13
	movq	%r13, %rsi
	callq	getExpire
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	rdbSaveKeyValuePair
	cmpl	$-1, %eax
	je	.LBB40_60
# %bb.41:                               #   in Loop: Header=BB40_40 Depth=2
	testb	$1, %r14b
	je	.LBB40_39
# %bb.42:                               #   in Loop: Header=BB40_40 Depth=2
	movq	48(%r12), %rbx
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	$10240, %rax            # imm = 0x2800
	cmpq	%rax, %rbx
	jbe	.LBB40_39
# %bb.43:                               #   in Loop: Header=BB40_40 Depth=2
	callq	aofReadDiffFromParent
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB40_39
.LBB40_44:
	testq	%r15, %r15
	je	.LBB40_62
# %bb.45:
	movq	server+3016(%rip), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB40_62
# %bb.46:
	callq	dictGetIterator
	movq	%rax, %r14
	jmp	.LBB40_49
.LBB40_47:                              #   in Loop: Header=BB40_49 Depth=1
	movq	-17(%rcx), %r8
	.p2align	4, 0x90
.LBB40_48:                              #   in Loop: Header=BB40_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.30, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	rdbSaveAuxField
	cmpq	$-1, %rax
	je	.LBB40_81
.LBB40_49:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB40_61
# %bb.50:                               #   in Loop: Header=BB40_49 Depth=1
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %r8d
	movl	%r8d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB40_53
# %bb.51:                               #   in Loop: Header=BB40_49 Depth=1
	movl	%r8d, %eax
	andl	$7, %eax
	jmpq	*.LJTI40_0(,%rax,8)
.LBB40_52:                              #   in Loop: Header=BB40_49 Depth=1
	shrq	$3, %r8
	jmp	.LBB40_48
.LBB40_53:                              #   in Loop: Header=BB40_49 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB40_48
.LBB40_54:                              #   in Loop: Header=BB40_49 Depth=1
	movzbl	-3(%rcx), %r8d
	jmp	.LBB40_48
.LBB40_55:                              #   in Loop: Header=BB40_49 Depth=1
	movzwl	-5(%rcx), %r8d
	jmp	.LBB40_48
.LBB40_56:                              #   in Loop: Header=BB40_49 Depth=1
	movl	-9(%rcx), %r8d
	jmp	.LBB40_48
.LBB40_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB40_59
.LBB40_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_59:
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB40_81
.LBB40_60:
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB40_81
.LBB40_61:
	movq	%r14, %rdi
	callq	dictReleaseIterator
.LBB40_62:
	movq	%r12, %rdi
	movl	$2, %esi
	callq	rdbSaveModulesAux
	cmpq	$-1, %rax
	je	.LBB40_80
# %bb.63:
	movb	$-1, -41(%rbp)
	cmpb	$0, -48(%rbp)           # 1-byte Folded Reload
	jne	.LBB40_70
# %bb.64:                               # %.preheader
	leaq	-41(%rbp), %r14
	movl	$1, %r15d
	.p2align	4, 0x90
.LBB40_65:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r12), %rax
	movq	56(%r12), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB40_67
# %bb.66:                               #   in Loop: Header=BB40_65 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB40_67:                              #   in Loop: Header=BB40_65 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	testq	%rax, %rax
	je	.LBB40_77
# %bb.68:                               #   in Loop: Header=BB40_65 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r12)
	subq	%rbx, %r15
	jne	.LBB40_65
# %bb.69:
	movl	$42, __A_VARIABLE(%rip)
.LBB40_70:
	leaq	-88(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r12), %rax
	movq	%rax, -88(%rbp)
	movl	$8, %r15d
	.p2align	4, 0x90
.LBB40_71:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r12), %rax
	movq	56(%r12), %rcx
	cmpq	%r15, %rcx
	movq	%r15, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r15, %rbx
	testq	%rax, %rax
	je	.LBB40_73
# %bb.72:                               #   in Loop: Header=BB40_71 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB40_73:                              #   in Loop: Header=BB40_71 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	testq	%rax, %rax
	je	.LBB40_79
# %bb.74:                               #   in Loop: Header=BB40_71 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r12)
	subq	%rbx, %r15
	jne	.LBB40_71
# %bb.75:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB40_85
.LBB40_77:
	movl	$42, __A_VARIABLE(%rip)
.LBB40_78:
	movl	$42, __A_VARIABLE(%rip)
.LBB40_79:
	movl	$42, __A_VARIABLE(%rip)
.LBB40_80:
	xorl	%r14d, %r14d
.LBB40_81:
	testq	%r13, %r13
	je	.LBB40_83
# %bb.82:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%r13)
.LBB40_83:
	movl	$-1, %ebx
	testq	%r14, %r14
	je	.LBB40_85
# %bb.84:
	movq	%r14, %rdi
	callq	dictReleaseIterator
.LBB40_85:
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
.Lfunc_end40:
	.size	rdbSaveRio, .Lfunc_end40-rdbSaveRio
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI40_0:
	.quad	.LBB40_52
	.quad	.LBB40_54
	.quad	.LBB40_55
	.quad	.LBB40_56
	.quad	.LBB40_47
                                        # -- End function
	.text
	.globl	rdbSaveRioWithEOFMark   # -- Begin function rdbSaveRioWithEOFMark
	.p2align	4, 0x90
	.type	rdbSaveRioWithEOFMark,@function
rdbSaveRioWithEOFMark:                  # @rdbSaveRioWithEOFMark
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r13
	leaq	-96(%rbp), %r12
	movl	$40, %esi
	movq	%r12, %rdi
	callq	getRandomHexChars
	testq	%rbx, %rbx
	je	.LBB41_2
# %bb.1:
	movl	$0, (%rbx)
.LBB41_2:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.31, %ebx
	movl	$5, %r14d
	.p2align	4, 0x90
.LBB41_3:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %r15
	cmovbq	%rcx, %r15
	testq	%rcx, %rcx
	cmoveq	%r14, %r15
	testq	%rax, %rax
	je	.LBB41_5
# %bb.4:                                #   in Loop: Header=BB41_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*%rax
.LBB41_5:                               #   in Loop: Header=BB41_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB41_24
# %bb.6:                                #   in Loop: Header=BB41_3 Depth=1
	addq	%r15, %rbx
	addq	%r15, 48(%r13)
	subq	%r15, %r14
	jne	.LBB41_3
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %r14d
	.p2align	4, 0x90
.LBB41_8:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB41_10
# %bb.9:                                #   in Loop: Header=BB41_8 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB41_10:                              #   in Loop: Header=BB41_8 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB41_24
# %bb.11:                               #   in Loop: Header=BB41_8 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB41_8
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.32, %r15d
	movl	$2, %r14d
	.p2align	4, 0x90
.LBB41_13:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r14, %rcx
	movq	%r14, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB41_15
# %bb.14:                               #   in Loop: Header=BB41_13 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB41_15:                              #   in Loop: Header=BB41_13 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB41_24
# %bb.16:                               #   in Loop: Header=BB41_13 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	subq	%rbx, %r14
	jne	.LBB41_13
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	rdbSaveRio
	cmpl	$-1, %eax
	je	.LBB41_25
# %bb.18:                               # %.preheader
	movl	$40, %r12d
	leaq	-96(%rbp), %r15
	.p2align	4, 0x90
.LBB41_19:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	movq	56(%r13), %rcx
	cmpq	%r12, %rcx
	movq	%r12, %rbx
	cmovbq	%rcx, %rbx
	testq	%rcx, %rcx
	cmoveq	%r12, %rbx
	testq	%rax, %rax
	je	.LBB41_21
# %bb.20:                               #   in Loop: Header=BB41_19 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB41_21:                              #   in Loop: Header=BB41_19 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	testq	%rax, %rax
	je	.LBB41_30
# %bb.22:                               #   in Loop: Header=BB41_19 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	subq	%rbx, %r12
	jne	.LBB41_19
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB41_29
.LBB41_24:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB41_25:
	testq	%r14, %r14
	je	.LBB41_28
.LBB41_26:
	movl	$-1, %ebx
	cmpl	$0, (%r14)
	jne	.LBB41_29
# %bb.27:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%r14)
	jmp	.LBB41_29
.LBB41_30:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB41_26
.LBB41_28:
	movl	$-1, %ebx
.LBB41_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	rdbSaveRioWithEOFMark, .Lfunc_end41-rdbSaveRioWithEOFMark
                                        # -- End function
	.globl	rdbSave                 # -- Begin function rdbSave
	.p2align	4, 0x90
	.type	rdbSave,@function
rdbSave:                                # @rdbSave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1400, %rsp             # imm = 0x578
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$0, -28(%rbp)
	callq	getpid
	leaq	-400(%rbp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.33, %edx
	movq	%rbx, %rdi
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	callq	fopen
	testq	%rax, %rax
	je	.LBB42_9
# %bb.1:
	movq	%rax, %rbx
	leaq	-136(%rbp), %rdi
	movq	%rax, %rsi
	callq	rioInitWithFile
	cmpl	$0, server+2020(%rip)
	je	.LBB42_3
# %bb.2:
	leaq	-136(%rbp), %rdi
	movl	$33554432, %esi         # imm = 0x2000000
	callq	rioSetAutoSync
.LBB42_3:
	leaq	-136(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	rdbSaveRio
	cmpl	$-1, %eax
	je	.LBB42_10
# %bb.4:
	movq	%rbx, %rdi
	callq	fflush
	cmpl	$-1, %eax
	je	.LBB42_11
# %bb.5:
	movq	%rbx, %rdi
	callq	fileno
	movl	%eax, %edi
	callq	fsync
	cmpl	$-1, %eax
	je	.LBB42_11
# %bb.6:
	movq	%rbx, %rdi
	callq	fclose
	cmpl	$-1, %eax
	je	.LBB42_11
# %bb.7:
	leaq	-400(%rbp), %rdi
	movq	%r14, %rsi
	callq	rename
	cmpl	$-1, %eax
	je	.LBB42_15
# %bb.8:
	xorl	%ebx, %ebx
	movl	$.L.str.38, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	$0, server+2080(%rip)
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2136(%rip)
	movl	$0, server+2176(%rip)
	jmp	.LBB42_14
.LBB42_9:
	leaq	-1424(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	getcwd
	testq	%rax, %rax
	movl	$.L.str.36, %ebx
	cmovneq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.35, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB42_13
.LBB42_10:
	movl	-28(%rbp), %r14d
	callq	__errno
	movl	%r14d, (%rax)
.LBB42_11:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.39, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	fclose
	leaq	-400(%rbp), %rdi
.LBB42_12:
	callq	unlink
.LBB42_13:
	movl	$-1, %ebx
.LBB42_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$1400, %rsp             # imm = 0x578
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_15:
	leaq	-1424(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	getcwd
	testq	%rax, %rax
	movl	$.L.str.36, %ebx
	cmovneq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	leaq	-400(%rbp), %r15
	movl	$.L.str.37, %esi
	movl	$3, %edi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	movq	%rax, %r9
	xorl	%eax, %eax
	callq	serverLog
	movq	%r15, %rdi
	jmp	.LBB42_12
.Lfunc_end42:
	.size	rdbSave, .Lfunc_end42-rdbSave
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function rdbSaveBackground
.LCPI43_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI43_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI43_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI43_3:
	.quad	4472074429978902528     # double 9.3132257461547852E-10
	.text
	.globl	rdbSaveBackground
	.p2align	4, 0x90
	.type	rdbSaveBackground,@function
rdbSaveBackground:                      # @rdbSaveBackground
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	server+2096(%rip), %eax
	andl	server+1940(%rip), %eax
	movl	$-1, %r14d
	cmpl	$-1, %eax
	je	.LBB43_1
.LBB43_13:
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
.LBB43_1:
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	server+2080(%rip), %rax
	movq	%rax, server+2088(%rip)
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2144(%rip)
	callq	openChildInfoPipe
	callq	ustime
	movq	%rax, %r13
	callq	fork
	testl	%eax, %eax
	je	.LBB43_2
# %bb.7:
	movl	%eax, %r15d
	callq	ustime
	subq	%r13, %rax
	movq	%rax, server+1120(%rip)
	callq	zmalloc_used_memory
	movq	%rax, %xmm0
	punpckldq	.LCPI43_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI43_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	mulsd	.LCPI43_2(%rip), %xmm1
	movq	server+1120(%rip), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	%xmm0, %xmm1
	mulsd	.LCPI43_3(%rip), %xmm1
	movsd	%xmm1, server+1128(%rip)
	movq	server+3096(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB43_10
# %bb.8:
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB43_10
# %bb.9:
	movl	$.L.str.42, %edi
	movq	%rdx, %rsi
	callq	latencyAddSample
.LBB43_10:
	cmpl	$-1, %r15d
	je	.LBB43_11
# %bb.12:
	xorl	%r14d, %r14d
	movl	$.L.str.44, %esi
	movl	$2, %edi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	serverLog
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2160(%rip)
	movl	%r15d, server+2096(%rip)
	movl	$1, server+2172(%rip)
	callq	updateDictResizePolicy
	jmp	.LBB43_13
.LBB43_2:
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	callq	closeListeningSockets
	movl	$.L.str.40, %edi
	callq	redisSetProcTitle
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	rdbSave
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB43_6
# %bb.3:
	movq	$-1, %rdi
	callq	zmalloc_get_private_dirty
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB43_5
# %bb.4:
	movq	%r15, %rdx
	shrq	$20, %rdx
	movl	$.L.str.41, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB43_5:
	movq	%r15, server+2208(%rip)
	xorl	%edi, %edi
	callq	sendChildInfo
.LBB43_6:
	xorl	%edi, %edi
	testl	%ebx, %ebx
	setne	%dil
	callq	exitFromChild
	jmp	.LBB43_13
.LBB43_11:
	callq	closeChildInfoPipe
	movl	$-1, server+2176(%rip)
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.43, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB43_13
.Lfunc_end43:
	.size	rdbSaveBackground, .Lfunc_end43-rdbSaveBackground
                                        # -- End function
	.globl	rdbRemoveTempFile       # -- Begin function rdbRemoveTempFile
	.p2align	4, 0x90
	.type	rdbRemoveTempFile,@function
rdbRemoveTempFile:                      # @rdbRemoveTempFile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movl	%edi, %ecx
	leaq	-272(%rbp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.33, %edx
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
.Lfunc_end44:
	.size	rdbRemoveTempFile, .Lfunc_end44-rdbRemoveTempFile
                                        # -- End function
	.globl	rdbLoadCheckModuleValue # -- Begin function rdbLoadCheckModuleValue
	.p2align	4, 0x90
	.type	rdbLoadCheckModuleValue,@function
rdbLoadCheckModuleValue:                # @rdbLoadCheckModuleValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	leaq	-56(%rbp), %r15
	jmp	.LBB45_1
	.p2align	4, 0x90
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	rdbLoadLenByRef
	cmpl	$-1, %eax
	je	.LBB45_6
.LBB45_25:                              #   in Loop: Header=BB45_1 Depth=1
	movq	%r12, %rdi
.LBB45_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_20 Depth 2
                                        #     Child Loop BB45_15 Depth 2
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB45_3
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rcx
.LBB45_3:                               #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB45_26
# %bb.4:                                #   in Loop: Header=BB45_1 Depth=1
	leaq	-1(%rcx), %rax
	cmpq	$1, %rax
	jbe	.LBB45_5
# %bb.8:                                #   in Loop: Header=BB45_1 Depth=1
	cmpq	$3, %rcx
	je	.LBB45_14
# %bb.9:                                #   in Loop: Header=BB45_1 Depth=1
	cmpq	$4, %rcx
	je	.LBB45_19
# %bb.10:                               #   in Loop: Header=BB45_1 Depth=1
	cmpq	$5, %rcx
	jne	.LBB45_25
# %bb.11:                               #   in Loop: Header=BB45_1 Depth=1
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB45_12
# %bb.13:                               #   in Loop: Header=BB45_1 Depth=1
	movq	%rax, %rdi
	callq	decrRefCount
	movq	%r12, %rdi
	jmp	.LBB45_1
.LBB45_19:                              #   in Loop: Header=BB45_1 Depth=1
	movl	$8, %r14d
	movq	%r15, %r13
	jmp	.LBB45_20
	.p2align	4, 0x90
.LBB45_23:                              #   in Loop: Header=BB45_20 Depth=2
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB45_24
.LBB45_20:                              #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB45_28
# %bb.21:                               #   in Loop: Header=BB45_20 Depth=2
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB45_23
# %bb.22:                               #   in Loop: Header=BB45_20 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB45_23
.LBB45_14:                              #   in Loop: Header=BB45_1 Depth=1
	movl	$4, %r14d
	movq	%r15, %r13
	jmp	.LBB45_15
	.p2align	4, 0x90
.LBB45_18:                              #   in Loop: Header=BB45_15 Depth=2
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	subq	%rbx, %r14
	je	.LBB45_24
.LBB45_15:                              #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r12), %rax
	cmpq	%r14, %rax
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r14, %rbx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	testq	%rax, %rax
	je	.LBB45_27
# %bb.16:                               #   in Loop: Header=BB45_15 Depth=2
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB45_18
# %bb.17:                               #   in Loop: Header=BB45_15 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB45_18
	.p2align	4, 0x90
.LBB45_24:                              #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB45_25
.LBB45_26:
	movl	$.L.str.49, %edi
	movl	$18, %esi
	callq	createStringObject
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.48, %esi
	movl	$1418, %edi             # imm = 0x58A
	jmp	.LBB45_7
.LBB45_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.47, %esi
	movl	$1412, %edi             # imm = 0x584
.LBB45_7:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB45_6:
	movl	$.L.str.45, %esi
	movl	$1399, %edi             # imm = 0x577
	jmp	.LBB45_7
.LBB45_12:
	movl	$.L.str.46, %esi
	movl	$1405, %edi             # imm = 0x57D
	jmp	.LBB45_7
.Lfunc_end45:
	.size	rdbLoadCheckModuleValue, .Lfunc_end45-rdbLoadCheckModuleValue
                                        # -- End function
	.globl	rdbLoadObject           # -- Begin function rdbLoadObject
	.p2align	4, 0x90
	.type	rdbLoadObject,@function
rdbLoadObject:                          # @rdbLoadObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rsi, %r15
	cmpl	$2, %edi
	je	.LBB46_9
# %bb.1:
	movl	%edi, %r14d
	cmpl	$1, %edi
	je	.LBB46_5
# %bb.2:
	testl	%r14d, %r14d
	jne	.LBB46_14
# %bb.3:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_139
# %bb.4:
	movq	%rax, %rdi
	callq	tryObjectEncoding
	jmp	.LBB46_138
.LBB46_5:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	-160(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_139
# %bb.6:
	cmpq	$-1, %r14
	je	.LBB46_139
# %bb.7:
	callq	createQuicklistObject
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	movl	server+2864(%rip), %esi
	movl	server+2868(%rip), %edx
	callq	quicklistSetOptions
	testq	%r14, %r14
	je	.LBB46_105
# %bb.8:                                # %.preheader14
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB46_22
.LBB46_9:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	-160(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_139
# %bb.10:
	cmpq	$-1, %r14
	je	.LBB46_139
# %bb.11:
	cmpq	server+2816(%rip), %r14
	jbe	.LBB46_30
# %bb.12:
	callq	createSetObject
	cmpq	$5, %r14
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jb	.LBB46_31
# %bb.13:
	movq	8(%rax), %rdi
	movq	%r14, %rsi
	callq	dictExpand
	jmp	.LBB46_31
.LBB46_14:
	movq	%rdx, %r13
	leal	-3(%r14), %eax
	cmpl	$11, %eax
	ja	.LBB46_93
# %bb.15:
	jmpq	*.LJTI46_1(,%rax,8)
.LBB46_16:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-160(%rbp), %r13
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	rdbLoadLenByRef
	movq	-160(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_139
# %bb.17:
	cmpq	$-1, %rbx
	je	.LBB46_139
# %bb.18:
	callq	createZsetObject
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	8(%rax), %r12
	cmpq	$5, %rbx
	jb	.LBB46_106
# %bb.19:
	movq	(%r12), %rdi
	movq	%rbx, %rsi
	callq	dictExpand
	jmp	.LBB46_107
.LBB46_20:                              #   in Loop: Header=BB46_22 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB46_21:                              #   in Loop: Header=BB46_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	callq	quicklistPushTail
	movq	%r13, %rdi
	callq	decrRefCount
	movq	%r12, %rdi
	callq	decrRefCount
	testq	%r14, %r14
	je	.LBB46_105
.LBB46_22:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_139
# %bb.23:                               #   in Loop: Header=BB46_22 Depth=1
	movq	%rax, %r12
	addq	$-1, %r14
	movq	%rax, %rdi
	callq	getDecodedObject
	movq	%rax, %r13
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB46_29
# %bb.24:                               #   in Loop: Header=BB46_22 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI46_0(,%rax,8)
.LBB46_25:                              #   in Loop: Header=BB46_22 Depth=1
	shrq	$3, %rdx
	jmp	.LBB46_21
.LBB46_26:                              #   in Loop: Header=BB46_22 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB46_21
.LBB46_27:                              #   in Loop: Header=BB46_22 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB46_21
.LBB46_28:                              #   in Loop: Header=BB46_22 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB46_21
.LBB46_29:                              #   in Loop: Header=BB46_22 Depth=1
	xorl	%edx, %edx
	jmp	.LBB46_21
.LBB46_105:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB46_139
.LBB46_30:
	callq	createIntsetObject
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%r14, %r14
	je	.LBB46_139
.LBB46_31:
	movl	$1, %ebx
	jmp	.LBB46_34
	.p2align	4, 0x90
.LBB46_32:                              #   in Loop: Header=BB46_34 Depth=1
	movq	%r13, %rdi
	callq	sdsfree
.LBB46_33:                              #   in Loop: Header=BB46_34 Depth=1
	movl	%ebx, %eax
	addl	$1, %ebx
	cmpq	%rax, %r14
	jbe	.LBB46_139
.LBB46_34:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_137
# %bb.35:                               #   in Loop: Header=BB46_34 Depth=1
	movq	%rax, %r13
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	(%r12), %eax
	movl	$240, %ecx
	andl	%ecx, %eax
	cmpl	$96, %eax
	jne	.LBB46_39
# %bb.36:                               #   in Loop: Header=BB46_34 Depth=1
	movq	%r13, %rdi
	leaq	-160(%rbp), %rsi
	callq	isSdsRepresentableAsLongLong
	testl	%eax, %eax
	je	.LBB46_38
# %bb.37:                               #   in Loop: Header=BB46_34 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	$2, %esi
	callq	setTypeConvert
	movq	8(%r12), %rdi
	movq	%r14, %rsi
	callq	dictExpand
	jmp	.LBB46_39
.LBB46_38:                              #   in Loop: Header=BB46_34 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	8(%r12), %rdi
	movq	-160(%rbp), %rsi
	xorl	%edx, %edx
	callq	intsetAdd
	movq	%rax, 8(%r12)
	.p2align	4, 0x90
.LBB46_39:                              #   in Loop: Header=BB46_34 Depth=1
	movl	(%r12), %eax
	movl	$240, %ecx
	andl	%ecx, %eax
	cmpl	$32, %eax
	jne	.LBB46_32
# %bb.40:                               #   in Loop: Header=BB46_34 Depth=1
	movq	8(%r12), %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	jmp	.LBB46_33
.LBB46_41:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	-160(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_139
# %bb.42:
	cmpq	$-1, %rbx
	je	.LBB46_139
# %bb.43:
	callq	createQuicklistObject
	movq	%rax, %r14
	movq	8(%rax), %rdi
	movl	server+2864(%rip), %esi
	movl	server+2868(%rip), %edx
	callq	quicklistSetOptions
	testq	%rbx, %rbx
	je	.LBB46_164
# %bb.44:                               # %.preheader12
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB46_45:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_139
# %bb.46:                               #   in Loop: Header=BB46_45 Depth=1
	addq	$-1, %rbx
	movq	8(%r14), %rdi
	movq	%rax, %rsi
	callq	quicklistAppendZiplist
	testq	%rbx, %rbx
	jne	.LBB46_45
.LBB46_164:
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jmp	.LBB46_139
.LBB46_48:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	-160(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_139
# %bb.49:
	cmpq	$-1, %r13
	je	.LBB46_139
# %bb.50:
	callq	createHashObject
	movq	%rax, %r14
	cmpq	server+2800(%rip), %r13
	jbe	.LBB46_52
# %bb.51:
	movq	%r14, %rdi
	movl	$2, %esi
	callq	hashTypeConvert
.LBB46_52:
	movl	(%r14), %eax
	testq	%r13, %r13
	je	.LBB46_242
# %bb.53:
	movl	%eax, %ecx
	andl	$240, %ecx
	cmpl	$80, %ecx
	jne	.LBB46_242
# %bb.54:
	addq	$-1, %r13
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r13, %rcx
.LBB46_55:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r13
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_139
# %bb.56:                               #   in Loop: Header=BB46_55 Depth=1
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_139
# %bb.57:                               #   in Loop: Header=BB46_55 Depth=1
	movq	%rax, %r12
	movq	8(%r14), %rdi
	movzbl	-1(%rbx), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB46_64
# %bb.58:                               #   in Loop: Header=BB46_55 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI46_2(,%rax,8)
.LBB46_59:                              #   in Loop: Header=BB46_55 Depth=1
	shrq	$3, %rdx
	jmp	.LBB46_65
.LBB46_60:                              #   in Loop: Header=BB46_55 Depth=1
	movq	-17(%rbx), %rdx
	jmp	.LBB46_65
.LBB46_61:                              #   in Loop: Header=BB46_55 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB46_65
.LBB46_62:                              #   in Loop: Header=BB46_55 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB46_65
.LBB46_63:                              #   in Loop: Header=BB46_55 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB46_65
.LBB46_64:                              #   in Loop: Header=BB46_55 Depth=1
	xorl	%edx, %edx
.LBB46_65:                              #   in Loop: Header=BB46_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, 8(%r14)
	movzbl	-1(%r12), %edx
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB46_72
# %bb.66:                               #   in Loop: Header=BB46_55 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_3(,%rcx,8)
.LBB46_67:                              #   in Loop: Header=BB46_55 Depth=1
	shrq	$3, %rdx
	jmp	.LBB46_73
.LBB46_68:                              #   in Loop: Header=BB46_55 Depth=1
	movq	-17(%r12), %rdx
	jmp	.LBB46_73
.LBB46_69:                              #   in Loop: Header=BB46_55 Depth=1
	movzwl	-5(%r12), %edx
	jmp	.LBB46_73
.LBB46_70:                              #   in Loop: Header=BB46_55 Depth=1
	movl	-9(%r12), %edx
	jmp	.LBB46_73
.LBB46_71:                              #   in Loop: Header=BB46_55 Depth=1
	movzbl	-3(%r12), %edx
	jmp	.LBB46_73
.LBB46_72:                              #   in Loop: Header=BB46_55 Depth=1
	xorl	%edx, %edx
.LBB46_73:                              #   in Loop: Header=BB46_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, 8(%r14)
	movzbl	-1(%rbx), %ecx
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB46_84
# %bb.74:                               #   in Loop: Header=BB46_55 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI46_4(,%rax,8)
.LBB46_75:                              #   in Loop: Header=BB46_55 Depth=1
	shrq	$3, %rcx
	jmp	.LBB46_80
.LBB46_76:                              #   in Loop: Header=BB46_55 Depth=1
	movq	-17(%rbx), %rcx
	jmp	.LBB46_80
.LBB46_77:                              #   in Loop: Header=BB46_55 Depth=1
	movzwl	-5(%rbx), %ecx
	jmp	.LBB46_80
.LBB46_78:                              #   in Loop: Header=BB46_55 Depth=1
	movl	-9(%rbx), %ecx
	jmp	.LBB46_80
.LBB46_79:                              #   in Loop: Header=BB46_55 Depth=1
	movzbl	-3(%rbx), %ecx
.LBB46_80:                              #   in Loop: Header=BB46_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2808(%rip), %rax
	cmpq	%rax, %rcx
	ja	.LBB46_241
.LBB46_81:                              #   in Loop: Header=BB46_55 Depth=1
	movzbl	-1(%r12), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB46_92
# %bb.82:                               #   in Loop: Header=BB46_55 Depth=1
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI46_5(,%rdx,8)
.LBB46_83:                              #   in Loop: Header=BB46_55 Depth=1
	shrq	$3, %rcx
	jmp	.LBB46_89
.LBB46_84:                              #   in Loop: Header=BB46_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2808(%rip), %rax
	jmp	.LBB46_81
.LBB46_85:                              #   in Loop: Header=BB46_55 Depth=1
	movq	-17(%r12), %rcx
	jmp	.LBB46_89
.LBB46_86:                              #   in Loop: Header=BB46_55 Depth=1
	movzwl	-5(%r12), %ecx
	jmp	.LBB46_89
.LBB46_87:                              #   in Loop: Header=BB46_55 Depth=1
	movl	-9(%r12), %ecx
	jmp	.LBB46_89
.LBB46_88:                              #   in Loop: Header=BB46_55 Depth=1
	movzbl	-3(%r12), %ecx
.LBB46_89:                              #   in Loop: Header=BB46_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	ja	.LBB46_241
.LBB46_90:                              #   in Loop: Header=BB46_55 Depth=1
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r12, %rdi
	callq	sdsfree
	movl	(%r14), %eax
	movq	%r13, %rcx
	addq	$-1, %rcx
	jae	.LBB46_242
# %bb.91:                               #   in Loop: Header=BB46_55 Depth=1
	movl	%eax, %edx
	andl	$240, %edx
	cmpl	$80, %edx
	je	.LBB46_55
	jmp	.LBB46_242
.LBB46_92:                              #   in Loop: Header=BB46_55 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_90
.LBB46_93:
	leal	-9(%r14), %ebx
	cmpl	$4, %ebx
	ja	.LBB46_140
# %bb.94:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_139
# %bb.95:
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	cmpl	$4, %ebx
	ja	.LBB46_275
# %bb.96:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmpq	*.LJTI46_10(,%rbx,8)
.LBB46_97:
	movq	%rax, %rbx
	callq	ziplistNew
	movq	%rax, %r12
	movq	8(%rbx), %rdi
	callq	zipmapRewind
	leaq	-160(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-108(%rbp), %r8
	movq	%rax, %rdi
	callq	zipmapNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB46_101
# %bb.98:                               # %.preheader
	movq	%rax, %r14
	leaq	-80(%rbp), %r15
	leaq	-108(%rbp), %r13
.LBB46_99:                              # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %edx
	cmpl	%ebx, %edx
	cmoval	%edx, %ebx
	movl	-108(%rbp), %eax
	cmpl	%ebx, %eax
	cmoval	%eax, %ebx
	movq	-160(%rbp), %rsi
	movq	%r12, %rdi
	movl	$1, %ecx
	callq	ziplistPush
	movq	-80(%rbp), %rsi
	movl	-108(%rbp), %edx
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, %r12
	movq	%r14, %rdi
	leaq	-160(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	callq	zipmapNext
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB46_99
# %bb.100:
	movl	%ebx, %ebx
.LBB46_101:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	8(%r14), %rdi
	callq	zfree
	movq	%r12, 8(%r14)
	movb	$84, (%r14)
	movq	%r14, %rdi
	callq	hashTypeLength
	cmpq	server+2800(%rip), %rax
	ja	.LBB46_103
# %bb.102:
	cmpq	%rbx, server+2808(%rip)
	jae	.LBB46_139
.LBB46_103:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB46_256
.LBB46_106:
	testq	%rbx, %rbx
	je	.LBB46_165
.LBB46_107:
	movq	%r12, -96(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB46_108:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_112 Depth 2
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_137
# %bb.109:                              #   in Loop: Header=BB46_108 Depth=1
	movq	%rax, -104(%rbp)        # 8-byte Spill
	cmpl	$5, %r14d
	jne	.LBB46_115
# %bb.110:                              # %.preheader6
                                        #   in Loop: Header=BB46_108 Depth=1
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	movl	$8, %ebx
	jmp	.LBB46_112
	.p2align	4, 0x90
.LBB46_111:                             #   in Loop: Header=BB46_112 Depth=2
	addq	%r12, %r13
	addq	%r12, 48(%r15)
	subq	%r12, %rbx
	je	.LBB46_116
.LBB46_112:                             #   Parent Loop BB46_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r15), %rax
	cmpq	%rbx, %rax
	movq	%rbx, %r12
	cmovbq	%rax, %r12
	testq	%rax, %rax
	cmoveq	%rbx, %r12
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB46_136
# %bb.113:                              #   in Loop: Header=BB46_112 Depth=2
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB46_111
# %bb.114:                              #   in Loop: Header=BB46_112 Depth=2
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*%rax
	jmp	.LBB46_111
.LBB46_115:                             #   in Loop: Header=BB46_108 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	rdbLoadDoubleValue
	cmpl	$-1, %eax
	movq	-104(%rbp), %r12        # 8-byte Reload
	jne	.LBB46_117
	jmp	.LBB46_137
.LBB46_116:                             #   in Loop: Header=BB46_108 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	-104(%rbp), %r12        # 8-byte Reload
.LBB46_117:                             #   in Loop: Header=BB46_108 Depth=1
	addq	$-1, %rbx
	movzbl	-1(%r12), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB46_134
# %bb.118:                              #   in Loop: Header=BB46_108 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_6(,%rcx,8)
.LBB46_119:                             #   in Loop: Header=BB46_108 Depth=1
	movq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB46_124
.LBB46_120:                             #   in Loop: Header=BB46_108 Depth=1
	movq	-17(%r12), %rcx
	jmp	.LBB46_124
.LBB46_121:                             #   in Loop: Header=BB46_108 Depth=1
	movzwl	-5(%r12), %ecx
	jmp	.LBB46_124
.LBB46_122:                             #   in Loop: Header=BB46_108 Depth=1
	movl	-9(%r12), %ecx
	jmp	.LBB46_124
.LBB46_123:                             #   in Loop: Header=BB46_108 Depth=1
	movzbl	-3(%r12), %ecx
.LBB46_124:                             #   in Loop: Header=BB46_108 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-56(%rbp), %rcx         # 8-byte Folded Reload
	jbe	.LBB46_135
# %bb.125:                              #   in Loop: Header=BB46_108 Depth=1
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB46_132
# %bb.126:                              #   in Loop: Header=BB46_108 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_7(,%rcx,8)
.LBB46_127:                             #   in Loop: Header=BB46_108 Depth=1
	shrq	$3, %rax
	jmp	.LBB46_133
.LBB46_128:                             #   in Loop: Header=BB46_108 Depth=1
	movq	-17(%r12), %rax
	jmp	.LBB46_133
.LBB46_129:                             #   in Loop: Header=BB46_108 Depth=1
	movzwl	-5(%r12), %eax
	jmp	.LBB46_133
.LBB46_130:                             #   in Loop: Header=BB46_108 Depth=1
	movl	-9(%r12), %eax
	jmp	.LBB46_133
.LBB46_131:                             #   in Loop: Header=BB46_108 Depth=1
	movzbl	-3(%r12), %eax
	jmp	.LBB46_133
.LBB46_132:                             #   in Loop: Header=BB46_108 Depth=1
	xorl	%eax, %eax
.LBB46_133:                             #   in Loop: Header=BB46_108 Depth=1
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB46_134:                             #   in Loop: Header=BB46_108 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB46_135:                             #   in Loop: Header=BB46_108 Depth=1
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	8(%r13), %rdi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%r12, %rsi
	callq	zslInsert
	movq	(%r13), %rdi
	leaq	8(%rax), %rdx
	movq	%r12, %rsi
	callq	dictAdd
	testq	%rbx, %rbx
	leaq	-160(%rbp), %r13
	jne	.LBB46_108
	jmp	.LBB46_166
.LBB46_136:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_137:
	xorl	%eax, %eax
.LBB46_138:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB46_139:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB46_140:
	cmpl	$15, %r14d
	jne	.LBB46_158
# %bb.141:
	callq	createStreamObject
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	$-1, %r13
	cmpl	$-1, %eax
	je	.LBB46_143
# %bb.142:
	movq	-160(%rbp), %r13
.LBB46_143:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	.p2align	4, 0x90
.LBB46_144:                             # =>This Inner Loop Header: Depth=1
	addq	$-1, %r13
	je	.LBB46_169
# %bb.145:                              #   in Loop: Header=BB46_144 Depth=1
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_269
# %bb.146:                              #   in Loop: Header=BB46_144 Depth=1
	movq	%rax, %r12
	movzbl	-1(%rax), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB46_270
# %bb.147:                              #   in Loop: Header=BB46_144 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_8(,%rcx,8)
.LBB46_148:                             #   in Loop: Header=BB46_144 Depth=1
	shrq	$3, %rax
	jmp	.LBB46_153
.LBB46_149:                             #   in Loop: Header=BB46_144 Depth=1
	movq	-17(%r12), %rax
	jmp	.LBB46_153
.LBB46_150:                             #   in Loop: Header=BB46_144 Depth=1
	movzwl	-5(%r12), %eax
	jmp	.LBB46_153
.LBB46_151:                             #   in Loop: Header=BB46_144 Depth=1
	movl	-9(%r12), %eax
	jmp	.LBB46_153
.LBB46_152:                             #   in Loop: Header=BB46_144 Depth=1
	movzbl	-3(%r12), %eax
.LBB46_153:                             #   in Loop: Header=BB46_144 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rax
	jne	.LBB46_271
# %bb.154:                              #   in Loop: Header=BB46_144 Depth=1
	movq	%r15, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_139
# %bb.155:                              #   in Loop: Header=BB46_144 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	lpFirst
	testq	%rax, %rax
	je	.LBB46_272
# %bb.156:                              #   in Loop: Header=BB46_144 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$16, %edx
	movq	%r12, %rsi
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	movl	%eax, %ebx
	movq	%r12, %rdi
	callq	sdsfree
	testl	%ebx, %ebx
	jne	.LBB46_144
# %bb.157:
	movl	$.L.str.56, %esi
	movl	$1717, %edi             # imm = 0x6B5
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_158:
	movl	%r14d, %eax
	orl	$1, %eax
	cmpl	$7, %eax
	jne	.LBB46_276
# %bb.159:
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	$-1, %rbx
	cmpl	$-1, %eax
	je	.LBB46_161
# %bb.160:
	movq	-160(%rbp), %rbx
.LBB46_161:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	moduleTypeLookupModuleByID
	movq	%rax, %r12
	cmpl	$7, %r14d
	jne	.LBB46_233
# %bb.162:
	cmpl	$0, rdbCheckMode(%rip)
	je	.LBB46_233
# %bb.163:
	leaq	-80(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	moduleTypeNameByID
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	rdbLoadCheckModuleValue
	jmp	.LBB46_138
.LBB46_165:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB46_166:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zsetLength
	cmpq	server+2824(%rip), %rax
	ja	.LBB46_139
# %bb.167:
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	server+2832(%rip), %rax
	ja	.LBB46_139
# %bb.168:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$5, %esi
	jmp	.LBB46_261
.LBB46_169:
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	$-1, %rbx
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_171
# %bb.170:
	movq	-160(%rbp), %rcx
.LBB46_171:
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rcx, 8(%rax)
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_173
# %bb.172:
	movq	-160(%rbp), %rcx
.LBB46_173:
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rcx, 16(%rax)
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_175
# %bb.174:
	movq	-160(%rbp), %rcx
.LBB46_175:
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rcx, 24(%rax)
	leaq	-160(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	cmpl	$-1, %eax
	je	.LBB46_177
# %bb.176:
	movq	-160(%rbp), %rbx
.LBB46_177:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB46_180
.LBB46_178:
	movq	-176(%rbp), %rax        # 8-byte Reload
	jmp	.LBB46_138
.LBB46_179:                             #   in Loop: Header=BB46_180 Depth=1
	movq	-168(%rbp), %rbx        # 8-byte Reload
	addq	$-1, %rbx
	je	.LBB46_178
.LBB46_180:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_196 Depth 2
                                        #       Child Loop BB46_198 Depth 3
                                        #       Child Loop BB46_203 Depth 3
                                        #     Child Loop BB46_214 Depth 2
                                        #       Child Loop BB46_218 Depth 3
                                        #       Child Loop BB46_224 Depth 3
                                        #         Child Loop BB46_227 Depth 4
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_273
# %bb.181:                              #   in Loop: Header=BB46_180 Depth=1
	movq	%rax, %r12
	xorl	%r14d, %r14d
	movq	%r15, %rdi
	xorl	%esi, %esi
	leaq	-160(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %r13
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_183
# %bb.182:                              #   in Loop: Header=BB46_180 Depth=1
	movq	-160(%rbp), %rcx
.LBB46_183:                             #   in Loop: Header=BB46_180 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -160(%rbp)
	movq	%r15, %rdi
	xorl	%esi, %esi
	leaq	-80(%rbp), %rdx
	callq	rdbLoadLenByRef
	cmpl	$-1, %eax
	je	.LBB46_185
# %bb.184:                              #   in Loop: Header=BB46_180 Depth=1
	movq	-80(%rbp), %r13
.LBB46_185:                             #   in Loop: Header=BB46_180 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -152(%rbp)
	movzbl	-1(%r12), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB46_192
# %bb.186:                              #   in Loop: Header=BB46_180 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_9(,%rcx,8)
.LBB46_187:                             #   in Loop: Header=BB46_180 Depth=1
	shrq	$3, %rax
	movq	%rax, %r14
	jmp	.LBB46_192
.LBB46_188:                             #   in Loop: Header=BB46_180 Depth=1
	movq	-17(%r12), %r14
	jmp	.LBB46_192
.LBB46_189:                             #   in Loop: Header=BB46_180 Depth=1
	movzwl	-5(%r12), %r14d
	jmp	.LBB46_192
.LBB46_190:                             #   in Loop: Header=BB46_180 Depth=1
	movl	-9(%r12), %r14d
	jmp	.LBB46_192
.LBB46_191:                             #   in Loop: Header=BB46_180 Depth=1
	movzbl	-3(%r12), %r14d
.LBB46_192:                             #   in Loop: Header=BB46_180 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r14, %rdx
	leaq	-160(%rbp), %rcx
	callq	streamCreateCG
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB46_274
# %bb.193:                              #   in Loop: Header=BB46_180 Depth=1
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	callq	sdsfree
	movq	%r15, %rdi
	xorl	%esi, %esi
	leaq	-80(%rbp), %r12
	movq	%r12, %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %r14
	cmpl	$-1, %eax
	je	.LBB46_195
# %bb.194:                              #   in Loop: Header=BB46_180 Depth=1
	movq	-80(%rbp), %r14
.LBB46_195:                             #   in Loop: Header=BB46_180 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB46_210
	.p2align	4, 0x90
.LBB46_196:                             #   Parent Loop BB46_180 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB46_198 Depth 3
                                        #       Child Loop BB46_203 Depth 3
	addq	$-1, %r14
	movl	$16, %r13d
	jmp	.LBB46_198
	.p2align	4, 0x90
.LBB46_197:                             #   in Loop: Header=BB46_198 Depth=3
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	subq	%rbx, %r13
	je	.LBB46_201
.LBB46_198:                             #   Parent Loop BB46_180 Depth=1
                                        #     Parent Loop BB46_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%r15), %rax
	cmpq	%r13, %rax
	movq	%r13, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r13, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB46_263
# %bb.199:                              #   in Loop: Header=BB46_198 Depth=3
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB46_197
# %bb.200:                              #   in Loop: Header=BB46_198 Depth=3
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB46_197
	.p2align	4, 0x90
.LBB46_201:                             #   in Loop: Header=BB46_196 Depth=2
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	callq	streamCreateNACK
	movq	%rax, %r14
	movl	$8, %ebx
	leaq	-88(%rbp), %r13
	jmp	.LBB46_203
	.p2align	4, 0x90
.LBB46_202:                             #   in Loop: Header=BB46_203 Depth=3
	addq	%r12, %r13
	addq	%r12, 48(%r15)
	subq	%r12, %rbx
	je	.LBB46_206
.LBB46_203:                             #   Parent Loop BB46_180 Depth=1
                                        #     Parent Loop BB46_196 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%r15), %rax
	cmpq	%rbx, %rax
	movq	%rbx, %r12
	cmovbq	%rax, %r12
	testq	%rax, %rax
	cmoveq	%rbx, %r12
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB46_265
# %bb.204:                              #   in Loop: Header=BB46_203 Depth=3
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB46_202
# %bb.205:                              #   in Loop: Header=BB46_203 Depth=3
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*%rax
	jmp	.LBB46_202
	.p2align	4, 0x90
.LBB46_206:                             #   in Loop: Header=BB46_196 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r14)
	movq	%r15, %rdi
	xorl	%esi, %esi
	leaq	-88(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_208
# %bb.207:                              #   in Loop: Header=BB46_196 Depth=2
	movq	-88(%rbp), %rcx
.LBB46_208:                             #   in Loop: Header=BB46_196 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, 8(%r14)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movl	$16, %edx
	leaq	-80(%rbp), %r12
	movq	%r12, %rsi
	movq	%r14, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	testl	%eax, %eax
	je	.LBB46_267
# %bb.209:                              #   in Loop: Header=BB46_196 Depth=2
	movq	-104(%rbp), %r14        # 8-byte Reload
	testq	%r14, %r14
	jne	.LBB46_196
.LBB46_210:                             #   in Loop: Header=BB46_180 Depth=1
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %r14
	cmpl	$-1, %eax
	je	.LBB46_212
# %bb.211:                              #   in Loop: Header=BB46_180 Depth=1
	movq	-80(%rbp), %r14
.LBB46_212:                             #   in Loop: Header=BB46_180 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_214
	.p2align	4, 0x90
.LBB46_213:                             #   in Loop: Header=BB46_214 Depth=2
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB46_214:                             #   Parent Loop BB46_180 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB46_218 Depth 3
                                        #       Child Loop BB46_224 Depth 3
                                        #         Child Loop BB46_227 Depth 4
	testq	%r14, %r14
	je	.LBB46_179
# %bb.215:                              #   in Loop: Header=BB46_214 Depth=2
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_268
# %bb.216:                              #   in Loop: Header=BB46_214 Depth=2
	movq	%rax, %rbx
	addq	$-1, %r14
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	$1, %edx
	callq	streamLookupConsumer
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$8, %ebx
	leaq	-80(%rbp), %r13
	jmp	.LBB46_218
	.p2align	4, 0x90
.LBB46_217:                             #   in Loop: Header=BB46_218 Depth=3
	addq	%r14, %r13
	addq	%r14, 48(%r15)
	subq	%r14, %rbx
	je	.LBB46_221
.LBB46_218:                             #   Parent Loop BB46_180 Depth=1
                                        #     Parent Loop BB46_214 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%r15), %rax
	cmpq	%rbx, %rax
	movq	%rbx, %r14
	cmovbq	%rax, %r14
	testq	%rax, %rax
	cmoveq	%rbx, %r14
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB46_265
# %bb.219:                              #   in Loop: Header=BB46_218 Depth=3
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB46_217
# %bb.220:                              #   in Loop: Header=BB46_218 Depth=3
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	*%rax
	jmp	.LBB46_217
	.p2align	4, 0x90
.LBB46_221:                             #   in Loop: Header=BB46_214 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%r15, %rdi
	xorl	%esi, %esi
	leaq	-80(%rbp), %r14
	movq	%r14, %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %r13
	cmpl	$-1, %eax
	je	.LBB46_223
# %bb.222:                              #   in Loop: Header=BB46_214 Depth=2
	movq	-80(%rbp), %r13
.LBB46_223:                             #   in Loop: Header=BB46_214 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB46_224:                             #   Parent Loop BB46_180 Depth=1
                                        #     Parent Loop BB46_214 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB46_227 Depth 4
	testq	%r13, %r13
	je	.LBB46_213
# %bb.225:                              #   in Loop: Header=BB46_224 Depth=3
	addq	$-1, %r13
	movl	$16, %r12d
	jmp	.LBB46_227
	.p2align	4, 0x90
.LBB46_226:                             #   in Loop: Header=BB46_227 Depth=4
	addq	%rbx, %r14
	addq	%rbx, 48(%r15)
	subq	%rbx, %r12
	je	.LBB46_230
.LBB46_227:                             #   Parent Loop BB46_180 Depth=1
                                        #     Parent Loop BB46_214 Depth=2
                                        #       Parent Loop BB46_224 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	56(%r15), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r15)
	testq	%rax, %rax
	je	.LBB46_263
# %bb.228:                              #   in Loop: Header=BB46_227 Depth=4
	movq	32(%r15), %rax
	testq	%rax, %rax
	je	.LBB46_226
# %bb.229:                              #   in Loop: Header=BB46_227 Depth=4
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB46_226
	.p2align	4, 0x90
.LBB46_230:                             #   in Loop: Header=BB46_224 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movl	$16, %edx
	leaq	-80(%rbp), %r14
	movq	%r14, %rsi
	callq	raxFind
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB46_266
# %bb.231:                              #   in Loop: Header=BB46_224 Depth=3
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 16(%rax)
	movq	16(%rcx), %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	movq	%rax, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	testl	%eax, %eax
	jne	.LBB46_224
# %bb.232:
	movl	$.L.str.62, %esi
	movl	$1794, %edi             # imm = 0x702
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_233:
	testq	%r12, %r12
	je	.LBB46_278
# %bb.234:
	xorl	%eax, %eax
	cmpl	$6, %r14d
	sete	%al
	movq	%r15, -152(%rbp)
	movq	%r12, -144(%rbp)
	movq	$0, -160(%rbp)
	movl	$0, -136(%rbp)
	movq	%r13, -120(%rbp)
	movq	$0, -128(%rbp)
	movl	$2, %ecx
	subl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	movl	%ebx, %esi
	andl	$1023, %esi             # imm = 0x3FF
	leaq	-160(%rbp), %rdi
	callq	*16(%r12)
	movq	%rax, %r14
	movq	-128(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB46_236
# %bb.235:
	callq	moduleFreeContext
	movq	-128(%rbp), %rdi
	callq	zfree
.LBB46_236:
	cmpl	$2, -132(%rbp)
	jne	.LBB46_239
# %bb.237:
	leaq	-88(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movq	-88(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_279
# %bb.238:
	testq	%rcx, %rcx
	jne	.LBB46_279
.LBB46_239:
	testq	%r14, %r14
	je	.LBB46_280
# %bb.240:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	createModuleObject
	jmp	.LBB46_138
.LBB46_241:
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r12, %rdi
	callq	sdsfree
	movq	%r14, %rdi
	movl	$2, %esi
	callq	hashTypeConvert
	movl	(%r14), %eax
.LBB46_242:
	cmpq	$5, %r13
	jb	.LBB46_245
# %bb.243:
	andl	$240, %eax
	cmpl	$32, %eax
	jne	.LBB46_245
# %bb.244:
	movq	8(%r14), %rdi
	movq	%r13, %rsi
	callq	dictExpand
.LBB46_245:
	movq	%r14, %r12
	movl	$240, %r14d
	.p2align	4, 0x90
.LBB46_246:                             # =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	.LBB46_252
# %bb.247:                              #   in Loop: Header=BB46_246 Depth=1
	movl	(%r12), %eax
	andl	%r14d, %eax
	cmpl	$32, %eax
	jne	.LBB46_252
# %bb.248:                              #   in Loop: Header=BB46_246 Depth=1
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_139
# %bb.249:                              #   in Loop: Header=BB46_246 Depth=1
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	testq	%rax, %rax
	je	.LBB46_139
# %bb.250:                              #   in Loop: Header=BB46_246 Depth=1
	addq	$-1, %r13
	movq	8(%r12), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	dictAdd
	cmpl	$1, %eax
	jne	.LBB46_246
# %bb.251:
	movl	$.L.str.50, %esi
	movl	$1590, %edi             # imm = 0x636
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_252:
	movq	%r12, %rax
	movq	%r12, -48(%rbp)         # 8-byte Spill
	testq	%r13, %r13
	je	.LBB46_139
# %bb.253:
	movl	$.L.str.51, %edi
	movl	$.L.str.8, %esi
	movl	$1595, %edx             # imm = 0x63B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB46_254:
	movb	$84, (%rax)
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	hashTypeLength
	cmpq	server+2800(%rip), %rax
	jbe	.LBB46_139
# %bb.255:
	movq	%rbx, %rdi
.LBB46_256:
	movl	$2, %esi
	callq	hashTypeConvert
	jmp	.LBB46_139
.LBB46_257:
	movb	$98, (%rax)
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	callq	intsetLen
	movl	%eax, %eax
	cmpq	%rax, server+2816(%rip)
	jae	.LBB46_139
# %bb.258:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	setTypeConvert
	jmp	.LBB46_139
.LBB46_259:
	movb	$83, (%rax)
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	zsetLength
	cmpq	server+2824(%rip), %rax
	jbe	.LBB46_139
# %bb.260:
	movq	%rbx, %rdi
	movl	$7, %esi
.LBB46_261:
	callq	zsetConvert
	jmp	.LBB46_139
.LBB46_262:
	movb	$81, (%rax)
	movq	%rax, %rdi
	movl	$9, %esi
	callq	listTypeConvert
	jmp	.LBB46_139
.LBB46_263:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %esi
	movl	$16, %edx
.LBB46_264:
	movl	$85, %edi
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_265:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %esi
	movl	$8, %edx
	jmp	.LBB46_264
.LBB46_266:
	movl	$.L.str.61, %esi
	movl	$1785, %edi             # imm = 0x6F9
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_267:
	movl	$.L.str.59, %esi
	movl	$1759, %edi             # imm = 0x6DF
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_268:
	movl	$.L.str.60, %esi
	movl	$1769, %edi             # imm = 0x6E9
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_269:
	movl	$.L.str.53, %esi
	movl	$1693, %edi             # imm = 0x69D
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_270:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_271:
	movl	$.L.str.54, %esi
	movl	$1697, %edi             # imm = 0x6A1
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_272:
	movl	$.L.str.55, %esi
	movl	$1709, %edi             # imm = 0x6AD
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_273:
	movl	$.L.str.57, %esi
	movl	$1735, %edi             # imm = 0x6C7
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_274:
	movl	$.L.str.58, %esi
	movl	$1742, %edi             # imm = 0x6CE
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_275:
	movl	$.L.str.52, %esi
	movl	$1679, %edi             # imm = 0x68F
	jmp	.LBB46_277
.LBB46_276:
	movl	$.L.str.52, %esi
	movl	$1840, %edi             # imm = 0x730
.LBB46_277:
	movl	%r14d, %edx
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_278:
	leaq	-80(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	moduleTypeNameByID
	movl	$.L.str.63, %esi
	jmp	.LBB46_281
.LBB46_279:
	leaq	-80(%rbp), %rdx
	movl	$.L.str.64, %esi
	movl	$3, %edi
	jmp	.LBB46_282
.LBB46_280:
	leaq	-80(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	moduleTypeNameByID
	movl	$.L.str.65, %esi
.LBB46_281:
	movl	$3, %edi
	movq	%r14, %rdx
.LBB46_282:
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end46:
	.size	rdbLoadObject, .Lfunc_end46-rdbLoadObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI46_0:
	.quad	.LBB46_25
	.quad	.LBB46_28
	.quad	.LBB46_26
	.quad	.LBB46_27
	.quad	.LBB46_20
.LJTI46_1:
	.quad	.LBB46_16
	.quad	.LBB46_48
	.quad	.LBB46_16
	.quad	.LBB46_93
	.quad	.LBB46_93
	.quad	.LBB46_93
	.quad	.LBB46_93
	.quad	.LBB46_93
	.quad	.LBB46_93
	.quad	.LBB46_93
	.quad	.LBB46_93
	.quad	.LBB46_41
.LJTI46_2:
	.quad	.LBB46_59
	.quad	.LBB46_63
	.quad	.LBB46_61
	.quad	.LBB46_62
	.quad	.LBB46_60
.LJTI46_3:
	.quad	.LBB46_67
	.quad	.LBB46_71
	.quad	.LBB46_69
	.quad	.LBB46_70
	.quad	.LBB46_68
.LJTI46_4:
	.quad	.LBB46_75
	.quad	.LBB46_79
	.quad	.LBB46_77
	.quad	.LBB46_78
	.quad	.LBB46_76
.LJTI46_5:
	.quad	.LBB46_83
	.quad	.LBB46_88
	.quad	.LBB46_86
	.quad	.LBB46_87
	.quad	.LBB46_85
.LJTI46_6:
	.quad	.LBB46_119
	.quad	.LBB46_123
	.quad	.LBB46_121
	.quad	.LBB46_122
	.quad	.LBB46_120
.LJTI46_7:
	.quad	.LBB46_127
	.quad	.LBB46_131
	.quad	.LBB46_129
	.quad	.LBB46_130
	.quad	.LBB46_128
.LJTI46_8:
	.quad	.LBB46_148
	.quad	.LBB46_152
	.quad	.LBB46_150
	.quad	.LBB46_151
	.quad	.LBB46_149
.LJTI46_9:
	.quad	.LBB46_187
	.quad	.LBB46_191
	.quad	.LBB46_189
	.quad	.LBB46_190
	.quad	.LBB46_188
.LJTI46_10:
	.quad	.LBB46_97
	.quad	.LBB46_262
	.quad	.LBB46_257
	.quad	.LBB46_259
	.quad	.LBB46_254
                                        # -- End function
	.text
	.globl	startLoading            # -- Begin function startLoading
	.p2align	4, 0x90
	.type	startLoading,@function
startLoading:                           # @startLoading
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
	movq	%rdi, %rbx
	movl	$1, server+860(%rip)
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+880(%rip)
	movq	$0, server+872(%rip)
	movq	%rbx, %rdi
	callq	fileno
	leaq	-104(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$-1, %eax
	je	.LBB47_2
# %bb.1:
	movq	-88(%rbp), %r14
.LBB47_2:
	movq	%r14, server+864(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end47:
	.size	startLoading, .Lfunc_end47-startLoading
                                        # -- End function
	.globl	loadingProgress         # -- Begin function loadingProgress
	.p2align	4, 0x90
	.type	loadingProgress,@function
loadingProgress:                        # @loadingProgress
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, server+872(%rip)
	movq	server+1112(%rip), %rbx
	callq	zmalloc_used_memory
	cmpq	%rax, %rbx
	jae	.LBB48_2
# %bb.1:
	callq	zmalloc_used_memory
	movq	%rax, server+1112(%rip)
.LBB48_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end48:
	.size	loadingProgress, .Lfunc_end48-loadingProgress
                                        # -- End function
	.globl	stopLoading             # -- Begin function stopLoading
	.p2align	4, 0x90
	.type	stopLoading,@function
stopLoading:                            # @stopLoading
# %bb.0:
	movl	$0, server+860(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end49:
	.size	stopLoading, .Lfunc_end49-stopLoading
                                        # -- End function
	.globl	rdbLoadProgressCallback # -- Begin function rdbLoadProgressCallback
	.p2align	4, 0x90
	.type	rdbLoadProgressCallback,@function
rdbLoadProgressCallback:                # @rdbLoadProgressCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rdi, %r14
	cmpl	$0, server+2132(%rip)
	je	.LBB50_2
# %bb.1:
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	rioGenericUpdateChecksum
.LBB50_2:
	movq	server+888(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB50_10
# %bb.3:
	movq	48(%r14), %rcx
	addq	%rcx, %rbx
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rax, %rsi
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
	cmpq	%rax, %rsi
	jbe	.LBB50_10
# %bb.4:
	callq	updateCachedTime
	cmpq	$0, server+2464(%rip)
	je	.LBB50_7
# %bb.5:
	cmpl	$14, server+2500(%rip)
	jne	.LBB50_7
# %bb.6:
	callq	replicationSendNewlineToMaster
.LBB50_7:
	movq	48(%r14), %rax
	movq	%rax, server+872(%rip)
	movq	server+1112(%rip), %rbx
	callq	zmalloc_used_memory
	cmpq	%rax, %rbx
	jae	.LBB50_9
# %bb.8:
	callq	zmalloc_used_memory
	movq	%rax, server+1112(%rip)
.LBB50_9:
	movl	$42, __A_VARIABLE(%rip)
	callq	processEventsWhileBlocked
.LBB50_10:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end50:
	.size	rdbLoadProgressCallback, .Lfunc_end50-rdbLoadProgressCallback
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function rdbLoadRio
.LCPI51_0:
	.zero	16
	.text
	.globl	rdbLoadRio
	.p2align	4, 0x90
	.type	rdbLoadRio,@function
rdbLoadRio:                             # @rdbLoadRio
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1176, %rsp             # imm = 0x498
	movl	%edx, %r12d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r13
	movq	server+48(%rip), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	$rdbLoadProgressCallback, 32(%rdi)
	movq	server+888(%rip), %rbx
	movq	%rbx, 56(%rdi)
	leaq	-1(%rbx), %rax
	cmpq	$8, %rax
	movl	$9, %r15d
	cmovaeq	%r15, %rbx
	leaq	-1216(%rbp), %r14
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB51_129
	.p2align	4, 0x90
.LBB51_2:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB51_4
# %bb.3:                                #   in Loop: Header=BB51_2 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
.LBB51_4:                               #   in Loop: Header=BB51_2 Depth=1
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	je	.LBB51_6
# %bb.5:                                #   in Loop: Header=BB51_2 Depth=1
	addq	%rbx, %r14
	movq	56(%r13), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	testq	%rax, %rax
	jne	.LBB51_2
	jmp	.LBB51_129
.LBB51_6:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -1207(%rbp)
	leaq	-1216(%rbp), %rdi
	movl	$.L.str.66, %esi
	movl	$5, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB51_9
# %bb.7:
	movl	$.L.str.67, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB51_8
.LBB51_9:
	leaq	-1211(%rbp), %rdi
	callq	atoi
	movl	%eax, %edx
	leal	-1(%rdx), %eax
	cmpl	$9, %eax
	jb	.LBB51_11
# %bb.10:
	movl	$.L.str.68, %esi
	movl	$3, %edi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB51_8:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %r14d
.LBB51_116:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$1176, %rsp             # imm = 0x498
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB51_11:
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	mstime
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	LRU_CLOCK
	movl	%eax, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$8, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	$-1, -56(%rbp)          # 8-byte Folded Spill
	movq	$-1, -128(%rbp)         # 8-byte Folded Spill
	movq	$-1, -64(%rbp)          # 8-byte Folded Spill
	movl	%r12d, -144(%rbp)       # 4-byte Spill
	jmp	.LBB51_12
.LBB51_32:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB51_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_13 Depth 2
                                        #     Child Loop BB51_20 Depth 2
                                        #     Child Loop BB51_28 Depth 2
                                        #     Child Loop BB51_34 Depth 2
	movl	$1, %r15d
	leaq	-120(%rbp), %r14
	jmp	.LBB51_13
	.p2align	4, 0x90
.LBB51_16:                              #   in Loop: Header=BB51_13 Depth=2
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	je	.LBB51_17
.LBB51_13:                              #   Parent Loop BB51_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r13), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	testq	%rax, %rax
	je	.LBB51_128
# %bb.14:                               #   in Loop: Header=BB51_13 Depth=2
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB51_16
# %bb.15:                               #   in Loop: Header=BB51_13 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB51_16
	.p2align	4, 0x90
.LBB51_17:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-120(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	leal	9(%rbx), %eax
	cmpb	$8, %al
	ja	.LBB51_100
# %bb.18:                               #   in Loop: Header=BB51_12 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI51_0(,%rax,8)
.LBB51_77:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-120(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %r14
	cmpl	$-1, %eax
	je	.LBB51_79
# %bb.78:                               #   in Loop: Header=BB51_12 Depth=1
	movq	-120(%rbp), %r14
.LBB51_79:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-120(%rbp), %r15
	movq	%r15, %rdx
	callq	rdbLoadLenByRef
	movl	%eax, %ebx
	movl	-120(%rbp), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	rdbLoadLenByRef
	movl	%eax, %r15d
	cmpl	$-1, %eax
	je	.LBB51_81
# %bb.80:                               #   in Loop: Header=BB51_12 Depth=1
	movl	-120(%rbp), %r15d
.LBB51_81:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB51_133
# %bb.82:                               #   in Loop: Header=BB51_12 Depth=1
	cmpl	$2, %r12d
	jne	.LBB51_133
# %bb.83:                               #   in Loop: Header=BB51_12 Depth=1
	movq	%r14, %rdi
	callq	moduleTypeLookupModuleByID
	movq	%rax, %rbx
	leaq	-138(%rbp), %rdi
	movq	%r14, %rsi
	callq	moduleTypeNameByID
	movl	rdbCheckMode(%rip), %eax
	testq	%rbx, %rbx
	jne	.LBB51_88
# %bb.84:                               #   in Loop: Header=BB51_12 Depth=1
	testl	%eax, %eax
	je	.LBB51_85
.LBB51_88:                              #   in Loop: Header=BB51_12 Depth=1
	testq	%rbx, %rbx
	movl	-144(%rbp), %r12d       # 4-byte Reload
	je	.LBB51_99
# %bb.89:                               #   in Loop: Header=BB51_12 Depth=1
	testl	%eax, %eax
	jne	.LBB51_99
# %bb.90:                               #   in Loop: Header=BB51_12 Depth=1
	movq	64(%rbx), %rax
	testq	%rax, %rax
	je	.LBB51_91
# %bb.92:                               #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	$0, -120(%rbp)
	movabsq	$8589934592, %rcx       # imm = 0x200000000
	movq	%rcx, -96(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -88(%rbp)
	movl	%r14d, %esi
	andl	$1023, %esi             # imm = 0x3FF
	leaq	-120(%rbp), %rdi
	movl	%r15d, %edx
	callq	*%rax
	orl	-96(%rbp), %eax
	jne	.LBB51_93
# %bb.94:                               #   in Loop: Header=BB51_12 Depth=1
	movq	-88(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB51_96
# %bb.95:                               #   in Loop: Header=BB51_12 Depth=1
	callq	moduleFreeContext
	movq	-88(%rbp), %rdi
	callq	zfree
.LBB51_96:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-184(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	-184(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_98
# %bb.97:                               #   in Loop: Header=BB51_12 Depth=1
	testq	%rcx, %rcx
	je	.LBB51_12
	jmp	.LBB51_98
.LBB51_100:                             #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_130
# %bb.101:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%rax, %r14
	movl	%ebx, %edi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	rdbLoadObject
	testq	%rax, %rax
	je	.LBB51_130
# %bb.102:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%rax, %rbx
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	-176(%rbp), %rax        # 8-byte Folded Reload
	jge	.LBB51_108
# %bb.103:                              #   in Loop: Header=BB51_12 Depth=1
	cmpq	$-1, %rax
	je	.LBB51_108
# %bb.104:                              #   in Loop: Header=BB51_12 Depth=1
	testl	%r12d, %r12d
	jne	.LBB51_108
# %bb.105:                              #   in Loop: Header=BB51_12 Depth=1
	cmpq	$0, server+2464(%rip)
	jne	.LBB51_108
# %bb.106:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r14, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	jmp	.LBB51_107
.LBB51_46:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-120(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	-120(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_130
# %bb.47:                               #   in Loop: Header=BB51_12 Depth=1
	cmpq	$-1, %r14
	je	.LBB51_130
# %bb.48:                               #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-120(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	-120(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_130
# %bb.49:                               #   in Loop: Header=BB51_12 Depth=1
	cmpq	$-1, %rbx
	je	.LBB51_130
# %bb.50:                               #   in Loop: Header=BB51_12 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	movq	%r14, %rsi
	callq	dictExpand
	movq	8(%r15), %rdi
	movq	%rbx, %rsi
	callq	dictExpand
	jmp	.LBB51_12
.LBB51_33:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$1, %r15d
	leaq	-120(%rbp), %r14
	jmp	.LBB51_34
	.p2align	4, 0x90
.LBB51_37:                              #   in Loop: Header=BB51_34 Depth=2
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	je	.LBB51_38
.LBB51_34:                              #   Parent Loop BB51_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r13), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	testq	%rax, %rax
	je	.LBB51_111
# %bb.35:                               #   in Loop: Header=BB51_34 Depth=2
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB51_37
# %bb.36:                               #   in Loop: Header=BB51_34 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB51_37
.LBB51_51:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_130
# %bb.52:                               #   in Loop: Header=BB51_12 Depth=1
	movq	%rax, %r15
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_130
# %bb.53:                               #   in Loop: Header=BB51_12 Depth=1
	movq	%rax, %r14
	movq	8(%r15), %rbx
	cmpb	$37, (%rbx)
	jne	.LBB51_55
# %bb.54:                               #   in Loop: Header=BB51_12 Depth=1
	movq	8(%r14), %rcx
	movl	$.L.str.70, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB51_76:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r15, %rdi
	callq	decrRefCount
	movq	%r14, %rdi
	callq	decrRefCount
	jmp	.LBB51_12
.LBB51_42:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-120(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	-120(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_130
# %bb.43:                               #   in Loop: Header=BB51_12 Depth=1
	cmpq	$-1, %rcx
	je	.LBB51_130
# %bb.44:                               #   in Loop: Header=BB51_12 Depth=1
	movl	server+1792(%rip), %edx
	cmpq	%rdx, %rcx
	jae	.LBB51_132
# %bb.45:                               #   in Loop: Header=BB51_12 Depth=1
	shlq	$6, %rcx
	addq	server+48(%rip), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB51_12
.LBB51_39:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-120(%rbp), %rdx
	callq	rdbLoadLenByRef
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB51_41
# %bb.40:                               #   in Loop: Header=BB51_12 Depth=1
	movq	-120(%rbp), %rcx
.LBB51_41:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpq	$-1, %rcx
	sete	%al
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmovneq	%rcx, %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	xorl	$3, %eax
	testb	%al, %al
	jne	.LBB51_113
	jmp	.LBB51_12
.LBB51_27:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$8, %r15d
	leaq	-120(%rbp), %r14
	jmp	.LBB51_28
	.p2align	4, 0x90
.LBB51_31:                              #   in Loop: Header=BB51_28 Depth=2
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	je	.LBB51_32
.LBB51_28:                              #   Parent Loop BB51_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r13), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	testq	%rax, %rax
	je	.LBB51_131
# %bb.29:                               #   in Loop: Header=BB51_28 Depth=2
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB51_31
# %bb.30:                               #   in Loop: Header=BB51_28 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB51_31
.LBB51_19:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$4, %r15d
	leaq	-120(%rbp), %r14
	jmp	.LBB51_20
	.p2align	4, 0x90
.LBB51_23:                              #   in Loop: Header=BB51_20 Depth=2
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	subq	%rbx, %r15
	je	.LBB51_24
.LBB51_20:                              #   Parent Loop BB51_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r13), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	testq	%rax, %rax
	je	.LBB51_25
# %bb.21:                               #   in Loop: Header=BB51_20 Depth=2
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB51_23
# %bb.22:                               #   in Loop: Header=BB51_20 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB51_23
.LBB51_24:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-120(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB51_12
.LBB51_111:                             #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	testb	%al, %al
	jne	.LBB51_113
	jmp	.LBB51_12
.LBB51_55:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB51_56
# %bb.58:                               #   in Loop: Header=BB51_12 Depth=1
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB51_59
# %bb.69:                               #   in Loop: Header=BB51_12 Depth=1
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB51_70
# %bb.72:                               #   in Loop: Header=BB51_12 Depth=1
	movl	$.L.str.30, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB51_73
# %bb.75:                               #   in Loop: Header=BB51_12 Depth=1
	movl	$.L.str.72, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB51_76
.LBB51_108:                             #   in Loop: Header=BB51_12 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	dbAdd
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	$-1, %rcx
	je	.LBB51_110
# %bb.109:                              #   in Loop: Header=BB51_12 Depth=1
	xorl	%edi, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	setExpire
.LBB51_110:                             #   in Loop: Header=BB51_12 Depth=1
	movq	%rbx, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	objectSetLRUOrLFU
	movq	%r14, %rdi
.LBB51_107:                             #   in Loop: Header=BB51_12 Depth=1
	callq	decrRefCount
	movq	$-1, -56(%rbp)          # 8-byte Folded Spill
	movq	$-1, -128(%rbp)         # 8-byte Folded Spill
	movq	$-1, -64(%rbp)          # 8-byte Folded Spill
	jmp	.LBB51_12
.LBB51_99:                              #   in Loop: Header=BB51_12 Depth=1
	movq	%r13, %rdi
	leaq	-138(%rbp), %rsi
	callq	rdbLoadCheckModuleValue
	movq	%rax, %rdi
	callq	decrRefCount
	jmp	.LBB51_12
.LBB51_38:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-120(%rbp), %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$3, %eax
	testb	%al, %al
	je	.LBB51_12
.LBB51_113:                             #   in Loop: Header=BB51_12 Depth=1
	cmpb	$3, %al
	jne	.LBB51_114
	jmp	.LBB51_12
.LBB51_56:                              #   in Loop: Header=BB51_12 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB51_76
# %bb.57:                               #   in Loop: Header=BB51_12 Depth=1
	movq	8(%r14), %rdi
	callq	atoi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB51_76
.LBB51_59:                              #   in Loop: Header=BB51_12 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB51_76
# %bb.60:                               #   in Loop: Header=BB51_12 Depth=1
	movq	8(%r14), %rsi
	movb	-1(%rsi), %al
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB51_65
# %bb.61:                               #   in Loop: Header=BB51_12 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI51_1(,%rax,8)
.LBB51_66:                              #   in Loop: Header=BB51_12 Depth=1
	movzbl	-3(%rsi), %eax
	jmp	.LBB51_67
.LBB51_70:                              #   in Loop: Header=BB51_12 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB51_76
# %bb.71:                               #   in Loop: Header=BB51_12 Depth=1
	movq	8(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 56(%rcx)
	jmp	.LBB51_76
.LBB51_73:                              #   in Loop: Header=BB51_12 Depth=1
	movq	server+2992(%rip), %rsi
	xorl	%edi, %edi
	movq	%r14, %rdx
	callq	luaCreateFunction
	testq	%rax, %rax
	jne	.LBB51_76
	jmp	.LBB51_74
.LBB51_63:                              #   in Loop: Header=BB51_12 Depth=1
	movl	-9(%rsi), %eax
	jmp	.LBB51_67
.LBB51_64:                              #   in Loop: Header=BB51_12 Depth=1
	movq	-17(%rsi), %rax
	jmp	.LBB51_67
.LBB51_62:                              #   in Loop: Header=BB51_12 Depth=1
	movzwl	-5(%rsi), %eax
.LBB51_67:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rax
	jne	.LBB51_76
# %bb.68:                               #   in Loop: Header=BB51_12 Depth=1
	movl	$41, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	memcpy
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$1, 4(%rax)
	jmp	.LBB51_76
.LBB51_65:                              #   in Loop: Header=BB51_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB51_76
.LBB51_114:
	cmpb	$2, %al
	je	.LBB51_130
# %bb.115:                              # %.loopexit1
                                        # implicit-def: $r14d
	jmp	.LBB51_116
.LBB51_117:
	xorl	%r14d, %r14d
	cmpl	$5, -160(%rbp)          # 4-byte Folded Reload
	jl	.LBB51_116
# %bb.118:
	leaq	-120(%rbp), %r15
	movq	40(%r13), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$8, %r12d
	jmp	.LBB51_119
	.p2align	4, 0x90
.LBB51_122:                             #   in Loop: Header=BB51_119 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	subq	%rbx, %r12
	je	.LBB51_123
.LBB51_119:                             # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	testq	%rax, %rax
	je	.LBB51_129
# %bb.120:                              #   in Loop: Header=BB51_119 Depth=1
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB51_122
# %bb.121:                              #   in Loop: Header=BB51_119 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB51_122
.LBB51_123:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+2132(%rip)
	je	.LBB51_116
# %bb.124:
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.LBB51_125
# %bb.126:
	cmpq	-72(%rbp), %rax         # 8-byte Folded Reload
	je	.LBB51_116
# %bb.127:
	movl	$.L.str.79, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.80, %esi
	movl	$2116, %edi             # imm = 0x844
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB51_125:
	movl	$.L.str.78, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB51_116
.LBB51_128:
	movl	$42, __A_VARIABLE(%rip)
.LBB51_129:
	movl	$42, __A_VARIABLE(%rip)
.LBB51_130:
	movl	$.L.str.81, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.82, %esi
	movl	$2124, %edi             # imm = 0x84C
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB51_131:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %esi
	movl	$8, %edx
	jmp	.LBB51_26
.LBB51_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %esi
	movl	$4, %edx
.LBB51_26:
	movl	$85, %edi
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB51_133:
	movl	$.L.str.73, %esi
	movl	$2028, %edi             # imm = 0x7EC
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB51_132:
	movl	$.L.str.69, %esi
	movl	$3, %edi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB51_74:
	movq	8(%r14), %rdx
	movl	$.L.str.71, %esi
	movl	$2008, %edi             # imm = 0x7D8
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB51_85:
	leaq	-138(%rbp), %rdx
	movl	$.L.str.74, %esi
	jmp	.LBB51_86
.LBB51_91:
	leaq	-138(%rbp), %rdx
	movl	$.L.str.75, %esi
	jmp	.LBB51_86
.LBB51_93:
	leaq	-138(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	moduleTypeNameByID
	movl	$.L.str.76, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	jmp	.LBB51_87
.LBB51_98:
	leaq	-138(%rbp), %rdx
	movl	$.L.str.77, %esi
.LBB51_86:
	movl	$3, %edi
.LBB51_87:
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end51:
	.size	rdbLoadRio, .Lfunc_end51-rdbLoadRio
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI51_0:
	.quad	.LBB51_77
	.quad	.LBB51_39
	.quad	.LBB51_33
	.quad	.LBB51_51
	.quad	.LBB51_46
	.quad	.LBB51_27
	.quad	.LBB51_19
	.quad	.LBB51_42
	.quad	.LBB51_117
.LJTI51_1:
	.quad	.LBB51_66
	.quad	.LBB51_62
	.quad	.LBB51_63
	.quad	.LBB51_64
                                        # -- End function
	.text
	.globl	rdbLoad                 # -- Begin function rdbLoad
	.p2align	4, 0x90
	.type	rdbLoad,@function
rdbLoad:                                # @rdbLoad
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
	movq	%rsi, %r14
	movl	$.L.str.83, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB52_1
# %bb.2:
	movq	%rax, %rbx
	movl	$1, server+860(%rip)
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+880(%rip)
	movq	$0, server+872(%rip)
	movq	%rbx, %rdi
	callq	fileno
	leaq	-128(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$-1, %eax
	je	.LBB52_4
# %bb.3:
	movq	-112(%rbp), %r15
.LBB52_4:
	movq	%r15, server+864(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-128(%rbp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	rioInitWithFile
	movq	%r15, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	rdbLoadRio
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	fclose
	movl	$0, server+860(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB52_5
.LBB52_1:
	movl	$-1, %r14d
.LBB52_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	rdbLoad, .Lfunc_end52-rdbLoad
                                        # -- End function
	.globl	backgroundSaveDoneHandlerDisk # -- Begin function backgroundSaveDoneHandlerDisk
	.p2align	4, 0x90
	.type	backgroundSaveDoneHandlerDisk,@function
backgroundSaveDoneHandlerDisk:          # @backgroundSaveDoneHandlerDisk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movl	%esi, %r13d
	orl	%edi, %r13d
	je	.LBB53_1
# %bb.2:
	movl	%esi, %r12d
	testl	%edi, %edi
	je	.LBB53_5
# %bb.3:
	testl	%r12d, %r12d
	jne	.LBB53_5
# %bb.4:
	movl	$.L.str.85, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$-1, %ebx
	jmp	.LBB53_12
.LBB53_1:
	xorl	%ebx, %ebx
	movl	$.L.str.84, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2088(%rip), %rax
	subq	%rax, server+2080(%rip)
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2136(%rip)
	jmp	.LBB53_12
.LBB53_5:
	xorl	%r14d, %r14d
	movl	$.L.str.86, %esi
	movl	$3, %edi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	serverLog
	cmpq	$0, server+3096(%rip)
	je	.LBB53_7
# %bb.6:
	callq	mstime
	movq	%rax, %r14
.LBB53_7:
	movl	server+2096(%rip), %ecx
	leaq	-304(%rbp), %r15
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.33, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	%r15, %rdi
	callq	unlink
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, server+3096(%rip)
	je	.LBB53_11
# %bb.8:
	callq	mstime
	movq	server+3096(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB53_11
# %bb.9:
	subq	%r14, %rax
	cmpq	%rcx, %rax
	jl	.LBB53_11
# %bb.10:
	movl	$.L.str.87, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
.LBB53_11:
	movl	$-1, %ebx
	cmpl	$10, %r12d
	je	.LBB53_13
.LBB53_12:
	movl	%ebx, server+2176(%rip)
.LBB53_13:
	movl	$-1, server+2096(%rip)
	movl	$0, server+2172(%rip)
	xorl	%edi, %edi
	callq	time
	subq	server+2160(%rip), %rax
	movq	%rax, server+2152(%rip)
	movq	$-1, server+2160(%rip)
	negl	%r13d
	sbbl	%edi, %edi
	movl	$1, %esi
	callq	updateSlavesWaitingBgsave
	movl	$42, __A_VARIABLE(%rip)
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	backgroundSaveDoneHandlerDisk, .Lfunc_end53-backgroundSaveDoneHandlerDisk
                                        # -- End function
	.globl	backgroundSaveDoneHandlerSocket # -- Begin function backgroundSaveDoneHandlerSocket
	.p2align	4, 0x90
	.type	backgroundSaveDoneHandlerSocket,@function
backgroundSaveDoneHandlerSocket:        # @backgroundSaveDoneHandlerSocket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%esi, %ebx
	orl	%edi, %ebx
	je	.LBB54_1
# %bb.3:
	movl	%esi, %edx
	testl	%edi, %edi
	je	.LBB54_6
# %bb.4:
	testl	%edx, %edx
	jne	.LBB54_6
# %bb.5:
	movl	$.L.str.89, %esi
	movl	$3, %edi
	jmp	.LBB54_2
.LBB54_1:
	movl	$.L.str.88, %esi
	movl	$2, %edi
.LBB54_2:
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB54_7
.LBB54_6:
	movl	$.L.str.90, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB54_7:
	movl	$-1, server+2096(%rip)
	movl	$0, server+2172(%rip)
	movq	$-1, server+2160(%rip)
	movl	$8, %edi
	callq	zmalloc
	movq	%rax, %r14
	movq	$0, (%rax)
	testl	%ebx, %ebx
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	jne	.LBB54_12
# %bb.8:
	movl	server+2188(%rip), %edi
	movl	$8, %edx
	movq	%r14, %rsi
	callq	read
	cmpq	$8, %rax
	jne	.LBB54_12
# %bb.9:
	movl	(%r14), %eax
	shll	$4, %eax
	movslq	%eax, %rbx
	leaq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	zrealloc
	movq	%rax, %r14
	testl	%ebx, %ebx
	je	.LBB54_12
# %bb.10:
	movl	server+2188(%rip), %edi
	movq	%r14, %rsi
	addq	$8, %rsi
	movq	%rbx, %rdx
	callq	read
	cmpq	%rbx, %rax
	je	.LBB54_12
# %bb.11:
	movq	$0, (%r14)
.LBB54_12:
	movl	server+2188(%rip), %edi
	callq	close
	movl	server+2184(%rip), %edi
	callq	close
	movq	server+536(%rip), %rdi
	leaq	-80(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB54_30
# %bb.13:                               # %.preheader
	leaq	16(%r14), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	-80(%rbp), %rbx
	movq	%r14, -56(%rbp)         # 8-byte Spill
	jmp	.LBB54_14
	.p2align	4, 0x90
.LBB54_27:                              #   in Loop: Header=BB54_14 Depth=1
	movl	$.L.str.93, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	8(%r13), %esi
	xorl	%edi, %edi
	callq	anetNonBlock
	movl	8(%r13), %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	anetSendTimeout
.LBB54_28:                              #   in Loop: Header=BB54_14 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	leaq	-80(%rbp), %rbx
.LBB54_29:                              #   in Loop: Header=BB54_14 Depth=1
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB54_30
.LBB54_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_18 Depth 2
	movq	16(%rax), %r13
	cmpl	$7, 168(%r13)
	jne	.LBB54_29
# %bb.15:                               #   in Loop: Header=BB54_14 Depth=1
	movq	(%r14), %r14
	xorl	%r12d, %r12d
	testq	%r14, %r14
	je	.LBB54_16
# %bb.17:                               #   in Loop: Header=BB54_14 Depth=1
	movq	(%r13), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB54_18:                              #   Parent Loop BB54_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	-8(%rcx), %rax
	je	.LBB54_19
# %bb.20:                               #   in Loop: Header=BB54_18 Depth=2
	addq	$1, %r15
	addq	$16, %rcx
	cmpq	%r14, %r15
	jb	.LBB54_18
	jmp	.LBB54_21
.LBB54_16:                              #   in Loop: Header=BB54_14 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB54_21
.LBB54_19:                              #   in Loop: Header=BB54_14 Depth=1
	movl	(%rcx), %r12d
.LBB54_21:                              #   in Loop: Header=BB54_14 Depth=1
	movq	%r13, %rdi
	callq	replicationGetSlaveName
	movq	%rax, %rbx
	cmpq	%r14, %r15
	je	.LBB54_23
# %bb.22:                               #   in Loop: Header=BB54_14 Depth=1
	testl	%r12d, %r12d
	je	.LBB54_27
.LBB54_23:                              #   in Loop: Header=BB54_14 Depth=1
	testl	%r12d, %r12d
	je	.LBB54_24
# %bb.25:                               #   in Loop: Header=BB54_14 Depth=1
	movl	%r12d, %edi
	callq	strerror
	movq	%rax, %rcx
	jmp	.LBB54_26
.LBB54_24:                              #   in Loop: Header=BB54_14 Depth=1
	movl	$.L.str.92, %ecx
.LBB54_26:                              #   in Loop: Header=BB54_14 Depth=1
	movl	$.L.str.91, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r13, %rdi
	callq	freeClient
	jmp	.LBB54_28
.LBB54_30:
	movq	%r14, %rdi
	callq	zfree
	negl	-44(%rbp)               # 4-byte Folded Spill
	sbbl	%edi, %edi
	movl	$2, %esi
	callq	updateSlavesWaitingBgsave
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	backgroundSaveDoneHandlerSocket, .Lfunc_end54-backgroundSaveDoneHandlerSocket
                                        # -- End function
	.globl	backgroundSaveDoneHandler # -- Begin function backgroundSaveDoneHandler
	.p2align	4, 0x90
	.type	backgroundSaveDoneHandler,@function
backgroundSaveDoneHandler:              # @backgroundSaveDoneHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	server+2172(%rip), %eax
	cmpl	$2, %eax
	je	.LBB55_4
# %bb.1:
	cmpl	$1, %eax
	jne	.LBB55_3
# %bb.2:
	callq	backgroundSaveDoneHandlerDisk
	jmp	.LBB55_5
.LBB55_4:
	callq	backgroundSaveDoneHandlerSocket
.LBB55_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB55_3:
	movl	$.L.str.8, %edi
	movl	$.L.str.94, %edx
	movl	$2289, %esi             # imm = 0x8F1
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end55:
	.size	backgroundSaveDoneHandler, .Lfunc_end55-backgroundSaveDoneHandler
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function rdbSaveToSlavesSockets
.LCPI56_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI56_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI56_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI56_3:
	.quad	4472074429978902528     # double 9.3132257461547852E-10
	.text
	.globl	rdbSaveToSlavesSockets
	.p2align	4, 0x90
	.type	rdbSaveToSlavesSockets,@function
rdbSaveToSlavesSockets:                 # @rdbSaveToSlavesSockets
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movl	server+2096(%rip), %eax
	andl	server+1940(%rip), %eax
	movl	$-1, %r15d
	cmpl	$-1, %eax
	je	.LBB56_1
.LBB56_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB56_1:
	movq	%rdi, %rbx
	leaq	-48(%rbp), %rdi
	callq	pipe
	cmpl	$-1, %eax
	je	.LBB56_41
# %bb.2:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	movl	%eax, server+2188(%rip)
	movl	%ecx, server+2184(%rip)
	movq	server+536(%rip), %rax
	movq	40(%rax), %rdi
	shlq	$2, %rdi
	callq	zmalloc
	movq	%rax, %r14
	movq	server+536(%rip), %rax
	movq	40(%rax), %rdi
	shlq	$3, %rdi
	callq	zmalloc
	movq	%rax, %r13
	movq	server+536(%rip), %rdi
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB56_7
# %bb.3:                                # %.preheader4
	leaq	-72(%rbp), %r15
	jmp	.LBB56_4
	.p2align	4, 0x90
.LBB56_6:                               #   in Loop: Header=BB56_4 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_7
.LBB56_4:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	cmpl	$6, 168(%rbx)
	jne	.LBB56_6
# %bb.5:                                #   in Loop: Header=BB56_4 Depth=1
	movq	(%rbx), %rax
	movslq	%r12d, %rcx
	movq	%rax, (%r13,%rcx,8)
	movl	8(%rbx), %eax
	leal	1(%rcx), %r12d
	movl	%eax, (%r14,%rcx,4)
	callq	getPsyncInitialOffset
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	replicationSetupSlaveForFullResync
	movl	8(%rbx), %esi
	xorl	%edi, %edi
	callq	anetBlock
	movl	8(%rbx), %esi
	movslq	server+2476(%rip), %rax
	imulq	$1000, %rax, %rdx       # imm = 0x3E8
	xorl	%edi, %edi
	callq	anetSendTimeout
	jmp	.LBB56_6
.LBB56_7:
	callq	openChildInfoPipe
	callq	ustime
	movq	%rax, %r15
	callq	fork
	testl	%eax, %eax
	je	.LBB56_8
# %bb.26:
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	.LBB56_27
# %bb.36:
	callq	ustime
	subq	%r15, %rax
	movq	%rax, server+1120(%rip)
	callq	zmalloc_used_memory
	movq	%rax, %xmm0
	punpckldq	.LCPI56_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI56_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	mulsd	.LCPI56_2(%rip), %xmm1
	movq	server+1120(%rip), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	%xmm0, %xmm1
	mulsd	.LCPI56_3(%rip), %xmm1
	movsd	%xmm1, server+1128(%rip)
	movq	server+3096(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB56_39
# %bb.37:
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB56_39
# %bb.38:
	movl	$.L.str.42, %edi
	movq	%rdx, %rsi
	callq	latencyAddSample
.LBB56_39:
	movl	$.L.str.96, %esi
	movl	$2, %edi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	serverLog
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2160(%rip)
	movl	%ebx, server+2096(%rip)
	movl	$2, server+2172(%rip)
	callq	updateDictResizePolicy
	jmp	.LBB56_40
.LBB56_8:
	leaq	-176(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	rioInitWithFdset
	movq	%r14, %rdi
	callq	zfree
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	closeListeningSockets
	movl	$.L.str.95, %edi
	callq	redisSetProcTitle
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	rdbSaveRioWithEOFMark
	movl	%eax, %r14d
	testl	%eax, %eax
	jne	.LBB56_25
# %bb.9:
	leaq	-176(%rbp), %rdi
	callq	*-152(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB56_10
# %bb.11:
	movq	$-1, %rdi
	callq	zmalloc_get_private_dirty
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB56_13
# %bb.12:
	movq	%rbx, %rdx
	shrq	$20, %rdx
	movl	$.L.str.41, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB56_13:
	movq	%rbx, server+2208(%rip)
	xorl	%edi, %edi
	callq	sendChildInfo
	leal	(%r12,%r12), %eax
	addl	$1, %eax
	movslq	%eax, %r14
	leaq	(,%r14,8), %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movslq	%r12d, %rax
	movq	%rax, (%rbx)
	testl	%r12d, %r12d
	jle	.LBB56_21
# %bb.14:
	movq	%rbx, %rax
	addq	$8, %rax
	movl	%r12d, %esi
	leaq	-1(%rsi), %rdx
	movl	%esi, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	.LBB56_16
# %bb.15:
	xorl	%edx, %edx
	jmp	.LBB56_18
.LBB56_27:
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.43, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+536(%rip), %rdi
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_35
# %bb.28:
	movslq	%r12d, %rbx
	leaq	-72(%rbp), %r15
	jmp	.LBB56_29
	.p2align	4, 0x90
.LBB56_33:                              #   in Loop: Header=BB56_29 Depth=1
	movl	$6, 168(%rax)
.LBB56_34:                              #   in Loop: Header=BB56_29 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_35
.LBB56_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_32 Depth 2
	testl	%r12d, %r12d
	jle	.LBB56_34
# %bb.30:                               #   in Loop: Header=BB56_29 Depth=1
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB56_32:                              #   Parent Loop BB56_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	(%r13,%rdx,8), %rcx
	je	.LBB56_33
# %bb.31:                               #   in Loop: Header=BB56_32 Depth=2
	addq	$1, %rdx
	cmpq	%rbx, %rdx
	jl	.LBB56_32
	jmp	.LBB56_34
.LBB56_35:
	movl	-48(%rbp), %edi
	callq	close
	movl	-44(%rbp), %edi
	callq	close
	callq	closeChildInfoPipe
	movl	-56(%rbp), %ebx         # 4-byte Reload
.LBB56_40:
	xorl	%r15d, %r15d
	cmpl	$-1, %ebx
	sete	%r15b
	movq	%r13, %rdi
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	negl	%r15d
	jmp	.LBB56_41
.LBB56_10:
	movl	$-1, %r14d
	jmp	.LBB56_25
.LBB56_16:
	subq	%rcx, %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB56_17:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rdx,8), %rdi
	movq	%rdi, (%rax)
	movq	-104(%rbp), %rdi
	movslq	(%rdi,%rdx,4), %rdi
	movq	%rdi, 8(%rax)
	movq	8(%r13,%rdx,8), %rdi
	movq	%rdi, 16(%rax)
	movq	-104(%rbp), %rdi
	movslq	4(%rdi,%rdx,4), %rdi
	movq	%rdi, 24(%rax)
	movq	16(%r13,%rdx,8), %rdi
	movq	%rdi, 32(%rax)
	movq	-104(%rbp), %rdi
	movslq	8(%rdi,%rdx,4), %rdi
	movq	%rdi, 40(%rax)
	movq	24(%r13,%rdx,8), %rdi
	movq	%rdi, 48(%rax)
	movq	-104(%rbp), %rdi
	movslq	12(%rdi,%rdx,4), %rdi
	movq	%rdi, 56(%rax)
	addq	$64, %rax
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB56_17
.LBB56_18:
	testq	%rcx, %rcx
	je	.LBB56_20
	.p2align	4, 0x90
.LBB56_19:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rdx,8), %rsi
	movq	%rsi, (%rax)
	movq	-104(%rbp), %rsi
	movslq	(%rsi,%rdx,4), %rsi
	movq	%rsi, 8(%rax)
	addq	$1, %rdx
	addq	$16, %rax
	addq	$-1, %rcx
	jne	.LBB56_19
.LBB56_20:
	movq	(%rbx), %rax
.LBB56_21:
	testq	%rax, %rax
	je	.LBB56_23
# %bb.22:
	movl	server+2184(%rip), %edi
	shlq	$35, %r14
	sarq	$32, %r14
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	write
	movq	%r14, %rcx
	xorl	%r14d, %r14d
	cmpq	%rcx, %rax
	je	.LBB56_24
.LBB56_23:
	movl	$-1, %r14d
.LBB56_24:
	movq	%rbx, %rdi
	callq	zfree
.LBB56_25:
	movq	%r13, %rdi
	callq	zfree
	leaq	-176(%rbp), %rdi
	callq	rioFreeFdset
	xorl	%edi, %edi
	testl	%r14d, %r14d
	setne	%dil
	callq	exitFromChild
	jmp	.LBB56_41
.Lfunc_end56:
	.size	rdbSaveToSlavesSockets, .Lfunc_end56-rdbSaveToSlavesSockets
                                        # -- End function
	.globl	saveCommand             # -- Begin function saveCommand
	.p2align	4, 0x90
	.type	saveCommand,@function
saveCommand:                            # @saveCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %rbx
	cmpl	$-1, server+2096(%rip)
	je	.LBB57_2
# %bb.1:
	movl	$.L.str.97, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB57_14
.LBB57_2:
	movups	.LrdbPopulateSaveInfo.rsi_init+48(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	movups	.LrdbPopulateSaveInfo.rsi_init+32(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movups	.LrdbPopulateSaveInfo.rsi_init+16(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movups	.LrdbPopulateSaveInfo.rsi_init(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	cmpq	$0, server+2464(%rip)
	jne	.LBB57_5
# %bb.3:
	cmpq	$0, server+2376(%rip)
	je	.LBB57_5
# %bb.4:
	movl	server+2368(%rip), %ecx
	xorl	%eax, %eax
	cmpl	$-1, %ecx
	cmovnel	%ecx, %eax
	jmp	.LBB57_9
.LBB57_5:
	movq	server+2480(%rip), %rax
	testq	%rax, %rax
	jne	.LBB57_8
# %bb.6:
	movq	server+2488(%rip), %rax
	testq	%rax, %rax
	je	.LBB57_7
.LBB57_8:
	movq	16(%rax), %rax
	movl	40(%rax), %eax
.LBB57_9:
	movl	%eax, -80(%rbp)
	leaq	-80(%rbp), %rsi
.LBB57_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2120(%rip), %rdi
	callq	rdbSave
	testl	%eax, %eax
	je	.LBB57_11
# %bb.12:
	movq	shared+16(%rip), %rsi
	jmp	.LBB57_13
.LBB57_11:
	movq	shared+8(%rip), %rsi
.LBB57_13:
	movq	%rbx, %rdi
	callq	addReply
.LBB57_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB57_7:
	xorl	%esi, %esi
	jmp	.LBB57_10
.Lfunc_end57:
	.size	saveCommand, .Lfunc_end57-saveCommand
                                        # -- End function
	.globl	rdbPopulateSaveInfo     # -- Begin function rdbPopulateSaveInfo
	.p2align	4, 0x90
	.type	rdbPopulateSaveInfo,@function
rdbPopulateSaveInfo:                    # @rdbPopulateSaveInfo
# %bb.0:
	movq	%rdi, %rax
	movups	.LrdbPopulateSaveInfo.rsi_init+48(%rip), %xmm0
	movups	%xmm0, 48(%rdi)
	movups	.LrdbPopulateSaveInfo.rsi_init+32(%rip), %xmm0
	movups	%xmm0, 32(%rdi)
	movups	.LrdbPopulateSaveInfo.rsi_init+16(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movups	.LrdbPopulateSaveInfo.rsi_init(%rip), %xmm0
	movups	%xmm0, (%rdi)
	cmpq	$0, server+2464(%rip)
	jne	.LBB58_3
# %bb.1:
	cmpq	$0, server+2376(%rip)
	je	.LBB58_3
# %bb.2:
	movl	server+2368(%rip), %edx
	xorl	%ecx, %ecx
	cmpl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	.LBB58_7
.LBB58_3:
	movq	server+2480(%rip), %rcx
	testq	%rcx, %rcx
	jne	.LBB58_6
# %bb.4:
	movq	server+2488(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB58_5
.LBB58_6:
	movq	16(%rcx), %rcx
	movl	40(%rcx), %ecx
.LBB58_7:
	movl	%ecx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB58_5:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end58:
	.size	rdbPopulateSaveInfo, .Lfunc_end58-rdbPopulateSaveInfo
                                        # -- End function
	.globl	bgsaveCommand           # -- Begin function bgsaveCommand
	.p2align	4, 0x90
	.type	bgsaveCommand,@function
bgsaveCommand:                          # @bgsaveCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$2, 64(%rdi)
	jl	.LBB59_4
# %bb.1:
	jne	.LBB59_25
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.98, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB59_3
.LBB59_25:
	movq	shared+128(%rip), %rsi
.LBB59_23:
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB59_24
.LBB59_3:
	movl	$1, %eax
.LBB59_4:
	movups	.LrdbPopulateSaveInfo.rsi_init+48(%rip), %xmm0
	movaps	%xmm0, -32(%rbp)
	movups	.LrdbPopulateSaveInfo.rsi_init+32(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movups	.LrdbPopulateSaveInfo.rsi_init+16(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movups	.LrdbPopulateSaveInfo.rsi_init(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	cmpq	$0, server+2464(%rip)
	jne	.LBB59_7
# %bb.5:
	cmpq	$0, server+2376(%rip)
	je	.LBB59_7
# %bb.6:
	movl	server+2368(%rip), %edx
	xorl	%ecx, %ecx
	cmpl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	.LBB59_11
.LBB59_7:
	movq	server+2480(%rip), %rcx
	testq	%rcx, %rcx
	jne	.LBB59_10
# %bb.8:
	movq	server+2488(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB59_9
.LBB59_10:
	movq	16(%rcx), %rcx
	movl	40(%rcx), %ecx
.LBB59_11:
	movl	%ecx, -80(%rbp)
	leaq	-80(%rbp), %rsi
.LBB59_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, server+2096(%rip)
	je	.LBB59_15
# %bb.13:
	movl	$.L.str.97, %esi
.LBB59_14:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB59_24
.LBB59_15:
	cmpl	$-1, server+1940(%rip)
	je	.LBB59_19
# %bb.16:
	testl	%eax, %eax
	je	.LBB59_18
# %bb.17:
	movl	$1, server+2168(%rip)
	movl	$.L.str.99, %esi
	jmp	.LBB59_21
.LBB59_19:
	movq	server+2120(%rip), %rdi
	callq	rdbSaveBackground
	testl	%eax, %eax
	je	.LBB59_20
# %bb.22:
	movq	shared+16(%rip), %rsi
	jmp	.LBB59_23
.LBB59_18:
	movl	$.L.str.100, %esi
	jmp	.LBB59_14
.LBB59_9:
	xorl	%esi, %esi
	jmp	.LBB59_12
.LBB59_20:
	movl	$.L.str.101, %esi
.LBB59_21:
	movq	%rbx, %rdi
	callq	addReplyStatus
.LBB59_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end59:
	.size	bgsaveCommand, .Lfunc_end59-bgsaveCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Internal error in RDB reading function at rdb.c:%d -> "
	.size	.L.str, 55

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Impossible to read %llu bytes in rdbLoadRaw()"
	.size	.L.str.3, 46

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unknown length encoding %d in rdbLoadLen()"
	.size	.L.str.4, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown RDB integer encoding type %d"
	.size	.L.str.5, 37

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid LZF compressed string"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"enclen < 32"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rdb.c"
	.size	.L.str.8, 71

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sdsEncodedObject(obj)"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Unknown RDB string encoding type %d"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%.17g"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%lg"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Unknown list encoding"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Unknown set encoding"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Unknown sorted set encoding"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unknown hash encoding"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unknown object type"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"^"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"len != -1"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"redis-ver"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"5.0.6"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"redis-bits"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"ctime"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"used-mem"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"repl-stream-db"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"repl-id"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"repl-offset"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"aof-preamble"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"REDIS%04d"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"lua"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"$EOF:"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\r\n"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"temp-%d.rdb"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"w"
	.size	.L.str.34, 2

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Failed opening the RDB file %s (in server root dir %s) for saving: %s"
	.size	.L.str.35, 70

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"unknown"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Error moving temp DB file %s on the final destination %s (in server root dir %s): %s"
	.size	.L.str.37, 85

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"DB saved on disk"
	.size	.L.str.38, 17

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Write error saving DB on disk: %s"
	.size	.L.str.39, 34

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"redis-rdb-bgsave"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"RDB: %zu MB of memory used by copy-on-write"
	.size	.L.str.41, 44

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"fork"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Can't save in background: fork: %s"
	.size	.L.str.43, 35

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Background saving started by pid %d"
	.size	.L.str.44, 36

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Error reading integer from module %s value"
	.size	.L.str.45, 43

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Error reading string from module %s value"
	.size	.L.str.46, 42

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Error reading float from module %s value"
	.size	.L.str.47, 41

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Error reading double from module %s value"
	.size	.L.str.48, 42

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"module-dummy-value"
	.size	.L.str.49, 19

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Duplicate keys detected"
	.size	.L.str.50, 24

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"len == 0"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Unknown RDB encoding type %d"
	.size	.L.str.52, 29

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Stream master ID loading failed: invalid encoding or I/O error."
	.size	.L.str.53, 64

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Stream node key entry is not the size of a stream ID"
	.size	.L.str.54, 53

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Empty listpack inside stream"
	.size	.L.str.55, 29

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Listpack re-added with existing key"
	.size	.L.str.56, 36

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Error reading the consumer group name from Stream"
	.size	.L.str.57, 50

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Duplicated consumer group name %s"
	.size	.L.str.58, 34

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Duplicated gobal PEL entry loading stream consumer group"
	.size	.L.str.59, 57

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Error reading the consumer name from Stream group"
	.size	.L.str.60, 50

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Consumer entry not found in group global PEL"
	.size	.L.str.61, 45

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Duplicated consumer PEL entry  loading a stream consumer group"
	.size	.L.str.62, 63

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"The RDB file contains module data I can't load: no matching module '%s'"
	.size	.L.str.63, 72

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"The RDB file contains module data for the module '%s' that is not terminated by the proper module value EOF marker"
	.size	.L.str.64, 115

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"The RDB file contains module data for the module type '%s', that the responsible module is not able to load. Check for modules log above for additional clues."
	.size	.L.str.65, 159

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"REDIS"
	.size	.L.str.66, 6

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Wrong signature trying to load DB from file"
	.size	.L.str.67, 44

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Can't handle RDB format version %d"
	.size	.L.str.68, 35

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"FATAL: Data file was created with a Redis server configured to handle more than %d databases. Exiting\n"
	.size	.L.str.69, 103

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"RDB '%s': %s"
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Can't load Lua script from RDB file! BODY: %s"
	.size	.L.str.71, 46

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Unrecognized RDB AUX field: '%s'"
	.size	.L.str.72, 33

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"bad when_opcode"
	.size	.L.str.73, 16

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"The RDB file contains AUX module data I can't load: no matching module '%s'"
	.size	.L.str.74, 76

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"The RDB file contains module AUX data, but the module '%s' doesn't seem to support it."
	.size	.L.str.75, 87

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"The RDB file contains module AUX data for the module type '%s', that the responsible module is not able to load. Check for modules log above for additional clues."
	.size	.L.str.76, 163

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"The RDB file contains module AUX data for the module '%s' that is not terminated by the proper module value EOF marker"
	.size	.L.str.77, 119

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"RDB file was saved with checksum disabled: no check performed."
	.size	.L.str.78, 63

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Wrong RDB checksum. Aborting now."
	.size	.L.str.79, 34

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"RDB CRC error"
	.size	.L.str.80, 14

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Short read or OOM loading DB. Unrecoverable error, aborting now."
	.size	.L.str.81, 65

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Unexpected EOF reading RDB file"
	.size	.L.str.82, 32

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"r"
	.size	.L.str.83, 2

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Background saving terminated with success"
	.size	.L.str.84, 42

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Background saving error"
	.size	.L.str.85, 24

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Background saving terminated by signal %d"
	.size	.L.str.86, 42

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"rdb-unlink-temp-file"
	.size	.L.str.87, 21

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Background RDB transfer terminated with success"
	.size	.L.str.88, 48

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Background transfer error"
	.size	.L.str.89, 26

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Background transfer terminated by signal %d"
	.size	.L.str.90, 44

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Closing slave %s: child->slave RDB transfer failed: %s"
	.size	.L.str.91, 55

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"RDB transfer child aborted"
	.size	.L.str.92, 27

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Slave %s correctly received the streamed RDB file."
	.size	.L.str.93, 51

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Unknown RDB child type."
	.size	.L.str.94, 24

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"redis-rdb-to-slaves"
	.size	.L.str.95, 20

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Background RDB transfer started by pid %d"
	.size	.L.str.96, 42

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Background save already in progress"
	.size	.L.str.97, 36

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"schedule"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Background saving scheduled"
	.size	.L.str.99, 28

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"An AOF log rewriting in progress: can't BGSAVE right now. Use BGSAVE SCHEDULE in order to schedule a BGSAVE whenever possible."
	.size	.L.str.100, 127

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Background saving started"
	.size	.L.str.101, 26

	.type	.LrdbPopulateSaveInfo.rsi_init,@object # @rdbPopulateSaveInfo.rsi_init
	.section	.rodata,"a",@progbits
	.p2align	3
.LrdbPopulateSaveInfo.rsi_init:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.asciz	"000000000000000000000000000000\000\000\000\000\000\000\000\000\000\000"
	.zero	7
	.quad	-1                      # 0xffffffffffffffff
	.size	.LrdbPopulateSaveInfo.rsi_init, 64

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.rdbLoadObjectType,@object # @switch.table.rdbLoadObjectType
	.p2align	4
.Lswitch.table.rdbLoadObjectType:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	4294967295              # 0xffffffff
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	15                      # 0xf
	.size	.Lswitch.table.rdbLoadObjectType, 64

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
