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
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB0_5
.LBB0_4:
	leaq	-1264(%rbp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	rdbCheckError
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB1_9
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	%rdx, %r13
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_2 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r13
	je	.LBB1_9
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jb	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, %rbx
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_10
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movq	32(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_8
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.2:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-33(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r12, %rbx
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB2_3
# %bb.10:
	movl	$1, %eax
	jmp	.LBB2_12
.LBB2_1:
	movl	$1, %eax
	jmp	.LBB2_13
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_13:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-33(%rbp), %r15
	movl	$1, %r12d
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB3_8
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB3_4
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	%r12, %rbx
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_10
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_7
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-33(%rbp), %eax
	jmp	.LBB3_9
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB3_9:
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$16, %rsp
	leaq	-4(%rbp), %rsi
	movl	$4, %edx
	callq	rdbLoadRaw
	movslq	-4(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_1
# %bb.2:
	movq	%rdi, %r14
	leaq	-40(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r12d
	.p2align	4, 0x90
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB5_6
.LBB5_5:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%r12, %rbx
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB5_8:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_11
# %bb.9:                                #   in Loop: Header=BB5_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB5_3
# %bb.10:
	movl	$8, %eax
	jmp	.LBB5_12
.LBB5_1:
	movl	$8, %eax
	jmp	.LBB5_13
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_13:
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
	subq	$16, %rsp
	leaq	-8(%rbp), %rsi
	movl	$8, %edx
	callq	rdbLoadRaw
	movq	-8(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %rsi
	ja	.LBB7_12
# %bb.1:
	movb	%sil, -34(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_11
# %bb.2:
	leaq	-34(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_5
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB7_6
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r12, %rbx
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_47
# %bb.9:                                #   in Loop: Header=BB7_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB7_3
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB7_68
.LBB7_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	cmpq	$16383, %rsi            # imm = 0x3FFF
	ja	.LBB7_24
# %bb.13:
	shrq	$8, %rax
	orb	$64, %al
	movb	%al, -34(%rbp)
	movb	%sil, -33(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_23
# %bb.14:
	leaq	-34(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r12d
	.p2align	4, 0x90
.LBB7_15:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB7_18
.LBB7_17:                               #   in Loop: Header=BB7_15 Depth=1
	movq	%r12, %rbx
.LBB7_18:                               #   in Loop: Header=BB7_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_20
# %bb.19:                               #   in Loop: Header=BB7_15 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_20:                               #   in Loop: Header=BB7_15 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_47
# %bb.21:                               #   in Loop: Header=BB7_15 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB7_15
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jmp	.LBB7_68
.LBB7_24:
	shrq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_48
# %bb.25:
	movb	$-128, -34(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_35
# %bb.26:
	leaq	-34(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB7_27:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_29
# %bb.28:                               #   in Loop: Header=BB7_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB7_30
.LBB7_29:                               #   in Loop: Header=BB7_27 Depth=1
	movq	%r12, %rbx
.LBB7_30:                               #   in Loop: Header=BB7_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_32
# %bb.31:                               #   in Loop: Header=BB7_27 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_32:                               #   in Loop: Header=BB7_27 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_47
# %bb.33:                               #   in Loop: Header=BB7_27 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB7_27
# %bb.34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi
.LBB7_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %edi
	callq	lwip_htonl
	movl	%eax, -52(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_45
# %bb.36:
	leaq	-52(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r12d
	.p2align	4, 0x90
.LBB7_37:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB7_40
.LBB7_39:                               #   in Loop: Header=BB7_37 Depth=1
	movq	%r12, %rbx
.LBB7_40:                               #   in Loop: Header=BB7_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_42
# %bb.41:                               #   in Loop: Header=BB7_37 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_42:                               #   in Loop: Header=BB7_37 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_46
# %bb.43:                               #   in Loop: Header=BB7_37 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB7_37
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	jmp	.LBB7_68
.LBB7_48:
	movb	$-127, -34(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_66
# %bb.49:
	movl	$1, %r12d
	leaq	-34(%rbp), %r15
	.p2align	4, 0x90
.LBB7_50:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_52
# %bb.51:                               #   in Loop: Header=BB7_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB7_53
.LBB7_52:                               #   in Loop: Header=BB7_50 Depth=1
	movq	%r12, %rbx
.LBB7_53:                               #   in Loop: Header=BB7_50 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_55
# %bb.54:                               #   in Loop: Header=BB7_50 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_55:                               #   in Loop: Header=BB7_50 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_47
# %bb.56:                               #   in Loop: Header=BB7_50 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB7_50
# %bb.57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi
	callq	intrev64
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r12d
	.p2align	4, 0x90
.LBB7_58:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_60
# %bb.59:                               #   in Loop: Header=BB7_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB7_61
.LBB7_60:                               #   in Loop: Header=BB7_58 Depth=1
	movq	%r12, %rbx
.LBB7_61:                               #   in Loop: Header=BB7_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_63
# %bb.62:                               #   in Loop: Header=BB7_58 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_63:                               #   in Loop: Header=BB7_58 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_47
# %bb.64:                               #   in Loop: Header=BB7_58 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB7_58
# %bb.65:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_67
.LBB7_66:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	callq	intrev64
	movq	%rax, -48(%rbp)
.LBB7_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$9, %eax
.LBB7_68:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_69
.LBB7_46:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB7_69:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB8_2
# %bb.1:
	movl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_2:
	leaq	-42(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB8_10
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB8_5
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB8_6
.LBB8_5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%r14, %rbx
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_36
# %bb.7:                                #   in Loop: Header=BB8_3 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_9
# %bb.8:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_9
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-42(%rbp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %edx
	jne	.LBB8_14
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB8_13
# %bb.12:
	movl	$1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_13
.LBB8_14:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB8_13
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jne	.LBB8_25
# %bb.16:
	leaq	-41(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB8_17
	.p2align	4, 0x90
.LBB8_23:                               #   in Loop: Header=BB8_17 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB8_24
.LBB8_17:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB8_20
.LBB8_19:                               #   in Loop: Header=BB8_17 Depth=1
	movq	%r14, %rbx
.LBB8_20:                               #   in Loop: Header=BB8_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_36
# %bb.21:                               #   in Loop: Header=BB8_17 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_23
# %bb.22:                               #   in Loop: Header=BB8_17 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_23
.LBB8_13:
	andl	$63, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
.LBB8_48:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB8_49
.LBB8_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-128, %al
	jne	.LBB8_37
# %bb.26:
	leaq	-60(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r14d
	jmp	.LBB8_27
	.p2align	4, 0x90
.LBB8_33:                               #   in Loop: Header=BB8_27 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB8_34
.LBB8_27:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB8_29
# %bb.28:                               #   in Loop: Header=BB8_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB8_30
.LBB8_29:                               #   in Loop: Header=BB8_27 Depth=1
	movq	%r14, %rbx
.LBB8_30:                               #   in Loop: Header=BB8_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_35
# %bb.31:                               #   in Loop: Header=BB8_27 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_33
# %bb.32:                               #   in Loop: Header=BB8_27 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_33
.LBB8_37:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-127, %al
	jne	.LBB8_50
# %bb.38:
	leaq	-72(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r14d
	jmp	.LBB8_39
	.p2align	4, 0x90
.LBB8_45:                               #   in Loop: Header=BB8_39 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB8_46
.LBB8_39:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB8_41
# %bb.40:                               #   in Loop: Header=BB8_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB8_42
.LBB8_41:                               #   in Loop: Header=BB8_39 Depth=1
	movq	%r14, %rbx
.LBB8_42:                               #   in Loop: Header=BB8_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_35
# %bb.43:                               #   in Loop: Header=BB8_39 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_45
# %bb.44:                               #   in Loop: Header=BB8_39 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_45
.LBB8_35:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB8_49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-42(%rbp), %eax
	andl	$63, %eax
	shlq	$8, %rax
	movzbl	-41(%rbp), %ecx
	orq	%rax, %rcx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB8_48
.LBB8_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %edi
	callq	lwip_htonl
	movl	%eax, %eax
	jmp	.LBB8_47
.LBB8_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdi
	callq	intrev64
.LBB8_47:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_48
.LBB8_50:
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
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	cmpl	$-1, %ecx
	je	.LBB9_2
# %bb.1:
	movq	-8(%rbp), %rax
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jne	.LBB10_2
# %bb.1:
	movb	$-64, (%rsi)
	movl	$2, %eax
	movl	$1, %edx
	jmp	.LBB10_6
.LBB10_2:
	movswq	%cx, %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	je	.LBB11_1
# %bb.10:
	movl	%esi, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	jne	.LBB11_22
# %bb.11:
	leaq	-44(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r14d
	jmp	.LBB11_12
	.p2align	4, 0x90
.LBB11_18:                              #   in Loop: Header=BB11_12 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB11_19
.LBB11_12:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB11_15
.LBB11_14:                              #   in Loop: Header=BB11_12 Depth=1
	movq	%r14, %rbx
.LBB11_15:                              #   in Loop: Header=BB11_12 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_20
# %bb.16:                               #   in Loop: Header=BB11_12 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_18
# %bb.17:                               #   in Loop: Header=BB11_12 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_18
.LBB11_1:
	leaq	-44(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB11_2
	.p2align	4, 0x90
.LBB11_8:                               #   in Loop: Header=BB11_2 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB11_9
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB11_4
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB11_5
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
	movq	%r14, %rbx
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_21
# %bb.6:                                #   in Loop: Header=BB11_2 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_8
# %bb.7:                                #   in Loop: Header=BB11_2 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_8
.LBB11_22:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jne	.LBB11_45
# %bb.23:
	leaq	-44(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r14d
	jmp	.LBB11_24
	.p2align	4, 0x90
.LBB11_30:                              #   in Loop: Header=BB11_24 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB11_31
.LBB11_24:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB11_26
# %bb.25:                               #   in Loop: Header=BB11_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB11_27
.LBB11_26:                              #   in Loop: Header=BB11_24 Depth=1
	movq	%r14, %rbx
.LBB11_27:                              #   in Loop: Header=BB11_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_20
# %bb.28:                               #   in Loop: Header=BB11_24 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_30
# %bb.29:                               #   in Loop: Header=BB11_24 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_30
.LBB11_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB11_44
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbq	-44(%rbp), %rdx
	jmp	.LBB11_33
.LBB11_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-44(%rbp), %eax
	movzbl	-43(%rbp), %ecx
	shll	$8, %ecx
	movswq	%cx, %rdx
	orq	%rax, %rdx
	jmp	.LBB11_32
.LBB11_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-44(%rbp), %rdx
.LBB11_32:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$6, %r15b
	je	.LBB11_40
# %bb.34:
	leaq	-80(%rbp), %rdi
	movl	$21, %esi
	callq	ll2string
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %r12
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB11_36
# %bb.35:
	movq	%r12, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_36:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	jne	.LBB11_37
# %bb.38:
	movq	SDS_NOINIT(%rip), %rdi
	movslq	%eax, %r12
	movq	%r12, %rsi
	callq	sdsnewlen
	jmp	.LBB11_39
.LBB11_40:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rdi
	testb	$1, %r15b
	jne	.LBB11_41
# %bb.42:
	callq	sdsfromlonglong
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	jmp	.LBB11_43
.LBB11_37:
	movq	%r12, %rdi
	callq	zmalloc
.LBB11_39:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r12, %rdx
	callq	memcpy
	jmp	.LBB11_44
.LBB11_41:
	callq	createStringObjectFromLongLongForValue
.LBB11_43:
	movq	%rax, %rbx
.LBB11_44:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB11_45:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jne	.LBB12_11
# %bb.2:
	leaq	-96(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB12_11
# %bb.3:
	movq	%r13, %rdx
	movsbq	%dl, %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB12_11:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB13_10
# %bb.1:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-41(%rbp), %r12
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB13_4
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB13_5
.LBB13_4:                               #   in Loop: Header=BB13_2 Depth=1
	movq	%r14, %rbx
.LBB13_5:                               #   in Loop: Header=BB13_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB13_7:                               #   in Loop: Header=BB13_2 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_26
# %bb.8:                                #   in Loop: Header=BB13_2 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	jne	.LBB13_2
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB13_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
	cmpl	$-1, %eax
	je	.LBB13_25
# %bb.11:
	movl	%eax, %r14d
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB13_25
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB13_23
# %bb.13:
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%r14d, -64(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB13_22
# %bb.14:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB13_15:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB13_17
# %bb.16:                               #   in Loop: Header=BB13_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jb	.LBB13_18
.LBB13_17:                              #   in Loop: Header=BB13_15 Depth=1
	movq	%rbx, %r14
.LBB13_18:                              #   in Loop: Header=BB13_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_20
# %bb.19:                               #   in Loop: Header=BB13_15 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB13_20:                              #   in Loop: Header=BB13_15 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_27
# %bb.21:                               #   in Loop: Header=BB13_15 Depth=1
	addq	%r14, %r15
	addq	%r14, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rbx
	jne	.LBB13_15
.LBB13_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	-64(%rbp), %r14d        # 4-byte Reload
	movl	-68(%rbp), %eax         # 4-byte Reload
.LBB13_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB13_25
# %bb.24:
	movl	%eax, %edx
	movslq	%ebx, %rax
	movslq	%r14d, %rcx
	movslq	%edx, %rdx
	addq	%rax, %rcx
	leaq	(%rdx,%rcx), %r12
	addq	$1, %r12
	jmp	.LBB13_25
.LBB13_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
.LBB13_25:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB13_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_25
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %rdx
	jb	.LBB14_7
# %bb.2:
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	leaq	-3(%rdx), %rdi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_7
# %bb.3:
	movq	%rax, %r14
	leal	-4(%rbx), %ecx
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rax, %rdx
	callq	lzf_compress
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdx, %r15
	movl	%esi, %r13d
	movq	%rdi, %r14
	leaq	-72(%rbp), %rdx
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB15_1
# %bb.2:
	movq	-72(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rbx
	je	.LBB15_32
# %bb.3:
	leaq	-72(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB15_1
# %bb.4:
	movq	-72(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r12
	je	.LBB15_32
# %bb.5:
	movq	%rbx, %rdi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB15_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r13b
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%r12, -80(%rbp)         # 8-byte Spill
	jne	.LBB15_8
# %bb.9:
	movq	SDS_NOINIT(%rip), %rdi
	movq	%r12, %rsi
	callq	sdsnewlen
	jmp	.LBB15_10
.LBB15_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_32:
	xorl	%r12d, %r12d
.LBB15_33:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB15_6:
	xorl	%r12d, %r12d
	jmp	.LBB15_19
.LBB15_8:
	movq	%r12, %rdi
	callq	zmalloc
.LBB15_10:
	movq	%rax, %r12
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB15_12
# %bb.11:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB15_25
# %bb.13:
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB15_14
	.p2align	4, 0x90
.LBB15_24:                              #   in Loop: Header=BB15_14 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r13
	je	.LBB15_25
.LBB15_14:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB15_16
# %bb.15:                               #   in Loop: Header=BB15_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jb	.LBB15_17
.LBB15_16:                              #   in Loop: Header=BB15_14 Depth=1
	movq	%r13, %rbx
.LBB15_17:                              #   in Loop: Header=BB15_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_18
# %bb.22:                               #   in Loop: Header=BB15_14 Depth=1
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_24
# %bb.23:                               #   in Loop: Header=BB15_14 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_24
.LBB15_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r12, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	lzf_decompress
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_26
# %bb.28:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	testb	$6, -44(%rbp)           # 1-byte Folded Reload
	jne	.LBB15_33
# %bb.29:
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	createObject
	movq	%rax, %r12
	jmp	.LBB15_33
.LBB15_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r13d        # 4-byte Reload
.LBB15_19:
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB15_20:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	testb	$2, %r13b
	jne	.LBB15_21
# %bb.30:
	callq	sdsfree
	jmp	.LBB15_31
.LBB15_21:
	callq	zfree
	jmp	.LBB15_31
.LBB15_26:
	cmpl	$0, rdbCheckMode(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	je	.LBB15_20
# %bb.27:
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	rdbCheckSetError
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_20
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
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$11, %rdx
	ja	.LBB16_13
# %bb.1:
	leaq	-53(%rbp), %r14
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	rdbTryIntegerEncoding
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB16_17
# %bb.2:
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB16_33
# %bb.3:
	movl	%eax, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %r15
	.p2align	4, 0x90
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB16_6
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jb	.LBB16_7
.LBB16_6:                               #   in Loop: Header=BB16_4 Depth=1
	movq	%r15, %rbx
.LBB16_7:                               #   in Loop: Header=BB16_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_9
# %bb.8:                                #   in Loop: Header=BB16_4 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB16_9:                               #   in Loop: Header=BB16_4 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_34
# %bb.10:                               #   in Loop: Header=BB16_4 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	jne	.LBB16_4
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jne	.LBB16_38
	jmp	.LBB16_37
.LBB16_13:
	movl	server+2128(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$21, %r15
	jb	.LBB16_18
# %bb.14:
	testl	%eax, %eax
	je	.LBB16_18
# %bb.15:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	rdbSaveLzfStringObject
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB16_37
# %bb.16:
	movq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jg	.LBB16_38
	jmp	.LBB16_18
.LBB16_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_18:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB16_38
# %bb.19:
	movslq	%eax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB16_32
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB16_30
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB16_22:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB16_24
# %bb.23:                               #   in Loop: Header=BB16_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jb	.LBB16_25
.LBB16_24:                              #   in Loop: Header=BB16_22 Depth=1
	movq	%r15, %rbx
.LBB16_25:                              #   in Loop: Header=BB16_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_27
# %bb.26:                               #   in Loop: Header=BB16_22 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB16_27:                              #   in Loop: Header=BB16_22 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_36
# %bb.28:                               #   in Loop: Header=BB16_22 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	jne	.LBB16_22
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB16_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	je	.LBB16_38
# %bb.31:
	addq	%r15, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB16_32:
	movq	%r14, %rcx
	jmp	.LBB16_38
.LBB16_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_38
.LBB16_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_37:
	movq	$-1, %rcx
.LBB16_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	jne	.LBB17_2
# %bb.1:
	movb	$-64, -80(%rbp)
	movb	%dl, -79(%rbp)
	movl	$2, %r15d
	jmp	.LBB17_6
.LBB17_2:
	movswq	%dx, %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jne	.LBB17_18
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB17_17
# %bb.7:
	leaq	-80(%rbp), %r14
	movl	%r15d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB17_8:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB17_10
# %bb.9:                                #   in Loop: Header=BB17_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB17_11
.LBB17_10:                              #   in Loop: Header=BB17_8 Depth=1
	movq	%r12, %rbx
.LBB17_11:                              #   in Loop: Header=BB17_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_13
# %bb.12:                               #   in Loop: Header=BB17_8 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB17_13:                              #   in Loop: Header=BB17_8 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_15
# %bb.14:                               #   in Loop: Header=BB17_8 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB17_8
	jmp	.LBB17_16
.LBB17_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
.LBB17_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %r15
.LBB17_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %r12
	movl	$32, %esi
	movq	%r12, %rdi
	callq	ll2string
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jge	.LBB17_33
# %bb.19:
	movl	%eax, %ebx
	movslq	%eax, %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
	cmpl	$-1, %eax
	je	.LBB17_32
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB17_31
# %bb.21:
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	testl	%ebx, %ebx
	je	.LBB17_30
# %bb.22:
	movq	-88(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB17_23:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB17_25
# %bb.24:                               #   in Loop: Header=BB17_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB17_26
.LBB17_25:                              #   in Loop: Header=BB17_23 Depth=1
	movq	%r14, %rbx
.LBB17_26:                              #   in Loop: Header=BB17_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_28
# %bb.27:                               #   in Loop: Header=BB17_23 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB17_28:                              #   in Loop: Header=BB17_23 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_34
# %bb.29:                               #   in Loop: Header=BB17_23 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	jne	.LBB17_23
.LBB17_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx         # 4-byte Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
	movl	-44(%rbp), %eax         # 4-byte Reload
.LBB17_31:
	cltq
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r14, %rax
	cmpl	$-1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
	cmovneq	%rax, %r15
	jmp	.LBB17_32
.LBB17_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_32
.LBB17_33:
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
	movl	(%rsi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB18_2
# %bb.1:
	movq	8(%rsi), %rsi
	callq	rdbSaveLongLongAsStringObject
	jmp	.LBB18_13
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB18_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB18_14
.LBB18_4:
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB18_5
# %bb.6:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_7:
	shrq	$3, %rdx
	jmp	.LBB18_12
.LBB18_11:
	movq	-17(%rsi), %rdx
	jmp	.LBB18_12
.LBB18_9:
	movzwl	-5(%rsi), %edx
	jmp	.LBB18_12
.LBB18_10:
	movl	-9(%rsi), %edx
	jmp	.LBB18_12
.LBB18_8:
	movzbl	-3(%rsi), %edx
	jmp	.LBB18_12
.LBB18_5:
	xorl	%edx, %edx
.LBB18_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	rdbSaveRawString
.LBB18_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB18_14:
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
	.quad	.LBB18_7
	.quad	.LBB18_8
	.quad	.LBB18_9
	.quad	.LBB18_10
	.quad	.LBB18_11
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
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
	cmpl	$-1, %eax
	je	.LBB19_2
# %bb.1:
	movq	-64(%rbp), %r15
.LBB19_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_5
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %r15
	jae	.LBB19_9
# %bb.4:
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movq	%r13, %rcx
	callq	rdbLoadIntegerObject
	jmp	.LBB19_45
.LBB19_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r15
	je	.LBB19_11
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$6, %r12b
	je	.LBB19_12
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r12b
	je	.LBB19_14
# %bb.8:
	movq	%r15, %rdi
	callq	zmalloc
	jmp	.LBB19_15
.LBB19_9:
	jne	.LBB19_46
# %bb.10:
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	%r13, %rdx
	callq	rdbLoadLzfStringObject
	jmp	.LBB19_45
.LBB19_11:
	xorl	%eax, %eax
	jmp	.LBB19_45
.LBB19_12:
	movq	SDS_NOINIT(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	testb	$1, %r12b
	jne	.LBB19_29
# %bb.13:
	callq	createRawStringObject
	jmp	.LBB19_30
.LBB19_14:
	movq	SDS_NOINIT(%rip), %rdi
	movq	%r15, %rsi
	callq	sdsnewlen
.LBB19_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB19_17
# %bb.16:
	movq	%r15, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_17:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB19_44
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %r13
	jmp	.LBB19_20
	.p2align	4, 0x90
.LBB19_19:                              #   in Loop: Header=BB19_20 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	je	.LBB19_28
.LBB19_20:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB19_22
# %bb.21:                               #   in Loop: Header=BB19_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jb	.LBB19_23
.LBB19_22:                              #   in Loop: Header=BB19_20 Depth=1
	movq	%r15, %rbx
.LBB19_23:                              #   in Loop: Header=BB19_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_26
# %bb.24:                               #   in Loop: Header=BB19_20 Depth=1
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_19
# %bb.25:                               #   in Loop: Header=BB19_20 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_19
.LBB19_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r12b
	je	.LBB19_41
# %bb.27:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	jmp	.LBB19_42
.LBB19_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	jmp	.LBB19_43
.LBB19_29:
	callq	createStringObject
.LBB19_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB19_44
# %bb.31:
	movq	%rax, %r13
	movq	8(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_33
	.p2align	4, 0x90
.LBB19_32:                              #   in Loop: Header=BB19_33 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	je	.LBB19_40
.LBB19_33:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB19_35
# %bb.34:                               #   in Loop: Header=BB19_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jb	.LBB19_36
.LBB19_35:                              #   in Loop: Header=BB19_33 Depth=1
	movq	%r15, %rbx
.LBB19_36:                              #   in Loop: Header=BB19_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_39
# %bb.37:                               #   in Loop: Header=BB19_33 Depth=1
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_32
# %bb.38:                               #   in Loop: Header=BB19_33 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_32
.LBB19_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	decrRefCount
	xorl	%eax, %eax
	jmp	.LBB19_44
.LBB19_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	jmp	.LBB19_44
.LBB19_41:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
.LBB19_42:
	xorl	%eax, %eax
.LBB19_43:
	movl	$42, __A_VARIABLE(%rip)
.LBB19_44:
	movl	$42, __A_VARIABLE(%rip)
.LBB19_45:
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
.LBB19_46:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_3
# %bb.1:
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB22_6
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
.LBB22_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB22_17
# %bb.7:
	leaq	-176(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	.p2align	4, 0x90
.LBB22_8:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB22_10
# %bb.9:                                #   in Loop: Header=BB22_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jb	.LBB22_11
.LBB22_10:                              #   in Loop: Header=BB22_8 Depth=1
	movq	%r13, %rbx
.LBB22_11:                              #   in Loop: Header=BB22_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_13
# %bb.12:                               #   in Loop: Header=BB22_8 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB22_13:                              #   in Loop: Header=BB22_8 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_16
# %bb.14:                               #   in Loop: Header=BB22_8 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r13
	jne	.LBB22_8
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_17
.LBB22_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
.LBB22_17:
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$280, %rsp              # imm = 0x118
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-41(%rbp), %r15
	movl	$1, %r14d
	jmp	.LBB23_1
	.p2align	4, 0x90
.LBB23_7:                               #   in Loop: Header=BB23_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB23_8
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB23_3
# %bb.2:                                #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB23_4
.LBB23_3:                               #   in Loop: Header=BB23_1 Depth=1
	movq	%r14, %rbx
.LBB23_4:                               #   in Loop: Header=BB23_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_28
# %bb.5:                                #   in Loop: Header=BB23_1 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_7
# %bb.6:                                #   in Loop: Header=BB23_1 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_7
.LBB23_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-41(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$253, %r14
	je	.LBB23_14
# %bb.9:
	cmpb	$-2, %r14b
	je	.LBB23_13
# %bb.10:
	cmpb	$-1, %r14b
	jne	.LBB23_15
# %bb.11:
	movq	R_NegInf(%rip), %rax
	jmp	.LBB23_12
.LBB23_14:
	movq	R_Nan(%rip), %rax
	jmp	.LBB23_12
.LBB23_13:
	movq	R_PosInf(%rip), %rax
.LBB23_12:
	movq	%rax, (%r13)
	xorl	%r15d, %r15d
	jmp	.LBB23_27
.LBB23_15:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB23_16
# %bb.17:
	movq	%r13, -56(%rbp)         # 8-byte Spill
	leaq	-320(%rbp), %r13
	jmp	.LBB23_18
	.p2align	4, 0x90
.LBB23_24:                              #   in Loop: Header=BB23_18 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB23_25
.LBB23_18:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB23_20
# %bb.19:                               #   in Loop: Header=BB23_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB23_21
.LBB23_20:                              #   in Loop: Header=BB23_18 Depth=1
	movq	%r14, %rbx
.LBB23_21:                              #   in Loop: Header=BB23_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_28
# %bb.22:                               #   in Loop: Header=BB23_18 Depth=1
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_24
# %bb.23:                               #   in Loop: Header=BB23_18 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_24
.LBB23_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
.LBB23_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_16:
	xorl	%eax, %eax
	jmp	.LBB23_26
.LBB23_25:
	movzbl	-41(%rbp), %eax
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB23_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -320(%rbp,%rax)
	leaq	-320(%rbp), %rdi
	movl	$.L.str.12, %esi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	sscanf
	jmp	.LBB23_27
.Lfunc_end23:
	.size	rdbLoadDoubleValue, .Lfunc_end23-rdbLoadDoubleValue
                                        # -- End function
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB24_1
# %bb.2:
	movq	%rdi, %r14
	leaq	-40(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r12d
	.p2align	4, 0x90
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB24_5
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB24_6
.LBB24_5:                               #   in Loop: Header=BB24_3 Depth=1
	movq	%r12, %rbx
.LBB24_6:                               #   in Loop: Header=BB24_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_8
# %bb.7:                                #   in Loop: Header=BB24_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB24_8:                               #   in Loop: Header=BB24_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB24_11
# %bb.9:                                #   in Loop: Header=BB24_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB24_3
# %bb.10:
	movl	$8, %eax
	jmp	.LBB24_12
.LBB24_1:
	movl	$8, %eax
	jmp	.LBB24_13
.LBB24_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB24_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_13:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r12d
	jmp	.LBB25_1
	.p2align	4, 0x90
.LBB25_7:                               #   in Loop: Header=BB25_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB25_8
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB25_3
# %bb.2:                                #   in Loop: Header=BB25_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB25_4
.LBB25_3:                               #   in Loop: Header=BB25_1 Depth=1
	movq	%r12, %rbx
.LBB25_4:                               #   in Loop: Header=BB25_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_9
# %bb.5:                                #   in Loop: Header=BB25_1 Depth=1
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_7
# %bb.6:                                #   in Loop: Header=BB25_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_7
.LBB25_8:
	xorl	%eax, %eax
	jmp	.LBB25_10
.LBB25_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB25_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB26_1
# %bb.2:
	movq	%rdi, %r14
	leaq	-36(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r12d
	.p2align	4, 0x90
.LBB26_3:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB26_5
# %bb.4:                                #   in Loop: Header=BB26_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB26_6
.LBB26_5:                               #   in Loop: Header=BB26_3 Depth=1
	movq	%r12, %rbx
.LBB26_6:                               #   in Loop: Header=BB26_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_8
# %bb.7:                                #   in Loop: Header=BB26_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB26_8:                               #   in Loop: Header=BB26_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_11
# %bb.9:                                #   in Loop: Header=BB26_3 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB26_3
# %bb.10:
	movl	$4, %eax
	jmp	.LBB26_12
.LBB26_1:
	movl	$4, %eax
	jmp	.LBB26_13
.LBB26_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB26_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_13:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r12d
	jmp	.LBB27_1
	.p2align	4, 0x90
.LBB27_7:                               #   in Loop: Header=BB27_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB27_8
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB27_3
# %bb.2:                                #   in Loop: Header=BB27_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB27_4
.LBB27_3:                               #   in Loop: Header=BB27_1 Depth=1
	movq	%r12, %rbx
.LBB27_4:                               #   in Loop: Header=BB27_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_9
# %bb.5:                                #   in Loop: Header=BB27_1 Depth=1
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_7
# %bb.6:                                #   in Loop: Header=BB27_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_7
.LBB27_8:
	xorl	%eax, %eax
	jmp	.LBB27_10
.LBB27_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB27_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$6, %cl
	ja	.LBB28_15
# %bb.1:
	xorl	%ecx, %ecx
	movl	%eax, %edx
	andl	$15, %edx
	jmpq	*.LJTI28_0(,%rdx,8)
.LBB28_2:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	movb	$14, %cl
	cmpl	$144, %eax
	je	.LBB28_17
# %bb.3:
	movl	$.L.str.8, %edi
	movl	$.L.str.13, %edx
	movl	$633, %esi              # imm = 0x279
	jmp	.LBB28_4
.LBB28_11:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	movb	$13, %cl
	cmpl	$5, %eax
	je	.LBB28_17
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movb	$4, %cl
	cmpl	$2, %eax
	je	.LBB28_17
# %bb.13:
	movl	$.L.str.8, %edi
	movl	$.L.str.16, %edx
	movl	$654, %esi              # imm = 0x28E
	jmp	.LBB28_4
.LBB28_5:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	movb	$11, %cl
	cmpl	$6, %eax
	je	.LBB28_17
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %cl
	cmpl	$2, %eax
	je	.LBB28_17
# %bb.7:
	movl	$.L.str.8, %edi
	movl	$.L.str.14, %edx
	movl	$640, %esi              # imm = 0x280
	jmp	.LBB28_4
.LBB28_8:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	movb	$12, %cl
	cmpl	$5, %eax
	je	.LBB28_17
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movb	$5, %cl
	cmpl	$7, %eax
	je	.LBB28_17
# %bb.10:
	movl	$.L.str.8, %edi
	movl	$.L.str.15, %edx
	movl	$647, %esi              # imm = 0x287
	jmp	.LBB28_4
.LBB28_14:
	movb	$7, %cl
	jmp	.LBB28_17
.LBB28_16:
	movb	$15, %cl
.LBB28_17:
	movzbl	%cl, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB28_15:
	movl	$.L.str.8, %edi
	movl	$.L.str.17, %edx
	movl	$660, %esi              # imm = 0x294
.LBB28_4:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end28:
	.size	rdbSaveObjectType, .Lfunc_end28-rdbSaveObjectType
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI28_0:
	.quad	.LBB28_17
	.quad	.LBB28_2
	.quad	.LBB28_5
	.quad	.LBB28_8
	.quad	.LBB28_11
	.quad	.LBB28_14
	.quad	.LBB28_16
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-33(%rbp), %r15
	movl	$1, %r12d
	jmp	.LBB29_1
	.p2align	4, 0x90
.LBB29_7:                               #   in Loop: Header=BB29_1 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB29_8
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB29_3
# %bb.2:                                #   in Loop: Header=BB29_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB29_4
.LBB29_3:                               #   in Loop: Header=BB29_1 Depth=1
	movq	%r12, %rbx
.LBB29_4:                               #   in Loop: Header=BB29_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_12
# %bb.5:                                #   in Loop: Header=BB29_1 Depth=1
	movq	32(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_7
# %bb.6:                                #   in Loop: Header=BB29_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_7
.LBB29_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-33(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jb	.LBB29_10
# %bb.9:
	leal	-9(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmpl	$6, %edx
	ja	.LBB29_11
.LBB29_10:
	movl	%ecx, %eax
	jmp	.LBB29_11
.LBB29_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB29_11:
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$488, %rsp              # imm = 0x1E8
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	%rsi, %rdi
	callq	raxSize
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB30_1
# %bb.2:
	movslq	%eax, %r15
	leaq	-528(%rbp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	raxStart
	movl	$.L.str.18, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB30_20
# %bb.3:
	leaq	-528(%rbp), %r12
.LBB30_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_6 Depth 2
	movq	-512(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB30_14
# %bb.5:                                #   in Loop: Header=BB30_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r14d
	.p2align	4, 0x90
.LBB30_6:                               #   Parent Loop BB30_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r13), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB30_8
# %bb.7:                                #   in Loop: Header=BB30_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r12
	jb	.LBB30_9
.LBB30_8:                               #   in Loop: Header=BB30_6 Depth=2
	movq	%r14, %r12
.LBB30_9:                               #   in Loop: Header=BB30_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_11
# %bb.10:                               #   in Loop: Header=BB30_6 Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB30_11:                              #   in Loop: Header=BB30_6 Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_23
# %bb.12:                               #   in Loop: Header=BB30_6 Depth=2
	addq	%r12, %rbx
	addq	%r12, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r12, %r14
	jne	.LBB30_6
# %bb.13:                               #   in Loop: Header=BB30_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-528(%rbp), %r12
.LBB30_14:                              #   in Loop: Header=BB30_4 Depth=1
	addq	$16, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB30_19
# %bb.15:                               #   in Loop: Header=BB30_4 Depth=1
	movq	-504(%rbp), %rbx
	movq	(%rbx), %rsi
	movq	%r13, %rdi
	callq	rdbSaveMillisecondTime
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB30_17
# %bb.16:                               #   in Loop: Header=BB30_4 Depth=1
	movl	%eax, %r14d
	movq	8(%rbx), %rsi
	movq	%r13, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB30_17
# %bb.18:                               #   in Loop: Header=BB30_4 Depth=1
	movslq	%r14d, %rcx
	addq	%rcx, %r15
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_19:                              #   in Loop: Header=BB30_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB30_4
.LBB30_20:
	leaq	-528(%rbp), %rdi
	callq	raxStop
	jmp	.LBB30_21
.LBB30_1:
	movq	$-1, %r15
	jmp	.LBB30_22
.LBB30_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
.LBB30_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$488, %rsp              # imm = 0x1E8
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
	subq	$488, %rsp              # imm = 0x1E8
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	24(%rsi), %rdi
	callq	raxSize
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB31_1
# %bb.2:
	movslq	%eax, %r13
	movq	24(%rbx), %rsi
	leaq	-520(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB31_3
	.p2align	4, 0x90
.LBB31_4:                               # =>This Inner Loop Header: Depth=1
	movq	-504(%rbp), %rsi
	movq	-496(%rbp), %r14
	movq	-488(%rbp), %rdx
	movq	%r15, %rdi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB31_7
# %bb.5:                                #   in Loop: Header=BB31_4 Depth=1
	movq	%rax, %r12
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	rdbSaveMillisecondTime
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB31_7
# %bb.6:                                #   in Loop: Header=BB31_4 Depth=1
	movl	%eax, %ebx
	movq	16(%r14), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	rdbSaveStreamPEL
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB31_7
# %bb.8:                                #   in Loop: Header=BB31_4 Depth=1
	addq	%r12, %r13
	movslq	%ebx, %rbx
	addq	%r13, %rbx
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-520(%rbp), %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
	testl	%eax, %eax
	jne	.LBB31_4
	jmp	.LBB31_9
.LBB31_1:
	movq	$-1, %rbx
	jmp	.LBB31_11
.LBB31_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rbx
	jmp	.LBB31_10
.LBB31_3:
	movq	%r13, %rbx
.LBB31_9:
	leaq	-520(%rbp), %rdi
	callq	raxStop
.LBB31_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB31_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	(%rsi), %eax
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %ecx
	je	.LBB32_11
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB32_14
# %bb.2:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$144, %eax
	jne	.LBB32_123
# %bb.3:
	movq	8(%rbx), %rax
	movq	(%rax), %rbx
	movq	24(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_87
# %bb.4:
	movslq	%eax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB32_119
# %bb.5:
	movl	$196608, %r12d          # imm = 0x30000
	leaq	-536(%rbp), %r15
	.p2align	4, 0x90
.LBB32_6:                               # =>This Inner Loop Header: Depth=1
	movl	28(%rbx), %eax
	andl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131072, %eax           # imm = 0x20000
	jne	.LBB32_8
# %bb.7:                                #   in Loop: Header=BB32_6 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	quicklistGetLzf
	movq	-536(%rbp), %rsi
	movl	24(%rbx), %ecx
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	rdbSaveLzfBlob
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_9
	.p2align	4, 0x90
.LBB32_8:                               #   in Loop: Header=BB32_6 Depth=1
	movq	16(%rbx), %rsi
	movl	24(%rbx), %edx
	movq	%r14, %rdi
	callq	rdbSaveRawString
.LBB32_9:                               #   in Loop: Header=BB32_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_88
# %bb.10:                               #   in Loop: Header=BB32_6 Depth=1
	addq	%rax, %r13
	movq	8(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB32_6
	jmp	.LBB32_119
.LBB32_11:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveStringObject
	movq	%rax, %r13
	jmp	.LBB32_12
.LBB32_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB32_29
# %bb.15:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB32_33
# %bb.16:
	movq	8(%rbx), %rbx
	movq	%rbx, %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	72(%rbx), %rsi
	addq	40(%rbx), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_84
# %bb.17:
	movslq	%eax, %r13
	.p2align	4, 0x90
.LBB32_18:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_83
# %bb.19:                               #   in Loop: Header=BB32_18 Depth=1
	movq	(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_26
# %bb.20:                               #   in Loop: Header=BB32_18 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_3(,%rax,8)
.LBB32_21:                              #   in Loop: Header=BB32_18 Depth=1
	shrq	$3, %rdx
	jmp	.LBB32_27
.LBB32_22:                              #   in Loop: Header=BB32_18 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB32_27
.LBB32_23:                              #   in Loop: Header=BB32_18 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB32_27
.LBB32_24:                              #   in Loop: Header=BB32_18 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB32_27
.LBB32_25:                              #   in Loop: Header=BB32_18 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB32_27
.LBB32_26:                              #   in Loop: Header=BB32_18 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB32_27:                              #   in Loop: Header=BB32_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_85
# %bb.28:                               #   in Loop: Header=BB32_18 Depth=1
	addq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_18
.LBB32_29:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB32_35
# %bb.30:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB32_31
# %bb.38:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB32_125
# %bb.39:
	movq	8(%rbx), %rax
	movq	8(%rax), %rbx
	movq	16(%rbx), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_87
# %bb.40:
	movslq	%eax, %r13
	movq	8(%rbx), %r15
.LBB32_41:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB32_118
# %bb.42:                               #   in Loop: Header=BB32_41 Depth=1
	movq	(%r15), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_49
# %bb.43:                               #   in Loop: Header=BB32_41 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_2(,%rax,8)
.LBB32_44:                              #   in Loop: Header=BB32_41 Depth=1
	shrq	$3, %rdx
	jmp	.LBB32_50
.LBB32_45:                              #   in Loop: Header=BB32_41 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB32_50
.LBB32_46:                              #   in Loop: Header=BB32_41 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB32_50
.LBB32_47:                              #   in Loop: Header=BB32_41 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB32_50
.LBB32_48:                              #   in Loop: Header=BB32_41 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB32_50
.LBB32_49:                              #   in Loop: Header=BB32_41 Depth=1
	xorl	%edx, %edx
.LBB32_50:                              #   in Loop: Header=BB32_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_86
# %bb.51:                               #   in Loop: Header=BB32_41 Depth=1
	movq	%rax, %rbx
	movsd	8(%r15), %xmm0          # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	rdbSaveBinaryDoubleValue
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_86
# %bb.52:                               #   in Loop: Header=BB32_41 Depth=1
	addq	%rbx, %r13
	cltq
	addq	%rax, %r13
	movq	16(%r15), %r15
	jmp	.LBB32_41
.LBB32_33:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jne	.LBB32_124
# %bb.34:
	movq	8(%rbx), %rdi
	callq	intsetBlobLen
	jmp	.LBB32_32
.LBB32_35:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB32_53
# %bb.36:
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB32_60
.LBB32_31:
	movq	8(%rbx), %rdi
	callq	ziplistBlobLen
.LBB32_32:
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	rdbSaveRawString
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB32_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	jne	.LBB32_121
# %bb.13:
	movq	$-1, %r13
	jmp	.LBB32_122
.LBB32_53:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jne	.LBB32_89
# %bb.54:
	movq	8(%rbx), %rbx
	movq	(%rbx), %r13
	movq	%r13, %rdi
	callq	raxSize
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_87
# %bb.55:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movslq	%eax, %r15
	leaq	-536(%rbp), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	raxStart
	movl	$.L.str.18, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
.LBB32_56:                              # =>This Inner Loop Header: Depth=1
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB32_94
# %bb.57:                               #   in Loop: Header=BB32_56 Depth=1
	movq	-512(%rbp), %r12
	movq	%r12, %rdi
	callq	lpBytes
	movl	%eax, %r13d
	movq	-520(%rbp), %rsi
	movq	-504(%rbp), %rdx
	movq	%r14, %rdi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_115
# %bb.58:                               #   in Loop: Header=BB32_56 Depth=1
	movq	%rax, %rbx
	movl	%r13d, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_115
# %bb.59:                               #   in Loop: Header=BB32_56 Depth=1
	addq	%rbx, %r15
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-536(%rbp), %rdi
	jmp	.LBB32_56
.LBB32_60:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB32_126
# %bb.61:
	movq	8(%rbx), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	8(%rbx), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_84
# %bb.62:
	movslq	%eax, %r13
.LBB32_63:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_83
# %bb.64:                               #   in Loop: Header=BB32_63 Depth=1
	movq	(%rax), %rsi
	movq	8(%rax), %r12
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_71
# %bb.65:                               #   in Loop: Header=BB32_63 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_0(,%rax,8)
.LBB32_66:                              #   in Loop: Header=BB32_63 Depth=1
	shrq	$3, %rdx
	jmp	.LBB32_72
.LBB32_67:                              #   in Loop: Header=BB32_63 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB32_72
.LBB32_68:                              #   in Loop: Header=BB32_63 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB32_72
.LBB32_69:                              #   in Loop: Header=BB32_63 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB32_72
.LBB32_70:                              #   in Loop: Header=BB32_63 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB32_72
.LBB32_71:                              #   in Loop: Header=BB32_63 Depth=1
	xorl	%edx, %edx
.LBB32_72:                              #   in Loop: Header=BB32_63 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_85
# %bb.73:                               #   in Loop: Header=BB32_63 Depth=1
	movq	%rax, %rbx
	movzbl	-1(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB32_80
# %bb.74:                               #   in Loop: Header=BB32_63 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI32_1(,%rax,8)
.LBB32_75:                              #   in Loop: Header=BB32_63 Depth=1
	shrq	$3, %rdx
	jmp	.LBB32_81
.LBB32_76:                              #   in Loop: Header=BB32_63 Depth=1
	movq	-17(%r12), %rdx
	jmp	.LBB32_81
.LBB32_77:                              #   in Loop: Header=BB32_63 Depth=1
	movzwl	-5(%r12), %edx
	jmp	.LBB32_81
.LBB32_78:                              #   in Loop: Header=BB32_63 Depth=1
	movl	-9(%r12), %edx
	jmp	.LBB32_81
.LBB32_79:                              #   in Loop: Header=BB32_63 Depth=1
	movzbl	-3(%r12), %edx
	jmp	.LBB32_81
.LBB32_80:                              #   in Loop: Header=BB32_63 Depth=1
	xorl	%edx, %edx
.LBB32_81:                              #   in Loop: Header=BB32_63 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_85
# %bb.82:                               #   in Loop: Header=BB32_63 Depth=1
	addq	%rbx, %r13
	addq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_63
.LBB32_83:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	jmp	.LBB32_119
.LBB32_84:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	jmp	.LBB32_87
.LBB32_85:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	jmp	.LBB32_86
.LBB32_89:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB32_127
# %bb.90:
	movq	%rdx, %r15
	movq	8(%rbx), %r12
	movq	(%r12), %rbx
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_93
# %bb.91:
	movq	%r14, -528(%rbp)
	movq	%rbx, -520(%rbp)
	movq	$0, -536(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -512(%rbp)
	movq	%r15, -496(%rbp)
	movq	8(%r12), %rsi
	leaq	-536(%rbp), %rdi
	callq	*24(%rbx)
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_99
# %bb.92:
	cltq
	addq	%rax, -536(%rbp)
	jmp	.LBB32_100
.LBB32_93:
	movq	$-1, %r13
	jmp	.LBB32_120
.LBB32_94:
	leaq	-536(%rbp), %rdi
	callq	raxStop
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	8(%r12), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_86
# %bb.95:
	movl	%eax, %ebx
	movq	16(%r12), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_86
# %bb.96:
	movl	%eax, %r13d
	movq	24(%r12), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_86
# %bb.97:
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	32(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB32_103
# %bb.98:
	callq	raxSize
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_104
.LBB32_99:
	movl	$1, -512(%rbp)
.LBB32_100:
	movl	$42, __A_VARIABLE(%rip)
	movq	-504(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB32_102
# %bb.101:
	callq	moduleFreeContext
	movq	-504(%rbp), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB32_102:
	xorl	%r13d, %r13d
	cmpl	$1, -512(%rbp)
	sbbq	%r13, %r13
	notq	%r13
	orq	-536(%rbp), %r13
	jmp	.LBB32_120
.LBB32_103:
	xorl	%r12d, %r12d
.LBB32_104:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB32_115
# %bb.105:
	movslq	%ebx, %rcx
	addq	%rcx, %r15
	movslq	%r13d, %rcx
	addq	%r15, %rcx
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	addq	%rcx, %rdx
	movslq	%eax, %r13
	addq	%rdx, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB32_117
# %bb.106:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rsi
	leaq	-536(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
.LBB32_107:                             # =>This Inner Loop Header: Depth=1
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB32_116
# %bb.108:                              #   in Loop: Header=BB32_107 Depth=1
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rbx
	movq	-504(%rbp), %rdx
	movq	%r14, %rdi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_114
# %bb.109:                              #   in Loop: Header=BB32_107 Depth=1
	movq	%rax, %r12
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	cmpl	$-1, %eax
	je	.LBB32_114
# %bb.110:                              #   in Loop: Header=BB32_107 Depth=1
	movq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	cmpl	$-1, %eax
	je	.LBB32_114
# %bb.111:                              #   in Loop: Header=BB32_107 Depth=1
	movq	16(%rbx), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	rdbSaveStreamPEL
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_114
# %bb.112:                              #   in Loop: Header=BB32_107 Depth=1
	movq	%rax, %r15
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveStreamConsumers
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB32_114
# %bb.113:                              #   in Loop: Header=BB32_107 Depth=1
	addq	%r13, %r12
	movslq	-56(%rbp), %rcx         # 4-byte Folded Reload
	addq	%r12, %rcx
	movslq	-44(%rbp), %r13         # 4-byte Folded Reload
	addq	%rcx, %r13
	addq	%r15, %r13
	addq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-536(%rbp), %rdi
	jmp	.LBB32_107
.LBB32_114:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_115:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_86:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_87:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_88:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r13
	jmp	.LBB32_122
.LBB32_116:
	leaq	-536(%rbp), %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
.LBB32_117:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_118:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_119:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_120:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_121:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_122:
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
.LBB32_123:
	movl	$.L.str.8, %edi
	movl	$.L.str.13, %edx
	movl	$783, %esi              # imm = 0x30F
	jmp	.LBB32_128
.LBB32_124:
	movl	$.L.str.8, %edi
	movl	$.L.str.14, %edx
	movl	$815, %esi              # imm = 0x32F
	jmp	.LBB32_128
.LBB32_125:
	movl	$.L.str.8, %edi
	movl	$.L.str.15, %edx
	movl	$851, %esi              # imm = 0x353
	jmp	.LBB32_128
.LBB32_126:
	movl	$.L.str.8, %edi
	movl	$.L.str.16, %edx
	movl	$892, %esi              # imm = 0x37C
	jmp	.LBB32_128
.LBB32_127:
	movl	$.L.str.8, %edi
	movl	$.L.str.17, %edx
	movl	$991, %esi              # imm = 0x3DF
.LBB32_128:
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end32:
	.size	rdbSaveObject, .Lfunc_end32-rdbSaveObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI32_0:
	.quad	.LBB32_66
	.quad	.LBB32_70
	.quad	.LBB32_68
	.quad	.LBB32_69
	.quad	.LBB32_67
.LJTI32_1:
	.quad	.LBB32_75
	.quad	.LBB32_79
	.quad	.LBB32_77
	.quad	.LBB32_78
	.quad	.LBB32_76
.LJTI32_2:
	.quad	.LBB32_44
	.quad	.LBB32_48
	.quad	.LBB32_46
	.quad	.LBB32_47
	.quad	.LBB32_45
.LJTI32_3:
	.quad	.LBB32_21
	.quad	.LBB32_25
	.quad	.LBB32_23
	.quad	.LBB32_24
	.quad	.LBB32_22
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
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$24, %rsp
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	server+2712(%rip), %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	je	.LBB34_3
# %bb.1:
	movq	%rcx, %rbx
	movq	%r12, %rdi
	movl	$252, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB34_23
# %bb.2:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveMillisecondTime
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB34_23
.LBB34_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	je	.LBB34_6
# %bb.4:
	movq	%r15, %rdi
	callq	estimateObjectIdleTime
	movq	%rax, %rbx
	movq	%r12, %rdi
	movl	$248, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB34_22
# %bb.5:
	shrq	$3, %rbx
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	movq	%rbx, %rax
	mulq	%rcx
	shrq	$4, %rdx
	movq	%r12, %rdi
	movq	%rdx, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB34_24
.LBB34_6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r13b
	je	.LBB34_19
# %bb.7:
	movq	%r15, %rdi
	callq	LFUDecrAndReturn
	movb	%al, -41(%rbp)
	movq	%r12, %rdi
	movl	$249, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB34_22
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB34_18
# %bb.9:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	leaq	-41(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB34_10:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB34_12
# %bb.11:                               #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB34_13
.LBB34_12:                              #   in Loop: Header=BB34_10 Depth=1
	movq	%r14, %rbx
.LBB34_13:                              #   in Loop: Header=BB34_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB34_15
# %bb.14:                               #   in Loop: Header=BB34_10 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB34_15:                              #   in Loop: Header=BB34_10 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB34_27
# %bb.16:                               #   in Loop: Header=BB34_10 Depth=1
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	jne	.LBB34_10
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB34_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_19:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	rdbSaveObjectType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB34_23
# %bb.20:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	rdbSaveStringObject
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB34_23
# %bb.21:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	rdbSaveObject
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %eax
	addl	$-1, %eax
	jmp	.LBB34_25
.LBB34_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_24:
	movl	$-1, %eax
.LBB34_25:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	subq	$24, %rsp
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$250, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
	cmpl	$-1, %eax
	je	.LBB35_4
# %bb.1:
	movl	%eax, %r13d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB35_4
# %bb.2:
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB35_4
# %bb.3:
	movslq	%r13d, %rcx
	addq	%rcx, %r15
	addq	%rax, %r15
	movq	%r15, %r14
.LBB35_4:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	$250, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB36_5
# %bb.1:
	movl	%eax, %r12d
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB36_2
# %bb.3:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	movq	$-1, %rcx
	je	.LBB36_5
# %bb.4:
	movslq	%r12d, %rcx
	addq	%rcx, %rbx
	addq	%rax, %rbx
	movq	%rbx, %rcx
	jmp	.LBB36_5
.LBB36_2:
	movq	$-1, %rcx
.LBB36_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r12
	leaq	-80(%rbp), %rdi
	movl	$21, %esi
	callq	ll2string
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	%r12, %rdi
	movl	$250, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
	cmpl	$-1, %eax
	je	.LBB37_4
# %bb.1:
	movl	%eax, %r15d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB37_4
# %bb.2:
	movq	%rax, %rbx
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	leaq	-80(%rbp), %rsi
	movq	%r12, %rdi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB37_4
# %bb.3:
	movslq	%r15d, %rcx
	addq	%rcx, %rbx
	addq	%rax, %rbx
	movq	%rbx, %r14
.LBB37_4:
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$.L.str.20, %esi
	movl	$.L.str.21, %edx
	callq	rdbSaveAuxFieldStrStr
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_1
# %bb.2:
	movl	$.L.str.22, %esi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	rdbSaveAuxFieldStrInt
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_1
# %bb.3:
	xorl	%edi, %edi
	callq	time
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	rdbSaveAuxFieldStrInt
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_1
# %bb.4:
	callq	zmalloc_used_memory
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	rdbSaveAuxFieldStrInt
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_1
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB38_9
# %bb.6:
	movslq	(%r15), %rdx
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	rdbSaveAuxFieldStrInt
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_1
# %bb.7:
	movl	$.L.str.26, %esi
	movl	$server+2268, %edx
	movq	%rbx, %rdi
	callq	rdbSaveAuxFieldStrStr
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_1
# %bb.8:
	movq	server+2352(%rip), %rdx
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	callq	rdbSaveAuxFieldStrInt
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB38_1
.LBB38_9:
	andl	$1, %r14d
	movl	%r14d, %edx
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	rdbSaveAuxFieldStrInt
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %eax
	addl	$-1, %eax
	jmp	.LBB38_10
.LBB38_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB38_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$247, %esi
	callq	rdbSaveType
	movq	(%r14), %rsi
	movq	%rbx, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
	cmpl	$-1, %eax
	je	.LBB39_9
# %bb.1:
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB39_9
# %bb.2:
	movslq	%r15d, %rsi
	movq	%rbx, %rdi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB39_9
# %bb.3:
	movq	%rbx, -72(%rbp)
	movq	%r14, -64(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -56(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -48(%rbp)
	leaq	-80(%rbp), %rdi
	movl	%r15d, %esi
	callq	*72(%r14)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB39_4
# %bb.5:
	cltq
	addq	%rax, -80(%rbp)
	jmp	.LBB39_6
.LBB39_4:
	movl	$1, -56(%rbp)
.LBB39_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB39_8
# %bb.7:
	callq	moduleFreeContext
	movq	-48(%rbp), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB39_8:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpl	$1, -56(%rbp)
	sbbq	%r12, %r12
	notq	%r12
	orq	-80(%rbp), %r12
.LBB39_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
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
	subq	$104, %rsp
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	cmpl	$0, server+2132(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	je	.LBB40_2
# %bb.1:
	leaq	32(%r15), %r12
	movq	$rioGenericUpdateChecksum, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-106(%rbp), %rdi
	movl	$10, %esi
	movl	$.L.str.29, %edx
	movl	$9, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB40_4
.LBB40_2:
	movq	%rcx, %rbx
	movl	%edx, %r13d
	leaq	-106(%rbp), %rdi
	movl	$10, %esi
	movl	$.L.str.29, %edx
	movl	$9, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB40_13
# %bb.3:
	leaq	32(%r15), %r12
.LBB40_4:
	leaq	-106(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$9, %r13d
	.p2align	4, 0x90
.LBB40_5:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB40_7
# %bb.6:                                #   in Loop: Header=BB40_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jb	.LBB40_8
.LBB40_7:                               #   in Loop: Header=BB40_5 Depth=1
	movq	%r13, %rbx
.LBB40_8:                               #   in Loop: Header=BB40_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_10
# %bb.9:                                #   in Loop: Header=BB40_5 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB40_10:                              #   in Loop: Header=BB40_5 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_17
# %bb.11:                               #   in Loop: Header=BB40_5 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r13
	jne	.LBB40_5
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movl	-60(%rbp), %r13d        # 4-byte Reload
.LBB40_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	%r13d, %esi
	movq	%rbx, %rdx
	callq	rdbSaveInfoAuxFields
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB40_49
# %bb.14:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	rdbSaveModulesAux
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB40_49
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB40_36
# %bb.16:
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB40_21
.LBB40_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_49:
	xorl	%r14d, %r14d
.LBB40_50:
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB40_51:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB40_53
# %bb.52:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_53:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB40_56
# %bb.54:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$-1, %eax
.LBB40_55:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB40_57
.LBB40_56:
	movl	$-1, %eax
.LBB40_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB40_19:                              #   in Loop: Header=BB40_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_20:                              #   in Loop: Header=BB40_21 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jge	.LBB40_36
.LBB40_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_30 Depth 2
	movq	server+48(%rip), %r12
	movq	%rbx, %r14
	shlq	$6, %r14
	movq	(%r12,%r14), %rdi
	movq	40(%rdi), %rcx
	addq	72(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB40_19
# %bb.22:                               #   in Loop: Header=BB40_21 Depth=1
	callq	dictGetSafeIterator
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	$254, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB40_73
# %bb.23:                               #   in Loop: Header=BB40_21 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB40_73
# %bb.24:                               #   in Loop: Header=BB40_21 Depth=1
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	leaq	(%r12,%r14), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	72(%rax), %r13
	movq	8(%r12,%r14), %rax
	movq	72(%rax), %rbx
	addq	40(%rax), %rbx
	movq	%r15, %rdi
	movl	$251, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB40_35
# %bb.25:                               #   in Loop: Header=BB40_21 Depth=1
	addq	-128(%rbp), %r13        # 8-byte Folded Reload
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB40_35
# %bb.26:                               #   in Loop: Header=BB40_21 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB40_35
# %bb.27:                               #   in Loop: Header=BB40_21 Depth=1
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_34
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB40_21 Depth=1
	movl	-60(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB40_30
	.p2align	4, 0x90
.LBB40_29:                              #   in Loop: Header=BB40_30 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_34
.LBB40_30:                              #   Parent Loop BB40_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %r12d
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movq	-136(%rbp), %rdi        # 8-byte Reload
	leaq	-96(%rbp), %r13
	movq	%r13, %rsi
	callq	getExpire
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	rdbSaveKeyValuePair
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB40_35
# %bb.31:                               #   in Loop: Header=BB40_30 Depth=2
	movl	%r12d, %r13d
	testb	$1, %r13b
	je	.LBB40_29
# %bb.32:                               #   in Loop: Header=BB40_30 Depth=2
	movq	48(%r15), %rbx
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$10240, %rax            # imm = 0x2800
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jbe	.LBB40_29
# %bb.33:                               #   in Loop: Header=BB40_30 Depth=2
	callq	aofReadDiffFromParent
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB40_29
.LBB40_34:                              #   in Loop: Header=BB40_21 Depth=1
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	server+1792(%rip), %eax
	movq	-120(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB40_20
.LBB40_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB40_50
.LBB40_36:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB40_38
# %bb.37:
	movq	server+3016(%rip), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB40_58
.LBB40_38:
	movq	%r15, %rdi
	movl	$2, %esi
	callq	rdbSaveModulesAux
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB40_49
# %bb.39:
	movq	%r15, %rdi
	movl	$255, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB40_49
# %bb.40:
	leaq	-96(%rbp), %r14
	movq	40(%r15), %rax
	movq	%rax, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r12d
	.p2align	4, 0x90
.LBB40_41:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB40_43
# %bb.42:                               #   in Loop: Header=BB40_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB40_44
.LBB40_43:                              #   in Loop: Header=BB40_41 Depth=1
	movq	%r12, %rbx
.LBB40_44:                              #   in Loop: Header=BB40_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_46
# %bb.45:                               #   in Loop: Header=BB40_41 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB40_46:                              #   in Loop: Header=BB40_41 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_18
# %bb.47:                               #   in Loop: Header=BB40_41 Depth=1
	addq	%rbx, %r14
	addq	%rbx, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB40_41
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB40_55
.LBB40_58:
	callq	dictGetIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB40_59:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_74
# %bb.60:                               #   in Loop: Header=BB40_59 Depth=1
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB40_63
# %bb.61:                               #   in Loop: Header=BB40_59 Depth=1
	movl	%r12d, %eax
	andl	$7, %eax
	jmpq	*.LJTI40_0(,%rax,8)
.LBB40_62:                              #   in Loop: Header=BB40_59 Depth=1
	movq	%rcx, %r13
	shrq	$3, %r12
	jmp	.LBB40_68
.LBB40_63:                              #   in Loop: Header=BB40_59 Depth=1
	movq	%rcx, %r13
	xorl	%r12d, %r12d
	jmp	.LBB40_68
.LBB40_64:                              #   in Loop: Header=BB40_59 Depth=1
	movq	%rcx, %r13
	movzbl	-3(%rcx), %r12d
	jmp	.LBB40_68
.LBB40_65:                              #   in Loop: Header=BB40_59 Depth=1
	movq	%rcx, %r13
	movzwl	-5(%rcx), %r12d
	jmp	.LBB40_68
.LBB40_66:                              #   in Loop: Header=BB40_59 Depth=1
	movq	%rcx, %r13
	movl	-9(%rcx), %r12d
	jmp	.LBB40_68
.LBB40_67:                              #   in Loop: Header=BB40_59 Depth=1
	movq	%rcx, %r13
	movq	-17(%rcx), %r12
	.p2align	4, 0x90
.LBB40_68:                              #   in Loop: Header=BB40_59 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	$250, %esi
	callq	rdbSaveType
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB40_72
# %bb.69:                               #   in Loop: Header=BB40_59 Depth=1
	movl	%eax, %ebx
	movl	$.L.str.30, %esi
	movl	$3, %edx
	movq	%r15, %rdi
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB40_72
# %bb.70:                               #   in Loop: Header=BB40_59 Depth=1
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB40_72
# %bb.71:                               #   in Loop: Header=BB40_59 Depth=1
	movslq	%ebx, %rcx
	addq	%rcx, %r14
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB40_59
	jmp	.LBB40_50
.LBB40_72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_73:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB40_51
.LBB40_74:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB40_38
.Lfunc_end40:
	.size	rdbSaveRio, .Lfunc_end40-rdbSaveRio
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI40_0:
	.quad	.LBB40_62
	.quad	.LBB40_64
	.quad	.LBB40_65
	.quad	.LBB40_66
	.quad	.LBB40_67
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB41_2
# %bb.1:
	movl	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB41_2:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.31, %ebx
	movl	$5, %r14d
	.p2align	4, 0x90
.LBB41_3:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB41_5
# %bb.4:                                #   in Loop: Header=BB41_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jb	.LBB41_6
.LBB41_5:                               #   in Loop: Header=BB41_3 Depth=1
	movq	%r14, %r15
.LBB41_6:                               #   in Loop: Header=BB41_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_8
# %bb.7:                                #   in Loop: Header=BB41_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB41_8:                               #   in Loop: Header=BB41_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_36
# %bb.9:                                #   in Loop: Header=BB41_3 Depth=1
	addq	%r15, %rbx
	addq	%r15, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %r14
	jne	.LBB41_3
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %r14d
	.p2align	4, 0x90
.LBB41_11:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB41_13
# %bb.12:                               #   in Loop: Header=BB41_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB41_14
.LBB41_13:                              #   in Loop: Header=BB41_11 Depth=1
	movq	%r14, %rbx
.LBB41_14:                              #   in Loop: Header=BB41_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_16
# %bb.15:                               #   in Loop: Header=BB41_11 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB41_16:                              #   in Loop: Header=BB41_11 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_36
# %bb.17:                               #   in Loop: Header=BB41_11 Depth=1
	addq	%rbx, %r12
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	jne	.LBB41_11
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.32, %r15d
	movl	$2, %r14d
	.p2align	4, 0x90
.LBB41_19:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB41_21
# %bb.20:                               #   in Loop: Header=BB41_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB41_22
.LBB41_21:                              #   in Loop: Header=BB41_19 Depth=1
	movq	%r14, %rbx
.LBB41_22:                              #   in Loop: Header=BB41_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_24
# %bb.23:                               #   in Loop: Header=BB41_19 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB41_24:                              #   in Loop: Header=BB41_19 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_36
# %bb.25:                               #   in Loop: Header=BB41_19 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	jne	.LBB41_19
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	rdbSaveRio
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB41_37
# %bb.27:
	leaq	-96(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %r14d
	.p2align	4, 0x90
.LBB41_28:                              # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB41_30
# %bb.29:                               #   in Loop: Header=BB41_28 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB41_31
.LBB41_30:                              #   in Loop: Header=BB41_28 Depth=1
	movq	%r14, %rbx
.LBB41_31:                              #   in Loop: Header=BB41_28 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_33
# %bb.32:                               #   in Loop: Header=BB41_28 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB41_33:                              #   in Loop: Header=BB41_28 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_36
# %bb.34:                               #   in Loop: Header=BB41_28 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	jne	.LBB41_28
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB41_40
.LBB41_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB41_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	testq	%rbx, %rbx
	je	.LBB41_40
# %bb.38:
	cmpl	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB41_40
# %bb.39:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB41_40:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB42_9
# %bb.1:
	movq	%rax, %rbx
	leaq	-136(%rbp), %rdi
	movq	%rax, %rsi
	callq	rioInitWithFile
	cmpl	$0, server+2020(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB42_3
# %bb.2:
	leaq	-136(%rbp), %rdi
	movl	$33554432, %esi         # imm = 0x2000000
	callq	rioSetAutoSync
	movl	$42, __A_VARIABLE(%rip)
.LBB42_3:
	leaq	-136(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	rdbSaveRio
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB42_10
# %bb.4:
	movq	%rbx, %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB42_11
# %bb.5:
	movq	%rbx, %rdi
	callq	fileno
	movl	%eax, %edi
	callq	fsync
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB42_11
# %bb.6:
	movq	%rbx, %rdi
	callq	fclose
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB42_11
# %bb.7:
	leaq	-400(%rbp), %rdi
	movq	%r14, %rsi
	callq	rename
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	cmpl	$-1, %eax
	je	.LBB43_1
.LBB43_13:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB43_10
# %bb.8:
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jl	.LBB43_10
# %bb.9:
	movl	$.L.str.42, %edi
	movq	%rdx, %rsi
	callq	latencyAddSample
	movl	$42, __A_VARIABLE(%rip)
.LBB43_10:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB43_6
# %bb.3:
	movq	$-1, %rdi
	callq	zmalloc_get_private_dirty
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB43_5
# %bb.4:
	movq	%r15, %rdx
	shrq	$20, %rdx
	movl	$.L.str.41, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB43_5:
	movq	%r15, server+2208(%rip)
	xorl	%edi, %edi
	callq	sendChildInfo
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %r15
	jmp	.LBB45_1
	.p2align	4, 0x90
.LBB45_29:                              #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB45_30:                              #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB45_31:                              #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB45_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_22 Depth 2
                                        #     Child Loop BB45_13 Depth 2
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB45_29
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_32
# %bb.3:                                #   in Loop: Header=BB45_1 Depth=1
	leaq	-1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rcx
	ja	.LBB45_7
# %bb.4:                                #   in Loop: Header=BB45_1 Depth=1
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB45_30
	jmp	.LBB45_5
	.p2align	4, 0x90
.LBB45_7:                               #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %rax
	jne	.LBB45_11
# %bb.8:                                #   in Loop: Header=BB45_1 Depth=1
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_9
# %bb.10:                               #   in Loop: Header=BB45_1 Depth=1
	movq	%rax, %rdi
	callq	decrRefCount
	jmp	.LBB45_30
.LBB45_11:                              #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rax
	jne	.LBB45_20
# %bb.12:                               #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r14d
	movq	%r15, %r13
	jmp	.LBB45_13
	.p2align	4, 0x90
.LBB45_19:                              #   in Loop: Header=BB45_13 Depth=2
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB45_29
.LBB45_13:                              #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB45_15
# %bb.14:                               #   in Loop: Header=BB45_13 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB45_16
.LBB45_15:                              #   in Loop: Header=BB45_13 Depth=2
	movq	%r14, %rbx
.LBB45_16:                              #   in Loop: Header=BB45_13 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_33
# %bb.17:                               #   in Loop: Header=BB45_13 Depth=2
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_19
# %bb.18:                               #   in Loop: Header=BB45_13 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB45_19
.LBB45_20:                              #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4, %rax
	jne	.LBB45_31
# %bb.21:                               #   in Loop: Header=BB45_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r14d
	movq	%r15, %r13
	jmp	.LBB45_22
	.p2align	4, 0x90
.LBB45_28:                              #   in Loop: Header=BB45_22 Depth=2
	addq	%rbx, %r13
	addq	%rbx, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r14
	je	.LBB45_29
.LBB45_22:                              #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB45_24
# %bb.23:                               #   in Loop: Header=BB45_22 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB45_25
.LBB45_24:                              #   in Loop: Header=BB45_22 Depth=2
	movq	%r14, %rbx
.LBB45_25:                              #   in Loop: Header=BB45_22 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_34
# %bb.26:                               #   in Loop: Header=BB45_22 Depth=2
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_28
# %bb.27:                               #   in Loop: Header=BB45_22 Depth=2
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB45_28
.LBB45_32:
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
.LBB45_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.47, %esi
	movl	$1412, %edi             # imm = 0x584
	jmp	.LBB45_6
.LBB45_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.48, %esi
	movl	$1418, %edi             # imm = 0x58A
.LBB45_6:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB45_5:
	movl	$.L.str.45, %esi
	movl	$1399, %edi             # imm = 0x577
	jmp	.LBB45_6
.LBB45_9:
	movl	$.L.str.46, %esi
	movl	$1405, %edi             # imm = 0x57D
	jmp	.LBB45_6
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
	movq	%rsi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB46_6
# %bb.1:
	movl	%edi, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edi
	movq	%r12, -48(%rbp)         # 8-byte Spill
	jne	.LBB46_10
# %bb.2:
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_100
# %bb.3:
	movq	-128(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r12
	je	.LBB46_103
# %bb.4:
	callq	createQuicklistObject
	movq	%rax, %r14
	movq	8(%rax), %rdi
	movl	server+2864(%rip), %esi
	movl	server+2868(%rip), %edx
	callq	quicklistSetOptions
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB46_80
# %bb.5:                                # %.preheader
	xorl	%r13d, %r13d
	jmp	.LBB46_19
.LBB46_6:
	xorl	%r13d, %r13d
	movq	%r12, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_104
# %bb.7:
	movq	%rax, %rdi
	callq	tryObjectEncoding
.LBB46_8:
	movq	%rax, %r13
.LBB46_9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_104
.LBB46_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jne	.LBB46_27
# %bb.11:
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_100
# %bb.12:
	movq	-128(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r15
	je	.LBB46_103
# %bb.13:
	cmpq	server+2816(%rip), %r15
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB46_81
# %bb.14:
	callq	createSetObject
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %r15
	jb	.LBB46_16
# %bb.15:
	movq	8(%r13), %rdi
	movq	%r15, %rsi
	callq	dictExpand
	movl	$42, __A_VARIABLE(%rip)
.LBB46_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_82
.LBB46_17:                              #   in Loop: Header=BB46_19 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB46_18:                              #   in Loop: Header=BB46_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rdi
	callq	quicklistPushTail
	movq	%r15, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB46_80
.LBB46_19:                              # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$1, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_104
# %bb.20:                               #   in Loop: Header=BB46_19 Depth=1
	movq	%rax, %rbx
	addq	$-1, %r12
	movq	%rax, %rdi
	callq	getDecodedObject
	movq	%rax, %r15
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB46_26
# %bb.21:                               #   in Loop: Header=BB46_19 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI46_9(,%rax,8)
.LBB46_22:                              #   in Loop: Header=BB46_19 Depth=1
	shrq	$3, %rdx
	jmp	.LBB46_18
.LBB46_23:                              #   in Loop: Header=BB46_19 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB46_18
.LBB46_24:                              #   in Loop: Header=BB46_19 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB46_18
.LBB46_25:                              #   in Loop: Header=BB46_19 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB46_18
.LBB46_26:                              #   in Loop: Header=BB46_19 Depth=1
	xorl	%edx, %edx
	jmp	.LBB46_18
.LBB46_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %r15d
	je	.LBB46_29
# %bb.28:
	cmpl	$3, %r15d
	jne	.LBB46_33
.LBB46_29:
	leaq	-128(%rbp), %rbx
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_79
# %bb.30:
	movq	-128(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r13
	je	.LBB46_102
# %bb.31:
	callq	createZsetObject
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %r13
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jb	.LBB46_105
# %bb.32:
	movq	(%rax), %rdi
	movq	%r13, %rsi
	callq	dictExpand
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_106
.LBB46_80:
	movq	%r14, %r13
	jmp	.LBB46_104
.LBB46_33:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r15d
	jne	.LBB46_93
# %bb.34:
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_79
# %bb.35:
	movq	-128(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r15
	je	.LBB46_102
# %bb.36:
	callq	createHashObject
	movq	%rax, %r13
	cmpq	server+2800(%rip), %r15
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB46_38
# %bb.37:
	movq	%r13, %rdi
	movl	$2, %esi
	callq	hashTypeConvert
	movl	$42, __A_VARIABLE(%rip)
.LBB46_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB46_239
# %bb.39:
	movl	%eax, %ecx
	andl	$240, %ecx
	cmpl	$80, %ecx
	jne	.LBB46_239
# %bb.40:
	addq	$-1, %r15
	movq	%r15, %rcx
.LBB46_41:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r15
	movq	%r12, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_102
# %bb.42:                               #   in Loop: Header=BB46_41 Depth=1
	movq	%r12, %rdi
	movq	%rax, %r12
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_102
# %bb.43:                               #   in Loop: Header=BB46_41 Depth=1
	movq	%rax, %rbx
	movq	8(%r13), %rdi
	movzbl	-1(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB46_50
# %bb.44:                               #   in Loop: Header=BB46_41 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI46_5(,%rax,8)
.LBB46_45:                              #   in Loop: Header=BB46_41 Depth=1
	shrq	$3, %rdx
	jmp	.LBB46_51
.LBB46_46:                              #   in Loop: Header=BB46_41 Depth=1
	movq	-17(%r12), %rdx
	jmp	.LBB46_51
.LBB46_47:                              #   in Loop: Header=BB46_41 Depth=1
	movzwl	-5(%r12), %edx
	jmp	.LBB46_51
.LBB46_48:                              #   in Loop: Header=BB46_41 Depth=1
	movl	-9(%r12), %edx
	jmp	.LBB46_51
.LBB46_49:                              #   in Loop: Header=BB46_41 Depth=1
	movzbl	-3(%r12), %edx
	jmp	.LBB46_51
.LBB46_50:                              #   in Loop: Header=BB46_41 Depth=1
	xorl	%edx, %edx
.LBB46_51:                              #   in Loop: Header=BB46_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, 8(%r13)
	movzbl	-1(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB46_58
# %bb.52:                               #   in Loop: Header=BB46_41 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_6(,%rcx,8)
.LBB46_53:                              #   in Loop: Header=BB46_41 Depth=1
	shrq	$3, %rdx
	jmp	.LBB46_59
.LBB46_54:                              #   in Loop: Header=BB46_41 Depth=1
	movq	-17(%rbx), %rdx
	jmp	.LBB46_59
.LBB46_55:                              #   in Loop: Header=BB46_41 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB46_59
.LBB46_56:                              #   in Loop: Header=BB46_41 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB46_59
.LBB46_57:                              #   in Loop: Header=BB46_41 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB46_59
.LBB46_58:                              #   in Loop: Header=BB46_41 Depth=1
	xorl	%edx, %edx
.LBB46_59:                              #   in Loop: Header=BB46_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, 8(%r13)
	movzbl	-1(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB46_70
# %bb.60:                               #   in Loop: Header=BB46_41 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI46_7(,%rax,8)
.LBB46_61:                              #   in Loop: Header=BB46_41 Depth=1
	shrq	$3, %rcx
	jmp	.LBB46_66
.LBB46_62:                              #   in Loop: Header=BB46_41 Depth=1
	movq	-17(%r12), %rcx
	jmp	.LBB46_66
.LBB46_63:                              #   in Loop: Header=BB46_41 Depth=1
	movzwl	-5(%r12), %ecx
	jmp	.LBB46_66
.LBB46_64:                              #   in Loop: Header=BB46_41 Depth=1
	movl	-9(%r12), %ecx
	jmp	.LBB46_66
.LBB46_65:                              #   in Loop: Header=BB46_41 Depth=1
	movzbl	-3(%r12), %ecx
.LBB46_66:                              #   in Loop: Header=BB46_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2808(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	ja	.LBB46_237
.LBB46_67:                              #   in Loop: Header=BB46_41 Depth=1
	movzbl	-1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB46_78
# %bb.68:                               #   in Loop: Header=BB46_41 Depth=1
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI46_8(,%rdx,8)
.LBB46_69:                              #   in Loop: Header=BB46_41 Depth=1
	shrq	$3, %rcx
	jmp	.LBB46_75
.LBB46_70:                              #   in Loop: Header=BB46_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2808(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_67
.LBB46_71:                              #   in Loop: Header=BB46_41 Depth=1
	movq	-17(%rbx), %rcx
	jmp	.LBB46_75
.LBB46_72:                              #   in Loop: Header=BB46_41 Depth=1
	movzwl	-5(%rbx), %ecx
	jmp	.LBB46_75
.LBB46_73:                              #   in Loop: Header=BB46_41 Depth=1
	movl	-9(%rbx), %ecx
	jmp	.LBB46_75
.LBB46_74:                              #   in Loop: Header=BB46_41 Depth=1
	movzbl	-3(%rbx), %ecx
.LBB46_75:                              #   in Loop: Header=BB46_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	ja	.LBB46_237
.LBB46_76:                              #   in Loop: Header=BB46_41 Depth=1
	movq	%r12, %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
	movq	%r15, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	jae	.LBB46_238
# %bb.77:                               #   in Loop: Header=BB46_41 Depth=1
	movl	%eax, %edx
	andl	$240, %edx
	cmpl	$80, %edx
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB46_41
	jmp	.LBB46_239
.LBB46_78:                              #   in Loop: Header=BB46_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_76
.LBB46_81:
	callq	createIntsetObject
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB46_104
.LBB46_82:
	movl	$1, %r12d
	movl	$240, %r14d
	jmp	.LBB46_85
	.p2align	4, 0x90
.LBB46_83:                              #   in Loop: Header=BB46_85 Depth=1
	movq	%rbx, %rdi
	callq	sdsfree
.LBB46_84:                              #   in Loop: Header=BB46_85 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jbe	.LBB46_104
.LBB46_85:                              # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_102
# %bb.86:                               #   in Loop: Header=BB46_85 Depth=1
	movq	%rax, %rbx
	movl	(%r13), %eax
	andl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %eax
	jne	.LBB46_91
# %bb.87:                               #   in Loop: Header=BB46_85 Depth=1
	movq	%rbx, %rdi
	leaq	-128(%rbp), %rsi
	callq	isSdsRepresentableAsLongLong
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
	testl	%eax, %eax
	je	.LBB46_89
# %bb.88:                               #   in Loop: Header=BB46_85 Depth=1
	movq	%r13, %rdi
	movl	$2, %esi
	callq	setTypeConvert
	movq	8(%r13), %rdi
	movq	%r15, %rsi
	callq	dictExpand
	jmp	.LBB46_90
.LBB46_89:                              #   in Loop: Header=BB46_85 Depth=1
	movq	8(%r13), %rdi
	movq	-128(%rbp), %rsi
	xorl	%edx, %edx
	callq	intsetAdd
	movq	%rax, 8(%r13)
.LBB46_90:                              #   in Loop: Header=BB46_85 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %r14d
.LBB46_91:                              #   in Loop: Header=BB46_85 Depth=1
	movl	(%r13), %eax
	andl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB46_83
# %bb.92:                               #   in Loop: Header=BB46_85 Depth=1
	movq	8(%r13), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	jmp	.LBB46_84
.LBB46_93:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %r15d
	jne	.LBB46_140
# %bb.94:
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_100
# %bb.95:
	movq	-128(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rbx
	je	.LBB46_103
# %bb.96:
	callq	createQuicklistObject
	movq	%rax, %r13
	movq	8(%rax), %rdi
	movl	server+2864(%rip), %esi
	movl	server+2868(%rip), %edx
	callq	quicklistSetOptions
.LBB46_97:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB46_104
# %bb.98:                               #   in Loop: Header=BB46_97 Depth=1
	movq	%r12, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_102
# %bb.99:                               #   in Loop: Header=BB46_97 Depth=1
	addq	$-1, %rbx
	movq	8(%r13), %rdi
	movq	%rax, %rsi
	callq	quicklistAppendZiplist
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_97
.LBB46_105:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB46_151
.LBB46_106:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB46_107:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_111 Depth 2
	movq	%r12, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_102
# %bb.108:                              #   in Loop: Header=BB46_107 Depth=1
	movq	%rax, -160(%rbp)        # 8-byte Spill
	cmpl	$5, %r15d
	jne	.LBB46_117
# %bb.109:                              #   in Loop: Header=BB46_107 Depth=1
	movq	%r13, -168(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r13d
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB46_111
	.p2align	4, 0x90
.LBB46_110:                             #   in Loop: Header=BB46_111 Depth=2
	addq	%r14, %rbx
	addq	%r14, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %r13
	je	.LBB46_118
.LBB46_111:                             #   Parent Loop BB46_107 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r12), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB46_113
# %bb.112:                              #   in Loop: Header=BB46_111 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r14
	jb	.LBB46_114
.LBB46_113:                             #   in Loop: Header=BB46_111 Depth=2
	movq	%r13, %r14
.LBB46_114:                             #   in Loop: Header=BB46_111 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_139
# %bb.115:                              #   in Loop: Header=BB46_111 Depth=2
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_110
# %bb.116:                              #   in Loop: Header=BB46_111 Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_110
.LBB46_117:                             #   in Loop: Header=BB46_107 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	rdbLoadDoubleValue
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB46_119
	jmp	.LBB46_101
.LBB46_118:                             #   in Loop: Header=BB46_107 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-128(%rbp), %rbx
	movq	-168(%rbp), %r13        # 8-byte Reload
.LBB46_119:                             #   in Loop: Header=BB46_107 Depth=1
	addq	$-1, %r13
	movq	-160(%rbp), %r14        # 8-byte Reload
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB46_130
# %bb.120:                              #   in Loop: Header=BB46_107 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmpq	*.LJTI46_0(,%rcx,8)
.LBB46_121:                             #   in Loop: Header=BB46_107 Depth=1
	movq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB46_126
.LBB46_122:                             #   in Loop: Header=BB46_107 Depth=1
	movq	-17(%r14), %rcx
	jmp	.LBB46_126
.LBB46_123:                             #   in Loop: Header=BB46_107 Depth=1
	movzwl	-5(%r14), %ecx
	jmp	.LBB46_126
.LBB46_124:                             #   in Loop: Header=BB46_107 Depth=1
	movl	-9(%r14), %ecx
	jmp	.LBB46_126
.LBB46_125:                             #   in Loop: Header=BB46_107 Depth=1
	movzbl	-3(%r14), %ecx
.LBB46_126:                             #   in Loop: Header=BB46_107 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-56(%rbp), %rcx         # 8-byte Folded Reload
	jbe	.LBB46_138
# %bb.127:                              #   in Loop: Header=BB46_107 Depth=1
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	ja	.LBB46_135
# %bb.128:                              #   in Loop: Header=BB46_107 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_1(,%rcx,8)
.LBB46_129:                             #   in Loop: Header=BB46_107 Depth=1
	shrq	$3, %rax
	jmp	.LBB46_136
.LBB46_130:                             #   in Loop: Header=BB46_107 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB46_137
.LBB46_131:                             #   in Loop: Header=BB46_107 Depth=1
	movq	-17(%r14), %rax
	jmp	.LBB46_136
.LBB46_132:                             #   in Loop: Header=BB46_107 Depth=1
	movzwl	-5(%r14), %eax
	jmp	.LBB46_136
.LBB46_133:                             #   in Loop: Header=BB46_107 Depth=1
	movl	-9(%r14), %eax
	jmp	.LBB46_136
.LBB46_134:                             #   in Loop: Header=BB46_107 Depth=1
	movzbl	-3(%r14), %eax
	jmp	.LBB46_136
.LBB46_135:                             #   in Loop: Header=BB46_107 Depth=1
	xorl	%eax, %eax
.LBB46_136:                             #   in Loop: Header=BB46_107 Depth=1
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB46_137:                             #   in Loop: Header=BB46_107 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_138:                             #   in Loop: Header=BB46_107 Depth=1
	movq	8(%r12), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%r14, %rsi
	callq	zslInsert
	movq	(%r12), %rdi
	leaq	8(%rax), %rdx
	movq	%r14, %rsi
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	movq	-48(%rbp), %r12         # 8-byte Reload
	jne	.LBB46_107
	jmp	.LBB46_152
.LBB46_139:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_79:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_100:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_101:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_102:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_103:
	xorl	%r13d, %r13d
.LBB46_104:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB46_140:
	leal	-9(%r15), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r14d
	ja	.LBB46_156
# %bb.141:
	movq	%r12, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_102
# %bb.142:
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r14d
	ja	.LBB46_270
# %bb.143:
	movq	%rax, %r13
	jmpq	*.LJTI46_4(,%r14,8)
.LBB46_144:
	callq	ziplistNew
	movq	%rax, %r14
	movq	%r13, -152(%rbp)        # 8-byte Spill
	movq	8(%r13), %rdi
	callq	zipmapRewind
	movl	$42, __A_VARIABLE(%rip)
	leaq	-128(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-76(%rbp), %r8
	movq	%rax, %rdi
	callq	zipmapNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_252
# %bb.145:                              # %.preheader8
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	leaq	-144(%rbp), %r13
	leaq	-76(%rbp), %r15
	jmp	.LBB46_147
.LBB46_146:                             #   in Loop: Header=BB46_147 Depth=1
	movq	-128(%rbp), %rsi
	movq	%r14, %rdi
	movl	$1, %ecx
	callq	ziplistPush
	movq	-144(%rbp), %rsi
	movl	-76(%rbp), %edx
	movq	%rax, %rdi
	movl	$1, %ecx
	callq	ziplistPush
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	leaq	-128(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	zipmapNext
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_253
.LBB46_147:                             # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %edx
	jbe	.LBB46_149
# %bb.148:                              #   in Loop: Header=BB46_147 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r12d
.LBB46_149:                             #   in Loop: Header=BB46_147 Depth=1
	movl	-76(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %eax
	jbe	.LBB46_146
# %bb.150:                              #   in Loop: Header=BB46_147 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r12d
	jmp	.LBB46_146
.LBB46_151:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB46_152:
	movq	-152(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	callq	zsetLength
	cmpq	server+2824(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB46_257
# %bb.153:
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	server+2832(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB46_257
# %bb.154:
	movq	%r13, %rdi
	movl	$5, %esi
.LBB46_155:
	callq	zsetConvert
	jmp	.LBB46_256
.LBB46_156:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$15, %r15d
	jne	.LBB46_159
# %bb.157:
	callq	createStreamObject
	movq	%rax, %r13
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_174
# %bb.158:
	movq	-128(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB46_175
	jmp	.LBB46_188
.LBB46_159:
	movl	%r15d, %eax
	orl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB46_271
# %bb.160:
	movq	%rdx, %rbx
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
	cmpl	$-1, %eax
	je	.LBB46_162
# %bb.161:
	movq	-128(%rbp), %r14
.LBB46_162:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	moduleTypeLookupModuleByID
	movq	%rax, %r12
	movl	rdbCheckMode(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %r15d
	jne	.LBB46_165
# %bb.163:
	testl	%eax, %eax
	je	.LBB46_165
# %bb.164:
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	moduleTypeNameByID
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	rdbLoadCheckModuleValue
	jmp	.LBB46_8
.LBB46_237:
	movq	%r12, %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r13, %rdi
	movl	$2, %esi
	callq	hashTypeConvert
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
.LBB46_238:
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB46_239:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %r15
	jb	.LBB46_242
# %bb.240:
	movl	%eax, %ecx
	andl	$240, %ecx
	cmpl	$32, %ecx
	jne	.LBB46_242
# %bb.241:
	movq	8(%r13), %rdi
	movq	%r15, %rsi
	callq	dictExpand
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
.LBB46_242:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB46_250
# %bb.243:
	andl	$240, %eax
	cmpl	$32, %eax
	jne	.LBB46_250
# %bb.244:
	movl	$240, %r14d
.LBB46_245:                             # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_102
# %bb.246:                              #   in Loop: Header=BB46_245 Depth=1
	movq	%rax, %rbx
	movq	%r12, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_102
# %bb.247:                              #   in Loop: Header=BB46_245 Depth=1
	movq	8(%r13), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB46_264
# %bb.248:                              #   in Loop: Header=BB46_245 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
	andl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r15
	leaq	-1(%r15), %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB46_250
# %bb.249:                              #   in Loop: Header=BB46_245 Depth=1
	cmpl	$32, %eax
	je	.LBB46_245
.LBB46_250:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB46_257
# %bb.251:
	movl	$.L.str.51, %edi
	movl	$.L.str.8, %esi
	movl	$1595, %edx             # imm = 0x63B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB46_165:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB46_273
# %bb.166:
	xorl	%eax, %eax
	cmpl	$6, %r15d
	sete	%al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -120(%rbp)
	movq	%r12, -112(%rbp)
	movq	$0, -128(%rbp)
	movl	$0, -104(%rbp)
	movq	%rbx, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$2, %ecx
	subl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	movl	%r14d, %esi
	andl	$1023, %esi             # imm = 0x3FF
	leaq	-128(%rbp), %rdi
	callq	*16(%r12)
	movq	%rax, %rbx
	movq	-96(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB46_168
# %bb.167:
	callq	moduleFreeContext
	movq	-96(%rbp), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB46_168:
	cmpl	$2, -100(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_172
# %bb.169:
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_276
# %bb.170:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_277
# %bb.171:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_172:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB46_274
# %bb.173:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	createModuleObject
	movq	%rax, %r13
	jmp	.LBB46_257
.LBB46_174:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
.LBB46_175:                             # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_265
# %bb.176:                              #   in Loop: Header=BB46_175 Depth=1
	movq	%rax, %r14
	movzbl	-1(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB46_266
# %bb.177:                              #   in Loop: Header=BB46_175 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_2(,%rcx,8)
.LBB46_178:                             #   in Loop: Header=BB46_175 Depth=1
	shrq	$3, %rax
	jmp	.LBB46_183
.LBB46_179:                             #   in Loop: Header=BB46_175 Depth=1
	movq	-17(%r14), %rax
	jmp	.LBB46_183
.LBB46_180:                             #   in Loop: Header=BB46_175 Depth=1
	movzwl	-5(%r14), %eax
	jmp	.LBB46_183
.LBB46_181:                             #   in Loop: Header=BB46_175 Depth=1
	movl	-9(%r14), %eax
	jmp	.LBB46_183
.LBB46_182:                             #   in Loop: Header=BB46_175 Depth=1
	movzbl	-3(%r14), %eax
.LBB46_183:                             #   in Loop: Header=BB46_175 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rax
	jne	.LBB46_267
# %bb.184:                              #   in Loop: Header=BB46_175 Depth=1
	movq	%r12, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_101
# %bb.185:                              #   in Loop: Header=BB46_175 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	lpFirst
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_268
# %bb.186:                              #   in Loop: Header=BB46_175 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB46_269
# %bb.187:                              #   in Loop: Header=BB46_175 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r15
	jne	.LBB46_175
.LBB46_188:
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rbx
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_190
# %bb.189:
	movq	-128(%rbp), %rcx
.LBB46_190:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rcx, 8(%rax)
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_192
# %bb.191:
	movq	-128(%rbp), %rcx
.LBB46_192:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rcx, 16(%rax)
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_194
# %bb.193:
	movq	-128(%rbp), %rbx
.LBB46_194:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rbx, 24(%rax)
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_203
# %bb.195:
	movq	-128(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB46_204
	jmp	.LBB46_257
.LBB46_196:
	movb	$84, (%r13)
	movq	%r13, %rdi
	callq	hashTypeLength
	cmpq	server+2800(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB46_257
# %bb.197:
	movq	%r13, %rdi
	movl	$2, %esi
	callq	hashTypeConvert
	jmp	.LBB46_256
.LBB46_198:
	movb	$98, (%r13)
	movq	8(%r13), %rdi
	callq	intsetLen
	movl	%eax, %eax
	cmpq	%rax, server+2816(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB46_257
# %bb.199:
	movq	%r13, %rdi
	movl	$2, %esi
	callq	setTypeConvert
	jmp	.LBB46_256
.LBB46_200:
	movb	$83, (%r13)
	movq	%r13, %rdi
	callq	zsetLength
	cmpq	server+2824(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB46_257
# %bb.201:
	movq	%r13, %rdi
	movl	$7, %esi
	jmp	.LBB46_155
.LBB46_202:
	movb	$81, (%r13)
	movq	%r13, %rdi
	movl	$9, %esi
	callq	listTypeConvert
	jmp	.LBB46_256
.LBB46_203:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
.LBB46_204:
	leaq	-144(%rbp), %r14
	movq	%r13, -152(%rbp)        # 8-byte Spill
	jmp	.LBB46_206
.LBB46_205:                             #   in Loop: Header=BB46_206 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$-1, %rax
	movq	-152(%rbp), %r13        # 8-byte Reload
	je	.LBB46_257
.LBB46_206:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_222 Depth 2
                                        #     Child Loop BB46_230 Depth 2
                                        #       Child Loop BB46_234 Depth 3
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_262
# %bb.207:                              #   in Loop: Header=BB46_206 Depth=1
	movq	%rax, %rbx
	xorl	%r15d, %r15d
	movq	%r12, %rdi
	xorl	%esi, %esi
	leaq	-128(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_209
# %bb.208:                              #   in Loop: Header=BB46_206 Depth=1
	movq	-128(%rbp), %rcx
.LBB46_209:                             #   in Loop: Header=BB46_206 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -128(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_211
# %bb.210:                              #   in Loop: Header=BB46_206 Depth=1
	movq	-144(%rbp), %r12
.LBB46_211:                             #   in Loop: Header=BB46_206 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -120(%rbp)
	movzbl	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movq	-48(%rbp), %r12         # 8-byte Reload
	ja	.LBB46_218
# %bb.212:                              #   in Loop: Header=BB46_206 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI46_3(,%rcx,8)
.LBB46_213:                             #   in Loop: Header=BB46_206 Depth=1
	shrq	$3, %rax
	movq	%rax, %r15
	jmp	.LBB46_218
.LBB46_214:                             #   in Loop: Header=BB46_206 Depth=1
	movq	-17(%rbx), %r15
	jmp	.LBB46_218
.LBB46_215:                             #   in Loop: Header=BB46_206 Depth=1
	movzwl	-5(%rbx), %r15d
	jmp	.LBB46_218
.LBB46_216:                             #   in Loop: Header=BB46_206 Depth=1
	movl	-9(%rbx), %r15d
	jmp	.LBB46_218
.LBB46_217:                             #   in Loop: Header=BB46_206 Depth=1
	movzbl	-3(%rbx), %r15d
.LBB46_218:                             #   in Loop: Header=BB46_206 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r15, %rdx
	leaq	-128(%rbp), %rcx
	callq	streamCreateCG
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_263
# %bb.219:                              #   in Loop: Header=BB46_206 Depth=1
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_221
# %bb.220:                              #   in Loop: Header=BB46_206 Depth=1
	movq	-144(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB46_222
	jmp	.LBB46_226
.LBB46_221:                             #   in Loop: Header=BB46_206 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
	.p2align	4, 0x90
.LBB46_222:                             #   Parent Loop BB46_206 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$16, %edx
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	rdbLoadRaw
	xorl	%edi, %edi
	callq	streamCreateNACK
	movq	%rax, %rbx
	movl	$8, %edx
	movq	%r13, %rdi
	leaq	-72(%rbp), %rsi
	callq	rdbLoadRaw
	movq	-72(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%rbx)
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-72(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB46_224
# %bb.223:                              #   in Loop: Header=BB46_222 Depth=2
	movq	-72(%rbp), %rcx
.LBB46_224:                             #   in Loop: Header=BB46_222 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, 8(%rbx)
	movq	16(%r15), %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB46_260
# %bb.225:                              #   in Loop: Header=BB46_222 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r12
	jne	.LBB46_222
.LBB46_226:                             #   in Loop: Header=BB46_206 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB46_228
# %bb.227:                              #   in Loop: Header=BB46_206 Depth=1
	movq	-144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB46_230
	jmp	.LBB46_205
.LBB46_228:                             #   in Loop: Header=BB46_206 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	jmp	.LBB46_230
	.p2align	4, 0x90
.LBB46_229:                             #   in Loop: Header=BB46_230 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	$-1, %rax
	je	.LBB46_205
.LBB46_230:                             #   Parent Loop BB46_206 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB46_234 Depth 3
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_261
# %bb.231:                              #   in Loop: Header=BB46_230 Depth=2
	movq	%r12, %rbx
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	streamLookupConsumer
	movq	%rax, %r13
	movq	%r12, %rdi
	callq	sdsfree
	movl	$8, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	rdbLoadRaw
	movq	-144(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r13)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	%rbx, %r12
	je	.LBB46_233
# %bb.232:                              #   in Loop: Header=BB46_230 Depth=2
	movq	-144(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB46_234
	jmp	.LBB46_229
	.p2align	4, 0x90
.LBB46_233:                             #   in Loop: Header=BB46_230 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rbx
	.p2align	4, 0x90
.LBB46_234:                             #   Parent Loop BB46_206 Depth=1
                                        #     Parent Loop BB46_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$16, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	rdbLoadRaw
	movq	16(%r15), %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	callq	raxFind
	cmpq	%rax, raxNotFound(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB46_259
# %bb.235:                              #   in Loop: Header=BB46_234 Depth=3
	movq	%r13, 16(%rax)
	movq	16(%r13), %rdi
	movl	$16, %edx
	movq	%r14, %rsi
	movq	%rax, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB46_258
# %bb.236:                              #   in Loop: Header=BB46_234 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	jne	.LBB46_234
	jmp	.LBB46_229
.LBB46_252:
	xorl	%r12d, %r12d
.LBB46_253:
	movq	-152(%rbp), %r13        # 8-byte Reload
	movq	8(%r13), %rdi
	callq	zfree
	movq	%r14, 8(%r13)
	movb	$84, (%r13)
	movq	%r13, %rdi
	callq	hashTypeLength
	cmpq	server+2800(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB46_255
# %bb.254:
	movl	%r12d, %eax
	cmpq	%rax, server+2808(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB46_256
.LBB46_255:
	movq	%r13, %rdi
	movl	$2, %esi
	callq	hashTypeConvert
	movl	$42, __A_VARIABLE(%rip)
.LBB46_256:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_257:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_9
.LBB46_258:
	movl	$.L.str.62, %esi
	movl	$1794, %edi             # imm = 0x702
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_259:
	movl	$.L.str.61, %esi
	movl	$1785, %edi             # imm = 0x6F9
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_260:
	movl	$.L.str.59, %esi
	movl	$1759, %edi             # imm = 0x6DF
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_261:
	movl	$.L.str.60, %esi
	movl	$1769, %edi             # imm = 0x6E9
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_262:
	movl	$.L.str.57, %esi
	movl	$1735, %edi             # imm = 0x6C7
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_263:
	movl	$.L.str.58, %esi
	movl	$1742, %edi             # imm = 0x6CE
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_264:
	movl	$.L.str.50, %esi
	movl	$1590, %edi             # imm = 0x636
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_265:
	movl	$.L.str.53, %esi
	movl	$1693, %edi             # imm = 0x69D
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_266:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_267:
	movl	$.L.str.54, %esi
	movl	$1697, %edi             # imm = 0x6A1
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_268:
	movl	$.L.str.55, %esi
	movl	$1709, %edi             # imm = 0x6AD
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_269:
	movl	$.L.str.56, %esi
	movl	$1717, %edi             # imm = 0x6B5
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_270:
	movl	$.L.str.52, %esi
	movl	$1679, %edi             # imm = 0x68F
	jmp	.LBB46_272
.LBB46_271:
	movl	$.L.str.52, %esi
	movl	$1840, %edi             # imm = 0x730
.LBB46_272:
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB46_273:
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	moduleTypeNameByID
	movl	$.L.str.63, %esi
	jmp	.LBB46_275
.LBB46_274:
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	moduleTypeNameByID
	movl	$.L.str.65, %esi
.LBB46_275:
	movl	$3, %edi
	movq	%rbx, %rdx
	jmp	.LBB46_278
.LBB46_276:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_277:
	leaq	-144(%rbp), %rdx
	movl	$.L.str.64, %esi
	movl	$3, %edi
.LBB46_278:
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end46:
	.size	rdbLoadObject, .Lfunc_end46-rdbLoadObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI46_0:
	.quad	.LBB46_121
	.quad	.LBB46_125
	.quad	.LBB46_123
	.quad	.LBB46_124
	.quad	.LBB46_122
.LJTI46_1:
	.quad	.LBB46_129
	.quad	.LBB46_134
	.quad	.LBB46_132
	.quad	.LBB46_133
	.quad	.LBB46_131
.LJTI46_2:
	.quad	.LBB46_178
	.quad	.LBB46_182
	.quad	.LBB46_180
	.quad	.LBB46_181
	.quad	.LBB46_179
.LJTI46_3:
	.quad	.LBB46_213
	.quad	.LBB46_217
	.quad	.LBB46_215
	.quad	.LBB46_216
	.quad	.LBB46_214
.LJTI46_4:
	.quad	.LBB46_144
	.quad	.LBB46_202
	.quad	.LBB46_198
	.quad	.LBB46_200
	.quad	.LBB46_196
.LJTI46_5:
	.quad	.LBB46_45
	.quad	.LBB46_49
	.quad	.LBB46_47
	.quad	.LBB46_48
	.quad	.LBB46_46
.LJTI46_6:
	.quad	.LBB46_53
	.quad	.LBB46_57
	.quad	.LBB46_55
	.quad	.LBB46_56
	.quad	.LBB46_54
.LJTI46_7:
	.quad	.LBB46_61
	.quad	.LBB46_65
	.quad	.LBB46_63
	.quad	.LBB46_64
	.quad	.LBB46_62
.LJTI46_8:
	.quad	.LBB46_69
	.quad	.LBB46_74
	.quad	.LBB46_72
	.quad	.LBB46_73
	.quad	.LBB46_71
.LJTI46_9:
	.quad	.LBB46_22
	.quad	.LBB46_25
	.quad	.LBB46_23
	.quad	.LBB46_24
	.quad	.LBB46_17
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB47_2
# %bb.1:
	movq	-88(%rbp), %r14
.LBB47_2:
	movq	%r14, server+864(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jae	.LBB48_2
# %bb.1:
	callq	zmalloc_used_memory
	movq	%rax, server+1112(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_2
# %bb.1:
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	rioGenericUpdateChecksum
	movl	$42, __A_VARIABLE(%rip)
.LBB50_2:
	movq	server+888(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	jbe	.LBB50_10
# %bb.4:
	callq	updateCachedTime
	cmpq	$0, server+2464(%rip)
	movl	server+2500(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB50_7
# %bb.5:
	cmpl	$14, %eax
	jne	.LBB50_7
# %bb.6:
	callq	replicationSendNewlineToMaster
	movl	$42, __A_VARIABLE(%rip)
.LBB50_7:
	movq	48(%r14), %rax
	movq	%rax, server+872(%rip)
	movq	server+1112(%rip), %rbx
	callq	zmalloc_used_memory
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jae	.LBB50_9
# %bb.8:
	callq	zmalloc_used_memory
	movq	%rax, server+1112(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_9:
	movl	$42, __A_VARIABLE(%rip)
	callq	processEventsWhileBlocked
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %r13
	movq	server+48(%rip), %r15
	leaq	-1216(%rbp), %r14
	movq	$rdbLoadProgressCallback, 32(%rdi)
	movq	server+888(%rip), %rbx
	movq	%rbx, 56(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$9, %r12d
	.p2align	4, 0x90
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB51_3
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB51_4
.LBB51_3:                               #   in Loop: Header=BB51_1 Depth=1
	movq	%r12, %rbx
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_142
# %bb.5:                                #   in Loop: Header=BB51_1 Depth=1
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_7
# %bb.6:                                #   in Loop: Header=BB51_1 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB51_9
# %bb.8:                                #   in Loop: Header=BB51_1 Depth=1
	addq	%rbx, %r14
	movq	56(%r13), %rbx
	jmp	.LBB51_1
.LBB51_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -1207(%rbp)
	leaq	-1216(%rbp), %rdi
	movl	$.L.str.66, %esi
	movl	$5, %edx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB51_11
# %bb.10:
	movl	$.L.str.67, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB51_13
.LBB51_11:
	leaq	-1211(%rbp), %rdi
	callq	atoi
	movl	%eax, %edx
	leal	-1(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %eax
	jb	.LBB51_16
# %bb.12:
	movl	$.L.str.68, %esi
	movl	$3, %edi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB51_13:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %r14d
.LBB51_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB51_15:
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
.LBB51_16:
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	callq	mstime
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	LRU_CLOCK
	movl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	$-1, -112(%rbp)         # 8-byte Folded Spill
	movq	$-1, -144(%rbp)         # 8-byte Folded Spill
	movq	$-1, -120(%rbp)         # 8-byte Folded Spill
.LBB51_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_19 Depth 2
                                        #     Child Loop BB51_30 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	leaq	-104(%rbp), %r14
	jmp	.LBB51_19
	.p2align	4, 0x90
.LBB51_18:                              #   in Loop: Header=BB51_19 Depth=2
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB51_25
.LBB51_19:                              #   Parent Loop BB51_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB51_21
# %bb.20:                               #   in Loop: Header=BB51_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB51_22
.LBB51_21:                              #   in Loop: Header=BB51_19 Depth=2
	movq	%r12, %rbx
.LBB51_22:                              #   in Loop: Header=BB51_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_139
# %bb.23:                               #   in Loop: Header=BB51_19 Depth=2
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_18
# %bb.24:                               #   in Loop: Header=BB51_19 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB51_18
	.p2align	4, 0x90
.LBB51_25:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-104(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %r14d
	je	.LBB51_62
# %bb.26:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-4, %r14b
	movq	%r15, %rbx
	je	.LBB51_63
# %bb.27:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-7, %r14b
	jne	.LBB51_36
# %bb.28:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	leaq	-104(%rbp), %r14
	jmp	.LBB51_30
	.p2align	4, 0x90
.LBB51_29:                              #   in Loop: Header=BB51_30 Depth=2
	addq	%rbx, %r14
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB51_50
.LBB51_30:                              #   Parent Loop BB51_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB51_32
# %bb.31:                               #   in Loop: Header=BB51_30 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB51_33
.LBB51_32:                              #   in Loop: Header=BB51_30 Depth=2
	movq	%r12, %rbx
.LBB51_33:                              #   in Loop: Header=BB51_30 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_40
# %bb.34:                               #   in Loop: Header=BB51_30 Depth=2
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_29
# %bb.35:                               #   in Loop: Header=BB51_30 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB51_29
	.p2align	4, 0x90
.LBB51_36:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-8, %r14b
	jne	.LBB51_42
# %bb.37:                               #   in Loop: Header=BB51_17 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-104(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rcx
	cmpl	$-1, %eax
	je	.LBB51_39
# %bb.38:                               #   in Loop: Header=BB51_17 Depth=1
	movq	-104(%rbp), %rcx
.LBB51_39:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	cmpq	$-1, %rcx
	sete	%r12b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmovneq	%rcx, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	$3, %r12d
	jmp	.LBB51_53
.LBB51_40:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB51_41:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r12d
	jmp	.LBB51_52
.LBB51_42:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %r14b
	je	.LBB51_123
# %bb.43:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %r14b
	je	.LBB51_74
# %bb.44:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-5, %r14b
	jne	.LBB51_55
# %bb.45:                               #   in Loop: Header=BB51_17 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-104(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_41
# %bb.46:                               #   in Loop: Header=BB51_17 Depth=1
	movq	-104(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r12d
	cmpq	$-1, %rbx
	je	.LBB51_52
# %bb.47:                               #   in Loop: Header=BB51_17 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-104(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_71
# %bb.48:                               #   in Loop: Header=BB51_17 Depth=1
	movq	-104(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	je	.LBB51_52
# %bb.49:                               #   in Loop: Header=BB51_17 Depth=1
	movq	%r15, %r12
	movq	(%r15), %rdi
	movq	%rbx, %rsi
	callq	dictExpand
	movq	8(%r15), %rdi
	movq	%r14, %rsi
	callq	dictExpand
	jmp	.LBB51_51
.LBB51_50:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-104(%rbp), %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB51_51:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$3, %r12d
.LBB51_52:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB51_53:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB51_17
# %bb.54:                               #   in Loop: Header=BB51_17 Depth=1
	cmpl	$3, %r12d
	jne	.LBB51_121
	jmp	.LBB51_17
.LBB51_55:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-6, %r14b
	jne	.LBB51_82
# %bb.56:                               #   in Loop: Header=BB51_17 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r12d
	testq	%rax, %rax
	je	.LBB51_52
# %bb.57:                               #   in Loop: Header=BB51_17 Depth=1
	movq	%rax, %r14
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_52
# %bb.58:                               #   in Loop: Header=BB51_17 Depth=1
	movq	8(%r14), %rbx
	cmpb	$37, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB51_66
# %bb.59:                               #   in Loop: Header=BB51_17 Depth=1
	movq	8(%rax), %rcx
	movl	$.L.str.70, %esi
	movq	%rax, %r12
	movl	$2, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB51_60:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB51_61:                              #   in Loop: Header=BB51_17 Depth=1
	movq	%r14, %rdi
	callq	decrRefCount
	movq	%r12, %rdi
	callq	decrRefCount
	jmp	.LBB51_51
.LBB51_62:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$4, %edx
	movq	%r13, %rdi
	leaq	-104(%rbp), %rsi
	callq	rdbLoadRaw
	movslq	-104(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%r15, %rbx
	jmp	.LBB51_65
.LBB51_63:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$8, %edx
	movq	%r13, %rdi
	leaq	-104(%rbp), %rsi
	callq	rdbLoadRaw
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB51_64:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB51_65:                              #   in Loop: Header=BB51_17 Depth=1
	movq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB51_17
.LBB51_66:                              #   in Loop: Header=BB51_17 Depth=1
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB51_72
# %bb.67:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB51_78
# %bb.68:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB51_100
# %bb.69:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$.L.str.30, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB51_102
# %bb.70:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$.L.str.72, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB51_61
.LBB51_71:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB51_52
.LBB51_72:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -56(%rbp)           # 8-byte Folded Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB51_61
# %bb.73:                               #   in Loop: Header=BB51_17 Depth=1
	movq	8(%r12), %rdi
	callq	atoi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB51_60
.LBB51_74:                              #   in Loop: Header=BB51_17 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-104(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_141
# %bb.75:                               #   in Loop: Header=BB51_17 Depth=1
	movq	-104(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rbx
	je	.LBB51_143
# %bb.76:                               #   in Loop: Header=BB51_17 Depth=1
	movl	server+1792(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	jae	.LBB51_145
# %bb.77:                               #   in Loop: Header=BB51_17 Depth=1
	shlq	$6, %rbx
	addq	server+48(%rip), %rbx
	jmp	.LBB51_65
.LBB51_78:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -56(%rbp)           # 8-byte Folded Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB51_61
# %bb.79:                               #   in Loop: Header=BB51_17 Depth=1
	movq	8(%r12), %rsi
	movb	-1(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB51_120
# %bb.80:                               #   in Loop: Header=BB51_17 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI51_0(,%rax,8)
.LBB51_81:                              #   in Loop: Header=BB51_17 Depth=1
	movzbl	-3(%rsi), %eax
	jmp	.LBB51_118
.LBB51_82:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	cmpb	$-9, %r14b
	jne	.LBB51_103
# %bb.83:                               #   in Loop: Header=BB51_17 Depth=1
	xorl	%esi, %esi
	leaq	-104(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, -48(%rbp)          # 8-byte Folded Spill
	cmpl	$-1, %eax
	je	.LBB51_85
# %bb.84:                               #   in Loop: Header=BB51_17 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB51_85:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-104(%rbp), %r14
	movq	%r14, %rdx
	callq	rdbLoadLenByRef
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	-104(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	rdbLoadLenByRef
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_87
# %bb.86:                               #   in Loop: Header=BB51_17 Depth=1
	movl	-104(%rbp), %r14d
.LBB51_87:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jne	.LBB51_146
# %bb.88:                               #   in Loop: Header=BB51_17 Depth=1
	cmpl	$-1, %r12d
	je	.LBB51_146
# %bb.89:                               #   in Loop: Header=BB51_17 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	moduleTypeLookupModuleByID
	movq	%rax, %r12
	leaq	-130(%rbp), %rdi
	movq	%rbx, %rsi
	callq	moduleTypeNameByID
	movl	rdbCheckMode(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB51_91
# %bb.90:                               #   in Loop: Header=BB51_17 Depth=1
	testl	%eax, %eax
	je	.LBB51_147
.LBB51_91:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	movq	%r15, %rbx
	je	.LBB51_114
# %bb.92:                               #   in Loop: Header=BB51_17 Depth=1
	testl	%eax, %eax
	jne	.LBB51_114
# %bb.93:                               #   in Loop: Header=BB51_17 Depth=1
	movq	64(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_148
# %bb.94:                               #   in Loop: Header=BB51_17 Depth=1
	movq	%r13, -96(%rbp)
	movq	%r12, -88(%rbp)
	movq	$0, -104(%rbp)
	movabsq	$8589934592, %rcx       # imm = 0x200000000
	movq	%rcx, -80(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -72(%rbp)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %esi
	andl	$1023, %esi             # imm = 0x3FF
	leaq	-104(%rbp), %rdi
	movl	%r14d, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB51_149
# %bb.95:                               #   in Loop: Header=BB51_17 Depth=1
	cmpl	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB51_149
# %bb.96:                               #   in Loop: Header=BB51_17 Depth=1
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB51_98
# %bb.97:                               #   in Loop: Header=BB51_17 Depth=1
	callq	moduleFreeContext
	movq	-72(%rbp), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB51_98:                              #   in Loop: Header=BB51_17 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	leaq	-192(%rbp), %rdx
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_150
# %bb.99:                               #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB51_64
	jmp	.LBB51_151
.LBB51_100:                             #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -56(%rbp)           # 8-byte Folded Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB51_61
# %bb.101:                              #   in Loop: Header=BB51_17 Depth=1
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 56(%rcx)
	jmp	.LBB51_60
.LBB51_102:                             #   in Loop: Header=BB51_17 Depth=1
	movq	server+2992(%rip), %rsi
	xorl	%edi, %edi
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdx
	callq	luaCreateFunction
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB51_61
	jmp	.LBB51_154
.LBB51_103:                             #   in Loop: Header=BB51_17 Depth=1
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_143
# %bb.104:                              #   in Loop: Header=BB51_17 Depth=1
	movq	%rax, %r12
	movl	%r14d, %edi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	rdbLoadObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_143
# %bb.105:                              #   in Loop: Header=BB51_17 Depth=1
	movq	%rax, %r14
	movq	server+2464(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %r15        # 8-byte Reload
	cmpq	$-1, %r15
	je	.LBB51_110
# %bb.106:                              #   in Loop: Header=BB51_17 Depth=1
	cmpl	$0, -148(%rbp)          # 4-byte Folded Reload
	jne	.LBB51_110
# %bb.107:                              #   in Loop: Header=BB51_17 Depth=1
	testq	%rax, %rax
	jne	.LBB51_110
# %bb.108:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-160(%rbp), %r15        # 8-byte Folded Reload
	jge	.LBB51_110
# %bb.109:                              #   in Loop: Header=BB51_17 Depth=1
	movq	%r12, %rdi
	callq	decrRefCount
	movq	%r14, %rdi
	jmp	.LBB51_113
.LBB51_110:                             #   in Loop: Header=BB51_17 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r15
	je	.LBB51_112
# %bb.111:                              #   in Loop: Header=BB51_17 Depth=1
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	setExpire
	movl	$42, __A_VARIABLE(%rip)
.LBB51_112:                             #   in Loop: Header=BB51_17 Depth=1
	movq	%r14, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	objectSetLRUOrLFU
	movq	%r12, %rdi
.LBB51_113:                             #   in Loop: Header=BB51_17 Depth=1
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, -112(%rbp)         # 8-byte Folded Spill
	movq	$-1, -144(%rbp)         # 8-byte Folded Spill
	movq	$-1, -120(%rbp)         # 8-byte Folded Spill
	jmp	.LBB51_65
.LBB51_114:                             #   in Loop: Header=BB51_17 Depth=1
	movq	%r13, %rdi
	leaq	-130(%rbp), %rsi
	callq	rdbLoadCheckModuleValue
	movq	%rax, %rdi
	callq	decrRefCount
	jmp	.LBB51_64
.LBB51_115:                             #   in Loop: Header=BB51_17 Depth=1
	movl	-9(%rsi), %eax
	jmp	.LBB51_118
.LBB51_116:                             #   in Loop: Header=BB51_17 Depth=1
	movq	-17(%rsi), %rax
	jmp	.LBB51_118
.LBB51_117:                             #   in Loop: Header=BB51_17 Depth=1
	movzwl	-5(%rsi), %eax
.LBB51_118:                             #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rax
	movq	-48(%rbp), %r12         # 8-byte Reload
	jne	.LBB51_61
# %bb.119:                              #   in Loop: Header=BB51_17 Depth=1
	movl	$41, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	callq	memcpy
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$1, 4(%rax)
	jmp	.LBB51_60
.LBB51_120:                             #   in Loop: Header=BB51_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB51_60
.LBB51_121:
	cmpl	$2, %r12d
	je	.LBB51_144
# %bb.122:                              # %.loopexit
                                        # implicit-def: $r14d
	jmp	.LBB51_15
.LBB51_123:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, -184(%rbp)          # 4-byte Folded Reload
	jle	.LBB51_14
# %bb.124:
	leaq	-104(%rbp), %r15
	movq	40(%r13), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r12d
	jmp	.LBB51_126
.LBB51_125:                             #   in Loop: Header=BB51_126 Depth=1
	addq	%rbx, %r15
	addq	%rbx, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB51_132
.LBB51_126:                             # =>This Inner Loop Header: Depth=1
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB51_128
# %bb.127:                              #   in Loop: Header=BB51_126 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB51_129
.LBB51_128:                             #   in Loop: Header=BB51_126 Depth=1
	movq	%r12, %rbx
.LBB51_129:                             #   in Loop: Header=BB51_126 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_140
# %bb.130:                              #   in Loop: Header=BB51_126 Depth=1
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_125
# %bb.131:                              #   in Loop: Header=BB51_126 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB51_125
.LBB51_132:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+2132(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB51_137
# %bb.133:
	movq	-104(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB51_136
# %bb.134:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-56(%rbp), %rax         # 8-byte Folded Reload
	je	.LBB51_137
# %bb.135:
	movl	$.L.str.79, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.80, %esi
	movl	$2116, %edi             # imm = 0x844
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB51_136:
	movl	$.L.str.78, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB51_137:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB51_14
.LBB51_139:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB51_140:
	movl	$42, __A_VARIABLE(%rip)
.LBB51_141:
	movl	$42, __A_VARIABLE(%rip)
.LBB51_142:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB51_143:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB51_144:
	movl	$.L.str.81, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.82, %esi
	movl	$2124, %edi             # imm = 0x84C
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB51_145:
	movl	$.L.str.69, %esi
	movl	$3, %edi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB51_146:
	movl	$.L.str.73, %esi
	movl	$2028, %edi             # imm = 0x7EC
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.LBB51_147:
	leaq	-130(%rbp), %rdx
	movl	$.L.str.74, %esi
	jmp	.LBB51_152
.LBB51_148:
	leaq	-130(%rbp), %rdx
	movl	$.L.str.75, %esi
	jmp	.LBB51_152
.LBB51_149:
	leaq	-130(%rbp), %rbx
	movq	%rbx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	moduleTypeNameByID
	movl	$.L.str.76, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	jmp	.LBB51_153
.LBB51_150:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB51_151:
	leaq	-130(%rbp), %rdx
	movl	$.L.str.77, %esi
.LBB51_152:
	movl	$3, %edi
.LBB51_153:
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.LBB51_154:
	movq	8(%r12), %rdx
	movl	$.L.str.71, %esi
	movl	$2008, %edi             # imm = 0x7D8
	xorl	%eax, %eax
	callq	rdbCheckThenExit
.Lfunc_end51:
	.size	rdbLoadRio, .Lfunc_end51-rdbLoadRio
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI51_0:
	.quad	.LBB51_81
	.quad	.LBB51_117
	.quad	.LBB51_115
	.quad	.LBB51_116
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB52_4
# %bb.3:
	movq	-112(%rbp), %r15
.LBB52_4:
	movq	%r15, server+864(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
	movl	%esi, %ebx
	orl	%edi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB53_1
# %bb.2:
	movl	%esi, %r12d
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$-1, server+2176(%rip)
	jmp	.LBB53_14
.LBB53_1:
	movl	$.L.str.84, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2088(%rip), %rax
	subq	%rax, server+2080(%rip)
	xorl	%edi, %edi
	callq	time
	movq	%rax, server+2136(%rip)
	movl	$0, server+2176(%rip)
	jmp	.LBB53_14
.LBB53_5:
	xorl	%r14d, %r14d
	movl	$.L.str.86, %esi
	movl	$3, %edi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	serverLog
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB53_7
# %bb.6:
	callq	mstime
	movq	%rax, %r14
.LBB53_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	server+2096(%rip), %ecx
	leaq	-288(%rbp), %r15
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.33, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	%r15, %rdi
	callq	unlink
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, server+3096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB53_11
# %bb.8:
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	movq	server+3096(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB53_12
# %bb.9:
	subq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB53_12
# %bb.10:
	movl	$.L.str.87, %edi
	movq	%rax, %rsi
	callq	latencyAddSample
.LBB53_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB53_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %r12d
	je	.LBB53_14
# %bb.13:
	movl	$-1, server+2176(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB53_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, server+2096(%rip)
	movl	$0, server+2172(%rip)
	xorl	%edi, %edi
	callq	time
	subq	server+2160(%rip), %rax
	movq	%rax, server+2152(%rip)
	movq	$-1, server+2160(%rip)
	negl	%ebx
	sbbl	%edi, %edi
	movl	$1, %esi
	callq	updateSlavesWaitingBgsave
	movl	$42, __A_VARIABLE(%rip)
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB54_1
# %bb.3:
	movl	%esi, %edx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, server+2096(%rip)
	movl	$0, server+2172(%rip)
	movq	$-1, server+2160(%rip)
	movl	$8, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	jne	.LBB54_13
# %bb.8:
	movl	server+2188(%rip), %edi
	movl	$8, %edx
	movq	%r15, %rsi
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rax
	jne	.LBB54_12
# %bb.9:
	movl	(%r15), %eax
	shll	$4, %eax
	movslq	%eax, %rbx
	leaq	8(%rbx), %rsi
	movq	%r15, %rdi
	callq	zrealloc
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB54_12
# %bb.10:
	movl	server+2188(%rip), %edi
	movq	%r15, %rsi
	addq	$8, %rsi
	movq	%rbx, %rdx
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB54_12
# %bb.11:
	movq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB54_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB54_13:
	movl	server+2188(%rip), %edi
	callq	close
	movl	server+2184(%rip), %edi
	callq	close
	movq	server+536(%rip), %rdi
	leaq	-80(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB54_31
# %bb.14:                               # %.preheader
	leaq	16(%r15), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	-80(%rbp), %rbx
	movq	%r15, -56(%rbp)         # 8-byte Spill
	jmp	.LBB54_15
	.p2align	4, 0x90
.LBB54_28:                              #   in Loop: Header=BB54_15 Depth=1
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
.LBB54_29:                              #   in Loop: Header=BB54_15 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	leaq	-80(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB54_30:                              #   in Loop: Header=BB54_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB54_31
.LBB54_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_19 Depth 2
	movq	16(%rax), %r13
	cmpl	$7, 168(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB54_30
# %bb.16:                               #   in Loop: Header=BB54_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %r14
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB54_17
# %bb.18:                               #   in Loop: Header=BB54_15 Depth=1
	movq	(%r13), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB54_19:                              #   Parent Loop BB54_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	-8(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB54_20
# %bb.21:                               #   in Loop: Header=BB54_19 Depth=2
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rcx
	cmpq	%r14, %r15
	jb	.LBB54_19
	jmp	.LBB54_22
.LBB54_17:                              #   in Loop: Header=BB54_15 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB54_22
.LBB54_20:                              #   in Loop: Header=BB54_15 Depth=1
	movl	(%rcx), %r12d
	movl	$42, __A_VARIABLE(%rip)
.LBB54_22:                              #   in Loop: Header=BB54_15 Depth=1
	movq	%r13, %rdi
	callq	replicationGetSlaveName
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	je	.LBB54_24
# %bb.23:                               #   in Loop: Header=BB54_15 Depth=1
	testl	%r12d, %r12d
	je	.LBB54_28
.LBB54_24:                              #   in Loop: Header=BB54_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB54_25
# %bb.26:                               #   in Loop: Header=BB54_15 Depth=1
	movl	%r12d, %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB54_27
.LBB54_25:                              #   in Loop: Header=BB54_15 Depth=1
	movl	$.L.str.92, %ecx
.LBB54_27:                              #   in Loop: Header=BB54_15 Depth=1
	movl	$.L.str.91, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r13, %rdi
	callq	freeClient
	jmp	.LBB54_29
.LBB54_31:
	movq	%r15, %rdi
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	cmpl	$-1, %eax
	je	.LBB56_1
.LBB56_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB56_7
# %bb.3:                                # %.preheader
	leaq	-72(%rbp), %r12
	jmp	.LBB56_4
	.p2align	4, 0x90
.LBB56_6:                               #   in Loop: Header=BB56_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB56_7
.LBB56_4:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	cmpl	$6, 168(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB56_6
# %bb.5:                                #   in Loop: Header=BB56_4 Depth=1
	movq	(%rbx), %rax
	movslq	%r15d, %rcx
	movq	%rax, (%r13,%rcx,8)
	movl	8(%rbx), %eax
	leal	1(%rcx), %r15d
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB56_6
.LBB56_7:
	callq	openChildInfoPipe
	callq	ustime
	movq	%rax, %r12
	callq	fork
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB56_8
# %bb.26:
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB56_27
# %bb.36:
	callq	ustime
	subq	%r12, %rax
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB56_39
# %bb.37:
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jl	.LBB56_39
# %bb.38:
	movl	$.L.str.42, %edi
	movq	%rdx, %rsi
	callq	latencyAddSample
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%r15d, %edx
	callq	rioInitWithFdset
	movq	%r14, %rdi
	callq	zfree
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	callq	closeListeningSockets
	movl	$.L.str.95, %edi
	callq	redisSetProcTitle
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	rdbSaveRioWithEOFMark
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB56_25
# %bb.9:
	leaq	-176(%rbp), %rdi
	callq	*-152(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB56_10
# %bb.11:
	movq	$-1, %rdi
	callq	zmalloc_get_private_dirty
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB56_13
# %bb.12:
	movq	%rbx, %rdx
	shrq	$20, %rdx
	movl	$.L.str.41, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB56_13:
	movq	%rbx, server+2208(%rip)
	xorl	%edi, %edi
	callq	sendChildInfo
	leal	(%r15,%r15), %eax
	addl	$1, %eax
	movslq	%eax, %r14
	leaq	(,%r14,8), %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movslq	%r15d, %rax
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB56_21
# %bb.14:
	movq	%rbx, %rax
	addq	$8, %rax
	movl	%r15d, %esi
	movl	%esi, %ecx
	andl	$1, %ecx
	cmpl	$1, %r15d
	jne	.LBB56_16
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB56_35
# %bb.28:
	movslq	%r15d, %rbx
	leaq	-72(%rbp), %r12
	jmp	.LBB56_29
	.p2align	4, 0x90
.LBB56_32:                              #   in Loop: Header=BB56_29 Depth=1
	movl	$6, 168(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB56_34:                              #   in Loop: Header=BB56_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB56_35
.LBB56_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_31 Depth 2
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB56_34
# %bb.30:                               #   in Loop: Header=BB56_29 Depth=1
	movq	(%rax), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB56_31:                              #   Parent Loop BB56_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	(%r13,%rdx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB56_32
# %bb.33:                               #   in Loop: Header=BB56_31 Depth=2
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdx
	jl	.LBB56_31
	jmp	.LBB56_34
.LBB56_35:
	movl	-48(%rbp), %edi
	callq	close
	movl	-44(%rbp), %edi
	callq	close
	callq	closeChildInfoPipe
	movl	-56(%rbp), %ebx         # 4-byte Reload
.LBB56_40:
	xorl	%r12d, %r12d
	cmpl	$-1, %ebx
	sete	%r12b
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	negl	%r12d
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r13,%rdx,8), %rdi
	movq	%rdi, 16(%rax)
	movq	-104(%rbp), %rdi
	movslq	4(%rdi,%rdx,4), %rdi
	movq	%rdi, 24(%rax)
	addq	$32, %rax
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jne	.LBB56_17
.LBB56_18:
	testq	%rcx, %rcx
	je	.LBB56_20
# %bb.19:
	movq	(%r13,%rdx,8), %rcx
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rcx
	movslq	(%rcx,%rdx,4), %rcx
	movq	%rcx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB56_20:
	movq	(%rbx), %rax
.LBB56_21:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB56_24
.LBB56_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
.LBB56_24:
	movq	%rbx, %rdi
	callq	zfree
.LBB56_25:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movq	server+2376(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB57_5
# %bb.3:
	testq	%rax, %rax
	je	.LBB57_5
# %bb.4:
	movl	server+2368(%rip), %ecx
	xorl	%eax, %eax
	cmpl	$-1, %ecx
	cmovnel	%ecx, %eax
	jmp	.LBB57_9
.LBB57_5:
	movq	server+2480(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB57_8
# %bb.6:
	movq	server+2488(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2120(%rip), %rdi
	callq	rdbSave
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB57_14:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	server+2376(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB58_3
# %bb.1:
	testq	%rcx, %rcx
	je	.LBB58_3
# %bb.2:
	movl	server+2368(%rip), %edx
	xorl	%ecx, %ecx
	cmpl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	.LBB58_7
.LBB58_3:
	movq	server+2480(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB58_6
# %bb.4:
	movq	server+2488(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB58_5
.LBB58_6:
	movq	16(%rcx), %rcx
	movl	40(%rcx), %ecx
.LBB58_7:
	movl	%ecx, (%rax)
.LBB58_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB58_5:
	xorl	%eax, %eax
	jmp	.LBB58_8
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
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB59_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_25
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.98, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB59_3
.LBB59_25:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB59_24
.LBB59_3:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	server+2376(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_7
# %bb.5:
	testq	%rcx, %rcx
	je	.LBB59_7
# %bb.6:
	movl	server+2368(%rip), %edx
	xorl	%ecx, %ecx
	cmpl	$-1, %edx
	cmovnel	%edx, %ecx
	jmp	.LBB59_11
.LBB59_7:
	movq	server+2480(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB59_10
# %bb.8:
	movq	server+2488(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, server+2096(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB59_15
# %bb.13:
	movl	$.L.str.97, %esi
.LBB59_14:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB59_23
.LBB59_15:
	cmpl	$-1, server+1940(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB59_19
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB59_18
# %bb.17:
	movl	$1, server+2168(%rip)
	movl	$.L.str.99, %esi
	jmp	.LBB59_21
.LBB59_19:
	movq	server+2120(%rip), %rdi
	callq	rdbSaveBackground
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB59_20
# %bb.22:
	movq	shared+16(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
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
.LBB59_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB59_24:
	movl	$42, __A_VARIABLE(%rip)
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
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
